import 'package:flutter/material.dart';
import 'package:rapidefi/pages/hardware/models/hardware_models.dart';
import 'package:rapidefi/pages/hardware/widgets/hardware_shared.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_analysis.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

class IOSection extends StatelessWidget {
  final Map<String, dynamic> rawInfo;
  final bool detailed;

  const IOSection(this.rawInfo, {super.key, this.detailed = false});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      _sdSection(context),
      if (detailed) ...[
        const SizedBox(height: 6),
        _inputSection(context),
      ],
    ]);
  }

  Widget _inputSection(BuildContext context) {
    final lines = hardwareDevices(rawInfo['Input']).where((entry) {
      final device = safeMap(entry.value);
      final deviceId = safeStr(device['Device ID']);
      final deviceValue = safeStr(device['Device']);
      final acpiPath = safeStr(device['ACPI Path']);
      final pciPath = safeStr(device['PCI Path']);
      if (isBtSvcInput(device, deviceId, deviceValue, acpiPath, pciPath)) {
        return false;
      }
      return deviceValue.isNotEmpty ||
          acpiPath.isNotEmpty ||
          pciPath.isNotEmpty;
    }).map((entry) {
      final device = safeMap(entry.value);
      final deviceText =
          safeStr(device['Device'], fallback: safeStr(device['Device ID']));
      return HardwareDeviceBlock([
        HardwareLine([
          deviceDisplayName(entry.key, device),
          if (deviceText.isNotEmpty) AppLocalizations.of(context)!.hwDevice(deviceText),
          if (detailed && safeStr(device['Device Type']).isNotEmpty)
            AppLocalizations.of(context)!.hwType(safeStr(device['Device Type'])),
        ]),
        if (detailed) HardwarePathLine(device),
      ]);
    }).toList();
    if (lines.isEmpty) return const SizedBox.shrink();
    return HardwareSection(AppLocalizations.of(context)!.hwInput, lines);
  }

  Widget _sdSection(BuildContext context) {
    final lines = sdCardEntries(rawInfo).map((entry) {
      final color = entry.compatibility.level == CompatibilityLevel.supported
          ? null
          : entry.compatibility.color;
      return HardwareDeviceBlock([
        HardwareLine([
          entry.name,
          entry.manufacturer,
          if (entry.deviceId.isNotEmpty) AppLocalizations.of(context)!.hwDeviceID(entry.deviceId),
          if (entry.device.isNotEmpty) AppLocalizations.of(context)!.hwDevice(entry.device),
          if (entry.readerName.isNotEmpty) AppLocalizations.of(context)!.hwModel(entry.readerName),
          if (entry.builtIn.isNotEmpty) AppLocalizations.of(context)!.hwBuiltIn(entry.builtIn),
        ], color: color),
        if (entry.serialNumber.isNotEmpty && detailed)
          HardwareLine([AppLocalizations.of(context)!.hwSerialNumber(entry.serialNumber)], color: color),
        if (detailed) HardwarePathLine(entry.rawDevice, color: color),
      ]);
    }).toList();
    if (lines.isEmpty) return const SizedBox.shrink();
    return HardwareSection(AppLocalizations.of(context)!.hwSDCard, lines, note: sdCompatibility(rawInfo));
  }
}
