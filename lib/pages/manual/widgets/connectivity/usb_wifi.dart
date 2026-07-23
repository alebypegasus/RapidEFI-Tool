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
    final String tip = r'''
  支持macOS版本:
    •	Wireless USB Big Sur Adapter-V18版本支持macOS Catalina 10.15.x ~ macOS Tahoe 26.x (需要OCLP USB补丁)
    •	Wireless USB Big Sur Adapter-V15版本支持OS X Mavericks 10.9 ~ macOS Catalina 10.15.x
  支持的USB WiFi如下:
    •	主要芯片为瑞昱Realtek 802.11n and 802.11ac USB Wi-Fi Adapter,更多具体型号可以参考作者说明
  ''';

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
