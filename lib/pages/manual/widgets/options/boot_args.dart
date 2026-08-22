import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/utils/config/models/nvram/boot_arg_model.dart';
import 'package:rapidefi/utils/config/presets/sections/config_nvram.dart';
import 'package:rapidefi/utils/config/services/config_option_provider.dart';
import 'package:rapidefi/pages/shared/widgets/categorized_choice_list_card.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';

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
        name: 'Debugging',
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
        name: 'AMFI / SIP',
        options: [
          ConfigNvram.amfi,
          ConfigNvram.amfi_get_out_of_my_way,
          ConfigNvram.ipc_control_port_options,
          ConfigNvram.amfipassbeta,
          ConfigNvram.revpatch_sbvmm,
        ],
      ),
      _BootArgCategory(
        name: 'iGPU Fixes',
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
        name: 'dGPU Fixes',
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
        name: 'Black Screen Fixes',
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
        name: 'Above 4G Decoding',
        options: [
          ConfigNvram.npci2000,
          ConfigNvram.npci3000,
        ],
      ),
      _BootArgCategory(
        name: 'Trackpad Fixes',
        options: [
          ConfigNvram.i2c_force_polling,
        ],
      ),
      _BootArgCategory(
        name: 'Others',
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

  ChoiceListCategory<String> _buildChoiceListCategory(
    BuildContext context,
    _BootArgCategory category,
    ConfigOptionProvider provider,
  ) {
    final selectedArgs = provider.selectedBootArgs.map((m) => m.arg).toSet();
    final selectedChoices = category.options
        .where((m) => selectedArgs.contains(m.arg))
        .map((m) => HackintoshDetailsTranslator.translate(m.comment, context: context))
        .toList();

    return ChoiceListCategory<String>(
      name: HackintoshDetailsTranslator.translate(category.name, context: context),
      tips: category.options.map((m) => m.arg).toList(),
      choices: category.options
          .map((m) => HackintoshDetailsTranslator.translate(m.comment, context: context))
          .toList(),
      selectedChoices: selectedChoices,
      onChanged: (List<String> value) {
        final selected = category.options
            .where((m) => value.contains(HackintoshDetailsTranslator.translate(m.comment, context: context)))
            .toSet();
        provider.updateBootArgsForOptions(category.options, selected);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Consumer<ConfigOptionProvider>(builder: (context, provider, child) {
      return CategorizedChoiceListCard<String>(
        title: l10n?.bootArgsTitle ?? "Boot Arguments (boot-args):",
        subTitle: HackintoshDetailsTranslator.translate("(-v verbose mode enabled by default; uncheck to disable)", context: context),
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
    required this.name,
    required this.options,
  });

  final String name;
  final List<BootArgModel> options;
}
