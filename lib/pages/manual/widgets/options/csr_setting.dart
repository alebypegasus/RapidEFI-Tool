import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/config/models/enums/csr_setting_enum.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class CSRWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final CsrSetting csrsetting;
  const CSRWidget(
      {super.key, required this.onChanged, this.csrsetting = CsrSetting.none});

  @override
  State<CSRWidget> createState() => _CSRWidgetState();
}

class _CSRWidgetState extends State<CSRWidget> {
  late CsrSetting csrsetting = widget.csrsetting;

  @override
  void didUpdateWidget(covariant CSRWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.csrsetting != widget.csrsetting) {
      csrsetting = widget.csrsetting;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final rawChoices = CsrSetting.values
        .where((element) => element != CsrSetting.none)
        .toList();
    final choices = rawChoices
        .map((e) => HackintoshDetailsTranslator.translate(e.value, context: context))
        .toList();
    final tips = rawChoices
        .map((e) => 'csr-active-config: ${e.nvramValue} ')
        .toList();
    return ScrollableChoiceListPanel(
      child: ChoiceList<String>(
        tips: tips,
        choices: choices,
        selectedChoices: csrsetting != CsrSetting.none
            ? [HackintoshDetailsTranslator.translate(csrsetting.value, context: context)]
            : <String>[],
        isMultipleSelection: false,
        allowToggle: true,
        subTitle: l10n?.optionalConfigureSip ?? "Optional - Configure SIP as needed (Disabled by default)",
        onChanged: (List<String> value) {
          String? selectedValue = value.firstOrNull;
          csrsetting = rawChoices.firstWhere(
            (type) =>
                HackintoshDetailsTranslator.translate(type.value, context: context) ==
                selectedValue,
            orElse: () => CsrSetting.none,
          );
          setState(() {});
          widget.onChanged.call(csrsetting);
        },
      ),
    );
  }
}

