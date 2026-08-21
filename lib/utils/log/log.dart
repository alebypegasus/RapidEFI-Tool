//  log.dart
//  Created by JeoJay127
//
import 'dart:async';
import 'dart:collection';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

/// Log level
enum LogLevel { debug, info, warning, error }

/// Log operation type
enum _LogOperationType { add, clear }

/// Log operation
class _LogOperation {
  final _LogOperationType type;
  final String? logLine;
  final LogLevel? level;
  final String? message;

  _LogOperation({required this.type, this.logLine, this.level, this.message});
}

/// Log configuration
class LogConfig {
  bool enableLevelFilter;
  LogLevel minLevel;
  int maxLines; // Maximum lines kept in memory
  bool enablePrint;
  int maxFileSizeKB;
  // UI display settings
  bool includeLogTimestampForUI;
  bool includeLogLevelForUI;

  int flushIntervalMs; // File buffer flush interval
  int flushBatchSize; // File buffer batch size

  LogConfig({
    this.enableLevelFilter = false,
    this.minLevel = LogLevel.debug,
    this.maxLines = 2000,
    this.enablePrint = true,
    this.maxFileSizeKB = 1024,
    this.flushIntervalMs = 200,
    this.flushBatchSize = 20,
    this.includeLogTimestampForUI = false,
    this.includeLogLevelForUI = false,
  });

  bool isLevelAllowed(LogLevel level) {
    if (!enableLevelFilter) return true;
    return level.index >= minLevel.index;
  }
}

typedef LogChannelCreatedCallback = void Function(Log log);

/// Log manager
class Log {
  static final Map<String, Log> _channels = {};
  static const String defaultChannel = 'default';
  static final separator = Platform.pathSeparator;
  final String channel;
  final LogLevel defaultLevel;
  final LogConfig config;

  final List<String> _logs = [];
  List<String> get logs => List.unmodifiable(_logs);

  late File _logFile;
  late Future<void> _initialized;

  final Queue<_LogOperation> _operationQueue = Queue();
  bool _isProcessing = false;
  bool _disposed = false;
  // --- UI live stream ---
  final StreamController<String> _logStreamController =
      StreamController.broadcast();
  Stream<String> get logStream => _logStreamController.stream;

  // --- Global stream, all channels combined ---
  static final StreamController<String> _globalLogStreamController =
      StreamController.broadcast();
  static Stream<String> get logStreamAll => _globalLogStreamController.stream;

  /// Get/create log channel callback
  static LogChannelCreatedCallback? onChannelCreated;

  final List<String> _buffer = [];
  Timer? _flushTimer;

  static Map<String, Log> get channels => _channels;

  Log._(this.channel, this.defaultLevel, this.config) {
    _initialized = _initFile();
  }

  Future<void> dispose() async {
    if (_disposed) return;
    _disposed = true;

    _flushTimer?.cancel();
    _flushTimer = null;

    await _processQueue();
    await _flushBuffer();

    await _logStreamController.close();
    _channels.remove(channel);
  }

  /// Initialize default channel
  factory Log(
    String? message, {
    String? channel,
    LogLevel level = LogLevel.info,
    LogConfig? config,
  }) {
    return Log.width(
      message: message,
      channel: channel,
      level: level,
      config: config,
    );
  }

  factory Log.width({
    String? channel,
    LogLevel level = LogLevel.info,
    LogConfig? config,
    String? message,
  }) {
    final ch = channel ?? defaultChannel;
    if (_channels.containsKey(ch)) {
      final log = _channels[ch]!;
      if (message != null) log.add(message, level: level);
      return log;
    } else {
      final log = Log._(ch, level, config ?? LogConfig());
      _channels[ch] = log;
      onChannelCreated?.call(log);
      if (message != null) log.add(message, level: level);
      return log;
    }
  }

  /// Export logs to directory
  static Future<void> exportToDirectory({
    required String targetDirectory,
    String? channel,
    Function(String)? onSuccess,
    Function(String)? onError,
  }) async {
    final log = _channels[channel ?? defaultChannel];
    if (log == null) {
      onError?.call('Log channel does not exist: ${channel ?? defaultChannel}');
      return;
    }

    final logFile = log._logFile;
    if (await logFile.exists()) {
      try {
        final fileName = logFile.uri.pathSegments.last;
        await logFile.copy('$targetDirectory$separator$fileName');
        onSuccess?.call('Export successful! File path: $targetDirectory$separator$fileName');
      } catch (e) {
        onError?.call('Export failed! Error: $e');
      }
    } else {
      onError?.call('File does not exist! Export failed: ${logFile.path}');
    }
  }

  Future<void> _initFile() async {
    try {
      final dir = await getApplicationSupportDirectory();
      _logFile = File('${dir.path}${separator}log${separator}log_$channel.txt');
      if (!await _logFile.exists()) await _logFile.create(recursive: true);
      await _rotateLogIfNeeded();
    } catch (_) {
      _logFile = File(
        '${Directory.systemTemp.path}${separator}log_${channel}_${DateTime.now().millisecondsSinceEpoch}.txt',
      );
    }
  }

  Future<void> _rotateLogIfNeeded() async {
    if (await _logFile.exists()) {
      final length = await _logFile.length();
      if (length > config.maxFileSizeKB * 1024) {
        final ts = DateTime.now().millisecondsSinceEpoch;
        await _logFile.rename('${_logFile.path}.$ts');
        _logFile = File(_logFile.path);
        await _logFile.create();
      }
    } else {
      await _logFile.create(recursive: true);
    }
  }

  Future<void> add(String message, {LogLevel? level}) async {
    final effectiveLevel = level ?? defaultLevel;
    if (!config.isLevelAllowed(effectiveLevel)) return;

    final ts = DateTime.now().toLocal();
    final levelStr = effectiveLevel.toString().split('.').last.toUpperCase();
    final logLine = '$ts [$levelStr] $message';

    _operationQueue.add(
      _LogOperation(
        type: _LogOperationType.add,
        logLine: logLine,
        level: effectiveLevel,
        message: message,
      ),
    );
    _processQueue();
  }

  Future<void> _processQueue() async {
    if (_isProcessing || _operationQueue.isEmpty) return;
    _isProcessing = true;
    try {
      while (_operationQueue.isNotEmpty) {
        final op = _operationQueue.removeFirst();
        if (op.type == _LogOperationType.add) {
          await _performAdd(op);
        } else if (op.type == _LogOperationType.clear) {
          await _performClear();
        }
      }
    } finally {
      _isProcessing = false;
    }
  }

  Future<void> _performAdd(_LogOperation op) async {
    await _initialized;
    await _rotateLogIfNeeded();

    final logLine = op.logLine!;

    _logs.add(logLine);
    while (_logs.length > config.maxLines) {
      _logs.removeAt(0);
    }

    _logStreamController.add(logLine);
    _globalLogStreamController.add('[$channel] $logLine');

    if (config.enablePrint) debugPrint(logLine);

    _buffer.add(logLine);
    if (_buffer.length >= config.flushBatchSize) {
      await _flushBuffer();
    } else {
      _flushTimer ??= Timer(
        Duration(milliseconds: config.flushIntervalMs),
        () async {
          if (_disposed) return;
          await _flushBuffer();
        },
      );
    }
  }

  Future<void> _performClear() async {
    _logs.clear();
    _buffer.clear();
    _globalLogStreamController.add('[$channel] [CLEARED]');
    _logStreamController.add('[$channel] [CLEARED]');
    if (await _logFile.exists()) {
      await _logFile.writeAsString('');
    }
  }

  Future<void> _flushBuffer() async {
    if (_disposed || _buffer.isEmpty) return;
    final lines = '${_buffer.join('\n')}\n';
    _buffer.clear();
    await _logFile.writeAsString(lines, mode: FileMode.append);
    _flushTimer?.cancel();
    _flushTimer = null;
  }

  Future<void> _clear() async {
    _operationQueue.add(_LogOperation(type: _LogOperationType.clear));
    _processQueue();
  }

  static Future<void> info(String msg, {String? channel}) =>
      Log.width(channel: channel).add(msg, level: LogLevel.info);
  static Future<void> debug(String msg, {String? channel}) =>
      Log.width(channel: channel).add(msg, level: LogLevel.debug);
  static Future<void> warning(String msg, {String? channel}) =>
      Log.width(channel: channel).add(msg, level: LogLevel.warning);
  static Future<void> error(String msg, {String? channel}) =>
      Log.width(channel: channel).add(msg, level: LogLevel.error);

  /// Clear logs for specified channel
  static Future<void> clear({String? channel}) async {
    final log = _channels[channel ?? defaultChannel];
    if (log != null) await log._clear();
  }

  /// Clear logs for all channels
  static Future<void> clearAll() async {
    for (final log in _channels.values) {
      await log._clear();
    }
  }

  /// Shut down all log channels
  static Future<void> shutdownAll() async {
    for (final log in _channels.values) {
      await log.dispose();
    }
    // Close global log stream
    await _globalLogStreamController.close();
  }
}
