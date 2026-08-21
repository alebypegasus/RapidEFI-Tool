/// iigpufb.json data model
/// Hierarchy: Generation -> CPU model -> Property list
library;

/// Single iGPU property (JSON raw value converted to plist format)
class IigpufbProperty {
  /// OpenCore plist key name, e.g. 'AAPL,ig-platform-id'
  final String key;

  /// Data type: 'data' or 'string'
  final String dataType;

  /// Property value:
  ///   - data type: hex string without '0x' prefix, e.g. '00009b3e'
  ///   - string type: raw string value
  final String value;

  const IigpufbProperty({
    required this.key,
    required this.dataType,
    required this.value,
  });

  @override
  String toString() => '$key ($dataType): $value';
}

/// Single CPU entry
class IigpufbCpuEntry {
  /// CPU model string, e.g. 'i5-4200u(HD4400)'
  final String cpuModel;

  /// iGPU short name, e.g. 'HD4400'
  final String igpuName;

  /// _note field in JSON (if present), for display only
  final String? note;

  /// Property list to write to plist (excluding igpu / _note)
  final List<IigpufbProperty> properties;

  const IigpufbCpuEntry({
    required this.cpuModel,
    required this.igpuName,
    this.note,
    required this.properties,
  });

  /// Full iGPU model name (from model property, if present)
  String get modelName {
    for (final p in properties) {
      if (p.key == 'model') return p.value;
    }
    return igpuName;
  }

  /// Platform ID value (without '0x' prefix)
  String? get platformId {
    for (final p in properties) {
      if (p.key == 'AAPL,ig-platform-id' ||
          p.key == 'AAPL,snb-platform-id') {
        return p.value;
      }
    }
    return null;
  }

  /// Platform ID key name (Sandy Bridge differs from other gens)
  String? get platformIdKey {
    for (final p in properties) {
      if (p.key == 'AAPL,ig-platform-id' ||
          p.key == 'AAPL,snb-platform-id') {
        return p.key;
      }
    }
    return null;
  }
}

/// One CPU generation
class IigpufbGeneration {
  /// Generation name, e.g. 'Intel 4th Haswell'
  final String name;

  /// All CPU entries for this generation
  final List<IigpufbCpuEntry> cpus;

  const IigpufbGeneration({
    required this.name,
    required this.cpus,
  });
}
