import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/utils/config/models/nvram/boot_arg_model.dart';
import 'package:rapidefi/utils/config/presets/sections/config_nvram.dart';
import 'package:rapidefi/utils/config/services/config_option_provider.dart';
import 'package:rapidefi/pages/shared/widgets/boot_arg_choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/categorized_choice_list_card.dart';

class BootArgs extends StatefulWidget {
  const BootArgs({super.key, this.revision = 0});

  final int revision;

  @override
  State<BootArgs> createState() => _BootArgsState();
}

class _BootArgsState extends State<BootArgs> with TickerProviderStateMixin {
  late final TabController _tabController;
  late final List<_BootArgCategory> _categories;

  @override
  void initState() {
    super.initState();
    _categories = [
      _BootArgCategory(
        nameKey: 'debugCategory',
        options: [
          ConfigNvram.verbose,
          ConfigNvram.keepsyms1,
          ConfigNvram.debug100,
          ConfigNvram.lilubetaall,
          ConfigNvram.watchdog,
          ConfigNvram.slide,
          ConfigNvram.no_compat_check,
          ConfigNvram.cpus,
        ],
      ),
      _BootArgCategory(
        nameKey: 'amfiSipCategory',
        options: [
          ConfigNvram.amfi,
          ConfigNvram.amfi_get_out_of_my_way,
          ConfigNvram.ipc_control_port_options,
          ConfigNvram.amfipassbeta,
          ConfigNvram.revpatch_sbvmm,
        ],
      ),
      _BootArgCategory(
        nameKey: 'igpuCategory',
        options: [
          ConfigNvram.disablegfxfirmware,
          ConfigNvram.wegnoigpu,
          ConfigNvram.igfxvesa,
          ConfigNvram.igfxrpsc,
          ConfigNvram.igfxmpc,
          ConfigNvram.igfxfw,
          ConfigNvram.igfxcdc,
          ConfigNvram.igfxdvmt,
          ConfigNvram.igfxdbeo,
          ConfigNvram.igfxnotelemetryload,
          ConfigNvram.igfxbls,
          ConfigNvram.forceRenderStandby,
        ],
      ),
      _BootArgCategory(
        nameKey: 'dgpuCategory',
        options: [
          ConfigNvram.wegnoegpu,
          ConfigNvram.nv_disable,
          ConfigNvram.unfairgva,
          ConfigNvram.radpg15,
          ConfigNvram.radvesa,
          ConfigNvram.raddvi,
          ConfigNvram.radcodec,
          ConfigNvram.ngfxcompat_ngfxgl_nvda_drv_vrl,
          ConfigNvram.applbkl,
        ],
      ),
      _BootArgCategory(
        nameKey: 'blackScreenFixCategory',
        options: [
          ConfigNvram.agdpmod_pikera,
          ConfigNvram.agdpmod_vit9696,
          ConfigNvram.agdpmod_ignore,
          ConfigNvram.igfxhdmidivs,
          ConfigNvram.igfxonln,
          ConfigNvram.igfxmlr,
          ConfigNvram.cdfon,
          ConfigNvram.igfxblr,
          ConfigNvram.igfxblt,
          ConfigNvram.gfxrst,
          ConfigNvram.amd_no_dgpu_accel,
          ConfigNvram.darkwake,
        ],
      ),
      _BootArgCategory(
        nameKey: 'above4gCategory',
        options: [
          ConfigNvram.npci2000,
          ConfigNvram.npci3000,
        ],
      ),
      _BootArgCategory(
        nameKey: 'touchpadFixCategory',
        options: [
          ConfigNvram.i2c_force_polling,
        ],
      ),
      _BootArgCategory(
        nameKey: 'othersCategory',
        options: [
          ConfigNvram.ctrsmt,
          ConfigNvram.brcmfx_country_hk,
          ConfigNvram.vsmcgen,
          ConfigNvram.swd_panic,
          ConfigNvram.dart,
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
      'debugCategory' => l10n.debugCategory,
      'amfiSipCategory' => l10n.amfiSipCategory,
      'igpuCategory' => l10n.igpuCategory,
      'dgpuCategory' => l10n.dgpuCategory,
      'blackScreenFixCategory' => l10n.blackScreenFixCategory,
      'above4gCategory' => l10n.above4gCategory,
      'touchpadFixCategory' => l10n.touchpadFixCategory,
      'othersCategory' => l10n.othersCategory,
      _ => nameKey,
    };
  }

  ChoiceListCategory<String> _buildChoiceListCategory(
    BuildContext context,
    _BootArgCategory category,
    ConfigOptionProvider provider,
  ) {
    final l10n = AppLocalizations.of(context)!;
    return ChoiceListCategory<String>(
      name: _getCategoryName(context, category.nameKey),
      tips: BootArgChoiceMapper.tips(category.options),
      choices: BootArgChoiceMapper.choices(category.options, l10n),
      selectedChoices: BootArgChoiceMapper.selectedChoices(
        options: category.options,
        selectedBootArgs: provider.selectedBootArgs,
        l10n: l10n,
      ),
      onChanged: (List<String> value) {
        provider.updateBootArgsForOptions(
          category.options,
          BootArgChoiceMapper.selectedModels(
            options: category.options,
            selectedChoices: value,
            l10n: l10n,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Consumer<ConfigOptionProvider>(builder: (context, provider, child) {
      return CategorizedChoiceListCard<String>(
        title: l10n.bootArgsCardTitle,
        subTitle: l10n.bootArgsDefaultTip,
        controller: _tabController,
        categories: _categories
            .map((category) => _buildChoiceListCategory(context, category, provider))
            .toList(),
      );
    });
  }
}

class _BootArgCategory {
  const _BootArgCategory({
    required this.nameKey,
    required this.options,
  });

  final String nameKey;
  final List<BootArgModel> options;
}
