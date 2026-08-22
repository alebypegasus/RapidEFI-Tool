import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/config/models/booter/booter.dart';
import 'package:rapidefi/utils/config/models/booter/booter_quirk_type.dart';
import 'package:rapidefi/utils/config/models/booter/booter_quirks.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';
import 'package:rapidefi/widgets/radio_option_group.dart';

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
  static const String _schemeDefault = 'Method 1';
  static const String _schemeInverse = 'Method 2';
  static const String _schemeInverseWithVirtualMap = 'Method 3';
  static const String _schemeAllEnabled = 'Method 4';

  late List<String> rawChoices;
  late List<String> rawSelectedChoices;
  late BooterQuirks _defaultQuirks;
  String _selectedScheme = _schemeDefault;

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
      _selectedScheme = _schemeDefault;
      _syncFromWidget();
    }
  }

  void _syncFromWidget() {
    rawChoices = widget.booterQuirkTypes.map((e) => e.comment).toList();
    rawSelectedChoices = _selectedChoicesFromQuirks(widget.booter.booterQuirks);
  }

  void _applyScheme(String scheme) {
    final booterQuirks = switch (scheme) {
      _schemeInverse => _defaultQuirks.copyWith(
          enableWriteUnprotector: !_defaultQuirks.enableWriteUnprotector,
          rebuildAppleMemoryMap: !_defaultQuirks.rebuildAppleMemoryMap,
          syncRuntimePermissions: !_defaultQuirks.rebuildAppleMemoryMap,
        ),
      _schemeInverseWithVirtualMap => _defaultQuirks.copyWith(
          setupVirtualMap: !_defaultQuirks.setupVirtualMap,
        ),
      _schemeAllEnabled => _defaultQuirks.copyWith(
          enableWriteUnprotector: true,
          rebuildAppleMemoryMap: true,
          setupVirtualMap: true,
          syncRuntimePermissions: true,
        ),
      _ => _defaultQuirks.copyWith(),
    };

    setState(() {
      _selectedScheme = scheme;
      rawSelectedChoices = _selectedChoicesFromQuirks(booterQuirks);
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
    final l10n = AppLocalizations.of(context);
    final translatedChoices = rawChoices
        .map((c) => HackintoshDetailsTranslator.translate(c, context: context))
        .toList();
    final translatedSelected = rawSelectedChoices
        .map((c) => HackintoshDetailsTranslator.translate(c, context: context))
        .toList();

    return ScrollableChoiceListPanel(
      child: ChoiceList<String>(
        showTip: true,
        choices: translatedChoices,
        selectedChoices: translatedSelected,
        isMultipleSelection: true,
        allowToggle: true,
        header: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 8.0,
            children: [
              Text(l10n?.stuckOnEbFix ?? 'Stuck on [EB] Fix (Optional - defaults recommended):'),
              RadioOptionGroup(
                groupValue: _selectedScheme,
                options: [
                  RadioOptionData(value: _schemeDefault, label: l10n?.method1 ?? 'Method 1'),
                  RadioOptionData(value: _schemeInverse, label: l10n?.method2 ?? 'Method 2'),
                  RadioOptionData(
                    value: _schemeInverseWithVirtualMap,
                    label: l10n?.method3 ?? 'Method 3',
                  ),
                  RadioOptionData(
                    value: _schemeAllEnabled,
                    label: l10n?.method4 ?? 'Method 4',
                  ),
                ],
                onChanged: _applyScheme,
              ),
            ],
          ),
        ),
        onChanged: (value) {
          final selectedQuirkTypes = widget.booterQuirkTypes
              .where((e) => value.contains(HackintoshDetailsTranslator.translate(e.comment, context: context)))
              .toList();

          final list = selectedQuirkTypes.map((e) => e.name).toList();

          final propertiesMap = {
            for (final property in list) property: true,
          };

          final booterQuirks = BooterQuirks.fromJson(propertiesMap);

          setState(() {
            rawSelectedChoices = selectedQuirkTypes.map((e) => e.comment).toList();
          });

          widget.onChanged.call(booterQuirks);
        },
      ),
    );
  }
}
