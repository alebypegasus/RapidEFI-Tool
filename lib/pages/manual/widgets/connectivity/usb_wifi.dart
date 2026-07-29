import 'package:rapidefi/l10n/l10n_helper.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/link_button_row.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';

class USBWiFi extends StatefulWidget {
  final bool enableUSBWiFi;
  final ValueChanged? onChanged;
  const USBWiFi({super.key, this.enableUSBWiFi = false, this.onChanged});
  @override
  State<USBWiFi> createState() => _USBWiFiState();
}

class _USBWiFiState extends State<USBWiFi> {
  late bool enableUSBWiFi = widget.enableUSBWiFi;

  @override
  Widget build(BuildContext context) {
    final String usbWiFiText = AppLocalizations.of(context)!.manualUsbWifiKexts;
    final String tip = l10nGlobal.autoGen5825;

    return ScrollableChoiceListPanel(
      child: ChoiceList(
        header: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 5,
            children: [
              LinkButtonRow(
                items: [
                  LinkButtonItem(
                    url:
                        'https://github.com/chris1111/Wireless-USB-Big-Sur-Adapter',
                    buttonText: AppLocalizations.of(context)!.manualUsbWifiGithub,
                    icon: FluentIcons.open_source,
                  ),
                ],
              ),
              Text(
                tip,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
        choices: [
          usbWiFiText,
        ],
        selectedChoices: [enableUSBWiFi ? usbWiFiText : ''],
        isMultipleSelection: true,
        allowToggle: true,
        onChanged: (List<String> value) {
          final validValues = value.where((item) => item.isNotEmpty).toList();
          enableUSBWiFi = validValues.isNotEmpty;
          widget.onChanged?.call(enableUSBWiFi);
        },
      ),
    );
  }
}
