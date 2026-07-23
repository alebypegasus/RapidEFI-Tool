import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:rapidefi/utils/config/catalogs/efi_drivers/efi_driver_option.dart';
import 'package:rapidefi/utils/config/models/uefi/uefi.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';

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
  late List<String> choices;
  late List<String> selectedChoices;
  String get provideConsoleGopText =>
      AppLocalizations.of(context)!.manualUefiProvideConsoleGop;

  List<EfiDriverOption> get _hfsOptions => widget.efiDriverOptions
      .where((option) => option.category == 'hfs')
      .toList();

  void _refreshHfsOptions() {
    final hfsOptions = _hfsOptions;
    choices = hfsOptions.map((option) => option.tip).toList();
    final selected = hfsOptions.where((option) {
      return widget.uefi.uefiDriversItems.any((item) {
        final itemPath = item.path.toLowerCase();
        final optionPath = option.path.toLowerCase();
        return itemPath == optionPath ||
            path.basename(itemPath) == path.basename(optionPath);
      });
    }).firstOrNull;
    selectedChoices = selected == null ? [] : [selected.tip];
  }

  @override
  Widget build(BuildContext context) {
    _refreshHfsOptions();
    return ScrollableChoiceListPanel(
      children: [
        ChoiceList(
          subTitle: AppLocalizations.of(context)!.manualUefiDriversHfs,
          choices: choices,
          selectedChoices: selectedChoices,
          allowToggle: false,
          onChanged: (value) {
            if (value.isEmpty) {
              return;
            }
            String? selectedValue = value.firstOrNull;
            final option = _hfsOptions
                .where((option) => option.tip == selectedValue)
                .firstOrNull;
            if (option != null) {
              widget.onChanged.call(option.path);
            }
          },
        ),
        ChoiceList(
          subTitle: AppLocalizations.of(context)!.manualUefiOutputBootUI,
          choices: [provideConsoleGopText],
          selectedChoices: [
            widget.uefi.uefiOutput.provideConsoleGop
                ? provideConsoleGopText
                : ''
          ],
          allowToggle: true,
          onChanged: (value) {
            widget.onChanged.call(
              widget.uefi.uefiOutput
                  .copyWith(provideConsoleGop: value.isNotEmpty),
            );
          },
        )
      ],
    );
  }
}
