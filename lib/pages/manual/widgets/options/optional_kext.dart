import 'package:provider/provider.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/utils/config/models/kernel/kext_group.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kext_groups.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kernel.dart';
import 'package:rapidefi/utils/config/services/config_option_provider.dart';
import 'package:flutter/material.dart';

import 'package:rapidefi/pages/shared/formatters/kext_label.dart';
import 'package:rapidefi/pages/shared/widgets/categorized_choice_list_card.dart';

class OptionalKextWidget extends StatefulWidget {
  const OptionalKextWidget({super.key, this.revision = 0});

  final int revision;

  @override
  State<OptionalKextWidget> createState() => _OptionalKextWidgetState();
}

class _OptionalKextWidgetState extends State<OptionalKextWidget>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  late final List<_KextCategory> _categories;

  @override
  void initState() {
    super.initState();
    _categories = [
      _KextCategory(
        nameKey: 'graphicsCategory',
        options: [
          KextGroup.single(ConfigKernel.WhateverGreen),
          KextGroup.single(ConfigKernel.FakePCIID),
          KextGroup.single(ConfigKernel.NootRX),
          KextGroup.single(ConfigKernel.RadeonBoost),
          KextGroup.single(ConfigKernel.RadeonSensor),
          KextGroup.single(ConfigKernel.SMCRadeonGPU),
        ],
      ),
      _KextCategory(
        nameKey: 'powerManagementCategory',
        options: [
          KextGroup.single(ConfigKernel.AMDRyzenCPUPowerManagement),
          KextGroup.single(ConfigKernel.NullCPUPowerManagement),
          ConfigKextGroups.appleIntelCpuPowerManagement,
        ],
      ),
      _KextCategory(
        nameKey: 'sleepCategory',
        options: [
          KextGroup.single(ConfigKernel.HibernationFixup),
          KextGroup.single(ConfigKernel.RTCMemoryFixup),
        ],
      ),
      _KextCategory(
        nameKey: 'diskCategory',
        options: [
          KextGroup.single(ConfigKernel.NVMeFix),
          KextGroup.single(ConfigKernel.Innie),
          KextGroup.single(ConfigKernel.SATAUnsupported),
          KextGroup.single(ConfigKernel.CtlnaAHCIPort),
        ],
      ),
      _KextCategory(
        nameKey: 'cpuCategory',
        options: [
          ConfigKextGroups.cpuFriend,
          KextGroup.single(ConfigKernel.CpuTopologyRebuild),
          KextGroup.single(ConfigKernel.CpuTscSync),
          KextGroup.single(ConfigKernel.ForgedInvariant),
          KextGroup.single(ConfigKernel.VoodooTSCSync),
        ],
      ),
      _KextCategory(
        nameKey: 'amdPlatformCategory',
        options: [
          KextGroup.single(ConfigKernel.SMCAMDProcessor),
          KextGroup.single(ConfigKernel.AmdTscSync),
          KextGroup.single(ConfigKernel.BFixup),
          KextGroup.single(ConfigKernel.IntelMKLFixup),
        ],
      ),
      _KextCategory(
        nameKey: 'usbCategory',
        options: [
          KextGroup.single(ConfigKernel.XHCIUnsupported),
          KextGroup.single(ConfigKernel.GenericUSBXHCI),
          KextGroup.single(ConfigKernel.XLNCUSBFix),
          KextGroup.single(ConfigKernel.DummyUSBEHCIPCI),
          KextGroup.single(ConfigKernel.DummyUSBXHCIPCI),
          KextGroup.single(ConfigKernel.HoRNDIS),
        ],
      ),
      _KextCategory(
        nameKey: 'sdCardCategory',
        options: [
          ConfigKextGroups.realtekCardReader,
          KextGroup.single(ConfigKernel.EmeraldSDHC),
        ],
      ),
      _KextCategory(
        nameKey: 'othersCategory',
        options: [
          KextGroup.single(ConfigKernel.AMFIPass),
          KextGroup.single(ConfigKernel.BlueToolFixup),
          KextGroup.single(ConfigKernel.NullEthernet),
          KextGroup.single(ConfigKernel.FeatureUnlock),
          ConfigKextGroups.voodooPS2KeyboardAndMouse,
          KextGroup.single(ConfigKernel.NoTouchID),
        ],
      ),
    ];
    _tabController = TabController(vsync: this, length: _categories.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  String _getCategoryName(BuildContext context, String nameKey) {
    final l10n = AppLocalizations.of(context)!;
    return switch (nameKey) {
      'graphicsCategory' => l10n.graphicsCategory,
      'powerManagementCategory' => l10n.powerManagementCategory,
      'sleepCategory' => l10n.sleepCategory,
      'diskCategory' => l10n.diskCategory,
      'cpuCategory' => l10n.cpuCategory,
      'amdPlatformCategory' => l10n.amdPlatformCategory,
      'usbCategory' => l10n.usbCategory,
      'sdCardCategory' => l10n.sdCardCategory,
      'othersCategory' => l10n.othersCategory,
      _ => nameKey,
    };
  }

  ChoiceListCategory<KextGroup> _buildChoiceListCategory(
    BuildContext context,
    _KextCategory category,
    ConfigOptionProvider provider,
  ) {
    return ChoiceListCategory<KextGroup>(
      name: _getCategoryName(context, category.nameKey),
      tips: category.options
          .map((group) => group.bundleNames.join(', '))
          .toList(),
      choices: category.options,
      selectedChoices:
          KextGroup.selectedByAny(category.options, provider.selectedKexts),
      labelBuilder: _groupDescriptionLabel,
      onChanged: (List<KextGroup> value) {
        provider.updateKexts(
          KextGroup.expand(category.options),
          KextGroup.expand(value),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Consumer<ConfigOptionProvider>(builder: (context, provider, child) {
      return CategorizedChoiceListCard<KextGroup>(
        title: l10n.optionalKextsCardTitle,
        subTitle: l10n.optionalKextsDefaultTip,
        controller: _tabController,
        categories: _categories
            .map((category) => _buildChoiceListCategory(context, category, provider))
            .toList(),
      );
    });
  }
}

class _KextCategory {
  const _KextCategory({
    required this.nameKey,
    required this.options,
  });

  final String nameKey;
  final List<KextGroup> options;
}

String _groupDescriptionLabel(KextGroup group) {
  if (group.kexts.length == 1) {
    return kextDescriptionLabel(group.kexts.first);
  }

  if (group.description.trim().isNotEmpty) {
    return kextGroupTitleDescriptionLabel(group);
  }

  return group.title;
}
