import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:oktoast/oktoast.dart';
import 'package:path/path.dart' as path;
import 'package:rapidefi/pages/hardware/widgets/efi_build_progress_dialog.dart';
import 'package:rapidefi/utils/config/build/efi_build_options.dart';
import 'package:rapidefi/utils/config/build/efi_build_pipeline.dart';
import 'package:rapidefi/utils/config/config_model.dart';
import 'package:rapidefi/utils/config/models/enums/config_enums.dart';
import 'package:rapidefi/utils/config/services/config_service.dart';
import 'package:rapidefi/utils/config/services/config_session.dart';
import 'package:rapidefi/utils/file_util.dart';
import 'package:rapidefi/utils/hardware/config/hardware_config_build_context.dart';
import 'package:rapidefi/utils/hardware/config/hardware_config_model_builder.dart';
import 'package:rapidefi/utils/hardware/config/hardware_config_options.dart';
import 'package:rapidefi/utils/hardware/hardware_info.dart';
import 'package:rapidefi/utils/hardware/ssdt/custom_ssdt_prebuilt_pruner.dart';
import 'package:rapidefi/utils/hardware/ssdt/ssdt_platform_catalog.dart';
import 'package:rapidefi/utils/hardware/ssdt/ssdt_selection.dart';
import 'package:rapidefi/utils/hardware/ssdt/win_ssdt_build_service.dart';
import 'package:rapidefi/utils/config/models/platform_info/pi_generic.dart';
import 'package:rapidefi/utils/hardware/model/allinfo.dart';
import 'package:rapidefi/utils/log/log.dart';
import 'package:rapidefi/utils/ssdttool/config.dart';
import 'package:rapidefi/utils/ssdttool/dsdt.dart';
import 'package:rapidefi/utils/ssdttool/manager.dart';
import 'package:rapidefi/utils/ssdttool/table.dart';

class _AcpiExportResult {
  const _AcpiExportResult({
    this.path,
    this.failureMessage,
  });

  final String? path;
  final String? failureMessage;

  bool get exported => path != null && path!.isNotEmpty;
}

class HardwarePageController extends ChangeNotifier {
  static const String _idleStatus = 'Waiting to refresh hardware info';
  static const String _loadingStatus = 'Loading hardware info...';
  static const String _refreshStatus = 'Refreshing hardware info...';
  static const String _completeStatus = 'Hardware info loaded successfully';
  static const String _failedStatus = 'Failed to load hardware info';
  static const String _unsupportedStatus = 'Hardware query not supported on this platform';
  static const String _importedStatus = 'Hardware info imported successfully';

  HardwareAllInfo? allInfo;
  Map<String, dynamic>? rawInfo;
  String outputDirectory = '';
  String importedHardwarePath = '';
  String importedAcpiTablesPath = '';
  bool isLoading = false;
  double loadProgress = 0;
  String loadStatus = _idleStatus;
  int elapsedMilliseconds = 0;
  int contentRevision = 0;

  DateTime? _loadStartTime;
  Timer? _elapsedTimer;
  StreamSubscription<String>? _progressSubscription;
  bool _disposed = false;

  bool get hasImportedHardware => importedHardwarePath.trim().isNotEmpty;

  bool get hasImportedAcpiTables => importedAcpiTablesPath.trim().isNotEmpty;

  bool get customSsdtAvailable => !hasImportedHardware || hasImportedAcpiTables;

  void init() {
    _initOutputDirectory();
    _listenProgress();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future<void>.delayed(const Duration(milliseconds: 32), () {
        if (_disposed) return;
        unawaited(loadAllInfo());
      });
    });
  }

  void _listenProgress() {
    _progressSubscription = HardwareInfo.progressStream.listen((message) {
      if (_disposed) return;
      loadStatus = _statusFromProgress(message);
      notifyListeners();
    });
  }

  String _statusFromProgress(String message) {
    if (message.toLowerCase().contains('fail')) return _failedStatus;
    if (message.toLowerCase().contains('unsupported')) return _unsupportedStatus;
    if (message.toLowerCase().contains('complete') || message.toLowerCase().contains('loaded')) return _completeStatus;
    if (message.toLowerCase().contains('cache')) return _refreshStatus;
    return isLoading ? _loadingStatus : _idleStatus;
  }

  Future<void> _initOutputDirectory() async {
    if (outputDirectory.isEmpty) {
      outputDirectory = await FileUtils.getDefaultOutputDirectory();
      if (_disposed) return;
      notifyListeners();
    }
  }

  Future<void> loadAllInfo() async {
    if (_disposed) return;
    final hasCache = await HardwareInfo.loadCachedInfo('all');
    if (_disposed) return;
    allInfo = HardwareInfo.getHardwareInfoForPage('all');
    rawInfo = HardwareInfo.rawInfo;
    if (hasCache) {
      contentRevision++;
      loadStatus = _refreshStatus;
      loadProgress = 1;
      isLoading = false;
      notifyListeners();
      if (!HardwareInfo.analysisDataLoaded) {
        unawaited(HardwareInfo.ensureAnalysisDataLoaded().then((_) {
          if (_disposed || !hasListeners) return;
          contentRevision++;
          notifyListeners();
        }));
      }
    }
    if (Platform.isWindows) {
      unawaited(refreshHardwareInfo(
        clearCache: true,
        preserveCurrent: hasCache,
        force: true,
      ));
    } else if (hasCache) {
      _elapsedTimer?.cancel();
      isLoading = false;
      notifyListeners();
    } else {
      _failLoadStatus(_unsupportedStatus);
    }
  }

  Future<void> refreshHardwareInfo({
    bool clearCache = true,
    bool preserveCurrent = false,
    bool force = false,
  }) async {
    if (_disposed) return;
    if (isLoading && !force) return;
    if (!Platform.isWindows) {
      showToast('Hardware query is not supported on this platform');
      loadStatus = _unsupportedStatus;
      isLoading = false;
      loadProgress = 0;
      notifyListeners();
      return;
    }
    if (!preserveCurrent) {
      allInfo = null;
      rawInfo = null;
      importedHardwarePath = '';
      importedAcpiTablesPath = '';
    }
    if (!isLoading) {
      _startLoadStatus(
        status: preserveCurrent ? _refreshStatus : _loadingStatus,
      );
    }
    notifyListeners();
    if (clearCache) HardwareInfo.clearInfo('all');

    final startTime = _loadStartTime ?? DateTime.now();
    try {
      await HardwareInfo.initWindowsInfo(
        taskId: 'all',
        requiredValues: [WindowsSystemInfoType.ALL],
        simple: false,
      );
      if (_disposed) return;
      if (hasImportedHardware) return;
      allInfo = HardwareInfo.getHardwareInfoForPage('all');
      rawInfo = HardwareInfo.rawInfo;
      contentRevision++;
      _finishLoadStatus(DateTime.now().difference(startTime));
    } catch (e) {
      _failLoadStatus(e);
      showToast('Failed to retrieve hardware info: $e');
    }
  }

  void _startLoadStatus({String status = _loadingStatus}) {
    _elapsedTimer?.cancel();
    _loadStartTime = DateTime.now();
    isLoading = true;
    loadProgress = 0.08;
    elapsedMilliseconds = 0;
    loadStatus = status;
    _elapsedTimer = Timer.periodic(const Duration(milliseconds: 100), (_) {
      if (_disposed) return;
      if (_loadStartTime == null) return;
      elapsedMilliseconds =
          DateTime.now().difference(_loadStartTime!).inMilliseconds;
      if (loadProgress < 0.92) loadProgress += 0.015;
      notifyListeners();
    });
  }

  void _finishLoadStatus(Duration duration) {
    _elapsedTimer?.cancel();
    isLoading = false;
    loadProgress = 1;
    elapsedMilliseconds = duration.inMilliseconds;
    loadStatus = _completeStatus;
    notifyListeners();
  }

  void _failLoadStatus(Object error) {
    _elapsedTimer?.cancel();
    isLoading = false;
    loadProgress = 0;
    loadStatus =
        error == _unsupportedStatus ? _unsupportedStatus : _failedStatus;
    notifyListeners();
  }

  Future<void> exportHardwareInfo() async {
    if (hasImportedHardware) {
      showToast('Currently using imported external report. Please refresh local hardware info before exporting.');
      return;
    }

    final report = HardwareInfo.rawReport ??
        const JsonEncoder.withIndent('  ').convert(rawInfo ?? {});
    if (report.trim().isEmpty || report.trim() == '{}') {
      showToast('No local hardware information available to export');
      return;
    }

    final baseDirectory = outputDirectory.isEmpty
        ? await FileUtils.getDefaultOutputDirectory()
        : outputDirectory;
    final reportDirectoryPath = path.join(
      baseDirectory,
      'RapidEFI-HardwareReport',
    );
    final reportRoot = Directory(reportDirectoryPath);
    if (await reportRoot.exists()) {
      try {
        await reportRoot.delete(recursive: true);
      } catch (error) {
        Log.warning('Failed to clean up hardware report directory: $error');
        showToast('Failed to clean up hardware report directory');
        return;
      }
    }
    final reportDirectory = await FileUtils.createDirectory(
      baseDirectory,
      'RapidEFI-HardwareReport',
    );
    if (reportDirectory.isEmpty) {
      showToast('Failed to create hardware report directory');
      return;
    }

    Log('Exporting local hardware report...');
    await FileUtils.saveToFile(
      content: report,
      fileName: 'sysInfo.txt',
      directoryPath: reportDirectory,
    );

    final acpiResult = await _exportLocalAcpiTables(
      reportDirectory,
      folderName: 'ACPI',
    );
    showToast(
      acpiResult.exported
          ? 'Hardware report and ACPI tables exported to $reportDirectory'
          : 'Hardware report exported to $reportDirectory, ${acpiResult.failureMessage ?? 'ACPI table export failed or unsupported'}',
    );
  }

  Future<void> exportLocalAcpiTables({
    Future<String?> Function()? onRequestSudoPassword,
  }) async {
    final baseDirectory = outputDirectory.isEmpty
        ? await FileUtils.getDefaultOutputDirectory()
        : outputDirectory;
    final result = await _exportLocalAcpiTables(
      baseDirectory,
      folderName: 'RapidEFI-ACPI',
      onRequestSudoPassword: onRequestSudoPassword,
    );
    showToast(
      result.exported
          ? 'ACPI tables exported to ${result.path}'
          : result.failureMessage ?? 'ACPI table export failed or unsupported',
    );
  }

  Future<_AcpiExportResult> _exportLocalAcpiTables(
    String reportDirectory, {
    required String folderName,
    Future<String?> Function()? onRequestSudoPassword,
  }) async {
    Directory? tempDirectory;
    var tempMoved = false;
    try {
      Log('Exporting local ACPI tables...');
      final baseDirectory = Directory(reportDirectory);
      await baseDirectory.create(recursive: true);
      final acpiDirectoryPath = path.join(reportDirectory, folderName);
      final tempDirectoryPath = path.join(
        reportDirectory,
        '.$folderName.tmp_${DateTime.now().microsecondsSinceEpoch}',
      );
      tempDirectory = Directory(tempDirectoryPath);
      await tempDirectory.create(recursive: true);

      final manager = ACPIToolManager(
        acpiConfig: AcpiConfig(
          outputDirectory: tempDirectory.path,
          acpiDirectory: tempDirectory.path,
          overwriteEFI: true,
        ),
      );
      final dumpPath = await manager.dumpTables(
        tempDirectory.path,
        onRequestSudoPassword: onRequestSudoPassword,
        throwOnFailure: true,
      );
      final exported = dumpPath != null && dumpPath.isNotEmpty;
      if (!exported) {
        Log.warning('Local ACPI table export failed');
        return const _AcpiExportResult(failureMessage: 'ACPI table export failed or unsupported');
      }

      final acpiRoot = Directory(acpiDirectoryPath);
      if (await acpiRoot.exists()) {
        await acpiRoot.delete(recursive: true);
      }
      await tempDirectory.rename(acpiDirectoryPath);
      tempMoved = true;
      Log('Local ACPI table export completed: $acpiDirectoryPath');
      return _AcpiExportResult(path: acpiDirectoryPath);
    } on AcpiDumpException catch (error) {
      Log.warning('Local ACPI table export failed: $error');
      return _AcpiExportResult(
        failureMessage: _acpiDumpFailureMessage(error),
      );
    } catch (error) {
      Log.warning('Local ACPI table export failed: $error');
      return const _AcpiExportResult(failureMessage: 'ACPI table export failed or unsupported');
    } finally {
      if (!tempMoved && tempDirectory != null && await tempDirectory.exists()) {
        try {
          await tempDirectory.delete(recursive: true);
        } catch (error) {
          Log.warning('Failed to clean up ACPI temp directory: $error');
        }
      }
    }
  }

  String _acpiDumpFailureMessage(AcpiDumpException error) {
    switch (error.type) {
      case AcpiDumpFailureType.toolMissing:
        return 'ACPI dump tool is not ready';
      case AcpiDumpFailureType.unsupportedPlatform:
        return 'Current platform does not support ACPI export';
      case AcpiDumpFailureType.authorizationCancelled:
        return 'Administrator authorization cancelled; ACPI tables not exported';
      case AcpiDumpFailureType.passwordRequired:
        return 'Administrator password not entered; cannot export ACPI tables';
      case AcpiDumpFailureType.incorrectPassword:
        return 'Incorrect administrator password; cannot export ACPI tables';
      case AcpiDumpFailureType.emptyResult:
        return 'ACPI export failed: No valid ACPI tables found';
      case AcpiDumpFailureType.processFailed:
        return 'ACPI export failed: Process execution error';
    }
  }

  Future<void> importHardwareInfo({
    required String filePath,
    String acpiTablesPath = '',
  }) async {
    if (filePath.isEmpty) return;
    try {
      final text = await HardwareInfo.readHardwareReportFile(filePath);
      final decoded = jsonDecode(text);
      if (decoded is! Map<String, dynamic>) {
        throw const FormatException('Hardware info file is not a JSON object');
      }
      await HardwareInfo.importRawInfo('all', decoded);
      allInfo = HardwareInfo.getHardwareInfoForPage('all');
      rawInfo = HardwareInfo.rawInfo;
      contentRevision++;
      importedHardwarePath = filePath;
      importedAcpiTablesPath = _validAcpiTablesPath(acpiTablesPath);
      _elapsedTimer?.cancel();
      isLoading = false;
      loadProgress = 1;
      loadStatus = _importedStatus;
      notifyListeners();
      showToast('Hardware info imported successfully');
      if (acpiTablesPath.trim().isNotEmpty && importedAcpiTablesPath.isEmpty) {
        showToast('Invalid ACPI table directory; custom SSDT unavailable');
      }
    } catch (e) {
      showToast('Failed to import hardware report: $e');
    }
  }

  String _validAcpiTablesPath(String acpiTablesPath) {
    final input = acpiTablesPath.trim();
    if (input.isEmpty) return '';

    final directory = Directory(input);
    if (!directory.existsSync()) return '';
    if (_containsSingleDsdt(directory)) return directory.path;

    for (final candidate in _preferredAcpiDirectoryCandidates(directory)) {
      if (_containsSingleDsdt(candidate)) return candidate.path;
    }

    for (final candidate in _acpiDirectoryCandidates(directory)) {
      if (_containsSingleDsdt(candidate)) {
        return candidate.path;
      }
    }

    return '';
  }

  List<Directory> _preferredAcpiDirectoryCandidates(Directory directory) {
    try {
      return directory
          .listSync(followLinks: false)
          .whereType<Directory>()
          .where(
        (entity) {
          final name = entity.path.split(Platform.pathSeparator).last;
          final lowerName = name.toLowerCase();
          return lowerName == 'acpi' || lowerName == 'acpis';
        },
      ).toList();
    } catch (_) {
      return const <Directory>[];
    }
  }

  List<Directory> _acpiDirectoryCandidates(Directory directory) {
    final candidates = <Directory>[];
    void collect(Directory current, int depth) {
      if (depth > 3) return;
      List<FileSystemEntity> entities;
      try {
        entities = current.listSync(followLinks: false);
      } catch (_) {
        return;
      }
      for (final entity in entities) {
        if (entity is! Directory) continue;
        final name = entity.path.split(Platform.pathSeparator).last;
        if (name.toLowerCase().contains('acpi')) {
          candidates.add(entity);
        }
        collect(entity, depth + 1);
      }
    }

    collect(directory, 0);
    return candidates;
  }

  bool _containsSingleDsdt(Directory directory) {
    final files =
        directory.listSync(followLinks: false).whereType<File>().where((file) {
      final lower = file.path.toLowerCase();
      return lower.endsWith('.aml') || lower.endsWith('.dat');
    }).toList();
    if (files.isEmpty) return false;

    var dsdtCount = 0;
    for (final file in files) {
      RandomAccessFile? opened;
      try {
        opened = file.openSync(mode: FileMode.read);
        final header = opened.readSync(4);
        if (header.length == 4 && String.fromCharCodes(header) == 'DSDT') {
          dsdtCount++;
        }
      } catch (_) {
      } finally {
        opened?.closeSync();
      }
    }
    return dsdtCount == 1;
  }

  Future<void> buildAndExportEfi({
    required HardwareAllInfo info,
    required String macOSVersion,
    required int? alcLayoutId,
    required bool? enableNpci,
    required PlatformInfoGeneric? platformInfoGeneric,
    required CpuType? cpuType,
    required PlatformType? platformType,
    required String? platformCode,
    required SsdtBuildMode ssdtBuildMode,
    required SsdtSelection? ssdtSelection,
    required BuildContext context,
  }) async {
    final effectiveSsdtBuildMode =
        ssdtBuildMode == SsdtBuildMode.custom && !customSsdtAvailable
            ? SsdtBuildMode.original
            : ssdtBuildMode;
    final progress = EfiBuildProgressDialog.show(context);
    progress.addLine('Starting EFI configuration...');
    try {
      progress.addLine('Generating ConfigModel based on hardware info...');
      final configModel = await HardwareConfigModelBuilder(
        hardwareInfo: info,
        rawInfo: rawInfo,
      ).buildAsync(
        options: HardwareConfigOptions(
          macOSVersion: macOSVersion,
          alcLayoutId: alcLayoutId,
          enableNpci: enableNpci,
          platformInfoGeneric: platformInfoGeneric,
          cpuType: cpuType,
          platformType: platformType,
          platformCode: platformCode,
        ),
      );
      progress.addLine(
        'ConfigModel generated: ${configModel.cpuType.name}/${configModel.platformType.name}/${configModel.platformCode}',
      );
      final resolvedSsdtSelection =
          effectiveSsdtBuildMode == SsdtBuildMode.custom
              ? ssdtSelection ??
                  SsdtSelection(
                    cpuType: configModel.cpuType,
                    platformType: configModel.platformType,
                    platformCode: configModel.platformCode,
                    items: _defaultSsdtItems(configModel, info),
                  )
              : null;
      final customSsdtManagedPaths = resolvedSsdtSelection == null
          ? const <String>{}
          : customSsdtManagedAmlPaths(resolvedSsdtSelection);
      if (resolvedSsdtSelection != null) {
        removeCustomSsdtPrebuiltItems(configModel, resolvedSsdtSelection);
        progress.addLine(
          'Preparing custom SSDTs: ${resolvedSsdtSelection.items.map((item) => item.name).join(', ')}',
        );
      } else if (effectiveSsdtBuildMode == SsdtBuildMode.original) {
        progress.addLine('Using original EFI SSDTs; skipping custom SSDT generation.');
        if (hasImportedHardware && !hasImportedAcpiTables) {
          progress.addLine('External hardware report imported without ACPI directory; custom SSDTs disabled.');
        }
      }

      progress.addLine('Exporting OpenCore EFI...');
      final result = await EfiBuildPipeline(ConfigService()).buildResult(
        configModel: configModel,
        mode: ConfigModelMode.auto,
        options: EfiBuildOptions(
          outDirectory: outputDirectory,
          excludedAcpiPaths: customSsdtManagedPaths,
          afterConfigWritten: resolvedSsdtSelection == null
              ? null
              : (draft) async {
                  progress.addLine('EFI written; extracting ACPI and generating custom SSDTs...');
                  final merged =
                      await const WinSsdtBuildService().buildAndMerge(
                    draft: draft,
                    selection: resolvedSsdtSelection,
                    platformType: configModel.platformType,
                    rawInfo: rawInfo,
                    acpiTablesPath: importedAcpiTablesPath,
                  );
                  progress.addLine(merged ? 'Custom SSDT generation finished.' : 'Custom SSDT generation failed.');
                  return merged;
                },
        ),
      );
      progress.complete(
        success: result.success,
        outputPath: result.efiRootPath,
        message: result.success ? 'EFI configuration completed.' : 'EFI configuration failed. Please check output path or logs.',
      );
    } on UnsupportedError catch (error) {
      progress.addLine('Failed to configure EFI: ${error.message}');
      progress.complete(
        success: false,
        outputPath: outputDirectory,
        message: error.message ?? 'Hardware auto-generation ConfigModel error',
      );
    } catch (error, stackTrace) {
      debugPrint('hardware EFI export failed: $error');
      debugPrintStack(stackTrace: stackTrace);
      progress.addLine('Failed to configure EFI: $error');
      progress.complete(
        success: false,
        outputPath: outputDirectory,
        message: 'Error during EFI configuration: $error',
      );
    }
  }

  List<SsdtItem> _defaultSsdtItems(ConfigModel model, HardwareAllInfo info) {
    final items = SsdtPlatformCatalog.items(
      model.cpuType,
      model.platformType,
      model.platformCode,
    );
    final selectedKeys = SsdtPlatformCatalog.defaultSelectedKeys(
      model.cpuType,
      model.platformType,
      model.platformCode,
    );

    if (model.platformType == PlatformType.laptop &&
        HardwareConfigBuildContext(
          hardwareInfo: info,
          rawInfo: rawInfo,
          options: const HardwareConfigOptions(),
        ).hasI2cInputDevice) {
      for (final item in items) {
        if (item.name == ACPITable.ssdtGPI0.name) {
          selectedKeys.add(item.key);
          break;
        }
      }
    }

    return items
        .where((item) => item.isBasic || selectedKeys.contains(item.key))
        .toList();
  }

  @override
  void dispose() {
    _disposed = true;
    _elapsedTimer?.cancel();
    _progressSubscription?.cancel();
    super.dispose();
  }
}
