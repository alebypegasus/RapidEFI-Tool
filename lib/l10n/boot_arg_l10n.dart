import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/utils/config/models/nvram/boot_arg_model.dart';

/// Returns the localized description for a [BootArgModel].
/// Falls back to the original [model.comment] if no translation is found.
String localizedBootArgComment(BootArgModel model, AppLocalizations l10n) {
  return _bootArgCommentMap(l10n)[model.arg] ?? model.comment;
}

Map<String, String> _bootArgCommentMap(AppLocalizations l10n) => {
      '-v': l10n.bootArgVerbose,
      'keepsyms=1': l10n.bootArgKeepsyms,
      'debug=0x100': l10n.bootArgDebug0x100,
      'watchdog=0': l10n.bootArgWatchdog0,
      'slide=0': l10n.bootArgSlide0,
      '-no_compat_check': l10n.bootArgNoCompatCheck,
      'cpus=1': l10n.bootArgCpus1,
      '-lilubetaall': l10n.bootArgBetaFix,
      'amfi=0x80': l10n.bootArgAmfi0x80,
      'amfi_get_out_of_my_way=0x1': l10n.bootArgAmfiGetOut,
      'ipc_control_port_options=0': l10n.bootArgIpcControl,
      '-amfipassbeta': l10n.bootArgAmfiPassBeta,
      'revpatch=auto,sbvmm,cpuname': l10n.bootArgRevpatch,
      '-disablegfxfirmware': l10n.bootArgDisableGfxFirmware,
      '-wegnoigpu': l10n.bootArgWegNoIgpu,
      '-igfxvesa': l10n.bootArgIgfxVesa,
      'igfxrpsc=1': l10n.bootArgIgfxRpsc,
      '-igfxmpc': l10n.bootArgIgfxMpc,
      'gfxfw=2': l10n.bootArgGfxfw2,
      '-igfxnotelemetryload': l10n.bootArgIgfxNoTelemetry,
      '-wegnoegpu': l10n.bootArgWegNoEgpu,
      'nv_disable=1': l10n.bootArgNvDisable,
      'unfairgva=1': l10n.bootArgUnfairGva,
      'radpg=15': l10n.bootArgRadpg15,
      '-amd_no_dgpu_accel': l10n.bootArgAmdNoDgpuAccel,
      '-raddvi': l10n.bootArgRaddvi,
      '-radcodec': l10n.bootArgRadcodec,
      'ngfxcompat=1 ngfxgl=1 nvda_drv_vrl=1': l10n.bootArgNgfxFermi,
      'applbkl=3': l10n.bootArgApplbkl3,
      'agdpmod=ignore': l10n.bootArgAgdpmodIgnore,
      'agdpmod=pikera': l10n.bootArgAgdpmodPikera,
      'agdpmod=vit9696': l10n.bootArgAgdpmodVit9696,
      'brcmfx-country=HK': l10n.bootArgBrcmfx,
      'vsmcgen=1': l10n.bootArgVsmcgen,
      'swd_panic=1': l10n.bootArgSwdPanic,
      'ctrsmt=full': l10n.bootArgCtrsmt,
      'darkwake=0': l10n.bootArgDarkwake0,
      'forceRenderStandby=0': l10n.bootArgForceRenderStandby,
      '-vi2c-force-polling': l10n.bootArgI2cForcePolling,
    };
