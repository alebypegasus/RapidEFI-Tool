import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/hardware/models/hardware_models.dart';

class HardwareToolbar extends StatelessWidget {
  final bool isLoading;
  final bool detailed;
  final VoidCallback onRefresh;
  final VoidCallback onImport;
  final VoidCallback onExport;
  final VoidCallback onExportAcpi;
  final VoidCallback onOutputEfi;
  final VoidCallback onPersonalizedEfi;
  final ValueChanged<bool> onDetailedChanged;
  final String importedHardwarePath;
  final String importedAcpiTablesPath;
  final bool showHardwareActions;
  final bool showAcpiExportAction;

  const HardwareToolbar({
    super.key,
    required this.isLoading,
    required this.detailed,
    required this.onRefresh,
    required this.onImport,
    required this.onExport,
    required this.onExportAcpi,
    required this.onOutputEfi,
    required this.onPersonalizedEfi,
    required this.onDetailedChanged,
    this.importedHardwarePath = '',
    this.importedAcpiTablesPath = '',
    this.showHardwareActions = true,
    this.showAcpiExportAction = false,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 18, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            if (showHardwareActions) ...[
              _btn(l10n.refreshHardwareInfo, () => onRefresh(), isLoading),
              const SizedBox(width: 8),
            ],
            _btn(l10n.importHardwareInfo, onImport, false),
            const SizedBox(width: 8),
            if (showHardwareActions) ...[
              _btn(l10n.exportHardwareReport, onExport, false),
              const SizedBox(width: 8),
            ],
            if (showAcpiExportAction) ...[
              _btn(l10n.exportAcpiTables, onExportAcpi, false),
              const SizedBox(width: 8),
            ],
            _btn(l10n.efiSettings, onPersonalizedEfi, false),
            const SizedBox(width: 8),
            _btn(l10n.outputEFI, onOutputEfi, false),
            const Spacer(),
            _segmentedSwitch(context, l10n),
          ]),
        ],
      ),
    );
  }

  Widget _btn(String text, VoidCallback onTap, bool disabled) {
    return SizedBox(
      height: 30,
      child: ElevatedButton(
        onPressed: disabled ? null : onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          textStyle: const TextStyle(fontSize: 13),
        ),
        child: Text(text),
      ),
    );
  }

  Widget _segmentedSwitch(BuildContext context, AppLocalizations l10n) {
    final colors = hardwareThemeColors(context);
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: colors.buttonColor,
        border: Border.all(color: colors.borderColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        _segment(context, l10n.summaryView, !detailed, () => onDetailedChanged(false)),
        _segment(context, l10n.detailedView, detailed, () => onDetailedChanged(true)),
      ]),
    );
  }


  Widget _segment(
      BuildContext context, String text, bool selected, VoidCallback onTap) {
    final colors = hardwareThemeColors(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 64,
        height: 28,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? colors.highlightColor : Colors.transparent,
          borderRadius: BorderRadius.circular(3),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 13,
            color: selected ? Colors.white : colors.textColor,
          ),
        ),
      ),
    );
  }
}
