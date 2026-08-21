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
  final String usbWiFiText =
      'Add USB Wi-Fi required driver Kexts (Note: In addition to enabling this driver, install the Wireless USB Big Sur Adapter application in macOS; restart if it does not take effect)';
  final String tip = r'''
  Supported macOS Versions:
    • Wireless USB Big Sur Adapter V18: macOS Catalina 10.15.x ~ macOS Tahoe 26.x (Requires OCLP USB root patch)
    • Wireless USB Big Sur Adapter V15: OS X Mavericks 10.9 ~ macOS Catalina 10.15.x
  Supported USB Wi-Fi Chipsets:
    • Primarily Realtek 802.11n and 802.11ac USB Wi-Fi Adapters; see author repository for detailed hardware lists
  ''';

  @override
  Widget build(BuildContext context) {
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
                    buttonText: 'Visit chris1111 Repository',
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
