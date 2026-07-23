import 'package:flutter/material.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_compatibility.dart';

import 'package:rapidefi/utils/hardware/analysis/hardware_utils.dart';
import 'package:rapidefi/pages/hardware/widgets/hardware_shared.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

class CpuSection extends StatelessWidget {
  final Map<String, dynamic> rawInfo;
  final bool detailed;

  const CpuSection(this.rawInfo, {super.key, this.detailed = false});

  @override
  Widget build(BuildContext context) {
    final data = rawInfo;
    return Column(children: [
      HardwareHeaderCard([_systemLine(context, data)]),
      const SizedBox(height: 6),
      HardwareSection('CPU', _cpuLines(context, data), note: cpuCompatibility(data)),
    ]);
  }

  String _systemLine(BuildContext context, Map<String, dynamic> d) {
    final system = safeMap(d['System']);
    final board = safeMap(d['Motherboard']);
    final platform = safeStr(board['Platform'], fallback: 'Desktop');
    return joinNonEmpty([
      platform,
      safeStr(system['Caption']),
      AppLocalizations.of(context)!.hwBit(safeStr(system['OSArchitecture'])),
    ], '    ');
  }

  List<Widget> _cpuLines(BuildContext context, Map<String, dynamic> d) {
    final cpus = safeList(d['CPU']);
    if (cpus.isEmpty) return [];
    final cpu = safeMap(cpus.first);
    final name = safeStr(cpu['Name']);
    final manufacturer = safeStr(cpu['Manufacturer']);
    final threads = safeStr(cpu['NumberOfLogicalProcessors']);
    String cores = '';

    if (name.toLowerCase().contains('amd') ||
        manufacturer.toLowerCase().contains('amd')) {
      cores = safeStr(cpu['NumberOfEnabledCore']);
    } else {
      cores = safeStr(cpu['NumberOfCores']);
    }

    final vt = isTruthy(cpu['VirtualizationFirmwareEnabled'])
        ? AppLocalizations.of(context)!.hwVirtualizationEnabled
        : AppLocalizations.of(context)!.hwVirtualizationDisabled;
    return [
      HardwareLine([name, cpuCodename(cpu), AppLocalizations.of(context)!.hwCoresThreads(cores, threads)]),
      if (detailed) HardwareLine([AppLocalizations.of(context)!.hwInstructionSet(safeStr(cpu['SIMD Features'])), vt]),
    ];
  }
}
