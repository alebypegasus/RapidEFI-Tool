import 'package:flutter/material.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_compatibility.dart';
import 'package:rapidefi/pages/hardware/models/hardware_models.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_utils.dart';
import 'package:rapidefi/pages/hardware/widgets/hardware_shared.dart';

class StorageSection extends StatelessWidget {
  final Map<String, dynamic> rawInfo;
  final bool detailed;

  const StorageSection(this.rawInfo, {super.key, this.detailed = false});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HardwareSection('Storage', _diskLines(), note: diskCompatibility(rawInfo)),
      if (detailed) ...[
        const SizedBox(height: 6),
        _storageSection(),
      ],
    ]);
  }

  List<Widget> _diskLines() {
    final unsupportedIds = unsupportedDiskControllerIds(rawInfo);
    return safeList(rawInfo['Disk']).map((item) {
      final disk = safeMap(item);
      final cap = fmtDiskCap(disk);
      final color = isUnsupportedDisk(disk, unsupportedIds)
          ? CompatibilityNote.unsupported('').color
          : null;
      return HardwareLine([
        safeStr(disk['Model']),
        'Type: ${safeStr(disk['MediaType'], fallback: 'Unknown')}',
        if (cap.isNotEmpty) 'Capacity: $cap',
        'Bus: ${safeStr(disk['BusType'])}',
      ], color: color);
    }).toList();
  }

  Widget _storageSection() {
    final lines = storageControllerEntries(rawInfo).map((entry) {
      final color = entry.compatibility.level == CompatibilityLevel.supported
          ? null
          : entry.compatibility.color;
      return HardwareDeviceBlock([
        HardwareLine([entry.name, 'Device ID: ${entry.deviceId}'], color: color),
        HardwarePathLine(entry.rawDevice, color: color),
      ]);
    }).toList();
    if (lines.isEmpty) return const SizedBox.shrink();
    return HardwareSection('Storage\nController', lines,
        note: storageCompatibility(rawInfo));
  }
}
