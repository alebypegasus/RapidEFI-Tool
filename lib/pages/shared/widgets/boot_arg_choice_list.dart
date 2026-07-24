import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/l10n/boot_arg_l10n.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/utils/config/models/nvram/boot_arg_model.dart';

class BootArgChoiceList extends StatelessWidget {
  const BootArgChoiceList({
    super.key,
    required this.options,
    required this.selectedBootArgs,
    this.onChanged,
    this.subTitle = '',
    this.header = const SizedBox.shrink(),
    this.footer = const SizedBox.shrink(),
    this.isMultipleSelection = true,
    this.allowToggle = true,
    this.showTip = false,
  });

  final List<BootArgModel> options;
  final Iterable<BootArgModel> selectedBootArgs;
  final ValueChanged<Set<BootArgModel>>? onChanged;
  final String subTitle;
  final Widget header;
  final Widget footer;
  final bool isMultipleSelection;
  final bool allowToggle;
  final bool showTip;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final selectedArgs = selectedBootArgs.map((model) => model.arg).toSet();
    final localizedChoices = options.map((model) => localizedBootArgComment(model, l10n)).toList();
    final selectedChoices = options
        .where((model) => selectedArgs.contains(model.arg))
        .map((model) => localizedBootArgComment(model, l10n))
        .toList();

    return ChoiceList<String>(
      tips: options.map((model) => model.arg).toList(),
      choices: localizedChoices,
      selectedChoices: selectedChoices,
      isMultipleSelection: isMultipleSelection,
      allowToggle: allowToggle,
      showTip: showTip,
      subTitle: subTitle,
      header: header,
      footer: footer,
      onChanged: (value) {
        final selected = options
            .where((model) => value.contains(localizedBootArgComment(model, l10n)))
            .toSet();
        onChanged?.call(selected);
      },
    );
  }
}

class BootArgChoiceMapper {
  const BootArgChoiceMapper._();

  static List<String> choices(Iterable<BootArgModel> options, AppLocalizations l10n) {
    return options.map((model) => localizedBootArgComment(model, l10n)).toList();
  }

  static List<String> tips(Iterable<BootArgModel> options) {
    return options.map((model) => model.arg).toList();
  }

  static List<String> selectedChoices({
    required Iterable<BootArgModel> options,
    required Iterable<BootArgModel> selectedBootArgs,
    required AppLocalizations l10n,
  }) {
    final selectedArgs = selectedBootArgs.map((model) => model.arg).toSet();
    return options
        .where((model) => selectedArgs.contains(model.arg))
        .map((model) => localizedBootArgComment(model, l10n))
        .toList();
  }

  static Set<BootArgModel> selectedModels({
    required Iterable<BootArgModel> options,
    required Iterable<String> selectedChoices,
    required AppLocalizations l10n,
  }) {
    return options
        .where((model) => selectedChoices.contains(localizedBootArgComment(model, l10n)))
        .toSet();
  }
}
