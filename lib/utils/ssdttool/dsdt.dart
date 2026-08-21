//  dsdt.dart
//  Created by JeoJay127
//
import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import '../log/log.dart';
import 'tool.dart';
import 'util.dart';
import 'package:path/path.dart' as path;
import 'run.dart';

enum AcpiDumpFailureType {
  toolMissing,
  unsupportedPlatform,
  authorizationCancelled,
  passwordRequired,
  incorrectPassword,
  emptyResult,
  processFailed,
}

class AcpiDumpException implements Exception {
  AcpiDumpException(
    this.type,
    this.message, {
    this.detail = '',
  });

  final AcpiDumpFailureType type;
  final String message;
  final String detail;

  @override
  String toString() {
    if (detail.trim().isEmpty) return message;
    return '$message: $detail';
  }
}

class DSDT {
  final ACPITool acpiTool;
  final Run r = Run();
  final Util util = Util();

  /// Whether to use local tools
  bool useLocaliAsl;

  /// Whether to use local tools
  bool useLeagcyiAsl;

  /// Allowed signature list
  final List<String> allowedSignatures = [
    "APIC",
    "DMAR",
    "FACP",
    "DSDT",
    "SSDT",
  ];

  /// Mixed list
  final List<String> mixedListing = ["DSDT", "SSDT"];

  /// ACPI table map
  Map<String, dynamic> acpiTables = {};

  /// Hex matching regular expression
  final RegExp hexMatch = RegExp(
    r"^\s*[0-9A-F]{4,}:(\s[0-9A-F]{2})+(\s+\/\/.*)?$",
  );

  /// Type matching regular expression
  final RegExp typeMatch = RegExp(
    r".*(Processor|Scope|Device|Method|Name) \(([^,\)]+).*",
  );

  DSDT({required this.useLocaliAsl, this.useLeagcyiAsl = false})
      : acpiTool = ACPITool();

  /// Get table signature
  /// [tablePath]: Table path
  /// [tableName]: Table name (optional)
  /// [data]: Data (optional)
  /// If table exists, returns first 4 bytes signature; if table does not exist or errors, returns null.
  String? tableSignature(
    String tablePath, {
    String? tableName,
    Uint8List? data,
  }) {
    // Build full table path
    final filePath = tableName != null && tableName.isNotEmpty
        ? path.join(tablePath, tableName)
        : tablePath;

    // Check if table exists
    final file = File(filePath);
    if (!file.existsSync()) {
      Log('Table does not exist: $filePath');
      return null;
    }
    if (data != null) {
      // Data provided; ensure length is at least 4 bytes for signature
      if (data.length >= 4) {
        return String.fromCharCodes(data.sublist(0, 4));
      } else {
        Log('Passed data length is less than 4 bytes: $filePath');
        return null;
      }
    }
    RandomAccessFile? openedFile;
    try {
      // Open file
      openedFile = file.openSync(mode: FileMode.read);

      // Read first 4 bytes
      final bytes = openedFile.readSync(4);
      if (bytes.length < 4) {
        Log('File content is less than 4 bytes: $filePath');
        return null;
      }

      // Check if convertible to string
      return String.fromCharCodes(bytes);
    } catch (e) {
      // Catch any exception and return null
      Log.error('Error reading signature: $e, file path: $filePath');
      return null;
    } finally {
      // Ensure file is closed
      openedFile?.closeSync();
    }
  }

  /// Count non-ASCII characters
  /// [data]: Data
  /// Returns count of non-ASCII characters
  int nonAsciiCountFunc(Uint8List data) {
    int nonAscii = 0;
    for (final byte in data) {
      if (byte >= 0x80) {
        nonAscii++;
      }
    }
    return nonAscii;
  }

  /// Check if table is valid
  /// [tablePath]: Table path
  /// [tableName]: Table name (optional)
  /// Returns true if table signature is in allowed list; otherwise false.
  /// If [checkSignature] is true, checks signature; otherwise skips check.

  bool tableIsValid(
    String tablePath, {
    String? tableName,
    bool? ensureBinary = true,
    bool checkSignature = true,
  }) {
    // Build full table path
    final filePath = tableName != null && tableName.isNotEmpty
        ? path.join(tablePath, tableName)
        : tablePath;
    // Check if file exists
    final file = File(filePath);

    if (!file.existsSync()) {
      return false;
    }
    // Placeholder variable for data
    Uint8List? data;
    if (ensureBinary != null) {
      // Ensure table is correct type - read its data
      try {
        data = file.readAsBytesSync();
      } catch (_) {
        return false;
      }
      // Ensure data was read
      if (data.isEmpty) {
        return false;
      }
      // Count non-ASCII characters
      int nonAsciiCountResult = nonAsciiCountFunc(data);
      if (ensureBinary && nonAsciiCountResult == 0) {
        // Expected binary file, but is all ASCII
        return false;
      } else if (!ensureBinary && nonAsciiCountResult > 0) {
        // Expected ASCII, but is binary
        return false;
      }
    }

    if (checkSignature) {
      // Check signature - load data now if not loaded earlier
      if (!allowedSignatures.contains(tableSignature(filePath, data: data))) {
        return false;
      }
    }
    // Table passed all checks
    return true;
  }

  /// Get table by ID
  /// [tableId]: Table ID
  Map<String, dynamic>? getTableWithId(String tableId) {
    try {
      return acpiTables.values.firstWhere(
        (v) => v['id'] == tableId,
        orElse: () => null,
      );
    } catch (e) {
      return null;
    }
  }

  /// Get table by signature
  /// [tableSig]: Signature
  Map<String, dynamic>? getTableWithSignature(String tableSig) {
    try {
      return acpiTables.values.firstWhere(
        (v) => v['signature'] == tableSig,
        orElse: () => null,
      );
    } catch (e) {
      return null;
    }
  }

  /// Get table by ID or signature
  /// [tableIdOrSig]: ID or signature
  Map<String, dynamic>? getTable(String tableIdOrSig) {
    try {
      return acpiTables.values.firstWhere(
        (v) => v['id'] == tableIdOrSig || v['signature'] == tableIdOrSig,
        orElse: () => null,
      );
    } catch (e) {
      return null;
    }
  }

  /// Get DSDT table
  Map<String, dynamic>? getDsdt() {
    return getTableWithSignature("DSDT");
  }

  /// Find previous set of hex numbers before index
  /// Returns tuple of (text, startIndex, endIndex)
  /// [index]: Starting index
  /// [table]: ACPI table (optional)
  (String, int, int) findPreviousHex({
    int index = 0,
    Map<String, dynamic>? table,
  }) {
    table ??= getDsdt();
    if (table == null) return ("", -1, -1);

    final lines = table['lines'];
    if (lines is! List || lines.isEmpty || index < 0 || index >= lines.length) {
      return ("", -1, -1);
    }

    final reversedLines = lines.sublist(0, index + 1).reversed.toList();

    bool seenNonHex = false;

    for (int i = 0; i < reversedLines.length; i++) {
      final line = reversedLines[i];

      if (!seenNonHex) {
        if (!isHex(line)) {
          seenNonHex = true;
        }
        continue;
      }

      if (isHex(line)) {
        final endIndex = index - i;
        final (hexText, startIndex) = getHexEndingAt(endIndex, table: table);
        return (hexText, startIndex, endIndex);
      }
    }

    return ("", -1, -1);
  }

  /// Find next set of hex numbers after index
  /// Returns tuple of (text, startIndex, endIndex)
  /// [index]: Starting index
  /// [table]: Provided ACPI table (optional)
  (String, int, int) findNextHex({int index = 0, Map<String, dynamic>? table}) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    if (table == null) return ("", -1, -1);

    int startIndex = -1;
    int endIndex = -1;
    bool oldHex = true;

    var lines = table['lines'] ?? [];
    for (int i = index; i < lines.length; i++) {
      String line = lines[i];

      if (oldHex) {
        if (!isHex(line)) {
          oldHex = false;
        }
        continue;
      }

      if (isHex(line)) {
        startIndex = i;
        final result = getHexStartingAt(startIndex, table: table);
        final hexText = result.$1;
        endIndex = result.$2;
        return (hexText, startIndex, endIndex);
      }
    }
    return ("", startIndex, endIndex);
  }

  /// Check if data is hex
  bool isHex(String line) {
    return hexMatch.hasMatch(line.trim());
  }

  /// Get hex string starting from specified index and return ending index
  /// [startIndex]: Starting index
  /// [table]: Provided ACPI table (optional)
  (String, int) getHexStartingAt(
    int startIndex, {
    Map<String, dynamic>? table,
  }) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    if (table == null) {
      return ("", -1);
    }

    String hexText = "";
    int index = -1;

    List<String> lines = List<String>.from(table["lines"] ?? []);
    for (int i = 0; i < lines.length; i++) {
      String x = lines[startIndex + i];
      if (!isHex(x)) {
        break;
      }
      hexText += util.getHex(x);
      index = startIndex + i;
    }

    return (hexText, index);
  }

  /// Get hex string ending at specified index and return starting index
  /// [startIndex]: Ending index
  /// [table]: Provided ACPI table (optional)
  (String, int) getHexEndingAt(int startIndex, {Map<String, dynamic>? table}) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    if (table == null) {
      return ("", -1);
    }

    String hexText = "";
    int index = -1;

    // Iterate through lines in reverse order to find hex string
    List<String> lines = List<String>.from(table["lines"]);
    for (int i = 0; i < lines.length; i++) {
      String x = lines[startIndex - i];
      if (!isHex(x)) {
        break;
      }
      hexText = util.getHex(x) + hexText;
      index = startIndex - i;
    }

    return (hexText, index);
  }

  /// Check if file exists and size > 0 (non-empty)
  /// [folderPath]: Directory path
  /// [fileName]: File name
  bool exists(String folderPath, String fileName) {
    // If folderPath is not a directory
    if (!Directory(folderPath).existsSync()) {
      folderPath = Directory(folderPath).parent.path;
    }
    // Join path
    final checkPath = path.join(folderPath, fileName);
    // Check if file exists and is not empty
    final file = File(checkPath);
    if (file.existsSync() && file.lengthSync() > 0) {
      return true;
    }

    return false;
  }

  /// Load ACPI tables
  /// [tablePath]: Table path
  /// [exclude]: Excluded table names
  Future<(Map, List)> loadTable(
    String tablePath, {
    List<String> exclude = const [],
  }) async {
    String cwd = Directory.current.path;
    Directory? temp;
    Map<String, Map<String, dynamic>> targetFiles = {};
    final excludeSet = exclude.map((e) => e.toLowerCase()).toSet();
    List<String> failed = [];
    try {
      List<String> validFiles = [];

      // Check if path is file or directory
      if (Directory(tablePath).existsSync()) {
        // If directory, get all valid files
        var files = Directory(tablePath).listSync().toList();
        validFiles = files
            .where((item) {
              final name = path.basename(item.path);
              if (excludeSet.contains(name.toLowerCase())) {
                Log("Skipping: $name, already disassembled previously!");
                return false;
              }
              return tableIsValid(tablePath, tableName: name);
            })
            .map((item) => item.path)
            .toList();
      } else if (File(tablePath).existsSync()) {
        final name = path.basename(tablePath);
        if (excludeSet.contains(name.toLowerCase())) {
          Log.warning("Target file in exclusion list: $name");
        } else if (tableIsValid(tablePath, checkSignature: false)) {
          validFiles = [tablePath];
        }
      } else {
        Log.warning("Invalid path: $tablePath");
        throw FileSystemException("Invalid path", tablePath);
      }

      if (validFiles.isEmpty && exclude.isEmpty) {
        Log.warning("No valid .aml or .dat files found in $tablePath!");
        return ({}, failed);
      }

      // Create temporary directory for disassembly
      temp = Directory.systemTemp.createTempSync();
      // Check if directory exists
      if (!temp.existsSync()) {
        // Create directory
        temp.createSync(recursive: true);
        debugPrint('Temporary directory created at: ${temp.path}');
      } else {
        debugPrint('Temporary directory already exists at: ${temp.path}');
      }

      for (var file in validFiles) {
        await File(file).copy(path.join(temp.path, path.basename(file)));
      }

      // Process valid files
      var tempDir = Directory(temp.path);
      var listDir = tempDir.listSync().toList();
      // If file, filter others
      if (File(tablePath).existsSync()) {
        listDir = listDir
            .where((e) => path.basename(e.path) == path.basename(tablePath))
            .toList();
      }

      for (var file in listDir) {
        String fileName = file.uri.pathSegments.last;
        if (listDir.length > 1 &&
            !tableIsValid(temp.path, tableName: fileName)) {
          continue; // If multiple files, skip invalid
        }
        var nameExt = fileName.split('.');
        if (nameExt.isNotEmpty &&
            (nameExt.last.toLowerCase() == 'asl' ||
                nameExt.last.toLowerCase() == 'dsl')) {
          continue; // Skip already disassembled files
        }

        targetFiles[fileName] = {
          'assembledName': fileName,
          'disassembledName':
              '${fileName.split('.').sublist(0, fileName.split('.').length - 1).join('.')}.dsl',
        };
      }

      if (targetFiles.isEmpty && exclude.isEmpty) {
        throw FileSystemException("No valid .aml or .dat files found", tablePath);
      }

      /// Change to temporary directory to avoid deep path issues
      Directory.current = temp;
      List<String> dsdtOrSsdt = targetFiles.keys
          .where(
            (x) => mixedListing.contains(
              tableSignature(temp?.path ?? '', tableName: x),
            ),
          )
          .map((e) => e)
          .toList();
      List<String> otherTables = targetFiles.keys
          .where((x) => !dsdtOrSsdt.any((path) => path.endsWith(x)))
          .map((e) => e)
          .toList();

      // Disassemble DSDT and SSDT tables
      if (dsdtOrSsdt.isNotEmpty) {
        if (dsdtOrSsdt.length == 1) {
          Log('Disassembling ${dsdtOrSsdt.first} file...');
        } else {
          if (excludeSet.contains('dsdt.aml')) {
            Log('Batch disassembling SSDT.aml files...');
          } else {
            Log('Batch disassembling DSDT.aml and SSDT.aml files...');
          }
        }
        List<String> failedTemp = [];
        List<String> args = [acpiTool.iasl, "-da", "-dl", "-l", ...dsdtOrSsdt];
        var result = await r.run([
          {"args": args},
        ]);

        if (result.isNotEmpty && result.last != '0') {
          // If first disassembly fails, retry once without -da flag
          args = [acpiTool.iasl, "-dl", "-l", ...dsdtOrSsdt];
          final res = await r.run([
            {"args": args},
          ]);
          if (res.isNotEmpty && res.last != '0') {
            // If second disassembly fails, log error message
            for (var e in dsdtOrSsdt) {
              if (!exists(
                temp.path,
                targetFiles[path.basename(e)]!['disassembledName'],
              )) {
                Log.warning('=> ${path.basename(e)} disassembly failed!');
              } else {
                Log('=> ${path.basename(e)} disassembled successfully!');
              }
            }
            Log('');
          } else {
            for (var e in dsdtOrSsdt) {
              Log('=> ${path.basename(e)} disassembled successfully!');
            }
            Log('');
          }
        } else {
          for (var e in dsdtOrSsdt) {
            Log('=> ${path.basename(e)} disassembled successfully!');
          }
        }

        // Get list of failed disassemblies
        for (var e in dsdtOrSsdt) {
          if (!exists(
            temp.path,
            targetFiles[path.basename(e)]!['disassembledName'],
          )) {
            failedTemp.add(e);
          }
        }

        // Disassemble failed .aml files individually
        if (failedTemp.isNotEmpty) {
          Log('Individually disassembling failed .aml files...');
          for (var e in failedTemp) {
            args = [acpiTool.iasl, "-dl", "-l", e];
            final res = await r.run([
              {"args": args},
            ]);
            if (res.isNotEmpty && res.last == '0') {
              Log('=> $e disassembled successfully!');
            } else {
              Log.error('=> $e disassembly failed!');
            }
            if (!exists(
              temp.path,
              targetFiles[path.basename(e)]!['disassembledName'],
            )) {
              failed.add(e);
            }
          }
          Log('');
        }
      }

      // Disassemble other .aml files (e.g. DMAR, APIC)
      if (otherTables.isNotEmpty) {
        Log('Disassembling other .aml files...');
        List<String> args = [acpiTool.iasl, "-dl", "-l", ...otherTables];
        final res = await r.run([
          {"args": args},
        ]);

        if (res.last == '0') {
          for (var e in otherTables) {
            Log('=>  ${path.basename(e)} disassembled successfully!');
          }
        }
        // Get list of failed disassemblies
        for (var e in otherTables) {
          if (!exists(
            temp.path,
            targetFiles[path.basename(e)]!['disassembledName'],
          )) {
            failed.add(e);
          }
        }
      }

      if (failed.length == targetFiles.length && exclude.isEmpty) {
        Log.error("Disassembly failed: ${failed.toList()}");
      }

      List<String> toRemove = [];
      // Process disassembled files
      for (var file in targetFiles.keys) {
        file = path.basename(file);
        String disassembledPath = path.join(
          temp.path,
          targetFiles[file]!['disassembledName'],
        );

        if (!exists(temp.path, disassembledPath)) {
          toRemove.add(file);
          continue;
        }

        String tableContent = await File(disassembledPath).readAsString();
        targetFiles[file]!['table'] = tableContent;
        // Strip compiler header info from top of file
        if (targetFiles[file]!["table"]!.startsWith("/*")) {
          final contentParts = targetFiles[file]!["table"]!.split("*/");
          targetFiles[file]!["table"] =
              contentParts.sublist(1).join("*/").trim();
        }

        // Check for "Table Header:" or "Raw Table Data: Length" and strip content following them
        for (final header in ["\nTable Header:", "\nRaw Table Data: Length"]) {
          if (targetFiles[file]!["table"]!.contains(header)) {
            final contentParts = targetFiles[file]!["table"]!.split(header);
            targetFiles[file]!["table"] = contentParts
                .sublist(0, contentParts.length - 1)
                .join(header)
                .trim();
            break; // Exit loop on first match
          }
        }

        // Split table data by lines
        targetFiles[file]!["lines"] = targetFiles[file]!["table"]!.split('\n');

        // Call helper methods to process scopes and paths
        targetFiles[file]!["scopes"] = getScopes(table: targetFiles[file]!);
        targetFiles[file]!["paths"] = getPaths(table: targetFiles[file]!);

        String filePath = path.join(temp.path, file);
        final tableBytes = await File(filePath).readAsBytes();
        targetFiles[file]!["raw"] = tableBytes;
        // Parse table header and extract info
        targetFiles[file]!["signature"] = utf8.decode(tableBytes.sublist(0, 4));
        targetFiles[file]!["revision"] = tableBytes[8];
        targetFiles[file]!["oem"] = utf8.decode(
          tableBytes.sublist(10, 16).where((byte) => byte != 0).toList(),
        );
        targetFiles[file]!["id"] = utf8.decode(
          tableBytes.sublist(16, 24).where((byte) => byte != 0).toList(),
        );
        targetFiles[file]!["oem_revision"] = util.littleEndianToInt(
          tableBytes.sublist(24, 28),
        );
        targetFiles[file]!["length"] = tableBytes.length;

        /// If DSDT or SSDT, process hex data
        if (mixedListing.contains(targetFiles[file]!["signature"])) {
          // Construct last part of hex data
          final lines = targetFiles[file]!["lines"] as List<String>;
          final lastHex = lines.reversed.firstWhere(
            (line) => isHex(line),
            orElse: () => '',
          );

          int nextAddr = 0;
          Uint8List remaining = Uint8List(0);
          if (lastHex.isNotEmpty) {
            // Get address and hex bytes
            final addr = int.parse(lastHex.split(":")[0].trim(), radix: 16);
            final hexs = lastHex.split(":")[1].split("//")[0].trim();
            nextAddr = addr + hexs.split(" ").length;

            // Get raw data at end
            final hexb = util.getHexBytes(hexs.replaceAll(" ", ""));
            final raw = targetFiles[file]!["raw"];
            // Take last data segment
            int lastIndex = util.indexOfSubBytes(raw, hexb, reverse: true);
            if (lastIndex != -1 && lastIndex + hexb.length < raw.length) {
              remaining = Uint8List.fromList(
                raw.sublist(lastIndex + hexb.length),
              );
            } else {
              remaining = Uint8List(0);
            }
          }
          // Process remaining data in chunks
          for (var i = 0; i < remaining.length; i += 16) {
            final chunk = remaining.sublist(
              i,
              i + 16 > remaining.length ? remaining.length : i + 16,
            );
            final hexString = chunk
                .map((b) => b.toRadixString(16).padLeft(2, '0').toUpperCase())
                .join(" ");

            final line =
                "   ${nextAddr.toRadixString(16).toUpperCase().padLeft(4, '0')}: $hexString";
            nextAddr += chunk.length;

            // Add to target file data
            lines.add(line);
            targetFiles[file]!["table"] += "\n$line";
          }
        }
      }
      // Add or update new table data into acpiTables
      for (var table in targetFiles.keys) {
        acpiTables[table] = targetFiles[table]!;
      }
      // Remove files that were not disassembled
      for (var file in toRemove) {
        targetFiles.remove(file);
      }
      // Return loaded table data
      return (targetFiles, failed);
    } catch (e) {
      if (e.toString().contains('Failed to decode data using encoding')) {
        Log.warning('Warning: Avoid special characters in paths to prevent unexpected issues!');
      } else {
        Log.error('Error occurred: ${e.toString()}');
      }

      return ({}, failed);
    } finally {
      Directory.current = cwd;
      // Clean up temporary folder
      if (temp != null) {
        Directory(temp.path).deleteSync(recursive: true);
      }
    }
  }

  Future<String?> _getDumpToolPath({bool useLocaliAsl = false}) async {
    final String dir = await acpiTool.getExecutableDir();
    final fileName = Platform.isWindows
        ? 'acpidump.exe'
        : Platform.isLinux
            ? 'acpidump'
            : Platform.isMacOS
                ? 'patchmatic'
                : null;

    if (fileName == null) return null;
    return path.join(dir, fileName);
  }

  Future<bool> checkDumpTool({bool useLocaliAsl = false}) async {
    final exePath = await _getDumpToolPath(useLocaliAsl: useLocaliAsl);
    return exePath != null && File(exePath).existsSync();
  }

  /// Dump ACPI tables
  /// [filePath]: Path
  /// [disassemble]: Whether to disassemble
  /// [onRequestSudoPassword]
  Future<String?> dumpTables(
    String filePath, {
    bool disassemble = false,
    Future<String?> Function()? onRequestSudoPassword,
    bool throwOnFailure = false,
  }) async {
    String? fail(
      AcpiDumpFailureType type,
      String message, {
      String detail = '',
      bool warning = true,
    }) {
      final logMessage = detail.trim().isEmpty ? message : '$message: $detail';
      if (warning) {
        Log.warning(logMessage);
      } else {
        Log.error(logMessage);
      }
      if (throwOnFailure) {
        throw AcpiDumpException(type, message, detail: detail);
      }
      return null;
    }

    bool isIncorrectSudoPassword(String stderr) {
      final lower = stderr.toLowerCase();
      return lower.contains('sorry, try again') ||
          lower.contains('incorrect password') ||
          lower.contains('authentication failure') ||
          lower.contains('try again.');
    }

    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      await acpiTool.initialize();
    }
    final exePath = await _getDumpToolPath(useLocaliAsl: useLocaliAsl);
    if (exePath == null || !File(exePath).existsSync()) {
      return fail(
        AcpiDumpFailureType.toolMissing,
        "ACPI dump tool is not ready",
      );
    }

    Log("Dumping ACPI tables...");
    String outputPath = await util.checkPath(
      filePath: filePath,
      onError: (error) => Log.error(error),
    );

    if (!(Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
      return fail(
        AcpiDumpFailureType.unsupportedPlatform,
        "Current platform does not support dumping ACPI tables",
        warning: false,
      );
    }

    Future<ProcessResult> runDump({String? sudoPassword}) async {
      if (Platform.isMacOS) {
        return await Process.run(
            exePath,
            [
              '-extractall',
              '-raw',
            ],
            workingDirectory: outputPath);
      } else if (Platform.isLinux && sudoPassword != null) {
        final process = await Process.start(
          'sudo',
          ['-S', exePath, '-b'],
          workingDirectory: outputPath,
          runInShell: true,
        );
        process.stdin.writeln(sudoPassword);
        await process.stdin.flush();
        await process.stdin.close();

        final stdoutData =
            await process.stdout.transform(SystemEncoding().decoder).join();
        final stderrData =
            await process.stderr.transform(SystemEncoding().decoder).join();
        final exitCode = await process.exitCode;

        return ProcessResult(process.pid, exitCode, stdoutData, stderrData);
      } else {
        return await Process.run(exePath, ['-b'], workingDirectory: outputPath);
      }
    }

    String? sudoPassword;
    if (Platform.isLinux && onRequestSudoPassword != null) {
      Log("Waiting for sudo authorization...");
      sudoPassword = await onRequestSudoPassword();
      if (sudoPassword == null) {
        return fail(
          AcpiDumpFailureType.authorizationCancelled,
          "Administrator authorization cancelled",
        );
      }
      if (sudoPassword.trim().isEmpty) {
        return fail(
          AcpiDumpFailureType.passwordRequired,
          "No administrator password entered",
        );
      }
    }
    final result = await runDump(sudoPassword: sudoPassword);

    if (result.exitCode != 0) {
      final stderr = result.stderr.toString();
      if (Platform.isLinux && isIncorrectSudoPassword(stderr)) {
        return fail(
          AcpiDumpFailureType.incorrectPassword,
          "Incorrect administrator password",
          detail: stderr,
        );
      }
      return fail(
        AcpiDumpFailureType.processFailed,
        "ACPI table dump process failed",
        detail: stderr,
        warning: false,
      );
    }

    bool hasTable = Directory(outputPath).listSync().any(
          (file) =>
              file.path.toLowerCase().endsWith(".aml") ||
              file.path.toLowerCase().endsWith(".dat"),
        );
    if (!hasTable) {
      return fail(
        AcpiDumpFailureType.emptyResult,
        "Extracted ACPI tables empty or platform unsupported",
      );
    }

    if (!Directory(
      outputPath,
    ).listSync().any((file) => file.path.toLowerCase().contains("dsdt."))) {
      Log.warning("=> DSDT not found, dumping by signature…");
      final dsdtResult = await Process.run(
          exePath,
          [
            '-b',
            '-n',
            'DSDT',
          ],
          workingDirectory: outputPath);
      if (dsdtResult.exitCode != 0) {
        return fail(
          AcpiDumpFailureType.processFailed,
          "DSDT table dump failed",
          detail: dsdtResult.stderr.toString(),
          warning: false,
        );
      }
    }

    Log("Updating table names…");
    for (var entity in Directory(outputPath).listSync()) {
      if (entity is File) {
        String newName = entity.uri.pathSegments.last
            .toUpperCase()
            .replaceAll(".DAT", ".aml")
            .replaceAll(".AML", ".aml");
        if (newName != entity.uri.pathSegments.last) {
          try {
            entity.renameSync(path.join(outputPath, newName));
          } catch (e) {
            Log.error("=> Rename failed: $e");
          }
        }
      }
    }

    Log("ACPI tables dumped successfully!");
    if (disassemble) {
      await loadTable(outputPath);
    }

    return outputPath;
  }

  /// Get unique padding string
  /// [currentHex]: Current hex line content
  /// [index]: Current line index
  /// [direction]: Search direction (true=forward, false=backward, null=bidirectional)
  /// [instance]: Instance index (optional)
  /// [table]: ACPI table (optional)
  (String, String) getUniquePad({
    required String currentHex,
    required int index,
    bool? direction,
    int instance = 0,
    Map<String, dynamic>? table,
  }) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    if (table == null) {
      throw Exception("No valid ACPI table provided!");
    }

    int startIndex = index;
    var result = getHexStartingAt(index, table: table);
    String line = result.$1;
    int lastIndex = result.$2;

    if (lastIndex == -1) {
      throw Exception("No hex data found starting at index $index!");
    }
    String firstLine = line;

    /// Assume currentHex has at least 1 byte at index;
    /// load additional data as required.
    while (true) {
      if (line.contains(currentHex) ||
          line.length >= firstLine.length + currentHex.length) {
        break; // Upper limit reached
      }
      var newResult = findNextHex(index: lastIndex, table: table);
      String newLine = newResult.$1;
      lastIndex = newResult.$2;
      if (lastIndex == -1) {
        throw Exception("Hex data to locate was not found!");
      }
      line += newLine;
    }

    if (!line.contains(currentHex)) {
      throw Exception("$currentHex not found in range $startIndex-$lastIndex!");
    }

    String padl = "";
    String padr = "";
    List<String> parts = line.split(currentHex);
    if (instance >= parts.length - 1) {
      throw Exception("Instance $instance out of range!");
    }

    String linel = parts.sublist(0, instance + 1).join(currentHex);
    String liner = parts.sublist(instance + 1).join(currentHex);

    while (true) {
      // Check if hex string is unique
      var checkBytes = util.getHexBytes(padl + currentHex + padr);
      if (util.containsSublist(table["raw"], checkBytes, 1)) {
        break;
      }

      if (direction == true ||
          (direction == null && padr.length <= padl.length)) {
        // Check forward bytes
        if (liner.isEmpty) {
          // Need more data
          var nextResult = findNextHex(index: lastIndex, table: table);
          liner = nextResult.$1;
          lastIndex = nextResult.$3;
          if (lastIndex == -1) {
            throw Exception("Hex data to locate was not found!");
          }
        }
        padr += liner.substring(0, 2);
        liner = liner.substring(2);
        continue;
      }

      if (direction == false ||
          (direction == null && padl.length <= padr.length)) {
        // Check backward bytes
        if (linel.isEmpty) {
          // Need more data
          var prevResult = findPreviousHex(index: startIndex, table: table);
          linel = prevResult.$1;
          startIndex = prevResult.$2;
          var endIndex = prevResult.$3;
          if (endIndex == -1) {
            throw Exception("Hex data to locate was not found!");
          }
        }
        padl = linel.substring(linel.length - 2) + padl;
        linel = linel.substring(0, linel.length - 2);
        continue;
      }
      break;
    }

    return (padl, padr);
  }

  /// Get shortest unique padding identifier (Pad) to uniquely locate object in ACPI table
  /// [currentHex]: Current hex line content
  /// [index]: Current line index
  /// [instance]: Instance index (optional)
  /// [table]: ACPI table (optional)
  (String, String) getShortestUniquePad({
    required String currentHex,
    required int index,
    int instance = 0,
    Map<String, dynamic>? table,
  }) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    // No valid table, return null
    if (table == null) {
      return ("", "");
    }

    (String, String)? leftPad;
    (String, String)? rightPad;
    (String, String)? midPad;

    try {
      // Try getting unique Pad scanned from left
      leftPad = getUniquePad(
        currentHex: currentHex,
        index: index,
        direction: false,
        instance: instance,
        table: table,
      );
    } catch (e) {
      leftPad = null;
    }
    try {
      // Try getting unique Pad scanned from right
      rightPad = getUniquePad(
        currentHex: currentHex,
        index: index,
        direction: true,
        instance: instance,
        table: table,
      );
    } catch (e) {
      rightPad = null;
    }
    try {
      // Try getting unique Pad scanned from middle
      midPad = getUniquePad(
        currentHex: currentHex,
        index: index,
        direction: null,
        instance: instance,
        table: table,
      );
    } catch (e) {
      midPad = null;
    }
    // If all directions fail, throw exception
    if (leftPad == null && rightPad == null && midPad == null) {
      throw Exception("No unique pad identifier found!");
    }

    // At least one direction succeeded
    // Compare lengths and select shortest unique Pad
    (String, String)? minPad;
    for (var x in [leftPad, rightPad, midPad]) {
      if (x == null) continue; // Skip invalid items
      if (minPad == null ||
          (x.$1 + x.$2).length < (minPad.$1 + minPad.$2).length) {
        minPad = x;
      }
    }

    return minPad ?? ("", "");
  }

  /// Get full scope of a device (all lines within device body)
  /// [devicePath]: Device path, e.g. '_SB.PC00.XHCI' or simple name 'XHCI'
  /// [table]: ACPI table (optional)
  /// [stripComments]: Whether to strip comments (default true)
  List<String> getScopeOfDevice({
    required String devicePath,
    Map<String, dynamic>? table,
    bool stripComments = true,
  }) {
    table ??= getDsdt();
    if (table?["lines"] == null) {
      Log("=> getScopeOfDevice: Invalid table parameter");
      return <String>[];
    }

    final List<String> lines = (table?["lines"] as List).cast<String>();
    final String deviceName = devicePath.split('.').last;
    final RegExp deviceLineRegex = RegExp(
      r'^\s*Device\s*\(\s*' + RegExp.escape(deviceName) + r'\s*\)',
      caseSensitive: false,
    );

    // 1) If full path (contains dots), match more precisely using _ADR / _HID / _UID definitions
    int? foundIndex;

    if (devicePath.contains('.')) {
      try {
        // Prefer lookup via existing path indices
        final adrPaths = getPathOfType(
          objType: "Name",
          obj: "_ADR",
          table: table,
        );
        for (final p in adrPaths) {
          final path = p[0] as String;
          if (path.toLowerCase().startsWith('${devicePath.toLowerCase()}.')) {
            continue;
          }

          final parent = path.substring(0, path.length - 4);
          if (parent.toLowerCase() == devicePath.toLowerCase()) {
            // Use _ADR line as anchor, backtrack upwards to find Device (...) line
            final adrLineIndex = p[1] as int;
            // Backtrack 0..20 lines looking for Device (NAME)
            for (int i = adrLineIndex; i >= 0 && i >= adrLineIndex - 40; i--) {
              if (deviceLineRegex.hasMatch(lines[i])) {
                foundIndex = i;
                break;
              }
            }
            if (foundIndex != null) break;
          }
        }
      } catch (_) {
        // Ignore error, use fallback
      }
    }

    // 2) If not located above, search for Device (<NAME>) across table
    if (foundIndex == null) {
      for (int i = 0; i < lines.length; i++) {
        if (deviceLineRegex.hasMatch(lines[i])) {
          // Check if Device scope contains _ADR or matching Name to reduce false positives
          // Extract scope first
          try {
            final scopeLines = getScope(
              startingIndex: i,
              stripComments: stripComments,
              table: table,
            );
            final scopeText = scopeLines.join("\n");
            // If full path, require scope to contain identifier matching last path segment
            if (devicePath.contains('.') == false ||
                scopeText.toLowerCase().contains(deviceName.toLowerCase()) ||
                scopeText.toLowerCase().contains("_adr")) {
              foundIndex = i;
              break;
            } else {
              // If full path, check for matching _ADR address line in scope
              if (devicePath.contains('.')) {
                // Check if scope contains devicePath clues
                // Skip complex validation, scope still usable
                foundIndex = i;
                break;
              }
            }
          } catch (_) {
            // On error, accept line as candidate
            foundIndex = i;
            break;
          }
        }
      }
    }

    if (foundIndex == null) {
      Log("=> Device ($deviceName) definition not found in table (devicePath=$devicePath)");
      return <String>[];
    }

    // 3) Call d.getScope to extract full scope
    try {
      final scopeLines = getScope(
        startingIndex: foundIndex,
        stripComments: stripComments,
        table: table,
      );
      if (scopeLines.isEmpty) {
        Log("=> Found Device ($deviceName) line (index=$foundIndex), but failed to extract Scope");
        return <String>[];
      }

      // Ensure returned scope belongs to expected device
      if (devicePath.contains('.')) {
        final joined = scopeLines.join("\n").toLowerCase();
        // Return scope even if ADR/HID clues are missing, for compatibility
        if (!joined.contains(deviceName.toLowerCase())) {
          Log.warning(
            "=> Extracted scope does not seem to contain device name $deviceName (devicePath=$devicePath), returning content anyway.",
          );
        }
      }

      return scopeLines;
    } catch (e) {
      Log.error("getScopeOfDevice: Error extracting scope: $e");
      return <String>[];
    }
  }

  /// Get all device lists
  /// [search]: Search string
  /// [types]: Device type list
  /// [stripComments]: Whether to strip comments
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getDevices({
    String? search,
    List<String> types = const ["Device (", "Scope ("],
    bool stripComments = false,
    Map<String, dynamic>? table,
  }) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    // If table or search is empty, return empty list
    if (table == null || search == null) return [];

    List<List<dynamic>> devices = [];
    String? lastDevice;
    int deviceIndex = 0;

    // Get lines from table
    List<String> lines = List<String>.from(table["lines"] ?? []);

    for (int index = 0; index < lines.length; index++) {
      String line = lines[index];

      // If hex string, skip
      if (isHex(line)) {
        continue;
      }

      // If comments should be stripped, call getLine
      if (stripComments) {
        line = util.getLine(line);
      }

      // If line contains any specified type, update lastDevice and deviceIndex
      if (types.any((type) => line.contains(type))) {
        lastDevice = line;
        deviceIndex = index;
      }

      // If line contains search string, add to devices list
      if (line.contains(search)) {
        devices.add([lastDevice, deviceIndex, index]);
      }
    }

    return devices;
  }

  /// Get scope starting from specified index
  /// [startingIndex]: Starting index
  /// [addHex]: Whether to add hex string
  /// [stripComments]: Whether to strip comments
  /// [table]: ACPI table (optional)
  List<String> getScope({
    int startingIndex = 0,
    bool addHex = false,
    bool stripComments = false,
    Map<String, dynamic>? table,
  }) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    // If table is empty, return empty list
    if (table == null) return [];

    List<String> scope = [];
    List<String> lines = List<String>.from(
      table["lines"] ?? [],
    ); // Get lines from table
    int? brackets;

    for (int i = startingIndex; i < lines.length; i++) {
      String line = lines[i];

      // If hex string
      if (isHex(line)) {
        if (addHex) {
          scope.add(line);
        }
        continue;
      }

      // If stripping comments
      if (stripComments) {
        line = util.getLine(line);
      }

      // Add current line to scope
      scope.add(line);

      // Count brackets to track scope level
      if (brackets == null) {
        if (line.contains("{")) {
          brackets = line.split("{").length - 1;
        }
        continue;
      }

      brackets =
          brackets + line.split("{").length - 1 - line.split("}").length + 1;

      // If bracket count <= 0, scope has ended
      if (brackets <= 0) {
        return scope;
      }
    }

    return scope;
  }

  /// Get all scope lists
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getScopes({Map<String, dynamic>? table}) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    if (table == null) return [];

    List<List<dynamic>> scopes = [];
    // Get lines from table
    List<String> lines = List<String>.from(table["lines"] ?? []);

    for (int index = 0; index < lines.length; index++) {
      String line = lines[index];

      // If hex string, skip
      if (isHex(line)) continue;

      // Check if line contains target string
      if (line.contains("Processor (") ||
          line.contains("Scope (") ||
          line.contains("Device (") ||
          line.contains("Method (") ||
          line.contains("Name (")) {
        // Add matching line and its index
        scopes.add([line, index]);
      }
    }

    return scopes;
  }

  /// Get all path information in ACPI table (positions and types for Device, Processor, Method, etc.)
  /// group("name") = match.group(2)
  /// group("type") = match.group(1)
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getPaths({Map<String, dynamic>? table}) {
    // If table not provided, get DSDT or unique table
    table ??= getDsdt();
    if (table == null) return [];

    List<List<dynamic>> pathList = []; // Final return path list
    List<List<dynamic>> path0 = []; // Currently processing path list
    int brackets = 0; // Track brace level

    var lines = table['lines'] ?? [];
    for (int i = 0; i < lines.length; i++) {
      String line = lines[i];

      if (isHex(line)) {
        // Skip hex content
        continue;
      }

      line = util.getLine(line);
      // Update brace nesting level ({ +1, } -1)
      brackets += line.split("{").length - line.split("}").length;

      while (path0.isNotEmpty) {
        // Remove paths if nesting level is higher or equal to new level
        if (path0.last.last >= brackets) {
          path0.removeLast();
        } else {
          break;
        }
      }

      var match = typeMatch.firstMatch(line);
      if (match != null) {
        // Add new path entry and save full path as needed
        path0.add([match.group(2), brackets]);

        if (match.group(1) == "Scope") {
          // Scope type only represents scope, not included in path list
          continue;
        }

        // Build full path (excluding Scope and fully qualified names)
        List<String> path = [];
        for (var p in path0.reversed) {
          path.add(p[0]);
          if (p[0] == "_SB" ||
              p[0] == "_SB_" ||
              p[0] == "_PR" ||
              p[0] == "_PR_" ||
              p[0].startsWith("\\") ||
              p[0].startsWith("_SB.") ||
              p[0].startsWith("_SB_.") ||
              p[0].startsWith("_PR.") ||
              p[0].startsWith("_PR_.")) {
            // If path is fully qualified, stop upward concatenation
            break;
          }
        }

        path = path.reversed.toList();
        // Normalize path format, remove duplicate leading backslashes
        if (path.isNotEmpty && path[0] == "\\") path.removeAt(0);

        // Handle ACPI caret (^) upward level traversal
        if (path.any((x) => x.contains("^"))) {
          List<String> newPath = [];
          for (var x in path) {
            int caretCount = x.split("^").length - 1;
            if (caretCount > 0) {
              // Remove corresponding upper path levels
              final start = (newPath.length - caretCount).clamp(
                0,
                newPath.length,
              );
              newPath.removeRange(start, newPath.length);
            }
            // Add path element with carets stripped
            newPath.add(x.replaceAll("^", ""));
          }
          path = newPath;
        }

        if (path.isEmpty) continue;
        // Construct final path string
        String pathStr = path.join(".");
        pathStr = pathStr[0] != "\\" ? "\\$pathStr" : pathStr;
        // Add to final result: [pathString, lineNumber, type]
        pathList.add([pathStr, i, match.group(1)]);
      }
    }

    // Sort by path string and return
    pathList.sort((a, b) => a[0].compareTo(b[0]));
    return pathList;
  }

  /// Get Device type paths
  /// [obj]: Device name
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getDevicePaths({
    String obj = "HPET",
    Map<String, dynamic>? table,
  }) {
    return getPathOfType(objType: "Device", obj: obj, table: table);
  }

  /// Get Method type paths
  /// [obj]: Method name
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getMethodPaths({
    String obj = "_STA",
    Map<String, dynamic>? table,
  }) {
    return getPathOfType(objType: "Method", obj: obj, table: table);
  }

  /// Get Name type paths
  /// [obj]: Name
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getNamePaths({
    String obj = "CPU0",
    Map<String, dynamic>? table,
  }) {
    return getPathOfType(objType: "Name", obj: obj, table: table);
  }

  /// Get Processor type paths
  /// [objType]: Object type
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getProcessorPaths({
    String objType = "Processor",
    Map<String, dynamic>? table,
  }) {
    return getPathOfType(objType: objType, obj: "", table: table);
  }

  /// Get Method type info
  /// [obj]: Method name
  /// [table]: ACPI table (optional)
  List<dynamic> getMethodInfo({
    String obj = "_STA",
    String objType = "Method",
    Map<String, dynamic>? table,
  }) {
    table ??= getDsdt();
    if (table == null) return [];

    List<dynamic> infos = [];

    // Normalize method name
    obj = obj
        .split(".")
        .map((x) => x.replaceAll(RegExp(r"_$"), "").toUpperCase())
        .join(".");

    objType = objType.toLowerCase();

    // Iterate through all scope lines
    for (var scope in table['scopes'] ?? []) {
      if (scope.length < 2) continue;

      String rawLine = scope[0].toString().trim();
      final lineNum = scope[1];

      // Process only if starting with Method
      if (!rawLine.startsWith("Method")) continue;

      // Strip comments after double slash
      rawLine = rawLine.replaceAll(RegExp(r'//.*$'), "").trim();

      // Match method definition
      final match = RegExp(
        r'Method\s*\(\s*([A-Za-z0-9_\.\\]+)\s*,\s*(\d+)\s*,\s*([A-Za-z]+)\s*\)',
        caseSensitive: false,
      ).firstMatch(rawLine);

      if (match == null) continue;

      String fullName = match.group(1)!.trim(); // \_SB.PCI0._PTS
      int argCount = int.parse(match.group(2)!);
      String flag = match.group(3)!.trim();

      // Last segment of method name, e.g. _PTS
      String methodName =
          fullName.split(".").last.replaceAll("\\", "").toUpperCase();

      // Skip if not matched
      if (methodName != obj) continue;

      // Final method definition (trimmed, stripped)
      final cleanDefinition = "Method ($fullName, $argCount, $flag)";

      // Return structure: [definition, lineIndex, methodName, argCount, attributes]
      infos.addAll([cleanDefinition, lineNum, methodName, argCount, flag]);
    }

    return infos;
  }

  /// Get paths with specified type and name (e.g. finding Device named HPET)
  /// [objType]: Object type
  /// [obj]: Object name
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getPathOfType({
    String objType = "Device",
    String obj = "HPET",
    Map<String, dynamic>? table,
  }) {
    // If table not passed, get DSDT or unique table
    table ??= getDsdt();
    if (table == null) return [];

    List<List<dynamic>> paths = [];

    // Strip trailing underscores and normalize case
    obj = obj
        .split(".")
        .map((x) => x.replaceAll(RegExp(r"_$"), "").toUpperCase())
        .join(".");

    objType = objType.isNotEmpty ? objType.toLowerCase() : objType;

    // Iterate through all paths
    for (var path in table['paths'] ?? []) {
      // Normalize device names in path: strip trailing underscores and uppercase
      String pathCheck = path[0]
          .split(".")
          .map((x) => x.replaceAll(RegExp(r"_$"), "").toUpperCase())
          .join(".");

      // Skip if type or device name does not match
      if ((objType.isNotEmpty && objType != path[2].toLowerCase()) ||
          !pathCheck.endsWith(obj)) {
        // Skip if no match
        continue;
      }
      // Match succeeded, add to result list
      paths.add(path);
    }

    // Sort paths and return
    paths.sort((a, b) => a.toString().compareTo(b.toString()));
    return paths;
  }

  /// Extract string types from idTypes and return
  /// [idTypes]: ID type list
  List<String> _extractIdTypes(Object? idTypes) {
    final result = <String>[];

    if (idTypes is List) {
      result.addAll(idTypes.whereType<String>().map((e) => e.toUpperCase()));
    } else if (idTypes is String) {
      result.add(idTypes.toUpperCase());
    } else if (idTypes is Record) {
      final fields = idTypes
          .toString()
          .replaceAll('(', '')
          .replaceAll(')', '')
          .split(',')
          .map((e) => e.trim())
          .where((e) => e.isNotEmpty)
          .toList();

      result.addAll(fields.map((e) => e.toUpperCase()));
    }

    return result;
  }

  /// Get device paths containing specified ID
  /// [id]: ID string
  /// [idTypes]: ID type list
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getDevicePathsWithId({
    String id = "PNP0A03",
    Object? idTypes = const ("_HID", "_CID"),
    Map<String, dynamic>? table,
  }) {
    table ??= getDsdt();
    if (table == null || table.isEmpty) return [];

    final idTypeList = _extractIdTypes(idTypes);
    if (idTypeList.isEmpty) return [];

    final idUpper = id.toUpperCase();
    final devs = <String>[];
    final paths = table['paths'] ?? [];
    final lines = table['lines'] ?? {};

    for (final p in paths) {
      try {
        for (final typeCheck in idTypeList) {
          if (p[0].endsWith(typeCheck) &&
              lines[p[1]]?.contains(idUpper) == true) {
            final trimmed = p[0]
                .substring(0, p[0].length - typeCheck.length)
                .replaceAll(RegExp(r"\.+$"), "");
            devs.add(trimmed);
            break;
          }
        }
      } catch (e) {
        Log.error('getDevicePathsWithId error processing path $p: $e');
        continue;
      }
    }

    List<List<dynamic>> devices = [];
    for (final p in paths) {
      if (devs.contains(p[0]) && p[2] == "Device") {
        devices.add(p as List);
      }
    }
    return devices;
  }

  /// Get device paths containing specified CID
  /// [cid]: CID string
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getDevicePathsWithCid({
    String cid = "PNP0A03",
    Map<String, dynamic>? table,
  }) {
    return getDevicePathsWithId(id: cid, idTypes: ("_CID",), table: table);
  }

  /// Get device paths containing specified HID
  /// [hid]: HID string
  /// [table]: ACPI table (optional)
  List<List<dynamic>> getDevicePathsWithHid({
    String hid = "ACPI000E",
    Map<String, dynamic>? table,
  }) {
    return getDevicePathsWithId(id: hid, idTypes: ("_HID",), table: table);
  }
}
