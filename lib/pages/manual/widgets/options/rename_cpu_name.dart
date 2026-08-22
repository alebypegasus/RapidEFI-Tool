import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/config/models/enums/processor_type_enum.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class RenameCPUNameWidget extends StatefulWidget {
  final Function(ProcessorType, String?) onChanged;
  final ProcessorType processorType;
  final String? cpuName;
  const RenameCPUNameWidget(
      {super.key,
      required this.onChanged,
      this.processorType = ProcessorType.none,
      this.cpuName});

  @override
  State<RenameCPUNameWidget> createState() => _RenameCPUNameWidgetState();
}

class _RenameCPUNameWidgetState extends State<RenameCPUNameWidget> {
  late ProcessorType processorType = widget.processorType;
  late String? cpuName = widget.cpuName;
  late final TextEditingController _controller =
      TextEditingController(text: cpuName ?? '');
  final FocusNode _focusNode = FocusNode();

  @override
  void didUpdateWidget(covariant RenameCPUNameWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.processorType != widget.processorType ||
        oldWidget.cpuName != widget.cpuName) {
      processorType = widget.processorType;
      cpuName = widget.cpuName;
      if (!_focusNode.hasFocus) {
        _controller.text = cpuName ?? '';
      }
    }
  }

  Widget cpunameText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      child: Wrap(
        spacing: 10,
        runSpacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Text(
            HackintoshDetailsTranslator.translate(
              'Enter custom CPU name (leave empty to show Windows CPU name):',
              context: context,
            ),
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 180,
            child: TextBox(
              controller: _controller,
              placeholder: HackintoshDetailsTranslator.translate('Enter CPU name here', context: context),
              onChanged: (value) {
                cpuName = value;
                setState(() {});
                widget.onChanged.call(processorType, cpuName);
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final rawChoices = ProcessorType.values
        .where((element) => element != ProcessorType.none)
        .toList();
    final choices = rawChoices
        .map((e) => HackintoshDetailsTranslator.translate(e.text.description, context: context))
        .toList();
    final tips = rawChoices
        .map((e) => e.text.title)
        .toList();

    return ScrollableChoiceListPanel(
      child: ChoiceList<String>(
        tips: tips,
        choices: choices,
        selectedChoices: processorType != ProcessorType.none
            ? [HackintoshDetailsTranslator.translate(processorType.text.description, context: context)]
            : const <String>[],
        isMultipleSelection: false,
        allowToggle: true,
        subTitle: l10n?.optionalCustomCpuName ?? "Optional - Custom CPU Name",
        header: processorType != ProcessorType.none
            ? cpunameText(context)
            : const SizedBox.shrink(),
        onChanged: (List<String> value) {
          String? selectedValue = value.firstOrNull;
          processorType = rawChoices.firstWhere(
            (type) =>
                HackintoshDetailsTranslator.translate(type.text.description, context: context) ==
                selectedValue,
            orElse: () => ProcessorType.none,
          );
          if (processorType == ProcessorType.none) {
            cpuName = '';
            _controller.text = '';
          }
          setState(() {});
          widget.onChanged.call(processorType, cpuName);
        },
      ),
    );
  }
}
