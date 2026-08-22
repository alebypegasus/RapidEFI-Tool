import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/config/models/enums/uiscale_enum.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class UIScaleWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final UIScale uiScale;
  const UIScaleWidget(
      {super.key, required this.onChanged, this.uiScale = UIScale.scale00});

  @override
  State<UIScaleWidget> createState() => _UIScaleWidgetState();
}

class _UIScaleWidgetState extends State<UIScaleWidget> {
  late UIScale uiScale = widget.uiScale;

  @override
  void didUpdateWidget(covariant UIScaleWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.uiScale != widget.uiScale) {
      uiScale = widget.uiScale;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final rawChoices = UIScale.values;
    final choices = rawChoices
        .map((e) => HackintoshDetailsTranslator.translate(e.text.description, context: context))
        .toList();
    return ScrollableChoiceListPanel(
      child: ChoiceList<String>(
        choices: choices,
        selectedChoices: [
          HackintoshDetailsTranslator.translate(uiScale.text.description, context: context)
        ],
        isMultipleSelection: false,
        allowToggle: false,
        subTitle: l10n?.optionalAdjustUiScale ?? "Optional - Adjust OpenCore boot UI scale",
        onChanged: (List<String> value) {
          String? selectedValue = value.firstOrNull;
          uiScale = rawChoices.firstWhere(
            (type) =>
                HackintoshDetailsTranslator.translate(type.text.description, context: context) ==
                selectedValue,
          );
          setState(() {});
          widget.onChanged.call(uiScale);
        },
      ),
    );
  }
}

