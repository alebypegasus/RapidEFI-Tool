//  ssdt.dart
//  Created by JeoJay127
//
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:rapidefi/extension/string_extension.dart';
import 'dsdt.dart';
import 'parser.dart';
import 'util.dart';
import '../log/log.dart';
import 'config.dart';
import 'prebuilt.dart';
import 'run.dart';
import 'package:path/path.dart' as path;

typedef _NativePnlfDevice = ({
  String tableName,
  Map<String, dynamic> table,
  List<dynamic> path
});

class SSDT {
  final Run run = Run();
  final DSDT d;
  final Util util = Util();
  final targetIrqs = [0, 2, 8, 11];
  final illegalNames = ["XHC1", "EHC1", "EHC2", "PXSX"];
  final Map<String, List<String>> ssdtDependencies = const {
    "SSDT-SleepHook.aml": [
      "SSDT-LID.aml",
      "SSDT-FixShutdown.aml",
      "SSDT-WakeScreen.aml",
      "SSDT-LED.aml",
    ],
  };

  final String legacyWarning =
      'Note: Legacy iasl-legacy only supports macOS 10.6 and older; may have compatibility issues on modern systems, use with caution!\n';

  AcpiConfig config;

  String outputFolder = 'Results';
  ACPIMatchMode? _lastACPIMatchMode = ACPIMatchMode.leastStrict;
  int _plistBatchDepth = 0;
  final Map<String, Map<String, dynamic>> _batchedPlists = {};

  /// Preset Patches
  final prePatches = [
    {
      "PrePatch": "GPP7 duplicate _PRW methods",
      "Comment": "GPP7._PRW to XPRW to fix Gigabyte's Mistake",
      "Find": "3708584847500A021406535245470214065350525701085F505257",
      "Replace": "3708584847500A0214065352454702140653505257010858505257",
    },
    {
      "PrePatch": "GPP7 duplicate UP00 devices",
      "Comment": "GPP7.UP00 to UPXX to fix Gigabyte's Mistake",
      "Find": "1047052F035F53425F50434930475050375B82450455503030",
      "Replace": "1047052F035F53425F50434930475050375B82450455505858",
    },
    {
      "PrePatch": "GPP6 duplicate _PRW methods",
      "Comment": "GPP6._PRW to XPRW to fix ASRock's Mistake",
      "Find": "47505036085F4144520C04000200140F5F505257",
      "Replace": "47505036085F4144520C04000200140F58505257",
    },
    {
      "PrePatch": "GPP1 duplicate PTXH devices",
      "Comment": "GPP1.PTXH to XTXH to fix MSI's Mistake",
      "Find": "50545848085F41445200140F",
      "Replace": "58545848085F41445200140F",
    },
  ];

  /// Constructor
  /// [config]: Configuration
  SSDT({required this.config})
      : d = DSDT(
          useLocaliAsl: config.useLocaliAsl,
          useLeagcyiAsl: config.useLeagcyiAsl,
        );

  /// Dump tables
  /// [filePath]: Input DSDT path
  /// [disassemble]: Whether to disassemble
  Future<String?> dumpTables(
    String filePath, {
    bool disassemble = false,
    Future<String?> Function()? onRequestSudoPassword,
    bool throwOnFailure = false,
  }) async =>
      await d.dumpTables(
        filePath,
        disassemble: disassemble,
        onRequestSudoPassword: onRequestSudoPassword,
        throwOnFailure: throwOnFailure,
      );

  void checkIaslValid({bool? local, bool? legacy}) {
    if (local != null) {
      config = config.copyWith(useLocaliAsl: local);
      d.useLocaliAsl = local;
    }
    if (legacy != null) {
      config = config.copyWith(useLeagcyiAsl: legacy);
      d.useLeagcyiAsl = legacy;
    }
    d.acpiTool.checkIaslValid();
  }

  /// Natural sort
  /// [list]: String list to sort
  /// [first]: Name to prioritize first
  List<String> sortedNicely(List<String> list, {String? first = "DSDT"}) {
    // splitstring for number /  non-number  sequence column
    List<dynamic> alphanumKey(String key) {
      final regex = RegExp(r'(\d+)');
      final parts = <dynamic>[];
      int lastIndex = 0;

      for (final match in regex.allMatches(key.toLowerCase())) {
        if (lastIndex < match.start) {
          parts.add(key.substring(lastIndex, match.start));
        }
        parts.add(int.parse(match.group(0)!));
        lastIndex = match.end;
      }
      if (lastIndex < key.length) {
        parts.add(key.substring(lastIndex));
      }
      return parts;
    }

    bool isFirst(String name) {
      if (first == null) return false;
      final lowerName = name.toLowerCase();
      final lowerFirst = first.toLowerCase();
      //  remove  drop  after  suffix ， only compare table  name 
      final baseName = lowerName.split('.').first;
      return baseName == lowerFirst;
    }

    list.sort((a, b) {
      //  prefer  first  let  first  specified   table  name  order  in  most  before 
      final aIsFirst = isFirst(a);
      final bIsFirst = isFirst(b);

      if (aIsFirst && !bIsFirst) return -1;
      if (bIsFirst && !aIsFirst) return 1;

      //  its  other  item  by  self  natural  order  sequence 
      final aKey = alphanumKey(a);
      final bKey = alphanumKey(b);

      for (int i = 0; i < aKey.length && i < bKey.length; i++) {
        final ax = aKey[i];
        final bx = bKey[i];

        if (ax is int && bx is int) {
          final cmp = ax.compareTo(bx);
          if (cmp != 0) return cmp;
        } else {
          final cmp = ax.toString().compareTo(bx.toString());
          if (cmp != 0) return cmp;
        }
      }
      return aKey.length.compareTo(bKey.length);
    });

    return list;
  }

  /// Get address from line
  /// [line]: Line number
  /// [splitBy]: Delimiter
  /// [table]: Table
  int? getAddressFromLine(
    int line, {
    String splitBy = '_ADR, ',
    Map<String, dynamic>? table,
  }) {
    //  if  not  prompt  provide table， then get DSDT  or  unique  table 
    table ??= d.getDsdt();
    try {
      String rawLine = table?['lines'][line];
      String part = rawLine.split(splitBy)[1].split(')')[0];
      part = part
          .replaceAll('Zero', '0x0')
          .replaceAll('One', '0x1')
          .replaceFirst('0x', '');
      return int.parse(part, radix: 16);
    } catch (e) {
      debugPrint('Error Address : $e');
      return null;
    }
  }

  /// Get LPC name
  /// [skipEc]: Whether to skip EC device
  /// [skipCommonNames]: Whether to skip common names
  String? getLpcName({bool skipEc = false, bool skipCommonNames = false}) {
    Log("Locating LPC(B)/SBRG…");

    for (final tableName in sortedNicely(d.acpiTables.keys.toList())) {
      final table = d.acpiTables[tableName]!;

      //  check  EC device
      if (!skipEc) {
        final ecList = d.getDevicePathsWithHid(hid: "PNP0C09", table: table);
        if (ecList.isNotEmpty) {
          final lpcName = ecList[0][0]
              .split(".")
              .sublist(0, ecList[0][0].split(".").length - 1)
              .join(".");
          Log("=> Found in $tableName $lpcName");
          return lpcName;
        }
      }

      //  check  common  see name
      if (!skipCommonNames) {
        for (final name in ["LPCB", "LPC0", "LPC", "SBRG", "PX40"]) {
          final paths = d.getDevicePaths(obj: name, table: table);
          if (paths.isNotEmpty && paths[0].isNotEmpty) {
            var lpcName = paths[0][0];
            Log("=> Found in $tableName $lpcName");
            return lpcName;
          }
        }
      }

      //  check address
      final paths = d.getPathOfType(objType: "Name", obj: "_ADR", table: table);
      for (final path in paths) {
        final adr = getAddressFromLine(path[1], table: table);
        if (adr == 0x001F0000 || adr == 0x00140003) {
          //  remove  ._ADR
          final lpcName = path[0].substring(0, path[0].length - 5);
          final lpcHid = "$lpcName._HID";
          if (table['paths'].any((x) => x[0] == lpcHid)) continue;
          Log("=> Found in $tableName $lpcName");
          return lpcName;
        }
      }
    }

    Log.warning("=> Failed to find LPC(B)！Aborted!");
    // Not found LPC(B)
    return null;
  }

  /// Ensure DSDT exists
  /// [allowAny]: Whether to allow any DSDT
  bool _ensureDSDT({bool allowAny = false}) {
    if (allowAny) {
      return d.acpiTables.isNotEmpty;
    } else {
      return d.getDsdt() != null;
    }
  }

  /// Ensure DSDT exists
  /// [allowAny]: Whether to allow any DSDT
  Future<bool> ensureDSDT({bool allowAny = false}) async {
    // Check if valid iasl exists
    if (!checkIasl()) return false;
    // Check if valid dsdt exists
    if (_ensureDSDT(allowAny: allowAny)) return true;
    // Valid dsdt not found
    Log.warning("No valid DSDT found! Please select a DSDT file or directory containing DSDT first!");
    return false;
  }

  /// Select DSDT
  /// [singleTable]: Whether to select only a single table
  /// [dsdtPath]: DSDT file path
  Future<String?> selectDsdt({
    bool singleTable = false,
    String? dsdtPath,
  }) async {
    // If DSDT file path passed, validate and load directly
    if (dsdtPath != null && dsdtPath.isNotEmpty) {
      Log("Provided DSDT path: $dsdtPath");
      String out = await util.checkPath(filePath: dsdtPath);
      if (out.isNotEmpty) {
        // Path valid, load and return result
        return await loadTables(out);
      } else {
        Log("Provided DSDT path is invalid: $dsdtPath");
        // Path invalid, return null
        return null;
      }
    }
    return null;
  }

  /// Get unique device (device name, device number)
  /// [parentPath]: Parent path
  /// [baseName]: Base name
  /// [startingNumber]: Starting number
  /// [usedNames]: Used names
  ({String name, int number}) getUniqueDevice(
    String parentPath,
    String baseName, {
    int startingNumber = 0,
    List<String> usedNames = const [],
  }) {
    int num = startingNumber;

    while (true) {
      String name;

      if (num < 0) {
        // Try original name
        name = baseName;
        // Next round starts from 0
        num = 0;
      } else {
        // Convert number to uppercase hex and append to baseName
        final hexNum = num.toRadixString(16).toUpperCase();
        final maxLen = baseName.length - hexNum.length;
        // Prevent overflow
        name = maxLen > 0 ? baseName.substring(0, maxLen) + hexNum : hexNum;
      }

      final fullPath = '${parentPath.replaceAll(RegExp(r'\.$'), '')}.$name';

      if (d.getDevicePaths(obj: fullPath).isEmpty &&
          !usedNames.contains(name)) {
        return (name: name, number: num);
      }

      num += 1;
    }
  }

  /// Get unique name
  /// [name]: Name
  /// [targetFolder]: Target folder
  /// [nameAppend]: Name suffix
  String getUniqueName(
    String name,
    String targetFolder, {
    String nameAppend = "-Patched",
  }) {
    // Get file extension
    String ext = name.contains('.') ? name.split('.').last : '';
    // Strip file extension
    if (ext.isNotEmpty) {
      name = name.substring(0, name.length - ext.length - 1);
    }
    // Add suffix if specified
    if (nameAppend.isNotEmpty) {
      name = '$name$nameAppend';
    }
    // Check if file name already exists
    String checkName = ext.isNotEmpty ? '$name.$ext' : name;
    if (!File('$targetFolder/$checkName').existsSync()) {
      return checkName;
    }

    // Need to generate unique file name
    int num = 1;
    while (true) {
      checkName = '$name-$num';
      if (ext.isNotEmpty) {
        checkName = '$checkName.$ext';
      }
      if (!File('$targetFolder/$checkName').existsSync()) {
        return checkName;
      }
      //  add  add number calculate  number 
      num++;
    }
  }

  ///  check  iasl  tool  have exists
  bool checkIasl() {
    if (config.useLeagcyiAsl) {
      Log.warning(legacyWarning);
    }
    if (d.acpiTool.iasl.isEmpty) {
      Log.error("iasl tool  have readyfailed! please  first update or  or  make  use  inside  set  iasl tool  have !");
      return false;
    }
    return true;
  }

  /// load DSDT  or file folder  in  valid ACPI  table 
  /// [fileOrFolderPath] file or file folder Path
  Future<String?> loadTables(String fileOrFolderPath) async {
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      await d.acpiTool.initialize();
    }
    if (!checkIasl() || fileOrFolderPath.isEmpty) return null;
    final stopwatch = Stopwatch()..start();
    try {
      List<String> tables = [];
      List<String> exclude = [];
      String? troubleDsdt;
      bool fixed = false;
      String? temp;
      //  backup  acpiTables
      final priorTables = Map<String, dynamic>.from(d.acpiTables);
      //  clear  empty  acpiTables
      d.acpiTables.clear();
      if (Directory(fileOrFolderPath).existsSync()) {
        Log(" currently  in  from directory $fileOrFolderPath  collect  collection validACPI table ...");
        final dir = Directory(fileOrFolderPath);
        final items = dir
            .listSync()
            .whereType<File>() // Keep files only (exclude directories)
            .where(
              (f) =>
                  f.path.toLowerCase().endsWith('.aml') ||
                  f.path.toLowerCase().endsWith('.dat'),
            ) // Keep .aml or .dat files only
            .map((e) => path.basename(e.path))
            .toList();
        for (var item in sortedNicely(items)) {
          if (d.tableIsValid(fileOrFolderPath, tableName: item)) {
            tables.add(item);
          }
        }
        Log(' total found ${items.length}  ACPI table ,  its  in  ${tables.length}  valid:');
        for (var table in tables) {
          Log('   $table');
        }
        if (tables.isEmpty) {
          final acpiDir = Directory(path.join(fileOrFolderPath, "ACPI"));
          if (acpiDir.existsSync()) {
            return await loadTables(path.join(fileOrFolderPath, "ACPI"));
          }

          Log.warning("Not foundvalid  .aml file!\n");
          d.acpiTables.addAll(priorTables);
          return null;
        }

        final dsdtList = tables
            .where(
              (t) => d.tableSignature(path.join(fileOrFolderPath, t)) == "DSDT",
            )
            .toList();
        if (dsdtList.isEmpty) {
          Log.warning("No valid DSDT found! Please select a DSDT file or directory containing DSDT first!");
          return null;
        }
        if (dsdtList.length > 1) {
          Log(" multiple   with  have  DSDT  signature  name  file already  via verify：");
          for (var dsdt in sortedNicely(dsdtList)) {
            Log("=> $dsdt");
          }
          Log.warning(" when  before  check  test  to  multiple   DSDT file， every  time  only  allow  allow at process 1 . please  keep  keep 1  DSDT file， its  remaining  please  remove  after  again  try .\n");
          d.acpiTables = priorTables;
          return null;
        }

        final dsdt = dsdtList.isNotEmpty ? dsdtList.first : null;
        if (dsdt != null && dsdt.isNotEmpty) {
          Log("");
          Log(" i.e.   reverse compile $dsdt， to verify is  whether  require  correspond  use  preset  control Patch…");
          final (result, failed) = await d.loadTable(
            path.join(fileOrFolderPath, dsdt),
          );
          if (result.isNotEmpty) {
            exclude.add(dsdt);
            Log('=>  no  require  correspond  use  preset  control Patch!\n');
          } else {
            troubleDsdt = dsdt;
          }
        }
      } else if (File(fileOrFolderPath).existsSync()) {
        Log("Loading ${path.basename(fileOrFolderPath)}...");
        final (result, failed) = await d.loadTable(fileOrFolderPath);
        if (d.tableSignature(fileOrFolderPath) != "DSDT") {
          Log.warning("invalid DSDT file！ please  re- select  select 1 valid DSDT file!");
          d.acpiTables.addAll(priorTables);
          return null;
        }
        if (result.isNotEmpty || (result[0] != null && result[0].isNotEmpty)) {
          Log(" already at process completed!\n");
          return path.dirname(fileOrFolderPath);
        }
        troubleDsdt = path.basename(fileOrFolderPath);
        tables.add(troubleDsdt);
        fileOrFolderPath = path.dirname(fileOrFolderPath);
      } else {
        Log(" pass  enter  file or file folder does not exist!\n");
        d.acpiTables = priorTables;
        return null;
      }

      // at process  have  issue  issue   DSDT file
      if (troubleDsdt != null && troubleDsdt.isNotEmpty) {
        Log("at process  have  issue  issue   DSDT file ...");
        temp = Directory.systemTemp.createTempSync().path;
        for (var table in tables) {
          File(
            path.join(fileOrFolderPath, table),
          ).copySync(path.join(temp, table));
        }

        final troublePath = path.join(temp, troubleDsdt);
        Log(" check  can  use   preset  control Patch…");
        Log(" currently  in   $troubleDsdt fileload to  inside  exist …");
        var data = await File(troublePath).readAsBytes();
        final out = await util.checkPath(
          filePath: path.join(temp, "output"),
          onError: (error) => Log.error(error),
        );
        final targetName = getUniqueName(
          troubleDsdt,
          out,
          nameAppend: "-Patched",
        );

        List<Map<String, String>> patches = [];
        Log(" currently  in  by-one  at process Patch…\n");
        for (var patch in prePatches) {
          if (!(patch.containsKey("PrePatch") &&
              patch.containsKey("Comment") &&
              patch.containsKey("Find") &&
              patch.containsKey("Replace"))) {
            continue;
          }
          Log(" => ${patch["PrePatch"]}");
          final find = Uint8List.fromList(List.from(patch["Find"]!.codeUnits));
          if (util.containsSublist(data, find)) {
            patches.add(patch);
            final replace = Uint8List.fromList(
              List.from(patch["Replace"]!.codeUnits),
            );
            Log("=>  already  locate ,  currently  in  correspond  use …");
            data = Uint8List.fromList(
              data.sublist(0, data.indexOf(find.first)) +
                  replace +
                  data.sublist(data.indexOf(find.first) + find.length),
            );
            File(troublePath).writeAsBytesSync(data);
            final (result, failed) = await d.loadTable(troublePath);
            if (result.isNotEmpty) {
              fixed = true;
              Log("=>  first  before  issue  issue DSDTfile reverse compilesuccessfully!");
              exclude.remove(troublePath);
              makePlist(acpi: null, patches: patches);
              File(path.join(outputFolder, targetName)).writeAsBytesSync(data);
              Log("=> Patch already  correspond  use  to  modify  after  file，filesave in  Results file folder  in ：\n   $targetName");
              break;
            }
          }
        }

        if (!fixed) {
          Log.error("$troubleDsdt  reverse Compilation failed!\n");
          Directory(temp).deleteSync(recursive: true);
          d.acpiTables = priorTables;
          return null;
        }
      }

      if (tables.length > 1) {
        Log("Loading $fileOrFolderPath  in  validACPI table …");
      }
      final (result, failed) = await d.loadTable(
        fileOrFolderPath,
        exclude: exclude,
      );

      if (result.isEmpty && failed.isNotEmpty) {
        d.acpiTables = priorTables;
      }
      Log(" all validACPI table  reverse compilecompleted!");
      if (temp != null && temp.isNotEmpty) {
        Directory(temp).deleteSync(recursive: true);
      }
      return fileOrFolderPath;
    } finally {
      stopwatch.stop();
      final totalTimeMs = stopwatch.elapsedMilliseconds;
      final totalSeconds = (totalTimeMs / 1000).toStringAsFixed(2);
      Log(' total  consume  time ：$totalSeconds  second \n');
    }
  }

  /// write SSDT file
  /// [ssdtName]: SSDT name
  /// [ssdt] SSDT  inside  contain 
  /// [delDsl]  is  whether remove .dsl file
  Future<bool> writeSSDT(String ssdtName, String ssdt, {bool? delDsl}) async {
    delDsl ??= config.deleteDsl;

    //  confirm  keep  output  out Path exist  in 
    final String res = await util.checkPath(
      filePath: path.join(config.outputDirectory ?? '', outputFolder),
      onError: (error) => Log.error(error),
    );

    //  unique temporary name （ only  used for compile）
    final String uid = DateTime.now().microsecondsSinceEpoch.toString();
    final String tmpDsl = path.join(res, '$ssdtName.$uid.dsl');
    final String tmpAml = path.join(res, '$ssdtName.$uid.aml');

    //  most  end  target  label  AML（ firmware  define ）
    final String finalDsl = path.join(res, '$ssdtName.dsl');
    final String finalAml = path.join(res, '$ssdtName.aml');

    final String iaslPath = d.acpiTool.iasl;
    // writetemporary DSL
    await File(tmpDsl).writeAsString(ssdt);

    Log(
      ' currently  in ${config.useLeagcyiAsl ? 'using [iasl-legacy compiler]' : ''}compile $ssdtName.aml...',
      level: config.useLeagcyiAsl ? LogLevel.warning : LogLevel.info,
    );

    final List<String> iaslArgs =
        config.force ? [iaslPath, '-f', tmpDsl] : [iaslPath, tmpDsl];

    try {
      final out = await run.run([
        {'args': iaslArgs},
      ]);
      if (out[2] != '0') {
        Log.error('Compilation output: ${out[1]}');
        Log.error(
          'Compilation failed!'
          '${config.useLeagcyiAsl ? ' Recommend switching to newer iasl or enabling forced compilation!' : ''}',
        );
        return false;
      }

      Log('Compiled $ssdtName.aml successfully!');
      // Compilation successful, rename AML file
      await File(tmpAml).rename(finalAml);
      return true;
    } finally {
      // Always clean up temporary DSL
      final tmpDslFile = File(tmpDsl);
      if (await tmpDslFile.exists()) {
        //  used for logTipremove operate  action 
        if (delDsl) Log('remove $ssdtName.dsl  source file');
        await tmpDslFile.delete();
      }
      //  if  not  keep  keep  DSL，remove most  end  DSL
      if (delDsl) {
        final finalDslFile = File(finalDsl);
        if (await finalDslFile.exists()) {
          await finalDslFile.delete();
        }
      } else {
        await File(finalDsl).writeAsString(ssdt);
      }
    }
  }

  /// extract Field  inside  part  all line（ keep  keep  Offset  and  original  start  format  format ）
  List<String> getFieldVarWithPath(String devicePath) {
    final deviceInfo = getDeviceAllInfo(devicePath: devicePath);
    final fields = deviceInfo['fields'];
    final lines = <String>[];
    // iterate fields，found contains  PMEE   Field
    for (var field in fields) {
      // found large  include  number  {  and  }  of  between   inside  contain 
      final braceStart = field.indexOf('{');
      final braceEnd = field.lastIndexOf('}');

      if (braceStart == -1 || braceEnd == -1 || braceEnd <= braceStart) {
        //  if Not found large  include  number ， direct  receive  return  return  empty column table 
        return lines;
      }

      // extract inside  part  file  current 
      final body = field.substring(braceStart + 1, braceEnd);

      //  by line split  split ， keep  keep  every 1line original  start  compress  advance  and  comma  number 
      for (var line in body.split(RegExp(r'[\r\n]+'))) {
        line = line.trim();
        if (line.isNotEmpty) {
          lines.add(line);
        }
      }
    }

    return lines;
  }

  /// getdevice  all info
  /// [devicePath] device path
  /// [table] ACPI  table  （optional）
  Map<String, dynamic> getDeviceAllInfo({
    required String devicePath,
    Map<String, dynamic>? table,
  }) {
    table ??= d.getDsdt();

    final List<String> names = [];
    final List<String> methods = [];
    final List<String> opRegions = [];
    final List<String> fields = [];
    final List<String> devices = [];

    // getdevice finish  whole  Scope（ every line for 1 item ）
    final scope = d.getScopeOfDevice(
      devicePath: devicePath,
      table: table,
      stripComments: true,
    );

    if (scope.isEmpty) {
      Log("=> Not founddevice $devicePath   Scope");
      return {
        "valid": false,
        "device": devicePath,
        "names": names,
        "methods": methods,
        "operationRegions": opRegions,
        "fields": fields,
        "devices": devices,
      };
    }

    //  by-one lineparse scope， make  use  depth  follow  trace  large  include  number  tier  level 
    //  only  collect  collection  depth == 1  1 level  succeed  member ； when  encounter  to  child  Device  time ，  it  add  enter  devices  and skip its  block
    final lines = scope; // List<String>
    int depth = 0;

    //  first  first  confirm  define  scope startat and initialize depth：
    // found #1  contain  "{"  line and   depth  set  for  1， from  down 1linestartparse
    int startIndex = 0;
    for (int i = 0; i < lines.length; i++) {
      if (lines[i].contains("{")) {
        startIndex = i + 1;
        depth = 1;
        break;
      }
    }
    //  if Not found '{'， still  from  0 start（ protect  protect ）
    if (depth == 0) {
      startIndex = 0;
      depth = 1;
    }

    //  from  given index  start found with  of match  '}'  line index（ according to  brace  calculate  number ）
    int findMatchingBrace(int fromIndex) {
      int b = 0;
      for (int j = fromIndex; j < lines.length; j++) {
        final l = lines[j];
        //  in  same 1line may  simultaneously  contains  {  and  }
        for (int k = 0; k < l.length; k++) {
          if (l[k] == '{') {
            b++;
          } else if (l[k] == '}') {
            if (b == 0) {
              //  if  first  out  present  }  while  b==0， description  in  outside  tier  encounter  to end， return  return  when  before line
              return j;
            } else {
              b--;
              if (b == 0) return j;
            }
          }
        }
      }
      return lines.length - 1;
    }

    //  main  loop  loop ： from  startIndex parse to  scope end（depth  return  to  0）
    int i = startIndex;
    while (i < lines.length) {
      String raw = lines[i];
      String line = raw.trim();

      // update depth  based on  when  before line  {  and  }  out  present  number  count （ in  jump  block  time  control  control  i）
      //  if line inside  contain  'Device ('  open  header ， and  when  before  depth==1， table  show  child device（1 level  child device）
      final deviceHeaderMatch = RegExp(
        r'^\s*Device\s*\(\s*([A-Za-z0-9_]+)\s*\)',
        caseSensitive: false,
      ).firstMatch(raw);

      if (deviceHeaderMatch != null && depth == 1) {
        //  record  record  child device header  original  start line
        devices.add(raw.trim());

        // skip this  child device  whole   block ： find match  '}' line
        //  search  find  from  when  before linestart #1  '{'， again foundmatch  '}'
        int firstBraceLine = -1;
        for (int t = i; t < lines.length; t++) {
          if (lines[t].contains("{")) {
            firstBraceLine = t;
            break;
          }
        }
        if (firstBraceLine == -1) {
          //  no found '{'， then  only skip when  before line
          i++;
          continue;
        }
        int matchLine = findMatchingBrace(firstBraceLine);
        // continueparse from  matchLine + 1
        i = matchLine + 1;
        continue;
      }

      //  if  when  before  depth == 1， adopt  collection  Name / Method / OperationRegion / Field
      if (depth == 1) {
        // ---- Name (single-line) ----
        if (line.startsWith("Name (")) {
          names.add(raw.trim());
          i++;
          continue;
        }

        // ---- OperationRegion ( pass  common  single line) ----
        if (line.startsWith("OperationRegion")) {
          opRegions.add(raw.trim());
          i++;
          continue;
        }

        // ---- Method ( may  multiple line， have  large  include  number ) ----
        if (line.startsWith("Method (") || line.startsWith("method (")) {
          //  catch  get  from  when  before linestart direct  to match  '}'  for  stop   finish  whole  block
          // found #1line contains  '{'  line（ may  is  when  before line or  after  continue line）
          int braceStart = -1;
          for (int t = i; t < lines.length; t++) {
            if (lines[t].contains("{")) {
              braceStart = t;
              break;
            }
          }
          if (braceStart == -1) {
            // Not found '{'，  when  before line action  for  method（ protect  protect ）
            methods.add(raw.trim());
            i++;
            continue;
          }
          int matchLine = findMatchingBrace(braceStart);
          // concat from  i  to  matchLine   all line
          final buffer = StringBuffer();
          for (int t = i; t <= matchLine; t++) {
            buffer.writeln(lines[t]);
          }
          methods.add(buffer.toString().trim());
          i = matchLine + 1;
          continue;
        }

        // ---- Field ( finish  whole  keep  keep  all  inside  contain ， including  define  meaning line +  large  include  number  inside  part ) ----
        if (line.startsWith("Field (") || line.startsWith("field (")) {
          // found #1line contains  '{'  line（ may  is  when  before line， also  may  in  after  surface ）
          int braceStart = i;
          while (
              braceStart < lines.length && !lines[braceStart].contains("{")) {
            braceStart++;
          }

          //  if  no found '{'， to  less  keep  keep  when  before line
          if (braceStart >= lines.length) {
            fields.add(raw.trim());
            i++;
            continue;
          }

          // foundmatch close  combine  '}'
          int braceCount = 0;
          int matchLine = braceStart;
          for (int t = braceStart; t < lines.length; t++) {
            final l = lines[t];
            for (int c = 0; c < l.length; c++) {
              if (l[c] == '{') braceCount++;
              if (l[c] == '}') {
                braceCount--;
                if (braceCount == 0) {
                  matchLine = t;
                  break;
                }
              }
            }
            if (braceCount == 0) break;
          }

          // concat from  define  meaning line i  to  matchLine   all line
          final buffer = StringBuffer();
          for (int t = i; t <= matchLine; t++) {
            buffer.writeln(lines[t]);
          }
          fields.add(buffer.toString().trim());

          //  jump  to  close  combine line  down 1line
          i = matchLine + 1;
          continue;
        }
      }

      //  if  not  special  special match， by lineupdate depth：count '{'  and  '}'
      //  child device Device  inside   deep  depth  will  affect  affect  outside  tier  adopt  collection （ already  via  jump  block at process ）, this  inside  only update depth  based on line out  present   {  and  }
      int opens = RegExp(r'\{').allMatches(raw).length;
      int closes = RegExp(r'\}').allMatches(raw).length;
      depth += opens - closes;

      //  when  depth <= 0  time end（scope end）
      if (depth <= 0) break;

      i++;
    }

    return {
      "valid": true,
      "device": devicePath,
      "names": names,
      "methods": methods,
      "operationRegions": opRegions,
      "fields": fields,
      "devices": devices,
    };
  }

  /// getdevice  STA variable
  /// [varS] STA variablename
  /// [device] device name
  /// [devHid] device HID
  /// [devName] device name
  /// [table] ACPI  table 
  Map<String, dynamic> getStaVar({
    String varS = "STAS",
    String? device,
    String devHid = "ACPI000E",
    String devName = "AWAC",
    Map<String, dynamic>? table,
  }) {
    table ??= d.getDsdt();
    bool hasVar = false;
    List<Map<String, dynamic>> patches = [];
    String? root;

    //  if  prompt  provide  device, first  locate device
    List<List<dynamic>> devList;
    if (device != null && device.isNotEmpty) {
      devList = d.getDevicePaths(obj: device, table: table);
      if (devList.isEmpty) {
        Log("=>  cannot  locate  $device");
        return {"value": false};
      }
    } else {
      //  if  no  have  prompt  provide device, direct  receive  locate  HID
      Log("Locating $devHid ($devName) device…");
      devList = d.getDevicePathsWithHid(hid: devHid, table: table);
      if (devList.isEmpty) {
        Log("=>  cannot  locate  to  any  any  $devHid device");
        return {"valid": false};
      }
    }

    var dev = devList[0];
    Log("=> found ${dev[0]}");

    root = dev[0].split(".")[0];
    Log("=> Searching forverify _STA…");

    //  first  check method, again  check name
    String staType = "MethodObj";
    var sta = d.getMethodPaths(obj: "${dev[0]}._STA", table: table);
    var xsta = d.getMethodPaths(obj: "${dev[0]}.XSTA", table: table);

    if (sta.isEmpty && xsta.isEmpty) {
      //  check name
      staType = "IntObj";
      sta = d.getNamePaths(obj: "${dev[0]}._STA", table: table);
      xsta = d.getNamePaths(obj: "${dev[0]}.XSTA", table: table);
    }

    ///  check  is  whether  already  XSTA rename
    if (xsta.isNotEmpty && sta.isEmpty) {
      Log("=> _STA  already rename for  XSTA！skip its  other  check …");
      Log("=>  please disableDSDT in  this device  _STA  to  XSTA  rename，reboot after  again  try !\n");
      return {
        "valid": false,
        "break": true,
        "device": dev,
        "dev_name": devName,
        "dev_hid": devHid,
        "sta_type": staType,
      };
    }

    ///  check  STA variableexists
    if (sta.isNotEmpty) {
      if (varS.isNotEmpty) {
        var scope = d
            .getScope(
              startingIndex: sta[0][1],
              stripComments: true,
              table: table,
            )
            .join("\n");
        hasVar = scope.contains(varS);
        Log("=> $varS variable${hasVar ? ' exist  in ' : 'does not exist'}");
      }
    } else {
      Log("=> Not found _STA method/name");
    }

    ///  check  is  whether  require  for  _STA => XSTA generate unique  Patch
    if (sta.isNotEmpty && !hasVar) {
      var staIndex = d.findNextHex(index: sta[0][1], table: table).$2;
      Log("=> at index $staIndex atfound _STA method!");
      String staHex = "5F535441"; // _STA
      String xstaHex = "58535441"; // XSTA
      Log("=> Generating _STA  to  XSTA  rename");
      final (padl, padr) = d.getShortestUniquePad(
        currentHex: staHex,
        index: staIndex,
        table: table,
      );
      patches.add({
        "Comment": "$devName _STA to XSTA rename",
        "Find": padl + staHex + padr,
        "Replace": padl + xstaHex + padr,
      });
    }

    return {
      "valid": true,
      "has_var": hasVar,
      "sta": sta,
      "patches": patches,
      "device": dev,
      "dev_name": devName,
      "dev_hid": devHid,
      "root": root,
      "sta_type": staType,
    };
  }

  ///  check  STA device is  whether  require Patch
  /// [sta] STA deviceinfo
  /// [table] ACPI  table 
  bool staNeedsPatching(Map<String, dynamic>? sta, Map<String, dynamic> table) {
    //  check  output  enter  is  whether valid
    if (sta == null || !sta.containsKey("sta")) {
      return false;
    }

    // at process  IntObj type
    if (sta["sta_type"] == "IntObj") {
      try {
        String staScope = table["lines"][sta["sta"][0][1]];
        if (!staScope.contains("Name (_STA, 0x0F)")) {
          return true;
        }
      } catch (e) {
        Log.error("at process IntObjtypeError occurred: $e");
        return true;
      }
    }
    // at process  MethodObj type
    else if (sta["sta_type"] == "MethodObj") {
      try {
        String staScope = d
            .getScope(
              startingIndex: sta["sta"][0][1],
              stripComments: true,
              table: table,
            )
            .join("\n");
        if (staScope.split("Return (").length - 1 > 1 ||
            !staScope.contains("Return (0x0F)")) {
          Log('=>  exist  in  multiple   return  return  language  statement ， or  or return value not  is  Return (0x0F)');
          return true;
        }
      } catch (e) {
        Log.error("at process MethodObjtypeError occurred: $e");
        return true;
      }
    }

    // default return  return  false
    return false;
  }

  /// convert whole  number  for 16 advance  control string
  /// [integer]  require convert  whole  number 
  /// [padTo]  require  pad  pad  length，default for 0
  String hexy(int integer, {int padTo = 0}) {
    String hexStr = integer.toRadixString(16).toUpperCase();
    String padded = hexStr.padLeft(padTo, '0');
    return '0x$padded';
  }

  /// at process convertPCI path
  /// [devicePath]  require convert device path
  String? sanitizeDevicePath(String devicePath) {
    devicePath = devicePath.trim().toLowerCase();

    if (!devicePath.startsWith('pciroot(')) {
      //  not  is valid device path， return  return  null
      return null;
    }

    //  remove  except  pciroot()  and  pci()， and  by  /  or  # split
    final raw = devicePath
        .replaceAll('pciroot(', '')
        .replaceAll('pci(', '')
        .replaceAll(')', '');

    final segments = raw.split(RegExp(r'[#/\\]'));
    final newPath = <String>[];

    for (var i = 0; i < segments.length; i++) {
      final adr = segments[i];
      if (i == 0) {
        // PciRoot address
        if (adr.contains(',')) return null;
        try {
          final value = int.parse(adr.replaceFirst('0x', ''), radix: 16);
          newPath.add('PciRoot(${hexy(value)})');
        } catch (_) {
          return null;
        }
      } else {
        try {
          int adr1, adr2;
          if (adr.contains(',')) {
            final parts = adr.split(',');
            adr1 = int.parse(parts[0].replaceFirst('0x', ''), radix: 16);
            adr2 = int.parse(parts[1].replaceFirst('0x', ''), radix: 16);
          } else {
            final value = int.parse(adr.replaceFirst('0x', ''), radix: 16);
            adr2 = value & 0xFF;
            adr1 = (value >> 8) & 0xFF;
          }
          newPath.add('Pci(${hexy(adr1)},${hexy(adr2)})');
        } catch (_) {
          return null;
        }
      }
    }

    return newPath.join('/');
  }

  /// at process device path
  /// [inputPaths]  require at process  device pathcolumn table 
  Map<String, String?> getDevicePath({List<String> inputPaths = const []}) {
    final Map<String, String?> paths = {};

    for (var pathEntry in inputPaths) {
      final parts = pathEntry.trim().split(RegExp(r'\s+'));
      String? path;
      String? dev;

      if (parts.length == 1) {
        path = parts[0];
      } else if (parts.length == 2) {
        path = parts[0];
        dev = parts[1];
      } else {
        //  format  format Error，skip
        continue;
      }

      // at process  device name
      if (dev != null && dev.isNotEmpty) {
        dev = dev.replaceAll('_', '').toUpperCase();
        if (!RegExp(r'^[A-Z0-9]{1,4}$').hasMatch(dev)) {
          //  non- method device name ,skip
          continue;
        }
        dev = dev.padRight(4, '0');
      }

      path = sanitizeDevicePath(path);
      if (path == null || path.isEmpty) continue;
      paths[path] = dev;
    }

    return paths;
  }

  (Map<String, Map<String, dynamic>>, List<Map<String, dynamic>>)
      getDevicePaths() {
    Log("Collecting ACPI deviceinfo…");
    final deviceDict = <String, Map<String, dynamic>>{};
    final pciRootPaths = <Map<String, dynamic>>[];
    final orphanedDevices = <List<dynamic>>[];
    final sanitizedPaths = <List<dynamic>>[];

    for (final tableName in sortedNicely(d.acpiTables.keys.toList())) {
      final table = d.acpiTables[tableName];

      var pciRoots = d.getDevicePathsWithHid(hid: "PNP0A08", table: table);
      pciRoots += d.getDevicePathsWithHid(hid: "PNP0A03", table: table);
      pciRoots += d.getDevicePathsWithHid(hid: "ACPI0016", table: table);

      final paths = d.getPathOfType(objType: "Name", obj: "_ADR", table: table);

      for (final path in pciRoots) {
        if (deviceDict.containsKey(path[0])) continue;

        final deviceUid = d.getNamePaths(obj: "${path[0]}._UID", table: table);
        final adr = (deviceUid.isNotEmpty && deviceUid.length == 1)
            ? getAddressFromLine(
                deviceUid[0][1],
                splitBy: "_UID, ",
                table: table,
              )
            : 0;

        deviceDict[path[0]] = {"path": "PciRoot(${hexy(adr ?? 0)})"};
        pciRootPaths.add(deviceDict[path[0]]!);
      }

      for (final x in paths) {
        sanitizedPaths.add([
          x[0].substring(0, x[0].length - 5),
          x[1],
          x[2],
          getAddressFromLine(x[1], table: table),
        ]);
      }
    }

    Log("Collecting ACPI device path…");

    bool checkPath(List<dynamic> path) {
      final adr = path[3];
      bool adrOverflow = false;

      try {
        int adr1 = (adr >> 16) & 0xFFFF;
        int adr2 = adr & 0xFFFF;
        int radr1 = adr1;
        int radr2 = adr2;

        if (adr1 > 0xFF) {
          adrOverflow = true;
          radr1 = 0;
        }
        if (adr2 > 0xFF) {
          adrOverflow = true;
          radr2 = 0;
        }

        final pathKey = path[0];
        if (deviceDict.containsKey(pathKey)) return true;

        final parent = pathKey.split('.')..removeLast();
        final parentKey = parent.join('.');
        final parentDevice = deviceDict[parentKey];

        if (parentDevice == null || parentDevice["path"] == null) {
          return false;
        }

        var devicePath = parentDevice["path"] as String;
        devicePath += "/Pci(${hexy(adr1)},${hexy(adr2)})";
        deviceDict[pathKey] = {"path": devicePath};

        if (adrOverflow || parentDevice.containsKey("adr_overflow")) {
          deviceDict[pathKey]!["adr_overflow"] = true;
          final parentPath = parentDevice["adj_path"] ?? parentDevice["path"];
          deviceDict[pathKey]!["adj_path"] =
              "$parentPath/Pci(${hexy(radr1)},${hexy(radr2)})";

          if (adrOverflow) {
            final devOverflow = (deviceDict[pathKey]!["dev_overflow"] ??
                <String>[]) as List<String>;
            devOverflow.add(pathKey);
            deviceDict[pathKey]!["dev_overflow"] = devOverflow;
          }
        }

        return true;
      } catch (_) {
        return true;
      }
    }

    sanitizedPaths.sort((a, b) => a[0].compareTo(b[0]));

    for (final path in sanitizedPaths) {
      if (!checkPath(path)) {
        orphanedDevices.add(path);
      }
    }

    if (orphanedDevices.isNotEmpty) {
      Log(" currently  in  re- check  orphan  standalone device…");
      while (true) {
        final removed = <List<dynamic>>[];
        for (final path in orphanedDevices) {
          if (checkPath(path)) {
            removed.add(path);
          }
        }
        if (removed.isEmpty) break;
        for (final r in removed) {
          orphanedDevices.removeWhere((x) => x[0] == r[0]);
        }
      }
    }

    return (deviceDict, pciRootPaths);
  }

  /// Parse path like "Pci(0x1,0x0)/Pci(0x2,0x0)" into bridge address list
  List<int> getBridgeDevices(String path) {
    // Clean and split path (strip PciRoot/Pci/parens, split by # or /)
    final cleanedPath = path
        .toLowerCase()
        .replaceAll('pciroot(', '')
        .replaceAll('pci(', '')
        .replaceAll(')', '');

    final adrs = cleanedPath.split(RegExp(r'#|/'));
    final bridges = <int>[];

    for (final bridge in adrs) {
      if (bridge.isEmpty) continue;

      /// Error: PciRoot bridging unsupported
      if (!bridge.contains(',')) return [];

      try {
        final parts = bridge.split(',');
        final adr1 = int.parse(parts[0].replaceFirst('0x', ''), radix: 16);
        final adr2 = int.parse(parts[1].replaceFirst('0x', ''), radix: 16);
        final adrInt = (adr1 << 16) + adr2;
        bridges.add(adrInt);
      } catch (_) {
        // Return empty list on error
        return [];
      }
    }

    return bridges;
  }

  /// Get all matching paths (tuple: deviceName, deviceInfo, isExactMatch, matchPathLength)
  ///  e.g. ：('PC00.BR1A', {info}, true, 12)
  /// [deviceDict] devicemap
  /// [matchPath] matchPath
  /// [adj]  is  whether  make  use  adj_path
  List<(String, Map<String, dynamic>, bool, int)> getAllMatches(
    Map<String, Map<String, dynamic>> deviceDict,
    String matchPath, {
    bool adj = false,
  }) {
    final key = adj ? 'adj_path' : 'path';
    final matches = <(String, Map<String, dynamic>, bool, int)>[];

    for (final entry in deviceDict.entries) {
      final device = entry.value[key];
      if (device is! String || device.isEmpty) continue;

      final pathLower = matchPath.toLowerCase();
      final deviceLower = device.toLowerCase();

      if (pathLower.startsWith(deviceLower)) {
        matches.add((
          entry.key,
          entry.value,
          deviceLower == pathLower,
          device.length,
        ));
      }
    }

    return matches;
  }

  ///  return  return  most  length Pathmatch  element  group  (String, Map, bool, int)
  ///  e.g. : ('_SB.PCI0', {device info...}, true, 5)
  /// [deviceDict] devicemap
  /// [matchPath] matchPath
  /// [adj]  is  whether  make  use  adj_path
  (String, Map<String, dynamic>, bool, int)? getLongestMatch(
    Map<String, Map<String, dynamic>> deviceDict,
    String matchPath, {
    bool adj = false,
  }) {
    final matches = getAllMatches(deviceDict, matchPath, adj: adj);
    if (matches.isEmpty) return null;
    //  by  element  group  # 4  item （Path deep  depth ） reduce  sequence  order  sequence 
    matches.sort((a, b) => b.$4.compareTo(a.$4));
    return matches.first;
  }

  ///  via addressgetdevice path
  /// targetAdr  target  label address
  /// excludeNames  order  except namecolumn table 
  /// return value:  contains device path、 parent Path and  table  name   element  group ， if Not found then  return  return null
  ({String busPath, String busParent, String tableName})? getDevAtAdr({
    int targetAdr = 0x001F0004,
    List<String> excludeNames = const ["XHC"],
  }) {
    for (var tableName in sortedNicely(d.acpiTables.keys.toList())) {
      var table = d.acpiTables[tableName];
      var paths = d.getPathOfType(objType: "Name", obj: "_ADR", table: table);
      for (var path in paths) {
        var adr = getAddressFromLine(path[1], table: table);
        if (adr == targetAdr) {
          //  remove  drop  ._ADR
          var pathParts = path[0].split('.')..removeLast();
          if (pathParts.length > 1) {
            final lastPart = pathParts.last.toLowerCase();
            final hasExcludedName = excludeNames.any(
              (x) => lastPart.contains(x.toLowerCase()),
            );

            if (!hasExcludedName) {
              final busPath = pathParts.join('.');
              final busParent =
                  pathParts.sublist(0, pathParts.length - 1).join('.');
              return (
                busPath: busPath,
                busParent: busParent,
                tableName: tableName,
              );
            }
          }
        }
      }
    }

    return null;
  }

  /// split IRQ  string ，at process  child  string ， return  return resultcolumn table 
  /// [line] IRQsstring
  List<int> getIntForLine(String line) {
    List<int> irqList = [];
    for (var i in line.split(":")) {
      irqList.add(sameLineIrq(i));
    }
    return irqList;
  }

  ///  target  same 1line  IRQ（ in  determine  please  require ） value  require  and ， natural  after  return  return  require  and result
  /// [irq] IRQsstring
  int sameLineIrq(String irq) {
    int total = 0;
    for (var i in irq.split(",")) {
      if (i == "#") {
        ///  when IRQ value  for # time , table  show  empty  value , direct  receive skip
        continue;
      }
      try {
        int irqValue = int.parse(i.replaceFirst('0x', ''));
        if (irqValue > 15 || irqValue < 0) {
          ///  when IRQ value  exceed  out range time , direct  receive skip
          continue;
        }
        total |= util.convertIrqToInt(irqValue);
      } catch (e) {
        ///  when IRQ value  not  is  whole  number  time , direct  receive skip
        continue;
      }
    }
    return total;
  }

  ///  from IRQsstring in extract106 advance  control  value 
  /// [irq] IRQsstring
  /// [remIrq]  require  remove  IRQscolumn table 
  List<Map<String, dynamic>> getHexFromIrqs(String irq, List<int>? remIrq) {
    List<Map<String, dynamic>> lines = [];
    List<int> remd = [];

    for (var a in irq.split("-")) {
      var parts = a.split("|");
      int index = int.parse(parts[0].replaceFirst('0x', ''));
      String i = parts[1];

      List<int> find = getIntForLine(i);
      List<int> repl = List.filled(find.length, 0);

      if (remIrq != null && remIrq.isNotEmpty) {
        ///  duplicate  control findcolumn table  to replcolumn table 
        repl = List.from(find);
        for (var x in remIrq) {
          int rem = util.convertIrqToInt(x);
          //  by  position  operate  action 
          List<int> repl1 =
              repl.map((y) => y >= rem ? y & (rem ^ 0xFFFF) : y).toList();

          if (!util.deepEquals(repl, repl1)) {
            ///  when repl and repl1 not  mutual  etc.  time , description  have IRQ be  remove 
            ///  record  record  remove  IRQ
            remd.add(x);
          }

          /// updatereplcolumn table  for repl1
          repl = List.from(repl1);
        }
      }

      String findHex = find.map((x) => "22${util.getHexFromInt(x)}").join('');
      String replHex = repl.map((x) => "22${util.getHexFromInt(x)}").join('');

      Map<String, dynamic> patch = {
        "irq": i,
        "find": findHex,
        "repl": replHex,
        "remd": remd,
        "index": index,
        "changed": findHex != replHex,
      };

      lines.add(patch);
    }

    return lines;
  }

  ///  from IRQsstring in extract all IRQ value 
  /// [irq] IRQsstring
  List<int> getAllIrqs(String irq) {
    Set<int> irqList = {};
    //  by  "-" split output  enter string
    for (String a in irq.split("-")) {
      //  by  "|" split and  get  #2  element  element 
      String i = a.split("|")[1];
      //  by  ":" split
      for (String x in i.split(":")) {
        //  by  "," split
        for (String y in x.split(",")) {
          if (y == "#") {
            continue;
          }
          irqList.add(int.parse(y));
        }
      }
    }
    //  setconvert for column table  and  order  sequence 
    return irqList.toList()..sort();
  }

  ///    according to  select  select ,getIRQ
  ///    select  select  option（C, O, L etc. ）
  ///   O: select  select  conflict   IRQ， and   its  with  targetIrqs  related  link 
  ///   L: select  select  Legacy IRQ， and   its  with  empty column table  related  link 
  ///   C: select  select  Legacy IRQ， and   its  with  targetIrqs  related  link 
  ///    custom  output  enter  format  format ：DEV1:IRQ1,IRQ2
  (Map<String, List<int>> irqPatches, List<String> currentLegacyIRQs)
      getIrqChoice(
    Map<String, Map<String, dynamic>>? irqs, {
    List<String> namesAndHids = const [
      "PIC",
      "IPIC",
      "TMR",
      "TIMR",
      "RTC",
      "RTC0",
      "RTC1",
      "PNPC0000",
      "PNP0100",
      "PNP0B00",
    ],
    String selectedOption = "",
  }) {
    //  check  is  whether  have  IRQ info
    if (irqs == null || irqs.isEmpty) {
      Log.warning(" no  have  occur  present  any  any  IRQ info!");
      return ({}, []);
    }

    if (selectedOption.isEmpty) {
      Log.warning(" when  before option or  or  custom IRQs for  empty ! cannot generateIRQPatch!");
      return ({}, []);
    }

    final validOptions = {'C', 'O', 'L'};
    final upperCaseOption = selectedOption.toUpperCase();
    if (!validOptions.contains(upperCaseOption)) {
      Log(" when  before  custom IRQs: $upperCaseOption");
    }

    int hidPad = irqs.values
        .map((irqData) => irqData['hid']?.length ?? 0)
        .reduce((a, b) => a > b ? a : b);
    //  according to device name and  HID  confirm  define defaultdevice
    List<String> defaults = irqs.keys.where((key) {
      var irqData = irqs[key];
      return namesAndHids.contains(key.toUpperCase()) ||
          namesAndHids.contains(irqData?['hid']?.toUpperCase());
    }).toList();
    List<String> currentLegacyIRQs = [];
    if (irqs.isEmpty) {
      Log.warning("=> Not found any  any  IRQ info!");
    }
    const String kHighlightSymbol = '*';
    const String kEmptySymbol = ' ';
    const int kXPadLength = 4;
    irqs.forEach((x, value) {
      final isHighlighted = x.toUpperCase().containsAny(namesAndHids);
      final prefixSymbol = isHighlighted ? kHighlightSymbol : kEmptySymbol;
      final paddedX = x.padLeft(kXPadLength);
      final hidPart = hidPad == 0
          ? ''
          : value['hid'] != null
              ? "- ${value['hid'].toString().padLeft(hidPad)}"
              : ''.padLeft(hidPad + 2);

      final irqContent = getAllIrqs(value['irq']);
      final irqLine = hidPad == 0
          ? '$prefixSymbol $paddedX: $irqContent'
          : '$prefixSymbol $paddedX $hidPart: $irqContent';

      currentLegacyIRQs.add(irqLine);
    });
    Map<String, List<int>> devices = {};

    //  according to  select  select  option come updatedevice and IRQconfig
    if (selectedOption.toLowerCase() == "o") {
      //  only  conflict   IRQ
      for (var x in irqs.keys) {
        //   target  label  IRQ  related  link  to  all device
        devices[x] = List.from(targetIrqs);
      }
    } else if (selectedOption.toLowerCase() == "l") {
      // Legacy device， clear  empty  IRQ config
      for (var x in defaults) {
        //  only  Legacy device， not  related  link  any  any  IRQ
        devices[x] = [];
      }
    } else if (selectedOption.toLowerCase() == "c") {
      //  only  Legacy device and  conflict  IRQ
      for (var x in defaults) {
        //   target  label  IRQ  related  link  to  Legacy device
        devices[x] = List.from(targetIrqs);
      }
    } else {
      //  prompt  provide   custom  output  enter 
      if (selectedOption.isNotEmpty) {
        var inputs = selectedOption.split(" ");
        for (var i in inputs) {
          if (i.isEmpty) continue;

          try {
            var parts = i.split(":");
            var name = parts[0].toUpperCase();
            var val = parts.length > 1
                ? parts[1]
                    .split(",")
                    .where((e) => e.trim().isNotEmpty)
                    .map((e) => int.parse(e.trim().replaceFirst('0x', '')))
                    .toList()
                : <int>[];
            devices[name] = val;
          } catch (e) {
            Log.error(" custom  IRQ column table  format  format Error！！!device of  between  use  empty  format  split  separate ，IRQ of  between  use  comma  number  split  separate ！！！");
            Log("=>  show  instance ：RTC:0 IPIC:2 TMR:8,11 \n");
            // Error, return  return  empty map
            return ({}, []);
          }
        }
      }
    }

    return (devices, currentLegacyIRQs);
  }

  /// column out  all  in  determine 
  Future<Map<String, Map<String, String>>> listIrqs() async {
    if (!await ensureDSDT()) return {};
    //  exist  storage device and  its  in  determine info
    Map<String, Map<String, String>> devices = {};
    String? currentDevice;
    String? currentHid;
    bool irq = false;
    bool lastIrq = false;
    int irqIndex = 0;

    // iterate DSDT  in  line
    var lines = d.getDsdt()?['lines'] ?? '';
    for (int index = 0; index < lines.length; index++) {
      String line = lines[index];

      if (d.isHex(line)) {
        // skip all 106 advance  control line
        continue;
      }

      if (irq) {
        // get IRQ  value 
        String num = line.split("{")[1].split("}")[0].replaceAll(r" ", "");
        num = num.isEmpty ? "#" : num;

        if (devices.containsKey(currentDevice)) {
          if (lastIrq) {
            //  if  is  connect  continue   IRQ
            devices[currentDevice]!["irq"] =
                "${devices[currentDevice]!["irq"]!}:$num";
          } else {
            //  if skip  to  less 1line
            irqIndex = d.findNextHex(index: index).$2;
            devices[currentDevice]!["irq"] =
                "${devices[currentDevice]!["irq"]!}-$irqIndex|$num";
          }
        } else {
          irqIndex = d.findNextHex(index: index).$2;
          if (currentDevice != null && currentDevice.isNotEmpty) {
            devices[currentDevice] = {"irq": "$irqIndex|$num"};
          }
        }

        irq = false;
        lastIrq = true;
      } else if (line.contains("Device (")) {
        //  if  keep  keep  _HID
        if (currentDevice != null &&
            currentDevice.isNotEmpty &&
            devices.containsKey(currentDevice) &&
            currentHid != null &&
            currentHid.isNotEmpty) {
          // save _HID
          devices[currentDevice]!["hid"] = currentHid;
        }
        lastIrq = false;
        currentHid = null;

        try {
          currentDevice = line.split("(")[1].split(")")[0];
        } catch (e) {
          currentDevice = null;
          continue;
        }
      } else if (line.contains("_HID, ") &&
          currentDevice != null &&
          currentDevice.isNotEmpty) {
        if (line.contains('"')) {
          try {
            currentHid = line.split('"')[1];
            // "Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID"
            //  can  to get to  _HID  =  PNP0C02
            // Log("=> found _HID: $currentHid");
          } catch (e) {
            // "                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID"
            //  cannot get to  _HID ,ignoreError，continueparse down 1line
            Log.error("=> _HID parseError: $e");
          }
        } else {
          //  no  have  double  quote  number ， cannot get _HID，skip
          currentHid = null;
        }
      } else if (line.contains("IRQNoFlags") &&
          currentDevice != null &&
          currentDevice.isNotEmpty) {
        //  down 1line is  in  determine info
        irq = true;
      }
      //  check  is  whether  is  pad  pad line
      else if (line
          .replaceAll(r"{", "")
          .replaceAll(r"}", "")
          .replaceAll(r"(", "")
          .replaceAll(r")", "")
          .replaceAll(r" ", "")
          .split("//")[0]
          .isNotEmpty) {
        // reset lastIrq， because  for  it  not  is  connect  continue  
        lastIrq = false;
      }
    }

    //  if  require ， keep  keep  most  after   _HID
    if (currentDevice != null &&
        currentDevice.isNotEmpty &&
        devices.containsKey(currentDevice) &&
        currentHid != null &&
        currentHid.isNotEmpty) {
      devices[currentDevice]!["hid"] = currentHid;
    }

    return devices;
  }

  /// generate HPET Patch
  /// [devs] device list
  /// [targetIrqs]  target  label  IRQ column table 
  Future<void> ssdtHPET({
    Map<String, Map<String, dynamic>>? devs,
    Map<String, List<int>>? targetIrqs,
  }) async {
    if (!await ensureDSDT()) return;
    // validate devs
    if (devs == null || devs.isEmpty) {
      Log.warning("Not foundvalid device,skip HPET  operate  action !");
      return;
    }
    // validate targetIrqs
    if (targetIrqs == null ||
        targetIrqs.isEmpty ||
        targetIrqs.values.every((list) => list.isEmpty)) {
      Log.warning(" not  prompt  provide valid  IRQs  or  or  IRQs  for  empty ! Aborted!");
      return;
    }
    Log("Locating PNP0103 (HPET) device…");
    var hpets = d.getDevicePathsWithHid(hid: "PNP0103");
    bool hpetFake = hpets.isEmpty;
    List<Map<String, dynamic>> patches = [];
    bool hpetSTA = false;
    String? name;
    Map? sta;
    //  define  meaning  CRS  and  XCRS  value 
    String crs = "5F435253";
    String xcrs = "58435253";
    String padl = '', padr = '';
    String? memAccess, memBase, memLength;
    bool gotMem = false;
    List hpet = [];
    if (hpets.isNotEmpty) {
      name = hpets[0][0];
      Log("=>  locate  at  $name");
      //  locate  _STA method
      sta = getStaVar(devHid: "PNP0103", devName: "HPET");
      if (sta['patches'] != null && sta['patches'].isNotEmpty) {
        hpetSTA = true;
        patches.addAll(sta['patches']);
      }
      //  locate  HPET   _CRS method/name
      Log("Locating HPET   _CRS method/name…");
      hpet = d.getMethodPaths(obj: "$name._CRS");
      if (hpet.isEmpty) {
        hpet = d.getNamePaths(obj: "$name._CRS");
      }
      if (hpet.isEmpty) {
        //  check  XCRS method/name is  whether  already  correspond  use rename
        var xcrsPaths = d.getMethodPaths(obj: "$name.XCRS");
        if (xcrsPaths.isEmpty) {
          xcrsPaths = d.getNamePaths(obj: "$name.XCRS");
        }
        if (xcrsPaths.isEmpty) {
          Log.warning("=>  cannot  locate  $name._CRS！Aborted!");
        } else {
          Log.warning("=>  cannot  locate  $name._CRS！");
          Log.warning("=> _CRS similar  almost  already  be  name  name  for  XCRS！");
          Log.warning("=>  please disableDSDT in  this device  _CRS  to  XCRS  rename，reboot after  again  try !\n");
        }
        return;
      }

      Log("=> Located at $name._CRS");
      var crsIndex = d.findNextHex(index: hpet[0][1]).$2;
      Log("=> Found at index: $crsIndex");
      Log("=> Type: ${hpet[0].last}");
      // Search for Memory32Fixed in HPET _CRS method
      Log("=> Checking Memory32Fixed…");

      bool primed = false;

      // Iterate through each line in HPET scope
      for (var line in d.getScope(
        startingIndex: hpets[0][1],
        stripComments: true,
      )) {
        if (line.contains("Memory32Fixed (")) {
          try {
            //  from line in extract inside  exist  access  issue type
            memAccess = line.split("(")[1].split(",")[0];
          } catch (e) {
            Log.warning("=>  cannot  confirm  define  inside  exist  access  issue type！");
            break;
          }
          primed = true;
          continue;
        }
        if (!primed) {
          continue;
        } else if (line.contains(")")) {
          //  already  to  reach scopeend
          break;
        }
        //  already ready good  and  not  to  reach scopeend -  try  try get Base  and  Length
        String val = "";
        try {
          val = line
              .trim()
              .split(",")[0]
              .replaceAll(r"Zero", "0x0")
              .replaceAll(r"One", "0x1");
        } catch (e) {
          //  cannot   Base  or  Length convert for  whole  number  -  may  make  use  variable， return  return  to default value 
          Log.warning("=>  cannot   Base  or  Length convert for  whole  number ！");
          break;
        }

        //  give  memBase  assign  value 
        if (memBase == null) {
          memBase = val;
        } else {
          memLength = val;
          //  already get to  Base  and  Length， jump  out  loop  loop 
          break;
        }
      }
      //  check  is  whether get to   all  require   value 
      gotMem = memAccess != null &&
          memAccess.isNotEmpty &&
          memBase != null &&
          memBase.isNotEmpty &&
          memLength != null &&
          memLength.isNotEmpty;
      if (gotMem) {
        Log("=> get to  $memAccess $memBase => $memLength");
      } else {
        memAccess = "ReadWrite";
        memBase = "0xFED00000";
        memLength = "0x00000400";
        Log.warning("=> Not found！");
        Log.warning("=>  make  use default value  $memBase => $memLength");
      }

      /// find most  short   unique  pad  pad 
      final pads = d.getShortestUniquePad(currentHex: crs, index: crsIndex);
      padl = pads.$1;
      padr = pads.$2;

      patches.add({
        "Comment":
            "${name?.split(".").last.replaceFirst(RegExp(r'\\'), "")} _CRS to XCRS rename",
        "Find": padl + crs + padr,
        "Replace": padl + xcrs + padr,
      });
    } else {
      Log.warning("=> Not found！");
      name = getLpcName(skipEc: true, skipCommonNames: true);
      if (name == null) {
        return;
      }
    }

    Log("");
    Log("Creating IRQ Patch…");
    if (sta != null &&
        sta.isNotEmpty &&
        sta['patches'] != null &&
        sta['patches'].isNotEmpty) {
      Log(
        "=> ${name?.split('.').last.replaceAll('\\', '')} _STA to XSTA rename:",
      );
      Log("           Find: ${patches[0]['Find']}");
      Log("     Replace: ${patches[0]['Replace']}");
      Log("");
    }
    if (!hpetFake) {
      Log(
        "=> ${name?.split('.').last.replaceAll('\\', '')} _CRS to XCRS rename:",
      );
      Log("           Find: $padl$crs$padr");
      Log("     Replace: $padl$xcrs$padr");
      Log("");
    }
    Log("Checking IRQ…");
    // validate targetIrqs
    if (targetIrqs.isEmpty) {
      Log("IRQ  for  empty !skip…\n");
    }
    if (devs.isEmpty) {
      Log.warning("=>  no  have  require  patch   inside  contain ！");
      Log("");
    }

    var savedDSDT = d.getDsdt()?["raw"];
    var uniquePatches = {};
    var genericPatches = [];

    for (var dev in devs.keys) {
      if (!targetIrqs.containsKey(dev)) {
        continue;
      }

      var irqPatches = getHexFromIrqs(devs[dev]!['irq'] ?? '', targetIrqs[dev]);
      var i = irqPatches.where((x) => x['changed'] == true).toList();

      for (var t in i) {
        if (!t['changed']) {
          //  not  advance line any  any  patch  - skip
          continue;
        }

        //  try  try  already  know   result  footer  value ：7900、4701  and  8609 ——  simultaneously  allow  allow  most  multiple  8   character  symbol   pad  pad 
        String pattern = r"(" + t["find"] + r"(.{0,8})(7900|4701|8609))";
        var regExp = RegExp(pattern);
        var index = t['index'];
        var result = d.getHexStartingAt(index);
        var hex = result.$1;
        var matches = regExp.allMatches(hex).toList();
        //  if  have match，extract all  catch  get  group 
        if (matches.isNotEmpty) {
          // List<String> result = [
          //   matches.first.group(1) ?? "",
          //   matches.first.group(2) ?? "",
          //   matches.first.group(3) ?? "",
          // ];
          // Log("  $result"); //  output  out resultarray
        } else {
          Log("Not foundmatch item 。");
        }
        if (matches.isEmpty) {
          Log.warning(" missing  less  $dev   IRQ Patch result  footer （${t['find']}）！ already skip…");
          continue;
        }

        if (matches.length > 1) {
          // found multiple  match item ！  it  s  all add for  find/replace  entry 
          for (var match in matches) {
            genericPatches.add({
              'remd': ((t['remd'] as List).toSet().toList()..sort()).join(','),
              'orig': t['find'],
              'find': t['find'] + match.group(2)! + match.group(3)!,
              'repl': t['repl'] + match.group(2)! + match.group(3)!,
            });
          }
          continue;
        }

        //  if  only  have 1 match item 
        var ending = matches.first.group(2)! + matches.first.group(3)!;
        final (padl, padr) = d.getShortestUniquePad(
          currentHex: t['find'] + ending,
          index: t['index'],
        );
        var tPatch = padl + t['find'] + ending + padr;
        var rPatch = padl + t['repl'] + ending + padr;

        if (!uniquePatches.containsKey(dev)) {
          uniquePatches[dev] = [];
        }

        uniquePatches[dev]!.add({
          'dev': dev,
          'remd': ((t['remd'] as List).toSet().toList()..sort()).join(','),
          'orig': t['find'],
          'find': tPatch,
          'repl': rPatch,
        });
      }
    }

    //  check  unique   IRQ  patch  item 
    if (uniquePatches.isNotEmpty) {
      uniquePatches.forEach((x, patchesList) {
        for (int i = 0; i < patchesList.length; i++) {
          var p = patchesList[i];
          String patchName = "$x IRQ ${p['remd']} Patch";

          if (patchesList.length > 1) {
            patchName += " - ${i + 1} of ${patchesList.length}";
          }

          patches.add({
            "Comment": patchName,
            "Find": p["find"],
            "Replace": p["repl"],
          });

          Log("=> $patchName");
          Log("            Find: ${p["find"]}");
          Log("      Replace: ${p["repl"]}");
          Log("");
        }
      });
    }

    if (genericPatches.isNotEmpty) {
      List<Map<String, dynamic>> genericSet = [];
      //  confirm  keep  not  will  duplicate  duplicate  find  value 
      for (var x in genericPatches) {
        bool exists = genericSet.any((patch) => util.deepEquals(patch, x));
        if (!exists) {
          genericSet.add(x);
        }
      }

      Log.warning(" to  down  may  not  is  unique  ，default already disable！\n");

      for (int i = 0; i < genericSet.length; i++) {
        var x = genericSet[i];
        String patchName =
            "Generic IRQ Patch ${i + 1} of ${genericSet.length} - ${x['remd']} - ${x['orig']}";

        patches.add({
          "Comment": patchName,
          "Find": x["find"],
          "Replace": x["repl"],
          "Disabled": true,
          "Enabled": false,
        });

        Log("=> $patchName");
        Log("         Find: ${x["find"]}");
        Log("   Replace: ${x["repl"]}");
        Log("");
      }
    }
    d.getDsdt()?["raw"] = savedDSDT;
    final String ssdtName = "SSDT-HPET";
    Log("Creating precompiled $ssdtName.dsl...");
    var ssdt = '';
    if (hpetFake) {
      Log("Creating1 spoof HPET device…");
      ssdt = """
DefinitionBlock ("", "SSDT", 2, "RAPID", "HPET", 0x00000000)
{
    External ([[name]], DeviceObj)

    Scope ([[name]])
    {
        Device (HPET)
        {
            Name (_HID, EisaId ("PNP0103") 
            Name (_CID, EisaId ("PNP0C01") 
            Method (_STA, 0, NotSerialized)  
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Name (_CRS, ResourceTemplate ()  
            {
                IRQNoFlags ()
                    {0,8}
                Memory32Fixed (ReadWrite, // Access Type
                    0xFED00000,           // Address Base
                    0x00000400,           // Address Length
                    )
            })
        }
    }
}"""
          .replaceAll(r"[[name]]", name ?? '');
    } else {
      // initialize SSDT config  base  current  part  split 
      ssdt = """//
// Supplementary HPET _CRS from Goldfish64
// requires at least the HPET's _CRS to XCRS rename
DefinitionBlock ("", "SSDT", 2, "RAPID", "HPET", 0x00000000)
{
    External ([[name]], DeviceObj)
    External ([[name]].XCRS, [[type]])

    Scope ([[name]])
    {
        Name (BUFX, ResourceTemplate ()
        {
            IRQNoFlags ()
                {0,8}
            // [[mem]]
            Memory32Fixed ([[mem_access]],
                [[mem_base]],           
                [[mem_length]],          
            )
        })
        Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
        {
            If (LOr (_OSI ("Darwin"), LNot(CondRefOf ([[name]].XCRS))))
            {
                Return (BUFX)
            }
            // Not macOS and XCRS exists - return its result
            Return ([[name]].XCRS[[method]])
        }""";
      // replace [[name]]  for  pass  enter   `name`
      ssdt = ssdt.replaceAll(r"[[name]]", name ?? '');

      //  according to  hpet[0].last   value  select  select  "MethodObj"  or  "BuffObj"
      ssdt = ssdt.replaceAll(
        r"[[type]]",
        hpet[0].last == "Method" ? "MethodObj" : "BuffObj",
      );

      //  according to  `gotMem`  come  select  select  inside  exist configinfo
      ssdt = ssdt.replaceAll(
        r"[[mem]]",
        gotMem
            ? "AccessType/Base/Length pulled from DSDT"
            : "Default AccessType/Base/Length - verify with your DSDT!",
      );

      // replace inside  exist configinfo
      ssdt = ssdt.replaceAll(r"[[mem_access]]", memAccess ?? '');
      ssdt = ssdt.replaceAll(r"[[mem_base]]", memBase ?? '');
      ssdt = ssdt.replaceAll(r"[[mem_length]]", memLength ?? '');

      //  according to  hpet[0].last   value  select  select  is  whether  make  use  "()"
      ssdt = ssdt.replaceAll(
        r"[[method]]",
        hpet[0].last == "Method" ? " ()" : "",
      );

      //  according to  hpetSta  and  mutual  related  item  item  modify config
      if (hpetSTA) {
        List<String> ssdtParts = [];
        bool external = false;

        //  by-one lineat process  ssdt config，insert outside  part  quote  use  XSTA method
        ssdt.split("\n").forEach((line) {
          if (line.trim().contains("External (")) {
            external = true;
          } else if (external) {
            ssdtParts.add("    External ([[name]].XSTA, ${sta?['sta_type']})");
            external = false;
          }
          ssdtParts.add(line);
        });

        // append XSTA method
        ssdt = ssdtParts.join("\n");
        ssdt += "\n";
        ssdt += """
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            // Return 0x0F if booting macOS or the XSTA method
            // no longer exists for some reason
            If (LOr (_OSI ("Darwin"), LNot (CondRefOf ([[name]].XSTA))))
            {
                Return (0x0F)
            }
            // Not macOS and XSTA exists - return its result
            Return ([[name]].XSTA[[called]])
        }""";
        ssdt = ssdt.replaceAll(r"[[name]]", name ?? '');
        ssdt = ssdt.replaceAll(
          r"[[called]]",
          sta?['sta_type'] == "MethodObj" ? " ()" : "",
        );
      }

      //  disable  most  end   include  number 
      ssdt += "\n";
      ssdt += """
    }
}""";
    }
    //write to SSDTfile
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": hpetFake
          ? "HPET Device Fake"
          : "${name?.split('.').last.replaceAll('\\', '')} _CRS - requires _CRS to XCRS rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, patches: patches);
  }

  Future<void> ssdtPNLF({
    bool prebuilt = false,
    int? uid = 99,
    bool? getIgpu = false,
    String? manualIGPUPath,
  }) async =>
      prebuilt
          ? await _ssdtPNLFPrebuilt()
          : await _ssdtPNLF(
              uid: uid,
              getIgpu: getIgpu,
              manualIGPUPath: manualIGPUPath,
            );

  bool _isExactPnlfDevicePath(List<dynamic> pathInfo) {
    if (pathInfo.length < 3 || pathInfo[2] != "Device") return false;

    final lastSegment = pathInfo[0]
        .toString()
        .split(".")
        .last
        .replaceAll(RegExp(r"_+$"), "")
        .toUpperCase();
    return lastSegment == "PNLF";
  }

  List<_NativePnlfDevice> _findNativePnlfDevices() {
    final matches = <_NativePnlfDevice>[];
    final sortedTableNames = sortedNicely(d.acpiTables.keys.toList());

    for (final tableName in sortedTableNames) {
      final rawTable = d.acpiTables[tableName];
      if (rawTable is! Map<String, dynamic>) continue;

      final paths = d.getPathOfType(
        objType: "Device",
        obj: "PNLF",
        table: rawTable,
      );
      for (final pathInfo in paths) {
        if (!_isExactPnlfDevicePath(pathInfo)) continue;
        matches.add((tableName: tableName, table: rawTable, path: pathInfo));
      }
    }

    return matches;
  }

  ///  backlight fix
  /// [uid] UID
  /// [getIgpu] UID=14 time , is  whether  contains GPU register  exist  device  Gen  code 
  /// [manualIGPUPath]  manual  dynamic  specified  iGPU Path
  Future<void> _ssdtPNLF({
    int? uid = 99,
    bool? getIgpu = false,
    String? manualIGPUPath,
  }) async {
    if (!await ensureDSDT()) return;
    //  check  is  whether  prompt  provide  valid  uid
    if (uid == null) {
      Log.warning(" not  prompt  provide valid  UID，abort operate  action ！");
      return;
    }

    final uidList = PNLFUIDs.map((item) => item['UID']).toList();
    if (!uidList.contains(uid)) {
      Log.warning("$uid  is 1  custom   UID， may  require  manual  dynamic  define  control set， or  or  may  root  current  not  receive supported!");
    }

    String igpu = "";
    bool guessed = false;
    bool manual = false;
    bool getIGpuInfo = false;
    if (uid == 14) {
      Log("");
      Log.warning(
        "Note: Intel  special  you  #1 Gen Arrandale, #2 Gen Sandy Bridge, #3 Gen Ivy Bridge Default use UID:14, but  is  have  some  machine  device  make  use UID: 14  will  encounter  to  most  large  brightness  receive  limit  or  its  other  issue  issue . for   resolve  this  some  issue  issue ,requiredset currently  confirm   iGPU（ collection  succeed  GPU ） device path， and  may  require  patch  pad IGPU register  exist  device info",
      );
      Log("");
      getIGpuInfo = getIgpu ?? false;
    }
    final String ssdtName = "SSDT-PNLF";
    Log("Creating precompiled $ssdtName.dsl...");
    //  open  print  all  use  UID， make  use   platform  and  target  correspond  PWMMax
    for (var item in PNLFUIDs) {
      if (item['UID'] == uid) {
        Log("=>  make  use  UID: ${item['UID']}");
        Log("=>  applicable to  platform : ${item['Platform']}");
        break;
      }
    }
    //  check  is  whether build UID  for  14   SSDT
    if (getIGpuInfo) {
      if (uid == 14 && (manualIGPUPath == null || manualIGPUPath.isEmpty)) {
        Log(" not  prompt  provide valid iGPU Path， try  try  self  dynamic find...");
      }
      Log(" currently  in  search  find  position  at  0x00020000   iGPU device…");
      final tableNameList = d.acpiTables.keys.toList();
      final sortedTableNames = sortedNicely(tableNameList, first: "DSDT.aml");
      //  #1 stage  segment ： via addressfind iGPU device
      for (var tableName in sortedTableNames) {
        var table = d.acpiTables[tableName];
        Log("Checking $tableName…");
        //  try  try get iGPU device path
        var paths = d.getPathOfType(objType: "Name", obj: "_ADR", table: table);

        for (var path in paths) {
          var adr = getAddressFromLine(path[1], table: table);
          if (adr == 0x00020000) {
            igpu = path[0].substring(0, path[0].length - 5);
            Log("=>  in  $igpu atfound iGPU device!");
            break;
          }
        }
        if (igpu.isNotEmpty) break;
      }
      //  if  #1 stage  segment Not found iGPU
      if (igpu.isEmpty) {
        Log(" not  via addressfound iGPU device!");
        Log(" currently  in  search  common  see   iGPU name…");

        //  #2 stage  segment ： via  common  see namefind iGPU
        for (var tableName in sortedTableNames) {
          var table = d.acpiTables[tableName];
          Log("Checking $tableName…");
          // get PCI  root device path
          var pciRoots = [
            d.getDevicePathsWithHid(hid: "PNP0A08", table: table),
            d.getDevicePathsWithHid(hid: "PNP0A03", table: table),
            d.getDevicePathsWithHid(hid: "ACPI0016", table: table),
          ];

          List<dynamic> external = [];
          table["lines"]?.forEach((line) {
            final trimmedLine = line.toString().trim();
            if (!trimmedLine.startsWith("External (")) return;
            try {
              final pathPart = trimmedLine.split('(')[1].split(', ')[0];
              final processedPath = pathPart
                  .split('.')
                  .map(
                    (segment) => segment
                        .replaceAll('\\', '')
                        .replaceAll(RegExp(r'_+$'), ''),
                  )
                  .join('.');
              external.add('\\$processedPath');
            } catch (_) {
              // ignore exception 
              debugPrint("Error processing line: $trimmedLine");
            }
          });

          for (var root in pciRoots) {
            for (var name in [
              "IGPU",
              "_VID",
              "VID0",
              "VID1",
              "GFX0",
              "VGA",
              "_VGA",
            ]) {
              if (root.isEmpty) {
                break;
              }
              var testPath = "${root[0]}.$name";
              var devicePaths = d.getDevicePaths(obj: testPath, table: table);
              String? device;
              if (devicePaths.isNotEmpty) {
                /// found iGPU device path
                device = devicePaths[0][0];
              } else {
                /// iterate outside  part Path，find is  whether  have  audio  declare 
                device = external.firstWhere(
                  (x) => testPath == x,
                  orElse: () => null,
                );
              }

              /// Not found iGPU device path,continue
              if (device == null) continue;

              ///  check  is  whether  have  _ADR, if  have , then skip, because  for  it  in  of  before   loop  loop  in  is Error 
              if (d
                  .getPathOfType(
                    objType: "Name",
                    obj: "$device._ADR",
                    table: table,
                  )
                  .isNotEmpty) {
                continue;
              }

              /// found iGPU device path
              igpu = device;
              guessed = true;
              Log("=>  in  $igpu found at  may   iGPU device");
            }
          }

          /// found iGPU device path,exit
          if (igpu.isNotEmpty) break;
        }
      }
    }

    if (getIGpuInfo && (igpu.isEmpty || guessed)) {
      if (igpu.isNotEmpty) {
        Log(" in  $igpu found at  may   iGPU device\n");
      }

      ///  if Not foundvalid  iGPU Path
      if (igpu.isEmpty) {
        if (!guessed) {
          Log.warning(" in  pass  pass   ACPI  table  in Not foundvalid  iGPU Path!\n");
        }
        if (manualIGPUPath == null || manualIGPUPath.isEmpty) {
          Log.warning(
            " please Enter iGPU ACPI path to use。 every  Path element  element   character  symbol  limit  for  4   character  letter number character  symbol （ to  character  letter  or  down  plan  thread  open  header ）， and  use  empty  format  split  separate 。 e.g. : SB.PCI0.GFX0\n",
          );
        } else {
          Log(" already  by  according  give  define iGPUPath, manual  dynamic set for  $manualIGPUPath \n");
        }

        ///  pass  enter  IGPUdeviceaddress
        if (manualIGPUPath != null && manualIGPUPath.isNotEmpty) {
          List<String> parts =
              manualIGPUPath.replaceFirst("\\", "").toUpperCase().split(".");
          String valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_";
          String noStart = "0123456789";

          if (parts.any(
            (p) =>
                p.isEmpty ||
                p.length > 4 ||
                noStart.contains(p[0]) ||
                p.split("").any((x) => !valid.contains(x)),
          )) {
            Log("invalid  iGPU Path：$manualIGPUPath");
          }
          parts = parts.map((p) => p.replaceAll(RegExp(r"_+$"), "")).toList();
          igpu = "\\${parts.join(".")}";
          guessed = false;
          manual = true;
        }
      }
    }

    List<Map<String, dynamic>> patches = [];

    final tableNameList = d.acpiTables.keys.toList();
    final sortedTableNames = sortedNicely(tableNameList);

    Log("Checking ACPI  table  in exists native  PNLF device…");
    final nativePnlfDevices = _findNativePnlfDevices();
    if (nativePnlfDevices.isNotEmpty) {
      final nativePnlf = nativePnlfDevices.first;
      Log("=> already in ${nativePnlf.tableName} found native  PNLF device: ${nativePnlf.path[0]}");
      Log("=>  require   native  PNLF rename for  XNLF, GeneratingrenamePatch…");
      patches.add({
        "Comment": "PNLF to XNLF rename - requires $ssdtName.aml",
        "Find": "504E4C46",
        "Replace": "584E4C46",
        "Table": nativePnlf.table,
      });
    } else {
      Log("=> Not found native  PNLF device!");
      Log("=>  no  require generate PNLF to XNLF renamePatch!");
    }

    // NBCF 2 advance  control  model  format 
    final nbcfOld = util.getHexBytes("084E4243460A00");
    final nbcfNew = util.getHexBytes("084E42434600");
    // initialize label  log 
    bool hasNbcfOld = false;
    bool hasNbcfNew = false;
    // iterate all  ACPI  table 
    for (final tableName in sortedTableNames) {
      final table = d.acpiTables[tableName]!;

      //  check  NBCF ( legacy  version )
      if (!hasNbcfOld &&
          table["raw"] != null &&
          table["raw"].isNotEmpty &&
          util.containsSublist(table["raw"], nbcfOld)) {
        Log("in $tableName check  test  to  Name (NBCF, 0x00), GeneratingPatch…");
        hasNbcfOld = true;
        patches.add({
          "Comment": "NBCF 0x00 to 0x01 for BrightnessKeys.kext",
          "Find": "084E4243460A00",
          "Replace": "084E4243460A01",
          "Enabled": true,
          "Disabled": false,
        });
      }

      //  check  NBCF ( new  version )
      if (!hasNbcfNew &&
          table["raw"] != null &&
          table["raw"].isNotEmpty &&
          util.containsSublist(table["raw"], nbcfNew)) {
        Log("in $tableName check  test  to  Name (NBCF, Zero), GeneratingPatch…");
        hasNbcfNew = true;
        patches.add({
          "Comment": "NBCF Zero to One for BrightnessKeys.kext",
          "Find": "084E42434600",
          "Replace": "084E42434601",
          "Enabled": true,
          "Disabled": false,
        });
      }

      //  if  two  kind  model  format  all  already  check  test  to ， then  prompt  before exit
      if (hasNbcfOld && hasNbcfNew) {
        break;
      }
    }

    String ssdt = """//
// Much of the info pulled from: https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-PNLF.dsl
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "PNLF", 0x00000000)
{""";
    if (igpu.isNotEmpty) {
      ssdt += """
    External ([[igpu_path]], DeviceObj)
""";
    }
    ssdt += """
    Device (PNLF)
    {
        Name (_HID, EisaId ("APP0002"))  // _HID: Hardware ID
        Name (_CID, "backlight")  // _CID: Compatible ID
        Name (_UID, [[uid_value]])  // _UID: Unique ID: [[uid_dec]]
        
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0B)
            }
            Else
            {
                Return (Zero)
            }
        }""";
    if (igpu.isNotEmpty) {
      ssdt += """
        Method (_INI, 0, Serialized)
        {
            If (LAnd (_OSI ("Darwin"), CondRefOf ([[igpu_path]])))
            {
                OperationRegion ([[igpu_path]].RMP3, PCI_Config, Zero, 0x14)
                Field ([[igpu_path]].RMP3, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x02), GDID,16,
                    Offset (0x10), BAR1,32,
                }
                // IGPU PWM backlight register descriptions:
                //   LEV2 not currently used
                //   LEVL level of backlight in Sandy/Ivy
                //   P0BL counter, when zero is vertical blank
                //   GRAN see description below in INI1 method
                //   LEVW should be initialized to 0xC0000000
                //   LEVX PWMMax except FBTYPE_HSWPLUS combo of max/level (Sandy/Ivy stored in MSW)
                //   LEVD level of backlight for Coffeelake
                //   PCHL not currently used
                OperationRegion (RMB1, SystemMemory, BAR1 & ~0xF, 0xe1184)
                Field(RMB1, AnyAcc, Lock, Preserve)
                {
                    Offset (0x48250),
                    LEV2, 32,
                    LEVL, 32,
                    Offset (0x70040),
                    P0BL, 32,
                    Offset (0xc2000),
                    GRAN, 32,
                    Offset (0xc8250),
                    LEVW, 32,
                    LEVX, 32,
                    LEVD, 32,
                    Offset (0xe1180),
                    PCHL, 32,
                }
                // Now fixup the backlight PWM depending on the framebuffer type
                // At this point:
                //   Local4 is RMCF.BLKT value (unused here), if specified (default is 1)
                //   Local0 is device-id for IGPU
                //   Local2 is LMAX, if specified (Ones means based on device-id)
                //   Local3 is framebuffer type

                // Adjustment required when using WhateverGreen.kext
                Local0 = GDID
                Local2 = Ones
                Local3 = 0

                // check Sandy/Ivy
                // #define FBTYPE_SANDYIVY 1
                If (LOr (LEqual (1, Local3), LNotEqual (Match (Package()
                {
                    // Sandy HD3000
                    0x010b, 0x0102,
                    0x0106, 0x1106, 0x1601, 0x0116, 0x0126,
                    0x0112, 0x0122,
                    // Ivy
                    0x0152, 0x0156, 0x0162, 0x0166,
                    0x016a,
                    // Arrandale
                    0x0046, 0x0042,
                }, MEQ, Local0, MTR, 0, 0), Ones)))
                {
                    if (LEqual (Local2, Ones))
                    {
                        // #define SANDYIVY_PWMMAX 0x710
                        Store (0x710, Local2)
                    }
                    // change/scale only if different than current...
                    Store (LEVX >> 16, Local1)
                    If (LNot (Local1))
                    {
                        Store (Local2, Local1)
                    }
                    If (LNotEqual (Local2, Local1))
                    {
                        // set new backlight PWMMax but retain current backlight level by scaling
                        Store ((LEVL * Local2) / Local1, Local0)
                        Store (Local2 << 16, Local3)
                        If (LGreater (Local2, Local1))
                        {
                            // PWMMax is getting larger... store new PWMMax first
                            Store (Local3, LEVX)
                            Store (Local0, LEVL)
                        }
                        Else
                        {
                            // otherwise, store new brightness level, followed by new PWMMax
                            Store (Local0, LEVL)
                            Store (Local3, LEVX)
                        }
                    }
                }
            }
        }""";
    }
    ssdt += """
    }
}""";

    // replace occupy  position  symbol 
    ssdt = ssdt
        .replaceAll(r"[[uid_value]]", util.hexy(uid))
        .replaceAll(r"[[uid_dec]]", uid.toString())
        .replaceAll(r"[[igpu_path]]", igpu);
    // write SSDT file
    writeSSDT(ssdtName, ssdt);
    Map<String, dynamic> acpi = {
      "Comment":
          "Defines PNLF device with a _UID of $uid for backlight control${patches.any((p) => p["Comment"].contains("XNLF")) ? " - requires PNLF to XNLF rename" : ""}",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };

    // generate plist file
    makePlist(acpi: acpi, patches: patches, replace: true);
    if (igpu.isNotEmpty) {
      if (guessed) {
        Log.warning("Note: iGPU Path be  guess  test  for  $igpu\n     make  use  before  please verify!");
      }
      if (manual) {
        Log.warning("Note: iGPU Path already  manual  dynamic set for  $igpu   please  in  make  use  before  service  must  confirm  recognize  this Path is  whether  currently  confirm !");
      }
    }

    hasNbcfOld = patches.any((p) => p["Comment"].contains("NBCF 0x00"));
    hasNbcfNew = patches.any((p) => p["Comment"].contains("NBCF Zero"));
    if (hasNbcfOld || hasNbcfNew) {
      Log.warning(
        "Note：NBCF patch generated (depends on BrightnessKeys.kext), enabled by default! Disable if issues occur!",
      );
    }
  }

  Future<void> ssdtEC({
    bool prebuilt = false,
    bool isLaptop = false,
    bool injectUSBPower = false,
  }) async =>
      prebuilt
          ? await _ssdtECPrebuilt(
              isLaptop: isLaptop,
              injectUSBPower: injectUSBPower,
            )
          : await _ssdtEC(isLaptop: isLaptop, injectUSBPower: injectUSBPower);

  /// spoofEC control  control  device 
  /// [isLaptop]  is  whether  for laptop
  /// [injectUSBPower]
  Future<void> _ssdtEC({
    bool isLaptop = false,
    bool injectUSBPower = false,
  }) async {
    if (!await ensureDSDT()) return;
    Log("Locating PNP0C09（EC）device…");
    bool rename = false;
    bool namedEc = false;
    List<String> ecToPatch = [];
    List<String> ecToEnable = [];
    Map<String, dynamic> ecSta = {};
    Map<String, dynamic> ecEnableSta = {};
    List<Map<String, dynamic>> patches = [];
    String? lpcName;
    String ssdtName =
        injectUSBPower ? 'SSDT-EC-USBX-DESKTOP' : 'SSDT-EC-DESKTOP';
    bool ecLocated = false;
    for (var tableName in sortedNicely(d.acpiTables.keys.toList())) {
      var table = d.acpiTables[tableName];
      var ecList = d.getDevicePathsWithHid(hid: "PNP0C09", table: table);

      if (ecList.isNotEmpty) {
        lpcName = ecList.first[0]
            .split(".")
            .sublist(0, ecList.first[0].split(".").length - 1)
            .join(".");
        Log("=> Found in $tableName ${ecList.length}   PNP0C09（EC）device");
        Log("=> Validating...");

        for (var deviceInfo in ecList) {
          String device = deviceInfo[0];
          String origDevice = device;
          Log("=> found $device");

          if (device.split(".").last == "EC") {
            namedEc = true;
            if (!isLaptop) {
              // Rename on non-laptops only
              Log(" => PNP0C09 (EC) device named EC, renaming");
              device =
                  "${device.split(".").sublist(0, device.split(".").length - 1).join(".")}.EC0";
              rename = true;
            }
          }

          var scope = d
              .getScope(
                startingIndex: deviceInfo[1],
                stripComments: true,
                table: table,
              )
              .join("\n");

          if (["_HID", "_CRS", "_GPE"].every((key) => scope.contains(key))) {
            Log("=> Valid PNP0C09 (EC) device");
            ecLocated = true;

            var sta = getStaVar(
              device: origDevice,
              devHid: "PNP0C09",
              devName: origDevice.split(".").last,
              table: table,
            );

            if (!isLaptop) {
              ecToPatch.add(device);
              if (sta["patches"] != null && sta["patches"].isNotEmpty) {
                patches.addAll(sta["patches"]);
                ecSta[device] = sta;
              }
            } else if (sta["patches"] != null && sta["patches"].isNotEmpty) {
              if (staNeedsPatching(sta, table)) {
                ecToEnable.add(device);
                ecEnableSta[device] = sta;
                for (var patch in sta["patches"]) {
                  patch["Enabled"] = false;
                  patch["Disabled"] = true;
                  patches.add(patch);
                }
              } else {
                Log("=> _STA  already  currently  confirm enable, skiprename");
              }
            }
          } else {
            Log("=> invalid  PNP0C09（EC）device");
          }
        }
      }
    }

    if (!ecLocated) {
      Log("=> Not foundvalid  PNP0C09（EC）device,  only  require spoof1 ECdevice i.e.  can ");
    }

    if (isLaptop && namedEc && patches.isEmpty) {
      Log.warning("=> Found name  name   EC device, No need to spoof!\n");
      return;
    }

    lpcName ??= getLpcName(skipEc: true, skipCommonNames: true);

    if (lpcName == null) {
      return;
    }

    String comment = "Faked Embedded Controller";
    if (isLaptop) {
      comment += ' For Laptop';
      ssdtName = injectUSBPower ? 'SSDT-EC-USBX-LAPTOP' : 'SSDT-EC-LAPTOP';
    }
    if (rename) {
      patches.insert(0, {
        "Comment":
            "EC to EC0${ecSta.isEmpty ? "" : " - must come before any EC _STA to XSTA renames!"}",
        "Find": "45435f5f",
        "Replace": "4543305f",
      });
      comment +=
          " - requires EC to EC0 ${ecSta.isEmpty ? "rename" : "and EC _STA to XSTA renames"}";
    } else if (ecSta.isNotEmpty) {
      comment += " - requires EC _STA to XSTA renames";
    }

    Log("Creating $ssdtName.dsl…");

    var ssdt = """
DefinitionBlock ("", "SSDT", 2, "RAPID", "SsdtEC", 0x00001000)
{
    External ([[LPCName]], DeviceObj)
""";
    ssdt = ssdt.replaceAll(r"[[LPCName]]", lpcName);

    for (var x in ecToPatch) {
      ssdt += "    External ($x, DeviceObj)\n";
      if (ecSta.containsKey(x)) {
        ssdt +=
            "    External ($x.XSTA, ${ecSta[x]?["sta_type"] ?? "MethodObj"})\n";
      }
    }

    // iterate ecToEnable
    for (var x in ecToEnable) {
      ssdt += "    External ($x, DeviceObj)\n";
      if (ecEnableSta.containsKey(x)) {
        // add _STA  and  XSTA  quote  use ， because  for Patch may  not enable
        ssdt +=
            "    External ($x._STA, ${ecEnableSta[x]?["sta_type"] ?? "MethodObj"})\n";
        ssdt +=
            "    External ($x.XSTA, ${ecEnableSta[x]?["sta_type"] ?? "MethodObj"})\n";
      }
    }

    // iterate ecToPatch  and add _STA method
    for (var x in ecToPatch) {
      ssdt += """
    Scope ($x)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (${ecSta.containsKey(x) ? "$x.XSTA${ecSta[x]?["sta_type"] == "MethodObj" ? " ()" : ""}" : "0x0F"})
            }
        }
    }
""";
    }

    // iterate ecToEnable  again  force  control enable
    for (var x in ecToEnable) {
      ssdt += """
    If (LAnd (CondRefOf ($x.XSTA), LNot (CondRefOf ($x._STA))))
    {
        Scope ($x)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (${ecEnableSta.containsKey(x) ? "$x.XSTA${ecEnableSta[x]?["sta_type"] == "MethodObj" ? " ()" : ""}" : "Zero"})
                }
            }
        }
    }
""";
    }

    // create virtual  emulate  EC
    if (!isLaptop || !namedEc) {
      ssdt += """
    Scope ($lpcName)
    {
        Device (EC)
        {
            Name (_HID, "ACID0001")  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
""";
    }

    if (injectUSBPower) {
      comment += ' with USB power property support';
      ssdt += """
    Scope (\\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                         0x03                                             // .
                    })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply", 
                    0x13EC, 
                    "kUSBSleepPortCurrentLimit", 
                    0x0834, 
                    "kUSBWakePowerSupply", 
                    0x13EC, 
                    "kUSBWakePortCurrentLimit", 
                    0x0834
                })
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
""";
    }
    ssdt += """
}""";
    // write SSDT file
    final acpi = {"Comment": comment, "Enabled": true, "Path": "$ssdtName.aml"};
    makePlist(acpi: acpi, patches: patches, replace: true);
    writeSSDT(ssdtName, ssdt);
  }

  Future<void> ssdtUSBX({
    bool prebuilt = false,
    Map<String, String>? usbxProps,
  }) async =>
      prebuilt ? null : await _ssdtUSBX(usbxProps: usbxProps);

  /// SSDT-USBX
  /// [usbxProps] USBX property
  Future<void> _ssdtUSBX({Map<String, String>? usbxProps}) async {
    if (!await ensureDSDT()) return;
    if (usbxProps == null || usbxProps.isEmpty) {
      Log.warning("USBXpropertyPatch cannot  for  empty ! Aborted!");
      return;
    }

    final String ssdtName = "SSDT-USBX";
    Log("Creating precompiled $ssdtName.dsl...");
    final acpi = {
      "Comment": "Generic USBX device for USB power properties",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi);
    // generate SSDT  inside  contain 
    String ssdt = '''
// Generic USBX Device with power properties injected
DefinitionBlock ("", "SSDT", 2, "RAPID", "SsdtUsbx", 0x00001000)
{
    Scope (\\_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (LNot (Arg2))
                {
                    Return (Buffer ()
                    {
                        0x03
                    })
                }
                Return (Package ()
                {''';

    // add USBX property
    usbxProps.forEach((key, value) {
      ssdt += '''
                    "$key",
                    $value,''';
    });

    //  remove  most  after   multiple  remaining  comma  number 
    ssdt = ssdt.trimRight().replaceAll(RegExp(r',$'), '');

    ssdt += '''
                })
            }
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}''';

    // write SSDT file
    writeSSDT(ssdtName, ssdt);
  }

  Future<void> ssdtPLUG({
    bool prebuilt = false,
    bool alderlakeOrLater = false,
  }) async =>
      prebuilt
          ? ((alderlakeOrLater
              ? await _ssdtPLUGALTPrebuilt()
              : await _ssdtPLUGPrebuilt()))
          : await _ssdtPLUG(alderlakeOrLater: alderlakeOrLater);

  /// SSDT-PLUG
  Future<void> _ssdtPLUG({bool alderlakeOrLater = false}) async {
    if (!await ensureDSDT()) return;
    Log("Determining CPU naming scheme…");
    for (var tableName in sortedNicely(d.acpiTables.keys.toList())) {
      var ssdtName = "SSDT-PLUG";
      var table = d.acpiTables[tableName];

      if (!(table["signature"]?.toLowerCase() == "dsdt" ||
          table["signature"]?.toLowerCase() == "ssdt")) {
        ///  not  check  number  data  table  format ,continue
        continue;
      }

      Log("Checking $tableName…");

      dynamic cpuName;
      try {
        cpuName = d.getProcessorPaths(table: table)[0][0];
      } catch (e) {
        cpuName = null;
      }

      if (cpuName != null && cpuName.isNotEmpty) {
        Log("=> Found Processor at process  device ：$cpuName");

        Log("Creating $ssdtName.dsl...");

        var ssdt = """
//
// Based on the sample found at https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/SSDT-PLUG.dsl
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "CpuPlug", 0x00003000)
{
    External ([[CPUName]], ProcessorObj)
    Scope ([[CPUName]])
    {
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
            If (_OSI ("Darwin")) {
                If (LNot (Arg2))
                      {
                          Return (Buffer (One)
                          {
                              0x03
                          })
                      }
                      Return (Package (0x02)
                      {
                          "plugin-type", 
                          One
                      })
            }
            Else
            {
                Return (Buffer (One)
                {
                    Zero
                })
            }
        }
    }
}"""
            .replaceAll(r"[[CPUName]]", cpuName);

        final acpi = {
          "Comment":
              "Redefines modern CPU Devices as legacy Processor objects and sets plugin-type to 1 on the first",
          "Enabled": true,
          "Path": "$ssdtName.aml",
        };

        makePlist(acpi: acpi);
        writeSSDT(ssdtName, ssdt);
        return;
      } else {
        // If processor objects not found, continue checking for ACPI0007 devices
        ssdtName += "-ALT";
        Log("=> No Processor objects found…");

        var procs = d.getDevicePathsWithHid(hid: "ACPI0007", table: table);
        if (procs.isEmpty) {
          Log("=> No ACPI0007 devices found…");
          continue;
        }

        Log("=> Found ${procs.length} ACPI0007 devices");

        var parent = procs[0][0].split(".")[0];
        Log("=>  in  $parent found parent device, processing…");

        var procList = <Map<String, String>>[];
        for (var proc in procs) {
          Log("=> Checking ${proc[0].split('.').last}…");

          var uid = d.getPathOfType(
            objType: "Name",
            obj: "${proc[0]}._UID",
            table: table,
          );
          if (uid.isEmpty) {
            Log("=> Not found! Skipping…");
            continue;
          }

          try {
            var uid0 =
                table["lines"][uid[0][1]].split("_UID, ")[1].split(")")[0];
            Log("=> UID: $uid0");
            procList.add({"proc": proc[0], "uid": uid0});
          } catch (e) {
            Log("=> Not found! Skipping…");
          }
        }

        if (procList.isEmpty) {
          continue;
        }

        Log("Processing ${procList.length} valid processor devices…");

        var ssdt = """
//
// Based on the sample found at https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-PLUG-ALT.dsl
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "CpuPlugA", 0x00003000)
{
    External ([[parent]], DeviceObj)

    Scope ([[parent]])
    {"""
            .replaceAll(r"[[parent]]", parent);

        // Iterate processor objects and add to SSDT
        for (var i = 0; i < procList.length; i++) {
          var procUid = procList[i];
          var proc = procUid["proc"];
          var uid = procUid["uid"];
          var adr = (i).toRadixString(16).toUpperCase();
          var name = "CP00".substring(0, 4 - adr.length) + adr;

          ssdt += """
        Processor ([[name]], [[uid]], 0x00000510, 0x06)
        {
            // [[proc]]
            Name (_HID, "ACPI0007" /* Processor Device */)  // _HID: Hardware ID
            Name (_UID, [[uid]])
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }"""
              .replaceAll(r"[[name]]", name)
              .replaceAll(r"[[uid]]", uid ?? '')
              .replaceAll(r"[[proc]]", proc ?? '');

          if (i == 0) {
            ssdt += """
            Method (_DSM, 4, NotSerialized)
            {
                If (LNot (Arg2)) {
                    Return (Buffer (One) { 0x03 })
                }

                Return (Package (0x02)
                {
                    "plugin-type",
                    One
                })
            }""";
          }

          ssdt += """
        }""";
        }

        ssdt += """
    }
}""";

        final acpi = {
          "Comment":
              "Redefines modern CPU Devices as legacy Processor objects and sets plugin-type to 1 on the first",
          "Enabled": true,
          "Path": "$ssdtName.aml",
        };

        makePlist(acpi: acpi);
        writeSSDT(ssdtName, ssdt);
        return;
      }
    }

    Log.warning("Not foundvalid processor device！");
  }

  Future<void> ssdtPMC({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtPMCPrebuilt() : await _ssdtPMC();

  /// generate SSDT-PMC
  Future<void> _ssdtPMC() async {
    if (!await ensureDSDT()) return;

    /// get LPC device name
    String? lpcName = getLpcName();
    if (lpcName == null) {
      Log("getLPC Namefailed...");
      return;
    }
    final String ssdtName = "SSDT-PMC";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = """
//
// SSDT-PMC source from Acidanthera
// Original found here: https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/SSDT-PMC.dsl
//
// Uses the CORP name to denote where this was created for troubleshooting purposes.
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "PMCR", 0x00001000)
{
    External ([[LPCName]], DeviceObj)
    Scope ([[LPCName]])
    {
        Device (PMCR)
        {
            Name (_HID, EisaId ("APP9876"))  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
            }
            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                Memory32Fixed (ReadWrite,
                    0xFE000000,         // Address Base
                    0x00010000,         // Address Length
                    )
            })
        }
    }
}
""";

    ssdt = ssdt.replaceAll(r"[[LPCName]]", lpcName);

    final acpi = {
      "Comment": "PMCR for native 300-series NVRAM",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi);
    await writeSSDT(ssdtName, ssdt);
  }

  Future<void> ssdtRTC0RANGE({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtRTC0RANGEPrebuilt() : await _ssdtRTC0RANGE();

  Future<void> ssdtAWAC({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtAWACPrebuilt() : await _ssdtAWAC();

  Future<void> _ssdtRTC0RANGE() async {
    if (!await ensureDSDT()) return;
    bool rtcRangeNeeded = false;
    String? rtcCrsType;
    List<String> crsLines = [];
    String? lpcName;

    var rtcDict = getStaVar(varS: "STAS", devHid: "PNP0B00", devName: "RTC");

    ///  confirm  define  is  whether  require spoof RTC
    if (!(rtcDict["valid"] as bool)) {
      Log("=>  require spoof RTC!");
      lpcName = getLpcName();
      if (lpcName == null) return;
    } else {
      ///  check  RTC  is  whether  have  _CRS  and verify its range
      Log("=> Checking _CRS…");
      var rtcCrs = d.getMethodPaths(obj: rtcDict["device"][0] + "._CRS");
      if (rtcCrs.isEmpty) {
        rtcCrs = d.getNamePaths(obj: rtcDict["device"][0] + "._CRS");
      }
      if (rtcCrs.isNotEmpty) {
        Log("=>  ${rtcCrs[0][0]}");
        rtcCrsType = rtcCrs[0].last == "Method" ? "MethodObj" : "BuffObj";

        if (rtcCrsType.toLowerCase() == "buffobj") {
          Log("=> _CRS  is 1  buffer  conflict  section , Checking RTC range…");
          int? lastAdr, lastLen, lastInd;
          var crsScope = d.getScope(startingIndex: rtcCrs[0][1]);
          // clean crsScope range -  remove  except  mix  disordered  part  split 
          var padLen = crsScope[0].length - crsScope[0].trimLeft().length;
          var pad = crsScope[0].substring(0, padLen);
          List<String> fixedScope = [];

          //  fix  currently range
          for (var line in crsScope) {
            if (line.startsWith(pad)) {
              //  finish  whole line， remove  drop  pad  and save
              fixedScope.add(line.substring(padLen));
            } else {
              //  may  is  up 1line 1 part  split 
              fixedScope[fixedScope.length - 1] += line;
            }
          }

          for (var i = 0; i < fixedScope.length; i++) {
            var line = fixedScope[i];
            if (line.contains("Name (_CRS, ")) {
              // rename _CRS  for  BUFX， and  remove  drop  comment  avoid  mix  confuse 
              line = line
                  .replaceAll("Name (_CRS, ", "Name (BUFX, ")
                  .split("  //")[0];
            }

            if (line.contains("IO (Decode16,")) {
              // getstartline、 down 1line and  # 4 line  value 
              try {
                var currAdr = int.parse(
                  fixedScope[i + 1].trim().split(",")[0].replaceFirst('0x', ''),
                  radix: 16,
                );
                var currLen = int.parse(
                  fixedScope[i + 4].trim().split(",")[0].replaceFirst('0x', ''),
                  radix: 16,
                );
                var currInd = i + 4;

                if (lastAdr != null) {
                  // comparerange value 
                  var adjust = currAdr - (lastAdr + lastLen!);
                  if (adjust != 0) {
                    rtcRangeNeeded = true;
                    Log(
                      "=> Adjusting IO range ${util.hexy(lastAdr, padTo: 4)} length: ${util.hexy(lastLen + adjust, padTo: 2)}",
                    );

                    try {
                      var hexFind = util.hexy(lastLen, padTo: 2);
                      var hexRepl = util.hexy(lastLen + adjust, padTo: 2);
                      if (lastInd != null) {
                        crsLines[lastInd] = crsLines[lastInd].replaceAll(
                          hexFind,
                          hexRepl,
                        );
                      }
                    } catch (e) {
                      Log("=>  cannot  adjust  whole  value ,  cannot verify RTC range.");
                      rtcRangeNeeded = false;
                      break;
                    }
                  }
                }

                // save most  after   value 
                lastAdr = currAdr;
                lastLen = currLen;
                lastInd = currInd;
              } catch (e) {
                // at process  value Error
                Log("=>  collect  collection  value failed,  cannot verify RTC range.");
                rtcRangeNeeded = false;
                break;
              }
            }

            crsLines.add(line);
          }
        } else {
          Log("=> _CRS  is 1 method,  cannot verify RTC range!");
        }
        if (rtcRangeNeeded) {
          //  require generate1   _CRS rename for  XCRS  Patch
          Log("=> Generating _CRS  to  XCRS  rename…");

          // get _CRS   index  quote 
          var crsIndex = d.findNextHex(index: rtcCrs[0][1]).$2;
          Log("=> at index $crsIndex atfound");

          //  define  meaning 106 advance  control string
          var crsHex = "5F435253"; // _CRS
          var xcrsHex = "58435253"; // XCRS

          // get unique  pad  pad  value 
          final (padl, padr) = d.getShortestUniquePad(
            currentHex: crsHex,
            index: crsIndex,
          );
          // addPatch
          final patches = rtcDict["patches"] ?? [];
          patches.add({
            "Comment": "${rtcDict["dev_name"]} _CRS to XCRS rename",
            "Find": "$padl$crsHex$padr",
            "Replace": "$padl$xcrsHex$padr",
          });

          rtcDict["patches"] = patches;
          rtcDict["crs"] = true;
        }
      } else {
        Log("=>  Not found");
      }
    }

    /// verify is  whether  require  SSDT
    if ((rtcDict["valid"] as bool) &&
        !(rtcDict["has_var"] as bool) &&
        rtcDict["sta"].isEmpty &&
        !rtcRangeNeeded) {
      Log.warning("=> Foundvalid  PNP0B00 (RTC) device and  via verify, no  require Patch and SSDT!Aborted!");
      return;
    }

    String comment = rtcDict["valid"] == false
        ? "RTC Fake"
        : rtcRangeNeeded
            ? "Fixing RTC Range"
            : "Fixing RTC Enable";

    List<String> suffix = [];
    for (var x in [rtcDict]) {
      if (!(x["valid"] as bool)) continue;
      String val = "";
      if (x["sta"] != null && x["sta"].isNotEmpty && !(x["has_var"] as bool)) {
        val = "${x["dev_name"]} _STA to XSTA";
      }
      if (x["crs"] == true) {
        val += "${val.isNotEmpty ? ' and ' : x["dev_name"]} _CRS to XCRS";
      }
      if (val.isNotEmpty) {
        suffix.add(val);
      }
    }
    if (suffix.isNotEmpty) {
      comment += " - requires ${suffix.join(', ')} rename";
    }

    final String ssdtName = "SSDT-RTC0-RANGE";
    final acpi = {"Comment": comment, "Enabled": true, "Path": "$ssdtName.aml"};
    final patches = rtcDict["patches"] ?? [];
    makePlist(acpi: acpi, patches: patches, replace: true);
    Log("Creating $ssdtName.dsl...");

    String ssdt = """

    DefinitionBlock ("", "SSDT", 2, "RAPID", "RTC0RANGE", 0x00000000)
    {
    """;
    if ([rtcDict].any((x) => x["has_var"] == true)) {
      ssdt += """    External (STAS, IntObj)
          Scope (\\)
          {
              Method (_INI, 0, NotSerialized)  // _INI: Initialize
              {
                  If (_OSI ("Darwin"))
                  {
                      Store (One, STAS)
                  }
              }
          }
      """;
    }
    for (var x in [rtcDict]) {
      if (x["valid"] != true || x["has_var"] == true || x["device"] == null) {
        continue;
      }

      // deviceFound， and  no  have  STAS variable -  check  is  whether  have  _STA（ may  be rename）
      var macos = x["dev_hid"] == "ACPI000E" ? "Zero" : "0x0F";
      var original = x["dev_hid"] == "ACPI000E" ? "0x0F" : "Zero";
      if (x["sta"] != null && x["sta"].isNotEmpty) {
        ssdt += """    External ([[DevPath]], DeviceObj)
        External ([[DevPath]].XSTA, [[sta_type]])
        Scope ([[DevPath]])
        {
            Name (ZSTA, [[Original]])
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return ([[macOS]])
                }
                // Default to [[Original]] - but return the result of the renamed XSTA if possible
                If (CondRefOf ([[DevPath]].XSTA))
                {
                    Store ([[DevPath]].XSTA[[called]], ZSTA)
                }
                Return (ZSTA)
            }
        }
    """;
        ssdt = ssdt
            .replaceAll(r"[[DevPath]]", x["device"][0])
            .replaceAll(r"[[Original]]", original)
            .replaceAll(r"[[macOS]]", macos)
            .replaceAll(r"[[sta_type]]", x["sta_type"])
            .replaceAll(
              r"[[called]]",
              x["sta_type"] == "MethodObj" ? " ()" : "",
            );
      } else if (x["dev_hid"] == "ACPI000E") {
        // AWAC device both  no  have  STAS variable， also  no  have  _STA method， this  time add1 
        ssdt += """    External ([[DevPath]], DeviceObj)
              Scope ([[DevPath]])
              {
                  Method (_STA, 0, NotSerialized)  // _STA: Status
                  {
                      If (_OSI ("Darwin"))
                      {
                          Return (Zero)
                      }
                      Else
                      {
                          Return (0x0F)
                      }
                  }
              }
          """;
        ssdt = ssdt.replaceAll(r"[[DevPath]]", x["device"][0]);
      }
    }
    //  check  is  whether  require  fix  currently  RTC range
    if (rtcRangeNeeded &&
        rtcCrsType?.toLowerCase() == "buffobj" &&
        crsLines.isNotEmpty &&
        rtcDict["valid"] == true) {
      ssdt += """    External ([[DevPath]], DeviceObj)
              External ([[DevPath]].XCRS, [[type]])
              Scope ([[DevPath]])
              {
                  // Adjusted and renamed _CRS buffer ripped from DSDT with corrected range
          [[NewCRS]]
                  // End of adjusted _CRS and renamed buffer

                  // Create a new _CRS method that returns the result of the renamed XCRS
                  Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                  {
                      If (LOr (_OSI ("Darwin"), LNot (CondRefOf ([[DevPath]].XCRS))))
                      {
                          // Return our buffer if booting macOS or the XCRS method
                          // no longer exists for some reason
                          Return (BUFX)
                      }
                      // Not macOS and XCRS exists - return its result
                      Return ([[DevPath]].XCRS[[method]])
                  }
              }
          """;
      ssdt = ssdt
          .replaceAll("[[DevPath]]", rtcDict["device"][0])
          .replaceAll("[[type]]", rtcCrsType ?? '')
          .replaceAll("[[method]]", rtcCrsType == "Method" ? " ()" : "")
          .replaceAll(
            "[[NewCRS]]",
            crsLines.map((x) => "        $x").join("\n"),
          );
    }
    // Checking if exists: RTC device
    if (!rtcDict.containsKey("valid") &&
        lpcName != null &&
        lpcName.isNotEmpty) {
      ssdt += """    External ([[LPCName]], DeviceObj)    // (from opcode)
          Scope ([[LPCName]])
          {
              Device (RTC0)
              {
                  Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                  Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                  {
                      IO (Decode16,
                          0x0070,             // Range Minimum
                          0x0070,             // Range Maximum
                          0x01,               // Alignment
                          0x08,               // Length
                          )
                      IRQNoFlags ()
                          {8}
                  })
                  Method (_STA, 0, NotSerialized)  // _STA: Status
                  {
                      If (_OSI ("Darwin"))
                      {
                          Return (0x0F)
                      }
                      Else
                      {
                          Return (Zero)
                      }
                  }
              }
          }
      """;
      ssdt = ssdt.replaceAll(r"[[LPCName]]", lpcName);
    }
    ssdt += "}";

    writeSSDT(ssdtName, ssdt);
  }

  Future<void> _ssdtAWAC() async {
    if (!await ensureDSDT()) return;
    var awacDict = getStaVar(varS: "STAS", devHid: "ACPI000E", devName: "AWAC");

    /// verify is  whether  require  SSDT
    if (!(awacDict["valid"] as bool)) {
      Log.warning("=> Not found ACPI000E (AWAC) device, no  require Patch and SSDT!Aborted!");
      return;
    }

    String comment = "Fixing Incompatible AWAC";

    List<String> suffix = [];
    for (var x in [awacDict]) {
      if (!(x["valid"] as bool)) continue;
      String val = "";
      if (x["sta"] != null && x["sta"].isNotEmpty && !(x["has_var"] as bool)) {
        val = "${x["dev_name"]} _STA to XSTA";
      }
      if (x["crs"] == true) {
        val += "${val.isNotEmpty ? ' and ' : x["dev_name"]} _CRS to XCRS";
      }
      if (val.isNotEmpty) {
        suffix.add(val);
      }
    }
    if (suffix.isNotEmpty) {
      comment += " - requires ${suffix.join(', ')} rename";
    }
    final String ssdtName = "SSDT-AWAC";
    final acpi = {"Comment": comment, "Enabled": true, "Path": "$ssdtName.aml"};
    final patches = awacDict["patches"] ?? [];
    makePlist(acpi: acpi, patches: patches, replace: true);
    Log("Creating $ssdtName.dsl...");

    String ssdt = """
    DefinitionBlock ("", "SSDT", 2, "RAPID", "AWAC", 0x00000000)
    {
    """;
    if ([awacDict].any((x) => x["has_var"] == true)) {
      ssdt += """    External (STAS, IntObj)
          Scope (_SB)
          {
              Method (_INI, 0, NotSerialized)  // _INI: Initialize
              {
                  If (_OSI ("Darwin"))
                  {
                      Store (One, STAS)
                  }
              }
          }
        }
      """;
    }
    for (var x in [awacDict]) {
      if (x["valid"] != true || x["has_var"] == true || x["device"] == null) {
        continue;
      }

      // deviceFound， and  no  have  STAS variable -  check  is  whether  have  _STA（ may  be rename）
      var macos = x["dev_hid"] == "ACPI000E" ? "Zero" : "0x0F";
      var original = x["dev_hid"] == "ACPI000E" ? "0x0F" : "Zero";
      if (x["sta"] != null && x["sta"].isNotEmpty) {
        ssdt += """    External ([[DevPath]], DeviceObj)
        External ([[DevPath]].XSTA, [[sta_type]])
        Scope ([[DevPath]])
        {
            Name (ZSTA, [[Original]])
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return ([[macOS]])
                }
                // Default to [[Original]] - but return the result of the renamed XSTA if possible
                If (CondRefOf ([[DevPath]].XSTA))
                {
                    Store ([[DevPath]].XSTA[[called]], ZSTA)
                }
                Return (ZSTA)
            }
        }
    """;
        ssdt = ssdt
            .replaceAll(r"[[DevPath]]", x["device"][0])
            .replaceAll(r"[[Original]]", original)
            .replaceAll(r"[[macOS]]", macos)
            .replaceAll(r"[[sta_type]]", x["sta_type"])
            .replaceAll(
              r"[[called]]",
              x["sta_type"] == "MethodObj" ? " ()" : "",
            );
      } else if (x["dev_hid"] == "ACPI000E") {
        // AWAC device both  no  have  STAS variable， also  no  have  _STA method， this  time add1 
        ssdt += """    External ([[DevPath]], DeviceObj)
              Scope ([[DevPath]])
              {
                  Method (_STA, 0, NotSerialized)  // _STA: Status
                  {
                      If (_OSI ("Darwin"))
                      {
                          Return (Zero)
                      }
                      Else
                      {
                          Return (0x0F)
                      }
                  }
              }
          """;
        ssdt = ssdt.replaceAll(r"[[DevPath]]", x["device"][0]);
      }
    }

    writeSSDT(ssdtName, ssdt);
  }

  Future<void> ssdtRHUB({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtRHUBPrebuilt() : await _ssdtRHUB();

  /// SSDT-RHUB
  Future<void> _ssdtRHUB() async {
    if (!await ensureDSDT()) return;
    Log('Collecting RHUB/HUBN/URTH device...');
    var rHubs = d.getDevicePaths(obj: 'RHUB');
    var hHubs = d.getDevicePaths(obj: 'HUBN');
    var uHubs = d.getDevicePaths(obj: 'URTH');
    var hubs = rHubs + hHubs + uHubs;
    if (hubs.isEmpty) {
      Log.warning('=> Not found any  any device！Aborted!');
      return;
    }
    Log('=> found ${hubs.length}  device');
    List<Map<String, dynamic>> patches = [];
    var tasks = [];
    List<String> usedNames = [];
    int xhcNum = 2;
    int ehcNum = 1;
    for (var x in hubs) {
      var task = <String, dynamic>{"device": x[0]};
      Log(
        "=>  ${x[0].split('.').sublist(0, x[0].split('.').length - 1).join('.')}",
      );

      var name = x[0].split('.').length >= 2
          ? x[0].split('.')[(x[0].split('.').length - 2)]
          : "";

      if (illegalNames.contains(name) || usedNames.contains(name)) {
        Log("=>   require rename!");
        task["device"] = task["device"]
            .split('.')
            .sublist(0, task["device"].split('.').length - 1)
            .join('.');
        task["parent"] = task["device"]
            .split('.')
            .sublist(0, task["device"].split('.').length - 1)
            .join('.');

        if (name.startsWith("EHC")) {
          final result = getUniqueDevice(
            task["parent"],
            "EH01",
            startingNumber: ehcNum,
            usedNames: usedNames,
          );
          task["rename"] = result.name;
          ehcNum = result.number;
          ehcNum += 1;
        } else {
          final result = getUniqueDevice(
            task["parent"],
            "XHCI",
            startingNumber: xhcNum,
            usedNames: usedNames,
          );
          task["rename"] = result.name;
          xhcNum = result.number;
          xhcNum += 1;
        }

        usedNames.add(task["rename"]);
      } else {
        usedNames.add(name);
      }

      final staMethod = d.getMethodPaths(obj: "${task["device"]}._STA");
      Log("=>   check  ${task["device"].split('.').last}: exists _STA method");
      if (staMethod.isNotEmpty) {
        final staIndex = d.findNextHex(index: staMethod[0][1]).$2;
        Log("=>  at index $staIndex found _STA method!");
        Log("=>  generate _STA  to  XSTA  Patch");

        const staHex = "5F535441";
        const xstaHex = "58535441";

        final (padl, padr) = d.getShortestUniquePad(
          currentHex: staHex,
          index: staIndex,
        );

        Log("");
        Log("           Find: ${padl + staHex + padr}");
        Log("     Replace: ${padl + xstaHex + padr}");
        Log("");

        patches.add({
          "Comment": "${task["device"].split('.').last} _STA to XSTA rename",
          "Find": padl + staHex + padr,
          "Replace": padl + xstaHex + padr,
        });
      } else {
        Log("=>  Not found _STA method!");
      }

      final scopeAdr = d.getNamePaths(obj: "${task["device"]}._ADR");
      if (scopeAdr.isNotEmpty) {
        final line = d.getDsdt()?["lines"][scopeAdr[0][1]];
        task["address"] = line.trim();
      } else {
        task["address"] = "Name (_ADR, Zero)  // _ADR: Address";
      }

      tasks.add(task);
    }
    Log("");
    final ssdtName = "SSDT-RHUB";
    Log("Creating $ssdtName.dsl...");
    final acpi = {
      "Comment": "Disable USB RHUB/HUBN/URTH and rename devices",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, patches: patches);

    String ssdt = '''
//
// SSDT to disable RHUB/HUBN/URTH devices and rename PXSX, XHC1, EHC1, and EHC2 devices
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "UsbRHUB", 0x00001000)
{
''';

    //  collect  collection  unique   parent Path and  order  sequence 
    final parents = tasks
        .where((t) => t.containsKey('parent'))
        .map((t) => t['parent']!)
        .toSet()
        .toList()
      ..sort();

    for (var p in parents) {
      ssdt += '    External ($p, DeviceObj)\n';
    }

    for (var t in tasks) {
      ssdt += '    External (${t["device"]}, DeviceObj)\n';
    }

    for (var t in tasks) {
      if (t.containsKey('rename')) {
        final device = t['device']!;
        final parent = t['parent']!;
        final newDevice = t['rename']!;
        final address = t['address'] ?? 'Name (_ADR, Zero)  // _ADR: Address';

        ssdt += '''
    Scope ($device)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }

    Scope ($parent)
    {
        Device ($newDevice)
        {
            $address
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
''';
      } else {
        final device = t['device']!;
        ssdt += '''
    Scope ($device)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
''';
      }
    }

    ssdt += '\n}';

    writeSSDT(ssdtName, ssdt);
  }

  ///  open  print  not match Path
  /// [unmatched]  not match Pathcolumn table 
  /// [pciRootPaths] PciRoot() Pathcolumn table 
  void debugPrintUnmatched({
    List<String>? unmatched,
    List<dynamic>? pciRootPaths,
  }) {
    Log("");
    if (unmatched != null && unmatched.isNotEmpty) {
      Log.warning("Not found to  down Path match item ：");
      for (var path in unmatched..sort()) {
        Log("=> $path");
      }
    } else {
      Log.warning("Not found any  any match item ！");
    }

    if (pciRootPaths != null && pciRootPaths.isNotEmpty) {
      Log.warning("Note,device pathrequired to  to  down  PciRoot()  open  header ， then  capable  with  when  before  ACPI  table match：");
      for (var item in pciRootPaths
        ..sort((a, b) => (a['path'] ?? a).compareTo(b['path'] ?? b))) {
        Log("=> ${item['path'] ?? item}");
      }
    }
  }

  ///  open  print device pathexists in _ADR address overflow   condition  situation 
  /// [addrOverflow]  exist  in address overflow  device pathcolumn table 
  void debugPrintAddressOverflow(List<String> addrOverflow) {
    Log("");
    Log("=> device pathexists in _ADR address overflow ！");
    Log("=>  to  down device may  require  adjust  whole  bridge  receive  then  capable  currently  common  tool  action ：");
    for (var d in (addrOverflow.toSet().toList()..sort())) {
      Log("=> $d");
    }
  }

  ///  open  print  cannot parse  bridge  receive 
  /// [failedBridges]  cannot parse  bridge  receive column table 
  void debugPrintFailedBridges(List<String> failedBridges) {
    debugPrint("\n to  down  bridge  receive  cannot parse：");
    for (var fb in failedBridges..sort()) {
      Log("=> $fb");
    }
  }

  /// SSDT bridge device
  /// [pciBridges] PCI  bridge  receive device list
  Future<void> ssdtPCIBridge({List<String>? pciBridges}) async {
    if (!await ensureDSDT()) return;
    Log("Collecting PCI bridge device…");
    if (pciBridges == null || pciBridges.isEmpty) {
      Log("PCI bridge device for  empty ！ already abort operate  action ！");
      return;
    }
    Log("Buildingbridge device…");
    var pathDict = getDevicePath(inputPaths: pciBridges);
    if (pathDict.isEmpty) {
      Log("PCI bridge device for  empty ！skip…");
      return;
    }
    final (deviceDict, pciRootPaths) = getDevicePaths();
    final matches = <(String, (String, Map<String, dynamic>, bool, int))>[];
    List<String> unmatched = [];
    Log("Matchingdevice path…");
    for (final p in pathDict.keys.toList()..sort()) {
      Log("=> $p");
      final match = getLongestMatch(deviceDict, p);
      if (match == null) {
        Log("Not foundmatch item !");
        unmatched.add(p);
      } else {
        if (match.$3) {
          Log("=> Matched ${match.$1},  no  require  bridge  receive ");
        } else {
          final b = '/'.allMatches(p.substring(match.$4 + 1)).length + 1;
          Log(
            "=> Matched ${match.$1},  require  ${b.toString().replaceAllMapped(RegExp(r'(\d)(?=(\d{3})+(?!\d))'), (match) => '${match[1]},')} bridge devices",
          );
        }
        matches.add((p, match));
      }
    }

    if (matches.isEmpty) {
      debugPrintUnmatched(unmatched: unmatched, pciRootPaths: pciRootPaths);
      Log("Not foundmatch item !\n");
      return;
    }

    final addrOverflow = <String>[];
    for (final (_, match) in matches) {
      if (match.$2["adr_overflow"] == true) {
        final overFlow = getAllMatches(deviceDict, match.$2["path"]);
        for (final d in overFlow) {
          if (d.$2["dev_overflow"] != null && d.$2["dev_overflow"].isNotEmpty) {
            addrOverflow.addAll(List<String>.from(d.$2["dev_overflow"]));
          }
        }
      }
    }

    final allNoBridge = matches.every((m) => m.$2.$3);
    if (allNoBridge) {
      if (unmatched.isNotEmpty) {
        debugPrintUnmatched(unmatched: unmatched, pciRootPaths: pciRootPaths);
      }
      if (addrOverflow.isNotEmpty) {
        debugPrintAddressOverflow(addrOverflow);
      }
      Log(" no  require  bridge  receive !\n");
      return;
    }

    Log("Parsingbridge device…");
    final bridgeMatch = <String, String>{};
    final bridgeList = <String>[];
    final failedBridges = <String>[];
    final externalRefs = <String>[];

    for (final (testPath, match) in matches) {
      ///  no  require  bridge  receive 
      if (match.$3) continue;
      final remain = testPath.substring(match.$4 + 1);
      Log("=> $remain");
      final bridges = getBridgeDevices(remain);
      if (bridges.isEmpty) {
        Log("=>  cannot parse!");
        failedBridges.add(testPath);
      } else {
        var path = match.$1;
        for (var i = 0; i < bridges.length; i++) {
          path += " ${bridges[i]}";
          if (!bridgeList.contains(path)) {
            bridgeList.add(path);
          }
          if (i == bridges.length - 1) {
            bridgeMatch[path] = testPath;
          }
        }
        if (!externalRefs.contains(match.$1)) {
          externalRefs.add(match.$1);
        }
      }
    }

    if (bridgeList.isEmpty) {
      if (failedBridges.isNotEmpty) {
        debugPrintFailedBridges(failedBridges);
      }
      if (unmatched.isNotEmpty) {
        debugPrintUnmatched(unmatched: unmatched, pciRootPaths: pciRootPaths);
      }
      if (addrOverflow.isNotEmpty) {
        debugPrintAddressOverflow(addrOverflow);
      }
      Log("parsebridge device time  out  error !\n");
      return;
    }
    final String ssdtName = "SSDT-Bridge";
    Log("Creating $ssdtName.dsl...");
    final pad = '    ';
    String ssdt = '''
// Source and info from:
// https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-BRG0.dsl
DefinitionBlock ("", "SSDT", 2, "RAPID", "PCIBRG", 0x00000000)
{
    /*
     * Start copying here if you're adding this info to an existing SSDT-Bridge!
     */
''';

    for (final acpi in externalRefs) {
      ssdt += '    External ($acpi, DeviceObj)\n';
    }
    ssdt += '\n';

    /// Close braces
    /// [input]: Input string
    /// [depth]: Depth
    /// [iterations]: Iteration count
    /// [pad]: Padding string
    String closeBrackets(String input, int depth, int iterations, String pad) {
      while (iterations > 0) {
        input += '${pad * depth}}\n';
        iterations--;
        depth--;
      }
      return input;
    }

    List<String> lastPath = [];
    String? acpiString;
    final bridgeNames = <String, List<String>>{};
    final acpiPaths = <String, String>{};

    for (final element in bridgeList..sort()) {
      final comp = element.split(' ');
      final acpi = comp.first;
      int match = 0;
      for (int i = 0; i < comp.length && i < lastPath.length; ++i) {
        if (comp[i] != lastPath[i]) break;
        match++;
      }

      if (lastPath.isNotEmpty) {
        ssdt = closeBrackets(
          ssdt,
          lastPath.length,
          lastPath.length - match,
          pad,
        );
      }

      lastPath = comp;

      if (acpi != acpiString) {
        acpiString = acpi;
        ssdt += '    Scope ($acpiString)\n    {\n';
      }

      final currDepth = comp.length;
      if (currDepth == 0) continue;

      final parentPath = comp.sublist(0, currDepth - 1).join(' ');
      bridgeNames.putIfAbsent(parentPath, () => []);

      final parentAcpi = acpiPaths[parentPath] ?? acpi;
      final baseName = pathDict[bridgeMatch[element]];
      final unique = getUniqueDevice(
        parentAcpi,
        baseName ?? 'BRG0',
        startingNumber: -1,
        usedNames: bridgeNames[parentPath]!,
      );
      final name = unique.name;
      bridgeNames[parentPath]!.add(name);
      acpiPaths[element] = '$parentAcpi.$name';

      String p = pad * currDepth;
      if (bridgeMatch.containsKey(element)) {
        final base = pathDict[bridgeMatch[element]];
        if (base != null && base.isNotEmpty && base != name) {
          ssdt +=
              '$p// User-provided name \'$base\' supplied, incremented for uniqueness\n';
        } else if (base != null && base.isNotEmpty) {
          ssdt += '$p// User-provided name \'$base\' supplied\n';
        } else {
          ssdt +=
              '$p// Customize the following device name if needed, eg. GFX0\n';
        }
      }

      ssdt += ' Device ($name)\n$p{\n';
      p += pad;

      if (bridgeMatch.containsKey(element)) {
        ssdt += '$p// Target Device Path:\n$p// ${bridgeMatch[element]}\n';
      }

      final adrInt = int.parse(comp.last.replaceFirst('0x', ''));
      final adr = switch (adrInt) {
        0 => 'Zero',
        1 => 'One',
        _ => adrInt > 0xFFFF
            ? '0x${adrInt.toRadixString(16).toUpperCase().padLeft(8, '0')}'
            : '0x${adrInt.toRadixString(16).toUpperCase()}',
      };

      ssdt += '$p Name (_ADR, $adr)\n';
    }

    if (lastPath.isNotEmpty) {
      final depth = lastPath.length;
      ssdt = closeBrackets(ssdt, depth, depth, pad);
    }

    ssdt += '''
}
''';

    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Defines missing PCI bridges for property injection",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi);
  }

  Future<void> ssdtALS0({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtALS0Prebuilt() : await _ssdtALS0();

  ///  light  thread  sensor  ( fit  used for laptop)
  Future<void> _ssdtALS0() async {
    if (!await ensureDSDT()) return;
    Log("Locating ACPI0008（ALS）device…");
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    final String ssdtName = "SSDT-ALS0";
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      //  try  try  in  when  before  table  format  in find any  any  loop  environment  light  sensor device
      var als = d.getDevicePathsWithHid(hid: "ACPI0008", table: table);
      if (als.isNotEmpty) {
        Log("=>  in $tableName  table : ${als[0][0]} atfoundALSdevice!");
        Log("=>  not  require spoof!\n");

        var sta = getStaVar(
          varS: '',
          device: als[0][0],
          devHid: 'ACPI0008',
          devName: als[0][0].split('.').last,
          table: table,
        );
        if (sta['patches'] != null && sta['patches'].isNotEmpty) {
          if (staNeedsPatching(sta, table)) {
            Log("Creating $ssdtName.dsl...");
            var ssdt = """
  DefinitionBlock ("", "SSDT", 2, "RAPID", "ALS0", 0x00000000)
  {
      External ([[als0_path]], DeviceObj)
      External ([[als0_path]].XSTA, [[sta_type]])

      Scope ([[als0_path]])
      {
          Method (_STA, 0, NotSerialized)
          {
              If (_OSI ("Darwin"))
              {
                  Return (0x0F)
              }
              Else
              {
                  Return ([[XSTA]])
              }
          }
      }
  }
""";
            ssdt = ssdt.replaceAll('[[als0_path]]', als[0][0]);
            ssdt = ssdt.replaceAll(
              '[[sta_type]]',
              sta["sta_type"] ?? "MethodObj",
            );
            ssdt = ssdt.replaceAll(
              '[[XSTA]]',
              "${als[0][0]}.XSTA${sta.containsKey("sta_type") && sta["sta_type"] == "MethodObj" ? " ()" : ""}",
            );
            writeSSDT("SSDT-ALS0", ssdt);
            final acpi = {
              "Comment":
                  "Enables ${sta["dev_name"]} for macOS - requires _STA to XSTA rename",
              "Enabled": true,
              "Path": "SSDT-ALS0.aml",
            };
            makePlist(acpi: acpi, patches: sta["patches"] ?? []);
            return;
          } else {
            Log(" already  currently  confirm enable_STA, no  require Patch！\n");
          }
        } else {
          Log("Not found， not  require Patch!\n");
        }
        return;
      }
    }

    /// Not found any  any  ALS device
    Log("Not found ACPI0008（ALS）device,  require spoofdevice…");
    Log("Creating $ssdtName.dsl...");
    var ssdt = """//
// Original source from:
// https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-ALS0.dsl
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "ALS0", 0x00000000)
{
    Scope (_SB)
    {
        Device (ALS0)
        {
            Name (_HID, "ACPI0008" /* Ambient Light Sensor Device */)  // _HID: Hardware ID
            Name (_CID, "smc-als")  // _CID: Compatible ID
            Name (_ALI, 0x012C)  // _ALI: Ambient Light Illuminance
            Name (_ALR, Package (0x01)  // _ALR: Ambient Light Response
            {
                Package (0x02)
                {
                    0x64, 
                    0x012C
                }
            })
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}""";
    final acpi = {
      "Comment": "Faked Ambient Light Sensor",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    writeSSDT(ssdtName, ssdt);
    makePlist(acpi: acpi);
  }

  Future<void> ssdtXOSI({bool prebuilt = false, String? targetString}) async =>
      prebuilt
          ? await _ssdtXOSIPrebuilt()
          : await _ssdtXOSI(targetString: targetString);

  /// XOSI  scheme  scheme 
  /// [targetString]  target  label string
  Future<void> _ssdtXOSI({String? targetString}) async {
    if (!await ensureDSDT()) return;
    String? highestOsi;
    osiStrings.forEach((key, value) {
      var dsdtTable = d.getDsdt()!['table'];
      if (dsdtTable.contains(value)) {
        highestOsi = key;
      }
    });
    final String ssdtName = "SSDT-XOSI";
    Log(" currently  in  check  test XOSI scheme  scheme ...");
    if (targetString == null ||
        targetString.isEmpty ||
        !osiStrings.containsKey(targetString)) {
      if (highestOsi != null && highestOsi!.isNotEmpty) {
        Log("=>  already  self  dynamic  check  test  to ：$highestOsi（${osiStrings[highestOsi]}）");
      }
      //  self  dynamic  select  select default item 
      if (highestOsi != null && highestOsi!.isNotEmpty) {
        targetString = highestOsi;
      } else {
        targetString = osiStrings.keys.first;
      }
      Log(
        "=> Auto-selected for $targetString (${osiStrings[targetString]}) version$ssdtName",
      );
    } else {
      Log(
        "=> Manually selected for $targetString (${osiStrings[targetString]}) version$ssdtName",
      );
    }

    Log(
      "Creatingsupported $targetString (${osiStrings[targetString]}) version $ssdtName.dsl…",
    );

    String ssdt = """
DefinitionBlock ("", "SSDT", 2, "RAPID", "XOSI", 0x00001000)
{
    Method (XOSI, 1, NotSerialized)
    {
        /* Edited from:
         * https://github.com/dortania/Getting-Started-With-ACPI/blob/master/extra-files/decompiled/SSDT-XOSI.dsl
         * Based off of: 
         * https://docs.microsoft.com/en-us/windows-hardware/drivers/acpi/winacpi-osi#_osi-strings-for-windows-operating-systems
         * Add OSes from the below list as needed, most only check up to Windows 2015
         * but check what your DSDT looks for
         */
        Store (Package ()
        {
""";

    for (var i = 0; i < osiStrings.length; i++) {
      var x = osiStrings.keys.elementAt(i);
      var osiString = osiStrings[x];
      ssdt += '                "$osiString"';
      if (x == targetString || i == osiStrings.length - 1) {
        //  most  after 1 item  -  stop 
        ssdt += " // $x";
        break;
      }
      // add comma  number  and  replace line symbol 
      ssdt += ", // $x\n";
    }
    ssdt += "\n";
    ssdt += """
        }, Local0)
        If (_OSI ("Darwin"))
        {
            Return (LNotEqual (Match (Local0, MEQ, Arg0, MTR, Zero, Zero), Ones))
        }
        Else
        {
            Return (_OSI (Arg0))
        }
    }
}""";

    Log("Checking OSID method…");
    List osid = d.getMethodPaths(obj: "OSID");
    List<Map<String, String>> patches = [];

    if (osid.isNotEmpty) {
      Log("=>  in  offset  move  count  ${osid[0][1]} atfound  ${osid[0][0]} method");
      patches.add({
        "Comment":
            "OSID to XSID rename - must come before _OSI to XOSI rename!",
        "Find": "4F534944",
        "Replace": "58534944",
      });
    } else {
      Log("=> Not found， no  require   OSID rename for  XSID");
    }
    Log("Creating _OSI  to  XOSI  rename…");
    patches.add({
      "Comment": "_OSI to XOSI rename - requires $ssdtName.aml",
      "Find": "5F4F5349",
      "Replace": "584F5349",
    });
    final acpi = {
      "Comment":
          "_OSI override to return true through $targetString - requires _OSI to XOSI rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, patches: patches, replace: true);
    writeSSDT(ssdtName, ssdt);
  }

  /// load specified  ACPI  table 
  /// [tableSignature] table signature
  /// [tablePath]  table Path
  Future<Map<String, dynamic>?> loadTable(
    String tableSignature, {
    String? tablePath,
  }) async {
    if (!checkIasl()) return null;
    Log("Searching for $tableSignature  table …");
    Map<String, dynamic>? table;
    //  if  not  pass  enter  ACPI  table Path, then  from  already load  ACPI  table  in find
    if (tablePath == null || tablePath.isEmpty) {
      final tableList = d.acpiTables.values
          .where(
            (t) =>
                t['signature']?.toUpperCase() == tableSignature.toUpperCase(),
          )
          .toList();
      if (tableList.isNotEmpty) table = tableList.first;
    } else {
      //  from  already  pass  enter  ACPI  table Pathload table 
      //  check  and  confirm  keep Pathvalid
      tablePath = await util.checkPath(
        filePath: tablePath,
        onError: (e) => Log.error(e),
      );
      if (tablePath.isNotEmpty) {
        // load table 
        final result = await d.loadTable(tablePath);
        final tableList = result.$1.values
            .where(
              (t) =>
                  t['signature']?.toUpperCase() == tableSignature.toUpperCase(),
            )
            .toList();
        if (tableList.isNotEmpty) table = tableList.first;
      }
    }

    if (table == null || table.isEmpty) {
      Log.warning(
        config.acpiDirectory != null && config.acpiDirectory!.isNotEmpty
            ? "in current directory ${config.acpiDirectory} Not foundvalid $tableSignature  table !"
            : "Not foundvalid $tableSignature  table !",
      );
      return null;
    }

    return table;
  }

  ///  from  FACP lines  in find #1  contains  related  key  character   character  segment  value 
  String findFacpField(List<dynamic> lines, String key) {
    for (var line in lines) {
      if (line.contains(key)) {
        final parts = line.split(" : ");
        return parts.length > 1 ? parts[1].trim() : "";
      }
    }
    return "";
  }

  /// verify SSDT table signature
  /// [tableSignature] table signature
  /// [tablePath]  table Path
  Future<(bool, Map)> validateTableSignature(
    String tableSignature, {
    String? tablePath,
  }) async {
    final targetTable = await loadTable(tableSignature, tablePath: tablePath);
    if (targetTable == null) return (false, {});
    Log("Found $tableSignature  table , currently  in verify signature  name …");
    bool gotSig = false;
    final List<String> lines = targetTable['lines'] ?? [];
    for (var l in lines) {
      if (l.contains('Signature : "$tableSignature"')) {
        Log("=> $tableSignature table signatureverify via !");
        gotSig = true;
        break;
      }
    }
    if (!gotSig) {
      Log.warning("=> Not found， similar  almost  not  is 1 valid  $tableSignature  table !\n");
    }
    return (gotSig, targetTable);
  }

  /// SSDT-FACP
  /// [facpPath] FACP  table Path
  Future<void> ssdtFACP({String? facpPath}) async {
    final (valid, table) = await validateTableSignature(
      'FACP',
      tablePath: facpPath,
    );
    if (!valid) return;
    final String valueToCauseReset = 'Value to cause reset';
    Log("Checking $valueToCauseReset  value …");
    List<String> lines = table['lines'] ?? [];
    String valueCauseReset = findFacpField(lines, '$valueToCauseReset :');
    if (valueCauseReset.isEmpty) {
      Log.warning("Not found $valueToCauseReset  value ! Aborted!");
      return;
    }
    Log("get to  $valueToCauseReset  value  : $valueCauseReset");

    // extract Reset Register Address（ pass  common  in  before  surface  two line）
    String addressValue = "";
    for (int i = 0; i < lines.length; i++) {
      if (lines[i].contains('$valueToCauseReset :')) {
        if (i > 2 && lines[i - 2].contains('Address :')) {
          addressValue = findFacpField([lines[i - 2]], 'Address :');
        }
        break;
      }
    }

    if (addressValue.isEmpty) {
      Log.warning("Not found Reset Register Address  value ! Aborted!");
      return;
    }
    Log("get to  Reset Register Address  value  : $addressValue");

    final findAddrHeader = util.splitHexStringIntoReversedChunks(addressValue);
    final findAddress = "$findAddrHeader$valueCauseReset";
    final replaceAddress = "${findAddrHeader}0E";

    Log(" require  patch  ACPI Patch as  down : ");
    Log("=>       Find : $findAddress");
    Log("=> Replace : $replaceAddress");

    final patches = [
      {
        "Signature": "FACP",
        "Comment": "Force cold reboot (reset value 0x0E for macOS)",
        "Find": findAddress,
        "Replace": replaceAddress,
      },
    ];

    makePlist(patches: patches, replace: true);
  }

  /// SSDT-APIC
  /// [apicPath] APIC  table Path
  Future<void> ssdtAPIC({String? apicPath}) async {
    if (!await ensureDSDT()) return;
    final (valid, table) = await validateTableSignature(
      'APIC',
      tablePath: apicPath,
    );
    if (!valid) return;

    Log(" currently  in  patch  APIC  table …");
    int processorIndex = 0;
    final lines = List<String>.from(table['lines'] ?? []);
    final int apicLength = lines.length;
    String ssdt = '';
    for (final tableName in sortedNicely(d.acpiTables.keys.toList())) {
      final table = d.acpiTables[tableName]!;
      final processors = d.getProcessorPaths(table: table);
      if (processors.isEmpty) continue;
      for (int index = 0; index < apicLength; index++) {
        final line = lines[index];
        final bool isValidProcessorApic = line.contains('Subtable Type :') &&
            line.contains('[Processor Local APIC]') &&
            !line.contains('Unknown');

        if (!isValidProcessorApic) {
          ssdt += '$line\n';
          continue;
        }

        final int idLineIndex = index + 2;
        if (idLineIndex >= apicLength) {
          ssdt += '$line\n';
          continue;
        }

        final idLine = lines[idLineIndex].trimRight();

        ///  from  APIC  table  in extract Processor ID（ most  after  two  position ）
        final String apicProcessorId = idLine.substring(idLine.length - 2);
        String processorId;
        try {
          processorId = table['lines'][processors[processorIndex][1]]
              .split(', ')[1]
              .substring(2);
        } catch (_) {
          Log.warning(" cannot parse $tableName  in   Processor ID，abort patch ");
          return;
        }

        ///  #1  CPU  already match, direct  receive exit
        if (processorIndex == 0 && apicProcessorId == processorId) {
          Log.warning("in $tableName #1  CPU  already match,  no  require  patch  APIC  table !");
          return;
        }

        Log("=>  fix  currently  APIC Processor ID: $apicProcessorId → $processorId");

        ///  patch  Processor ID
        lines[idLineIndex] =
            idLine.substring(0, idLine.length - 2) + processorId;

        processorIndex++;

        ssdt += '$line\n';
      }
    }
    if (ssdt.isEmpty) {
      Log.warning("=> Not found Processor match item ! Aborted!");
      return;
    }
    Log("=> APIC  table  patch completed!");
    final String ssdtName = "SSDT-APIC";
    Log("Creating $ssdtName.dsl…");
    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment": "Pathing APIC table - requires original table dropped",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };

    final drops = [
      {
        "Comment": "Drop APIC Table",
        "Table": table,
        "Signature": table['signature'] ?? 'APIC',
      },
    ];

    makePlist(acpi: acpi, drops: drops);
  }

  /// SSDT-DMAR
  /// [dmarPath] DMAR  table Path
  Future<void> ssdtDMAR({String? dmarPath}) async {
    final (valid, table) = await validateTableSignature(
      'DMAR',
      tablePath: dmarPath,
    );
    if (!valid) return;
    bool reserved = false;
    int regionCount = 0;
    List<String> newDMAR = [];
    List<String> lines = table['lines'] ?? [];
    Log("Checking DMAR  table  keep  keep  inside  exist  section  domain …");
    for (var line in lines) {
      if (line.contains("Subtable Type : 0001 [Reserved Memory Region]")) {
        regionCount++;
        reserved = true;
      } else if (line.contains("Subtable Type : ")) {
        reserved = false;
      }
      if (!reserved) {
        //  confirm  keep  "Reserved : XX"  in   any  any number all  is  0
        if (line.contains("Reserved : ")) {
          List<String> parts = line.split(" : ");
          if (parts.length == 2) {
            String res = parts[0];
            String value = parts[1];
            StringBuffer newVal = StringBuffer();

            for (int i = 0; i < value.length; i++) {
              String char = value[i];
              if (!" 0123456789ABCDEF".contains(char)) {
                //  direct  receive   remaining  remaining  inside  contain  original  pattern  exist  enter variable in 。
                newVal.write(value.substring(i));
                break;
              } else if (char != "0" && char != " ") {
                //  confirm  keep   all  non- 0、 non- empty  format  value set for  0
                char = "0";
              }
              newVal.write(char);
            }

            line = "$res : $newVal";
          }
        }
        newDMAR.add(line);
      }
    }

    if (regionCount == 0) {
      Log("=> Not found keep  keep  inside  exist  section  domain ,  no  require  patch  DMAR!\n");
      return;
    }
    final String ssdtName = "SSDT-DMAR";
    Log(" occur  present  $regionCount   keep  keep  inside  exist  section  domain , Generating new  table …");
    writeSSDT(ssdtName, newDMAR.join("\n"));
    final acpi = {
      "Comment":
          "Replacement DMAR table with Reserved Memory Regions stripped - requires DMAR table be dropped",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };

    final drops = [
      {
        "Comment": "Drop DMAR Table",
        "Table": table,
        "Signature": table['signature'] ?? 'DMAR',
      },
    ];
    makePlist(acpi: acpi, drops: drops);
  }

  Future<void> ssdtIMEI({bool prebuilt = false, String? fakeid}) async =>
      prebuilt
          ? await _ssdtIMEIPrebuilt(fakeid: fakeid)
          : await _ssdtIMEI(fakeid: fakeid);

  /// SSDT-IMEI
  ///  used for  bridge  receive spoofIMEI device， fit  used for  Ivy Bridge 6 series motherboard and  Sandy Bridge 7 series motherboard
  /// 6 series motherboard require fakeid for 3A1E，7 series motherboard require fakeid for 3A1C
  /// [fakeid] spoofdeviceID
  Future<void> _ssdtIMEI({String? fakeid}) async {
    if (!await ensureDSDT()) return;
    if (fakeid == null) {
      Log.warning(" please  select  select IMEIPatch!");
      return;
    }
    Log(" currently  in  via address 0x00160000 find IMEI device...");
    ({String busParent, String busPath, String tableName})? imei = getDevAtAdr(
      targetAdr: 0x00160000,
    );
    if (imei != null && imei.busParent.isNotEmpty) {
      Log.warning("=> already in ${imei.busPath} found IMEI device,  no  require  bridge  receive spoof!Aborted!");
      Log("");
      return;
    }
    Log("Not found IMEI device,  require spoof this device…");
    Log(" currently  in validate parent device...");
    Log(" currently  in  search  find  position  at  0x00020000   iGPU device…");
    dynamic parent;
    var igpu = getDevAtAdr(targetAdr: 0x00020000);
    if (igpu == null || igpu.busParent.isEmpty) {
      Log("=> Not found iGPU device!");
      Log(" currently  in  try  try  locate  PCI  root device...");
      var pciRoots = [];
      for (var tableName in sortedNicely(d.acpiTables.keys.toList())) {
        var table = d.acpiTables[tableName];
        pciRoots = d.getDevicePathsWithHid(hid: "PNP0A08", table: table);
        pciRoots += d.getDevicePathsWithHid(hid: "PNP0A03", table: table);
        pciRoots += d.getDevicePathsWithHid(hid: "ACPI0016", table: table);
        if (pciRoots.isNotEmpty) {
          break;
        }
      }
      if (pciRoots.isEmpty) {
        Log.warning("=> Not found PCI  root device!Aborted!");
        return;
      }
      parent = pciRoots[0][0];
      Log("=> found PCI  root device: $parent");
    } else {
      Log("=> found iGPU device: ${igpu.busPath}");
      parent = igpu.busParent;
      Log("=>  make  use  parent device: $parent");
    }
    Log("Collecting spoof device-id schemes…");
    if (fakeid.toUpperCase() == '3A1E') {
      Log("=> Spoofed as 7-series IMEI (device-id: $fakeid) for 3rd Gen Ivy Bridge");
    } else if (fakeid.toUpperCase() == '3A1C') {
      Log("=> Spoofed as 6-series IMEI (device-id: $fakeid) for 2nd Gen Sandy Bridge");
    } else {
      Log.warning("=> SSDT IMEI spoof disabled; must set device-id via DeviceProperties!");
    }
    final String ssdtName = "SSDT-IMEI";
    Log("Creating $ssdtName.dsl...");
    String ssdt = "";
    if (fakeid.isEmpty) {
      ssdt = """
//
// Original source from:
// https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-IMEI.dsl
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "IMEI", 0x00000000)
{
    External ([[parent]], DeviceObj)

    Scope ([[parent]])
    {
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
        }
    }
}
""";

      ssdt = ssdt.replaceAll('[[parent]]', parent);
    } else {
      ssdt = """
//
// Original source from:
// https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-IMEI.dsl
//
DefinitionBlock ("", "SSDT", 2, "RAPID", "IMEI", 0x00000000)
{
    External ([[parent]], DeviceObj)

    Scope ([[parent]])
    {
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)
            {
                If (LEqual (Arg2, Zero)) {
                    Return (Buffer (One) { 0x03 })
                }
                Return (Package (0x02)
                {
                    "device-id",
                    Buffer (0x04) { 0x3A, 0x1[[fake]], 0x00, 0x00 }
                })
            }
        }
    }
}
""";

      ssdt = ssdt
          .replaceAll('[[parent]]', parent)
          .replaceAll('[[fake]]', (fakeid.substring(fakeid.length - 1)));
    }

    final acpi = {
      "Comment": fakeid.toUpperCase() == '3A1C'
          ? "Faking IMEI as 6-series to match Sandy Bridge CPU"
          : "Faking IMEI as 7-series to match Ivy Bridge CPU",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi);
    writeSSDT(ssdtName, ssdt);
  }

  /// Fixing Uncore Bridges (X79/C602,X99/C612 Required)
  Future<void> ssdtUNC({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtUNCPrebuilt() : await _ssdtUNC();

  Future<void> _ssdtUNC() async {
    if (!await ensureDSDT()) return;

    Log("Searching for UNC (PNP0A03) device...");
    final devices = d.getDevicePathsWithHid(hid: "PNP0A03");

    if (devices.isEmpty ||
        devices[0].isEmpty ||
        !devices[0].first.split('.').last.startsWith('UNC')) {
      Log.warning("Not found UNC (PNP0A03) device! no  require  SSDT-UNC Patch!Aborted!\n");
      return;
    }

    Log("=>  total found ${devices.length}   UNC device");
    for (int i = 0; i < devices.length; i++) {
      Log("=>  # ${i + 1}   UNC device: ${devices[i].first}");
    }

    final String ssdtName = "SSDT-UNC";
    String ssdt = '';
    Map<String, dynamic> acpi = {};
    List<Map<String, dynamic>> patches = [];

    const staHex = "5F535441"; // _STA
    const xstaHex = "58535441"; // XSTA

    ///  record  record  every   UNC  is  whether  native  exist  in  _STA
    final Map<String, bool> hasStaMap = {};

    for (var device in devices) {
      final devicePath = device.first;
      final devName = devicePath.split('.').last;

      final staMethod = d.getMethodPaths(obj: "$devicePath._STA");

      Log("=>  check  $devName: _STA methodexists");

      final bool hasSta = staMethod.isNotEmpty;
      hasStaMap[devicePath] = hasSta;

      if (!hasSta) {
        Log.warning("=> $devName: _STA methoddoes not exist!");
        continue;
      }

      final staIndex = d.findNextHex(index: staMethod[0][1]).$2;
      Log("=> at index $staIndex found $devName: _STA method!");
      Log("=> generate $devName: _STA  to  XSTA  Patch");

      final (padl, padr) = d.getShortestUniquePad(
        currentHex: staHex,
        index: staIndex,
      );

      Log("");
      Log("           Find: ${padl + staHex + padr}");
      Log("     Replace: ${padl + xstaHex + padr}");
      Log("");

      patches.add({
        "Comment": "$devName _STA to XSTA rename - requires $ssdtName.aml",
        "Find": padl + staHex + padr,
        "Replace": padl + xstaHex + padr,
      });
    }

    ssdt += 'DefinitionBlock ("", "SSDT", 2, "RAPID", "UNC", 0x00001000)\n{\n';

    final List<String> basePaths =
        devices.map((e) => e.first.toString()).toList();

    for (String path in basePaths) {
      ssdt += '    External ($path, DeviceObj)\n';
      if (hasStaMap[path] == true) {
        ssdt += '    External ($path.XSTA, MethodObj)\n';
      }
    }

    ssdt += '\n';

    for (String path in basePaths) {
      final bool hasSta = hasStaMap[path] ?? false;

      String devName =
          path.replaceAll(RegExp(r'_+$'), '').replaceAll('_SB_', '\\_SB');

      if (hasSta) {
        ssdt += '''
    Scope ($devName)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Return ($devName.XSTA ())
        }
    }
''';
      } else {
        ssdt += '''
    Scope ($devName)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
        }
    }
''';
      }
    }

    ssdt += "\n}\n";

    acpi = {
      "Comment":
          "Fixing Uncore Bridges with ${devices.map((e) => e.first.split('.').last).join(', ')} _STA patching",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };

    writeSSDT(ssdtName, ssdt);
    makePlist(acpi: acpi, patches: patches, replace: true);
  }

  Future<void> _ssdtUNCPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-UNC";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtUNC;
    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment": "Fixing Uncore Bridges (X79/C602,X99/C612 Required)",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtDTGP({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtDTGPPrebuilt() : await _ssdtDTGP();

  Future<void> _ssdtDTGP() async {
    if (!await ensureDSDT()) return;
    String methodPath = "";
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (methodPath.isEmpty) {
        // findexists DTGP method
        Log("Checkingexists DTGP method...");
        final dtgp = d.getMethodPaths(obj: "DTGP", table: table);
        if (dtgp.isNotEmpty && dtgp[0].isNotEmpty) {
          Log.warning(
            "=> No need to create SSDT-DTGP,already in ${dtgp[0].first} found DTGP method! Aborted!",
          );
        } else {
          Log("=> Not found DTGP method!");
        }
      }
    }
    if (methodPath.isEmpty) {
      Log("=> in any of the above ACPI tablesNot found DTGP method! \n");
      _ssdtDTGPPrebuilt();
    }
  }

  Future<void> _ssdtDTGPPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-DTGP";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtDTGP;
    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment": "Add DTGP method supported",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtDMAC({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtDMACPrebuilt() : await _ssdtDMAC();

  Future<void> _ssdtDMAC() async {
    if (!await ensureDSDT()) return;
    String devicePath = "";
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");

      ///  according to deviceID: PNP0200 find DMA device
      Log("Searching for DMA (PNP0200) device...");
      final device = d.getDevicePathsWithHid(hid: "PNP0200", table: table);
      if (device.isNotEmpty && device[0].isNotEmpty) {
        Log.warning(
          "=> No need to spoofDMAdevice,already in ${device[0].first} found PNP0200 device! Aborted!\n",
        );
        return;
      } else {
        Log("=> DMA (PNP0200) device not found!");
      }
    }

    if (devicePath.isEmpty) {
      Log.warning("=> in any of the above ACPI tablesNot found DMA (PNP0200) device! Aborted!\n");
      return;
    }

    final lpc = getLpcName();
    if (lpc == null) {
      return;
    }
    String ssdt = """
    
    DefinitionBlock ("", "SSDT", 2, "RAPID", "DMAC", 0x00000000)
{
    External ([[LPC_PATH]], DeviceObj)

    Scope ([[LPC_PATH]])
    {
        Device (DMAC)
        {
            Name (_HID, EisaId ("PNP0200") /* PC-class DMA Controller */)  // _HID: Hardware ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                IO (Decode16,
                    0x0000,             // Range Minimum
                    0x0000,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                IO (Decode16,
                    0x0081,             // Range Minimum
                    0x0081,             // Range Maximum
                    0x01,               // Alignment
                    0x11,               // Length
                    )
                IO (Decode16,
                    0x0093,             // Range Minimum
                    0x0093,             // Range Maximum
                    0x01,               // Alignment
                    0x0D,               // Length
                    )
                IO (Decode16,
                    0x00C0,             // Range Minimum
                    0x00C0,             // Range Maximum
                    0x01,               // Alignment
                    0x20,               // Length
                    )
                DMA (Compatibility, NotBusMaster, Transfer8_16, )
                    {4}
            })
        }
    }
}
    
    """;
    ssdt = ssdt.replaceAll('[[LPC_PATH]]', lpc);
    final String ssdtName = "SSDT-DMAC";
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Spoof a DMA controller for macOS LPC bus and DMA recognition",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> _ssdtDMACPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-DMAC";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtDMAC;
    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment": "Spoof a DMA controller for macOS LPC bus and DMA recognition",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtLED({bool prebuilt = false}) async => _ssdtLED();

  String _methodFlag(List<dynamic> info) {
    if (info.length >= 5) return info[4].toString();
    return "NotSerialized";
  }

  Map<String, dynamic> _renameMethodPatch({
    required String method,
    required String renamed,
    required String flag,
    required String comment,
  }) {
    final methodHex = method.codeUnits
        .map((value) => value.toRadixString(16).padLeft(2, '0'))
        .join()
        .toUpperCase();
    final renamedHex = renamed.codeUnits
        .map((value) => value.toRadixString(16).padLeft(2, '0'))
        .join()
        .toUpperCase();
    final suffix = flag == "NotSerialized" ? "01" : "09";
    return {
      "Comment": comment,
      "Find": "$methodHex$suffix",
      "Replace": "$renamedHex$suffix",
    };
  }

  Future<void> ssdtSleepHook({
    required bool needsPts,
    required bool needsWak,
    bool includeLid = false,
    bool includeLed = false,
    bool includeWakeScreen = false,
    bool includeFixShutdown = false,
  }) async {
    if (!needsPts && !needsWak) return;
    if (!await ensureDSDT()) return;

    List<dynamic> pts = [];
    List<dynamic> wak = [];
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (needsPts && pts.isEmpty) {
        Log("Checking if _PTS method exists...");
        pts = d.getMethodInfo(obj: "_PTS", table: table);
        if (pts.isNotEmpty) {
          Log("=> Found ${pts.first} method!");
        } else {
          Log("=> Method _PTS not found!");
        }
      }
      if (needsWak && wak.isEmpty) {
        Log("Checkingexists _WAK method...");
        wak = d.getMethodInfo(obj: "_WAK", table: table);
        if (wak.isNotEmpty) {
          Log("=> Found ${wak.first} method!");
        } else {
          Log("=> Not found _WAK method!");
        }
      }
      if ((!needsPts || pts.isNotEmpty) && (!needsWak || wak.isNotEmpty)) {
        break;
      }
    }

    if (needsPts && pts.isEmpty) {
      Log.warning("=> Not found _PTS method,   not generate _PTS  adjust  depth  enter  port  and renamePatch!");
    }
    if (needsWak && wak.isEmpty) {
      Log.warning("=> Not found _WAK method,   not generate _WAK  adjust  depth  enter  port  and renamePatch!");
    }
    final hasPtsEntry = needsPts && pts.isNotEmpty;
    final hasWakEntry = needsWak && wak.isNotEmpty;
    if (!hasPtsEntry && !hasWakEntry) {
      Log.warning("=> Not found can  adjust  depth   _PTS/_WAK method,  already skip SSDT-SleepHook!\n");
      return;
    }

    final ssdtName = "SSDT-SleepHook";
    Log("Creating $ssdtName.dsl...");

    final buffer = StringBuffer();
    buffer.writeln(
      'DefinitionBlock ("", "SSDT", 2, "RAPID", "SLPHOOK", 0x00000000)',
    );
    buffer.writeln('{');
    if (pts.isNotEmpty) {
      buffer.writeln('    External (ZPTS, MethodObj)');
      if (includeLid) buffer.writeln('    External (PLID, MethodObj)');
      if (includeFixShutdown) buffer.writeln('    External (PFSH, MethodObj)');
    }
    if (wak.isNotEmpty) {
      buffer.writeln('    External (ZWAK, MethodObj)');
      if (includeLid) buffer.writeln('    External (WLID, MethodObj)');
      if (includeWakeScreen) buffer.writeln('    External (WSCN, MethodObj)');
      if (includeLed) buffer.writeln('    External (WLED, MethodObj)');
    }
    if (pts.isNotEmpty) {
      buffer.writeln('');
      buffer.writeln('    Method (_PTS, 1, ${_methodFlag(pts)})');
      buffer.writeln('    {');
      if (includeLid) {
        buffer.writeln('''
        If (CondRefOf (PLID))
        {
            PLID (Arg0)
        }''');
      }
      if (includeFixShutdown) {
        buffer.writeln('''
        If (CondRefOf (PFSH))
        {
            PFSH (Arg0)
        }''');
      }
      buffer.writeln('''
        ZPTS (Arg0)
    }
''');
    }
    if (wak.isNotEmpty) {
      buffer.writeln('');
      buffer.writeln('    Method (_WAK, 1, ${_methodFlag(wak)})');
      buffer.writeln('    {');
      if (includeLid) {
        buffer.writeln('''
        If (CondRefOf (WLID))
        {
            WLID (Arg0)
        }''');
      }
      if (includeWakeScreen) {
        buffer.writeln('''
        If (CondRefOf (WSCN))
        {
            WSCN (Arg0)
        }''');
      }
      if (includeLed) {
        buffer.writeln('''
        If (CondRefOf (WLED))
        {
            WLED (Arg0)
        }''');
      }
      buffer.writeln('''
        Return (ZWAK (Arg0))
    }
''');
    }
    buffer.writeln('}');

    if (!await writeSSDT(ssdtName, buffer.toString())) return;
    final acpi = {
      "Comment": "Dispatch _PTS/_WAK hooks for selected SSDTs",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    final patches = <Map<String, dynamic>>[];
    if (pts.isNotEmpty) {
      patches.add(
        _renameMethodPatch(
          method: "_PTS",
          renamed: "ZPTS",
          flag: _methodFlag(pts),
          comment: "_PTS to ZPTS rename - requires $ssdtName.aml",
        ),
      );
    }
    if (wak.isNotEmpty) {
      patches.add(
        _renameMethodPatch(
          method: "_WAK",
          renamed: "ZWAK",
          flag: _methodFlag(wak),
          comment: "_WAK to ZWAK rename - requires $ssdtName.aml",
        ),
      );
    }
    await makePlist(acpi: acpi, patches: patches, replace: true);
  }

  Future<void> _ssdtLED() async {
    if (!await ensureDSDT()) return;
    String sstPath = "";
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (sstPath.isEmpty) {
        Log("Checkingexists _SST method...");
        final sst = d.getMethodPaths(obj: "_SST", table: table);
        if (sst.isNotEmpty && sst[0].isNotEmpty) {
          Log("=> already in ${sst[0].first} found _SST method!");
          sstPath = sst[0].first;
        } else {
          Log("=> Not found _SST method!");
        }
      }
    }
    if (sstPath.isEmpty) {
      Log.warning("=> in any of the above ACPI tablesNot found _SST method! Aborted!\n");
      return;
    }
    final ssdtName = "SSDT-LED";
    Log("Creating $ssdtName.dsl...");
    final ssdt = '''
 DefinitionBlock ("", "SSDT", 1, "RAPID", "LED", 0x00000000)
{
    External ($sstPath, MethodObj)
    Method (WLED, 1, NotSerialized)
    {
      
      If (_OSI ("Darwin"))
        {
            If (Arg0 == 0x03)
            {
                $sstPath (One)
            }
        }
    }
}
    ''';
    if (!await writeSSDT(ssdtName, ssdt)) return;
    final acpi = {
      "Comment": "Fixing LED issues - called by SSDT-SleepHook",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    await makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtWakeScreen({bool prebuilt = false}) async =>
      _ssdtWakeScreen();

  Future<void> _ssdtWakeScreen() async {
    if (!await ensureDSDT()) return;
    String devicePath = "";
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (devicePath.isEmpty) {
        Log("Checkingexists PNP0C0D device...");
        final device = d.getDevicePathsWithHid(hid: "PNP0C0D", table: table);
        if (device.isNotEmpty && device[0].isNotEmpty) {
          devicePath = device[0].first;
          Log("=> already in $devicePath found PNP0C0D device!");
        } else {
          Log("=> Not found PNP0C0D device!");
        }
      }
    }
    if (devicePath.isEmpty) {
      Log.warning("=> in any of the above ACPI tablesNot found PNP0C0D device! Aborted!\n");
      return;
    }
    final ssdtName = "SSDT-WakeScreen";
    Log("Creating $ssdtName.dsl...");
    String ssdt = '''
  DefinitionBlock("", "SSDT", 2, "RAPID", "WakeS", 0x00000000)
{
    External($devicePath, DeviceObj)
    Method (WSCN, 1, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            If (Arg0 == 0x03)
            {
                Notify ($devicePath, 0x80)
            }
        }
    }
}      
      ''';
    if (!await writeSSDT(ssdtName, ssdt)) return;
    final acpi = {
      "Comment": "Fixing WakeScreen issues - called by SSDT-SleepHook",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    await makePlist(acpi: acpi, replace: true);
  }

  ///  check  system statussupported condition  situation （_S0, _S3, _S4, _S5）
  /// return value: (supported  system statuscolumn table ,  not supported  system statuscolumn table )
  Future<(List?, List?)> checkSystemState({String? facpPath}) async {
    if (!await ensureDSDT()) return (null, null);
    bool? aoacState = await checkAOAC(facpPath: facpPath);
    final List<String> systemStatesCheck = ["_S0", "_S3", "_S4", "_S5"];
    List<String> systemStatesFound = [];
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      for (final systemState in systemStatesCheck) {
        if (systemStatesFound.contains(systemState)) continue;
        Log("Checkingexists $systemState...");
        final nameSystemState = d.getNamePaths(obj: systemState, table: table);
        final methodSystemState = d.getMethodPaths(
          obj: systemState,
          table: table,
        );
        if (nameSystemState.isNotEmpty && nameSystemState[0].isNotEmpty) {
          Log("=> already in ${nameSystemState[0].first} found $systemState");
          systemStatesFound.add(systemState);
        } else if (methodSystemState.isNotEmpty &&
            methodSystemState[0].isNotEmpty) {
          Log("=> already in ${methodSystemState[0].first} found $systemState");
          systemStatesFound.add(systemState);
        } else {
          Log("=> Not found $systemState");
        }
      }
      if (systemStatesFound.length == systemStatesCheck.length) {
        break;
      }
    }
    Log(" already  check  all ACPI table !");
    // supported system status
    Log("=> supported system status: ${systemStatesFound.join(", ")}");
    //  not supported  system status
    final systemStatesNotSupported = systemStatesCheck
        .where((element) => !systemStatesFound.contains(element))
        .toList();
    if (systemStatesNotSupported.isNotEmpty) {
      Log.warning("=>  not supported system status: ${systemStatesNotSupported.join(", ")}");
    }
    //  non-AOAC machine  device 
    if (false == aoacState) {
      if (systemStatesNotSupported.isEmpty) {
        Log("=>  when  before firmwaresupported common  see  system status!fixsleep issue  issue  after ,macOS can supportedS3sleep!");
      }
      if (systemStatesNotSupported.contains("_S3")) {
        Log.warning("=> Note:  when  before firmware not supported _S3 status,  if BIOSset no  have disable S3  function  capable ,  that  what  machine  device  not supportedS3sleep!");
      }
    } else if (true == aoacState) {
      // AOAC machine  device 
      Log.warning("=> Note:  when  before  is AOAC machine  device ,macOS not supportedS3sleep!");
    } else {
      Log.warning("=>  when  before  not  check  test  to  is  whether  is AOAC machine  device , please  self line confirm  recognize !");
      if (systemStatesNotSupported.isEmpty) {
        Log.warning(
          "=> Current firmware supports standard system states! S3 sleep supported if not AOAC machine!",
        );
      }
    }
    Log("");
    return (systemStatesFound, systemStatesNotSupported);
  }

  Future<bool?> checkAOAC({String? facpPath}) async {
    final (valid, table) = await validateTableSignature(
      'FACP',
      tablePath: facpPath,
    );
    if (!valid) return null;
    Log("Checking Low Power S0 Idle (V5)  value …");
    List<String> lines = table['lines'] ?? [];
    final lowPower = findFacpField(lines, 'Low Power S0 Idle (V5) :');
    Log("get to  Low Power S0 Idle (V5) : $lowPower");

    if (lowPower.isEmpty) {
      Log.warning("Not found Low Power S0 Idle (V5)  value !");
      return null;
    }

    if (lowPower == '0') {
      Log(" when  before  not  is  AOAC  machine  device ,  not  affect  affect macOS system  S3 sleep!");
    } else {
      Log.warning(" when  before  is  AOAC  machine  device , macOS not supported S3 sleep!");
    }
    Log("");
    return lowPower == '1';
  }

  Future<void> ssdtS3Disable({bool prebuilt = false}) async =>
      prebuilt ? _ssdtS3DisablePrebuilt() : _ssdtS3Disable();

  Future<void> _ssdtS3Disable() async {
    if (!await ensureDSDT()) return;
    Log("Checkingexists _S3...");
    String? externalLine;
    String ssdtBody = "";
    bool found = false;
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      final nameS3 = d.getNamePaths(obj: "_S3", table: table);
      final methodS3 = d.getMethodPaths(obj: "_S3", table: table);
      //  large  multiple  number  all  is  Name _S3
      if (nameS3.isNotEmpty && nameS3[0].isNotEmpty) {
        final target = nameS3[0].first;
        Log("=> already in $target found Name _S3!");
        found = true;
        externalLine = 'External (XS3, IntObj)';
        ssdtBody = '''
            Method (_S3, 0, NotSerialized)
            {
                Return (XS3)
            }
    ''';
        break;
      } else if (methodS3.isNotEmpty && methodS3[0].isNotEmpty) {
        final target = methodS3[0].first;
        Log("=> already in $target found Method _S3!");
        found = true;
        externalLine = 'External ($target, MethodObj)';
        ssdtBody = '''
            Method (_S3, 0, NotSerialized)
            {
                Return (XS3 ())
            }
    ''';
        break;
      } else {
        Log("=> Not found Name or Method _S3");
      }
    }
    if (!found) {
      Log.warning("=> Not found Name  or  Method _S3, when  before config not supportedS3sleep! Aborted!");
      return;
    }
    final String ssdtName = "SSDT-S3-Disable";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = '''
    DefinitionBlock("", "SSDT", 2, "RAPID", "S3-OFF", 0x00000000)
    {
        $externalLine

        If (_OSI ("Darwin"))
        {
        }
        Else
        {
          $ssdtBody
        }
    }
    ''';

    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment":
          "Disable S3 System State for macOS - requires _S3 to XS3 rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    final patches = [
      {
        "Comment": "_S3 to XS3 rename - requires $ssdtName.aml",
        "Find": "5F53335F",
        "Replace": "5853335F",
      },
    ];
    makePlist(acpi: acpi, patches: patches, replace: true);
  }

  Future<void> _ssdtS3DisablePrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-S3-Disable";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtS3Disable;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Disable S3 Sleep Method for Darwin",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    final patches = [
      {
        "Comment": "_S3 to ZS3 rename - requires $ssdtName.aml",
        "Find": "5F53335F",
        "Replace": "5853335F",
      },
    ];
    makePlist(acpi: acpi, patches: patches, replace: true);
  }

  Future<void> ssdtLID({bool prebuilt = false}) async => _ssdtLID();

  Future<void> _ssdtLID() async {
    if (!await ensureDSDT()) return;
    String devicePath = "";
    List<dynamic> tts = [];
    bool foundMethodLID = false;
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (devicePath.isEmpty) {
        ///  according to deviceID: PNP0C0D find LID device
        Log("Searching for LID (PNP0C0D) device...");
        final device = d.getDevicePathsWithHid(hid: "PNP0C0D", table: table);
        if (device.isNotEmpty && device[0].isNotEmpty) {
          devicePath = device[0].first;
          Log("=> already in ${device[0].first} found PNP0C0D device!");
        } else {
          Log("=> Not found LID (PNP0C0D) device!");
        }
      }
      if (!foundMethodLID) {
        // startChecking if exists:_LIDmethod
        final methodLID = d.getMethodPaths(obj: "_LID", table: table);
        if (methodLID.isNotEmpty && methodLID[0].isNotEmpty) {
          foundMethodLID = true;
          Log("=> already in ${methodLID[0].first} found Method _LID!");
        } else {
          Log("=> Not found Method _LID!");
        }
      }
      if (tts.isEmpty) {
        Log("Checkingexists _TTSmethod...");
        tts = d.getMethodInfo(obj: "_TTS", table: table);
        if (tts.isNotEmpty) {
          Log("=> Found ${tts.first} method!");
        } else {
          Log("=> Not found _TTS method!");
          Log("Checkingexists ZTTS method...");
          // Checking if exists: ZTTS method
          final ztts = d.getMethodInfo(obj: "ZTTS");
          if (ztts.isNotEmpty) {
            Log.warning("=> Found ${ztts.first} method!");
            Log.warning("=>  when  before method already  be rename, may  non- original  start ACPI table ! please  re-get original  start ACPI table  after  again  try  try !\n");
          } else {
            Log("=> Not found ZTTS method!");
          }
        }
      }
      if (tts.isNotEmpty) {
        Log("");
        break;
      }
    }
    if (devicePath.isEmpty) {
      Log.warning("=>  in  up  describe ACPI table  in  all Not found LID (PNP0C0D) device!Aborted!\n");
      return;
    }
    if (!foundMethodLID) {
      Log.warning("=>  in  up  describe ACPI table  in  all Not found Method _LID!Aborted!\n");
      return;
    }

    final ssdtName = "SSDT-LID";
    Log("Creating $ssdtName.dsl...");
    final ssdt = '''
DefinitionBlock("", "SSDT", 2, "RAPID", "LID", 0x00000000)
{
    External($devicePath, DeviceObj)
    External($devicePath.XLID, MethodObj)
    Scope (_SB)
    {
        Device (PCI9)
        {
            Name (_ADR, Zero)
            Name (FNOK, Zero)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }

    Method (PLID, 1, NotSerialized)
    {
      If (_OSI ("Darwin")) {
          If (Arg0 == 0x03)
        {
            \\_SB.PCI9.FNOK = 1
        }
        Else
        {
            \\_SB.PCI9.FNOK = 0
        }
       }
    }

    Method (WLID, 1, NotSerialized)
    {
       If (_OSI ("Darwin")) {
            \\_SB.PCI9.FNOK = 0
        }
    }

    Scope ($devicePath)
    {
        Method (_LID, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                if(\\_SB.PCI9.FNOK==1)
                {
                    Return (Zero)
                }
                Else
                {
                    Return ($devicePath.XLID())
                }
            }
            Else
            {
                Return ($devicePath.XLID())
            }
        }
    }
}
''';

    if (!await writeSSDT(ssdtName, ssdt)) return;

    final acpi = {
      "Comment":
          "Spoof a PNP0C0E sleep button for macOS sleep and wake - requires _LID to XLID rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    final patches = [
      {
        "Comment": "_LID to XLID rename - requires $ssdtName.aml",
        "Find": "5F4C494400",
        "Replace": "584C494400",
      },
    ];
    await makePlist(acpi: acpi, patches: patches, replace: true);
  }

  Future<void> ssdtPWRB({bool prebuilt = false}) async =>
      prebuilt ? _ssdtPWRBPrebuilt() : _ssdtPWRB();

  Future<void> _ssdtPWRB() async {
    if (!await ensureDSDT()) return;
    String devicePath = "";
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (devicePath.isEmpty) {
        ///  according to deviceID: PNP0C0C find PWRB device
        Log("Searching for PWRB (PNP0C0C) device...");
        final device = d.getDevicePathsWithHid(hid: "PNP0C0C", table: table);
        if (device.isNotEmpty && device[0].isNotEmpty) {
          devicePath = device[0].first;
          Log.warning(
            "=> No need to spoofPWRBdevice,already in ${device[0].first} found PNP0C0C device! Aborted!\n",
          );
          return;
        } else {
          Log("=> Not found PWRB (PNP0C0C) device!");
        }
      }
    }
    if (devicePath.isEmpty) {
      Log.warning("=>  in  up  describe ACPI table  in  all Not found PWRB (PNP0C0C) device!spoof1  i.e.  can ！\n");
      _ssdtPWRBPrebuilt();
    }
  }

  void _ssdtPWRBPrebuilt() {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-PWRB";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtPWRB;
    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment": "Spoof a PNP0C0C power button for macOS sleep and wake",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtSLPB({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtSLPBPrebuilt() : await _ssdtSLPB();

  Future<void> _ssdtSLPB() async {
    if (!await ensureDSDT()) return;
    String devicePath = "";
    bool hasStaMethod = false;
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (devicePath.isEmpty) {
        ///  according to deviceID: PNP0C0E find SLPB device
        Log("Searching for SLPB (PNP0C0E) device...");
        final device = d.getDevicePathsWithHid(hid: "PNP0C0E", table: table);
        if (device.isNotEmpty &&
            device[0].isNotEmpty &&
            device[0].first.isNotEmpty) {
          devicePath = device[0].first;
          Log.warning("=> No need to spoofSLPBdevice,already in $devicePath found PNP0C0E device!");
          // start check  PNP0C0E deviceexists _STA method
          final staMethod = d.getMethodPaths(obj: "$devicePath._STA");
          if (staMethod.isNotEmpty) {
            Log.warning("=> PNP0C0E device $devicePath  exist  in  _STA method!");
            hasStaMethod = true;
          } else {
            Log.warning("=> PNP0C0E device $devicePath does not exist _STA method!");
          }
          break;
        } else {
          Log("=> Not found SLPB (PNP0C0E) device!");
        }
      }
    }

    if (devicePath.isEmpty) {
      Log("=>  in  up  describe ACPI table  in  all Not found SLPB (PNP0C0E) device!spoof1  i.e.  can ！\n");
      _ssdtSLPBPrebuilt();
    } else {
      String ssdtName = "SSDT-SLPB";
      Log("Creating $ssdtName.sdl...");
      String ssdt = "";
      if (hasStaMethod) {
        ssdt = '''
DefinitionBlock ("", "SSDT", 2, "RAPID", "SLPB", 0x00000000)
{
    External ($devicePath._STA, UnknownObj)

    Scope (\\)
    {
        If (_OSI ("Darwin"))
        {
            $devicePath._STA = 0x0B
        }
    }
}
    ''';
      } else {
        ssdt = '''
      DefinitionBlock("", "SSDT", 2, "RAPID", "SLPB", 0x00000000)
{
    Scope ($devicePath)
    {
       Method (_STA, 0, NotSerialized)
      {
                If (_OSI ("Darwin"))
                {
                    Return (0x0B)
                }
                Else
                {
                    Return (Zero)
                }
      }
    }
}
      ''';
      }

      final acpi = {
        "Comment": "Spoof a PNP0C0E sleep button for macOS sleep and wake",
        "Enabled": true,
        "Path": "$ssdtName.aml",
      };
      makePlist(acpi: acpi, replace: true);
      writeSSDT(ssdtName, ssdt);
    }
  }

  Future<void> _ssdtSLPBPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-SLPB";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtSLPB;
    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment": "Spoof a PNP0C0E sleep button for macOS sleep and wake",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtMEM2({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtMEM2Prebuilt() : await _ssdtMEM2();

  Future<void> _ssdtMEM2Prebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-MEM2";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtMEM2;
    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment": "Fixing IGPU issues and memory mapping",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> _ssdtMEM2() async {
    if (!await ensureDSDT()) return;
    String devicePath = "";

    /// deviceID: PNP0C01 find MEM2/RMEM/MEM/AMDN  common  see device
    List<String> posiaDevices = ["MEM2", "RMEM", "MEM", "AMDN"];
    var sortedTables = sortedNicely(d.acpiTables.keys.toList());
    for (var tableName in sortedTables) {
      var table = d.acpiTables[tableName];
      Log("Checking $tableName…");
      if (devicePath.isEmpty) {
        Log("Searching for PNP0C01 device...");
        final device = d.getDevicePathsWithHid(hid: "PNP0C01", table: table);
        if (device.isNotEmpty &&
            device[0].isNotEmpty &&
            posiaDevices.any((element) => device[0].first.contains(element))) {
          devicePath = device[0].first;
          Log.warning(
            "=> No need to spoofMEM2device,already in ${device[0].first} found PNP0C01 device! Aborted!\n",
          );
          return;
        } else {
          Log("=> Not found PNP0C01 device!");
        }
      }
    }

    if (devicePath.isEmpty) {
      Log("=> in any of the above ACPI tablesNot found PNP0C01 device!\n");
      _ssdtMEM2Prebuilt();
    }
  }

  Future<void> ssdtFixShutdown({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtFixShutdownPrebuilt() : await _ssdtFixShutdown();

  Future<void> _ssdtFixShutdownPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-FixShutdown";
    Log("Creating precompiled $ssdtName.dsl...");
    final ssdt = Prebuilt.ssdtFixShutdown;
    if (!await writeSSDT(ssdtName, ssdt)) return;
    final acpi = {
      "Comment":
          "Fixing Shutdown for XHC Controllers - called by SSDT-SleepHook",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    await makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-FixShutdown
  Future<void> _ssdtFixShutdown() async {
    if (!await ensureDSDT()) return;
    Log('Collecting XHC/XHCI/XDCI/CNVW device...');
    var devices = [
      'XHCI',
      'XHC',
      'XHC0',
      'XHC1',
      'XHC2',
      'XHC3',
      'XHC4',
      'XDCI',
      'CNVW',
    ];
    var xhcis = [];
    for (var element in devices) {
      var xhciDevice = d.getDevicePaths(obj: element);
      if (xhciDevice.isNotEmpty &&
          xhciDevice[0].isNotEmpty &&
          xhciDevice[0][0].isNotEmpty) {
        Log('=> Checking ${xhciDevice[0][0]} device is  whether supported PMEE...');
        final fieldLines = getFieldVarWithPath(xhciDevice[0][0]);
        bool hasPMEE = fieldLines.any((line) => line.contains('PMEE'));
        if (!hasPMEE) {
          Log('=> ${xhciDevice[0][0]}  not supported PMEE， already skip');
          continue;
        } else {
          Log('=> ${xhciDevice[0][0]} supported PMEE');
          xhcis.add(xhciDevice[0][0]);
        }
      }
    }
    if (xhcis.isEmpty) {
      Log.warning('=> Not found any  any  symbol  combine  item  item   XHC/XHCI/XDCI/CNVW device！Aborted!\n');
      return;
    }

    Log('');
    final String ssdtName = "SSDT-FixShutdown";
    Log("Creating precompiled $ssdtName.dsl...");

    String ssdt = """
  /* Powers down the USB controller which is needed for proper shutdown.
 * When done incorrectly, macOS will not power down USB as it needs an
 * explicit call for S5 for proper shutdown procedure.
 * Do note this SSDT is called by SSDT-SleepHook from the unified _PTS hook.
 * Source for SSDT: Rehabman
 */

DefinitionBlock ("", "SSDT", 2, "RAPID", "PFSH", 0x00000000)
{
  """;

    for (String basePath in xhcis) {
      ssdt += '    External ($basePath.PMEE, FieldUnitObj)\n';
    }
    ssdt += '\n';

    ssdt += '''
    Method (PFSH, 1, NotSerialized)
    {
        If ((0x05 == Arg0))
        {  
            If (_OSI ("Darwin"))
              {
    ''';

    for (String basePath in xhcis) {
      ssdt += '            $basePath.PMEE = Zero \n';
    }

    ssdt += """
            }
        }
}
""";

    ssdt += "\n}\n";

    if (!await writeSSDT(ssdtName, ssdt)) return;
    final acpi = {
      "Comment":
          "Fixing Shutdown for XHC Controllers - called by SSDT-SleepHook",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    await makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtGPRW({bool prebuilt = true}) async =>
      prebuilt ? await _ssdtGPRWPrebuilt() : await _ssdtGPRW();

  Future<void> _ssdtGPRW() async {
    if (!await ensureDSDT()) return;
    // Checking if exists: GPRW method
    Log('Checkingexists GPRW method...');
    var gprw = d.getMethodPaths(obj: 'GPRW');
    if (gprw.isEmpty) {
      Log.warning('=> Not found GPRW method！');
      // Checking if exists: XPRW method
      Log('Checkingexists XPRW method...');
      var xprw = d.getMethodPaths(obj: 'XPRW');
      if (xprw.isNotEmpty) {
        Log.warning('=> Found XPRW method！ when  before method already  be rename, may  non- original  start ACPI table ! please  re-get original  start ACPI table  after  again  try  try !\n');
        return;
      } else {
        Log.warning('=> Not found XPRW method！Aborted!');
      }
    }
    if (gprw.isNotEmpty) {
      Log('=> already in ${gprw[0][0]} found GPRW method！');
      _ssdtGPRWPrebuilt();
    }
  }

  /// SSDT-GPRW
  Future<void> _ssdtGPRWPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-GPRW";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtGPRW;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Fixing instant awake - requires GPRW to XPRW rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    final patches = [
      {
        "Comment": "GPRW to XPRW rename - requires $ssdtName.aml",
        "Find": "4750525702",
        "Replace": "5850525702",
      },
    ];
    makePlist(acpi: acpi, patches: patches, replace: true);
  }

  Future<void> ssdtUPRW({bool prebuilt = true}) async =>
      prebuilt ? await _ssdtUPRWPrebuilt() : await _ssdtUPRW();

  Future<void> _ssdtUPRW() async {
    if (!await ensureDSDT()) return;
    // Checking if exists: UPRW method
    Log('Checkingexists UPRW method...');
    var uprw = d.getMethodPaths(obj: 'UPRW');
    if (uprw.isEmpty) {
      Log.warning('=> Not found UPRW method！');
      // Checking if exists: XPRW method
      Log('Checkingexists XPRW method...');
      var xprw = d.getMethodPaths(obj: 'XPRW');
      if (xprw.isNotEmpty) {
        Log.warning('=> Found XPRW method！ when  before method already  be rename, may  non- original  start ACPI table ! please  re-get original  start ACPI table  after  again  try  try !\n');
        return;
      } else {
        Log.warning('=> Not found XPRW method！Aborted!');
      }
    }
    if (uprw.isNotEmpty) {
      Log('=> already in ${uprw[0][0]} found UPRW method！');
      _ssdtUPRWPrebuilt();
    }
  }

  /// SSDT-UPRW
  Future<void> _ssdtUPRWPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-UPRW";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtUPRW;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Fixing instant awake - requires UPRW to XPRW rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    final patches = [
      {
        "Comment": "UPRW to XPRW rename - requires $ssdtName.aml",
        "Find": "5550525702",
        "Replace": "5850525702",
      },
    ];
    makePlist(acpi: acpi, patches: patches, replace: true);
  }

  Future<void> ssdtGPI0({bool prebuilt = true}) async =>
      prebuilt ? await _ssdtGPI0Prebuilt() : await _ssdtGPI0();

  Future<void> _ssdtGPI0() async {
    if (!await ensureDSDT()) return;
    Log("Checkingexists GPI0 device...");
    var gpi0s = d.getDevicePaths(obj: "GPI0");
    if (gpi0s.isEmpty || gpi0s[0].isEmpty) {
      Log.warning('=> Not found GPI0 device！Aborted!\n');
      return;
    }
    Log('=> already in ${gpi0s[0].first} found GPI0 device！');

    //  check  GPI0 exists _STA method
    Log("Checking if _STA method exists...");
    final gpioPath = gpi0s[0][0];
    final staMethod = d.getMethodPaths(obj: "$gpioPath._STA");
    if (staMethod.isEmpty) {
      Log.warning('=> Not found _STA method！Aborted!\n');
      return;
    }

    final staIndex = d.findNextHex(index: staMethod[0][1]).$2;
    Log("=> Found ${gpioPath.split('.').last}: _STA method at index $staIndex!");
    Log("=> Generating patch for ${gpioPath.split('.').last}: _STA to XSTA");

    List<Map<String, dynamic>> patches = [];
    const staHex = "5F535441"; // _STA
    const xstaHex = "58535441"; // XSTA
    final (padl, padr) = d.getShortestUniquePad(
      currentHex: staHex,
      index: staIndex,
    );
    final String ssdtName = "SSDT-GPI0";
    Log("");
    Log("           Find: ${padl + staHex + padr}");
    Log("     Replace: ${padl + xstaHex + padr}");
    Log("");

    patches.add({
      "Comment":
          "${gpioPath.split('.').last} _STA to XSTA - requires $ssdtName.aml",
      "Find": padl + staHex + padr,
      "Replace": padl + xstaHex + padr,
    });
    String devName =
        gpioPath.replaceAll(RegExp(r'_+$'), '').replaceAll('_SB_', '\\_SB');
    String ssdt = '''
DefinitionBlock ("", "SSDT", 2, "RAPID", "GPI0", 0x00000000)
{
  
   External ($devName, DeviceObj)
   External ($devName.XSTA, MethodObj)
    Scope ($devName)
    {
        Method (_STA, 0, NotSerialized)
           {
              If (_OSI ("Darwin"))
              {
                 Return (0x0F)
              }
             Return ($devName.XSTA())
           }
    }
}     
''';

    writeSSDT(ssdtName, ssdt);

    final acpi = {
      "Comment":
          "Enable GPI0 device for I2C TouchPads - requires _STA to XSTA rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, patches: patches, replace: true);
  }

  /// SSDT-GPI0
  Future<void> _ssdtGPI0Prebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-GPI0";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtGPI0;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Enable GPI0 device for a I2C TouchPads",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-CPUR
  Future<void> ssdtCPUR({bool prebuilt = true}) async =>
      prebuilt ? _ssdtCPURPrebuilt() : _ssdtCPUR();

  /// SSDT-CPUR for AMD Ryzen
  Future<void> _ssdtCPUR() async {
    if (!await ensureDSDT()) return;
    Log("Determining CPU naming scheme…");
    bool found = false;
    for (var tableName in sortedNicely(d.acpiTables.keys.toList())) {
      var ssdtName = "SSDT-CPUR";
      var table = d.acpiTables[tableName];

      if (!(table["signature"]?.toLowerCase() == "dsdt" ||
          table["signature"]?.toLowerCase() == "ssdt")) {
        ///  not  check  number  data  table  format ,continue
        continue;
      }

      Log("Checking $tableName…");

      List<List<dynamic>>? cpuName;
      try {
        cpuName = d.getProcessorPaths(table: table)[0][0];
      } catch (e) {
        cpuName = null;
      }

      if (cpuName != null && cpuName.isNotEmpty) {
        Log("=> Found Processor at process  device ：$cpuName");
        Log.warning("=>  when  before Processorat process  device  name  name  scheme  scheme  symbol  combine CPU name  name  regular  scope ! no  require  this SSDT!Aborted!");
        return;
      } else {
        // If processor objects not found, continue checking for ACPI0007 devices
        Log("=> No Processor objects found…");
        var procs = d.getDevicePathsWithHid(hid: "ACPI0007", table: table);
        if (procs.isEmpty) {
          Log("=> No ACPI0007 devices found…");
          continue;
        }

        Log("=> Found ${procs.length} ACPI0007 devices");
        found = true;
        // Analyze procs[0][0].split('.') to check if PLTF device exists
        if (!procs[0][0].split(".").contains("PLTF")) {
          Log.warning("=> PLTF device does not exist, SSDT not needed on current Intel platform! Aborted…");
          return;
        }
        var parent = procs[0][0].split(".")[0];
        Log("=>  in  $parent found parent device, processing…");
        var procList = <Map<String, String>>[];
        for (var proc in procs) {
          Log("=> Checking ${proc[0].split('.').last}…");

          var uid = d.getPathOfType(
            objType: "Name",
            obj: "${proc[0]}._UID",
            table: table,
          );
          if (uid.isEmpty) {
            Log("=> Not found! Skipping…");
            continue;
          }

          try {
            var uid0 =
                table["lines"][uid[0][1]].split("_UID, ")[1].split(")")[0];
            Log("=> UID: $uid0");
            procList.add({"proc": proc[0], "uid": uid0});
          } catch (e) {
            Log("=> Not found! Skipping…");
          }
        }

        if (procList.isEmpty) {
          continue;
        }

        Log("Processing ${procList.length} valid processor devices…");

        var ssdt = """
DefinitionBlock ("", "SSDT", 2, "RAPID", "CPUR", 0x00003000)
{
""";

        for (var i = 0; i < procList.length; i++) {
          var procUid = procList[i];
          var proc = procUid["proc"];
          ssdt += "External ($proc, DeviceObj)";
        }

        ssdt += """
    Scope (\\_SB)
    {""";

        // Iterate processor objects and add to SSDT
        for (var i = 0; i < procList.length; i++) {
          var procUid = procList[i];
          var proc = procUid["proc"];
          var uid = procUid["uid"];
          var adr = (i).toRadixString(16).toUpperCase();
          var name = "PR00".substring(0, 4 - adr.length) + adr;

          ssdt += """
        Processor ([[name]], [[uid]], 0x00000810, 0x06)
        {
            
             Return ($proc)
            
            """
              .replaceAll(r"[[name]]", name)
              .replaceAll(r"[[uid]]", uid ?? '')
              .replaceAll(r"[[proc]]", proc ?? '');

          ssdt += """
        }""";
        }
        ssdt += """
    }
}""";

        final acpi = {
          "Comment": "B850,B650,B550,A520 Chipset Required",
          "Enabled": true,
          "Path": "$ssdtName.aml",
        };

        makePlist(acpi: acpi);
        writeSSDT(ssdtName, ssdt);
        return;
      }
    }
    if (!found) {
      Log.warning("=> No qualifying CPU device found, SSDT-CPUR patch not needed! Aborted!");
    }
  }

  /// SSDT-CPUR precompiled file
  Future<void> _ssdtCPURPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-CPUR";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtCPUR;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "B850,B650,B550,A520 Chipset Required",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// Generate SSDT-EC related precompiled files
  /// [isLaptop] Whether laptop (determines desktop vs laptop version)
  /// [injectUSBPower] Whether to inject USB power properties (determines whether to include USBX)
  Future<void> _ssdtECPrebuilt({
    bool isLaptop = false,
    bool injectUSBPower = false,
  }) async {
    // Check if tools are available
    if (!checkIasl()) return;
    // Determine filename and content from parameters
    late String fileName;
    late String ssdtContent;
    late String comment;

    if (injectUSBPower) {
      // When injecting USB power: include USBX identifier
      if (isLaptop) {
        fileName = "SSDT-EC-USBX-LAPTOP";
        ssdtContent = Prebuilt.ssdtECUSBXLaptop;
        comment = "Fake EC on laptop systems with USB power property support";
      } else {
        fileName = "SSDT-EC-USBX-DESKTOP";
        ssdtContent = Prebuilt.ssdtECUSBXDesktop;
        comment =
            "Enable EC on desktop systems with USB power property support";
      }
    } else {
      // When not injecting USB power: omit USBX identifier
      if (isLaptop) {
        fileName = "SSDT-EC-LAPTOP";
        ssdtContent = Prebuilt.ssdtECLaptop;
        comment = "Fake EC for Laptop";
      } else {
        fileName = "SSDT-EC-DESKTOP";
        ssdtContent = Prebuilt.ssdtECDesktop;
        comment = "Enable EC for Desktop";
      }
    }

    Log("Creating precompiled $fileName.dsl...");
    writeSSDT(fileName, ssdtContent);

    final acpi = {"Comment": comment, "Enabled": true, "Path": "$fileName.aml"};
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-PLUG
  Future<void> _ssdtPLUGPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-PLUG";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtPLUG;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment":
          "Fixing Intel CPU power management for Intel 4th to 11th generation",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-PLUG-ALT
  Future<void> _ssdtPLUGALTPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-PLUG-ALT";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtPLUGALT;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment":
          "Fixing Intel CPU power management for Intel 12th generation and newer",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-AWAC
  /// Generate SSDT-AWAC precompiled file
  Future<void> _ssdtAWACPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-AWAC";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtAWAC;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Fixing Incompatible AWAC for intel 8th generation and newer",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-PMC
  Future<void> _ssdtPMCPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-PMC";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtPMC;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Native 300-series NVRAM support",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-PNLF
  Future<void> _ssdtPNLFPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-PNLF";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtPNLF;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Defines PNLF device for backlight control",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-IMEI
  Future<void> _ssdtIMEIPrebuilt({String? fakeid}) async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-IMEI";
    Log("Creating precompiled $ssdtName.dsl...");
    Log("Collecting spoof device-id schemes…");
    String ssdt = Prebuilt.ssdtIMEIFakeId;
    if (fakeid?.toUpperCase() == '3A1E') {
      Log("=> Spoofed as 7-series IMEI (device-id: $fakeid) for 3rd Gen Ivy Bridge");
    } else if (fakeid?.toUpperCase() == '3A1C') {
      Log("=> Spoofed as 6-series IMEI (device-id: $fakeid) for 2nd Gen Sandy Bridge");
    } else {
      Log.warning("=> SSDT IMEI spoof disabled; must set device-id via DeviceProperties!");
      ssdt = Prebuilt.ssdtIMEI;
    }
    ssdt = ssdt.replaceAll(
      '[[FAKEID]]',
      (fakeid != null && fakeid.isNotEmpty)
          ? fakeid.substring(fakeid.length - 1)
          : '',
    );
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment":
          "Adds missing IMEI device to fix Ivy Bridge and Sandy Bridge graphics",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-ALS0
  Future<void> _ssdtALS0Prebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-ALS0";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtALS0;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Faked Ambient Light Sensor",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// SSDT-XOSI
  Future<void> _ssdtXOSIPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-XOSI";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtXOSI;
    final patches = [
      {
        "Comment": "_OSI to XOSI rename - requires $ssdtName.aml",
        "Find": "5F4F5349",
        "Replace": "584F5349",
      },
    ];
    final acpi = {
      "Comment": "_OSI override - requires _OSI to XOSI rename",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, patches: patches, replace: true);
    writeSSDT(ssdtName, ssdt);
  }

  Future<void> _ssdtRHUBPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-RHUB";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtRHUB;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Disable RHUB",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> _ssdtRTC0RANGEPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-RTC0-RANGE";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtRTC0RANGE;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Fixing RTC Range",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// Spoof Ethernet NIC for laptops without built-in LAN
  Future<void> ssdtRMNE() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-RMNE";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtRMNE;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Fake Ethernet Device for NullEthernet",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  Future<void> ssdtPCIDISABLE({
    String? acpiPath,
    String? pciPath,
    String? disableMethod,
    String? type,
  }) async =>
      await _ssdtPCIDISABLE(
        acpiPath: acpiPath ?? pciPath,
        disableMethod: disableMethod ?? 'OFF',
        type: type ?? 'GPU',
      );

  /// Disable PCI device/
  /// [acpiPath] Device ACPI path
  /// [disableMethod] Disable method (supports 'OFF' / 'PS3' / 'IOName')
  /// [type] Device type
  Future<void> _ssdtPCIDISABLE({
    String? acpiPath,
    required String disableMethod,
    required String type,
  }) async {
    if (!checkIasl()) return;

    if (acpiPath == null || !util.checkACPIPath(acpiPath: acpiPath)) {
      Log.warning('No valid ACPI device path provided! Aborted!');
      return;
    }

    var pciPath = acpiPath;
    bool sureDsdtOrACPI = d.acpiTables.isNotEmpty;
    bool foundMethod = false;
    bool needBridge = false;
    bool adrOverflow = false;

    if (sureDsdtOrACPI) {
      if (disableMethod == 'OFF') {
        Log('Checking if device $pciPath has _ON or _OFF methods...');
        foundMethod = _hasMethodInTables(pciPath, ['_ON', '_OFF']);
        if (!foundMethod) {
          Log.warning('Neither _ON nor _OFF method found for $pciPath in DSDT/SSDT! Aborted!');
          return;
        }
      } else if (disableMethod == 'PS3') {
        Log('Checking if device $pciPath has _PS3 or _DSM methods...');
        foundMethod = _hasMethodInTables(pciPath, ['_PS3,_DSM']);
        if (!foundMethod) {
          Log.warning('Neither _PS3 nor _DSM method found for $pciPath in DSDT/SSDT! Aborted!');
          return;
        }
      } else if (disableMethod == 'IOName') {
        Log('Checking device $pciPath...');
        // Check if GPU device exists
        final (pPath, overflow) = acpiDevicePath(sanitizeAcpiPath(pciPath));
        if (pPath != null && pPath.isNotEmpty) {
          adrOverflow = overflow;
          // Check if pciPath has Method: _PRT
          foundMethod = _hasMethodInTables(pciPath, ['_PRT']);
          if (!foundMethod) {
            Log('=> Method _PRT not found for $pciPath in DSDT or SSDT!');
            needBridge = false;
          } else {
            Log.warning("=> Device $pciPath has _PRT method and may hide real device; injecting BRG0 bridge device!");
            needBridge = true;
          }
        } else {
          Log.warning("=> Device $pciPath does not exist!");
          return;
        }
      }
    }

    if (needBridge) {
      Log.warning("Current device path $pciPath may hide real device!");
    }
    if (adrOverflow) {
      needBridge = true;
      Log.warning("=> GPU device $pciPath _ADR address has overflow condition!");
      pciPath = pciPath.substring(0, pciPath.lastIndexOf("."));
      Log.warning("=> Backtracking to parent device path: $pciPath and injecting BRG0 bridge device!");
    }

    final ssdtName = "SSDT-$type-DISABLE-$disableMethod";
    Log('Creating $ssdtName.dsl...');
    Log('=> Target $type device path to disable: $pciPath');
    Log('=> Disable method: $disableMethod method');

    // Ensure absolute path
    if (!pciPath.startsWith('\\')) {
      pciPath = '\\$pciPath';
      Log('=> Device relative path converted to absolute path: $pciPath');
    }

    // Generate SSDT source code
    final ssdt = switch (disableMethod) {
      String m when m.contains('OFF') => _buildSsdtOFF(pciPath, type),
      String m when m.contains('PS3') => _buildSsdtPS3(pciPath, type),
      String m when m.contains('IOName') => _buildSsdtIOName(
          pciPath,
          type,
          needBridge: needBridge,
        ),
      _ => '',
    };

    if (ssdt.isEmpty) {
      Log.warning('Unknown disable method: $disableMethod, aborted.');
      return;
    }

    final acpi = {
      "Comment": "$type disabled via $disableMethod method",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };

    makePlist(acpi: acpi, replace: true);
    await writeSSDT(ssdtName, ssdt);
  }

  /// OFF method
  String _buildSsdtOFF(String pciPath, String type) => '''
/* Based off of RehabMan's SSDT-DDGPU.dsl */
DefinitionBlock("", "SSDT", 2, "RAPID", "OFF", 0)
{
    External($pciPath._OFF, MethodObj)

    Device(RMD1)
    {
        Name(_HID, "RMD10000")
        Method(_STA, 0, NotSerialized)
        {
            If (_OSI("Darwin")) { Return (0x0F) } Else { Return (Zero) }
        }

        Method(_INI)
        {
            If (_OSI("Darwin"))
            {
                // disable discrete GPU if present
                If (CondRefOf($pciPath._OFF)) { $pciPath._OFF() }
            }
        }
    }
}
''';

  /// PS3 method
  String _buildSsdtPS3(String pciPath, String type) => '''
DefinitionBlock("", "SSDT", 2, "RAPID", "PS3", 0)
{
    External($pciPath._DSM, MethodObj)
    External($pciPath._PS3, MethodObj)

    Device(NHG1)
    {
        Name(_HID, "NHG10000")
        Method(_STA, 0, NotSerialized)
        {
            If (_OSI("Darwin")) { Return (0x0F) } Else { Return (Zero) }
        }

        Method(_INI, 0, NotSerialized)
        {
            If (_OSI("Darwin"))
            {
                If (LAnd(CondRefOf($pciPath._DSM), CondRefOf($pciPath._PS3)))
                {
                    $pciPath._DSM(ToUUID("a486d8f8-0bda-471b-a72b-6042a6b5bee0"), 0x0100, 0x1A, Buffer(0x04) { 0x01,0x00,0x00,0x03 })
                    $pciPath._PS3()
                }
            }
        }
    }
}
''';

  /// IOName method
  String _buildSsdtIOName(
    String pciPath,
    String type, {
    bool needBridge = false,
  }) {
    final typeLower = type.toLowerCase();
    final ioName = switch (typeLower) {
      'gpu' => '#display',
      'nvme' => '#storage',
      'pcie' => '#pcie',
      _ => '#device',
    };

    // _DSM method content
    final dsmMethod = '''
    Method (_DSM, 4, NotSerialized)
    {
        If ((!Arg2 || !_OSI ("Darwin")))
        {
            Return (Buffer (One)
            {
                 0x03
            })
        }

        Return (Package (0x0A)
        {
            "name", 
            Buffer (0x09)
            {
                "$ioName"
            }, 

            "IOName", 
            "$ioName", 
            "class-code", 
            Buffer (0x04)
            {
                 0xFF, 0xFF, 0xFF, 0xFF
            }, 

            "vendor-id", 
            Buffer (0x04)
            {
                 0xFF, 0xFF, 0x00, 0x00
            }, 

            "device-id", 
            Buffer (0x04)
            {
                 0xFF, 0xFF, 0x00, 0x00
            }
        })
    }
  ''';

    // Generate bridge device structure
    final bridgeBody = '''
    Scope ($pciPath)
    {
        Device (BRG0)
        {
            Name (_ADR, Zero)
            $dsmMethod
        }
    }
  ''';

    final normalBody = '''
    Scope($pciPath)
    {
       $dsmMethod
    }
  ''';

    return '''
    DefinitionBlock ("", "SSDT", 2, "RAPID", "IOName", 0x00000000)
    {
        External ($pciPath, DeviceObj)
    ${needBridge ? bridgeBody : normalBody}
    }
  ''';
  }

  /// Check if specified methods exist in ACPI table
  /// [pciPath] Device PCI address
  /// [methods] List of methods to check
  bool _hasMethodInTables(String pciPath, List<String> methods) {
    final normalizedPath = pciPath.replaceAll('\\', '');
    final foundSet = <String>{};
    for (final tableName in sortedNicely(d.acpiTables.keys.toList())) {
      final table = d.acpiTables[tableName];

      for (final method in methods) {
        final paths = d.getMethodPaths(obj: method, table: table);
        final hasMethod = paths.any(
          (e) =>
              e[0].replaceAll('.$method', '').replaceAll('\\', '') ==
              normalizedPath,
        );

        if (hasMethod) {
          foundSet.add(method);
          Log("=> Found in $tableName: $pciPath.$method method");
        }
        if (foundSet.length == methods.length) {
          //  all method all Found
          return true;
        }
      }
    }

    // If only partially found, log warning
    if (foundSet.isNotEmpty) {
      final missing = methods.where((m) => !foundSet.contains(m)).join(', ');
      Log.warning('Some methods not found: $missing');
    }

    return false;
  }

  /// SMBUS
  Future<void> ssdtSBUSMCHC({bool prebuilt = false}) async =>
      prebuilt ? await _ssdtSBUSMCHCPrebuilt() : await _ssdtSBUSMCHC();

  Future<void> _ssdtSBUSMCHCPrebuilt() async {
    if (!checkIasl()) return;
    final String ssdtName = "SSDT-SBUS-MCHC";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = Prebuilt.ssdtSBUSMCHC;
    writeSSDT(ssdtName, ssdt);
    final acpi = {
      "Comment": "Defines an MCHC and BUS0 device for SMBus compatibility",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi, replace: true);
  }

  /// smbusPath Device PCI address
  Future<void> _ssdtSBUSMCHC() async {
    if (!await ensureDSDT()) return;
    Log("Collecting potential bus devices…");
    String? busPath, busParent, tableName;
    final dev1F4 = getDevAtAdr(targetAdr: 0x001F0004);
    final dev1F3 = getDevAtAdr(
      targetAdr: 0x001F0003,
      excludeNames: ["AZAL", "HDEF", "HDAS"],
    );
    final dev1B = getDevAtAdr(targetAdr: 0x001B0000);
    final dev14 = getDevAtAdr(targetAdr: 0x00140000);

    ({String busPath, String busParent, String tableName})? busCheck;
    int? adr;

    if (dev1F4 != null && dev1F3 != null) {
      /// New Intel scheme
      busCheck = dev1F4;
      adr = 0x001F0004;
    } else if (dev1F3 != null && dev1B != null) {
      /// Legacy Intel scheme
      busCheck = dev1F3;
      adr = 0x001F0003;
    } else if (dev1F4 != null) {
      ///  may  is New Intel scheme
      busCheck = dev1F4;
      adr = 0x001F0004;
    } else if (dev1F3 != null) {
      ///  may  is Legacy Intel scheme
      busCheck = dev1F3;
      adr = 0x001F0003;
    } else if (dev14 != null) {
      /// Possible AMD scheme, not Intel
      busCheck = dev14;
      adr = 0x00140000;
    }

    if (busCheck == null) {
      Log.warning("=> Failed to find valid bus devices, aborted!");
      return;
    }
    // Destructure variables
    busPath = busCheck.busPath;
    busParent = busCheck.busParent;
    tableName = busCheck.tableName;
    Log(
      "=> in $tableName by address: 0x${adr?.toRadixString(16).toUpperCase().padLeft(8, '0')} found $busPath ",
    );
    final String ssdtName = "SSDT-SBUS-MCHC";
    Log("Creating precompiled $ssdtName.dsl...");
    String ssdt = """/*
 * SMBus compatibility table.
 * Original from: https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-SBUS-MCHC.dsl
 */
DefinitionBlock ("", "SSDT", 2, "RAPID", "SBUSMCHC", 0x00000000)
{
    External ([[bus_parent]], DeviceObj)
    External ([[bus_parent]].MCHC, DeviceObj)
    External ([[bus_path]], DeviceObj)

    // Only create MCHC if it doesn't already exist
    If (LNot (CondRefOf ([[bus_parent]].MCHC)))
    {
        Scope ([[bus_parent]])
        {
            Device (MCHC)
            {
                Name (_ADR, Zero)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    If (_OSI ("Darwin"))
                    {
                        Return (0x0F)
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }
            }
        }
    }

    Device ([[bus_path]].BUS0)
    {
        Name (_CID, "smbus")  // _CID: Compatible ID
        Name (_ADR, Zero)  // _ADR: Address

        /*
        * Uncomment replacing 0x57 with your own value which might be found
        * in SMBus section of Intel datasheet for your motherboard.
        *
        * The "diagsvault" is the diagnostic vault where messages are stored.
        * It's located at address 87 (0x57) on the SMBus controller.
        * While "diagsvault" may refer to diags, a hardware diagnosis program via EFI for Macs
        * that communicates with the SMBus controller, the effect is really unknown for hacks.
        * Uncomment this with caution.
        */

        /**
        Device (DVL0)
        {
            Name (_ADR, 0x57)  // _ADR: Address
            Name (_CID, "diagsvault")  // _CID: Compatible ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If (!Arg2)
                {
                    Return (Buffer (One)
                    {
                        0x57                                             // W
                    })
                }

                Return (Package (0x02)
                {
                    "address", 
                    0x57
                })
            }
        }
        **/

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}""";

    ssdt = ssdt.replaceAll(r"[[bus_parent]]", busParent);
    ssdt = ssdt.replaceAll(r"[[bus_path]]", busPath);
    final acpi = {
      "Comment": "Defines an MCHC and BUS0 device for SMBus compatibility",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi);
    await writeSSDT(ssdtName, ssdt);
  }

  Future<void> ssdtGPUSPOOF({
    String? gpuPath,
    String? deviceId,
    String? fakeModel,
  }) async =>
      await _ssdtGPUSPOOF(
        gpuPath: gpuPath,
        deviceId: deviceId,
        fakeModel: fakeModel,
      );

  /// GPU spoofing
  /// [gpuPath] GPU ACPI path
  /// [deviceId] GPU spoofingID
  /// [fakeModel] GPU spoofingname
  Future<void> _ssdtGPUSPOOF({
    String? gpuPath,
    String? deviceId,
    String? fakeModel,
  }) async {
    if (!checkIasl()) return;
    if (gpuPath == null || !util.checkACPIPath(acpiPath: gpuPath)) {
      Log.warning(" not  prompt  provide valid GPU ACPI path! Aborted!");
      return;
    }
    if (deviceId == null || deviceId.isEmpty || deviceId.length != 4) {
      Log.warning("No valid spoof GPU ID provided! Aborted!");
      return;
    }
    if (fakeModel == null || fakeModel.isEmpty) {
      Log.warning("No valid spoof GPU name provided; skipping model name injection!");
    }
    bool adrOverflow = false;
    bool needBridge = false;
    bool sureDsdtOrACPI = d.acpiTables.isNotEmpty;
    if (sureDsdtOrACPI) {
      Log("Checking GPU device $gpuPath...");
      // Check if GPU device exists
      final (pciPath, overflow) = acpiDevicePath(sanitizeAcpiPath(gpuPath));
      if (pciPath != null && pciPath.isNotEmpty) {
        adrOverflow = overflow;
        // Check if pciPath has Method: _PRT
        bool foundMethod = _hasMethodInTables(gpuPath, ['_PRT']);
        if (!foundMethod) {
          Log('=> Method _PRT not found for $gpuPath in DSDT or SSDT!');
          needBridge = false;
        } else {
          Log.warning("Current GPU path $gpuPath may hide real device!");
          Log.warning("=> Device $gpuPath has _PRT method and may hide real device; injecting GFX0 device!");
          needBridge = true;
        }
      } else {
        Log.warning("=> Device $gpuPath not found in DSDT or SSDT! Aborted!");
        return;
      }
    } else {
      final commonGPUNames = [
        "PEGP",
        "GFX0",
        "GFX1",
        "GFX2",
        "VGA",
        "VID",
        "H000",
      ];
      final gpuName = gpuPath.split(".").last;
      needBridge = !commonGPUNames.contains(gpuName);
    }

    if (adrOverflow) {
      needBridge = true;
      Log.warning("=> GPU device $gpuPath _ADR address has overflow condition!");
      gpuPath = gpuPath.substring(0, gpuPath.lastIndexOf("."));
      Log.warning("=> Backtracking to parent device path: $gpuPath and injecting GFX0 device!");
    }

    String ssdtName = "SSDT-$deviceId-GPU-SPOOF";
    Log("Creating $ssdtName.dsl...");
    Log("=> GPU device path: $gpuPath");
    Log("=> Spoofed GPU ID: $deviceId");
    Log("=> Spoofed GPU model: $fakeModel");

    final dsmMethod = """
    Method (_DSM, 4, NotSerialized)
    {
        If ((!Arg2 || !_OSI ("Darwin")))
        {
            Return (Buffer (One)
            {
              0x03                                         
            })
        }
        Return (Package (0x02)
        {
                "device-id", 
                Buffer (0x02)
                {
                  [[DEVICE_ID]]
                }, 
                [[MODEL_PACKAGE]]
        })
    }
  """;

    final dsmBlock = needBridge
        ? """
        Device (GFX0)
        {
            Name (_ADR, Zero)
            $dsmMethod
        }
      """
        : dsmMethod;

    String ssdt = """
    DefinitionBlock ("", "SSDT", 2, "RAPID", "GPUSPOOF", 0x00001000)
    {

        External ([[GPU_PATH]], DeviceObj)

        Scope ([[GPU_PATH]])
        {
            $dsmBlock
        }
    }
 """;

    ssdt = ssdt.replaceAll(r"[[GPU_PATH]]", gpuPath);
    ssdt = ssdt.replaceAll(
      r"[[DEVICE_ID]]",
      util.convertDeviceIdToSpoof(deviceId),
    );

    String modelPackage = "";
    if (fakeModel != null && fakeModel.isNotEmpty) {
      modelPackage = """
        "model", 
            Buffer ()
            {
                "[[MODEL]]"
            }
      """;
      modelPackage = modelPackage.replaceAll(r"[[MODEL]]", fakeModel);
    }
    ssdt = ssdt.replaceAll(r"[[MODEL_PACKAGE]]", modelPackage);

    final acpi = {
      "Comment": "GPU Spoof",
      "Enabled": true,
      "Path": "$ssdtName.aml",
    };
    makePlist(acpi: acpi);
    await writeSSDT(ssdtName, ssdt);
  }

  /// Clean ACPI path
  /// [path] ACPI path
  List<String>? sanitizeAcpiPath(String path) {
    path = path
        .replaceAll("ACPI(", "")
        .replaceAll(")", "")
        .replaceAll("#", ".")
        .replaceAll("\\", "");

    List<String> newPath = [];
    const String valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789_";
    for (var element in path.split(".")) {
      element = element.replaceAll(RegExp(r"_+$"), "").toUpperCase();
      if (element.length > 4 ||
          !element.split("").every((ch) => valid.contains(ch))) {
        return null;
      }

      newPath.add(element);
    }

    return newPath;
  }

  /// Match ACPI path to PCI path
  /// [path] ACPI path
  /// [return] Matched PCI path and address overflow status
  (String?, bool) acpiDevicePath(List<String>? path) {
    String? matchedPciPath;
    bool adrOverflow = false;
    if (path == null || path.isEmpty) {
      return (matchedPciPath, adrOverflow);
    }
    final (deviceDict, _) = getDevicePaths();
    String? p;
    for (var key in deviceDict.keys) {
      if (compareAcpiPaths(key, path)) {
        p = key;
        break;
      }
    }

    if (p == null) {
      Log("=> Not found!");
      return (matchedPciPath, adrOverflow);
    }
    matchedPciPath = deviceDict[p]!['path'];
    Log("=> Matched PCI path: $matchedPciPath");
    if (deviceDict[p]?["adr_overflow"] == true) {
      final overFlow = getAllMatches(deviceDict, deviceDict[p]?["path"]);
      List<dynamic> devs = [];
      for (var d in overFlow) {
        final devInfo = d.$2;
        if (devInfo["dev_overflow"] != null) {
          devs.addAll(devInfo["dev_overflow"]);
        }
      }
      if (devs.isNotEmpty) {
        Log.warning("Address _ADR overflow detected in device path!");
        Log.warning("The following devices may affect property injection:");
        final uniqueSorted = devs.toSet().toList()..sort();
        for (var d in uniqueSorted) {
          Log.warning("=> $d");
          if (compareAcpiPaths(d, path)) {
            adrOverflow = true;
          }
        }
      }
    }
    return (matchedPciPath, adrOverflow);
  }

  bool compareAcpiPaths(String path, List<String> pathList) {
    final pathCheck = sanitizeAcpiPath(path);
    if (pathCheck == null) {
      return false;
    }
    if (pathList.length != pathCheck.length) {
      return false;
    }
    for (var i = 0; i < pathList.length; i++) {
      if (pathList[i] != pathCheck[i]) {
        return false;
      }
    }
    return true;
  }

  Future<void> makePlist({
    Map<String, dynamic>? acpi,
    List<Map<String, dynamic>>? patches,
    List<Map<String, dynamic>>? drops,
    bool replace = false,
    List<PlistType> targets = const [PlistType.openCore],
  }) async {
    for (var target in targets) {
      _makeSinglePlist(
        target,
        acpi: acpi,
        patches: patches,
        drops: drops,
        replace: replace,
      );
    }
    if (_lastACPIMatchMode != config.acpiMatchMode) {
      _lastACPIMatchMode = config.acpiMatchMode;
    }
  }

  void beginPlistBatch() {
    if (_plistBatchDepth == 0) {
      _batchedPlists.clear();
    }
    _plistBatchDepth++;
  }

  bool batchedPlistContainsSsdt(String pathName) {
    for (final plist in _batchedPlists.values) {
      final add = plist['ACPI']?['Add'];
      if (add is List &&
          add.any(
            (entry) => entry is Map && entry['Path']?.toString() == pathName,
          )) {
        return true;
      }

      final sortedOrder = plist['ACPI']?['SortedOrder'];
      if (sortedOrder is List &&
          sortedOrder.any((entry) => entry?.toString() == pathName)) {
        return true;
      }
    }
    return false;
  }

  void removeBatchedSsdtArtifacts(
    String pathName, {
    bool removeSleepHookPatches = false,
  }) {
    for (final plist in _batchedPlists.values) {
      final add = plist['ACPI']?['Add'];
      if (add is List) {
        add.removeWhere(
          (entry) => entry is Map && entry['Path']?.toString() == pathName,
        );
      }

      final sortedOrder = plist['ACPI']?['SortedOrder'];
      if (sortedOrder is List) {
        sortedOrder.removeWhere((entry) => entry?.toString() == pathName);
      }

      for (final patches in [
        plist['ACPI']?['Patch'],
        plist['ACPI']?['DSDT']?['Patches'],
      ]) {
        if (patches is! List) continue;
        patches.removeWhere((entry) {
          if (entry is! Map) return false;
          final comment = entry['Comment']?.toString() ?? '';
          return comment.contains('requires $pathName') ||
              (removeSleepHookPatches &&
                  (comment.contains('_PTS to ZPTS') ||
                      comment.contains('_WAK to ZWAK')));
        });
      }
    }
  }

  Future<void> endPlistBatch({bool save = true}) async {
    if (_plistBatchDepth == 0) return;

    _plistBatchDepth--;
    if (_plistBatchDepth > 0) return;

    try {
      if (save) {
        _saveBatchedPlists();
      }
    } finally {
      _batchedPlists.clear();
    }
  }

  void _saveBatchedPlists() {
    final parser = PlistParser();
    for (final entry in _batchedPlists.entries) {
      final plist = entry.value;
      if (plist.isEmpty) continue;

      final success = parser.savePlist(entry.key, plist);
      Log(
        success ? 'Successfully saved plist: ${entry.key}' : 'Failed to save plist: ${entry.key}',
      );
      Log('');
    }
  }

  void _makeSinglePlist(
    PlistType type, {
    Map<String, dynamic>? acpi,
    List<Map<String, dynamic>>? patches,
    List<Map<String, dynamic>>? drops,
    bool replace = false,
  }) {
    final plistPath = path.join(
      config.outputDirectory!,
      outputFolder,
      _plistName(type),
    );
    final parser = PlistParser();
    final isBatching = _plistBatchDepth > 0;
    final usesBatchedPlist =
        isBatching && _batchedPlists.containsKey(plistPath);
    final result = usesBatchedPlist
        ? PlistParseResult(
            status: PlistParseStatus.success,
            data: _batchedPlists[plistPath],
          )
        : parser.loadPlist(plistPath);

    if (result.status == PlistParseStatus.parseError) {
      Log(result.message);
      return;
    }
    if (!usesBatchedPlist) {
      Log(
        result.status == PlistParseStatus.success
            ? 'Read plist: $plistPath'
            : 'Create plist: $plistPath',
      );
    }

    var plist = result.data ?? {};
    if (isBatching) {
      _batchedPlists[plistPath] = plist;
    }
    if (type == PlistType.openCore) {
      _prepareOpenCore(
        plist,
        acpi,
        patches,
        drops,
        {
          "NormalizeHeaders": config.acpiMatchMode ==
              ACPIMatchMode.tableIDsAndLengthAndNormalizeHeaders,
        },
        replace,
        type,
      );
    } else {
      _prepareClover(
        plist,
        acpi,
        patches,
        drops,
        {
          "FixHeaders": config.acpiMatchMode ==
              ACPIMatchMode.tableIDsAndLengthAndNormalizeHeaders,
        },
        replace,
        type,
      );
    }

    if (!isBatching && plist.isNotEmpty) {
      final success = parser.savePlist(plistPath, plist);
      Log(
        success ? 'Successfully saved plist: $plistPath' : 'Failed to save plist: $plistPath',
      );
      Log('');
    }
  }

  void _prepareOpenCore(
    Map<String, dynamic> plist,
    Map<String, dynamic>? acpi,
    List<Map<String, dynamic>>? patches,
    List<Map<String, dynamic>>? drops,
    Map<String, dynamic>? quirks,
    bool replace,
    PlistType type,
  ) {
    final ensurePath = util.ensurePath;

    ensurePath(plist, ["ACPI", "Add"]);
    ensurePath(plist, ["ACPI", "Patch"]);
    ensurePath(plist, ["ACPI", "Delete"]);
    ensurePath(plist, ["ACPI", "Quirks"], Map);

    _processSectionWrapper<Map<String, dynamic>>(
      plist: plist,
      type: type,
      keyPath: ["Add"],
      items: acpi,
      buildEntry: (s) => s,
      equalsEntry: (e, s) => e["Path"] == s["Path"],
      replace: replace,
      logCallback: (i) => i["Path"] ?? '',
    );
    _processSectionWrapper(
      plist: plist,
      type: type,
      keyPath: ["Patch"],
      items: patches,
      buildEntry: getOpenCorePatch,
      equalsEntry: (e, p) =>
          util.deepEquals(e["Find"], p["Find"]) &&
          util.deepEquals(e["Replace"], p["Replace"]),
      replace: replace,
      logCallback: (i) => i["Comment"],
    );
    _processSectionWrapper(
      plist: plist,
      type: type,
      keyPath: ["Delete"],
      items: drops,
      buildEntry: getOpenCoreDrop,
      equalsEntry: (e, d) =>
          util.deepEquals(e["TableSignature"], d["TableSignature"]) &&
          util.deepEquals(e["OemTableId"], d['OemTableId']),
      replace: replace,
      logCallback: (i) => i["Comment"],
    );
    _processSectionWrapper(
      plist: plist,
      type: type,
      keyPath: ["Quirks"],
      items: quirks ?? {},
      buildEntry: getOpenCoreQuirks,
      equalsEntry: (e, q) => e == q,
      replace: replace,
      logCallback: (i) => i.toString(),
    );
    _sortOpenCoreAcpiAddByDependencies(plist);
  }

  void _prepareClover(
    Map<String, dynamic> plist,
    Map<String, dynamic>? acpi,
    List<Map<String, dynamic>>? patches,
    List<Map<String, dynamic>>? drops,
    Map<String, dynamic>? quirks,
    bool replace,
    PlistType type,
  ) {
    final ensurePath = util.ensurePath;

    ensurePath(plist, ["ACPI", "SortedOrder"]);
    ensurePath(plist, ["ACPI", "DSDT", "Patches"]);
    ensurePath(plist, ["ACPI", "DropTables"]);

    _processSectionWrapper<String>(
      plist: plist,
      type: type,
      keyPath: ["SortedOrder"],
      items: acpi?["Path"],
      buildEntry: (s) => s,
      equalsEntry: (e, s) => e == s,
      replace: replace,
      logCallback: (i) => i,
    );
    _processSectionWrapper(
      plist: plist,
      type: type,
      keyPath: ["DSDT", "Patches"],
      items: patches,
      buildEntry: getCloverPatch,
      equalsEntry: (e, p) =>
          util.deepEquals(e["Find"], p["Find"]) &&
          util.deepEquals(e["Replace"], p["Replace"]),
      replace: replace,
      logCallback: (i) => i["Comment"],
    );
    _processSectionWrapper(
      plist: plist,
      type: type,
      keyPath: ["DropTables"],
      items: drops,
      buildEntry: getCloverDrop,
      equalsEntry: (e, d) =>
          e["Signature"] == d["Signature"] && e["TableId"] == d["TableId"],
      replace: replace,
      logCallback: (i) => "${i['Signature']} - ${i['Table']['id']}",
    );
    _processSectionWrapper(
      plist: plist,
      type: type,
      keyPath: [""],
      items: quirks ?? {},
      buildEntry: getCloverQuirks,
      equalsEntry: (e, q) => e == q,
      replace: replace,
      logCallback: (i) => i.toString(),
    );
    _sortCloverAcpiSortedOrderByDependencies(plist);
  }

  List<T?> _normalizeItems<T>(dynamic input) {
    if (input == null) return [];

    if (input is List) {
      return input.cast<T?>();
    } else {
      return [input as T?];
    }
  }

  void _sortOpenCoreAcpiAddByDependencies(Map<String, dynamic> plist) {
    final add = plist['ACPI']?['Add'];
    if (add is! List || add.length < 2) return;

    final paths = add
        .whereType<Map>()
        .map((entry) => entry['Path']?.toString())
        .whereType<String>()
        .toList();
    final order = _dependencySortedPaths(paths);
    if (order.isEmpty) return;

    final rank = {for (var i = 0; i < order.length; i++) order[i]: i};
    final indexed = add.asMap().entries.toList();
    indexed.sort((a, b) {
      final aPath = a.value is Map ? a.value['Path']?.toString() : null;
      final bPath = b.value is Map ? b.value['Path']?.toString() : null;
      final aRank = rank[aPath];
      final bRank = rank[bPath];
      if (aRank == null && bRank == null) return a.key.compareTo(b.key);
      if (aRank == null) return 1;
      if (bRank == null) return -1;
      final result = aRank.compareTo(bRank);
      return result != 0 ? result : a.key.compareTo(b.key);
    });

    for (var i = 0; i < indexed.length; i++) {
      add[i] = indexed[i].value;
    }
  }

  void _sortCloverAcpiSortedOrderByDependencies(Map<String, dynamic> plist) {
    final sortedOrder = plist['ACPI']?['SortedOrder'];
    if (sortedOrder is! List || sortedOrder.length < 2) return;

    final paths = sortedOrder
        .map((entry) => entry?.toString())
        .whereType<String>()
        .toList();
    final order = _dependencySortedPaths(paths);
    if (order.isEmpty) return;

    final rank = {for (var i = 0; i < order.length; i++) order[i]: i};
    final indexed = sortedOrder.asMap().entries.toList();
    indexed.sort((a, b) {
      final aRank = rank[a.value?.toString()];
      final bRank = rank[b.value?.toString()];
      if (aRank == null && bRank == null) return a.key.compareTo(b.key);
      if (aRank == null) return 1;
      if (bRank == null) return -1;
      final result = aRank.compareTo(bRank);
      return result != 0 ? result : a.key.compareTo(b.key);
    });

    for (var i = 0; i < indexed.length; i++) {
      sortedOrder[i] = indexed[i].value;
    }
  }

  List<String> _dependencySortedPaths(List<String> paths) {
    final uniquePaths = <String>[];
    final seen = <String>{};
    for (final path in paths) {
      if (seen.add(path)) uniquePaths.add(path);
    }

    final available = uniquePaths.toSet();
    final sorted = <String>[];
    final visiting = <String>{};
    final visited = <String>{};

    void visit(String path) {
      if (visited.contains(path)) return;
      if (visiting.contains(path)) return;
      visiting.add(path);
      for (final dependency in ssdtDependencies[path] ?? const <String>[]) {
        if (available.contains(dependency)) visit(dependency);
      }
      visiting.remove(path);
      visited.add(path);
      sorted.add(path);
    }

    for (final path in uniquePaths) {
      visit(path);
    }
    return sorted;
  }

  void _processSectionWrapper<T>({
    required Map<String, dynamic> plist,
    required PlistType type,
    required List<String> keyPath,
    required dynamic items,
    required T Function(T item) buildEntry,
    required bool Function(T existing, T item) equalsEntry,
    required bool replace,
    required String Function(T item) logCallback,
  }) {
    final normalized = _normalizeItems<T>(items);

    _processSection<T>(
      plist: plist,
      keyPath: keyPath,
      rawItems: normalized,
      buildEntry: buildEntry,
      equalsEntry: equalsEntry,
      replace: replace,
      type: type,
      logCallback: logCallback,
    );
  }

  Object _getOrInitAtPath(Map<String, dynamic> root, List<dynamic> path) {
    Map<String, dynamic> current = root;
    for (int i = 0; i < path.length - 1; i++) {
      current = current.putIfAbsent(path[i], () => <String, dynamic>{})
          as Map<String, dynamic>;
    }

    // If already exists, return directly
    var existing = current[path.last];
    if (existing is Map<String, dynamic>) {
      return existing;
    }
    if (existing is List<dynamic>) {
      return existing;
    }

    // Treat as Map if key ends with "Map", else List
    if (path.last.toLowerCase().contains("map")) {
      return current.putIfAbsent(path.last, () => <String, dynamic>{})
          as Map<String, dynamic>;
    } else {
      return current.putIfAbsent(path.last, () => <dynamic>[]) as List<dynamic>;
    }
  }

  bool _isValidItem(Object? item) {
    return switch (item) {
      String s => s.isNotEmpty,
      Map m => m.isNotEmpty,
      List l => l.isNotEmpty,
      null => false,
      _ => true,
    };
  }

  String _plistName(PlistType type) =>
      type == PlistType.clover ? "patches_Clover.plist" : "patches_OC.plist";

  /// Process specified path in plist
  /// [plist] plist data
  /// [keyPath] path in plist
  /// [rawItems] patch items to add
  /// [buildEntry] convert T to plist entry
  /// [equalsEntry] check duplicate entries
  /// [replace] whether to replace
  /// [type] plist type
  /// [logCallback] log callback
  Map<String, dynamic> _processSection<T>({
    required Map<String, dynamic> plist,
    required List<String> keyPath,
    required List<T?>? rawItems,
    required T Function(T item) buildEntry,
    required bool Function(T existing, T item) equalsEntry,
    required bool replace,
    PlistType type = PlistType.openCore,
    String Function(T item)? logCallback,
  }) {
    // If keyPath is [""], insert into root plist instead of ["ACPI", ...keyPath]
    final effectivePath = (keyPath.length == 1 && keyPath.first.isEmpty)
        ? ["ACPI"]
        : ["ACPI", ...keyPath];

    final section =
        effectivePath.isEmpty ? plist : _getOrInitAtPath(plist, effectivePath);

    final validItems =
        (rawItems ?? []).whereType<T>().where(_isValidItem).toList();

    if (section is List<dynamic>) {
      for (final item in validItems) {
        final entry = buildEntry(item);
        final comment = logCallback?.call(item);

        String patchType = '';
        if (item is Map<String, dynamic> &&
            (item.containsKey('Find') || item.containsKey('Signature'))) {
          patchType = 'Patch';
        }

        // Find matching items
        final index = section.indexWhere((e) => equalsEntry(e, entry));

        if (index != -1) {
          // Already exists
          if (replace) {
            // Replace and update in place
            section[index] = entry;
            Log('=> Update $patchType "$comment" in ${_plistName(type)}');
          } else {
            Log('=> $patchType "$comment" Already exists at  ${_plistName(type)}，skip...');
          }
        } else {
          // Append if not present
          Log('=> Add $patchType "$comment" to ${_plistName(type)}');
          section.add(entry);
        }
      }
    } else if (section is Map<String, dynamic>) {
      for (final item in validItems) {
        final entry = buildEntry(item);
        if (entry is Map<String, dynamic>) {
          for (final kv in entry.entries) {
            final key = kv.key;
            final newValue = kv.value;
            final oldValue = section[key];
            if (oldValue != null) {
              // Already exists this  key → update value 
              if (replace || oldValue != newValue) {
                section[key] = newValue;
                if (_lastACPIMatchMode != config.acpiMatchMode) {
                  Log('=> Update key "$key" to "$newValue" in ${_plistName(type)}');
                }
              } else {
                if (_lastACPIMatchMode != config.acpiMatchMode) {
                  Log('=> Key "$key" already up to date in ${_plistName(type)}');
                }
              }
            } else {
              // Key does not exist -> add
              section[key] = newValue;
              if (_lastACPIMatchMode != config.acpiMatchMode) {
                Log('=> Add key "$key" with value "$newValue" to ${_plistName(type)}');
              }
            }
          }
        }
      }
    } else {
      throw StateError(
        'Path ${[
          "ACPI",
          ...keyPath
        ].join(".")} is neither List nor Map, but ${section.runtimeType}',
      );
    }

    return plist;
  }

  /// Get byte array of data
  /// [data] supports String, List, Uint8List
  /// [padTo] Pad to specified length (fill with 0)
  List<int> getData(dynamic data, {int padTo = 0}) {
    if (data == null) return [];

    late List<int> byteData;

    if (data is String) {
      byteData = data.codeUnits;
    } else if (data is Uint8List) {
      byteData = data.toList();
    } else if (data is List) {
      // Check if all List elements are int
      if (data.every((e) => e is int)) {
        byteData = List<int>.from(data);
      } else {
        byteData = []; // Otherwise return empty
      }
    } else {
      throw ArgumentError('Data must be String, List<int> or Uint8List');
    }

    // Pad to padTo length
    if (padTo > byteData.length) {
      byteData = [...byteData, ...List.filled(padTo - byteData.length, 0)];
    }

    return byteData;
  }

  /// Get table ID
  /// [table] table map
  /// [idName] ID name
  /// [mode] match mode
  List<int> _getTableId(
    Map<dynamic, dynamic>? table,
    String idName, {
    ACPIMatchMode? mode,
  }) {
    mode ??= config.acpiMatchMode; // Default use acpiMatchMode

    if (table == null) {
      mode = ACPIMatchMode.leastStrict;
    }

    // Define zero byte array size
    int byteLength = idName == "id" ? 8 : 4;
    List<int> zero = util.getHexBytes("00" * byteLength);

    dynamic rawValue;

    switch (mode) {
      case ACPIMatchMode.tableIDsAndLength:
        rawValue = table?[idName];
        break;
      case ACPIMatchMode.tableIDsAndLengthAndNormalizeHeaders:
        rawValue = table?["${idName}_ascii"] ?? table?[idName] ?? zero;
        break;
      default: // leastStrict / lengthOnly
        return zero;
    }

    if (rawValue is String) {
      return rawValue.codeUnits;
    } else if (rawValue is List<int>) {
      return rawValue;
    } else {
      return zero;
    }
  }

  /// Get table length
  /// [table] table map
  /// [mode] match mode
  int _getTableLength(Map<dynamic, dynamic>? table, {ACPIMatchMode? mode}) {
    mode ??= config.acpiMatchMode;
    if (table == null || mode == ACPIMatchMode.leastStrict) {
      // Table not found or length is 0
      return 0;
    }
    // If mode is not 0, return table length
    return table["length"] ?? 0;
  }

  /// Clover patch Patch
  /// [patch] patch map
  Map<String, dynamic> getCloverPatch(Map<String, dynamic> patch) {
    return {
      "Comment": patch["Comment"],
      "Disabled": patch.containsKey("Disabled") ? patch["Disabled"] : false,
      "Find": getData(util.getHexBytes(patch["Find"])),
      "Replace": getData(util.getHexBytes(patch["Replace"])),
    };
  }

  Map<String, dynamic> getCloverDrop(Map<String, dynamic> drop) {
    final table = drop['Table'] ?? d.getDsdt();
    int leng = _getTableLength(table);
    Map<String, dynamic> t = {
      "Signature": table["signature"],
      "TableId": table["id"],
    };
    int length = drop['Length'] ?? leng;
    if (length > 0) {
      t["Length"] = length;
    }
    return t;
  }

  /// Clover quirks
  /// [quirks] quirks map
  Map<String, dynamic> getCloverQuirks(Map<String, dynamic> quirks) {
    return {"FixHeaders": quirks["FixHeaders"] ?? false};
  }

  /// OpenCore patch Patch
  /// [patch] patch map
  Map<String, dynamic> getOpenCorePatch(Map<String, dynamic> patch) {
    var table = patch["Table"] ?? d.getDsdt();
    if (table == null || table.isEmpty) {
      table = {};
    }
    return {
      "Base": patch["Base"] ?? "",
      "BaseSkip": patch["BaseSkip"] ?? 0,
      "Comment": patch["Comment"],
      "Count": patch["Count"] ?? 0,
      "Enabled": patch.containsKey("Enabled") ? patch["Enabled"] : true,
      "Find": getData(util.getHexBytes(patch["Find"])),
      "Limit": patch["Limit"] ?? 0,
      "Mask": getData(patch['Mask']),
      "OemTableId": getData(
        patch['TableId'] ?? _getTableId(table, 'id'),
        padTo: 8,
      ),
      "Replace": getData(util.getHexBytes(patch["Replace"])),
      "ReplaceMask": getData(patch['ReplaceMask']),
      "Skip": patch["Skip"] ?? 0,
      "TableLength": patch["Length"] ?? _getTableLength(table),
      "TableSignature": getData(
        patch['Signature'] ?? _getTableId(table, 'signature'),
        padTo: 4,
      ),
    };
  }

  /// OpenCore drop Patch
  /// [drop] drop map
  Map<String, dynamic> getOpenCoreDrop(Map<String, dynamic> drop) {
    var table = drop["Table"] ?? d.getDsdt();
    if (table == null || table.isEmpty) {
      table = {};
    }
    return {
      "All": drop["All"] ?? false,
      "Comment": drop["Comment"] ?? "",
      "Enabled": drop["Enabled"] ?? true,
      "OemTableId": getData(
        drop["TableId"] ?? _getTableId(table, 'id'),
        padTo: 8,
      ),
      "TableLength": drop["Length"] ?? _getTableLength(table),
      "TableSignature": getData(
        drop["Signature"] ?? _getTableId(table, 'signature'),
        padTo: 4,
      ),
    };
  }

  /// OpenCore quirks
  /// [quirks] quirks map
  Map<String, dynamic> getOpenCoreQuirks(Map<String, dynamic> quirks) {
    return {"NormalizeHeaders": quirks["NormalizeHeaders"] ?? false};
  }
}
