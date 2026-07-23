import 'package:flutter/material.dart';
import 'package:rapidefi/pages/hardware/models/hardware_models.dart';
import 'package:rapidefi/utils/hardware/analysis/hardware_utils.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

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
        _status(AppLocalizations.of(context)!.hwSecureBoot(secureBoot ? AppLocalizations.of(context)!.hwEnabled : AppLocalizations.of(context)!.hwDisabled), good: !secureBoot),
      if (csm != null) _status(AppLocalizations.of(context)!.hwCSM(csm ? AppLocalizations.of(context)!.hwEnabled : AppLocalizations.of(context)!.hwDisabled), good: !csm),
      if (resizableBar != null)
        _status(AppLocalizations.of(context)!.hwResizableBar(resizableBar ? AppLocalizations.of(context)!.hwEnabled : AppLocalizations.of(context)!.hwDisabled),
            good: !resizableBar),
      if (above4g != null)
        _status(AppLocalizations.of(context)!.hwAbove4G(above4g ? AppLocalizations.of(context)!.hwEnabled : AppLocalizations.of(context)!.hwDisabled), good: above4g),
      ahci == null
          ? _unknown(AppLocalizations.of(context)!.hwAHCIUnknown)
          : _status(AppLocalizations.of(context)!.hwAHCI(ahci ? AppLocalizations.of(context)!.hwEnabled : AppLocalizations.of(context)!.hwDisabled), good: ahci),
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
          child: Text(AppLocalizations.of(context)!.hwCurrentBiosSettings,
              textAlign: TextAlign.center,
              style: TextStyle(color: colors.textColor, fontSize: 14)),
        ),
        const SizedBox(height: 8),
        Wrap(spacing: 30, runSpacing: 6, children: items),
        const SizedBox(height: 8),
        Text(AppLocalizations.of(context)!.hwBiosNote,
            style:
                TextStyle(fontSize: 12, height: 1.45, color: colors.textColor)),
      ]),
    );
  }


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
