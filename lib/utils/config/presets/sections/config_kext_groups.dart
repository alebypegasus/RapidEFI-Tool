import 'package:rapidefi/utils/config/models/kernel/kext_group.dart';
import 'package:rapidefi/utils/config/presets/sections/config_kernel.dart';

class ConfigKextGroups {
  ConfigKextGroups._();

  static final cpuFriend = KextGroup(
    id: 'cpu_friend',
    title: 'CPU Power Management Driver, mainly for 11th to 14th Gen MacPro7,1 SMBIOS',
    description: '',
    kexts: [
      ConfigKernel.CPUFriend,
      ConfigKernel.CPUFriendDataProvider,
    ],
  );

  static final realtekCardReader = KextGroup(
    id: 'realtek_card_reader',
    title: 'RealtekCardReader',
    description: 'Realtek SD card reader driver and companion',
    kexts: [
      ConfigKernel.RealtekCardReader,
      ConfigKernel.RealtekCardReaderFriend,
    ],
  );

  static final appleIntelCpuPowerManagement = KextGroup(
    id: 'apple_intel_cpu_power_management',
    title: 'Fix CPU power management for Intel 3rd Gen and older platforms on macOS Ventura 13+',
    description: '',
    kexts: [
      ConfigKernel.AppleIntelCPUPowerManagement,
      ConfigKernel.AppleIntelCPUPowerManagementClient,
    ],
  );

  static final applePs2SmartTouchPad = KextGroup(
    id: 'apple_ps2_smart_touchpad',
    title: 'ApplePS2SmartTouchPad',
    description:
        'Suitable for 3rd Gen and older platforms, PS/2 input devices such as keyboards, mice, trackpads. Provides basic gesture support.',
    kexts: [
      ConfigKernel.ApplePS2SmartTouchPad,
      ConfigKernel.ApplePS2SmartTouchPadApplePS2Controller,
      ConfigKernel.ApplePS2SmartTouchPadApplePS2Keyboard,
    ],
  );

  static final voodooPs2Controller = KextGroup(
    id: 'voodoo_ps2_controller',
    title: 'VoodooPS2Controller',
    description:
        'Suitable for 3rd Gen and newer platforms, PS/2 input devices such as keyboards, mice, trackpads. Provides multi-touch gestures via plugins.',
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
    description:
        'PS/2 Keyboard, suitable for I2C bus trackpads, touchscreens, sensors, and input devices. Provides native-like multi-touch gestures.',
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
    description:
        'PS/2 Keyboard, suitable for Synaptics trackpads using RMI4 protocol. Delivers smooth multi-touch gestures for Synaptics devices.',
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
    description:
        'PS/2 Keyboard, combines VoodooI2C and VoodooRMI advantages for I2C touch devices and Synaptics RMI4 trackpads.',
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
    description: 'PS/2 bus keyboard and mouse driver',
    kexts: [
      ConfigKernel.VoodooPS2Controller,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Keyboard,
      ConfigKernel.VoodooPS2ControllerVoodooPS2Mouse,
    ],
  );

  static final bigSurface = KextGroup(
    id: 'big_surface',
    title: 'BigSurface',
    description: 'Microsoft Surface dedicated keyboard, trackpad, and touchscreen driver suite.',
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
    title: 'Broadcom BCM94360 Native Support Series',
    description:
        'Apple AirPort and Fenvi native cards. Natively supported up to Ventura 13; patchable for Sonoma 14 & Sequoia 15 via OCLP root patches!',
    kexts: [
      ConfigKernel.IOSkywalkFamily,
      ConfigKernel.IO80211FamilyLegacy,
      ConfigKernel.IO80211FamilyLegacyAirPortBrcmNIC,
    ],
  );

  static final brcm943xx = KextGroup(
    id: 'brcm943xx',
    title: 'Broadcom BCM943XX Non-Native Series',
    description:
        'Non-native Broadcom cards. Supported up to Catalina 10.15; patchable for Sonoma 14 & Sequoia 15 via OCLP root patches!',
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
    title: 'Legacy Broadcom BCM4331',
    description: 'Note: Requires OCLP root patching on macOS Monterey 12 and above!',
    kexts: [
      ConfigKernel.corecaptureElCap,
      ConfigKernel.IO80211ElCap,
      ConfigKernel.IO80211ElCap_AirPortBrcm4331,
    ],
  );

  static final brcm43224 = KextGroup(
    id: 'brcm43224',
    title: 'Legacy Broadcom BCM43224',
    description: 'Note: Requires OCLP root patching on macOS Monterey 12 and above!',
    kexts: [
      ConfigKernel.corecaptureElCap,
      ConfigKernel.IO80211ElCap,
      ConfigKernel.IO80211ElCap_AppleAirPortBrcm43224,
    ],
  );

  static final atherosWifiModels = KextGroup(
    id: 'atheros_wifi_models',
    title: 'Qualcomm (Atheros) WiFi Model Drivers',
    description: 'Qualcomm WiFi manual selection items',
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
    title: 'Qualcomm (Atheros) WiFi Dependencies for Big Sur & Older',
    description: 'macOS Big Sur 11 and older use HS80211Family combined with model driver',
    kexts: [
      ConfigKernel.HS80211Family,
    ],
  );

  static final atherosWifiModernSupport = KextGroup(
    id: 'atheros_wifi_modern_support',
    title: 'Qualcomm (Atheros) WiFi Dependencies for Monterey & Newer',
    description: 'macOS Monterey 12 and newer use IO80211ElCap suite',
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
