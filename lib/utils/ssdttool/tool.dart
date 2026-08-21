// tool.dart
// Created by JeoJay127
//
import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

import '../log/log.dart';

class ACPITool {
  ACPITool() {
    Future.microtask(initialize);
  }

  static const String _assetDir = 'assets/tools';

  String get _platformName {
    if (Platform.isWindows) return 'windows';
    if (Platform.isMacOS) return 'macos';
    if (Platform.isLinux) return 'linux';
    throw UnsupportedError('ACPI tools only support Windows/macOS/Linux platforms');
  }

  String get _iaslName => Platform.isWindows ? 'iasl.exe' : 'iasl';

  String get _dumpToolName {
    if (Platform.isWindows) return 'acpidump.exe';
    if (Platform.isMacOS) return 'patchmatic';
    if (Platform.isLinux) return 'acpidump';
    throw UnsupportedError('ACPI tools only support Windows/macOS/Linux platforms');
  }

  String _iasl = '';
  String _acpidump = '';
  Future<void>? _initializeTask;
  bool _initialized = false;

  String get iasl => _iasl;

  String get acpidump => _acpidump;

  Future<void> initialize() async {
    if (_initialized) return;
    final runningTask = _initializeTask;
    if (runningTask != null) {
      await runningTask;
      return;
    }

    _initializeTask = checkIaslValid();
    try {
      await _initializeTask;
    } catch (e) {
      Log.error('Failed to initialize ACPI tools: $e');
      rethrow;
    } finally {
      _initializeTask = null;
    }
  }

  /// Preserved for legacy callers.
  ///
  /// Logic:
  /// 1. Supports Windows/macOS/Linux;
  /// 2. Ensures iasl / acpidump or patchmatic is copied to application support directory;
  /// 3. Updates tool paths;
  /// 4. Logs tool status.
  Future<void> checkIaslValid({
    bool replaceExisting = false,
  }) async {
    _ensureSupportedPlatform();

    if (_initialized && !replaceExisting) return;
    final runningTask = _initializeTask;
    if (runningTask != null && !replaceExisting) {
      await runningTask;
      return;
    }

    await copyACPIToolFiles(replaceExisting: replaceExisting);

    final dir = await getExecutableDir();

    _iasl = path.join(dir, _iaslName);
    _acpidump = path.join(dir, _dumpToolName);

    _logToolStatus(_iasl);
    _logToolStatus(_acpidump);
    _initialized = true;
  }

  Future<void> copyACPIToolFiles({
    bool replaceExisting = false,
  }) async {
    _ensureSupportedPlatform();

    final targetDir = await getExecutableDir();

    final results = await Future.wait([
      _copyAssetToDir(
        assetPath: '$_assetDir/$_platformName/$_iaslName',
        targetDir: targetDir,
        replaceExisting: replaceExisting,
      ),
      _copyAssetToDir(
        assetPath: '$_assetDir/$_platformName/$_dumpToolName',
        targetDir: targetDir,
        replaceExisting: replaceExisting,
      ),
    ]);

    if (results.any((success) => !success)) {
      Log.error('Failed to copy some ACPI tools. Please verify $_assetDir assets are complete.');
    }
  }

  Future<String> getExecutableDir() async {
    _ensureSupportedPlatform();

    if (Platform.isWindows) {
      final exeDir = File(Platform.resolvedExecutable).parent.path;
      final dir = path.join(exeDir, 'tools');
      await Directory(dir).create(recursive: true);
      return dir;
    }

    final supportDir = await getApplicationSupportDirectory();
    final dir = path.join(supportDir.path, 'tools', _platformName);
    await Directory(dir).create(recursive: true);
    return dir;
  }

  Future<bool> _copyAssetToDir({
    required String assetPath,
    required String targetDir,
    bool replaceExisting = false,
  }) async {
    final fileName = path.basename(assetPath);
    final targetFilePath = path.join(targetDir, fileName);
    final targetFile = File(targetFilePath);

    if (await targetFile.exists()) {
      if (!replaceExisting) {
        if (!Platform.isWindows) {
          await Process.run('chmod', ['+x', targetFilePath]);
        }
        return true;
      }

      await targetFile.delete(recursive: true);
    }

    try {
      final assetData = await rootBundle.load(assetPath);
      await targetFile.writeAsBytes(assetData.buffer.asUint8List());
      if (!Platform.isWindows) {
        await Process.run('chmod', ['+x', targetFilePath]);
      }
      return true;
    } catch (e) {
      Log.error('Failed to copy tool: $assetPath -> $targetFilePath: $e');
      return false;
    }
  }

  void _logToolStatus(String toolPath) {
    final name = path.basename(toolPath);

    if (toolPath.isNotEmpty && File(toolPath).existsSync()) {
      Log('Local tool $name is ready!');
    } else {
      Log.error('Local tool $name is not ready. Please verify $_assetDir assets are complete.');
    }
  }

  void _ensureSupportedPlatform() {
    if (!(Platform.isWindows || Platform.isMacOS || Platform.isLinux)) {
      throw UnsupportedError('ACPI tools only support Windows/macOS/Linux platforms');
    }
  }
}
