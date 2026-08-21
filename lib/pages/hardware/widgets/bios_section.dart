import 'package:flutter/material.dart';
import 'package:rapidefi/pages/hardware/models/hardware_models.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_utils.dart';

class BiosSection extends StatelessWidget {
  final Map<String, dynamic> rawInfo;

  const BiosSection(this.rawInfo, {super.key});

  @override
  Widget build(BuildContext context) {
    final bios = rawInfo['BIOS'] as Map<String, dynamic>?;
    if (bios == null) return const SizedBox.shrink();
    final colors = hardwareThemeColors(context);

    final secureBoot = _setting(bios, 'Secure Boot');
    final csm = _setting(bios, 'CSM');
    final ahci = _setting(bios, 'AHCI');
    final resizableBar = _setting(bios, 'Resizable BAR');
    final above4g = _setting(bios, 'Above 4G Decoding');

    final items = <Widget>[
      if (secureBoot != null)
        _status('Secure Boot: ${secureBoot ? 'Enabled' : 'Disabled'}', good: !secureBoot),
      if (csm != null) _status('CSM: ${csm ? 'Enabled' : 'Disabled'}', good: !csm),
      if (resizableBar != null)
        _status('Resizable BAR: ${resizableBar ? 'Enabled' : 'Disabled'}',
            good: !resizableBar),
      if (above4g != null)
        _status('Above 4G Decoding: ${above4g ? 'Enabled' : 'Disabled'}', good: above4g),
      ahci == null
          ? _unknown('AHCI: Unknown')
          : _status('AHCI: ${ahci ? 'Enabled' : 'Disabled'}', good: ahci),
    ];
    if (items.isEmpty) return const SizedBox.shrink();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: colors.cardColor,
          border: Border.all(color: colors.borderColor),
          borderRadius: BorderRadius.circular(5)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          width: double.infinity,
          child: Text('Current BIOS Settings',
              textAlign: TextAlign.center,
              style: TextStyle(color: colors.textColor, fontSize: 14)),
        ),
        const SizedBox(height: 8),
        Wrap(spacing: 30, runSpacing: 6, children: items),
        const SizedBox(height: 8),
        Text(_biosNote,
            style:
                TextStyle(fontSize: 12, height: 1.45, color: colors.textColor)),
      ]),
    );
  }

  static const _biosNote = 'BIOS Configuration Notes:\n'
      '1. Red text indicates settings that should be changed in BIOS to match recommended states (blue text).\n'
      '2. Blue text indicates optimal settings for macOS.\n\n'
      'Secure Boot: Must be DISABLED (prevents booting unsigned bootloaders like OpenCore).\n'
      'CSM (Compatibility Support Module): Generally DISABLED (except some Intel 4th/5th gen laptop iGPUs, X99, or RX 460).\n'
      'Resizable BAR: Recommended DISABLED in BIOS (if enabled, ensure ResizeAppleGpuBars is set to 0 in Booter -> Quirks).\n'
      'Above 4G Decoding: Recommended ENABLED in BIOS. If not available in BIOS, use npci=0x2000 or npci=0x3000 boot-arg. (Choose either Above 4G in BIOS OR npci boot-arg, not both!)\n'
      'AHCI (SATA Mode): Must be ENABLED (required for macOS to recognize SATA storage drives).';

  Widget _status(String text, {required bool good}) {
    return SelectableText(text,
        style: TextStyle(
          fontSize: 12,
          color: good ? const Color(0xFF2A91FF) : const Color(0xFFD94B4B),
          fontWeight: FontWeight.w600,
        ));
  }

  Widget _unknown(String text) {
    return SelectableText(text,
        style: const TextStyle(
          fontSize: 12,
          color: Color(0xFFFFB627),
          fontWeight: FontWeight.w600,
        ));
  }

  bool? _setting(Map<String, dynamic> data, String key) {
    if (data.containsKey(key)) return isTruthyOrNull(data[key]);
    return null;
  }
}
