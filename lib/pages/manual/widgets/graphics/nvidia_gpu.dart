import 'package:flutter/material.dart';
import 'package:rapidefi/utils/config/models/nvram/boot_arg_model.dart';
import 'package:rapidefi/utils/config/presets/sections/config_nvram.dart';
import 'package:rapidefi/pages/shared/widgets/boot_arg_choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

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
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
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
            l10n.manualNvidiaInfoText,
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
