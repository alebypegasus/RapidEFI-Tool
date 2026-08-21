//  merge.dart
//  Created by JeoJay127
//
import 'dart:convert';
import 'dart:io';
import '../log/log.dart';
import 'parser.dart';
import 'package:path/path.dart' as path;
import 'util.dart';
import 'config.dart';

class PatchMerge {
  String? patchedPath;
  String? configPath;
  String? resultsFolder;
  bool overwrite;
  bool backupBeforeOverwrite;
  PlistParser plistParser = PlistParser();
  final String resultsFolderName = "Results";
  Util util = Util();
  final List<(PlistType, String)> targetPatches = [
    (PlistType.openCore, 'patches_OC.plist')
  ];

  PatchMerge({
    this.patchedPath,
    this.configPath,
    this.overwrite = false,
    this.backupBeforeOverwrite = true,
  });

  List<(String, bool, String)> _getPatchesPlists(String? plistDirectory) {
    List<(String, bool, String)> pathChecks = [];
    for (var (_, name) in targetPatches) {
      if (plistDirectory != null) {
        String p = path.join(plistDirectory, name);
        bool isFile = File(p).existsSync();
        pathChecks.add((p, isFile, name));
      } else {
        pathChecks.add(('', false, name));
      }
    }
    return pathChecks;
  }

  Future<String?> getDefaultResultsFolder() async {
    final String patchedPlistPath = patchedPath ?? '';
    String patchedResults = path.join(patchedPlistPath, resultsFolderName);
    List<String> potentials = [];
    for (String p in [patchedResults]) {
      if (Directory(p).existsSync()) {
        var pathInfoList = _getPatchesPlists(p);
        if (pathInfoList.any((pathInfo) => pathInfo.$2)) {
          potentials.add(p);
        }
      }
    }

    if (potentials.isNotEmpty) {
      return potentials[0];
    }
    return await selectResultsFolder(patchedResults);
  }

  /// Select and validate results directory path
  /// [resultsPath]: Specified results path
  Future<String?> selectResultsFolder(String resultsPath) async {
    try {
      // Asynchronous path check
      final folderPath = await util.checkPath(filePath: resultsPath);
      if (folderPath.isEmpty) {
        Log.error("Path check failed, returned empty path");
        return null;
      }

      // Validate valid directory
      final directory = Directory(folderPath);
      if (!directory.existsSync()) {
        Log.warning("ACPI patch path does not exist: $folderPath");
        return null;
      }

      // Check for target plist files
      final pathInfoList = _getPatchesPlists(folderPath);
      if (pathInfoList.isEmpty) {
        Log.warning("Failed to get plist file information");
        return null;
      }
      // Check if at least one patch plist file exists
      if (!pathInfoList.any((p) => p.$2)) {
        Log.warning(
          "No patches_OC.plist or patches_Clover.plist found under: $folderPath! Please generate ACPI patches first.",
        );
        return null;
      }

      return folderPath;
    } catch (e) {
      Log.error("Error processing results folder path: $e");
      return null;
    }
  }

  (bool, String) getAsciiPrint(List<int> data) {
    bool unprintables = false;
    bool allZeroes = true;
    String asciiString = '';
    for (int b in data) {
      if (b != 0) {
        allZeroes = false;
      }
      if (32 <= b && b < 127) {
        asciiString += String.fromCharCode(b);
      } else {
        asciiString += '?';
        unprintables = true;
      }
    }
    return (allZeroes ? false : unprintables, asciiString);
  }

  bool checkNormalize(
    Map<String, dynamic> patchOrDrop,
    bool normalizeHeaders, {
    String checkType = 'Patch',
  }) {
    List<String> sig = ['OemTableId', 'TableSignature'];
    if (normalizeHeaders) {
      for (String key in sig) {
        var (unprintable, _) = getAsciiPrint(
          _extractData(patchOrDrop[key] ?? 0),
        );
        if (unprintable) {
          Log.warning('\nNote: NormalizeHeaders is enabled and table ID contains unprintable characters!');
          Log.warning('$checkType may fail to match or apply!\n');
          return true;
        }
      }
    } else {
      for (String key in sig) {
        if (_extractData(patchOrDrop[key] ?? 0).contains(0x3F)) {
          Log.warning('\nNote: NormalizeHeaders is disabled and table ID contains \'?\' characters!');
          Log.warning('$checkType may fail to match or apply!\n');
          return true;
        }
      }
    }
    return false;
  }

  List<int> _extractData(dynamic data) {
    if (data is List<int>) {
      return data;
    } else if (data is String) {
      return utf8.encode(data);
    }
    return [];
  }

  String getUniqueName(
    String name,
    String targetFolder, [
    String nameAppend = '',
  ]) {
    name = path.basename(name);
    String ext = path.extension(name);
    if (ext.isNotEmpty) {
      name = name.substring(0, name.length - ext.length);
    }
    if (nameAppend.isNotEmpty) {
      name += nameAppend;
    }
    String checkName = ext.isNotEmpty ? '$name$ext' : name;
    if (!File(path.join(targetFolder, checkName)).existsSync()) {
      return checkName;
    }
    int num = 1;
    while (true) {
      checkName = ext.isNotEmpty ? '$name-$num$ext' : '$name-$num';
      if (!File(path.join(targetFolder, checkName)).existsSync()) {
        return checkName;
      }
      num++;
    }
  }

  Future<void> mergePlist() async {
    if (!validateConfigPath()) return;
    if (!await findResultsFolder()) return;

    var (plistType, configData, e) = getPlistInfo(configPath!);
    if (!handlePlistLoadingError(plistType, e)) return;
    Log('=> Bootloader Type: ${plistType.value}');
    Log('=> Current config path: $configPath');
    Log('=> Current patch path: $resultsFolder');
    var pathInfo = getPatchPlistForType(resultsFolder!, plistType);
    if (!validatePatchFile(pathInfo)) return;
    var (_, targetData, e2) = getPlistInfo(pathInfo.$1);
    if (!handlePatchFileLoadingError(plistType, e2)) return;
    final resultMap = setupData(configData, targetData, plistType);

    handleSsdts(
      plistType,
      resultMap['ssdts'],
      resultMap['sOrig'],
      resultMap['errorsFound'],
    );
    handlePatches(
      plistType,
      resultMap['patch'],
      resultMap['pOrig'],
      resultMap['normalizeHeaders'],
      resultMap['errorsFound'],
    );
    handleDrops(
      plistType,
      resultMap['drops'],
      resultMap['dOrig'],
      resultMap['normalizeHeaders'],
      resultMap['errorsFound'],
    );
    handleQuirks(plistType, resultMap['quirks'], resultMap['quirksOrig']);
    await saveConfig(plistType, configData, resultMap['errorsFound']);
  }

  bool validateConfigPath() {
    if (configPath == null) {
      Log.warning('No target config.plist selected!');
      return false;
    }
    if (!File(configPath!).existsSync()) {
      Log.warning('Target config.plist not found: $configPath');
      return false;
    }
    return true;
  }

  Future<bool> findResultsFolder() async {
    resultsFolder = await getDefaultResultsFolder();
    if (resultsFolder == null || resultsFolder!.isEmpty) {
      return false;
    }
    return true;
  }

  bool handlePlistLoadingError(PlistType plistType, dynamic e) {
    String configName = path.basename(configPath!);
    Log('Loading $configName...');
    if (e != null) {
      Log.error('=> Load failed! Reason: $e \n');
      return false;
    }
    if (plistType == PlistType.unknown) {
      Log.warning('=> Unable to determine config.plist type!\n');
      return false;
    }
    return true;
  }

  bool validatePatchFile((String, bool, String) pathInfo) {
    if (!pathInfo.$2) {
      Log.error('Patch file ${pathInfo.$3} not found in patch path! Operation aborted.\n');
      return false;
    }
    if (!File(pathInfo.$1).existsSync()) {
      Log.error('Required patch file not found: ${pathInfo.$1}! Operation aborted.\n');
      return false;
    }
    String targetName = path.basename(pathInfo.$1);
    Log('Loading patch $targetName...');
    return true;
  }

  bool handlePatchFileLoadingError(PlistType plistType, dynamic e2) {
    if (e2 != null) {
      Log.error('=> Load failed! Reason: $e2\n');
      return false;
    }
    String configName = path.basename(configPath!);
    String targetName = path.basename(
      getPatchPlistForType(resultsFolder!, plistType).$1,
    );
    Log('Checking paths in $configName and $targetName...');
    return true;
  }

  Map<String, dynamic> setupData(
    dynamic configData,
    dynamic targetData,
    PlistType plistType,
  ) {
    bool errorsFound = false;
    dynamic normalizeHeaders;
    List<dynamic> ssdts = [];
    List<dynamic> patch = [];
    List<dynamic> drops = [];
    Map<dynamic, dynamic> quirks = {};
    dynamic sOrig = [];
    dynamic pOrig = [];
    dynamic dOrig = [];
    dynamic quirksOrig = {};

    if (plistType == PlistType.openCore) {
      normalizeHeaders = util.ensurePath(
        configData,
        ['ACPI', 'Quirks', 'NormalizeHeaders'],
        bool,
      );
      sOrig = util.ensurePath(configData, ['ACPI', 'Add']);
      pOrig = util.ensurePath(configData, ['ACPI', 'Patch']);
      dOrig = util.ensurePath(configData, ['ACPI', 'Delete']);
      quirksOrig = util.ensurePath(
        configData,
        ['ACPI', 'Quirks'],
        Map<String, dynamic>,
      );

      ssdts = targetData['ACPI']['Add'];
      patch = targetData['ACPI']['Patch'];
      drops = targetData['ACPI']['Delete'];
      quirks = targetData['ACPI']['Quirks'];
    } else {
      normalizeHeaders = false;
      sOrig = util.ensurePath(configData, ['ACPI', 'SortedOrder']);
      pOrig = util.ensurePath(configData, ['ACPI', 'DSDT', 'Patches']);
      dOrig = util.ensurePath(configData, ['ACPI', 'DropTables']);
      quirksOrig = util.ensurePath(configData, ['ACPI', 'Quirks']);

      ssdts = targetData['ACPI']['SortedOrder'];
      patch = targetData['ACPI']['DSDT']['Patches'];
      drops = targetData['ACPI']['DropTables'];
      quirks = targetData['ACPI']['Quirks'];
    }

    return {
      'errorsFound': errorsFound,
      'normalizeHeaders': normalizeHeaders,
      'ssdts': ssdts,
      'patch': patch,
      'drops': drops,
      'quirks': quirks,
      'sOrig': sOrig,
      'pOrig': pOrig,
      'dOrig': dOrig,
      'quirksOrig': quirksOrig,
    };
  }

  void handleSsdts(
    PlistType plistType,
    List<dynamic> ssdts,
    List<dynamic> sOrig,
    bool errorsFound,
  ) {
    Log('');
    if (ssdts.isEmpty) {
      Log.warning('=> No SSDT tables found! Skipping...');
      return;
    }
    Log('=> Checking target SSDT tables (${ssdts.length} total)...');
    List<dynamic> sRem = [];
    List<dynamic> sBroken = plistType == PlistType.openCore
        ? sOrig.where((x) => x is! Map).toList()
        : [];
    for (var s in ssdts) {
      if (plistType == PlistType.openCore) {
        Log('=> Checking ${s['Path']}...');
        List<dynamic> existing =
            sOrig.where((x) => x is Map && x['Path'] == s['Path']).toList();
        if (existing.isNotEmpty) {
          Log('=> Found ${existing.length} matching SSDT table(s), marked for replacement...');
          sRem.addAll(existing);
        }
      } else {
        Log('=> Checking $s...');
        List<dynamic> existing = sOrig.where((x) => x == s).toList();
        if (existing.isNotEmpty) {
          Log('=> Found ${existing.length} matching SSDT table(s), marked for replacement...');
          sRem.addAll(existing);
        }
      }
    }
    if (sRem.isNotEmpty) {
      Log('=> Removing ${sRem.length} duplicate SSDT table(s)...');
      for (var r in sRem) {
        sOrig.remove(r);
      }
    } else {
      Log('=> No duplicate SSDT tables found!');
    }
    Log('=> Adding ${ssdts.length} SSDT table(s)...');
    sOrig.addAll(ssdts);
    if (sBroken.isNotEmpty) {
      errorsFound = true;
      Log.error(
        '\nNote: Found ${sBroken.length} malformed SSDT table(s), please fix ${path.basename(configPath!)}!',
      );
    }
  }

  void handlePatches(
    PlistType plistType,
    List<dynamic> patch,
    List<dynamic> pOrig,
    dynamic normalizeHeaders,
    bool errorsFound,
  ) {
    Log('');
    if (patch.isEmpty) {
      Log('=> No ACPI patches found! Skipping...');
      return;
    }
    Log('=> Checking target ACPI patches (${patch.length} total)...');
    List<dynamic> pRem = [];
    List<dynamic> pBroken = pOrig.where((x) => x is! Map).toList();
    for (var p in patch) {
      Log('=> Checking ${p['Comment']}...');
      if (plistType == PlistType.openCore &&
          checkNormalize(p, normalizeHeaders)) {
        errorsFound = true;
      }
      List<dynamic> existing = pOrig
          .where(
            (x) =>
                x is Map &&
                util.deepEquals(x['Find'], p['Find']) &&
                util.deepEquals(x['Replace'], p['Replace']),
          )
          .toList();
      if (existing.isNotEmpty) {
        Log('=> Found ${existing.length} matching patch(es), marked for replacement...');
        pRem.addAll(existing);
      }
    }
    if (pRem.isNotEmpty) {
      Log('=> Removing ${pRem.length} duplicate patch(es)...');
      for (var r in pRem) {
        pOrig.remove(r);
      }
    } else {
      Log('=> No duplicate patches found!');
    }
    Log('=> Adding ${patch.length} patch(es)...');
    pOrig.addAll(patch);
    if (pBroken.isNotEmpty) {
      errorsFound = true;
      Log.error(
        '\nNote: Found ${pBroken.length} malformed patch(es), please fix ${path.basename(configPath!)}!',
      );
    }
  }

  void handleDrops(
    PlistType plistType,
    List<dynamic> drops,
    List<dynamic> dOrig,
    dynamic normalizeHeaders,
    bool errorsFound,
  ) {
    Log('');
    if (drops.isEmpty) {
      Log('=> No Drop patches found! Skipping...');
      return;
    }
    Log('=> Checking target Drop patches (${drops.length} total)...');
    List<dynamic> dRem = [];
    List<dynamic> dBroken = dOrig.where((x) => x is! Map).toList();
    for (var d in drops) {
      if (plistType == PlistType.openCore) {
        Log('=> Checking ${d['Comment']}...');
        if (checkNormalize(d, normalizeHeaders, checkType: 'Dropped table')) {
          errorsFound = true;
        }
        List<dynamic> existing = dOrig
            .where(
              (x) =>
                  x is Map &&
                  util.deepEquals(x['TableSignature'], d['TableSignature']) &&
                  util.deepEquals(x['OemTableId'], d['OemTableId']),
            )
            .toList();
        if (existing.isNotEmpty) {
          Log('=> Found ${existing.length} matching Drop patch(es), marked for replacement...');
          dRem.addAll(existing);
        }
      } else {
        String name = [
          d['Signature'] ?? '',
          d['TableId'] ?? '',
        ].where((x) => x.isNotEmpty).join(' - ');
        Log('=> Checking $name...');
        List<dynamic> existing = dOrig
            .where(
              (x) =>
                  x is Map &&
                  util.deepEquals(x['Signature'], d['Signature']) &&
                  util.deepEquals(x['TableId'], d['TableId']),
            )
            .toList();
        if (existing.isNotEmpty) {
          Log('=> Found ${existing.length} matching Drop patch(es), marked for replacement...');
          dRem.addAll(existing);
        }
      }
    }
    if (dRem.isNotEmpty) {
      Log('=> Removing ${dRem.length} duplicate Drop patch(es)...');
      for (var r in dRem) {
        dOrig.remove(r);
      }
    } else {
      Log('=> No duplicate Drop patches found!');
    }
    Log('=> Adding ${drops.length} Drop patch(es)...');
    dOrig.addAll(drops);
    if (dBroken.isNotEmpty) {
      errorsFound = true;
      Log.error(
        '\nNote: Found ${dBroken.length} malformed Drop patch(es), please fix ${path.basename(configPath!)}!',
      );
    }
  }

  void handleQuirks(
    PlistType plistType,
    Map<dynamic, dynamic> quirks,
    Map<dynamic, dynamic> quirksOrig,
  ) {
    Log('');
    if (quirks.isEmpty) {
      Log('=> No Quirks configuration to update! Skipping...');
      return;
    }
    Log('=> Checking target Quirks configuration...');
    for (var q in quirks.entries) {
      if (q.value is bool) {
        Log('=> Update ${q.key} to ${q.value}');
        quirksOrig[q.key] = quirks[q.key];
      }
    }
  }

  String _generateBackupFileName(String originalPath) {
    final directory = path.dirname(originalPath);
    final fileName = path.basenameWithoutExtension(originalPath);
    final extension = path.extension(originalPath);

    int counter = 1;
    String backupFileName;
    String backupPath;

    do {
      backupFileName = '$fileName-backup-$counter$extension';
      backupPath = path.join(directory, backupFileName);
      counter++;
    } while (File(backupPath).existsSync());

    return backupPath;
  }

  void backupConfig(String configPath) {
    Log('Backing up current config.plist...');
    String backupPath = _generateBackupFileName(configPath);
    File(configPath).copySync(backupPath);
    Log('Successfully backed up file to: $backupPath');
  }

  String resolveOutputPath() {
    if (overwrite) {
      return configPath!;
    }
    return path.join(resultsFolder!, path.basename(configPath!));
  }

  Future<void> copyAmlFiles(PlistType plistType, String configPath) async {
    Log('Preparing to copy SSDT files...');

    String acpiPath = path.join(path.dirname(configPath), 'ACPI');
    if (plistType == PlistType.clover) {
      acpiPath = path.join(acpiPath, 'patched');
    }

    String? results = await getDefaultResultsFolder();

    if (Directory(acpiPath).existsSync()) {
      if (results != null && Directory(results).existsSync()) {
        Directory(results).listSync().forEach((element) {
          if (element.path.endsWith('.aml')) {
            Log('Copying "${path.basename(element.path)}" to $acpiPath...');
            File(
              element.path,
            ).copySync(path.join(acpiPath, path.basename(element.path)));
          }
        });
      } else {
        Log('Directory not found: $results');
      }
    } else {
      Log('Directory not found: $acpiPath');
      Log('Please manually copy all .aml files from $results to $acpiPath.');
    }
  }

  bool savePlist(String outputPath, dynamic configData) {
    final bool success = plistParser.savePlist(
      outputPath,
      configData,
      onError: (error) => Log.error(error),
    );

    if (success) {
      Log('Configuration saved successfully!');
      Log('Merge complete!\n');
    } else {
      Log.error('Merge failed!\n');
    }

    return success;
  }

  void logWarningsAndErrors(bool success, bool errorsFound) {
    if (errorsFound) {
      Log.error('Note: Potential errors found during merge. Please inspect results!');
    } else {
      if (!overwrite) {
        final outputDir = path.dirname(resolveOutputPath());
        final efiDir = path.dirname(configPath!);
        final acpiDir = path.join(path.dirname(configPath!), 'ACPI');
        Log.warning('Note: Overwrite target EFI mode is not enabled.');
        Log.warning('Manual steps required:');
        Log.warning('1. Copy $outputDir/config.plist to $efiDir');
        Log.warning('2. Copy all .aml files from $outputDir to $acpiDir');
      }
    }
  }

  Future<void> saveConfig(
    PlistType plistType,
    dynamic configData,
    bool errorsFound,
  ) async {
    Log('');
    if (overwrite) {
      if (backupBeforeOverwrite) {
        backupConfig(configPath!);
      }
      await copyAmlFiles(plistType, configPath!);
    }

    final String outputPath = resolveOutputPath();
    Log('Saving configuration to path: $outputPath...');
    final bool success = savePlist(outputPath, configData);
    logWarningsAndErrors(success, errorsFound);
  }

  (PlistType, Map<String, dynamic>, dynamic) getPlistInfo(String configPath) {
    try {
      PlistParseResult configData = plistParser.loadPlist(configPath);
      if (configData.status != PlistParseStatus.success) {
        return (PlistType.unknown, configData.data ?? {}, null);
      }
      final data = configData.data ?? {};
      PlistType plistType = PlistType.unknown;
      if (_hasCloverFeatures(data)) {
        plistType = PlistType.clover;
      } else if (_hasOpenCoreFeatures(data)) {
        plistType = PlistType.openCore;
      }

      return (plistType, data, null);
    } catch (e) {
      return (PlistType.unknown, {}, e);
    }
  }

  bool _hasCloverFeatures(Map<String, dynamic> data) {
    final acpi = data['ACPI'] as Map<String, dynamic>?;
    return (acpi?.containsKey('SortedOrder') ?? false) ||
        (acpi?.containsKey('DSDT') ?? false) ||
        (acpi?.containsKey('DropTables') ?? false) ||
        data.containsKey('SMBIOS');
  }

  bool _hasOpenCoreFeatures(Map<String, dynamic> data) {
    final acpi = data['ACPI'] as Map<String, dynamic>?;
    return (acpi?.containsKey('Add') ?? false) ||
        (acpi?.containsKey('Patch') ?? false) ||
        (acpi?.containsKey('Delete') ?? false) ||
        data.containsKey('PlatformInfo');
  }

  (String, bool, String) getPatchPlistForType(
    String path,
    PlistType plistType,
  ) {
    var pathInfoList = _getPatchesPlists(path);
    return plistType == PlistType.openCore ? pathInfoList[0] : pathInfoList[1];
  }
}
