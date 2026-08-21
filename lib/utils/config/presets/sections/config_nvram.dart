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

  /// Bluetooth Fixes
  static NvramAddItem bluetoothExternalDongleFailed = NvramAddItem(
      key: 'bluetoothExternalDongleFailed', dataType: 'data', value: '00');

  static NvramAddItem bluetoothInternalControllerInfo = NvramAddItem(
      key: 'bluetoothInternalControllerInfo',
      dataType: 'data',
      value: '0000000000000000000000000000');

  /// Boot Arguments
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

  /// Boot Arguments

  static BootArgModel verbose =
      BootArgModel(arg: '-v', comment: 'Enable verbose boot (helpful for debugging boot errors)');

  static BootArgModel keepsyms1 = BootArgModel(
      arg: 'keepsyms=1',
      comment:
          'Prints more symbol information during kernel panic. Typically combined with debug=0x100 (highly recommended for initial debugging)');

  static BootArgModel debug100 = BootArgModel(
      arg: 'debug=0x100',
      comment: 'Prevents automatic reboot on kernel panic to view crash logs (highly recommended for initial debugging)');

  static BootArgModel watchdog = BootArgModel(
      arg: 'watchdog=0', comment: 'Disables watchdog timer to prevent unwanted panic reboots during debugging');

  static BootArgModel slide = BootArgModel(
      arg: 'slide=0',
      comment:
          'Disables Kernel Address Space Layout Randomization (KASLR) to fix early boot crashes caused by memory conflicts');

  static BootArgModel no_compat_check = BootArgModel(
      arg: '-no_compat_check',
      comment:
          'Skips board-id/SMBIOS model checks during boot to avoid prohibitive sign');
  static BootArgModel amfi = BootArgModel(
      arg: 'amfi=0x80',
      comment:
          'Disables AMFI (Apple Mobile File Integrity). Required for patching newer GPUs or legacy WiFi (mutually exclusive with amfi_get_out_of_my_way=0x1; requires SIP disabled)');

  static BootArgModel amfipassbeta = BootArgModel(
      arg: '-amfipassbeta',
      comment:
          'Enables AMFIPass.kext in newer macOS versions to bypass AMFI checks safely without globally disabling AMFI (Requires AMFIPass.kext)');

  static BootArgModel amfi_get_out_of_my_way = BootArgModel(
      arg: 'amfi_get_out_of_my_way=0x1',
      comment:
          'Disables AMFI for legacy GPUs (e.g. GT 240) and legacy WiFi (mutually exclusive with amfi=0x80; requires SIP disabled)');

  static BootArgModel ipc_control_port_options = BootArgModel(
      arg: 'ipc_control_port_options=0',
      comment: 'Fixes app crashes after disabling AMFI (requires SIP disabled)');

  static BootArgModel lilubetaall = BootArgModel(
      arg: '-lilubetaall',
      comment:
          'Fixes driver anomalies in newer/Beta macOS versions (audio, Bluetooth, CPU frequencies)');
  static BootArgModel cpus = BootArgModel(
      arg: 'cpus=1',
      comment: 'Enables only 1 CPU core (useful for multi-core server CPU kernel panics during early installation)');
  static BootArgModel dart = BootArgModel(
      arg: 'dart=0',
      comment: 'Disables VT-d / IOMMU when VT-d is enabled in BIOS, resolves boot stalls on certain motherboards');
  static BootArgModel disablegfxfirmware = BootArgModel(
      arg: '-disablegfxfirmware',
      comment:
          'Disables Apple Graphics Firmware loading to avoid boot hangs caused by firmware load failures (Intel iGPU only)');

  static BootArgModel wegnoigpu = BootArgModel(
      arg: '-wegnoigpu', comment: 'Disables Intel iGPU (recommended when iGPU is unsupported or causes panics)');

  static BootArgModel wegnoegpu = BootArgModel(
      arg: '-wegnoegpu', comment: 'Disables discrete GPU (recommended for dual-GPU laptops where dGPU cannot be driven)');

  static BootArgModel nv_disable =
      BootArgModel(arg: 'nv_disable=1', comment: 'Disables NVIDIA official drivers (for debugging incompatible NVIDIA GPUs)');

  static BootArgModel igfxvesa = BootArgModel(
      arg: '-igfxvesa',
      comment: 'Disables Intel iGPU acceleration (useful for recovery/debugging after failing OCLP patches)');

  static BootArgModel igfxhdmidivs = BootArgModel(
      arg: '-igfxhdmidivs',
      comment:
          'Fixes infinite loop on 6th/7th/8th Gen Intel iGPUs when connecting external HDMI displays (internal screen blacks out with backlight, system freezes)');

  static BootArgModel igfxonln = BootArgModel(
      arg: 'igfxonln=1',
      comment:
          'Forces online status on all displays; helps with multi-display output and avoids black screen after sleep (for 8th Gen Coffee Lake+ iGPUs)');

  static BootArgModel igfxrpsc = BootArgModel(
      arg: 'igfxrpsc=1',
      comment: 'Enhances Intel iGPU performance (e.g. fixes 4K HEVC encoding, resolution, and frame rates)');

  static BootArgModel igfxmlr = BootArgModel(
      arg: '-igfxmlr',
      comment:
          'Fixes Intel iGPU maximum link rate calculation that causes crashes or no signal on 4K displays (Skylake, Kaby Lake, Coffee Lake, Comet Lake)');

  static BootArgModel igfxmpc = BootArgModel(
      arg: '-igfxmpc',
      comment:
          'Enables max pixel clock override on iGPU to remove macOS default resolution and refresh rate restrictions');

  static BootArgModel igfxfw = BootArgModel(
      arg: 'igfxfw=2',
      comment: 'Enables complete iGPU firmware loading (GuC/HuC) to improve performance; may cause boot failure on some configurations, use with caution');

  static BootArgModel cdfon = BootArgModel(
      arg: '-cdfon',
      comment:
          'Fixes 4K HDMI black screen on some laptops (e.g. ThinkPad P71 / i7-7700HQ / HD 630 stuck at gIOScreenLockState3)');

  static BootArgModel igfxcdc = BootArgModel(
      arg: '-igfxcdc',
      comment: 'Fixes kernel panics on 10th Gen Ice Lake caused by low Core Display Clock (CDCLK) frequencies');

  static BootArgModel igfxdvmt = BootArgModel(
      arg: '-igfxdvmt',
      comment: 'Fixes kernel panics on 10th Gen Ice Lake caused by incorrect DVMT pre-allocated memory calculations');

  static BootArgModel igfxdbeo = BootArgModel(
      arg: '-igfxdbeo', comment: 'Fixes 7-15s screen glitch on boot on 10th Gen Ice Lake laptops');

  static BootArgModel igfxnotelemetryload = BootArgModel(
      arg: '-igfxnotelemetryload',
      comment:
          'Disables iGPU telemetry module loading during boot; prevents boot hangs on certain laptops and Chromebooks (Intel 6th Gen+)');

  static BootArgModel igfxblr = BootArgModel(
      arg: '-igfxblr',
      comment:
          'Fixes backlight registers on 7th/8th/9th Gen laptops on macOS < 13.4 to resolve 3-minute black/dim screen issues');

  static BootArgModel igfxblt = BootArgModel(
      arg: '-igfxblt',
      comment:
          'Fixes backlight registers on 7th/8th/9th Gen laptops on macOS >= 13.4 to resolve 3-minute black/dim screen issues');

  static BootArgModel igfxbls = BootArgModel(
      arg: '-igfxbls', comment: 'Smooths brightness slider transitions for improved user experience on laptops');

  static BootArgModel gfxrst = BootArgModel(
      arg: 'gfxrst=1',
      comment:
          'Draws Apple logo in second boot stage instead of framebuffer copy; smooths transition to login screen with external displays');
  static BootArgModel npci2000 = BootArgModel(
      arg: 'npci=0x2000',
      comment:
          'Fixes boot hang at [PCI Configuration Begin] when Above 4G Decoding is disabled (mutually exclusive with npci=0x3000; common on X58/X79/X99/AMD)');

  static BootArgModel npci3000 = BootArgModel(
      arg: 'npci=0x3000',
      comment:
          'Fixes boot hang at [PCI Configuration Begin] when Above 4G Decoding is disabled (mutually exclusive with npci=0x2000; common on X58/X79/X99/AMD)');

  static BootArgModel unfairgva = BootArgModel(
      arg: 'unfairgva=1',
      comment:
          'Fixes hardware DRM support on AMD GPUs for streaming protected digital content (Apple TV+, Netflix, etc.)');

  static BootArgModel radvesa = BootArgModel(
      arg: '-radvesa',
      comment: 'Disables AMD/ATI GPU acceleration (useful for recovery/debugging when OCLP patches fail to boot)');

  static BootArgModel radpg15 = BootArgModel(
      arg: 'radpg=15',
      comment:
          'Fix corrupted or yellow screen display issues on legacy AMD cards such as HD7750, HD7850 (GCN series HD77XX, HD78XX, HD79XX)');

  static BootArgModel agdpmod_ignore = BootArgModel(
      arg: 'agdpmod=ignore',
      comment:
          'Fix black screen and display issues by ignoring AppleGraphicsDevicePolicy restrictions. Note: Requires WhateverGreen.kext to take effect.');

  static BootArgModel agdpmod_pikera = BootArgModel(
      arg: 'agdpmod=pikera',
      comment:
          'Fix boot black screen on AMD Navi RX5XXX/RX6XXX GPUs (e.g. RX5500, RX5700, RX6600, RX6800, RX6900). Requires WhateverGreen.kext and disabling Serial/COM Port in BIOS.');

  static BootArgModel agdpmod_vit9696 = BootArgModel(
      arg: 'agdpmod=vit9696',
      comment:
          'Fix sleep wake black screen on RX470/RX570 GPUs by disabling board-id check in AppleGraphicsDevicePolicy. Requires WhateverGreen.kext.');

  static BootArgModel amd_no_dgpu_accel = BootArgModel(
      arg: '-amd_no_dgpu_accel',
      comment:
          'Fix black screen on Intel 3rd Gen and older platforms with AMD RX5XX/RX5XXX/RX6XXX GPUs on macOS Ventura and above (Requires OCLP root patch in OS; remove boot-arg or use config-after-post afterwards)');
  static BootArgModel radcodec = BootArgModel(
      arg: '-radcodec', comment: 'Enable VDA hardware video decoding on unsupported AMD GPUs (e.g. RX 550 Lexa core)');

  static BootArgModel ngfxcompat_ngfxgl_nvda_drv_vrl = BootArgModel(
      arg: 'ngfxcompat=1 ngfxgl=1 nvda_drv_vrl=1',
      comment:
          'Fix graphics driver for legacy NVIDIA Fermi/Maxwell/Pascal GPUs on macOS Big Sur 11+ (Requires OCLP root patch; Kepler cores do not need this parameter)');

  static BootArgModel brcmfx_country_hk = BootArgModel(
      arg: 'brcmfx-country=HK',
      comment: 'Fix slow Broadcom WiFi speeds by setting country code to HK (can also improve by changing router channels)');

  static BootArgModel vsmcgen =
      BootArgModel(arg: 'vsmcgen=1', comment: 'Fix ramrod stall and corrupted VirtualSMC emulator issues');

  static BootArgModel revpatch_sbvmm = BootArgModel(
      arg: 'revpatch=auto,sbvmm,cpuname',
      comment:
          'Fix macOS OTA updates when SIP or SecureBootModel is disabled, and fix custom CPU name display');

  static BootArgModel swd_panic = BootArgModel(
      arg: 'swd_panic=1', comment: 'Prevent reboot after sleep to obtain kernel panic logs for sleep troubleshooting');

  static BootArgModel ctrsmt = BootArgModel(
      arg: 'ctrsmt=full',
      comment: 'Improve CPU topology detection and scheduling on Intel 12th Gen+ hybrid CPUs (Requires CpuTopologyRebuild.kext)');

  static BootArgModel darkwake = BootArgModel(
      arg: 'darkwake=0',
      comment: 'Completely disable DarkWake mode to enter traditional sleep; fixes wake black screen and auto-wake issues');

  static BootArgModel forceRenderStandby = BootArgModel(
      arg: 'forceRenderStandby=0',
      comment: 'Disable iGPU RC6 render standby to fix NVMe kernel panic during sleep caused by RC6');

  static BootArgModel applbkl = BootArgModel(
      arg: 'applbkl=3', comment: 'Enable PWM backlight control for AMD Radeon RX 5000 series GPUs');

  static BootArgModel raddvi =
      BootArgModel(arg: '-raddvi', comment: 'Fix DVI display output on legacy AMD GPUs (290X, 370, etc.)');

  static BootArgModel i2c_force_polling = BootArgModel(
      arg: '-vi2c-force-polling',
      comment:
          'Force I2C trackpads to operate in polling mode instead of interrupt mode (Requires VoodooI2C)');

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
