import 'package:rapidefi/l10n/l10n_helper.dart';
import 'package:rapidefi/utils/config/models/kernel/kext_group.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kernel.dart';

class ConfigKextGroups {
  ConfigKextGroups._();

  static final cpuFriend = KextGroup(
    id: 'cpu_friend',
    title: getL10nById(5528),
    description: '',
    kexts: [
      ConfigKernel.CPUFriend,
      ConfigKernel.CPUFriendDataProvider,
    ],
  );

  static final realtekCardReader = KextGroup(
    id: 'realtek_card_reader',
    title: 'RealtekCardReader',
    description: getL10nById(5529),
    kexts: [
      ConfigKernel.RealtekCardReader,
      ConfigKernel.RealtekCardReaderFriend,
    ],
  );

  static final appleIntelCpuPowerManagement = KextGroup(
    id: 'apple_intel_cpu_power_management',
    title: getL10nById(5457),
    description: '',
    kexts: [
      ConfigKernel.AppleIntelCPUPowerManagement,
      ConfigKernel.AppleIntelCPUPowerManagementClient,
    ],
  );

  static final applePs2SmartTouchPad = KextGroup(
    id: 'apple_ps2_smart_touchpad',
    title: 'ApplePS2SmartTouchPad',
    description: getL10nById(5530),
    kexts: [
      ConfigKernel.ApplePS2SmartTouchPad,
      ConfigKernel.ApplePS2SmartTouchPadApplePS2Controller,
      ConfigKernel.ApplePS2SmartTouchPadApplePS2Keyboard,
    ],
  );

  static final voodooPs2Controller = KextGroup(
    id: 'voodoo_ps2_controller',
    title: 'VoodooPS2Controller',
    description: getL10nById(5531),
    kexts: [
      ConfigKernel.VoodooPS2Controller,
      ConfigKernel.VoodooPS2ControllerVoodooInput,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Keyboard,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Mouse,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Trackpad,
    ],
  );

  static final voodooPs2ControllerWithI2c = KextGroup(
    id: 'voodoo_ps2_controller_with_i2c',
    title: 'VoodooPS2Controller + VoodooI2C',
    description: getL10nById(5532),
    kexts: [
      ConfigKernel.VoodooPS2Controller,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Keyboard,
      ConfigKernel.VoodooI2C,
      ConfigKernel.VoodooI2CVoodooInput,
      ConfigKernel.VoodooI2CVoodooI2CServices,
      ConfigKernel.VoodooI2CVoodooGPIO,
      ConfigKernel.VoodooI2CHID,
    ],
  );

  static final voodooPs2ControllerWithRmi = KextGroup(
    id: 'voodoo_ps2_controller_with_rmi',
    title: 'VoodooPS2Controller + VoodooRMI',
    description: getL10nById(5533),
    kexts: [
      ConfigKernel.VoodooPS2Controller,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Keyboard,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Mouse,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Trackpad,
      ConfigKernel.VoodooRMI,
      ConfigKernel.VoodooRMIVoodooInput,
      ConfigKernel.VoodooSMBus,
      ConfigKernel.VoodooRMIRMISMBus,
    ],
  );

  static final voodooPs2ControllerWithRmiI2c = KextGroup(
    id: 'voodoo_ps2_controller_with_rmi_i2c',
    title: 'VoodooPS2Controller + VoodooRMII2C + VoodooI2C',
    description: getL10nById(5534),
    kexts: [
      ConfigKernel.VoodooPS2Controller,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Keyboard,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Mouse,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Trackpad,
      ConfigKernel.VoodooRMI,
      ConfigKernel.VoodooRMIVoodooInput,
      ConfigKernel.VoodooI2C,
      ConfigKernel.VoodooRMIRMII2C,
    ],
  );

  static final voodooPS2KeyboardAndMouse = KextGroup(
    id: 'voodoo_ps2_keyboard_and_mouse',
    title: 'VoodooPS2KeyboardAndMouse',
    description: getL10nById(5535),
    kexts: [
      ConfigKernel.VoodooPS2Controller,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Keyboard,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Mouse,
    ],
  );

  static final bigSurface = KextGroup(
    id: 'big_surface',
    title: 'BigSurface',
    description: getL10nById(5536),
    kexts: [
      ConfigKernel.BigSurfaceVoodooGPIO,
      ConfigKernel.BigSurfaceVoodooSerial,
      ConfigKernel.BigSurfaceVoodooInput,
      ConfigKernel.BigSurface,
      ConfigKernel.BigSurfaceHIDDriver,
    ],
  );

  static final brcm94360 = KextGroup(
    id: 'brcm94360',
    title: getL10nById(5537), description: getL10nById(5538),
    kexts: [
      ConfigKernel.IOSkywalkFamily,
      ConfigKernel.IO80211FamilyLegacy,
      ConfigKernel.IO80211FamilyLegacyAirPortBrcmNIC,
    ],
  );

  static final brcm943xx = KextGroup(
    id: 'brcm943xx',
    title: getL10nById(5539), description: getL10nById(5540),
    kexts: [
      ConfigKernel.IOSkywalkFamily,
      ConfigKernel.IO80211FamilyLegacy,
      ConfigKernel.IO80211FamilyLegacyAirPortBrcmNIC,
      ConfigKernel.AirportBrcmFixup,
      ConfigKernel.AirportBrcmFixupAirPortBrcm4360_Injector,
      ConfigKernel.AirportBrcmFixupAirPortBrcmNIC_Injector,
    ],
  );

  static final brcm4331 = KextGroup(
    id: 'brcm4331',
    title: getL10nById(5541), description: getL10nById(5542),
    kexts: [
      ConfigKernel.corecaptureElCap,
      ConfigKernel.IO80211ElCap,
      ConfigKernel.IO80211ElCap_AirPortBrcm4331,
    ],
  );

  static final brcm43224 = KextGroup(
    id: 'brcm43224',
    title: getL10nById(5543), description: getL10nById(5542),
    kexts: [
      ConfigKernel.corecaptureElCap,
      ConfigKernel.IO80211ElCap,
      ConfigKernel.IO80211ElCap_AppleAirPortBrcm43224,
    ],
  );

  static final atherosWifiModels = KextGroup(
    id: 'atheros_wifi_models',
    title: getL10nById(5544), description: getL10nById(5545),
    kexts: [
      ConfigKernel.AirPortAtheros40_9285,
      ConfigKernel.AirPortAtheros40_9380,
      ConfigKernel.AirPortAtheros40_9485,
      ConfigKernel.AirPortAtheros40_9565,
      ConfigKernel.AirPortAtheros40_9462,
      ConfigKernel.AirPortAtheros40_9463,
    ],
  );

  static final atherosWifiLegacySupport = KextGroup(
    id: 'atheros_wifi_legacy_support',
    title: getL10nById(5546), description: getL10nById(5547),
    kexts: [
      ConfigKernel.HS80211Family,
    ],
  );

  static final atherosWifiModernSupport = KextGroup(
    id: 'atheros_wifi_modern_support',
    title: getL10nById(5548), description: getL10nById(5549),
    kexts: [
      ConfigKernel.corecaptureElCap,
      ConfigKernel.IO80211ElCap,
      ConfigKernel.IO80211ElCap_AirPortAtheros40,
    ],
  );

  static final optionalGroups = [
    cpuFriend,
    realtekCardReader,
    appleIntelCpuPowerManagement,
  ];

  static final touchPadGroups = [
    applePs2SmartTouchPad,
    voodooPs2Controller,
    voodooPs2ControllerWithI2c,
    voodooPs2ControllerWithRmi,
    voodooPs2ControllerWithRmiI2c,
    bigSurface,
  ];

  static final brcmWifiGroups = [
    brcm94360,
    brcm943xx,
    brcm4331,
    brcm43224,
  ];

  static final atherosWifiGroups = [
    atherosWifiModels,
    atherosWifiLegacySupport,
    atherosWifiModernSupport,
  ];

  static final requiredTogetherGroups = [
    ...optionalGroups,
    ...touchPadGroups,
    ...brcmWifiGroups,
    atherosWifiLegacySupport,
    atherosWifiModernSupport,
  ];
}
