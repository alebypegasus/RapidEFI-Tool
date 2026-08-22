import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
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
    final l10n = AppLocalizations.of(context);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isCompact = constraints.maxWidth < 680;

          final actionButtons = <Widget>[
            if (showHardwareActions)
              _btn(l10n?.btnRefresh ?? 'Refresh', () => onRefresh(), isLoading),
            _btn(l10n?.btnImportReport ?? 'Import Report', onImport, false),
            if (showHardwareActions)
              _btn(l10n?.btnExportReport ?? 'Export Report', onExport, false),
            if (showAcpiExportAction)
              _btn(l10n?.btnExportAcpi ?? 'Export ACPI', onExportAcpi, false),
            _btn(l10n?.btnEfiSettings ?? 'EFI Settings', onPersonalizedEfi, false),
            _btn(l10n?.btnExportEfi ?? 'Export EFI', onOutputEfi, false),
          ];

          if (isCompact) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    ...actionButtons,
                    _segmentedSwitch(context),
                  ],
                ),
              ],
            );
          }

          return Row(
            children: [
              for (final btn in actionButtons) ...[
                btn,
                const SizedBox(width: 8),
              ],
              const Spacer(),
              _segmentedSwitch(context),
            ],
          );
        },
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

  Widget _segmentedSwitch(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final colors = hardwareThemeColors(context);
    return Container(
      height: 30,
      decoration: BoxDecoration(
        color: colors.buttonColor,
        border: Border.all(color: colors.borderColor),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        _segment(context, l10n?.compatibilityStatus ?? 'Summary', !detailed, () => onDetailedChanged(false)),
        _segment(context, l10n?.details ?? 'Details', detailed, () => onDetailedChanged(true)),
      ]),
    );
  }

  Widget _segment(
      BuildContext context, String text, bool selected, VoidCallback onTap) {
    final colors = hardwareThemeColors(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
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
