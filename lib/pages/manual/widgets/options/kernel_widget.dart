import 'package:flutter/material.dart';
import 'package:rapidefi/extension/list_extension.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kernel.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel.dart';
import 'package:rapidefi/utils/config/presets/patches/kernel_patch.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel_quirks.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/scrollable_choice_list_panel.dart';

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
        _buildKernelPatchesChoiceList(),
        _buildDummyPowerManagementChoiceList(),
        _buildTrimChoiceList(),
        _buildQuirksChoiceList(),
      ],
    );
  }

  Widget _buildDummyPowerManagementChoiceList() {
    return ChoiceList(
      choices: [powerManagementText],
      selectedChoices: [dummyPowerManagement ? powerManagementText : ''],
      allowToggle: true,
      subTitle: 'Power Management',
      onChanged: (value) {
        // Extract update state logic into method
        updateDummyPowerManagement(value.isEmpty);
      },
    );
  }

  // Extract update state logic
  void updateDummyPowerManagement(bool isDisabled) {
    dummyPowerManagement = !isDisabled;
    widget.onChanged.call(widget.kernel.kernelEmulate
        .copyWith(dummyPowerManagement: dummyPowerManagement));
  }

  Widget _buildKernelPatchesChoiceList() {
    return ChoiceList(
      showTip: true,
      choices: [rtcWake],
      selectedChoices: [rtcWakeFix ? rtcWake : ''],
      isMultipleSelection: true,
      allowToggle: true,
      subTitle: 'Kernel - Patches',
      onChanged: (value) {
        rtcWakeFix = value.any((e) => e == rtcWake);
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

  Widget _buildQuirksChoiceList() {
    return ChoiceList(
      showTip: true,
      choices: choices,
      selectedChoices: selectedChoices,
      isMultipleSelection: true,
      allowToggle: true,
      subTitle: 'Kernel - Quirks (Default settings recommended unless specific fixes needed)',
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

  Widget _buildTrimChoiceList() {
    final kernelTrims = ConfigKernel.kernelTrims;
    return ChoiceList(
      showTip: true,
      choices: kernelTrims.map((e) => e.comment).toList(),
      selectedChoices: kernelTrims
          .where(
              (e) => e.value == widget.kernel.kernelQuirks.setApfsTrimTimeout)
          .map((e) => e.comment)
          .toList(),
      allowToggle: false,
      subTitle: 'NVMe / SATA SSD APFS Trim Policy',
      tiplist: kernelTrims.map((e) => e.note.description).toList(),
      onChanged: (value) {
        final selectedComment = value.first;
        final selectedTrim =
            kernelTrims.firstWhere((e) => e.comment == selectedComment);
        widget.onChanged.call(selectedTrim.value);
      },
    );
  }
}
