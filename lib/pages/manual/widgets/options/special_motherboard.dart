import 'package:flutter/material.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/config/models/enums/motherboard_enum.dart';

/// Special Motherboard Models
class SpecialMotherBoardWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final SpecialMotherboard specialMotherBoard;
  const SpecialMotherBoardWidget(
      {super.key,
      required this.onChanged,
      this.specialMotherBoard = SpecialMotherboard.none});
  @override
  State<SpecialMotherBoardWidget> createState() => _MotherBoardWidgetState();
}

class _MotherBoardWidgetState extends State<SpecialMotherBoardWidget> {
  late SpecialMotherboard specialMotherBoard = widget.specialMotherBoard;

  @override
  void didUpdateWidget(covariant SpecialMotherBoardWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    specialMotherBoard = widget.specialMotherBoard;
  }

  @override
  Widget build(BuildContext context) {
    final choices = SpecialMotherboard.values
        .where((element) =>
            element != SpecialMotherboard.none &&
            element.vendor == MotherboardVendor.intel)
        .map((e) => e.value)
        .toList();
    return ScrollableChoiceListPanel(
      child: ChoiceList(
        choices: choices,
        selectedChoices: [specialMotherBoard.value],
        isMultipleSelection: false,
        allowToggle: true,
        subTitle: "Optional - Check if motherboard model matches",
        onChanged: (List<String> value) {
          String? selectedValue = value.firstOrNull;
          specialMotherBoard = SpecialMotherboard.values.firstWhere(
            (type) => type.value == selectedValue,
            orElse: () => SpecialMotherboard.none,
          );
          widget.onChanged.call(specialMotherBoard);
        },
      ),
    );
  }
}

