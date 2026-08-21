// ignore_for_file: constant_identifier_names

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;
import 'package:sp_util/sp_util.dart';

import 'analysis/gpu_compatibility_data.dart';
import 'data/chipset_data.dart';
import 'data/cpu_data.dart' as cpu_data;
import 'data/gpu_codename_data.dart' as gpu_cd;
import 'model/allinfo.dart';

Map<String, dynamic> _decodeAndNormalizeHardwareInfo(String report) {
  final decoded = jsonDecode(report);
  if (decoded is! Map<String, dynamic>) {
    throw const FormatException('Hardware info cache is not a JSON object');
  }
  final rawInfo = Map<String, dynamic>.from(decoded);
  HardwareInfo._normalizeSysInfo(rawInfo);
  return rawInfo;
}

enum WindowsSystemInfoType {
  ALL,
  BIOS,
  CPU,
  Motherboard,
  Monitor,
  Memory,
  Disk,
  DiskController,
  GPU,
  Audio,
  Network,
  Bluetooth,
  OperatingSystem,
  USB,
  Biometric,
  System,
  Input,
  SDCard,
  AHCI,
  HPET,
  SecureBoot,
  CSM,
}

extension WindowsSystemInfoTypeExtension on WindowsSystemInfoType {
  String get name => toString().split('.')[1];
}

class HardwareInfo {
  static const String _sysInfoAsset = 'assets/tools/windows/sysInfo.exe';
  static const String _rawInfoCacheKey = 'hardware.sysInfo.raw.all.v1';
  static Future<String>? _sysInfoExecutablePath;
  static Future<bool>? _cacheLoadFuture;
  static final Map<String, HardwareAllInfo> _hardwareCache = {};
  static Completer<void>? _initCompleter;
  static HardwareAllInfo? _allHardwareInfo;
  static Map<String, dynamic>? _rawInfo;
  static String? _rawReport;

  static final StreamController<String> _progressController =
      StreamController<String>.broadcast();
  static Stream<String> get progressStream => _progressController.stream;

  static void _sendProgressMessage(String message) {
    if (!_progressController.isClosed) {
      _progressController.add(message);
    }
  }

  static HardwareAllInfo? getHardwareInfoForPage(String taskId) {
    return _allHardwareInfo ?? _hardwareCache[taskId];
  }

  static Map<String, dynamic>? get rawInfo => _rawInfo;

  static String? get rawReport {
    if (_rawReport != null) return _rawReport;
    if (_rawInfo == null) return null;
    _rawReport = const JsonEncoder.withIndent('  ').convert(_rawInfo);
    return _rawReport;
  }

  static Future<String> readHardwareReportFile(String filePath) async {
    final bytes = await File(filePath).readAsBytes();
    return _decodeProcessOutput(bytes);
  }

  static String readHardwareReportFileSync(String filePath) {
    final bytes = File(filePath).readAsBytesSync();
    return _decodeProcessOutput(bytes);
  }

  static Future<bool> loadCachedInfo(String taskId) async {
    if (_allHardwareInfo != null && _rawInfo != null) {
      _hardwareCache[taskId] = _allHardwareInfo!;
      _sendProgressMessage('Hardware info loaded from cache');
      return true;
    }

    final loadingTask = _cacheLoadFuture;
    if (loadingTask != null) {
      final loaded = await loadingTask;
      if (loaded && _allHardwareInfo != null) {
        _hardwareCache[taskId] = _allHardwareInfo!;
      }
      return loaded;
    }

    final cachedReport = SpUtil.getString(_rawInfoCacheKey);
    if (cachedReport == null || cachedReport.trim().isEmpty) {
      return false;
    }

    _cacheLoadFuture = () async {
      final rawInfo = await compute(
        _decodeAndNormalizeHardwareInfo,
        cachedReport,
      );
      _rawReport = null;
      await _loadRawInfo(
        taskId,
        rawInfo,
        persist: false,
        loadAnalysis: false,
        normalized: true,
      );
      _sendProgressMessage('Hardware info loaded from local cache');
      return true;
    }();

    try {
      return await _cacheLoadFuture!;
    } catch (e) {
      _sendProgressMessage('Failed to read local hardware info cache: $e');
      return false;
    } finally {
      _cacheLoadFuture = null;
    }
  }

  static Future<void> importRawInfo(
    String taskId,
    Map<String, dynamic> rawInfo,
  ) async {
    await _loadRawInfo(taskId, rawInfo, persist: false);
    _sendProgressMessage('Hardware info loaded from imported file');
  }

  static Future<void> _loadRawInfo(
    String taskId,
    Map<String, dynamic> rawInfo, {
    required bool persist,
    bool loadAnalysis = true,
    bool normalized = false,
  }) async {
    if (loadAnalysis) {
      await ensureAnalysisDataLoaded();
    }

    _rawInfo = rawInfo;
    if (!normalized) {
      _normalizeSysInfo(_rawInfo!);
    }
    _rawReport = null;
    _allHardwareInfo = HardwareAllInfo.fromJson(_rawInfo!);
    _hardwareCache[taskId] = _allHardwareInfo!;
    if (persist) {
      final report = const JsonEncoder.withIndent('  ').convert(_rawInfo);
      _rawReport = report;
      Future.delayed(Duration.zero, () {
        SpUtil.putString(_rawInfoCacheKey, report);
      });
    }
  }

  static Future<void> prefetch() async {
    if (!Platform.isWindows) return;
    _ensureSysInfoExecutable();
    unawaited(ensureAnalysisDataLoaded());
  }

  static bool get analysisDataLoaded =>
      GpuCompatibilityData.isLoaded && gpu_cd.GpuCodenameData.isLoaded;

  static Future<void> ensureAnalysisDataLoaded() async {
    await Future.wait([
      GpuCompatibilityData.ensureLoaded(),
      gpu_cd.GpuCodenameData.ensureLoaded(),
    ]);
  }

  static Future<bool> get isInitialized async {
    await _waitForInitialization();
    return _allHardwareInfo != null;
  }

  static Future<void> _waitForInitialization() async {
    if (_initCompleter != null) {
      await _initCompleter!.future;
    }
  }

  static Future<void> initWindowsInfo({
    required String taskId,
    required List<WindowsSystemInfoType> requiredValues,
    bool simple = true,
  }) async {
    _sendProgressMessage('Initializing hardware information');
    if (!Platform.isWindows) {
      _sendProgressMessage('Current OS not supported, Windows only');
      throw UnsupportedError('Only support Windows!');
    }

    await ensureAnalysisDataLoaded();

    if (_allHardwareInfo != null) {
      _hardwareCache[taskId] = _allHardwareInfo!;
      _sendProgressMessage('Hardware info loaded from cache');
      return;
    }

    if (_initCompleter != null && _initCompleter?.isCompleted == false) {
      _sendProgressMessage('Querying hardware information');
      await _initCompleter!.future;
      if (_allHardwareInfo != null) {
        _hardwareCache[taskId] = _allHardwareInfo!;
      }
      return;
    }

    final completer = Completer<void>();
    _initCompleter = completer;

    try {
      _sendProgressMessage('Querying hardware information');
      await _getHardwareInfo();
      _hardwareCache[taskId] = _allHardwareInfo!;
      _sendProgressMessage('Hardware information query complete');
    } catch (e) {
      _sendProgressMessage('Failed to get hardware information: $e');
      if (!completer.isCompleted) {
        completer.complete();
      }
      rethrow;
    } finally {
      if (!completer.isCompleted) {
        completer.complete();
      }
      _initCompleter = null;
    }
  }

  static Future<void> _getHardwareInfo() async {
    final executablePath = await _ensureSysInfoExecutable();
    final result = await Process.run(
      executablePath,
      ['-all'],
      stdoutEncoding: null,
      stderrEncoding: null,
    );
    if (result.exitCode != 0) {
      throw ProcessException(
        executablePath,
        ['-all'],
        _decodeProcessOutput(result.stderr),
        result.exitCode,
      );
    }

    final output = _decodeProcessOutput(result.stdout).trim();
    if (output.isEmpty) {
      throw const FormatException('sysInfo.exe returned no hardware information');
    }

    final decoded = jsonDecode(output);
    if (decoded is! Map<String, dynamic>) {
      throw const FormatException('sysInfo.exe output is not a JSON object');
    }
    await _loadRawInfo('all', decoded, persist: true);
    _sendProgressMessage('sysInfo.exe query complete');
  }

  static String _decodeProcessOutput(Object? output) {
    if (output is String) return output;
    if (output is List<int>) {
      return utf8.decode(output, allowMalformed: true);
    }
    return output?.toString() ?? '';
  }

  static Future<String> _ensureSysInfoExecutable() {
    return _sysInfoExecutablePath ??= _copySysInfoExecutable();
  }

  static Future<String> _copySysInfoExecutable() async {
    final executableDirectory = File(Platform.resolvedExecutable).parent;
    final toolsDirectory =
        Directory(path.join(executableDirectory.path, 'tools'));
    final executableFile = File(path.join(toolsDirectory.path, 'sysInfo.exe'));

    // If file exists, skip copy (common on non-first launch)
    if (await executableFile.exists()) {
      return executableFile.path;
    }

    if (!await toolsDirectory.exists()) {
      await toolsDirectory.create(recursive: true);
    }

    final assetData = await rootBundle.load(_sysInfoAsset);
    final assetBytes = assetData.buffer.asUint8List();
    await executableFile.writeAsBytes(assetBytes, flush: true);
    return executableFile.path;
  }

  static void clearInfo(String taskId) {
    _hardwareCache.clear();
    _allHardwareInfo = null;
    _rawInfo = null;
    _rawReport = null;
  }

  static void _renameKey(
      Map<String, dynamic> map, String oldKey, String newKey) {
    if (!map.containsKey(oldKey) || oldKey == newKey) return;
    if (map.containsKey(newKey)) {
      map.remove(oldKey);
      return;
    }
    final entries = map.entries.toList();
    map.clear();
    for (final entry in entries) {
      map[entry.key == oldKey ? newKey : entry.key] = entry.value;
    }
  }

  static void _normalizeSysInfo(Map<String, dynamic> source) {
    _renameKey(source, 'MotherBoard', 'Motherboard');
    source['Motherboard'] = _asStringKeyMap(source['Motherboard']);
    source['USB Controllers'] = _asStringKeyMap(source['USB Controllers']);
    source.remove('USB');
    final cpuList = _normalizeCpuList(source['CPU']);
    source['CPU'] = cpuList;
    final cpuCodename = _extractCpuCodename(cpuList);
    source['Monitor'] = _normalizeMonitorMap(source['Monitor']);
    source['GPU'] = _normalizeGpuMap(source['GPU'], cpuCodename);
    source['Audio'] = _normalizeAudioMap(source['Audio']);
    // Backfill motherboard chipset
    final board = source['Motherboard'];
    if (board is Map) {
      _backfillMotherboardChipset(board);
    }

    final bios = source['BIOS'];
    if (bios is Map) {
      bios['AHCI'] = _enabledOrNull(bios['AHCI']);
      bios['Secure Boot'] = _enabled(bios['Secure Boot']);
      bios['CSM'] = _enabled(bios['CSM']);
      bios['Above 4G Decoding'] = _enabledOrNull(bios['Above 4G Decoding']);
      bios['Resizable BAR'] = _enabledOrNull(bios['Resizable BAR']);
    }
  }

  static String? _extractCpuCodename(List<dynamic> cpuList) {
    for (final cpu in cpuList) {
      if (cpu is Map) {
        final codename = _s(cpu['Codename']);
        if (codename.isNotEmpty) return codename;
      }
    }
    return null;
  }

  static List<dynamic> _normalizeCpuList(dynamic value) {
    final cpus = value is List ? value : (value == null ? [] : [value]);
    return cpus.whereType<Map>().map((cpu) {
      final item = Map<String, dynamic>.from(cpu);
      item['VirtualizationFirmwareEnabled'] =
          _enabled(item['VirtualizationFirmwareEnabled']);

      if (_s(item['Codename']).isEmpty) {
        final codename = cpu_data.CpuInfomation.computeCpuCodename(
          processorId: _s(item['ProcessorId']),
          description: _s(item['Description']),
          caption: _s(item['Caption']),
          name: _s(item['Name']),
          manufacturer: _s(item['Manufacturer']),
        );
        if (codename != null && codename.isNotEmpty) {
          item['Codename'] = codename;
        }
      }
      return item;
    }).toList();
  }

  static void _backfillMotherboardChipset(Map board) {
    final deviceId = _s(board['Device ID']).toUpperCase();
    if (deviceId.isEmpty) return;

    if (_isAmdChipsetVendor(deviceId)) {
      final amdChipset = _amdChipsetFromBoard(board);
      if (amdChipset != null && amdChipset.isNotEmpty) {
        board['Chipset'] = amdChipset;
        return;
      }
    }

    final chipset = ChipsetData.chipset_controllers[deviceId];
    if (chipset != null && chipset.isNotEmpty) {
      board['Chipset'] = chipset;
    }
  }

  static bool _isAmdChipsetVendor(String deviceId) {
    return deviceId.startsWith('1002-') || deviceId.startsWith('1022-');
  }

  static String? _amdChipsetFromBoard(Map board) {
    final text = [
      _s(board['Chipset']),
      _s(board['Product']),
      _s(board['Model']),
      _s(board['Name']),
      _s(board['DeviceDesc']),
      _s(board['Device ID']),
    ].where((value) => value.isNotEmpty).join(' ');

    if (text.isEmpty) return null;

    for (final rule in ChipsetData.amdChipsetRules) {
      if (rule.pattern.hasMatch(text)) {
        return rule.normalized;
      }
    }

    return null;
  }

  static Map<String, dynamic> _normalizeGpuMap(dynamic value,
      [String? cpuCodename]) {
    final gpus = _asStringKeyMap(value);
    gpus.updateAll((key, gpu) {
      if (gpu is! Map) return gpu;
      final item = Map<String, dynamic>.from(gpu);
      item['Device Type'] = _gpuDeviceType(item['Device Type']);

      if (_gpuCodenameNeedsBackfill(item, key)) {
        item.remove('Codename');
        _backfillGpuCodename(item, key, cpuCodename ?? _primaryCpuCodename());
      }

      if (_hasAmdIntegratedGpuEvidence(item, key)) {
        item['Device Type'] = gpu_cd.GpuResolvedType.integrated.label;
      } else if (_s(item['Device Type']).isEmpty) {
        _backfillGpuDeviceType(item, key, _s(item['Codename']),
            cpuCodename ?? _primaryCpuCodename());
      }
      return item;
    });
    return gpus;
  }

  static String? _primaryCpuCodename() {
    final rawCpu = _rawInfo?['CPU'];
    if (rawCpu == null) return null;
    if (rawCpu is List) {
      for (final cpu in rawCpu) {
        if (cpu is Map) {
          final codename = _s(cpu['Codename']);
          if (codename.isNotEmpty) return codename;
        }
      }
    } else if (rawCpu is Map) {
      return _s(rawCpu['Codename']);
    }
    return null;
  }

  static void _backfillGpuCodename(
    Map<String, dynamic> gpu,
    String gpuName,
    String? cpuCodename,
  ) {
    final deviceId = _s(gpu['Device ID']);
    final manufacturer = _s(gpu['Manufacturer']);

    final compatibilityRecord = GpuCompatibilityData.findSync(deviceId);
    if (compatibilityRecord != null &&
        compatibilityRecord.codename.isNotEmpty) {
      gpu['Codename'] = compatibilityRecord.codename;
      return;
    }

    if (deviceId.isNotEmpty) {
      final lookupResult = gpu_cd.GpuCodenameData.lookupCodename(deviceId);
      if (lookupResult != null && lookupResult.isNotEmpty) {
        gpu['Codename'] = lookupResult;
        return;
      }
    }

    if (gpu_cd.GpuCodenameData.isIntelGpu(deviceId) && cpuCodename != null) {
      gpu['Codename'] = cpuCodename;
      return;
    }

    if (gpu_cd.GpuCodenameData.isIntegratedByName(gpuName) &&
        cpuCodename != null) {
      gpu['Codename'] = cpuCodename;
      return;
    }

    final lowerMaker = manufacturer.toLowerCase();
    if ((lowerMaker.contains('amd') || lowerMaker.contains('ati')) &&
        gpu_cd.GpuCodenameData.isIntegratedByName(gpuName) &&
        cpuCodename != null) {
      gpu['Codename'] = cpuCodename;
      return;
    }

    gpu['Codename'] = 'Unknown';
  }

  static bool _hasAmdIntegratedGpuEvidence(
    Map<String, dynamic> gpu,
    String gpuName,
  ) {
    final deviceId = _s(gpu['Device ID']);
    final displayName = [
      gpuName,
      _s(gpu['Name']),
      _s(gpu['DeviceDesc']),
      _s(gpu['Device Description']),
      _s(gpu['Description']),
    ].where((value) => value.isNotEmpty).join(' ');

    return gpu_cd.GpuCodenameData.hasAmdIntegratedGpuEvidence(
      name: displayName,
      deviceId: deviceId,
      rawDeviceType: gpu['Device Type'],
      codename: _s(gpu['Codename']),
      pciIdsDeviceName: gpu_cd.GpuCodenameData.lookupDeviceName(deviceId),
    );
  }

  static bool _gpuCodenameNeedsBackfill(
    Map<String, dynamic> gpu,
    String gpuName,
  ) {
    final codename = _s(gpu['Codename']);
    if (codename.isEmpty) return true;

    final normalizedCodename = _normalizeGpuModelText(codename);
    if (normalizedCodename.isEmpty) return true;
    if (gpu_cd.GpuCodenameData.isIntegratedByName(codename)) return true;

    final candidates = [
      gpuName,
      _s(gpu['Name']),
      _s(gpu['DeviceDesc']),
      _s(gpu['Device Description']),
      _s(gpu['Description']),
    ].map(_normalizeGpuModelText);

    return candidates.any(
      (candidate) => candidate.isNotEmpty && candidate == normalizedCodename,
    );
  }

  static String _normalizeGpuModelText(String value) {
    return value
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();
  }

  static void _backfillGpuDeviceType(
    Map<String, dynamic> gpu,
    String gpuName,
    String codename,
    String? cpuCodename,
  ) {
    final deviceId = _s(gpu['Device ID']);

    if (gpu_cd.GpuCodenameData.isIntelGpu(deviceId)) {
      gpu['Device Type'] = 'Integrated Graphics';
      return;
    }

    // Name has iGPU characteristics
    if (gpu_cd.GpuCodenameData.isIntegratedByName(gpuName)) {
      gpu['Device Type'] = 'Integrated Graphics';
      return;
    }

    if (cpuCodename != null &&
        codename.isNotEmpty &&
        codename.toLowerCase() == cpuCodename.toLowerCase()) {
      gpu['Device Type'] = 'Integrated Graphics';
      return;
    }

    // dGPU characteristics
    if (gpu_cd.GpuCodenameData.isDiscreteByName(gpuName)) {
      gpu['Device Type'] = 'Discrete Graphics';
      return;
    }
  }

  static Map<String, dynamic> _normalizeMonitorMap(dynamic value) {
    return _asStringKeyMap(value);
  }

  static Map<String, dynamic> _normalizeAudioMap(dynamic value) {
    final audio = _asStringKeyMap(value);
    audio.updateAll((key, device) {
      if (device is! Map) return device;
      final item = Map<String, dynamic>.from(device);
      item.remove('Audio Endpoints');
      return item;
    });
    return audio;
  }

  static Map<String, dynamic> _asStringKeyMap(dynamic value) {
    if (value is Map) {
      return value.map((key, value) => MapEntry(key.toString(), value));
    }
    return <String, dynamic>{};
  }

  static bool _enabled(dynamic value) {
    if (value is bool) return value;
    final text = value?.toString().trim().toLowerCase();
    return text == '1' ||
        text == 'true' ||
        text == 'enabled' ||
        text == 'enable' ||
        text == 'on';
  }

  static bool? _enabledOrNull(dynamic value) {
    if (value is bool) return value;
    final text = value?.toString().trim().toLowerCase();
    if (text == null || text.isEmpty) return null;
    if (text == '1' ||
        text == 'true' ||
        text == 'enabled' ||
        text == 'enable' ||
        text == 'on') {
      return true;
    }
    if (text == '0' ||
        text == 'false' ||
        text == 'disabled' ||
        text == 'disable' ||
        text == 'off') {
      return false;
    }
    return null;
  }

  static String _s(dynamic value, {String fallback = ''}) {
    final text = value?.toString().trim() ?? '';
    return text.isEmpty ? fallback : text;
  }

  static String? _gpuDeviceType(dynamic value) {
    final text = value?.toString();
    if (text == null || text.isEmpty) return text;
    final lower = text.toLowerCase();
    if (lower == 'discrete' || lower.contains('dedicated')) return 'Discrete Graphics';
    if (lower == 'integrated' || lower.contains('internal')) return 'Integrated Graphics';
    return text;
  }
}
