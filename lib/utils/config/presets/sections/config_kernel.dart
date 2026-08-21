// ignore_for_file: non_constant_identifier_names

import 'package:rapidefi/extension/string_extension.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel_trim.dart';
import '../../models/kernel/kernel_emulate.dart';
import '../../models/kernel/kernel_kext.dart';
import '../../models/kernel/kernel_quirks.dart';

class ConfigKernel {
  static KernelKext Lilu = KernelKext(
      bundlePath: 'Lilu.kext',
      executablePath: 'Contents/MacOS/Lilu',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'Lilu',
      url: 'https://github.com/acidanthera/Lilu',
      function: 'Essential macOS kernel extension patcher engine providing dynamic patching and extensibility for other kexts',
      note: [
        "Enables WhateverGreen, AppleALC, VirtualSMC and others to patch macOS on-the-fly for graphics, audio, sensors, etc.",
        "Loaded first among kernel extensions as companion plugins depend on it at early boot stages",
        "Essential base kernel driver"
      ]);

  static KernelKext VirtualSMC = KernelKext(
      bundlePath: 'VirtualSMC.kext',
      executablePath: 'Contents/MacOS/VirtualSMC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: "VirtualSMC",
      url: "https://github.com/acidanthera/VirtualSMC",
      function: 'Essential macOS kernel extension patcher engine providing dynamic patching and extensibility for other kexts',
      note: [
        "Emulates Apple SMC functionality on non-Apple hardware, managing fans, thermal sensors, power management, and battery status",
        "Used alongside Lilu.kext and WhateverGreen to recreate an authentic Mac operating environment",
        "Required driver, macOS cannot boot normally without SMC emulation"
      ]);
  static KernelKext WhateverGreen = KernelKext(
      bundlePath: 'WhateverGreen.kext',
      executablePath: 'Contents/MacOS/WhateverGreen',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: "WhateverGreen",
      url: "https://github.com/acidanthera/WhateverGreen",
      function:
          'Provides GPU patching and display pipeline management. Highly recommended for most platforms (conflicts with NootRX/NootedRed; do not enable together during install)',
      note: [
        "Supports NVIDIA, AMD, and Intel graphics, configuring framebuffers, port types, and resolutions",
        "Provides HDMI and DisplayPort connectivity and digital audio fixes",
      ]);

  static KernelKext AppleALC = KernelKext(
      bundlePath: 'AppleALC.kext',
      executablePath: 'Contents/MacOS/AppleALC',
      plistPath: 'Contents/Info.plist',
      name: "AppleALC",
      url: "https://github.com/acidanthera/AppleALC",
      minKernel: '',
      maxKernel: '',
      function: 'Native AppleHDA audio layout patcher via AppleALC (preferred method)');

  static KernelKext VoodooHDA = KernelKext(
      bundlePath: 'VoodooHDA.kext',
      executablePath: 'Contents/MacOS/VoodooHDA',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '20.3.0',
      function:
          'Generic VoodooHDA audio driver (loaded at boot for <= Big Sur 11.2.3; newer macOS versions require injection into system extensions)');

  static KernelKext AppleIntelPIIXATA = KernelKext(
      bundlePath: 'AppleIntelPIIXATA.kext',
      executablePath: 'Contents/MacOS/AppleIntelPIIXATA',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: 'USB 3.0 controller compatibility fix for legacy or AMD platforms');

  static KernelKext telemetrap = KernelKext(
    bundlePath: 'telemetrap.kext',
    executablePath: 'Contents/MacOS/telemetrap',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '',
  );

  static KernelKext SMCProcessor = KernelKext(
    bundlePath: 'SMCProcessor.kext',
    executablePath: 'Contents/MacOS/SMCProcessor',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext SMCSuperIO = KernelKext(
    bundlePath: 'SMCSuperIO.kext',
    executablePath: 'Contents/MacOS/SMCSuperIO',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext RestrictEvents = KernelKext(
    bundlePath: 'RestrictEvents.kext',
    executablePath: 'Contents/MacOS/RestrictEvents',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext NullCPUPowerManagement = KernelKext(
      bundlePath: 'NullCPUPowerManagement.kext',
      executablePath: 'Contents/MacOS/NullCPUPowerManagement',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          'Fixes CPU power management panics on Intel 3rd Gen and older platforms (AppleIntelCPUPowerManagement panic, boot logo hang, instant reboot)');

  static KernelKext AMDRyzenCPUPowerManagement = KernelKext(
      bundlePath: 'AMDRyzenCPUPowerManagement.kext',
      executablePath: 'Contents/MacOS/AMDRyzenCPUPowerManagement',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function:
          "Fixes AMD Ryzen CPU power management (AMD Ryzen only; uncheck if causing instability or panics)");

  static KernelKext ACPIBatteryManager = KernelKext(
      bundlePath: 'ACPIBatteryManager.kext',
      executablePath: 'Contents/MacOS/ACPIBatteryManager',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "Battery driver method 1 (for 3rd Gen and older laptops)",
      note: []);

  static KernelKext SMCBatteryManager = KernelKext(
      bundlePath: 'SMCBatteryManager.kext',
      executablePath: 'Contents/MacOS/SMCBatteryManager',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "Battery driver method 2 (for 3rd Gen and newer laptops)",
      note: []);

  static KernelKext SMCLightSensor = KernelKext(
      bundlePath: 'SMCLightSensor.kext',
      executablePath: 'Contents/MacOS/SMCLightSensor',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "Ambient light sensor emulation for auto-brightness (do not enable if laptop lacks sensor)",
      note: []);

  static KernelKext AsusSMC = KernelKext(
      bundlePath: 'AsusSMC.kext',
      executablePath: 'Contents/MacOS/AsusSMC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "ASUS laptop fan control, power management, and sensor optimization (ASUS laptops only)",
      note: []);

  static KernelKext YogaSMC = KernelKext(
      bundlePath: 'YogaSMC.kext',
      executablePath: 'Contents/MacOS/YogaSMC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "Lenovo laptop fan control, power management, and sensor optimization (Lenovo laptops only)",
      note: []);

  static KernelKext SMCDellSensors = KernelKext(
      bundlePath: 'SMCDellSensors.kext',
      executablePath: 'Contents/MacOS/SMCDellSensors',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "Dell laptop dedicated thermal sensors and fan control (Dell laptops only)",
      note: []);

  static KernelKext SMCAMDProcessor = KernelKext(
      bundlePath: 'SMCAMDProcessor.kext',
      executablePath: 'Contents/MacOS/SMCAMDProcessor',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function:
          'Exports AMD processor telemetry (temperatures, power, clocks) to VirtualSMC monitoring tools on AMD Ryzen and select FX series');

  static KernelKext NootRX = KernelKext(
      bundlePath: 'NootRX.kext',
      executablePath: 'Contents/MacOS/NootRX',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'NootRX',
      note: [
        'Enables support for unsupported RX 6000 series GPUs (RX 6700, 6750 XT, 6750 GRE); conflicts with WhateverGreen',
        'Supports Navi 21 (Big Sur+), Navi 22/23 (Monterey+), as well as RX 6650 XT and RX 6950 XT',
        'May cause install installer boot failure; recommend adding after initial macOS installation is complete',
      ]);

  static KernelKext NootedRed = KernelKext(
      bundlePath: 'NootedRed.kext',
      enabled: false,
      executablePath: 'Contents/MacOS/NootedRed',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'NootedRed',
      function: '');

  static KernelKext BFixup = KernelKext(
      bundlePath: 'BFixup.kext',
      executablePath: 'Contents/MacOS/BFixup',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'BFixup',
      function:
          'Fixes hardware acceleration slowness in Chromium browsers on AMD Ryzen APUs (Ryzen 2000-5000 series)');

  static KernelKext AAAMouSSE = KernelKext(
    bundlePath: 'AAAMouSSE.kext',
    executablePath: 'Contents/MacOS/AAAMouSSE',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext ECEnabler = KernelKext(
      bundlePath: 'ECEnabler.kext',
      executablePath: 'Contents/MacOS/ECEnabler',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "Battery polling and status reporting fixes for select laptops",
      note: []);

  static KernelKext NVMeFix = KernelKext(
    bundlePath: 'NVMeFix.kext',
    executablePath: 'Contents/MacOS/NVMeFix',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '',
    note: [
      'Improves non-Apple NVMe SSD power management and reduces idle power consumption',
      'Does not fix timeout kernel panics on blacklisted Samsung NVMe drives',
      'May cause kernel panics on well-behaved NVMe drives; use with caution',
    ],
  );

  static KernelKext AppleMCEReporterDisabler = KernelKext(
    bundlePath: 'AppleMCEReporterDisabler.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext AMFIPass = KernelKext(
      bundlePath: 'AMFIPass.kext',
      executablePath: 'Contents/MacOS/AMFIPass',
      plistPath: 'Contents/Info.plist',
      minKernel: '18.0.0',
      maxKernel: '',
      function:
          "Enhanced AMFI bypass without globally disabling AMFI protections");

  static KernelKext Innie = KernelKext(
    bundlePath: 'Innie.kext',
    executablePath: 'Contents/MacOS/Innie',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Fixes internal NVMe drives incorrectly showing as external disks'],
  );

  static KernelKext FeatureUnlock = KernelKext(
    bundlePath: 'FeatureUnlock.kext',
    executablePath: 'Contents/MacOS/FeatureUnlock',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Unlocks Universal Control and Sidecar on unsupported hardware'],
  );

  static KernelKext HibernationFixup = KernelKext(
    bundlePath: 'HibernationFixup.kext',
    executablePath: 'Contents/MacOS/HibernationFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Fixes common sleep and hibernation issues across various platforms'],
  );

  static KernelKext HoRNDIS = KernelKext(
    bundlePath: 'HoRNDIS.kext',
    executablePath: 'Contents/MacOS/HoRNDIS',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Enables USB network tethering from Android devices on macOS'],
  );

  static KernelKext CryptexFixup = KernelKext(
    bundlePath: 'CryptexFixup.kext',
    executablePath: 'Contents/MacOS/CryptexFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '22.0.0',
    maxKernel: '',
  );

  static KernelKext NoAVXFSCompressionTypeZlibAVXpel = KernelKext(
    bundlePath: 'NoAVXFSCompressionTypeZlib-AVXpel.kext',
    executablePath: 'Contents/MacOS/NoAVXFSCompressionTypeZlib',
    plistPath: 'Contents/Info.plist',
    minKernel: '22.0.0',
    maxKernel: '',
  );

  static KernelKext CPUFriend = KernelKext(
    bundlePath: 'CPUFriend.kext',
    executablePath: 'Contents/MacOS/CPUFriend',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['CPU power management helper, mainly for Intel 11th Gen+ with MacPro7,1 SMBIOS'],
  );

  static KernelKext CPUFriendDataProvider = KernelKext(
    bundlePath: 'CPUFriendDataProvider.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['CPUFriend companion data provider kext with model-specific power vectors'],
  );

  static KernelKext CpuTopologyRebuild = KernelKext(
    bundlePath: 'CpuTopologyRebuild.kext',
    executablePath: 'Contents/MacOS/CpuTopologyRebuild',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      'Optimizes P-core / E-core thread scheduling on Intel 12th Gen+ hybrid CPUs',
      'Improves single-core responsiveness on Intel hybrid processors',
    ],
  );

  static KernelKext CpuTscSync = KernelKext(
    bundlePath: 'CpuTscSync.kext',
    executablePath: 'Contents/MacOS/CpuTscSync',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      'CPU TSC synchronization method 1 (primary choice)',
      'Commonly used for multi-core X79, X99, X299, and AMD platforms',
      'Fixes UI lag, boot logo freezes, audio/video sync anomalies, and sleep/wake failures',
    ],
  );

  static KernelKext ForgedInvariant = KernelKext(
    bundlePath: 'ForgedInvariant.kext',
    executablePath: 'Contents/MacOS/ForgedInvariant',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      'CPU TSC synchronization method 2 (for AMD Ryzen and select Intel platforms)',
      'Fixes UI micro-stutters, random freezes, and sync anomalies',
    ],
  );

  static KernelKext AmdTscSync = KernelKext(
      bundlePath: 'AmdTscSync.kext',
      executablePath: 'Contents/MacOS/AmdTscSync',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          'Fixes multi-core TSC clock synchronization on AMD Ryzen platforms');

  static KernelKext TSCAdjustReset = KernelKext(
    bundlePath: 'TSCAdjustReset.kext',
    executablePath: 'Contents/MacOS/TSCAdjustReset',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooTSCSync = KernelKext(
    bundlePath: 'VoodooTSCSync.kext',
    executablePath: 'Contents/MacOS/VoodooTSCSync',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      'CPU TSC synchronization method 3 (for legacy Intel platforms and older macOS versions)',
      'For multi-socket/multi-core X79, X99, X299 platforms to fix TSC sync and boot stalls',
    ],
  );

  static KernelKext FakePCIID = KernelKext(
    bundlePath: 'FakePCIID.kext',
    executablePath: 'Contents/MacOS/FakePCIID',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Fixes digital HDMI audio on select Intel integrated graphics'],
  );

  static KernelKext NullEthernet = KernelKext(
    bundlePath: 'NullEthernet.kext',
    executablePath: 'Contents/MacOS/NullEthernet',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Fixes Apple ID and iCloud login issues, typically for laptops without built-in Ethernet'],
  );

  static KernelKext RTCMemoryFixup = KernelKext(
    bundlePath: 'RTCMemoryFixup.kext',
    executablePath: 'Contents/MacOS/RTCMemoryFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Fixes conflicts between macOS AppleRTC and PC BIOS (e.g. RTC stalls, unexpected reboots, instant wake from sleep)'],
  );

  static KernelKext ApplePS2SmartTouchPad = KernelKext(
    bundlePath: 'ApplePS2SmartTouchPad.kext',
    executablePath: 'Contents/MacOS/ApplePS2SmartTouchPad',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext ApplePS2SmartTouchPadApplePS2Controller = KernelKext(
    bundlePath:
        'ApplePS2SmartTouchPad.kext/Contents/PlugIns/ApplePS2Controller.kext',
    executablePath: 'Contents/MacOS/ApplePS2Controller',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext ApplePS2SmartTouchPadApplePS2Keyboard = KernelKext(
    bundlePath:
        'ApplePS2SmartTouchPad.kext/Contents/PlugIns/ApplePS2Keyboard.kext',
    executablePath: 'Contents/MacOS/ApplePS2Keyboard',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooPS2Controller = KernelKext(
    bundlePath: 'VoodooPS2Controller.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Controller',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['PS/2 keyboard and mouse driver (for desktop motherboard round PS/2 ports)'],
  );

  static KernelKext VoodooPS2ControllerVoodooPS2Keyboard = KernelKext(
    bundlePath:
        'VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Keyboard.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Keyboard',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['PS/2 keyboard driver (for desktop motherboard round PS/2 port keyboards)'],
  );

  static KernelKext VoodooPS2ControllerVoodooPS2Mouse = KernelKext(
    bundlePath: 'VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Mouse.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Mouse',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['PS/2 mouse driver (for desktop motherboard round PS/2 port mice)'],
  );

  static KernelKext VoodooPS2ControllerVoodooPS2Trackpad = KernelKext(
    bundlePath:
        'VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Trackpad.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Trackpad',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooPS2ControllerVoodooInput = KernelKext(
    bundlePath: 'VoodooPS2Controller.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooI2CVoodooInput = KernelKext(
    bundlePath: 'VoodooI2C.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );
  static KernelKext VoodooI2CVoodooI2CServices = KernelKext(
    bundlePath: 'VoodooI2C.kext/Contents/PlugIns/VoodooI2CServices.kext',
    executablePath: 'Contents/MacOS/VoodooI2CServices',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooI2CVoodooGPIO = KernelKext(
    bundlePath: 'VoodooI2C.kext/Contents/PlugIns/VoodooGPIO.kext',
    executablePath: 'Contents/MacOS/VoodooGPIO',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooI2C = KernelKext(
    bundlePath: 'VoodooI2C.kext',
    executablePath: 'Contents/MacOS/VoodooI2C',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooSMBus = KernelKext(
    bundlePath: 'VoodooSMBus.kext',
    executablePath: 'Contents/MacOS/VoodooSMBus',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooRMI = KernelKext(
    bundlePath: 'VoodooRMI.kext',
    executablePath: 'Contents/MacOS/VoodooRMI',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooRMIVoodooInput = KernelKext(
    bundlePath: 'VoodooRMI.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooRMIRMISMBus = KernelKext(
    bundlePath: 'VoodooRMI.kext/Contents/PlugIns/RMISMBus.kext',
    executablePath: 'Contents/MacOS/RMISMBus',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooRMIRMII2C = KernelKext(
    bundlePath: 'VoodooRMI.kext/Contents/PlugIns/RMII2C.kext',
    executablePath: 'Contents/MacOS/RMII2C',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext VoodooI2CHID = KernelKext(
    bundlePath: 'VoodooI2CHID.kext',
    executablePath: 'Contents/MacOS/VoodooI2CHID',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext BigSurfaceVoodooGPIO = KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/VoodooGPIO.kext',
    executablePath: 'Contents/MacOS/VoodooGPIO',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext BigSurfaceVoodooSerial = KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/VoodooSerial.kext',
    executablePath: 'Contents/MacOS/VoodooSerial',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext BigSurfaceVoodooInput = KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext BigSurface = KernelKext(
    bundlePath: 'BigSurface.kext',
    executablePath: 'Contents/MacOS/BigSurface',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    function: 'Dedicated keyboard and trackpad driver for Microsoft Surface',
  );

  static KernelKext BigSurfaceHIDDriver = KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/BigSurfaceHIDDriver.kext',
    executablePath: 'Contents/MacOS/BigSurfaceHIDDriver',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext BrightnessKeys = KernelKext(
    bundlePath: 'BrightnessKeys.kext',
    executablePath: 'Contents/MacOS/BrightnessKeys',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    function: "Brightness function keys fix",
  );
  static KernelKext RadeonBoost = KernelKext(
    bundlePath: 'RadeonBoost.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Optimizes AMD Radeon GPU performance; may cause system instability or boot failure in some scenarios, use with caution'],
  );
  static KernelKext RadeonSensor = KernelKext(
    bundlePath: 'RadeonSensor.kext',
    executablePath: 'Contents/MacOS/RadeonSensor',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Allows RadeonGadget.app to read AMD GPU temperatures and stats'],
  );

  static KernelKext SMCRadeonGPU = KernelKext(
    bundlePath: 'SMCRadeonGPU.kext',
    executablePath: 'Contents/MacOS/SMCRadeonGPU',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Exports AMD GPU temperature and stats to VirtualSMC for monitoring utilities'],
  );

  static KernelKext GenericUSBXHCI = KernelKext(
    bundlePath: 'GenericUSBXHCI.kext',
    executablePath: 'Contents/MacOS/GenericUSBXHCI',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['USB 3.0 controller compatibility fix for legacy or AMD platforms'],
  );

  static KernelKext XLNCUSBFix = KernelKext(
      bundlePath: 'XLNCUSBFix.kext',
      executablePath: '',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function: 'Fix USB controller compatibility issues on AMD FM1/FM2/AM3 and legacy platforms');

  static KernelKext USBInjectAll = KernelKext(
      bundlePath: 'USBInjectAll.kext',
      executablePath: 'Contents/MacOS/USBInjectAll',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: 'Generic USB injection scheme; default choice when USB is not mapped');

  static KernelKext USBToolBox = KernelKext(
      bundlePath: 'USBToolBox.kext',
      executablePath: 'Contents/MacOS/USBToolBox',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: 'USBToolBox scheme; typically used together with customized UTBMap.kext');

  static KernelKext UTBMap = KernelKext(
    bundlePath: 'UTBMap.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext XHCIUnsupported = KernelKext(
    bundlePath: 'XHCI-unsupported.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: [
      'Fix USB 3.0 issues on Intel 3rd Gen and newer platforms (Needed for 300-series chipsets like H370, B360, H310, Z390 [not needed on 10.14+], X79, X99, and ASRock Intel motherboards [except B460/Z490+])'
    ],
  );

  static KernelKext DummyUSBEHCIPCI = KernelKext(
    bundlePath: 'DummyUSBEHCIPCI.kext',
    executablePath: 'Contents/MacOS/AppleUSBEHCIPCI',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: ['Fix EHCI USB 2.0 compatibility issues on legacy AMD platforms (FM1, FM2, AM3, etc.)'],
  );

  static KernelKext DummyUSBXHCIPCI = KernelKext(
    bundlePath: 'DummyUSBXHCIPCI.kext',
    executablePath: 'Contents/MacOS/AppleUSBXHCIPCI',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: ['Fix XHCI USB 3.0 compatibility issues on legacy AMD platforms (FM1, FM2, AM3, etc.)'],
  );

  static KernelKext AppleIntelCPUPowerManagement = KernelKext(
      bundlePath: 'AppleIntelCPUPowerManagement.kext',
      executablePath: 'Contents/MacOS/AppleIntelCPUPowerManagement',
      plistPath: 'Contents/Info.plist',
      minKernel: '22.0.0',
      maxKernel: '',
      function: 'Fix CPU power management for Intel 3rd Gen and older platforms on macOS Ventura 13+');

  static KernelKext AppleIntelCPUPowerManagementClient = KernelKext(
      bundlePath: 'AppleIntelCPUPowerManagementClient.kext',
      executablePath: 'Contents/MacOS/AppleIntelCPUPowerManagementClient',
      plistPath: 'Contents/Info.plist',
      minKernel: '22.0.0',
      maxKernel: '',
      function: 'Fix CPU power management for Intel 3rd Gen and older platforms on macOS Ventura 13+');

  static KernelKext RealtekCardReader = KernelKext(
    bundlePath: 'RealtekCardReader.kext',
    executablePath: 'Contents/MacOS/RealtekCardReader',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Realtek SD card reader driver (use with RealtekCardReaderFriend)'],
  );

  static KernelKext RealtekCardReaderFriend = KernelKext(
    bundlePath: 'RealtekCardReaderFriend.kext',
    executablePath: 'Contents/MacOS/RealtekCardReaderFriend',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['RealtekCardReader companion driver to enhance reader compatibility'],
  );

  static KernelKext EmeraldSDHC = KernelKext(
    bundlePath: 'EmeraldSDHC.kext',
    executablePath: 'Contents/MacOS/EmeraldSDHC',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['SDHC storage card driver, supports eMMC and MMC cards'],
  );

  static KernelKext RealtekRTL8100 = KernelKext(
      name: 'RealtekRTL8100',
      bundlePath: 'RealtekRTL8100.kext',
      executablePath: 'Contents/MacOS/RealtekRTL8100',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "810X,8100,8101E,8102E,8103E,8401E,8105E,8402,8106E,8106EUS,8107E,8136,8139",
      note: [
        "Fast Ethernet (100M) driver",
        "Supports RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139 NICs",
        "Typically used on legacy platforms"
      ]);

  static KernelKext AppleIntelE1000e = KernelKext(
      name: 'AppleIntelE1000e',
      bundlePath: 'AppleIntelE1000e.kext',
      executablePath: 'Contents/MacOS/AppleIntelE1000e',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "82540,82541,82542,82543,82545,82546,82547,82578,82579,82574L,82571,82572,82573,82574,82583,I217-V",
      note: [
        "Gigabit Ethernet driver",
        "Supports Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V, etc.",
        "Typically used on legacy platforms"
      ]);

  static KernelKext BCM5722D = KernelKext(
      name: 'BCM5722D',
      bundlePath: 'BCM5722D.kext',
      executablePath: 'Contents/MacOS/BCM5722D',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "BCM5722,BCM5754,BCM5754M,BCM5755,BCM5755M,BCM57788,BCM5787,BCM5787M,BCM5906,BCM5906M",
      note: [
        "Gigabit Ethernet driver",
        "Supports BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M, etc.",
        "Typically used on legacy platforms"
      ]);

  static KernelKext AtherosL1cEthernet = KernelKext(
      name: 'AtherosL1cEthernet',
      bundlePath: 'AtherosL1cEthernet.kext',
      executablePath: 'Contents/MacOS/AtherosL1cEthernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "AR8131,AR8132,AR8151,AR8152",
      note: ["Gigabit Ethernet driver", "Supports AR8131, AR8132, AR8151, AR8152, etc.", "Typically used on legacy platforms"]);

  static KernelKext RealtekRTL8111 = KernelKext(
      name: 'RealtekRTL8111',
      bundlePath: 'RealtekRTL8111.kext',
      executablePath: 'Contents/MacOS/RealtekRTL8111',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "8111,8168,2500,2600,E2500,E2600",
      note: [
        "Gigabit Ethernet driver",
        "Supports Realtek RTL8111 / 8168 B / C / D / E / F / G / H, Killer E2500 and higher",
        "Newer RealtekRTL8111 driver versions may require macOS 10.13+"
      ]);

  static KernelKext AtherosE2200Ethernet = KernelKext(
      name: 'AtherosE2200Ethernet',
      bundlePath: 'AtherosE2200Ethernet.kext',
      executablePath: 'Contents/MacOS/AtherosE2200Ethernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "AR816X,AR817X,E220X,E2400",
      note: ["Gigabit Ethernet driver", "Supports AR816x, AR817x, Killer E220x, Killer E2400, etc."]);

  static KernelKext AppleIGC = KernelKext(
      name: 'AppleIGC',
      bundlePath: 'AppleIGC.kext',
      executablePath: 'Contents/MacOS/AppleIGC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "I225,I226",
      note: [
        "Gigabit / 2.5G Ethernet driver",
        "Supports all IGC-compliant NICs (i225, i226, i226-V, etc.)",
        "Offers better performance and stability compared to AppleEthernetE1000"
      ]);

  static KernelKext AppleIGB = KernelKext(
      name: 'AppleIGB',
      bundlePath: 'AppleIGB.kext',
      executablePath: 'Contents/MacOS/AppleIGB',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "82575,82576,82580,DH89XXCC,I350,I354,I210,I211",
      note: [
        "Gigabit / 2.5G Ethernet driver",
        "Supports Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210, i211 NICs",
        "May have stability issues; recommend staying on Big Sur and using SmallTree",
        "Typically suitable for macOS Monterey 12 and newer"
      ]);

  static KernelKext IntelMausi = KernelKext(
      name: 'IntelMausi',
      bundlePath: 'IntelMausi.kext',
      executablePath: 'Contents/MacOS/IntelMausi',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "82578,82579,I217,I218,I219",
      note: [
        "Gigabit Ethernet driver",
        "Supports Intel 5 Series: 82578LM, 82578LC, 82578DM, 82578DC",
        "Supports Intel 6 and 7 Series: 82579LM, 82579V",
        "Supports Intel 8 and 9 Series: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3",
        "Supports Intel 100 Series: I219V, I219LM, I219V2, I219LM2, I219LM3",
        "Supports Intel 200 Series: I219LM, I219V",
        "Supports Intel 300 Series: I219LM, I219V",
        "Maintained by acidanthera. OS X 10.6 ~ 10.8 uses IntelSnowMausi"
      ]);

  static KernelKext IntelMausiEthernet = KernelKext(
      name: 'IntelMausiEthernet',
      bundlePath: 'IntelMausiEthernet.kext',
      executablePath: 'Contents/MacOS/IntelMausiEthernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "82578LM,82578LC,82578DM,82578DC,82579LM,82579V,I217LM,I217V,I218LM,I218V,I218LM2,I218V2,I218LM3,I219V,I219LM,I219V2,I219LM2,I219LM2",
      note: [
        "Gigabit Ethernet driver",
        "Supports Intel 5 Series: 82578LM, 82578LC, 82578DM, 82578DC",
        "Supports Intel 6 and 7 Series: 82579LM, 82579V",
        "Supports Intel 8 and 9 Series: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3",
        "Supports Intel 100 Series: I219V, I219LM, I219V2, I219LM2, I219LM3",
        "Supports Intel 200 Series: I219LM, I219V",
        "Supports Intel 300 Series: I219LM, I219V",
        "Provided by Laura Müller. OS X 10.6 ~ 10.8 uses IntelSnowMausi"
      ]);

  static KernelKext LucyRTL8125Ethernet = KernelKext(
      name: 'LucyRTL8125Ethernet',
      bundlePath: 'LucyRTL8125Ethernet.kext',
      executablePath: 'Contents/MacOS/LucyRTL8125Ethernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "8125",
      note: ["Gigabit / 2.5G Ethernet driver", "Legacy driver supporting Realtek RTL8125 series"]);

  static KernelKext RTL812xLucy = KernelKext(
      name: 'RTL812xLucy',
      bundlePath: 'RTL812xLucy.kext',
      executablePath: 'Contents/MacOS/RTL812xLucy',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "8125,8126",
      note: [
        "Gigabit / 2.5G / 5G Ethernet driver",
        "New RTL812x driver supporting Realtek RTL8125 and RTL8126 series",
        "Supported models: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A"
      ]);

  static KernelKext SmallTreeIntel82576 = KernelKext(
      name: 'SmallTreeIntel82576',
      bundlePath: 'SmallTreeIntel82576.kext',
      executablePath: 'Contents/MacOS/SmallTreeIntel82576',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "I211",
      note: [
        "Gigabit / 2.5G Ethernet driver",
        "Supports Intel i211 Ethernet NIC, commonly found on AMD motherboards",
        "Typically suitable for macOS Big Sur and older; may be unstable on Monterey",
        "Compatibility: OS X 10.9-12 (rec v1.0.6), macOS 10.13-14 (rec v1.2.5), macOS 10.15+ (rec v1.3.0)"
      ]);

  static KernelKext IntelLucy = KernelKext(
      name: 'IntelLucy',
      bundlePath: 'IntelLucy.kext',
      executablePath: 'Contents/MacOS/IntelLucy',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function: "X520,X540,X550,82598",
      note: [
        "10-Gigabit (10G) Ethernet driver",
        "Supports Intel X520, X540, X550, and 82598 adapters without hardware mods",
        "Supports macOS 10.13 and above only",
        "Recommended to disable WoL in BIOS UEFI settings"
      ]);

  static KernelKext SATAUnsupported = KernelKext(
    bundlePath: 'SATA-unsupported.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '19.99.99',
    note: ['Fixes Disk Utility not recognizing SATA disks during macOS Catalina 10.15 and older installations'],
  );

  static KernelKext CtlnaAHCIPort = KernelKext(
    bundlePath: 'CtlnaAHCIPort.kext',
    executablePath: 'Contents/MacOS/CtlnaAHCIPort',
    plistPath: 'Contents/Info.plist',
    minKernel: '20.0.0',
    maxKernel: '',
    note: ['Fixes Disk Utility not recognizing SATA disks during macOS Big Sur 11 and newer installations'],
  );

  static KernelKext IntelMKLFixup = KernelKext(
    bundlePath: 'IntelMKLFixup.kext',
    executablePath: 'Contents/MacOS/IntelMKLFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: ['Fixes Adobe creative suite compatibility issues on AMD platforms'],
  );

  static KernelKext IOSkywalkFamily = KernelKext(
    bundlePath: 'IOSkywalkFamily.kext',
    executablePath: 'Contents/MacOS/IOSkywalkFamily',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '25.99.99',
  );

  static KernelKext IO80211FamilyLegacy = KernelKext(
    bundlePath: 'IO80211FamilyLegacy.kext',
    executablePath: 'Contents/MacOS/IO80211FamilyLegacy',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '25.99.99',
  );

  static KernelKext IO80211FamilyLegacyAirPortBrcmNIC = KernelKext(
    bundlePath: 'IO80211FamilyLegacy.kext/Contents/PlugIns/AirPortBrcmNIC.kext',
    executablePath: 'Contents/MacOS/AirPortBrcmNIC',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '25.99.99',
  );

  static KernelKext AirportBrcmFixup = KernelKext(
    bundlePath: 'AirportBrcmFixup.kext',
    executablePath: 'Contents/MacOS/AirportBrcmFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '14.0.0',
    maxKernel: '',
  );

  static KernelKext AirportBrcmFixupAirPortBrcm4360_Injector = KernelKext(
    bundlePath:
        'AirportBrcmFixup.kext/Contents/PlugIns/AirPortBrcm4360_Injector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '14.0.0',
    maxKernel: '19.99.99',
  );

  static KernelKext AirportBrcmFixupAirPortBrcmNIC_Injector = KernelKext(
    bundlePath:
        'AirportBrcmFixup.kext/Contents/PlugIns/AirPortBrcmNIC_Injector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '20.0.0',
    maxKernel: '',
  );

  static KernelKext corecaptureElCap = KernelKext(
    bundlePath: 'corecaptureElCap.kext',
    executablePath: 'Contents/MacOS/corecaptureElCap',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext IO80211ElCap = KernelKext(
    bundlePath: 'IO80211ElCap.kext',
    executablePath: 'Contents/MacOS/IO80211ElCap',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext IO80211ElCap_AirPortAtheros40 = KernelKext(
    bundlePath: 'IO80211ElCap.kext/Contents/PlugIns/AirPortAtheros40.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '',
  );

  // Removed in 10.14
  static KernelKext IO80211ElCap_AirPortBrcm4331 = KernelKext(
    bundlePath: 'IO80211ElCap.kext/Contents/PlugIns/AirPortBrcm4331.kext',
    executablePath: 'Contents/MacOS/AirPortBrcm4331',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '',
  );

  // Removed in 10.12
  static KernelKext IO80211ElCap_AppleAirPortBrcm43224 = KernelKext(
    bundlePath: 'IO80211ElCap.kext/Contents/PlugIns/AppleAirPortBrcm43224.kext',
    executablePath: 'Contents/MacOS/AppleAirPortBrcm43224',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext itlwm = KernelKext(
    bundlePath: 'itlwm.kext',
    executablePath: 'Contents/MacOS/itlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: ["Supports macOS High Sierra 10.13 ~ macOS Tahoe 26.x (typically paired with HeliPort client)"],
  );

  static KernelKext AirportItlwm_Sequoia = KernelKext(
    bundlePath: 'AirportItlwm_Sequoia.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '24.0.0',
    maxKernel: '25.99.99',
    note: [
      "macOS Sequoia 15.x (Note: Sequoia 15 requires OCLP Intel modified patcher!)"
    ],
  );

  static KernelKext AirportItlwm_Sonoma_14_4 = KernelKext(
    bundlePath: 'AirportItlwm_Sonoma_14_4.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.4.0',
    maxKernel: '23.99.99',
    note: ["macOS Sonoma 14.4 and above"],
  );

  static KernelKext AirportItlwm_Sonoma = KernelKext(
    bundlePath: 'AirportItlwm_Sonoma.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '23.3.99',
    note: ["macOS Sonoma 14.0 ~ macOS Sonoma 14.3"],
  );

  static KernelKext AirportItlwm_Ventura = KernelKext(
    bundlePath: 'AirportItlwm_Ventura.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '22.0.0',
    maxKernel: '22.99.99',
    note: ["macOS Ventura 13.x"],
  );

  static KernelKext AirportItlwm_Monterey = KernelKext(
    bundlePath: 'AirportItlwm_Monterey.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '21.99.99',
    note: ["macOS Monterey 12.x"],
  );

  static KernelKext AirportItlwm_BigSur = KernelKext(
    bundlePath: 'AirportItlwm_BigSur.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '20.0.0',
    maxKernel: '20.99.99',
    note: ["macOS Big Sur 11.x"],
  );

  static KernelKext AirportItlwm_Catalina = KernelKext(
    bundlePath: 'AirportItlwm_Catalina.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '19.0.0',
    maxKernel: '19.99.99',
    note: ["macOS Catalina 10.15.x"],
  );

  static KernelKext AirportItlwm_Mojave = KernelKext(
    bundlePath: 'AirportItlwm_Mojave.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '18.99.99',
    note: ["macOS Mojave 10.14.x"],
  );

  static KernelKext AirportItlwm_HighSierra = KernelKext(
    bundlePath: 'AirportItlwm_HighSierra.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '17.99.99',
    note: ["macOS High Sierra 10.13.x"],
  );

  static KernelKext IntelBTPatcher = KernelKext(
    bundlePath: 'IntelBTPatcher.kext',
    executablePath: 'Contents/MacOS/IntelBTPatcher',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '',
  );

  static KernelKext IntelBluetoothInjector = KernelKext(
    bundlePath: 'IntelBluetoothInjector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '20.99.99',
  );

  static KernelKext IntelBluetoothFirmware = KernelKext(
    bundlePath: 'IntelBluetoothFirmware.kext',
    executablePath: 'Contents/MacOS/IntelBluetoothFirmware',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext BlueToolFixup = KernelKext(
    bundlePath: 'BlueToolFixup.kext',
    executablePath: 'Contents/MacOS/BlueToolFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '',
    function: 'Fixes issues for some Broadcom and other USB Bluetooth devices',
  );

  static KernelKext BrcmBluetoothInjector = KernelKext(
    bundlePath: 'BrcmBluetoothInjector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '15.0.0',
    maxKernel: '20.99.99',
  );

  static KernelKext BrcmBluetoothInjectorLegacy = KernelKext(
    bundlePath: 'BrcmBluetoothInjectorLegacy.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '15.0.0',
    maxKernel: '20.99.99',
  );

  static KernelKext BrcmFirmwareData = KernelKext(
    bundlePath: 'BrcmFirmwareData.kext',
    executablePath: 'Contents/MacOS/BrcmFirmwareData',
    plistPath: 'Contents/Info.plist',
    minKernel: '12.0.0',
    maxKernel: '',
  );

  static KernelKext BrcmPatchRAM = KernelKext(
    bundlePath: 'BrcmPatchRAM.kext',
    executablePath: 'Contents/MacOS/BrcmPatchRAM',
    plistPath: 'Contents/Info.plist',
    minKernel: '12.0.0',
    maxKernel: '14.99.99',
  );

  static KernelKext BrcmPatchRAM2 = KernelKext(
    bundlePath: 'BrcmPatchRAM2.kext',
    executablePath: 'Contents/MacOS/BrcmPatchRAM2',
    plistPath: 'Contents/Info.plist',
    minKernel: '15.0.0',
    maxKernel: '18.99.99',
  );

  static KernelKext BrcmPatchRAM3 = KernelKext(
    bundlePath: 'BrcmPatchRAM3.kext',
    executablePath: 'Contents/MacOS/BrcmPatchRAM3',
    plistPath: 'Contents/Info.plist',
    minKernel: '19.0.0',
    maxKernel: '',
  );

  static KernelKext Ath3kBT = KernelKext(
    bundlePath: 'Ath3kBT.kext',
    executablePath: 'Contents/MacOS/Ath3kBT',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext Ath3kBTInjector = KernelKext(
    bundlePath: 'Ath3kBTInjector.kext',
    executablePath: 'Contents/MacOS/Ath3kBTInjector',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext HS80211Family = KernelKext(
    bundlePath: 'HS80211Family.kext',
    executablePath: 'Contents/MacOS/HS80211Family',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: ["Qualcomm WiFi, supports macOS Big Sur 11.x and older"],
  );

  static KernelKext AirPortAtheros40_9285 = KernelKext(
    bundlePath: 'AirPortAtheros40_9285.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: ["Qualcomm (Atheros) - AR9285"],
  );

  static KernelKext AirPortAtheros40_9380 = KernelKext(
    bundlePath: 'AirPortAtheros40_9380.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: ["Qualcomm (Atheros) - AR9380"],
  );

  static KernelKext AirPortAtheros40_9485 = KernelKext(
    bundlePath: 'AirPortAtheros40_9485.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: ["Qualcomm (Atheros) - AR9485"],
  );

  static KernelKext AirPortAtheros40_9565 = KernelKext(
    bundlePath: 'AirPortAtheros40_9565.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: ["Qualcomm (Atheros) - AR9565"],
  );

  static KernelKext AirPortAtheros40_9463 = KernelKext(
    bundlePath: 'AirPortAtheros40_9463.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: ["Qualcomm (Atheros) - AR9463"],
  );

  static KernelKext AirPortAtheros40_9462 = KernelKext(
    bundlePath: 'AirPortAtheros40_9462.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: ["Qualcomm (Atheros) - AR9462"],
  );

  static KernelKext NoTouchID = KernelKext(
    bundlePath: 'NoTouchID.kext',
    executablePath: 'Contents/MacOS/NoTouchID',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      'Disables Touch ID to reduce resource overhead and enhance stability',
      'Typically suitable for laptops with fingerprint sensors running macOS Big Sur 11 and older',
    ],
  );

  static KernelKext RtWlanU1827 = KernelKext(
    bundlePath: 'RtWlanU1827.kext',
    executablePath: 'Contents/MacOS/RtWlanU1827',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext RtWlanU = KernelKext(
    bundlePath: 'RtWlanU.kext',
    executablePath: 'Contents/MacOS/RtWlanU',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static List<KernelKext> lanKernelKexts = [
    RealtekRTL8100,
    AppleIntelE1000e,
    BCM5722D,
    AtherosL1cEthernet,
    RealtekRTL8111,
    AtherosE2200Ethernet,
    AppleIGC,
    AppleIGB,
    IntelMausi,
    IntelMausiEthernet,
    LucyRTL8125Ethernet,
    RTL812xLucy,
    SmallTreeIntel82576,
    IntelLucy
  ];

  static List<KernelKext> sortKernelKexts = [
    Lilu,
    VirtualSMC,
    AAAMouSSE,
    AsusSMC,
    YogaSMC,
    WhateverGreen,
    BFixup,
    NootedRed,
    ECEnabler,
    ACPIBatteryManager,
    SMCBatteryManager,
    SMCDellSensors,
    SMCLightSensor,
    SMCProcessor,
    SMCSuperIO,
    NootRX,
    AppleALC,
    VoodooHDA,
    AppleMCEReporterDisabler,
    RestrictEvents,
    AMDRyzenCPUPowerManagement,
    SMCAMDProcessor,
    AmdTscSync,
    SMCRadeonGPU,
    RadeonSensor,
    RadeonBoost,
    AppleIntelPIIXATA,
    SATAUnsupported,
    CtlnaAHCIPort,
    IntelMKLFixup,
    telemetrap,
    CryptexFixup,
    NoAVXFSCompressionTypeZlibAVXpel,
    NVMeFix,
    AMFIPass,
    Innie,
    FeatureUnlock,
    HibernationFixup,
    HoRNDIS,
    FakePCIID,
    CPUFriend,
    CPUFriendDataProvider,
    CpuTopologyRebuild,
    CpuTscSync,
    ForgedInvariant,
    TSCAdjustReset,
    VoodooTSCSync,
    RTCMemoryFixup,
    NullEthernet,
    RealtekRTL8100,
    AppleIntelE1000e,
    BCM5722D,
    AtherosL1cEthernet,
    RealtekRTL8111,
    AtherosE2200Ethernet,
    AppleIGC,
    AppleIGB,
    IntelMausi,
    IntelMausiEthernet,
    LucyRTL8125Ethernet,
    RTL812xLucy,
    SmallTreeIntel82576,
    IntelLucy,
    NoTouchID,
    NullCPUPowerManagement,
    GenericUSBXHCI,
    XLNCUSBFix,
    USBInjectAll,
    USBToolBox,
    UTBMap,
    XHCIUnsupported,
    DummyUSBEHCIPCI,
    DummyUSBXHCIPCI,
    HS80211Family,
    AirPortAtheros40_9285,
    AirPortAtheros40_9380,
    AirPortAtheros40_9485,
    AirPortAtheros40_9565,
    AirPortAtheros40_9462,
    AirPortAtheros40_9463,
    corecaptureElCap,
    IO80211ElCap,
    IO80211ElCap_AirPortAtheros40,
    IO80211ElCap_AirPortBrcm4331,
    IO80211ElCap_AppleAirPortBrcm43224,
    IOSkywalkFamily,
    IO80211FamilyLegacy,
    IO80211FamilyLegacyAirPortBrcmNIC,
    AirportBrcmFixup,
    AirportBrcmFixupAirPortBrcm4360_Injector,
    AirportBrcmFixupAirPortBrcmNIC_Injector,
    itlwm,
    AirportItlwm_Sequoia,
    AirportItlwm_Sonoma_14_4,
    AirportItlwm_Sonoma,
    AirportItlwm_Ventura,
    AirportItlwm_Monterey,
    AirportItlwm_BigSur,
    AirportItlwm_Catalina,
    AirportItlwm_Mojave,
    AirportItlwm_HighSierra,
    BlueToolFixup,
    IntelBluetoothInjector,
    IntelBluetoothFirmware,
    IntelBTPatcher,
    BrcmBluetoothInjector,
    BrcmBluetoothInjectorLegacy,
    BrcmFirmwareData,
    BrcmPatchRAM,
    BrcmPatchRAM2,
    BrcmPatchRAM3,
    Ath3kBT,
    Ath3kBTInjector,
    ApplePS2SmartTouchPad,
    ApplePS2SmartTouchPadApplePS2Controller,
    ApplePS2SmartTouchPadApplePS2Keyboard,
    VoodooPS2Controller,
    VoodooPS2ControllerVoodooInput,
    VoodooPS2ControllerVoodooPS2Keyboard,
    VoodooPS2ControllerVoodooPS2Mouse,
    VoodooPS2ControllerVoodooPS2Trackpad,
    BrightnessKeys,
    BigSurfaceVoodooGPIO,
    BigSurfaceVoodooSerial,
    BigSurfaceVoodooInput,
    BigSurface,
    BigSurfaceHIDDriver,
    VoodooI2CVoodooInput,
    VoodooI2CVoodooI2CServices,
    VoodooI2CVoodooGPIO,
    VoodooRMI,
    VoodooRMIVoodooInput,
    VoodooI2C,
    VoodooRMIRMII2C,
    VoodooSMBus,
    VoodooRMIRMISMBus,
    VoodooI2CHID,
    AppleIntelCPUPowerManagement,
    AppleIntelCPUPowerManagementClient,
    EmeraldSDHC,
    RealtekCardReader,
    RealtekCardReaderFriend,
    RtWlanU,
    RtWlanU1827,
  ];

  static KernelEmulate kernelEmulate_Haswell_Before =
      KernelEmulate(dummyPowerManagement: false);

  static KernelEmulate kernelEmulate_fakeCPU = KernelEmulate(
    cpuid1Mask: 'FFFFFFFF000000000000000000000000'.toBytes(),
    dummyPowerManagement: true,
  );

  static KernelEmulate kernelEmulate_IvyBridge = kernelEmulate_fakeCPU.copyWith(
      cpuid1Data: 'A0060300000000000000000000000000'.toBytes(),
      dummyPowerManagement: false);

  static KernelEmulate kernelEmulate_Haswell = kernelEmulate_fakeCPU.copyWith(
    cpuid1Data: 'A0060300000000000000000000000000'.toBytes(),
  );

  static KernelEmulate kernelEmulate_Broadwell = kernelEmulate_Haswell;

  static KernelEmulate kernelEmulate_Skylake = kernelEmulate_Haswell;

  static KernelEmulate kernelEmulate_KabyLake = kernelEmulate_Haswell;

  static KernelEmulate kernelEmulate_CoffeeLake = kernelEmulate_Haswell;

  static KernelEmulate kernelEmulate_CoffeeLakePlus = kernelEmulate_Haswell;

  static KernelEmulate kernelEmulate_CometLake = kernelEmulate_Haswell;

  static KernelEmulate kernelEmulate_CometLake_U62 =
      kernelEmulate_Broadwell.copyWith(
    cpuid1Data: 'EC060800000000000000000000000000'.toBytes(),
  );

  static KernelEmulate kernelEmulate_RocketLake_Later = kernelEmulate_Broadwell
      .copyWith(cpuid1Data: '55060A00000000000000000000000000'.toBytes());

  static KernelEmulate kernelEmulate_TigerLake_Later = kernelEmulate_Broadwell
      .copyWith(cpuid1Data: 'E5060700000000000000000000000000'.toBytes());

  static KernelEmulate kernelEmulate_Haswell_HEDT =
      kernelEmulate_fakeCPU.copyWith(
          cpuid1Data: 'C3060300000000000000000000000000'.toBytes(),
          dummyPowerManagement: false);

  static KernelEmulate kernelEmulate_Broadwell_HEDT =
      kernelEmulate_fakeCPU.copyWith(
          cpuid1Data: 'D4060300000000000000000000000000'.toBytes(),
          dummyPowerManagement: false);

  static List<KernelEmulate> kernelEmulateList_Desktop = [
    kernelEmulate_Haswell_Before,
    kernelEmulate_Haswell_Before,
    kernelEmulate_Haswell_Before,
    kernelEmulate_IvyBridge,
    kernelEmulate_Haswell,
    kernelEmulate_Broadwell,
    kernelEmulate_Skylake,
    kernelEmulate_KabyLake,
    kernelEmulate_CoffeeLake,
    kernelEmulate_CoffeeLakePlus,
    kernelEmulate_CometLake,
    kernelEmulate_RocketLake_Later,
    kernelEmulate_RocketLake_Later,
    kernelEmulate_RocketLake_Later,
    kernelEmulate_RocketLake_Later
  ];

  static List<KernelKext> kernelKextsList_desktop_0th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    AppleIntelPIIXATA,
    telemetrap,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> kernelKextsList_desktop_1th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> kernelKextsList_desktop_2th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_3th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_4th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_5th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_6th =
      kernelKextsList_desktop_1th;

  static List<KernelKext> kernelKextsList_desktop_7th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_8th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_9th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_10th =
      kernelKextsList_desktop_1th;

  static List<KernelKext> kernelKextsList_desktop_11th =
      kernelKextsList_desktop_1th;
  static List<KernelKext> kernelKextsList_desktop_12th =
      kernelKextsList_desktop_11th;
  static List<KernelKext> kernelKextsList_desktop_13th =
      kernelKextsList_desktop_11th;
  static List<KernelKext> kernelKextsList_desktop_14th =
      kernelKextsList_desktop_11th;
  static List<KernelKext> kernelKextsList_desktop_15th =
      kernelKextsList_desktop_11th;

  static KernelQuirks kernelQuirks_desktop_0th = KernelQuirks(
    appleCpuPmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_desktop_1th =
      kernelQuirks_desktop_0th.copyWith();

  static KernelQuirks kernelQuirks_desktop_2th =
      kernelQuirks_desktop_1th.copyWith();

  static KernelQuirks kernelQuirks_desktop_3th =
      kernelQuirks_desktop_2th.copyWith();

  static KernelQuirks kernelQuirks_desktop_4th =
      kernelQuirks_desktop_3th.copyWith(
    appleCpuPmCfgLock: false,
    appleXcpmCfgLock: true,
  );

  static KernelQuirks kernelQuirks_desktop_5th =
      kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks kernelQuirks_desktop_6th =
      kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks kernelQuirks_desktop_7th =
      kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks kernelQuirks_desktop_8th =
      kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks kernelQuirks_desktop_9th =
      kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks kernelQuirks_desktop_10th =
      kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks kernelQuirks_desktop_11th =
      kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks kernelQuirks_desktop_12th =
      kernelQuirks_desktop_11th.copyWith(provideCurrentCpuInfo: true);

  static KernelQuirks kernelQuirks_desktop_13th =
      kernelQuirks_desktop_12th.copyWith();

  static KernelQuirks kernelQuirks_desktop_14th =
      kernelQuirks_desktop_12th.copyWith();

  static KernelQuirks kernelQuirks_desktop_15th =
      kernelQuirks_desktop_12th.copyWith();

  static List<KernelKext> kernelKextsList_laptop_0th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    AppleIntelPIIXATA,
    telemetrap,
    SMCProcessor,
    SMCSuperIO,
    ACPIBatteryManager,
    USBInjectAll,
    ApplePS2SmartTouchPad,
    ApplePS2SmartTouchPadApplePS2Controller,
    ApplePS2SmartTouchPadApplePS2Keyboard,
  ];

  static List<KernelKext> kernelKextsList_laptop_1th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    ACPIBatteryManager,
    USBInjectAll,
    ApplePS2SmartTouchPad,
    ApplePS2SmartTouchPadApplePS2Controller,
    ApplePS2SmartTouchPadApplePS2Keyboard,
  ];

  static List<KernelKext> kernelKextsList_laptop_2th =
      kernelKextsList_laptop_1th;
  static List<KernelKext> kernelKextsList_laptop_3th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    SMCBatteryManager,
    USBInjectAll,
    VoodooPS2Controller,
    VoodooPS2ControllerVoodooInput,
    VoodooPS2ControllerVoodooPS2Keyboard,
    VoodooPS2ControllerVoodooPS2Mouse,
    VoodooPS2ControllerVoodooPS2Trackpad,
  ];

  static List<KernelKext> kernelKextsList_laptop_4th =
      kernelKextsList_laptop_3th;

  static List<KernelKext> kernelKextsList_laptop_5th =
      kernelKextsList_laptop_3th;

  static List<KernelKext> kernelKextsList_laptop_6th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    SMCBatteryManager,
    USBInjectAll,
    VoodooPS2Controller,
    VoodooPS2ControllerVoodooPS2Keyboard,
    VoodooI2C,
    VoodooI2CVoodooInput,
    VoodooI2CVoodooI2CServices,
    VoodooI2CVoodooGPIO,
    VoodooI2CHID,
  ];
  static List<KernelKext> kernelKextsList_laptop_7th =
      kernelKextsList_laptop_6th;
  static List<KernelKext> kernelKextsList_laptop_8th =
      kernelKextsList_laptop_6th;
  static List<KernelKext> kernelKextsList_laptop_9th =
      kernelKextsList_laptop_6th;
  static List<KernelKext> kernelKextsList_laptop_10th_cometLake =
      kernelKextsList_laptop_6th;

  static List<KernelKext> kernelKextsList_laptop_10th_IceLake =
      kernelKextsList_laptop_6th;

  static KernelQuirks kernelQuirks_laptop_0th = KernelQuirks(
    appleCpuPmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_laptop_1th =
      kernelQuirks_laptop_0th.copyWith();

  static KernelQuirks kernelQuirks_laptop_2th =
      kernelQuirks_laptop_0th.copyWith();

  static KernelQuirks kernelQuirks_laptop_3th =
      kernelQuirks_laptop_0th.copyWith();

  static KernelQuirks kernelQuirks_laptop_4th = kernelQuirks_laptop_0th
      .copyWith(appleCpuPmCfgLock: false, appleXcpmCfgLock: true);

  static KernelQuirks kernelQuirks_laptop_5th =
      kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks kernelQuirks_laptop_6th =
      kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks kernelQuirks_laptop_7th =
      kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks kernelQuirks_laptop_8th =
      kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks kernelQuirks_laptop_9th =
      kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks kernelQuirks_laptop_10th_cometLake =
      kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks kernelQuirks_laptop_10th_IceLake =
      kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks kernelQuirks_laptop_11th_TigerLake =
      kernelQuirks_laptop_4th.copyWith(
          appleCpuPmCfgLock: true, appleXcpmExtraMsrs: true);

  static KernelQuirks kernelQuirks_laptop_12th_AlderLake =
      kernelQuirks_laptop_11th_TigerLake.copyWith(provideCurrentCpuInfo: true);

  static List<KernelKext> kernelKextsList_nuc_0th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    AppleIntelPIIXATA,
    telemetrap,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> kernelKextsList_nuc_1th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> kernelKextsList_nuc_2th = kernelKextsList_nuc_1th;
  static List<KernelKext> kernelKextsList_nuc_3th = kernelKextsList_nuc_2th;

  static List<KernelKext> kernelKextsList_nuc_4th = kernelKextsList_nuc_2th;

  static List<KernelKext> kernelKextsList_nuc_5th = kernelKextsList_nuc_2th;

  static List<KernelKext> kernelKextsList_nuc_6th = kernelKextsList_nuc_2th;
  static List<KernelKext> kernelKextsList_nuc_7th = kernelKextsList_nuc_2th;
  static List<KernelKext> kernelKextsList_nuc_8th = kernelKextsList_nuc_2th;
  static List<KernelKext> kernelKextsList_nuc_9th = kernelKextsList_nuc_2th;
  static List<KernelKext> kernelKextsList_nuc_10th_cometLake =
      kernelKextsList_nuc_2th;

  static List<KernelKext> kernelKextsList_nuc_10th_IceLake =
      kernelKextsList_nuc_2th;

  static KernelQuirks kernelQuirks_nuc_0th = KernelQuirks(
    appleCpuPmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_nuc_1th = kernelQuirks_nuc_0th.copyWith();

  static KernelQuirks kernelQuirks_nuc_2th = kernelQuirks_nuc_0th.copyWith();

  static KernelQuirks kernelQuirks_nuc_3th = kernelQuirks_nuc_0th.copyWith();

  static KernelQuirks kernelQuirks_nuc_4th = kernelQuirks_nuc_0th.copyWith(
    appleCpuPmCfgLock: false,
    appleXcpmCfgLock: true,
  );

  static KernelQuirks kernelQuirks_nuc_5th = kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_6th = kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_7th = kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_8th = kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_9th = kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_10th_cometLake =
      kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_10th_IceLake =
      kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_11th_TigerLake = kernelQuirks_nuc_4th
      .copyWith(appleCpuPmCfgLock: true, appleXcpmExtraMsrs: true);

  static KernelQuirks kernelQuirks_nuc_12th_AlderLake =
      kernelQuirks_nuc_11th_TigerLake.copyWith(provideCurrentCpuInfo: true);

  static List<KernelKext> kernelKextsList_hedt_1th = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> kernelKextsList_hedt_2th = kernelKextsList_hedt_1th;
  static List<KernelKext> kernelKextsList_hedt_3th = kernelKextsList_hedt_1th;

  static List<KernelKext> kernelKextsList_hedt_4th = kernelKextsList_hedt_1th;

  static List<KernelKext> kernelKextsList_hedt_5th = kernelKextsList_hedt_1th;

  static List<KernelKext> kernelKextsList_hedt_6th = kernelKextsList_hedt_1th;
  static List<KernelKext> kernelKextsList_hedt_10th = kernelKextsList_hedt_1th;

  static KernelQuirks kernelQuirks_hedt_1th = KernelQuirks(
    appleCpuPmCfgLock: true,
    appleXcpmExtraMsrs: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_hedt_2th = kernelQuirks_hedt_1th.copyWith();

  static KernelQuirks kernelQuirks_hedt_3th = kernelQuirks_hedt_1th.copyWith();

  static KernelQuirks kernelQuirks_hedt_4th = KernelQuirks(
    appleXcpmCfgLock: true,
    appleXcpmExtraMsrs: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_hedt_5th = kernelQuirks_hedt_4th.copyWith();

  static KernelQuirks kernelQuirks_hedt_6th = KernelQuirks(
    appleXcpmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_hedt_10th = kernelQuirks_hedt_6th.copyWith();

  static List<KernelKext> kernelKextsList_amd_desktop_legacy = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static List<KernelKext> kernelKextsList_amd_desktop_ryzen = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static KernelEmulate kernelEmulate_amd =
      KernelEmulate(dummyPowerManagement: true);

  static KernelQuirks kernelQuirks_amd_desktop_legacy = KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_amd_desktop_ryzen = KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelKext> kernelKextsList_amd_laptop_legacy = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCBatteryManager,
    GenericUSBXHCI,
    USBInjectAll,
    VoodooPS2Controller,
    VoodooPS2ControllerVoodooInput,
    VoodooPS2ControllerVoodooPS2Keyboard,
    VoodooPS2ControllerVoodooPS2Mouse,
    VoodooPS2ControllerVoodooPS2Trackpad,
  ];

  static List<KernelKext> kernelKextsList_amd_laptop_ryzen = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    GenericUSBXHCI,
    SMCBatteryManager,
    USBInjectAll,
    VoodooPS2Controller,
    VoodooPS2ControllerVoodooPS2Keyboard,
    VoodooI2C,
    VoodooI2CVoodooInput,
    VoodooI2CVoodooI2CServices,
    VoodooI2CVoodooGPIO,
    VoodooI2CHID,
  ];

  ///
  static KernelQuirks kernelQuirks_amd_laptop_legacy = KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_amd_laptop_ryzen = KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelKext> kernelKextsList_amd_nuc_legacy = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static List<KernelKext> kernelKextsList_amd_nuc_ryzen = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  ///
  static KernelQuirks kernelQuirks_amd_nuc_legacy = KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static KernelQuirks kernelQuirks_amd_nuc_ryzen = KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelKext> kernelKextsList_amd_hedt_ryzen = [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static KernelQuirks kernelQuirks_amd_hedt_ryzen = KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelTrim> kernelTrims = [
    const KernelTrim(
        value: -1,
        comment: 'Default TRIM policy (SetApfsTrimTimeout = -1)',
        note: [
          '1. APFS system executes TRIM based on macOS default timeout, suitable for most TRIM-capable SSDs',
          '2. On TRIM-capable SSDs, macOS automatically manages TRIM to clean deleted blocks and improve write efficiency',
          '3. TRIM periodically clears unused blocks to reduce SSD wear and extend lifespan',
          '4. Some third-party SSDs without full TRIM support may experience boot delays or stalls during TRIM'
        ]),
    const KernelTrim(
        value: 0,
        comment: 'Completely disable TRIM (SetApfsTrimTimeout = 0)',
        note: [
          'Benefits of disabling TRIM:',
          '1. Improves boot speed for SSDs with buggy TRIM implementations by eliminating TRIM timeout delays at boot',
          '2. Improves compatibility and reduces crash risks on problematic SSDs',
          '3. Extends lifespan on non-TRIM SSDs where forcing TRIM causes premature wear',
          'Drawbacks of disabling TRIM:',
          '1. Slower sustained write performance over time due to lack of block reclamation',
          '2. SSD controller requires more background overhead for garbage collection',
          '3. Increases write amplification on TRIM-supported SSDs',
          'Although disabling TRIM can improve boot speed on buggy drives, modern SSDs should keep TRIM enabled for optimal long-term performance and endurance.',
        ])
  ];
}
