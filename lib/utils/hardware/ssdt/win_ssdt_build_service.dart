import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:rapidefi/utils/config/build/config_draft.dart';
import 'package:rapidefi/utils/config/models/enums/config_enums.dart';
import 'package:rapidefi/utils/hardware/analysis/gpu_compatibility_data.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_analysis.dart';
import 'package:rapidefi/utils/hardware/ssdt/hardware_pci_disable_planner.dart';
import 'package:rapidefi/utils/hardware/ssdt/ssdt_selection.dart';
import 'package:rapidefi/utils/log/log.dart';
import 'package:rapidefi/utils/ssdttool/config.dart';
import 'package:rapidefi/utils/ssdttool/manager.dart';
import 'package:rapidefi/utils/ssdttool/table.dart';

class WinSsdtBuildService {
  const WinSsdtBuildService();

  Future<bool> buildAndMerge({
    required ConfigDraft draft,
    required SsdtSelection selection,
    PlatformType? platformType,
    Map<String, dynamic>? rawInfo,
    String acpiTablesPath = '',
  }) async {
    if (selection.isEmpty) return true;
    final sourceAcpiPath = acpiTablesPath.trim();
    if (!Platform.isWindows && sourceAcpiPath.isEmpty) return true;

    final targetPlatformType = platformType ?? selection.platformType;
    await GpuCompatibilityData.ensureLoaded();

    final blockPlans = _acpiDeviceBlockPlans(
      selection,
      targetPlatformType,
      rawInfo,
    );
    final blockedGpuAcpiPaths = _blockedGpuAcpiPaths(blockPlans);
    final blockedGpuDeviceIds = _blockedGpuDeviceIds(blockPlans);
    final identityOverridePlans = const _GpuIdentityOverridePlanner().targets(
      rawInfo,
      blockedGpuAcpiPaths: blockedGpuAcpiPaths,
      blockedGpuDeviceIds: blockedGpuDeviceIds,
    );

    Log('');
    Log(
      'Custom SSDT list to generate: '
      '[${_selectedAmlNames(
        selection,
        targetPlatformType,
        blockPlans,
        identityOverridePlans,
      ).join(', ')}]',
    );
    Log('');

    Directory? workDir;
    try {
      final ssdtWorkDir =
          await Directory.systemTemp.createTemp('rapidefi_ssdt_');
      workDir = ssdtWorkDir;
      final manager = ACPIToolManager(
        acpiConfig: AcpiConfig(
          outputDirectory: ssdtWorkDir.path,
          acpiDirectory: ssdtWorkDir.path,
          overwriteEFI: true,
        ),
      );

      final loadSourcePath = sourceAcpiPath.isNotEmpty
          ? sourceAcpiPath
          : await manager.dumpTables(ssdtWorkDir.path);
      if (loadSourcePath == null || loadSourcePath.isEmpty) {
        return _useOriginalFallback('Failed to extract ACPI tables');
      }
      if (sourceAcpiPath.isNotEmpty) {
        Log('Using imported ACPI tables directory: $sourceAcpiPath');
      }

      final loadedPath = await manager.loadTables(loadSourcePath);
      if (loadedPath == null || loadedPath.isEmpty) {
        return _useOriginalFallback('Failed to load ACPI tables');
      }

      final rawDevs = await manager.ssdt.listIrqs();
      final devs = rawDevs.map(
        (key, value) => MapEntry(key, Map<String, dynamic>.from(value)),
      );
      final (targetIrqs, _) = manager.ssdt.getIrqChoice(
        devs,
        selectedOption: 'C',
      );

      const outputFolder = 'CustomSSDT';
      final patchContext = PatchContext(
        devs: devs,
        targetIrqs: targetIrqs,
        prebuilt: false,
      );

      await manager.runPatchBatch(() async {
        await manager.runPatches(
          selection.actions,
          context: patchContext,
          outputFolder: outputFolder,
          copyToResults: false,
          onError: (message) => Log.error(message),
        );

        await _runGpuIdentityOverridePatches(
          manager: manager,
          workDir: ssdtWorkDir,
          outputFolder: outputFolder,
          targets: identityOverridePlans,
          context: patchContext,
        );

        await _runAcpiDeviceBlockPatches(
          manager: manager,
          workDir: ssdtWorkDir,
          outputFolder: outputFolder,
          targets: blockPlans,
          platformType: targetPlatformType,
          context: patchContext,
        );
      });

      await manager.copyPatchOutputToResults(outputFolder);

      final resultsDir =
          Directory(path.join(ssdtWorkDir.path, manager.resultFolder));
      final hasPatchPlist =
          File(path.join(resultsDir.path, 'patches_OC.plist')).existsSync();
      final hasAml = resultsDir.existsSync() &&
          resultsDir
              .listSync()
              .whereType<File>()
              .any((file) => file.path.toLowerCase().endsWith('.aml'));
      if (!hasPatchPlist || !hasAml) {
        return _useOriginalFallback(
          'Custom SSDT generation output is incomplete',
        );
      }

      await manager.mergePlist(
        ssdtWorkDir.path,
        draft.configPlistPath,
        overwrite: true,
        backupBeforeOverwrite: false,
      );

      return true;
    } catch (error, stackTrace) {
      Log.error('Custom SSDT generation failed: $error');
      Log.error(stackTrace.toString());
      return _useOriginalFallback(
        'An exception occurred during custom SSDT generation',
      );
    } finally {
      if (workDir != null && await workDir.exists()) {
        try {
          await workDir.delete(recursive: true);
        } catch (_) {
          Log.warning(
            'Failed to clean up custom SSDT temp directory: '
            '${path.basename(workDir.path)}',
          );
        }
      }
    }
  }

  List<AcpiDeviceBlockPlan> _acpiDeviceBlockPlans(
    SsdtSelection selection,
    PlatformType platformType,
    Map<String, dynamic>? rawInfo,
  ) {
    return const AcpiDeviceBlockPlanner().targets(
      rawInfo,
      cpuType: selection.cpuType,
      platformType: platformType,
    );
  }

  List<String> _selectedAmlNames(
    SsdtSelection selection,
    PlatformType platformType,
    List<AcpiDeviceBlockPlan> blockPlans,
    List<_GpuIdentityOverridePlan> identityOverridePlans,
  ) {
    final names = <String>[];
    final seen = <String>{};

    void addName(String name) {
      final trimmed = name.trim();
      if (trimmed.isEmpty) return;
      final amlName =
          trimmed.toLowerCase().endsWith('.aml') ? trimmed : '$trimmed.aml';
      if (seen.add(amlName.toLowerCase())) names.add(amlName);
    }

    for (final item in selection.items) {
      addName(item.name);
    }

    for (final target in identityOverridePlans) {
      addName('${target.amlName}.aml');
    }

    final methods = const AcpiDeviceBlockPlanner().disableMethods(
      platformType,
    );
    for (final target in blockPlans) {
      for (final method in methods) {
        addName('${target.amlName(method)}.aml');
      }
    }

    return names;
  }

  Future<void> _runGpuIdentityOverridePatches({
    required ACPIToolManager manager,
    required Directory workDir,
    required String outputFolder,
    required List<_GpuIdentityOverridePlan> targets,
    required PatchContext context,
  }) async {
    if (targets.isEmpty) return;

    for (final target in targets) {
      await manager.runPatch(
        target.action,
        context: context,
        outputFolder: outputFolder,
        onError: (message) => Log.error(message),
      );

      final amlPath = path.join(
        workDir.path,
        outputFolder,
        '${target.amlName}.aml',
      );
      if (File(amlPath).existsSync()) {
        Log(
          'GPU device ID spoof SSDT '
          'generated: ${path.basename(amlPath)}',
        );
      } else {
        Log.warning(
          'Failed to generate GPU device ID spoof SSDT: '
          '${target.name} ${target.deviceId}',
        );
      }
    }
  }

  Future<void> _runAcpiDeviceBlockPatches({
    required ACPIToolManager manager,
    required Directory workDir,
    required String outputFolder,
    required List<AcpiDeviceBlockPlan> targets,
    required PlatformType platformType,
    required PatchContext context,
  }) async {
    if (targets.isEmpty) return;

    final methods = const AcpiDeviceBlockPlanner().disableMethods(
      platformType,
    );
    for (final target in targets) {
      var generated = false;
      for (final method in methods) {
        await manager.runPatch(
          target.action(method),
          context: context,
          outputFolder: outputFolder,
          onError: (message) => Log.error(message),
        );

        final amlPath = path.join(
          workDir.path,
          outputFolder,
          '${target.amlName(method)}.aml',
        );
        if (File(amlPath).existsSync()) {
          Log(
            'ACPI device block SSDT '
            'generated: ${path.basename(amlPath)}',
          );
          generated = true;
          break;
        }
      }

      if (!generated) {
        Log.warning(
          'Failed to generate ACPI device block SSDT: '
          '${target.type} ${target.name} ${target.deviceId}',
        );
      }
    }
  }

  Set<String> _blockedGpuAcpiPaths(List<AcpiDeviceBlockPlan> targets) {
    return targets
        .where((target) => target.type == 'GPU')
        .map((target) => target.acpiPath.trim().toUpperCase())
        .where((value) => value.isNotEmpty)
        .toSet();
  }

  Set<String> _blockedGpuDeviceIds(List<AcpiDeviceBlockPlan> targets) {
    return targets
        .where((target) => target.type == 'GPU')
        .map((target) => target.deviceId.trim().toUpperCase())
        .where((value) => value.isNotEmpty)
        .toSet();
  }

  bool _useOriginalFallback(String reason) {
    Log.warning('Custom SSDT generation failed: $reason');
    Log.warning(
      'Skipped custom SSDT merge, '
      'continuing with original SSDTs from current EFI as fallback.',
    );
    return true;
  }
}

class _GpuIdentityOverridePlan {
  const _GpuIdentityOverridePlan({
    required this.name,
    required this.acpiPath,
    required this.deviceId,
    required this.fakeModel,
  });

  final String name;
  final String acpiPath;
  final String deviceId;
  final String fakeModel;

  String get amlName => 'SSDT-$deviceId-GPU-SPOOF';

  Map<String, dynamic> get action => {
        'name': ACPITable.ssdtGPUSPOOF.name,
        'remark': '$name GPU Device ID Spoof',
        'extra': {
          'acpiPath': acpiPath,
          'deviceId': deviceId,
          'fakeModel': fakeModel,
        },
        'prebuilt': false,
      };
}

class _GpuIdentityOverridePlanner {
  const _GpuIdentityOverridePlanner();

  List<_GpuIdentityOverridePlan> targets(
    Map<String, dynamic>? rawInfo, {
    Set<String> blockedGpuAcpiPaths = const {},
    Set<String> blockedGpuDeviceIds = const {},
  }) {
    final data = rawInfo ?? const <String, dynamic>{};
    final targets = <_GpuIdentityOverridePlan>[];
    final seen = <String>{};

    for (final entry in hardwareDevices(data['GPU'])) {
      final gpu = safeMap(entry.value);
      if (!_isDiscreteAmdGpu(entry.key, gpu)) continue;

      final deviceId = _normalizeDeviceId(gpu['Device ID']);
      final acpiPath = safeStr(gpu['ACPI Path']);
      if (blockedGpuAcpiPaths.contains(acpiPath.trim().toUpperCase()) ||
          blockedGpuDeviceIds.contains(deviceId)) {
        continue;
      }

      final record = GpuCompatibilityData.findSync(deviceId);
      final targetDeviceId = record?.spoofDeviceIdPart;
      if (record?.requiresSpoof != true ||
          targetDeviceId == null ||
          targetDeviceId.isEmpty) {
        continue;
      }

      if (!_isValidAcpiPath(acpiPath)) {
        Log.warning(
          'GPU device ID spoof skipped: '
          '${deviceDisplayName(entry.key, gpu)} '
          '$deviceId missing valid ACPI Path',
        );
        continue;
      }
      final key = '$acpiPath:$targetDeviceId';
      if (!seen.add(key)) continue;
      targets.add(
        _GpuIdentityOverridePlan(
          name: deviceDisplayName(entry.key, gpu),
          acpiPath: acpiPath,
          deviceId: targetDeviceId,
          fakeModel: record?.name ?? deviceDisplayName(entry.key, gpu),
        ),
      );
    }

    return targets;
  }

  bool _isDiscreteAmdGpu(String name, Map<String, dynamic> gpu) {
    final deviceId = _normalizeDeviceId(gpu['Device ID']);
    if (!deviceId.startsWith('1002-')) return false;

    final type = safeStr(gpu['Device Type']).toLowerCase();
    if (type == 'integrated' ||
        type.contains('integrated') ||
        type.contains('integrated') ||
        type.contains('internal')) {
      return false;
    }

    final text = [
      name,
      safeStr(gpu['Name']),
      safeStr(gpu['DeviceDesc']),
      safeStr(gpu['Device Description']),
      safeStr(gpu['Description']),
      safeStr(gpu['Manufacturer']),
    ].join(' ').toLowerCase();

    return !text.contains('radeon graphics') &&
        !text.contains('radeon(tm) graphics') &&
        !text.contains('radeon vega');
  }

  bool _isValidAcpiPath(String path) {
    final value = path.trim();
    return value.startsWith('_SB') || value.startsWith(r'\_SB');
  }

  String _normalizeDeviceId(Object? value) {
    return GpuCompatibilityData.normalizeFullDeviceId(safeStr(value))
        .toUpperCase();
  }
}
