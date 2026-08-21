import 'dart:typed_data';
import 'package:rapidefi/utils/config/models/device_properties/device_property_item.dart';

// ─────────────────────────────────────────────────────────────────────────────
// Selectable item category enum
// ─────────────────────────────────────────────────────────────────────────────
enum MbItemCategory {
  acpiAdd,       // ACPI.Add -> SSDT file
  kextAdd,       // Kernel.Add -> Kext file
  kernelPatch,   // Kernel.Patch -> Kernel patch
  kernelQuirk,   // Kernel.Quirks -> Single bool/int field
  booterQuirk,   // Booter.Quirks -> Single bool/int field
  dpPath,        // DP.Add -> All properties under a PCI path
  miscBoot,      // Misc.Boot -> Single field
  miscSecurity,  // Misc.Security -> Single field
  nvramGuid,     // NVRAM -> Key-value pairs for a single GUID
  platformInfo,  // PI -> Full PlatformInfo settings
  uefiQuirk,     // UEFI.Quirks -> Single bool/int field
}

// ─────────────────────────────────────────────────────────────────────────────
// Generic selectable item
// ─────────────────────────────────────────────────────────────────────────────
class MbConfSelectableItem {
  final MbItemCategory category;

  /// UI display label, e.g. 'SSDT-EC.aml', 'layout-id = 04000000'
  final String label;

  /// Helper description (optional)
  final String description;

  /// Actual data, typed according to category
  final Object data;

  const MbConfSelectableItem({
    required this.category,
    required this.label,
    required this.data,
    this.description = '',
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// Data type description for each category
// ─────────────────────────────────────────────────────────────────────────────
// acpiAdd    → String (SSDT filename, e.g. "SSDT-EC.aml")
// kextAdd    → String (bundlePath, e.g. "Lilu.kext")
// kernelPatch→ MbKernelPatch
// kernelQuirk→ MbQuirkEntry
// booterQuirk→ MbQuirkEntry
// dpPath     → MbDpPath
// miscBoot   → MbMiscEntry
// miscSecurity→MbMiscEntry
// nvramGuid  → MbNvramGuid
// platformInfo→MbPlatformInfoData
// uefiQuirk  → MbQuirkEntry

// ─────────────────────────────────────────────────────────────────────────────
// Data container classes
// ─────────────────────────────────────────────────────────────────────────────

/// Kernel patch entry
class MbKernelPatch {
  final String arch;
  final String base;
  final String comment;
  final int count;
  final bool enabled;
  final Uint8List? find;
  final String identifier;
  final int limit;
  final Uint8List? mask;
  final String maxKernel;
  final String minKernel;
  final Uint8List? replace;
  final Uint8List? replaceMask;
  final int skip;

  const MbKernelPatch({
    required this.arch,
    required this.base,
    required this.comment,
    required this.count,
    required this.enabled,
    this.find,
    required this.identifier,
    required this.limit,
    this.mask,
    required this.maxKernel,
    required this.minKernel,
    this.replace,
    this.replaceMask,
    required this.skip,
  });
}

/// bool/int Quirk entry (Kernel / Booter / UEFI)
class MbQuirkEntry {
  /// Raw key in JSON (PascalCase), e.g. 'SetupVirtualMap'
  final String jsonKey;

  /// Value to set (bool or int)
  final dynamic value;

  const MbQuirkEntry({required this.jsonKey, required this.value});
}

/// PCI path in DeviceProperties
class MbDpPath {
  final String pciPath;
  final List<DevicePropertyItem> properties;

  const MbDpPath({required this.pciPath, required this.properties});
}

/// Single key-value pair for Misc.Boot or Misc.Security
class MbMiscEntry {
  final String key;
  final dynamic value;

  const MbMiscEntry({required this.key, required this.value});
}

/// Single GUID and key-value pairs for NVRAM
class MbNvramGuid {
  final String guid;
  final Map<String, dynamic> entries;

  const MbNvramGuid({required this.guid, required this.entries});
}

/// Full PlatformInfo data
class MbPlatformInfoData {
  final bool? automatic;
  final String? updateSMBIOSMode;
  final bool? updateDataHub;
  final bool? updateNVRAM;
  final bool? updateSMBIOS;
  final bool? useRawUuidEncoding;
  final bool? customMemory;
  final Map<String, dynamic>? generic;

  const MbPlatformInfoData({
    this.automatic,
    this.updateSMBIOSMode,
    this.updateDataHub,
    this.updateNVRAM,
    this.updateSMBIOS,
    this.useRawUuidEncoding,
    this.customMemory,
    this.generic,
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// Motherboard entry (fully parsed configuration)
// ─────────────────────────────────────────────────────────────────────────────
class MbConfEntry {
  final String platform;
  final String vendor;
  final String modelName;

  /// All selectable items (pre-grouped by category)
  final List<MbConfSelectableItem> items;

  const MbConfEntry({
    required this.platform,
    required this.vendor,
    required this.modelName,
    required this.items,
  });
}

// ─────────────────────────────────────────────────────────────────────────────
// Hierarchy navigation helper
// ─────────────────────────────────────────────────────────────────────────────
class MbConfVendor {
  final String name;
  final List<String> models;
  const MbConfVendor({required this.name, required this.models});
}

class MbConfPlatform {
  final String name;
  final List<MbConfVendor> vendors;
  const MbConfPlatform({required this.name, required this.vendors});
}
