import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/services.dart';
import 'package:rapidefi/utils/config/models/device_properties/device_property_item.dart';
import 'package:rapidefi/utils/config/models/motherboard/mbconf_model.dart';

/// mbconfs.json loading, parsing and query service (lazy singleton)
class MbConfService {
  MbConfService._();
  static final MbConfService instance = MbConfService._();

  /// Navigation hierarchy cache: platform -> brand -> model list
  List<MbConfPlatform>? _nav;

  /// Fully parsed entry cache: platform/vendor/model -> MbConfEntry
  final Map<String, MbConfEntry> _cache = {};

  /// Raw JSON (lazy loaded)
  Map<String, dynamic>? _raw;

  // ──────────────────────────────────────────────────────────────────────────
  // Public API
  // ──────────────────────────────────────────────────────────────────────────

  /// Loads JSON and returns lightweight navigation hierarchy
  Future<List<MbConfPlatform>> loadNav() async {
    if (_nav != null) return _nav!;
    await _ensureRaw();
    _nav = _raw!.entries.map((pEntry) {
      final vendors = <MbConfVendor>[];
      final platformMap = pEntry.value as Map<String, dynamic>;
      for (final vEntry in platformMap.entries) {
        final vendorMap = vEntry.value as Map<String, dynamic>;
        final models = <String>[];
        for (final cEntry in vendorMap.entries) {
          final modelMap = cEntry.value as Map<String, dynamic>;
          models.addAll(modelMap.keys);
        }
        vendors.add(MbConfVendor(name: vEntry.key, models: models));
      }
      return MbConfPlatform(name: pEntry.key, vendors: vendors);
    }).toList();
    return _nav!;
  }

  /// Gets full selectable entries for a motherboard
  Future<MbConfEntry?> getEntry(
      String platform, String vendor, String model) async {
    final cacheKey = '$platform|$vendor|$model';
    if (_cache.containsKey(cacheKey)) return _cache[cacheKey];

    await _ensureRaw();
    final platformMap = _raw![platform] as Map<String, dynamic>?;
    if (platformMap == null) return null;

    final vendorMap = platformMap[vendor] as Map<String, dynamic>?;
    if (vendorMap == null) return null;

    // Find model under vendorCode layer
    for (final codeEntry in vendorMap.entries) {
      final modelMap = codeEntry.value as Map<String, dynamic>;
      if (modelMap.containsKey(model)) {
        final raw = modelMap[model] as Map<String, dynamic>;
        final entry = MbConfEntry(
          platform: platform,
          vendor: vendor,
          modelName: model,
          items: _parseItems(raw, platform, vendor, model),
        );
        _cache[cacheKey] = entry;
        return entry;
      }
    }
    return null;
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Internal implementation
  // ──────────────────────────────────────────────────────────────────────────

  Future<void> _ensureRaw() async {
    if (_raw != null) return;
    final str = await rootBundle.loadString('assets/data/mbconfs.json');
    _raw = jsonDecode(str) as Map<String, dynamic>;
  }

  List<MbConfSelectableItem> _parseItems(
    Map<String, dynamic> raw,
    String platform,
    String vendor,
    String model,
  ) {
    final items = <MbConfSelectableItem>[];

    // ── ACPI.Add ──────────────────────────────────────────────
    final acpiAdd = (raw['ACPI']?['Add'] as List?)?.cast<String>() ?? [];
    for (final filename in acpiAdd) {
      items.add(MbConfSelectableItem(
        category: MbItemCategory.acpiAdd,
        label: filename,
        data: filename,
      ));
    }

    // ── Kernel.Add ────────────────────────────────────────────
    final kextAdd = (raw['Kernel']?['Add'] as List?)?.cast<String>() ?? [];
    for (final bundlePath in kextAdd) {
      items.add(MbConfSelectableItem(
        category: MbItemCategory.kextAdd,
        label: bundlePath,
        data: bundlePath,
      ));
    }

    // ── Kernel.Patch ──────────────────────────────────────────
    final patches = (raw['Kernel']?['Patch'] as List?) ?? [];
    for (final p in patches) {
      final map = p as Map<String, dynamic>;
      final patch = MbKernelPatch(
        arch: map['Arch'] as String? ?? '',
        base: map['Base'] as String? ?? '',
        comment: map['Comment'] as String? ?? '',
        count: (map['Count'] as num?)?.toInt() ?? 0,
        enabled: map['Enabled'] as bool? ?? true,
        find: _hexToBytes(map['Find']),
        identifier: map['Identifier'] as String? ?? '',
        limit: (map['Limit'] as num?)?.toInt() ?? 0,
        mask: _hexToBytes(map['Mask']),
        maxKernel: map['MaxKernel'] as String? ?? '',
        minKernel: map['MinKernel'] as String? ?? '',
        replace: _hexToBytes(map['Replace']),
        replaceMask: _hexToBytes(map['ReplaceMask']),
        skip: (map['Skip'] as num?)?.toInt() ?? 0,
      );
      final comment = patch.comment.isNotEmpty ? patch.comment : patch.base;
      items.add(MbConfSelectableItem(
        category: MbItemCategory.kernelPatch,
        label: comment.length > 60 ? '${comment.substring(0, 60)}…' : comment,
        description: patch.comment,
        data: patch,
      ));
    }

    // ── Kernel.Quirks ─────────────────────────────────────────
    final kQuirks = raw['Kernel']?['Quirks'] as Map<String, dynamic>? ?? {};
    for (final entry in kQuirks.entries) {
      items.add(MbConfSelectableItem(
        category: MbItemCategory.kernelQuirk,
        label: '${entry.key} = ${entry.value}',
        data: MbQuirkEntry(jsonKey: entry.key, value: entry.value),
      ));
    }

    // ── Booter.Quirks ─────────────────────────────────────────
    final bQuirks =
        raw['Booter']?['Quirks'] as Map<String, dynamic>? ?? {};
    for (final entry in bQuirks.entries) {
      items.add(MbConfSelectableItem(
        category: MbItemCategory.booterQuirk,
        label: '${entry.key} = ${entry.value}',
        data: MbQuirkEntry(jsonKey: entry.key, value: entry.value),
      ));
    }

    // ── DP.Add ────────────────────────────────────────────────
    final dpAdd = raw['DP']?['Add'] as Map<String, dynamic>? ?? {};
    for (final pathEntry in dpAdd.entries) {
      final pciPath = pathEntry.key;
      final propMap = pathEntry.value as Map<String, dynamic>;
      final props = propMap.entries.map((e) {
        return _parseDpValue(e.key, e.value);
      }).toList();

      final labels = propMap.entries
          .map((e) => '${e.key}=${_formatDpValue(e.value)}')
          .join(', ');
      items.add(MbConfSelectableItem(
        category: MbItemCategory.dpPath,
        label: '$pciPath  [$labels]',
        description: pciPath,
        data: MbDpPath(pciPath: pciPath, properties: props),
      ));
    }

    // ── Misc.Boot ─────────────────────────────────────────────
    final miscBoot = raw['Misc']?['Boot'] as Map<String, dynamic>? ?? {};
    for (final entry in miscBoot.entries) {
      items.add(MbConfSelectableItem(
        category: MbItemCategory.miscBoot,
        label: 'Boot.${entry.key} = ${entry.value}',
        data: MbMiscEntry(key: entry.key, value: entry.value),
      ));
    }

    // ── Misc.Security ─────────────────────────────────────────
    final miscSec =
        raw['Misc']?['Security'] as Map<String, dynamic>? ?? {};
    for (final entry in miscSec.entries) {
      items.add(MbConfSelectableItem(
        category: MbItemCategory.miscSecurity,
        label: 'Security.${entry.key} = ${entry.value}',
        data: MbMiscEntry(key: entry.key, value: entry.value),
      ));
    }

    // ── NVRAM ─────────────────────────────────────────────────
    final nvramAdd = raw['NVRAM'] as Map<String, dynamic>? ?? {};
    for (final guidEntry in nvramAdd.entries) {
      final guid = guidEntry.key;
      if (guidEntry.value is! Map) continue;
      final entries = Map<String, dynamic>.from(
          guidEntry.value as Map<String, dynamic>);
      final preview = entries.entries
          .take(2)
          .map((e) => '${e.key}=${e.value}')
          .join(', ');
      items.add(MbConfSelectableItem(
        category: MbItemCategory.nvramGuid,
        label: '$guid  [$preview${entries.length > 2 ? '…' : ''}]',
        description: guid,
        data: MbNvramGuid(guid: guid, entries: entries),
      ));
    }

    // ── PlatformInfo ──────────────────────────────────────────
    final pi = raw['PI'] as Map<String, dynamic>?;
    if (pi != null) {
      final smbios = (pi['Generic'] as Map<String, dynamic>?)?['SystemProductName']
          as String?;
      items.add(MbConfSelectableItem(
        category: MbItemCategory.platformInfo,
        label: smbios != null ? 'PlatformInfo (SMBIOS: $smbios)' : 'PlatformInfo',
        data: MbPlatformInfoData(
          automatic: pi['Automatic'] as bool?,
          updateSMBIOSMode: pi['UpdateSMBIOSMode'] as String?,
          updateDataHub: pi['UpdateDataHub'] as bool?,
          updateNVRAM: pi['UpdateNVRAM'] as bool?,
          updateSMBIOS: pi['UpdateSMBIOS'] as bool?,
          useRawUuidEncoding: pi['UseRawUuidEncoding'] as bool?,
          customMemory: pi['CustomMemory'] as bool?,
          generic: pi['Generic'] as Map<String, dynamic>?,
        ),
      ));
    }

    // ── UEFI.Quirks ───────────────────────────────────────────
    final uefiQ =
        raw['UEFI']?['Quirks'] as Map<String, dynamic>? ?? {};
    for (final entry in uefiQ.entries) {
      items.add(MbConfSelectableItem(
        category: MbItemCategory.uefiQuirk,
        label: '${entry.key} = ${entry.value}',
        data: MbQuirkEntry(jsonKey: entry.key, value: entry.value),
      ));
    }

    return items;
  }

  // ──────────────────────────────────────────────────────────────────────────
  // Helper utilities
  // ──────────────────────────────────────────────────────────────────────────

  /// Hex string -> Uint8List (returns null on empty/null)
  Uint8List? _hexToBytes(dynamic raw) {
    if (raw == null) return null;
    final str = raw.toString().trim();
    if (str.isEmpty) return null;
    if (str.length.isOdd) return null;
    try {
      final bytes = <int>[];
      for (var i = 0; i < str.length; i += 2) {
        bytes.add(int.parse(str.substring(i, i + 2), radix: 16));
      }
      return Uint8List.fromList(bytes);
    } catch (_) {
      return null;
    }
  }

  /// Parses DP property value as DevicePropertyItem
  DevicePropertyItem _parseDpValue(String key, dynamic value) {
    if (value is int) {
      // integer → 4-byte little-endian DATA
      final bytes = ByteData(4);
      bytes.setUint32(0, value, Endian.little);
      final hex = bytes.buffer
          .asUint8List()
          .map((b) => b.toRadixString(16).padLeft(2, '0'))
          .join();
      return DevicePropertyItem(
        key: key,
        dataType: 'data',
        value: hex,
        comment: 'From mbconfs (int $value)',
      );
    } else {
      final str = value.toString();
      // Pure hex string ('01', '0100', etc.), stored as DATA
      final isHexStr = RegExp(r'^[0-9A-Fa-f]+$').hasMatch(str);
      return DevicePropertyItem(
        key: key,
        dataType: isHexStr ? 'data' : 'string',
        value: str.toLowerCase(),
        comment: 'From mbconfs',
      );
    }
  }

  String _formatDpValue(dynamic value) {
    if (value is int) {
      final bytes = ByteData(4);
      bytes.setUint32(0, value, Endian.little);
      return bytes.buffer
          .asUint8List()
          .map((b) => b.toRadixString(16).padLeft(2, '0'))
          .join();
    }
    return value.toString();
  }
}
