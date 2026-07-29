import 'package:rapidefi/l10n/l10n_helper.dart';
// ignore_for_file: constant_identifier_names

import 'package:rapidefi/utils/config/models/nvram/boot_arg_model.dart';

import '../../models/nvram/nvram_add_item.dart';
import '../../models/nvram/nvram_delete_item.dart';

class ConfigNvram {
  static const String UUID_4D1EDE05_38C7_4A6A_9CC6_4BCCA8B38C14 =
      '4D1EDE05-38C7-4A6A-9CC6-4BCCA8B38C14';
  static const String UUID_4D1FDA02_38C7_4A6A_9CC6_4BCCA8B30102 =
      '4D1FDA02-38C7-4A6A-9CC6-4BCCA8B30102';
  static const String UUID_7C436110_AB2A_4BBB_A880_FE41995C9F82 =
      '7C436110-AB2A-4BBB-A880-FE41995C9F82';

  static NvramAddItem revcpu =
      NvramAddItem(key: 'revcpu', dataType: 'integer', value: '1');

  static NvramAddItem revcpuname =
      NvramAddItem(key: 'revcpuname', dataType: 'string', value: '');

  ///修复蓝牙
  static NvramAddItem bluetoothExternalDongleFailed = NvramAddItem(
      key: 'bluetoothExternalDongleFailed', dataType: 'data', value: '00');

  static NvramAddItem bluetoothInternalControllerInfo = NvramAddItem(
      key: 'bluetoothInternalControllerInfo',
      dataType: 'data',
      value: '0000000000000000000000000000');

  ///引导参数
  static NvramAddItem boot_args = NvramAddItem(
    key: 'boot-args',
    dataType: 'string',
    value: '',
  );
  static NvramAddItem ui_scale = NvramAddItem(
    key: 'UIScale',
    dataType: 'data',
    value: '01',
  );

  static NvramAddItem csr_active_config = NvramAddItem(
    key: 'csr-active-config',
    dataType: 'data',
    value: '00000000',
  );

  static Map<String, List<NvramAddItem>> createAddList() {
    return {
      UUID_4D1EDE05_38C7_4A6A_9CC6_4BCCA8B38C14: [
        NvramAddItem(
          key: 'DefaultBackgroundColor',
          dataType: 'data',
          value: '00000000',
        ),
      ],
      UUID_4D1FDA02_38C7_4A6A_9CC6_4BCCA8B30102: [
        NvramAddItem(
          key: 'rtc-blacklist',
          dataType: 'data',
          value: '',
        ),
      ],
      UUID_7C436110_AB2A_4BBB_A880_FE41995C9F82: [
        NvramAddItem(
          key: 'ForceDisplayRotationInEFI',
          dataType: 'integer',
          value: '0',
        ),
        NvramAddItem(
          key: 'SystemAudioVolume',
          dataType: 'data',
          value: '46',
        ),
        NvramAddItem(
          key: 'boot-args',
          dataType: 'string',
          value: '',
        ),
        NvramAddItem(
          key: 'csr-active-config',
          dataType: 'data',
          value: '00000000',
        ),
        NvramAddItem(
          key: 'prev-lang:kbd',
          dataType: 'data',
          value: '7A682D48616E733A323532',
        ),
        NvramAddItem(
          key: 'run-efi-updater',
          dataType: 'string',
          value: 'No',
        ),
      ],
    };
  }

  static Map<String, List<NvramDeleteItem>> createDeleteList() {
    return {
      UUID_4D1EDE05_38C7_4A6A_9CC6_4BCCA8B38C14: [
        NvramDeleteItem(value: 'DefaultBackgroundColor'),
        NvramDeleteItem(value: 'UIScale'),
      ],
      UUID_4D1FDA02_38C7_4A6A_9CC6_4BCCA8B30102: [
        NvramDeleteItem(value: 'rtc-blacklist'),
      ],
      UUID_7C436110_AB2A_4BBB_A880_FE41995C9F82: [
        NvramDeleteItem(value: 'forceDisplayRotationInEFI'),
        NvramDeleteItem(value: 'boot-args'),
        NvramDeleteItem(value: 'csr-active-config'),
        NvramDeleteItem(value: 'prev-lang:kbd'),
        NvramDeleteItem(value: 'bluetoothExternalDongleFailed'),
        NvramDeleteItem(value: 'bluetoothInternalControllerInfo'),
      ],
    };
  }

  ///引导参数

  static BootArgModel verbose =
      BootArgModel(arg: '-v', comment: l10nGlobal.autoGen5277);

  static BootArgModel keepsyms1 = BootArgModel(
      arg: 'keepsyms=1',
      comment:
          l10nGlobal.autoGen5278);

  static BootArgModel debug100 = BootArgModel(
      arg: 'debug=0x100',
      comment: l10nGlobal.autoGen5279);

  static BootArgModel watchdog = BootArgModel(
      arg: 'watchdog=0', comment: l10nGlobal.autoGen5280);

  static BootArgModel slide = BootArgModel(
      arg: 'slide=0',
      comment:
          l10nGlobal.autoGen5281);

  static BootArgModel no_compat_check = BootArgModel(
      arg: '-no_compat_check',
      comment:
          l10nGlobal.autoGen5282);
  static BootArgModel amfi = BootArgModel(
      arg: 'amfi=0x80',
      comment:
          l10nGlobal.autoGen5283);

  static BootArgModel amfipassbeta = BootArgModel(
      arg: '-amfipassbeta',
      comment:
          l10nGlobal.autoGen5284);

  static BootArgModel amfi_get_out_of_my_way = BootArgModel(
      arg: 'amfi_get_out_of_my_way=0x1',
      comment:
          l10nGlobal.autoGen5285);

  static BootArgModel ipc_control_port_options = BootArgModel(
      arg: 'ipc_control_port_options=0',
      comment: l10nGlobal.autoGen5286);

  static BootArgModel lilubetaall = BootArgModel(
      arg: '-lilubetaall',
      comment:
          l10nGlobal.autoGen5287);
  static BootArgModel cpus = BootArgModel(
      arg: 'cpus=1',
      comment: l10nGlobal.autoGen5288);
  static BootArgModel dart = BootArgModel(
      arg: 'dart=0',
      comment: l10nGlobal.autoGen5289);
  static BootArgModel disablegfxfirmware = BootArgModel(
      arg: '-disablegfxfirmware',
      comment:
          l10nGlobal.autoGen5290);

  static BootArgModel wegnoigpu = BootArgModel(
      arg: '-wegnoigpu', comment: l10nGlobal.autoGen5291);

  static BootArgModel wegnoegpu = BootArgModel(
      arg: '-wegnoegpu', comment: l10nGlobal.autoGen5292);

  static BootArgModel nv_disable =
      BootArgModel(arg: 'nv_disable=1', comment: l10nGlobal.autoGen5293);

  static BootArgModel igfxvesa = BootArgModel(
      arg: '-igfxvesa',
      comment: l10nGlobal.autoGen5294);

  static BootArgModel igfxhdmidivs = BootArgModel(
      arg: '-igfxhdmidivs',
      comment:
          l10nGlobal.autoGen5235);

  static BootArgModel igfxonln = BootArgModel(
      arg: 'igfxonln=1',
      comment:
          l10nGlobal.autoGen5232);

  static BootArgModel igfxrpsc = BootArgModel(
      arg: 'igfxrpsc=1',
      comment: l10nGlobal.autoGen5295);

  static BootArgModel igfxmlr = BootArgModel(
      arg: '-igfxmlr',
      comment:
          l10nGlobal.autoGen5296);

  static BootArgModel igfxmpc = BootArgModel(
      arg: '-igfxmpc',
      comment:
          l10nGlobal.autoGen5297);

  static BootArgModel igfxfw = BootArgModel(
      arg: 'igfxfw=2',
      comment: l10nGlobal.autoGen5234);

  static BootArgModel cdfon = BootArgModel(
      arg: '-cdfon',
      comment:
          l10nGlobal.autoGen5298);

  static BootArgModel igfxcdc = BootArgModel(
      arg: '-igfxcdc',
      comment: l10nGlobal.autoGen5299);

  static BootArgModel igfxdvmt = BootArgModel(
      arg: '-igfxdvmt',
      comment: l10nGlobal.autoGen5300);

  static BootArgModel igfxdbeo = BootArgModel(
      arg: '-igfxdbeo', comment: l10nGlobal.autoGen5301);

  static BootArgModel igfxnotelemetryload = BootArgModel(
      arg: '-igfxnotelemetryload',
      comment:
          l10nGlobal.autoGen5302);

  static BootArgModel igfxblr = BootArgModel(
      arg: '-igfxblr',
      comment:
          l10nGlobal.autoGen5303);

  static BootArgModel igfxblt = BootArgModel(
      arg: '-igfxblt',
      comment:
          l10nGlobal.autoGen5304);

  static BootArgModel igfxbls = BootArgModel(
      arg: '-igfxbls', comment: l10nGlobal.autoGen5305);

  static BootArgModel gfxrst = BootArgModel(
      arg: 'gfxrst=1',
      comment:
          l10nGlobal.autoGen5306);
  static BootArgModel npci2000 = BootArgModel(
      arg: 'npci=0x2000',
      comment:
          l10nGlobal.autoGen5307);

  static BootArgModel npci3000 = BootArgModel(
      arg: 'npci=0x3000',
      comment:
          l10nGlobal.autoGen5308);

  static BootArgModel unfairgva = BootArgModel(
      arg: 'unfairgva=1',
      comment:
          l10nGlobal.autoGen5309);

  static BootArgModel radvesa = BootArgModel(
      arg: '-radvesa',
      comment: l10nGlobal.autoGen5310);

  static BootArgModel radpg15 = BootArgModel(
      arg: 'radpg=15',
      comment:
          l10nGlobal.autoGen5311);

  static BootArgModel agdpmod_ignore = BootArgModel(
      arg: 'agdpmod=ignore',
      comment:
          l10nGlobal.autoGen5312);

  static BootArgModel agdpmod_pikera = BootArgModel(
      arg: 'agdpmod=pikera',
      comment:
          l10nGlobal.autoGen5313);

  static BootArgModel agdpmod_vit9696 = BootArgModel(
      arg: 'agdpmod=vit9696',
      comment:
          l10nGlobal.autoGen5314);

  static BootArgModel amd_no_dgpu_accel = BootArgModel(
      arg: '-amd_no_dgpu_accel',
      comment:
          l10nGlobal.autoGen5315);
  static BootArgModel radcodec = BootArgModel(
      arg: '-radcodec', comment: l10nGlobal.autoGen5316);

  static BootArgModel ngfxcompat_ngfxgl_nvda_drv_vrl = BootArgModel(
      arg: 'ngfxcompat=1 ngfxgl=1 nvda_drv_vrl=1',
      comment:
          l10nGlobal.autoGen5317);

  static BootArgModel brcmfx_country_hk = BootArgModel(
      arg: 'brcmfx-country=HK',
      comment: l10nGlobal.autoGen5318);

  static BootArgModel vsmcgen =
      BootArgModel(arg: 'vsmcgen=1', comment: l10nGlobal.autoGen5319);

  static BootArgModel revpatch_sbvmm = BootArgModel(
      arg: 'revpatch=auto,sbvmm,cpuname',
      comment:
          l10nGlobal.autoGen5320);

  static BootArgModel swd_panic = BootArgModel(
      arg: 'swd_panic=1', comment: l10nGlobal.autoGen5321);

  static BootArgModel ctrsmt = BootArgModel(
      arg: 'ctrsmt=full',
      comment: l10nGlobal.autoGen5322);

  static BootArgModel darkwake = BootArgModel(
      arg: 'darkwake=0',
      comment: l10nGlobal.autoGen5323);

  static BootArgModel forceRenderStandby = BootArgModel(
      arg: 'forceRenderStandby=0',
      comment: l10nGlobal.autoGen5324);

  static BootArgModel applbkl = BootArgModel(
      arg: 'applbkl=3', comment: l10nGlobal.autoGen5325);

  static BootArgModel raddvi =
      BootArgModel(arg: '-raddvi', comment: l10nGlobal.autoGen5326);

  static BootArgModel i2c_force_polling = BootArgModel(
      arg: '-vi2c-force-polling',
      comment:
          l10nGlobal.autoGen5327);

  static List<BootArgModel> bootArgModels = [
    verbose,
    keepsyms1,
    debug100,
    watchdog,
    slide,
    no_compat_check,
    lilubetaall,
    cpus,
    dart,
    disablegfxfirmware,
    nv_disable,
    amfi,
    amfi_get_out_of_my_way,
    ipc_control_port_options,
    amfipassbeta,
    wegnoigpu,
    wegnoegpu,
    igfxhdmidivs,
    igfxmlr,
    igfxmpc,
    igfxfw,
    igfxvesa,
    igfxonln,
    igfxrpsc,
    cdfon,
    igfxcdc,
    igfxdvmt,
    igfxdbeo,
    igfxnotelemetryload,
    igfxblr,
    igfxblt,
    igfxbls,
    gfxrst,
    npci2000,
    npci3000,
    unfairgva,
    radpg15,
    radvesa,
    raddvi,
    radcodec,
    ctrsmt,
    agdpmod_ignore,
    agdpmod_pikera,
    agdpmod_vit9696,
    amd_no_dgpu_accel,
    ngfxcompat_ngfxgl_nvda_drv_vrl,
    brcmfx_country_hk,
    vsmcgen,
    revpatch_sbvmm,
    swd_panic,
    darkwake,
    forceRenderStandby,
    applbkl,
    i2c_force_polling
  ];
}
