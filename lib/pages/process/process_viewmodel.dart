import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:rapidefi/utils/config/config_model.dart';
import 'package:rapidefi/utils/config/presets/platform_profiles/platform_configs.dart';
import 'package:rapidefi/utils/file_util.dart';
import 'package:rapidefi/utils/ssdttool/parser.dart';
import 'package:rapidefi/utils/config/models/acpi/acpi.dart';
import 'package:rapidefi/utils/config/models/acpi/acpi_add_item.dart';
import 'package:rapidefi/utils/config/models/acpi/acpi_delete_item.dart';
import 'package:rapidefi/utils/config/models/acpi/acpi_patch_item.dart';
import 'package:rapidefi/utils/config/models/acpi/acpi_quirks.dart';

class ProcessViewModel extends ChangeNotifier {
  ConfigModel? _configModel;
  String? _acpiSourceDirectory;
  bool _highlighted = false;
  bool _importing = false;
  int _configRevision = 0;

  ConfigModel? get configModel => _configModel;
  String? get acpiSourceDirectory => _acpiSourceDirectory;
  bool get highlighted => _highlighted;
  bool get importing => _importing;
  int get configRevision => _configRevision;
  bool get hasConfigModel => _configModel != null;

  void setHighlighted(bool value) {
    if (_highlighted == value || _importing) return;
    _highlighted = value;
    notifyListeners();
  }

  void clearConfigModel() {
    if (!hasConfigModel || _importing) return;
    _configModel = null;
    _acpiSourceDirectory = null;
    _highlighted = false;
    _configRevision++;
    notifyListeners();
  }

  Future<void> readConfigModelFromPath(String filePath) async {
    if (_importing) return;

    _importing = true;
    notifyListeners();

    try {
      final configModel = await FileUtils.readFromFile(
        directoryPath: filePath,
      );
      _validateImportedConfigModel(configModel);
      await _syncAcpiFromSourceConfig(configModel, filePath);
      final acpiSourceDirectory = await _findAcpiSourceDirectory(filePath);

      _configModel = configModel;
      _acpiSourceDirectory = acpiSourceDirectory;
      _highlighted = false;
      _configRevision++;
    } catch (error, stackTrace) {
      debugPrint('read configModel failed: $error');
      debugPrintStack(stackTrace: stackTrace);

      _configModel = null;
      _acpiSourceDirectory = null;
      _highlighted = false;
      _configRevision++;
      rethrow;
    } finally {
      _importing = false;
      notifyListeners();
    }
  }

  void _validateImportedConfigModel(ConfigModel configModel) {
    final platformModel = Configs().configsRepository.getPlatformModel(
          configModel.cpuType,
          configModel.platformType,
        );

    if (platformModel == null ||
        !platformModel.platforms.containsKey(configModel.platformCode) ||
        configModel.platformInfo.generic == null) {
      throw const FormatException('Invalid imported configModel data');
    }
  }

  Future<String?> _findAcpiSourceDirectory(String configModelPath) async {
    final acpiDirectory = Directory(
      path.join(path.dirname(configModelPath), 'EFI', 'OC', 'ACPI'),
    );
    if (!await acpiDirectory.exists()) return null;
    return acpiDirectory.path;
  }

  Future<void> _syncAcpiFromSourceConfig(
    ConfigModel configModel,
    String configModelPath,
  ) async {
    final configPlist = File(
      path.join(path.dirname(configModelPath), 'EFI', 'OC', 'config.plist'),
    );
    if (!await configPlist.exists()) return;

    final result = PlistParser().loadPlist(configPlist.path);
    if (result.status != PlistParseStatus.success) return;

    final acpi = _asMap(result.data?['ACPI']);
    if (acpi.isEmpty) return;

    configModel.acpi = Acpi(
      acpiAddItems: _parseList(acpi['Add'], AcpiAddItem.fromJson),
      acpiDeleteItems: _parseList(acpi['Delete'], AcpiDeleteItem.fromJson),
      acpiPatchItems: _parseList(acpi['Patch'], AcpiPatchItem.fromJson),
      acpiQuirks: acpi['Quirks'] is Map
          ? AcpiQuirks.fromJson(_asMap(acpi['Quirks']))
          : configModel.acpi.acpiQuirks,
    );
  }

  List<T> _parseList<T>(
    Object? raw,
    T Function(Map<String, dynamic>) fromJson,
  ) {
    if (raw is! List) return const [];
    return raw
        .whereType<Map>()
        .map((item) => fromJson(_asMap(item)))
        .toList();
  }

  Map<String, dynamic> _asMap(Object? raw) {
    if (raw is! Map) return {};
    return raw.map((key, value) => MapEntry(key.toString(), value));
  }
}
