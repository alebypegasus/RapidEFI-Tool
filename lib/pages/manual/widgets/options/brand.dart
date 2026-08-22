import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/config/models/enums/brand_enum.dart';

class BrandWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final Brand brand;
  const BrandWidget(
      {super.key, required this.onChanged, this.brand = Brand.none});
  @override
  State<BrandWidget> createState() => _BrandWidgetState();
}

class _BrandWidgetState extends State<BrandWidget> {
  late Brand brand = widget.brand;

  @override
  void didUpdateWidget(covariant BrandWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.brand != widget.brand) {
      brand = widget.brand;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final choices = Brand.values
        .where((element) => element != Brand.none)
        .map((e) => e.value)
        .toList();
    return ScrollableChoiceListPanel(
      child: ChoiceList(
        choices: choices,
        selectedChoices: [brand.value],
        isMultipleSelection: false,
        allowToggle: true,
        subTitle: l10n?.optionalCheckDeviceBrand ?? "Optional - Check if your device brand matches",
        onChanged: (List<String> value) {
          String? selectedValue = value.firstOrNull;
          brand = Brand.values.firstWhere(
            (type) => type.value == selectedValue,
            orElse: () => Brand.none,
          );
          widget.onChanged.call(brand);
        },
      ),
    );
  }
}

