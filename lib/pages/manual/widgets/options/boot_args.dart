import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
    _BootArgCategory category,
    ConfigOptionProvider provider,
  ) {
    return ChoiceListCategory<String>(
      name: category.name,
      tips: BootArgChoiceMapper.tips(category.options),
      choices: BootArgChoiceMapper.choices(category.options),
      selectedChoices: BootArgChoiceMapper.selectedChoices(
        options: category.options,
        selectedBootArgs: provider.selectedBootArgs,
      ),
      onChanged: (List<String> value) {
        provider.updateBootArgsForOptions(
          category.options,
          BootArgChoiceMapper.selectedModels(
            options: category.options,
            selectedChoices: value,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ConfigOptionProvider>(builder: (context, provider, child) {
      return CategorizedChoiceListCard<String>(
        title: "Boot Arguments:",
        subTitle: "(-v verbose mode enabled by default; uncheck to disable)",
        controller: _tabController,
        categories: _categories
            .map((category) => _buildChoiceListCategory(category, provider))
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
