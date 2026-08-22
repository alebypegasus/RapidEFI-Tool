import 'package:flutter/material.dart';
import 'package:rapidefi/utils/config/models/nvram/boot_arg_model.dart';
import 'package:rapidefi/utils/config/presets/sections/config_nvram.dart';
import 'package:rapidefi/pages/shared/widgets/boot_arg_choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class NvidiaGPU extends StatefulWidget {
  const NvidiaGPU({
    super.key,
    this.selected = false,
    this.onChanged,
  });

  final bool selected;
  final ValueChanged<bool>? onChanged;

  @override
  State<NvidiaGPU> createState() => _NvidiaGPUState();
}

class _NvidiaGPUState extends State<NvidiaGPU> {
  static const String tip = r'''
NVIDIA GPU Support Summary:
  • Tesla Series (8000 - 300 series): Natively supported up to macOS High Sierra 10.13.x (may require NVCAP fix); higher versions require OCLP (no Metal support).
     e.g.: 8600GT, 9600GT, GT210, GT220, GT240 etc. Obsolete hardware, not recommended!
  • Kepler Series (600 - 800 series): Natively supported up to macOS Big Sur 11.x; higher versions require OCLP (supports Metal, full acceleration).
     Kepler consumer: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black etc.
     Kepler workstation: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000 etc.
  • Fermi, Maxwell, Pascal Series: Web Driver supported up to macOS High Sierra 10.13.x; macOS Big Sur 11.x+ requires boot-args below plus OCLP patch (no Metal support).
     Fermi: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740 etc.
     Maxwell: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980 etc.
     Pascal: GTX1050, GTX1060, GTX1070, GTX1080 etc.
Unsupported NVIDIA GPUs (Turing, Ampere, Ada Lovelace, Blackwell - no macOS support):
  • 16xx ~ 50xx series: GTX 1650, GTX 1660, RTX 2060, RTX 3060, RTX 4060, RTX 5070 etc.
''';

  @override
  Widget build(BuildContext context) {
    final bootArgOptions = <BootArgModel>[
      ConfigNvram.ngfxcompat_ngfxgl_nvda_drv_vrl,
    ];
    final selectedBootArgs = widget.selected
        ? bootArgOptions
        : const <BootArgModel>[];
    return ScrollableChoiceListPanel(
      child: BootArgChoiceList(
        options: bootArgOptions,
        selectedBootArgs: selectedBootArgs,
        header: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            HackintoshDetailsTranslator.translate(tip.trim(), context: context),
            style: const TextStyle(fontSize: 12),
          ),
        ),
        isMultipleSelection: true,
        allowToggle: true,
        onChanged: (value) {
          widget.onChanged?.call(value.isNotEmpty);
        },
      ),
    );
  }
}
