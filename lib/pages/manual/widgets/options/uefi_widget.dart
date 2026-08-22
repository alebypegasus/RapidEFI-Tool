import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:rapidefi/utils/config/catalogs/efi_drivers/efi_driver_option.dart';
import 'package:rapidefi/utils/config/models/uefi/uefi.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class UEFIWidget extends StatefulWidget {
  const UEFIWidget({
    super.key,
    required this.uefi,
    required this.onChanged,
    this.efiDriverOptions = const [],
  });

  final Uefi uefi;
  final ValueChanged onChanged;
  final List<EfiDriverOption> efiDriverOptions;

  @override
  State<UEFIWidget> createState() => _UEFIWidgetState();
}

class _UEFIWidgetState extends State<UEFIWidget> {
  static const String provideConsoleGopText =
      'ProvideConsoleGop quirk is enabled by default to fix OpenCore boot UI visibility. If boot UI still fails to render, try unchecking this option.';

  List<EfiDriverOption> get _hfsOptions => widget.efiDriverOptions
      .where((option) => option.category == 'hfs')
      .toList();

  @override
  Widget build(BuildContext context) {
    final hfsOptions = _hfsOptions;
    final choices = hfsOptions
        .map((option) => HackintoshDetailsTranslator.translate(option.tip, context: context))
        .toList();
    final selected = hfsOptions.where((option) {
      return widget.uefi.uefiDriversItems.any((item) {
        final itemPath = item.path.toLowerCase();
        final optionPath = option.path.toLowerCase();
        return itemPath == optionPath ||
            path.basename(itemPath) == path.basename(optionPath);
      });
    }).firstOrNull;
    final selectedChoices = selected == null
        ? const <String>[]
        : [HackintoshDetailsTranslator.translate(selected.tip, context: context)];

    final translatedProvideConsoleGop =
        HackintoshDetailsTranslator.translate(provideConsoleGopText, context: context);

    return ScrollableChoiceListPanel(
      children: [
        ChoiceList<String>(
          subTitle: HackintoshDetailsTranslator.translate(
            'UEFI - Drivers (Fixes HFS driver OpenCore boot menu visibility issues)',
            context: context,
          ),
          choices: choices,
          selectedChoices: selectedChoices,
          allowToggle: false,
          onChanged: (value) {
            if (value.isEmpty) {
              return;
            }
            String? selectedValue = value.firstOrNull;
            final option = _hfsOptions
                .where((option) =>
                    HackintoshDetailsTranslator.translate(option.tip, context: context) ==
                    selectedValue)
                .firstOrNull;
            if (option != null) {
              widget.onChanged.call(option.path);
            }
          },
        ),
        ChoiceList<String>(
          subTitle: HackintoshDetailsTranslator.translate(
            'UEFI - Output (Fixes OpenCore boot UI visibility issues)',
            context: context,
          ),
          choices: [translatedProvideConsoleGop],
          selectedChoices: [
            widget.uefi.uefiOutput.provideConsoleGop
                ? translatedProvideConsoleGop
                : ''
          ],
          allowToggle: true,
          onChanged: (value) {
            final validValues = value.where((item) => item.isNotEmpty).toList();
            widget.onChanged.call(
              widget.uefi.uefiOutput
                  .copyWith(provideConsoleGop: validValues.isNotEmpty),
            );
          },
        )
      ],
    );
  }
}
