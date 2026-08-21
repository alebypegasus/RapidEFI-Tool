import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/pages/manual/widgets/connectivity/bluetooth_widget.dart';
import 'package:rapidefi/pages/manual/widgets/connectivity/brcm_wifi.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/formatters/kext_label.dart';
import 'package:rapidefi/pages/shared/widgets/kext_choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/oclp_link_button.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/pages/manual/widgets/connectivity/usb_wifi.dart';
import 'package:rapidefi/pages/manual/widgets/connectivity/wifi_type.dart';
import 'package:rapidefi/utils/config/catalogs/bluetooth_nvram/bluetooth_nvram_option.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel_kext.dart';
import 'package:rapidefi/utils/config/models/nvram/nvram_add.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kext_groups.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kernel.dart';
import 'package:rapidefi/utils/config/config_model.dart';
import 'package:rapidefi/widgets/state_keep_container.dart';

class WifiCard extends StatefulWidget {
  final ValueChanged<List<KernelKext>> onChanged;
  final List<KernelKext>? choices;
  final ConfigModel configModel;
  final ValueChanged? onUSBWiFiChange;
  final ValueChanged? onBluetoothNramOptionChange;
  final NvramAdd? nvramAdd;
  final List<BluetoothNvramOption> bluetoothNvramOptions;
  final BluetoothNvramOption? selectedBluetoothNvramOption;
  const WifiCard({
    super.key,
    required this.configModel,
    required this.onChanged,
    this.choices,
    this.onUSBWiFiChange,
    this.onBluetoothNramOptionChange,
    this.nvramAdd,
    this.bluetoothNvramOptions = const [],
    this.selectedBluetoothNvramOption,
  });

  static final removableKexts = [
    ConfigKernel.AirportItlwm_Sequoia,
    ConfigKernel.AirportItlwm_Sonoma_14_4,
    ConfigKernel.AirportItlwm_Sonoma,
    ConfigKernel.AirportItlwm_Ventura,
    ConfigKernel.AirportItlwm_Monterey,
    ConfigKernel.AirportItlwm_BigSur,
    ConfigKernel.AirportItlwm_Catalina,
    ConfigKernel.AirportItlwm_Mojave,
    ConfigKernel.AirportItlwm_HighSierra,
    ConfigKernel.itlwm,
    ConfigKernel.AirportBrcmFixup,
    ConfigKernel.IO80211ElCap_AirPortBrcm4331,
    ConfigKernel.IO80211ElCap_AppleAirPortBrcm43224,
    ...BrcmWifi.removableKexts,
    ...ConfigKextGroups.atherosWifiModels.kexts,
    ...ConfigKextGroups.atherosWifiLegacySupport.kexts,
    ...ConfigKextGroups.atherosWifiModernSupport.kexts,
  ];

  @override
  State<WifiCard> createState() => _WifiCardState();
}

class _WifiCardState extends State<WifiCard> {
  int currentIndex = 0;
  List<Tab>? tabs;
  late List<KernelKext> choices = widget.choices ?? [];

  late final List<KernelKext> intelAirportOptions = [
    ConfigKernel.AirportItlwm_Sequoia,
    ConfigKernel.AirportItlwm_Sonoma_14_4,
    ConfigKernel.AirportItlwm_Sonoma,
    ConfigKernel.AirportItlwm_Ventura,
    ConfigKernel.AirportItlwm_Monterey,
    ConfigKernel.AirportItlwm_BigSur,
    ConfigKernel.AirportItlwm_Catalina,
    ConfigKernel.AirportItlwm_Mojave,
    ConfigKernel.AirportItlwm_HighSierra,
  ];
  late final KernelKext intelItlwmOption = ConfigKernel.itlwm;
  late final List<KernelKext> bcmOptions = [
    ConfigKernel.AirportBrcmFixup,
    ConfigKernel.IO80211ElCap_AirPortBrcm4331,
    ConfigKernel.IO80211ElCap_AppleAirPortBrcm43224,
  ];
  late final List<KernelKext> atherosOptions =
      ConfigKextGroups.atherosWifiModels.kexts;

  late List<KernelKext> intelSelectedChoices = List.of(
    _selectedKexts.where((kext) => intelAirportOptions.contains(kext)),
  );
  late List<KernelKext> bcmSelectedChoices = List.of(
    _selectedKexts.where((kext) => bcmOptions.contains(kext)),
  );
  late List<KernelKext> atherosSelectedChoices = List.of(
    _selectedKexts.where((kext) => atherosOptions.contains(kext)),
  );

  TabWidthBehavior tabWidthBehavior = TabWidthBehavior.sizeToContent;
  CloseButtonVisibilityMode closeButtonVisibilityMode =
      CloseButtonVisibilityMode.never;
  bool showScrollButtons = true;
  List<String> titles = [
    "Intel Wi-Fi",
    "Broadcom (Brcm)",
    "Atheros",
    "USB Wi-Fi",
    "Bluetooth Drivers"
  ];

  List<IconData> iconDatas = [
    FluentIcons.wifi,
    FluentIcons.wifi,
    FluentIcons.wifi,
    FluentIcons.usb,
    FluentIcons.bluetooth,
  ];

  List<KernelKext> get _selectedKexts => widget.configModel.kernel.kernelKexts;

  bool get itlwmSelected => _selectedKexts.contains(intelItlwmOption);

  void _handleIntelSelectionChange(List<KernelKext> selected) {
    setState(() {
      intelSelectedChoices = List.of(selected);
    });
    _updateOverallSelection();
  }

  void _handleBcmSelectionChange(List<KernelKext> selected) {
    setState(() {
      bcmSelectedChoices = List.of(selected);
    });
    _updateOverallSelection();
  }

  void _handleAtherosSelectionChange(List<KernelKext> selected) {
    setState(() {
      atherosSelectedChoices = List.of(selected);
    });
    _updateOverallSelection();
  }

  void _updateOverallSelection() {
    final overallSelected = <KernelKext>[
      ...intelSelectedChoices,
      ...bcmSelectedChoices,
      ...atherosSelectedChoices,
    ];
    widget.onChanged(overallSelected);
  }

  @override
  Widget build(BuildContext context) {
    final subviews = [
      StateKeepContainer(
        child: ScrollableChoiceListPanel(
          children: [
            ChoiceList(
              choices: [],
              header: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const Text(
                  'Option 1: AirportItlwm driver. Native Apple Wi-Fi UI for Intel cards (large size). Do NOT use concurrently with Option 2 (itlwm) to avoid kernel panics!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              footer: WifiTypeWidget(
                choices: intelAirportOptions,
                selectedChoices: intelSelectedChoices,
                isMultipleSelection: true,
                expandTitle: 'Include all Wi-Fi drivers below (larger size)',
                onChanged: (List<KernelKext> value) {
                  _handleIntelSelectionChange.call(value);
                },
              ),
            ),
            KextChoiceList(
              choices: [intelItlwmOption],
              header: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: const Text(
                  'Option 2: itlwm driver (requires HeliPort app). Compatible Intel Wi-Fi driver. Do NOT use concurrently with Option 1!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              selectedChoices: itlwmSelected ? [intelItlwmOption] : [],
              isMultipleSelection: true,
              labelBuilder: kextDescriptionLabel,
              onChanged: (List<KernelKext> value) {
                List<KernelKext> selectedWifiIds = [];
                if (value.isNotEmpty) {
                  selectedWifiIds = [intelItlwmOption];
                  intelSelectedChoices.clear();
                }
                _handleIntelSelectionChange.call(selectedWifiIds);
              },
            ),
          ],
        ),
      ),
      StateKeepContainer(
        child: ScrollableChoiceListPanel(
          child: BrcmWifi(
            onChanged: (k) {
              _handleBcmSelectionChange(k);
            },
            selectedKexts: widget.configModel.kernel.kernelKexts,
          ),
        ),
      ),
      StateKeepContainer(
        child: ScrollableChoiceListPanel(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "Atheros drivers support macOS Mojave 10.14 ~ macOS Sequoia 15! Note: macOS Monterey 12+ requires OCLP root patching!",
                style: TextStyle(fontSize: 12),
              ),
            ),
            WifiTypeWidget(
              choices: atherosOptions,
              selectedChoices: atherosSelectedChoices,
              onChanged: _handleAtherosSelectionChange,
            )
          ],
        ),
      ),
      StateKeepContainer(
          child: USBWiFi(
        enableUSBWiFi: widget.configModel.enableUSBWiFi,
        onChanged: (value) {
          widget.onUSBWiFiChange?.call(value);
        },
      )),
      StateKeepContainer(
        child: BluetoothWidget(
          nvramAdd: widget.nvramAdd,
          nvramOptions: widget.bluetoothNvramOptions,
          selectedNvramOption: widget.selectedBluetoothNvramOption,
          onChanged: (value) {
            widget.onBluetoothNramOptionChange?.call(value);
          },
        ),
      ),
    ];

    tabs = List.generate(titles.length, (index) {
      return Tab(
        text: Text(titles[index]),
        icon: Icon(iconDatas[index]),
        body: subviews[index],
      );
    });

    return TitleCard(
      title: "Wi-Fi & Bluetooth Drivers:",
      subTitle: "(No Wi-Fi drivers configured by default)",
      content: const OclpLinkButton(buttonText: 'Get Intel Modified OCLP'),
      expander: SizedBox(
        height: 300,
        child: TabView(
          tabs: tabs!,
          currentIndex: currentIndex,
          onChanged: (index) => setState(() => currentIndex = index),
          tabWidthBehavior: tabWidthBehavior,
          closeButtonVisibility: closeButtonVisibilityMode,
          showScrollButtons: showScrollButtons,
        ),
      ),
    );
  }
}
