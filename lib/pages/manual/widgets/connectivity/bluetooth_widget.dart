import 'package:rapidefi/utils/config/catalogs/bluetooth_nvram/bluetooth_nvram_option.dart';
import 'package:flutter/material.dart';
import 'package:rapidefi/utils/config/models/nvram/nvram_add.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

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
  static const String tip = r'''
Bluetooth Driver Notes:
1. When Intel Wi-Fi is selected, Intel Bluetooth drivers are automatically configured based on macOS version!
2. When Broadcom Wi-Fi is selected, Broadcom Bluetooth drivers are automatically configured based on macOS version!
3. When Atheros Wi-Fi is selected, Atheros Bluetooth drivers are automatically configured!
4. Manually select Bluetooth parameters only if not covered above or for standalone modules.
5. Bluetooth uses USB internally; ensure USB ports are properly mapped if Bluetooth is malfunctioning!
''';

  @override
  Widget build(BuildContext context) {
    final nvramOptions = widget.nvramOptions;
    final selectedNvramOption = widget.selectedNvramOption;
    return ScrollableChoiceListPanel(
      children: [
        Text(
          HackintoshDetailsTranslator.translate(tip.trim(), context: context),
          style: const TextStyle(fontSize: 13),
        ),
        ChoiceList(
          subTitle: HackintoshDetailsTranslator.translate('Bluetooth NVRAM Parameters:', context: context),
          choices: nvramOptions
              .map((option) => HackintoshDetailsTranslator.translate(option.title, context: context))
              .toList(),
          selectedChoices: [
            if (selectedNvramOption != null)
              HackintoshDetailsTranslator.translate(selectedNvramOption.title, context: context)
          ],
          allowToggle: true,
          onChanged: (value) {
            final title = value.firstOrNull;
            final option = nvramOptions
                .where((option) =>
                    HackintoshDetailsTranslator.translate(option.title, context: context) ==
                    title)
                .firstOrNull;
            widget.onChanged?.call(option?.id);
          },
        )
      ],
    );
  }
}
