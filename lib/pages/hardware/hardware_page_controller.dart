import 'package:rapidefi/l10n/l10n_helper.dart';

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/widgets.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
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
  AppLocalizations? _l10n(BuildContext? context) {
    if (context == null || !context.mounted) return null;
    return AppLocalizations.of(context);
  }

  static final String _idleStatus = l10nGlobal.autoGen5780;
  static final String _loadingStatus = l10nGlobal.autoGen5781;
  static final String _refreshStatus = l10nGlobal.autoGen5782;
  static final String _completeStatus = l10nGlobal.autoGen5783;
  static final String _failedStatus = l10nGlobal.autoGen5784;
  static final String _unsupportedStatus = l10nGlobal.autoGen5785;
  static final String _importedStatus = l10nGlobal.autoGen5786;

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
    if (message.contains(l10nGlobal.autoGen5787)) return _failedStatus;
    if (message.contains(l10nGlobal.autoGen5788)) return _unsupportedStatus;
    if (message.contains(l10nGlobal.autoGen5789)) return _completeStatus;
    if (message.contains(l10nGlobal.autoGen5790)) return _refreshStatus;
    return isLoading ? _loadingStatus : _idleStatus;
  }

  Future<void> _initOutputDirectory() async {
    if (outputDirectory.isEmpty) {
      outputDirectory = await FileUtils.getDefaultOutputDirectory();
      if (_disposed) return;
      notifyListeners();
    }
  }

  Future<void> loadAllInfo([BuildContext? context]) async {
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
        context,
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

  Future<void> refreshHardwareInfo(BuildContext? context, {
    bool clearCache = true,
    bool preserveCurrent = false,
    bool force = false,
  }) async {
    if (_disposed) return;
    if (isLoading && !force) return;
    if (!Platform.isWindows) {
      showToast(_l10n(context)?.hwPlatformUnsupported ?? l10nGlobal.autoGen5791);
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
      showToast(_l10n(context)?.hwFetchFailed(e.toString()) ?? '硬件信息获取失败: $e');
    }
  }

  void _startLoadStatus({String? status}) {
    status ??= _loadingStatus;
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

  Future<void> exportHardwareInfo(BuildContext? context) async {
    if (hasImportedHardware) {
      showToast(_l10n(context)?.hwExportWarning ?? l10nGlobal.autoGen5792);
      return;
    }

    final report = HardwareInfo.rawReport ??
        const JsonEncoder.withIndent('  ').convert(rawInfo ?? {});
    if (report.trim().isEmpty || report.trim() == '{}') {
      showToast(_l10n(context)?.hwNoLocalInfo ?? l10nGlobal.autoGen5793);
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
        Log.warning(l10nGlobal.logMsg445(error.toString()));
        if (context != null && context.mounted) showToast(_l10n(context)?.hwFolderCleanFailed ?? l10nGlobal.autoGen5794);
        return;
      }
    }
    final reportDirectory = await FileUtils.createDirectory(
      baseDirectory,
      'RapidEFI-HardwareReport',
    );
    if (reportDirectory.isEmpty) {
      if (context != null && context.mounted) showToast(_l10n(context)?.hwFolderCreateFailed ?? l10nGlobal.autoGen5795);
      return;
    }

    Log(l10nGlobal.logMsg450);
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
          ? '硬件报告和 ACPI 表已导出到 $reportDirectory'
          : '硬件报告已导出到 $reportDirectory，${acpiResult.failureMessage ?? l10nGlobal.autoGen5796}',
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
          ? 'ACPI 表已导出到 ${result.path}'
          : result.failureMessage ?? l10nGlobal.autoGen5796,
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
      Log(l10nGlobal.logMsg451);
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
        Log.warning(l10nGlobal.logMsg446);
        return _AcpiExportResult(failureMessage: l10nGlobal.autoGen5796);
      }

      final acpiRoot = Directory(acpiDirectoryPath);
      if (await acpiRoot.exists()) {
        await acpiRoot.delete(recursive: true);
      }
      await tempDirectory.rename(acpiDirectoryPath);
      tempMoved = true;
      Log(l10nGlobal.logMsg452(acpiDirectoryPath.toString()));
      return _AcpiExportResult(path: acpiDirectoryPath);
    } on AcpiDumpException catch (error) {
      Log.warning(l10nGlobal.logMsg447(error.toString()));
      return _AcpiExportResult(
        failureMessage: _acpiDumpFailureMessage(error),
      );
    } catch (error) {
      Log.warning(l10nGlobal.logMsg448(error.toString()));
      return _AcpiExportResult(failureMessage: l10nGlobal.autoGen5796);
    } finally {
      if (!tempMoved && tempDirectory != null && await tempDirectory.exists()) {
        try {
          await tempDirectory.delete(recursive: true);
        } catch (error) {
          Log.warning(l10nGlobal.logMsg449(error.toString()));
        }
      }
    }
  }

  String _acpiDumpFailureMessage(AcpiDumpException error) {
    switch (error.type) {
      case AcpiDumpFailureType.toolMissing:
        return l10nGlobal.autoGen5729;
      case AcpiDumpFailureType.unsupportedPlatform:
        return l10nGlobal.autoGen5731;
      case AcpiDumpFailureType.authorizationCancelled:
        return l10nGlobal.autoGen5797;
      case AcpiDumpFailureType.passwordRequired:
        return l10nGlobal.autoGen5798;
      case AcpiDumpFailureType.incorrectPassword:
        return l10nGlobal.autoGen5799;
      case AcpiDumpFailureType.emptyResult:
        return l10nGlobal.autoGen5800;
      case AcpiDumpFailureType.processFailed:
        return l10nGlobal.autoGen5801;
    }
  }

  Future<void> importHardwareInfo(BuildContext? context, {
    required String filePath,
    String acpiTablesPath = '',
  }) async {
    if (filePath.isEmpty) return;
    try {
      final text = await HardwareInfo.readHardwareReportFile(filePath);
      final decoded = jsonDecode(text);
      if (decoded is! Map<String, dynamic>) {
        throw FormatException(l10nGlobal.autoGen5802);
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
      if (context != null && context.mounted) showToast(_l10n(context)?.hwImportSuccess ?? l10nGlobal.autoGen5803);
      if (acpiTablesPath.trim().isNotEmpty && importedAcpiTablesPath.isEmpty) {
        if (context != null && context.mounted) showToast(_l10n(context)?.hwImportAcpiInvalid ?? l10nGlobal.autoGen5804);
      }
    } catch (e) {
      if (context != null && context.mounted) showToast(_l10n(context)?.hwImportFailed(e.toString()) ?? '导入硬件报告失败: $e');
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
    progress.addLine(l10nGlobal.autoGen5805);
    try {
      progress.addLine(l10nGlobal.autoGen5806);
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
        'ConfigModel 已生成: ${configModel.cpuType.name}/${configModel.platformType.name}/${configModel.platformCode}',
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
          '准备定制 SSDT: ${resolvedSsdtSelection.items.map((item) => item.name).join(', ')}',
        );
      } else if (effectiveSsdtBuildMode == SsdtBuildMode.original) {
        progress.addLine(l10nGlobal.autoGen5807);
        if (hasImportedHardware && !hasImportedAcpiTables) {
          progress.addLine(l10nGlobal.autoGen5808);
        }
      }

      progress.addLine(l10nGlobal.autoGen5809);
      final result = await EfiBuildPipeline(ConfigService()).buildResult(
        configModel: configModel,
        mode: ConfigModelMode.auto,
        options: EfiBuildOptions(
          outDirectory: outputDirectory,
          excludedAcpiPaths: customSsdtManagedPaths,
          afterConfigWritten: resolvedSsdtSelection == null
              ? null
              : (draft) async {
                  progress.addLine(l10nGlobal.autoGen5810);
                  final merged =
                      await const WinSsdtBuildService().buildAndMerge(
                    draft: draft,
                    selection: resolvedSsdtSelection,
                    platformType: configModel.platformType,
                    rawInfo: rawInfo,
                    acpiTablesPath: importedAcpiTablesPath,
                  );
                  progress.addLine(merged ? l10nGlobal.autoGen5811 : l10nGlobal.autoGen5812);
                  return merged;
                },
        ),
      );
      progress.complete(
        success: result.success,
        outputPath: result.efiRootPath,
        message: result.success ? l10nGlobal.autoGen5813 : l10nGlobal.autoGen5814,
      );
    } on UnsupportedError catch (error) {
      progress.addLine('配置 EFI 失败: ${error.message}');
      progress.complete(
        success: false,
        outputPath: outputDirectory,
        message: error.message ?? l10nGlobal.autoGen5815,
      );
    } catch (error, stackTrace) {
      debugPrint('hardware EFI export failed: $error');
      debugPrintStack(stackTrace: stackTrace);
      progress.addLine('配置 EFI 失败: $error');
      progress.complete(
        success: false,
        outputPath: outputDirectory,
        message: '配置 EFI 发生错误: $error',
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
