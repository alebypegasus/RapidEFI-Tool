import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/utils/config/models/booter/booter.dart';
import 'package:rapidefi/utils/config/models/booter/booter_quirk_type.dart';
import 'package:rapidefi/utils/config/models/booter/booter_quirks.dart';
import 'package:rapidefi/widgets/radio_option_group.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';

class BooterWidget extends StatefulWidget {
  const BooterWidget({
    super.key,
    required this.booterQuirkTypes,
    required this.booter,
    required this.onChanged,
  });

  final List<BooterQuirkType> booterQuirkTypes;
  final Booter booter;
  final ValueChanged onChanged;

  @override
  State<BooterWidget> createState() => _BooterWidgetState();
}

class _BooterWidgetState extends State<BooterWidget> {
  String get _schemeDefault => AppLocalizations.of(context)!.manualBooterPlan1;
  String get _schemeInverse => AppLocalizations.of(context)!.manualBooterPlan2;
  String get _schemeInverseWithVirtualMap => AppLocalizations.of(context)!.manualBooterPlan3;
  String get _schemeAllEnabled => AppLocalizations.of(context)!.manualBooterPlan4;

  late List<String> choices;
  late List<String> selectedChoices;
  late BooterQuirks _defaultQuirks;
  String? _selectedScheme;

  @override
  void initState() {
    super.initState();
    _defaultQuirks = widget.booter.booterQuirks.copyWith();
    _syncFromWidget();
  }

  @override
  void didUpdateWidget(covariant BooterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.booter != widget.booter ||
        oldWidget.booterQuirkTypes != widget.booterQuirkTypes) {
      _defaultQuirks = widget.booter.booterQuirks.copyWith();
      _selectedScheme = null;
      _syncFromWidget();
    }
  }

  void _syncFromWidget() {
    choices = widget.booterQuirkTypes.map((e) => e.comment).toList();
    selectedChoices = _selectedChoicesFromQuirks(widget.booter.booterQuirks);
  }

  void _applyScheme(String scheme) {
    final booterQuirks = switch (scheme) {
      final s when s == _schemeInverse => _defaultQuirks.copyWith(
          enableWriteUnprotector: !_defaultQuirks.enableWriteUnprotector,
          rebuildAppleMemoryMap: !_defaultQuirks.rebuildAppleMemoryMap,
          syncRuntimePermissions: !_defaultQuirks.rebuildAppleMemoryMap,
        ),
      final s when s == _schemeInverseWithVirtualMap => _defaultQuirks.copyWith(
          setupVirtualMap: !_defaultQuirks.setupVirtualMap,
        ),
      final s when s == _schemeAllEnabled => _defaultQuirks.copyWith(
          enableWriteUnprotector: true,
          rebuildAppleMemoryMap: true,
          setupVirtualMap: true,
          syncRuntimePermissions: true,
        ),
      _ => _defaultQuirks.copyWith(),
    };

    setState(() {
      _selectedScheme = scheme;
      selectedChoices = _selectedChoicesFromQuirks(booterQuirks);
    });
    widget.onChanged.call(booterQuirks);
  }

  List<String> _selectedChoicesFromQuirks(BooterQuirks quirks) {
    final quirksMap = quirks.toQuirksMap();
    return widget.booterQuirkTypes
        .where((e) => quirksMap[e.name] == true)
        .map((e) => e.comment)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollableChoiceListPanel(
      child: ChoiceList(
        showTip: true,
        choices: choices,
        selectedChoices: selectedChoices,
        isMultipleSelection: true,
        allowToggle: true,
        header: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8.0,
            children: [
              Text(AppLocalizations.of(context)!.manualBooterEbFix),
              RadioOptionGroup(
                groupValue: _selectedScheme ?? _schemeDefault,
                options: [
                  RadioOptionData(value: _schemeDefault, label: _schemeDefault),
                  RadioOptionData(value: _schemeInverse, label: _schemeInverse),
                  RadioOptionData(
                    value: _schemeInverseWithVirtualMap,
                    label: _schemeInverseWithVirtualMap,
                  ),
                  RadioOptionData(
                    value: _schemeAllEnabled,
                    label: _schemeAllEnabled,
                  ),
                ],
                onChanged: _applyScheme,
              ),
            ],
          ),
        ),
        onChanged: (value) {
          final selectedQuirkTypes = widget.booterQuirkTypes
              .where((e) => value.contains(e.comment))
              .toList();

          final list = selectedQuirkTypes.map((e) => e.name).toList();

          final propertiesMap = {
            for (final property in list) property: true,
          };

          final booterQuirks = BooterQuirks.fromJson(propertiesMap);

          setState(() {
            selectedChoices = List<String>.from(value);
          });

          widget.onChanged.call(booterQuirks);
        },
      ),
    );
  }
}
