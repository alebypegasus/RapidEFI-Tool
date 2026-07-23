import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/formatters/kext_label.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel_kext.dart';
import 'package:rapidefi/utils/config/models/uefi/uefi_quirks.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kernel.dart';
import 'package:flutter/material.dart';
import 'package:rapidefi/utils/device_util.dart';
import 'package:rapidefi/widgets/choose_file.dart';

import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/kext_choice_list.dart';

class USBWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final ValueChanged<bool>? onUEFIQuirksChanged;
  final ValueChanged? onUTBMapPathChanged;
  final KernelKext? usbDriverType;
  final UefiQuirks? uefiQuirks;
  final String? utbMapPath;
  static final choices = [ConfigKernel.USBInjectAll, ConfigKernel.USBToolBox];

  const USBWidget({
    super.key,
    required this.onChanged,
    this.onUEFIQuirksChanged,
    this.onUTBMapPathChanged,
    this.usbDriverType,
    this.uefiQuirks,
    this.utbMapPath,
  });

  @override
  State createState() => _USBWidgetState();
}

class _USBWidgetState extends State<USBWidget> {
  late KernelKext? usbDriverType = widget.usbDriverType;
  late UefiQuirks uefiQuirks = widget.uefiQuirks ?? UefiQuirks();
  late String? utbMapPath = widget.utbMapPath;

  Widget chooseUTBMap(AppLocalizations l10n) {
    return ChooseFileWidget(
      buttonText: l10n.selectUtbMap,
      onValid: (filePath) async {
        return filePath.endsWith('UTBMap.kext');
      },
      onChanged: (filePath) {
        utbMapPath = filePath;
        widget.onUTBMapPathChanged?.call(filePath);
      },
      directoryPath: '',
      hintText: utbMapPath ?? l10n.selectUtbMapHint,
      allowedExtensions: Device.isMacOS ? null : const ['kext'],
      openFile: Device.isMacOS ? true : !Device.isWindows,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final choices = USBWidget.choices;
    final bool owner = uefiQuirks.releaseUsbOwnership;
    final releaseUsbOwnershipText = l10n.releaseUsbOwnershipText;
    return KextChoiceListCard(
      title: l10n.usbCardTitle,
      cardSubTitle: l10n.usbDefaultTip,
      choices: choices,
      selectedChoices: usbDriverType?.bundlePath.isNotEmpty == true
          ? [usbDriverType!]
          : [],
      isMultipleSelection: false,
      allowToggle: true,
      labelBuilder: kextDescriptionLabel,
      header: ChoiceList(
        choices: [releaseUsbOwnershipText],
        selectedChoices: [owner ? releaseUsbOwnershipText : ''],
        onChanged: (value) {
          widget.onUEFIQuirksChanged?.call(value.isNotEmpty);
        },
      ),
      footer: usbDriverType?.bundlePath == ConfigKernel.USBToolBox.bundlePath
          ? chooseUTBMap(l10n)
          : const SizedBox.shrink(),
      onChanged: (List<KernelKext> value) {
        usbDriverType = value.firstOrNull;
        widget.onChanged.call(usbDriverType);
        setState(() {});
      },
    );
  }
}
