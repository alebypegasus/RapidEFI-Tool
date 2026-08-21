import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:rapidefi/utils/config/models/device_properties/iigpufb_model.dart';

/// iigpufb.json loading and query service (lazy singleton)
class IigpufbService {
  IigpufbService._();
  static final IigpufbService instance = IigpufbService._();

  List<IigpufbGeneration>? _cache;

  /// Asynchronously loads and parses iigpufb.json; cached on subsequent calls
  Future<List<IigpufbGeneration>> load() async {
    if (_cache != null) return _cache!;
    final jsonStr =
        await rootBundle.loadString('assets/data/iigpufb.json');
    final raw = jsonDecode(jsonStr) as Map<String, dynamic>;
    _cache = raw.entries
        .map((e) => _parseGeneration(e.key, e.value as Map<String, dynamic>))
        .toList();
    return _cache!;
  }

  // ---------- Internal Parsing ----------

  IigpufbGeneration _parseGeneration(
      String name, Map<String, dynamic> cpuMap) {
    final cpus = cpuMap.entries
        .map((e) => _parseCpu(e.key, e.value as Map<String, dynamic>))
        .toList();
    return IigpufbGeneration(name: name, cpus: cpus);
  }

  IigpufbCpuEntry _parseCpu(String model, Map<String, dynamic> props) {
    const metaKeys = {'igpu', '_note'};
    // These keys have string values, not hex
    const stringKeys = {
      'model',
      'device_type',
      'AAPL,slot-name',
      'hda-gfx',
    };

    final igpu = props['igpu'] as String? ?? '';
    final note = props['_note'] as String?;

    final properties = <IigpufbProperty>[];
    for (final entry in props.entries) {
      if (metaKeys.contains(entry.key)) continue;
      final rawVal = entry.value.toString();
      final isHex = rawVal.startsWith('0x') || rawVal.startsWith('0X');
      final isString = stringKeys.contains(entry.key);

      if (isHex && !isString) {
        // Remove '0x' prefix, convert to lowercase, keep byte order
        properties.add(IigpufbProperty(
          key: entry.key,
          dataType: 'data',
          value: rawVal.substring(2).toLowerCase(),
        ));
      } else {
        properties.add(IigpufbProperty(
          key: entry.key,
          dataType: 'string',
          value: rawVal,
        ));
      }
    }

    return IigpufbCpuEntry(
      cpuModel: model,
      igpuName: igpu,
      note: note,
      properties: properties,
    );
  }
}
