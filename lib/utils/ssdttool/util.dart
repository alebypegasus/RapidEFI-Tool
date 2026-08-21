//  util.dart
//  Created by JeoJay127
//
import 'dart:io';
import 'dart:typed_data';
import 'package:path/path.dart' as path;

class Util {
  /// Get desktop directory
  String getDesktopDirectory() {
    final homeDir =
        Platform.environment['HOME'] ?? Platform.environment['USERPROFILE'];
    if (homeDir == null) {
      throw UnsupportedError('Unable to get home directory');
    }
    const desktopFolder = 'Desktop';
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      return path.join(homeDir, desktopFolder);
    }
    throw UnsupportedError('Unsupported operating system: ${Platform.operatingSystem}');
  }

  Future<bool> _isDirectory(String filePath) async {
    final type = await FileSystemEntity.type(filePath);
    if (type != FileSystemEntityType.notFound) {
      return type == FileSystemEntityType.directory;
    }
    return filePath.endsWith(Platform.pathSeparator) ||
        path.extension(filePath).isEmpty;
  }

  /// Clear directory
  /// [dirPath] Directory path
  /// [folderName] Folder name
  Future<void> clearDirectory(
    String dirPath,
    String folderName, {
    bool recursive = true,
  }) async {
    final dir = Directory(path.join(dirPath, folderName));
    if (await dir.exists()) {
      await dir.delete(recursive: recursive);
    }
  }

  /// Copy directory
  /// [sourceDir] Source directory path
  /// [targetDir] Target directory path
  Future<void> copyDirectory(String sourceDir, String targetDir) async {
    final source = Directory(sourceDir);
    final target = Directory(targetDir);

    if (!await source.exists()) throw Exception('Source directory does not exist');
    if (!await target.exists()) await target.create(recursive: true);

    await for (final entity in source.list(recursive: true)) {
      final relativePath = path.relative(entity.path, from: sourceDir);
      final targetPath = path.join(targetDir, relativePath);

      if (entity is File) {
        await entity.copy(targetPath);
      } else if (entity is Directory) {
        await Directory(targetPath).create(recursive: true);
      }
    }
  }

  /// Check and prepare output path
  /// [filePath]: Output path (can be null, file, or directory)
  Future<String> checkPath({
    String? filePath,
    Function(String)? onError,
  }) async {
    try {
      String baseDir = getDesktopDirectory();
      if (baseDir.isEmpty) throw Exception('Unable to get desktop directory');

      if (filePath == null || filePath.isEmpty) {
        return baseDir;
      }

      final isDir = await _isDirectory(filePath);
      final targetPath = path.isAbsolute(filePath)
          ? filePath
          : path.join(baseDir, filePath);

      final dir = isDir
          ? Directory(targetPath)
          : Directory(path.dirname(targetPath));
      if (!await dir.exists()) await dir.create(recursive: true);

      return targetPath;
    } on FileSystemException catch (e) {
      onError?.call('File system error: ${e.message}');
    } catch (e) {
      onError?.call('Path processing error: $e');
    }
    return '';
  }

  /// Convert IRQ value to int
  /// [irq] IRQ value
  int convertIrqToInt(int irq) {
    String b = "${"0" * (16 - irq)}1${"0" * irq}";
    return int.parse(b, radix: 2);
  }

  /// Get hex string
  /// [line] Hex string line
  String getHex(String line) =>
      line.split(":")[1].split("//")[0].replaceAll(" ", "");

  /// Get line content
  /// [line] Line content
  String getLine(String line) {
    line = line.split("//")[0];
    if (line.contains(":")) {
      return line.split(":")[1];
    }
    return line;
  }

  /// Convert int to hex string
  /// [total] Integer to convert
  /// [padTo] Minimum string length, padded with '0'
  String getHexFromInt(int total, {int padTo = 4}) {
    String hexStr = total.toRadixString(16).toUpperCase().padLeft(padTo, '0');
    List<String> hexParts = [];
    for (int i = 0; i < hexStr.length; i += 2) {
      hexParts.add(hexStr.substring(i, i + 2));
    }
    return hexParts.reversed.join();
  }

  /// Convert integer to hex string
  /// [integer] Integer to convert
  /// [padTo] Minimum length, zero-padded
  /// [uppercase] Uppercase output, default true
  /// [with0x] Include 0x prefix, default true
  String hexy(
    int integer, {
    int padTo = 0,
    bool uppercase = true,
    bool with0x = true,
  }) {
    String hex = integer.toRadixString(16);
    hex = uppercase ? hex.toUpperCase() : hex;
    hex = hex.padLeft(padTo < 0 ? 0 : padTo, '0');
    return with0x ? "0x$hex" : hex;
  }

  /// Convert hex string to byte list
  /// [line] Hex string
  Uint8List getHexBytes(String line) {
    List<int> bytes = [];
    for (int i = 0; i < line.length; i += 2) {
      String byteStr = line.substring(i, i + 2);
      bytes.add(int.parse(byteStr.replaceFirst('0x', ''), radix: 16));
    }
    return Uint8List.fromList(bytes);
  }

  /// Check if byte list contains sublist
  /// [rawData] Byte list to search
  /// [checkBytes] Sub-bytes to match
  /// [expectedCount] Optional count of expected matches
  bool containsSublist(
    Uint8List rawData,
    Uint8List checkBytes, [
    int? expectedCount,
  ]) {
    final (mainLen, subLen) = (rawData.length, checkBytes.length);

    if (subLen == 0 || mainLen < subLen || (expectedCount ?? 1) <= 0) {
      return false;
    }

    int count = 0;
    for (
      int i = 0;
      i <= mainLen - subLen &&
          (expectedCount == null || count <= expectedCount);
      i++
    ) {
      if (List.generate(
        subLen,
        (j) => rawData[i + j] == checkBytes[j],
      ).every((e) => e)) {
        if (expectedCount == null) return true;
        if (++count > expectedCount) return false;
      }
    }
    return expectedCount != null && count == expectedCount;
  }

  /// Find index of sub-bytes in master byte list
  /// [rawData] Byte list to search
  /// [checkBytes] Sub-bytes to find
  /// [reverse] Search in reverse, default false
  int indexOfSubBytes(
    Uint8List rawData,
    Uint8List checkBytes, {
    bool reverse = false,
  }) {
    final int mainLen = rawData.length;
    final int subLen = checkBytes.length;
    if (subLen == 0 || subLen > mainLen) return -1;

    final int step = reverse ? -1 : 1;
    int start = reverse ? (mainLen - subLen) : 0;
    int end = reverse ? -1 : (mainLen - subLen + 1);

    for (int i = start; i != end; i += step) {
      bool match = true;
      for (int j = 0; j < subLen; j++) {
        if (rawData[i + j] != checkBytes[j]) {
          match = false;
          break;
        }
      }
      if (match) return i;
    }
    return -1;
  }

  /// Convert little-endian bytes to integer
  int littleEndianToInt(List<int> bytes) {
    final reversed = bytes.reversed.toList();
    return reversed.fold(0, (acc, byte) => (acc << 8) | byte);
  }

  /// Split hex string into reversed 2-character chunks
  String splitHexStringIntoReversedChunks(String input) {
    List<String> chunks = [];
    for (int i = input.length; i > 0; i -= 2) {
      int start = i - 2 >= 0 ? i - 2 : 0;
      chunks.add(input.substring(start, i));
    }
    return chunks.join('');
  }

  /// Convert Device ID to little-endian hex string
  String convertDeviceIdToSpoof(String deviceId) {
    List<String> bytes = [
      for (int i = 0; i < deviceId.length; i += 2) deviceId.substring(i, i + 2),
    ];
    bytes = bytes.reversed.toList();
    List<String> formattedBytes = bytes.map((byte) => '0x$byte').toList();
    return formattedBytes.join(', ');
  }

  String getAsciiString(Uint8List bytes) {
    return String.fromCharCodes(bytes.where((b) => b >= 0x20 && b <= 0x7E));
  }

  /// Validate PCI path format
  /// [pciPath] Device PCI path
  /// Returns true if valid, false otherwise
  /// e.g. macOS : PciRoot(0x0)/Pci(0x0,0x0)/Pci(0x0,0x0)
  ///      Windows: PCIROOT(0)#PCI(0000)#PCI(0000)
  bool checkPCIPath({String? pciPath}) {
    if (pciPath == null || pciPath.isEmpty) {
      return false;
    }
    final RegExp pciPathRegexForMac = RegExp(
      r'^PciRoot\(0x(0|[1-9a-fA-F][0-9a-fA-F]*)\)(\/Pci\(0x(0|[1-9a-fA-F][0-9a-fA-F]*),0x(0|[1-9a-fA-F][0-9a-fA-F]*)\))*$',
    );
    final RegExp pciPathRegexForWindows = RegExp(
      r'^PCIROOT\((0|[0-9a-fA-F]{1,2})\)(#PCI\((0x)?[0-9a-fA-F]{4}\))+$',
    );

    return pciPathRegexForMac.hasMatch(pciPath) ||
        pciPathRegexForWindows.hasMatch(pciPath);
  }

  /// Validate ACPI path format
  /// [acpiPath] Device ACPI path
  /// e.g. _SB.PCI0.LPCB.EC00
  bool checkACPIPath({String? acpiPath}) {
    if (acpiPath == null || acpiPath.isEmpty) {
      return false;
    }

    final RegExp acpiPathRegex = RegExp(r'^\\?_SB_?(?:\.[A-Z0-9_]{1,4})*$');
    return acpiPathRegex.hasMatch(acpiPath);
  }

  bool deepEquals(dynamic a, dynamic b) {
    if (a == b) return true;

    if (a is Map && b is Map) {
      if (a.length != b.length) return false;

      for (final key in a.keys) {
        if (!b.containsKey(key)) return false;
        if (!deepEquals(a[key], b[key])) return false;
      }
      return true;
    }

    if (a is List && b is List) {
      if (a.length != b.length) return false;
      for (int i = 0; i < a.length; i++) {
        if (!deepEquals(a[i], b[i])) return false;
      }
      return true;
    }

    if (a is Set && b is Set) {
      if (a.length != b.length) return false;
      final listA = a.toList()..sort();
      final listB = b.toList()..sort();
      return deepEquals(listA, listB);
    }

    return false;
  }

  dynamic ensurePath(
    dynamic plistData,
    List<String>? pathList, [
    dynamic finalType = List,
  ]) {
    if (pathList == null || pathList.isEmpty) return;
    dynamic last = plistData;
    for (int i = 0; i < pathList.length; i++) {
      String path = pathList[i];
      if (last is Map<String, dynamic> && !last.containsKey(path)) {
        if (i >= pathList.length - 1) {
          last[path] = finalType == List
              ? []
              : finalType == Map
              ? <String, dynamic>{}
              : throw ArgumentError('Unsupported finalType: $finalType');
        } else {
          last[path] = <String, dynamic>{};
        }
      }
      if (last is Map<String, dynamic>) {
        last = last[path];
      } else if (last is List<dynamic>) {
        try {
          int index = int.parse(path.replaceFirst('0x', ''));
          last = last[index];
        } catch (e) {
          throw ArgumentError('Invalid index "$path" for List');
        }
      } else {
        throw ArgumentError('last should be either a Map or a List');
      }
    }
    return last;
  }
}
