import 'package:flutter/material.dart';
import 'package:rapidefi/pages/hardware/models/hardware_models.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_utils.dart';
import 'package:rapidefi/pages/hardware/widgets/gpu_display_name.dart';
import 'package:rapidefi/pages/hardware/widgets/hardware_shared.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

class MonitorSection extends StatelessWidget {
  final Map<String, dynamic> rawInfo;

  const MonitorSection(this.rawInfo, {super.key});

  @override
  Widget build(BuildContext context) {
    final lines = safeMap(rawInfo['Monitor']).entries.expand((entry) {
      final m = safeMap(entry.value);
      final connectedGpu = safeStr(m['Connected GPU']);
      final connectedGpuDisplayName =
          hardwareConnectedGpuDisplayName(rawInfo, connectedGpu);
      return [
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          HardwareLine([
            AppLocalizations.of(context)!.hwModel(entry.key),
            AppLocalizations.of(context)!.hwInterface(safeStr(m['Connector Type'])),
            AppLocalizations.of(context)!.hwResolution(safeStr(m['Resolution']), safeStr(m['CurrentRefreshRate'])),
            safeStr(m['Size']).isEmpty ? '' : AppLocalizations.of(context)!.hwMonitorSize(safeStr(m['Size'])),
          ]),
          Wrap(
              spacing: 12,
              runSpacing: 2,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                SelectableText(AppLocalizations.of(context)!.hwConnectedGpu(connectedGpuDisplayName),
                    style: const TextStyle(fontSize: 14, height: 1.25)),
                HardwareCopy('EDID:', safeStr(m['EDID']), max: 28),
              ]),
        ]),
      ];
    }).toList();
    if (lines.isEmpty) return const SizedBox.shrink();
    return HardwareSection(
      AppLocalizations.of(context)!.hwMonitor,
      lines,
      note: CompatibilityNote.supported(AppLocalizations.of(context)!.hwCompatible),
    );
  }
}
