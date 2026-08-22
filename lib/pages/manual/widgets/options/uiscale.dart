import 'package:flutter/material.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/config/models/enums/uiscale_enum.dart';

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
    final choices = UIScale.values.map((e) => e.text.description).toList();
    return ScrollableChoiceListPanel(
      child: ChoiceList(
        choices: choices,
        selectedChoices: [uiScale.text.description],
        isMultipleSelection: false,
        allowToggle: false,
        subTitle: "Optional - Adjust OpenCore boot UI scale",
        onChanged: (List<String> value) {
          String? selectedValue = value.firstOrNull;
          uiScale = UIScale.values.firstWhere(
            (type) => type.text.description == selectedValue,
          );
          setState(() {});
          widget.onChanged.call(uiScale);
        },
      ),
    );
  }
}

