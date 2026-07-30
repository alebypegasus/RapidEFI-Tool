import 'package:rapidefi/l10n/l10n_helper.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/utils/config/catalogs/bluetooth_nvram/bluetooth_nvram_option.dart';
import 'package:flutter/material.dart';
import 'package:rapidefi/utils/config/models/nvram/nvram_add.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';

class BluetoothWidget extends StatefulWidget {
  final ValueChanged<String?>? onChanged;
  final NvramAdd? nvramAdd;
  final List<BluetoothNvramOption> nvramOptions;
  final BluetoothNvramOption? selectedNvramOption;

  const BluetoothWidget({
    super.key,
    this.onChanged,
    this.nvramAdd,
    this.nvramOptions = const [],
    this.selectedNvramOption,
  });

  @override
  State<BluetoothWidget> createState() => _BluetoothWidgetState();
}

class _BluetoothWidgetState extends State<BluetoothWidget> {
  String tip = l10nGlobal.autoGen5823;

  String _getLocalizedNvramTitle(String optionId) {
    final l10n = AppLocalizations.of(context)!;
    switch (optionId) {
      case 'bluetooth.nvram.default':
        return l10n.bluetoothNvramDefaultTitle;
      case 'bluetooth.nvram.ax':
        return l10n.bluetoothNvramAxTitle;
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    final nvramOptions = widget.nvramOptions;
    final selectedNvramOption = widget.selectedNvramOption;
    return ScrollableChoiceListPanel(
      children: [
        Text(tip, style: const TextStyle(fontSize: 13)),
        ChoiceList(
          subTitle: AppLocalizations.of(context)!.manualBluetoothNvram,
          choices: nvramOptions.map((option) => _getLocalizedNvramTitle(option.id)).toList(),
          selectedChoices: [
            if (selectedNvramOption != null) _getLocalizedNvramTitle(selectedNvramOption.id)
          ],
          allowToggle: true,
          onChanged: (value) {
            final title = value.firstOrNull;
            final option = nvramOptions
                .where((option) => _getLocalizedNvramTitle(option.id) == title)
                .firstOrNull;
            widget.onChanged?.call(option?.id);
          },
        )
      ],
    );
  }
}
