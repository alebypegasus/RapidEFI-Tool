import 'package:rapidefi/utils/config/models/enums/uiscale_enum.dart';
import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/l10n/enum_l10n.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

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
    final l10n = AppLocalizations.of(context)!;
    final choices = UIScale.values.map((e) => e.localizedDescription(AppLocalizations.of(context)!)).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        ChoiceList(
          choices: choices,
          selectedChoices: [uiScale.localizedDescription(AppLocalizations.of(context)!)],
          isMultipleSelection: false,
          allowToggle: false,
          subTitle: l10n.optionalSelectIfMatching,
          onChanged: (List<String> value) {
            String? selectedValue = value.firstOrNull;
            uiScale = UIScale.values.firstWhere(
              (type) => type.localizedDescription(AppLocalizations.of(context)!) == selectedValue,
            );
            setState(() {});
            widget.onChanged.call(uiScale);
          },
        ),
      ],
    );
  }
}

