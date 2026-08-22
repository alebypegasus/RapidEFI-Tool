import 'package:flutter/material.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kernel.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel.dart';
import 'package:rapidefi/utils/config/presets/patches/kernel_patch.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel_quirks.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

class KernelWidget extends StatefulWidget {
  const KernelWidget({
    super.key,
    required this.kernel,
    required this.onChanged,
  });
  final Kernel kernel;
  final ValueChanged onChanged;

  @override
  State<KernelWidget> createState() => _KernelWidgetState();
}

class _KernelWidgetState extends State<KernelWidget> {
  late List<String> choices;
  late List<String> selectedChoices;
  bool dummyPowerManagement = false;
  bool rtcWakeFix = false;
  @override
  void initState() {
    super.initState();
    initializeChoices();
  }

  @override
  void didUpdateWidget(covariant KernelWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.kernel != widget.kernel) {
      initializeChoices();
    }
  }

  void initializeChoices() {
    dummyPowerManagement = widget.kernel.kernelEmulate.dummyPowerManagement;
    rtcWakeFix = widget.kernel.kernelPatchItems != null &&
        widget.kernel.kernelPatchItems!
            .any((e) => e.comment == KernelPatch.fixRTCWakeScheduling.comment);
    final quirksMap = widget.kernel.kernelQuirks.toQuirksMap();
    choices = quirksMap.keys
        .where((key) => quirksMap[key].runtimeType == bool)
        .map((e) => e.toString())
        .toList();
    selectedChoices = quirksMap.entries
        .where((entry) => entry.value.runtimeType == bool && entry.value)
        .map((entry) => entry.key.toString())
        .toList();
  }

  static const String powerManagementText =
      'Disable Power Management (DummyPowerManagement): Fixes reboot loops caused by CPU power management (e.g. AppleIntelCPUPowerManagement panic, boot logo freeze, immediate reboot after login). For Gen 4+ platforms, this is preferred over NullCpuPowerManagement.kext.';

  static String rtcWake = KernelPatch.fixRTCWakeScheduling.note;

  @override
  Widget build(BuildContext context) {
    return ScrollableChoiceListPanel(
      children: [
        _buildKernelPatchesChoiceList(context),
        _buildDummyPowerManagementChoiceList(context),
        _buildTrimChoiceList(context),
        _buildQuirksChoiceList(context),
      ],
    );
  }

  Widget _buildDummyPowerManagementChoiceList(BuildContext context) {
    final translatedPowerText = HackintoshDetailsTranslator.translate(powerManagementText, context: context);
    return ChoiceList<String>(
      choices: [translatedPowerText],
      selectedChoices: [dummyPowerManagement ? translatedPowerText : ''],
      allowToggle: true,
      subTitle: HackintoshDetailsTranslator.translate('Power Management', context: context),
      onChanged: (value) {
        final validValues = value.where((item) => item.isNotEmpty).toList();
        updateDummyPowerManagement(validValues.isEmpty);
      },
    );
  }

  // Extract update state logic
  void updateDummyPowerManagement(bool isDisabled) {
    dummyPowerManagement = !isDisabled;
    widget.onChanged.call(widget.kernel.kernelEmulate
        .copyWith(dummyPowerManagement: dummyPowerManagement));
  }

  Widget _buildKernelPatchesChoiceList(BuildContext context) {
    final translatedRtcWake = HackintoshDetailsTranslator.translate(rtcWake, context: context);
    return ChoiceList<String>(
      showTip: true,
      choices: [translatedRtcWake],
      selectedChoices: [rtcWakeFix ? translatedRtcWake : ''],
      isMultipleSelection: true,
      allowToggle: true,
      subTitle: HackintoshDetailsTranslator.translate('Kernel - Patches', context: context),
      onChanged: (value) {
        rtcWakeFix = value.any((e) => e == translatedRtcWake);
        final patches = widget.kernel.kernelPatchItems ?? [];
        if (rtcWakeFix) {
          if (!patches.any(
              (e) => e.comment == KernelPatch.fixRTCWakeScheduling.comment)) {
            patches.add(KernelPatch.fixRTCWakeScheduling);
          }
        } else {
          patches.removeWhere(
              (e) => e.comment == KernelPatch.fixRTCWakeScheduling.comment);
        }
        widget.onChanged
            .call(widget.kernel.copyWith(kernelPatchItems: patches));
      },
    );
  }

  Widget _buildQuirksChoiceList(BuildContext context) {
    return ChoiceList<String>(
      showTip: true,
      choices: choices,
      selectedChoices: selectedChoices,
      isMultipleSelection: true,
      allowToggle: true,
      subTitle: HackintoshDetailsTranslator.translate(
        'Kernel - Quirks (Default settings recommended unless specific fixes needed)',
        context: context,
      ),
      onChanged: (value) {
        selectedChoices = List<String>.from(value);
        final selected = selectedChoices.toSet();
        final quirksMap = {
          for (final property in choices) property: selected.contains(property),
        };
        widget.onChanged.call(KernelQuirks.fromJson(quirksMap));
      },
    );
  }

  Widget _buildTrimChoiceList(BuildContext context) {
    final kernelTrims = ConfigKernel.kernelTrims;
    final translatedChoices = kernelTrims
        .map((e) => HackintoshDetailsTranslator.translate(e.comment, context: context))
        .toList();
    final translatedSelected = kernelTrims
        .where((e) => e.value == widget.kernel.kernelQuirks.setApfsTrimTimeout)
        .map((e) => HackintoshDetailsTranslator.translate(e.comment, context: context))
        .toList();
    final translatedTips = kernelTrims
        .map((e) => e.note.map((n) => HackintoshDetailsTranslator.translate(n, context: context)).join(' '))
        .toList();

    return ChoiceList<String>(
      showTip: true,
      choices: translatedChoices,
      selectedChoices: translatedSelected,
      allowToggle: false,
      subTitle: HackintoshDetailsTranslator.translate('NVMe / SATA SSD APFS Trim Policy', context: context),
      tiplist: translatedTips,
      onChanged: (value) {
        final selectedComment = value.first;
        final selectedTrim = kernelTrims.firstWhere((e) =>
            HackintoshDetailsTranslator.translate(e.comment, context: context) ==
            selectedComment);
        widget.onChanged.call(selectedTrim.value);
      },
    );
  }
}
