import 'package:rapidefi/l10n/l10n_helper.dart';
// ignore_for_file: non_constant_identifier_names

import 'package:rapidefi/extension/string_extension.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel_trim.dart';
import '../../models/kernel/kernel_emulate.dart';
import '../../models/kernel/kernel_kext.dart';
import '../../models/kernel/kernel_quirks.dart';

class ConfigKernel {
  static KernelKext get Lilu => KernelKext(
      bundlePath: 'Lilu.kext',
      executablePath: 'Contents/MacOS/Lilu',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'Lilu',
      url: 'https://github.com/acidanthera/Lilu',
      function: l10nGlobal.autoGen5393,
      note: [
        l10nGlobal.autoGen5394,
        l10nGlobal.autoGen5395,
        l10nGlobal.autoGen5396
      ]);

  static KernelKext get VirtualSMC => KernelKext(
      bundlePath: 'VirtualSMC.kext',
      executablePath: 'Contents/MacOS/VirtualSMC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: "VirtualSMC",
      url: "https://github.com/acidanthera/VirtualSMC",
      function: l10nGlobal.autoGen5393,
      note: [
        l10nGlobal.autoGen5397,
        l10nGlobal.autoGen5398,
        l10nGlobal.autoGen5399
      ]);
  static KernelKext get WhateverGreen => KernelKext(
      bundlePath: 'WhateverGreen.kext',
      executablePath: 'Contents/MacOS/WhateverGreen',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: "WhateverGreen",
      url: "https://github.com/acidanthera/WhateverGreen",
      function:
          l10nGlobal.autoGen5400,
      note: [
        l10nGlobal.autoGen5401,
        l10nGlobal.autoGen5402,
      ]);

  static KernelKext get AppleALC => KernelKext(
      bundlePath: 'AppleALC.kext',
      executablePath: 'Contents/MacOS/AppleALC',
      plistPath: 'Contents/Info.plist',
      name: "AppleALC",
      url: "https://github.com/acidanthera/AppleALC",
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5403);

  static KernelKext get VoodooHDA => KernelKext(
      bundlePath: 'VoodooHDA.kext',
      executablePath: 'Contents/MacOS/VoodooHDA',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '20.3.0',
      function:
          l10nGlobal.autoGen5404);

  static KernelKext get AppleIntelPIIXATA => KernelKext(
      bundlePath: 'AppleIntelPIIXATA.kext',
      executablePath: 'Contents/MacOS/AppleIntelPIIXATA',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5405);

  static KernelKext get telemetrap => KernelKext(
    bundlePath: 'telemetrap.kext',
    executablePath: 'Contents/MacOS/telemetrap',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '',
  );

  static KernelKext get SMCProcessor => KernelKext(
    bundlePath: 'SMCProcessor.kext',
    executablePath: 'Contents/MacOS/SMCProcessor',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get SMCSuperIO => KernelKext(
    bundlePath: 'SMCSuperIO.kext',
    executablePath: 'Contents/MacOS/SMCSuperIO',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get RestrictEvents => KernelKext(
    bundlePath: 'RestrictEvents.kext',
    executablePath: 'Contents/MacOS/RestrictEvents',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get NullCPUPowerManagement => KernelKext(
      bundlePath: 'NullCPUPowerManagement.kext',
      executablePath: 'Contents/MacOS/NullCPUPowerManagement',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          l10nGlobal.autoGen5406);

  static KernelKext get AMDRyzenCPUPowerManagement => KernelKext(
      bundlePath: 'AMDRyzenCPUPowerManagement.kext',
      executablePath: 'Contents/MacOS/AMDRyzenCPUPowerManagement',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function:
          l10nGlobal.autoGen5407);

  static KernelKext get ACPIBatteryManager => KernelKext(
      bundlePath: 'ACPIBatteryManager.kext',
      executablePath: 'Contents/MacOS/ACPIBatteryManager',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5408,
      note: []);

  static KernelKext get SMCBatteryManager => KernelKext(
      bundlePath: 'SMCBatteryManager.kext',
      executablePath: 'Contents/MacOS/SMCBatteryManager',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5409,
      note: []);

  static KernelKext get SMCLightSensor => KernelKext(
      bundlePath: 'SMCLightSensor.kext',
      executablePath: 'Contents/MacOS/SMCLightSensor',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5410,
      note: []);

  static KernelKext get AsusSMC => KernelKext(
      bundlePath: 'AsusSMC.kext',
      executablePath: 'Contents/MacOS/AsusSMC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5411,
      note: []);

  static KernelKext get YogaSMC => KernelKext(
      bundlePath: 'YogaSMC.kext',
      executablePath: 'Contents/MacOS/YogaSMC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5412,
      note: []);

  static KernelKext get SMCDellSensors => KernelKext(
      bundlePath: 'SMCDellSensors.kext',
      executablePath: 'Contents/MacOS/SMCDellSensors',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5413,
      note: []);

  static KernelKext get SMCAMDProcessor => KernelKext(
      bundlePath: 'SMCAMDProcessor.kext',
      executablePath: 'Contents/MacOS/SMCAMDProcessor',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function:
          l10nGlobal.autoGen5414);

  static KernelKext get NootRX => KernelKext(
      bundlePath: 'NootRX.kext',
      executablePath: 'Contents/MacOS/NootRX',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'NootRX',
      note: [
        l10nGlobal.autoGen5415,
        l10nGlobal.autoGen5416,
        l10nGlobal.autoGen5417,
      ]);

  static KernelKext get NootedRed => KernelKext(
      bundlePath: 'NootedRed.kext',
      enabled: false,
      executablePath: 'Contents/MacOS/NootedRed',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'NootedRed',
      function: '');

  static KernelKext get BFixup => KernelKext(
      bundlePath: 'BFixup.kext',
      executablePath: 'Contents/MacOS/BFixup',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      name: 'BFixup',
      function:
          l10nGlobal.autoGen5418);

  static KernelKext get AAAMouSSE => KernelKext(
    bundlePath: 'AAAMouSSE.kext',
    executablePath: 'Contents/MacOS/AAAMouSSE',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get ECEnabler => KernelKext(
      bundlePath: 'ECEnabler.kext',
      executablePath: 'Contents/MacOS/ECEnabler',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5419,
      note: []);

  static KernelKext get NVMeFix => KernelKext(
    bundlePath: 'NVMeFix.kext',
    executablePath: 'Contents/MacOS/NVMeFix',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '',
    note: [
      l10nGlobal.autoGen5420,
      l10nGlobal.autoGen5421,
      l10nGlobal.autoGen5422,
    ],
  );

  static KernelKext get AppleMCEReporterDisabler => KernelKext(
    bundlePath: 'AppleMCEReporterDisabler.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get AMFIPass => KernelKext(
      bundlePath: 'AMFIPass.kext',
      executablePath: 'Contents/MacOS/AMFIPass',
      plistPath: 'Contents/Info.plist',
      minKernel: '18.0.0',
      maxKernel: '',
      function:
          l10nGlobal.autoGen5423);

  static KernelKext get Innie => KernelKext(
    bundlePath: 'Innie.kext',
    executablePath: 'Contents/MacOS/Innie',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5424],
  );

  static KernelKext get FeatureUnlock => KernelKext(
    bundlePath: 'FeatureUnlock.kext',
    executablePath: 'Contents/MacOS/FeatureUnlock',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5425],
  );

  static KernelKext get HibernationFixup => KernelKext(
    bundlePath: 'HibernationFixup.kext',
    executablePath: 'Contents/MacOS/HibernationFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5426],
  );

  static KernelKext get HoRNDIS => KernelKext(
    bundlePath: 'HoRNDIS.kext',
    executablePath: 'Contents/MacOS/HoRNDIS',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5427],
  );

  static KernelKext get CryptexFixup => KernelKext(
    bundlePath: 'CryptexFixup.kext',
    executablePath: 'Contents/MacOS/CryptexFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '22.0.0',
    maxKernel: '',
  );

  static KernelKext get NoAVXFSCompressionTypeZlibAVXpel => KernelKext(
    bundlePath: 'NoAVXFSCompressionTypeZlib-AVXpel.kext',
    executablePath: 'Contents/MacOS/NoAVXFSCompressionTypeZlib',
    plistPath: 'Contents/Info.plist',
    minKernel: '22.0.0',
    maxKernel: '',
  );

  static KernelKext get CPUFriend => KernelKext(
    bundlePath: 'CPUFriend.kext',
    executablePath: 'Contents/MacOS/CPUFriend',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5428],
  );

  static KernelKext get CPUFriendDataProvider => KernelKext(
    bundlePath: 'CPUFriendDataProvider.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5429],
  );

  static KernelKext get CpuTopologyRebuild => KernelKext(
    bundlePath: 'CpuTopologyRebuild.kext',
    executablePath: 'Contents/MacOS/CpuTopologyRebuild',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      l10nGlobal.autoGen5430,
      l10nGlobal.autoGen5431,
    ],
  );

  static KernelKext get CpuTscSync => KernelKext(
    bundlePath: 'CpuTscSync.kext',
    executablePath: 'Contents/MacOS/CpuTscSync',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      l10nGlobal.autoGen5432,
      l10nGlobal.autoGen5433,
      l10nGlobal.autoGen5434,
    ],
  );

  static KernelKext get ForgedInvariant => KernelKext(
    bundlePath: 'ForgedInvariant.kext',
    executablePath: 'Contents/MacOS/ForgedInvariant',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      l10nGlobal.autoGen5435,
      l10nGlobal.autoGen5436,
    ],
  );

  static KernelKext get AmdTscSync => KernelKext(
      bundlePath: 'AmdTscSync.kext',
      executablePath: 'Contents/MacOS/AmdTscSync',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          l10nGlobal.autoGen5437);

  static KernelKext get TSCAdjustReset => KernelKext(
    bundlePath: 'TSCAdjustReset.kext',
    executablePath: 'Contents/MacOS/TSCAdjustReset',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooTSCSync => KernelKext(
    bundlePath: 'VoodooTSCSync.kext',
    executablePath: 'Contents/MacOS/VoodooTSCSync',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      l10nGlobal.autoGen5438,
      l10nGlobal.autoGen5439,
    ],
  );

  static KernelKext get FakePCIID => KernelKext(
    bundlePath: 'FakePCIID.kext',
    executablePath: 'Contents/MacOS/FakePCIID',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5440],
  );

  static KernelKext get NullEthernet => KernelKext(
    bundlePath: 'NullEthernet.kext',
    executablePath: 'Contents/MacOS/NullEthernet',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5441],
  );

  static KernelKext get RTCMemoryFixup => KernelKext(
    bundlePath: 'RTCMemoryFixup.kext',
    executablePath: 'Contents/MacOS/RTCMemoryFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5442],
  );

  static KernelKext get ApplePS2SmartTouchPad => KernelKext(
    bundlePath: 'ApplePS2SmartTouchPad.kext',
    executablePath: 'Contents/MacOS/ApplePS2SmartTouchPad',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get ApplePS2SmartTouchPadApplePS2Controller => KernelKext(
    bundlePath:
        'ApplePS2SmartTouchPad.kext/Contents/PlugIns/ApplePS2Controller.kext',
    executablePath: 'Contents/MacOS/ApplePS2Controller',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get ApplePS2SmartTouchPadApplePS2Keyboard => KernelKext(
    bundlePath:
        'ApplePS2SmartTouchPad.kext/Contents/PlugIns/ApplePS2Keyboard.kext',
    executablePath: 'Contents/MacOS/ApplePS2Keyboard',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooPS2Controller => KernelKext(
    bundlePath: 'VoodooPS2Controller.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Controller',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5443],
  );

  static KernelKext get VoodooPS2ControllerVoodooPS2Keyboard => KernelKext(
    bundlePath:
        'VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Keyboard.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Keyboard',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5444],
  );

  static KernelKext get VoodooPS2ControllerVoodooPS2Mouse => KernelKext(
    bundlePath: 'VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Mouse.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Mouse',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5445],
  );

  static KernelKext get VoodooPS2ControllerVoodooPS2Trackpad => KernelKext(
    bundlePath:
        'VoodooPS2Controller.kext/Contents/PlugIns/VoodooPS2Trackpad.kext',
    executablePath: 'Contents/MacOS/VoodooPS2Trackpad',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooPS2ControllerVoodooInput => KernelKext(
    bundlePath: 'VoodooPS2Controller.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooI2CVoodooInput => KernelKext(
    bundlePath: 'VoodooI2C.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );
  static KernelKext get VoodooI2CVoodooI2CServices => KernelKext(
    bundlePath: 'VoodooI2C.kext/Contents/PlugIns/VoodooI2CServices.kext',
    executablePath: 'Contents/MacOS/VoodooI2CServices',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooI2CVoodooGPIO => KernelKext(
    bundlePath: 'VoodooI2C.kext/Contents/PlugIns/VoodooGPIO.kext',
    executablePath: 'Contents/MacOS/VoodooGPIO',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooI2C => KernelKext(
    bundlePath: 'VoodooI2C.kext',
    executablePath: 'Contents/MacOS/VoodooI2C',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooSMBus => KernelKext(
    bundlePath: 'VoodooSMBus.kext',
    executablePath: 'Contents/MacOS/VoodooSMBus',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooRMI => KernelKext(
    bundlePath: 'VoodooRMI.kext',
    executablePath: 'Contents/MacOS/VoodooRMI',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooRMIVoodooInput => KernelKext(
    bundlePath: 'VoodooRMI.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooRMIRMISMBus => KernelKext(
    bundlePath: 'VoodooRMI.kext/Contents/PlugIns/RMISMBus.kext',
    executablePath: 'Contents/MacOS/RMISMBus',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooRMIRMII2C => KernelKext(
    bundlePath: 'VoodooRMI.kext/Contents/PlugIns/RMII2C.kext',
    executablePath: 'Contents/MacOS/RMII2C',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get VoodooI2CHID => KernelKext(
    bundlePath: 'VoodooI2CHID.kext',
    executablePath: 'Contents/MacOS/VoodooI2CHID',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get BigSurfaceVoodooGPIO => KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/VoodooGPIO.kext',
    executablePath: 'Contents/MacOS/VoodooGPIO',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get BigSurfaceVoodooSerial => KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/VoodooSerial.kext',
    executablePath: 'Contents/MacOS/VoodooSerial',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get BigSurfaceVoodooInput => KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/VoodooInput.kext',
    executablePath: 'Contents/MacOS/VoodooInput',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get BigSurface => KernelKext(
    bundlePath: 'BigSurface.kext',
    executablePath: 'Contents/MacOS/BigSurface',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    function: l10nGlobal.autoGen5446,
  );

  static KernelKext get BigSurfaceHIDDriver => KernelKext(
    bundlePath: 'BigSurface.kext/Contents/PlugIns/BigSurfaceHIDDriver.kext',
    executablePath: 'Contents/MacOS/BigSurfaceHIDDriver',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get BrightnessKeys => KernelKext(
    bundlePath: 'BrightnessKeys.kext',
    executablePath: 'Contents/MacOS/BrightnessKeys',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    function: l10nGlobal.autoGen5447,
  );
  static KernelKext get RadeonBoost => KernelKext(
    bundlePath: 'RadeonBoost.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5448],
  );
  static KernelKext get RadeonSensor => KernelKext(
    bundlePath: 'RadeonSensor.kext',
    executablePath: 'Contents/MacOS/RadeonSensor',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5449],
  );

  static KernelKext get SMCRadeonGPU => KernelKext(
    bundlePath: 'SMCRadeonGPU.kext',
    executablePath: 'Contents/MacOS/SMCRadeonGPU',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5450],
  );

  static KernelKext get GenericUSBXHCI => KernelKext(
    bundlePath: 'GenericUSBXHCI.kext',
    executablePath: 'Contents/MacOS/GenericUSBXHCI',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5405],
  );

  static KernelKext get XLNCUSBFix => KernelKext(
      bundlePath: 'XLNCUSBFix.kext',
      executablePath: '',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function: l10nGlobal.autoGen5451);

  static KernelKext get USBInjectAll => KernelKext(
      bundlePath: 'USBInjectAll.kext',
      executablePath: 'Contents/MacOS/USBInjectAll',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5452);

  static KernelKext get USBToolBox => KernelKext(
      bundlePath: 'USBToolBox.kext',
      executablePath: 'Contents/MacOS/USBToolBox',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: l10nGlobal.autoGen5453);

  static KernelKext get UTBMap => KernelKext(
    bundlePath: 'UTBMap.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get XHCIUnsupported => KernelKext(
    bundlePath: 'XHCI-unsupported.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: [
      l10nGlobal.autoGen5454
    ],
  );

  static KernelKext get DummyUSBEHCIPCI => KernelKext(
    bundlePath: 'DummyUSBEHCIPCI.kext',
    executablePath: 'Contents/MacOS/AppleUSBEHCIPCI',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: [l10nGlobal.autoGen5455],
  );

  static KernelKext get DummyUSBXHCIPCI => KernelKext(
    bundlePath: 'DummyUSBXHCIPCI.kext',
    executablePath: 'Contents/MacOS/AppleUSBXHCIPCI',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: [l10nGlobal.autoGen5456],
  );

  static KernelKext get AppleIntelCPUPowerManagement => KernelKext(
      bundlePath: 'AppleIntelCPUPowerManagement.kext',
      executablePath: 'Contents/MacOS/AppleIntelCPUPowerManagement',
      plistPath: 'Contents/Info.plist',
      minKernel: '22.0.0',
      maxKernel: '',
      function: l10nGlobal.autoGen5457);

  static KernelKext get AppleIntelCPUPowerManagementClient => KernelKext(
      bundlePath: 'AppleIntelCPUPowerManagementClient.kext',
      executablePath: 'Contents/MacOS/AppleIntelCPUPowerManagementClient',
      plistPath: 'Contents/Info.plist',
      minKernel: '22.0.0',
      maxKernel: '',
      function: l10nGlobal.autoGen5457);

  static KernelKext get RealtekCardReader => KernelKext(
    bundlePath: 'RealtekCardReader.kext',
    executablePath: 'Contents/MacOS/RealtekCardReader',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5458],
  );

  static KernelKext get RealtekCardReaderFriend => KernelKext(
    bundlePath: 'RealtekCardReaderFriend.kext',
    executablePath: 'Contents/MacOS/RealtekCardReaderFriend',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5459],
  );

  static KernelKext get EmeraldSDHC => KernelKext(
    bundlePath: 'EmeraldSDHC.kext',
    executablePath: 'Contents/MacOS/EmeraldSDHC',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5460],
  );

  static KernelKext get RealtekRTL8100 => KernelKext(
      name: 'RealtekRTL8100',
      bundlePath: 'RealtekRTL8100.kext',
      executablePath: 'Contents/MacOS/RealtekRTL8100',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "810X,8100,8101E,8102E,8103E,8401E,8105E,8402,8106E,8106EUS,8107E,8136,8139",
      note: [
        l10nGlobal.autoGen5461,
        l10nGlobal.autoGen5462,
        l10nGlobal.autoGen5463
      ]);

  static KernelKext get AppleIntelE1000e => KernelKext(
      name: 'AppleIntelE1000e',
      bundlePath: 'AppleIntelE1000e.kext',
      executablePath: 'Contents/MacOS/AppleIntelE1000e',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "82540,82541,82542,82543,82545,82546,82547,82578,82579,82574L,82571,82572,82573,82574,82583,I217-V",
      note: [
        l10nGlobal.autoGen5464,
        l10nGlobal.autoGen5465,
        l10nGlobal.autoGen5463
      ]);

  static KernelKext get BCM5722D => KernelKext(
      name: 'BCM5722D',
      bundlePath: 'BCM5722D.kext',
      executablePath: 'Contents/MacOS/BCM5722D',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "BCM5722,BCM5754,BCM5754M,BCM5755,BCM5755M,BCM57788,BCM5787,BCM5787M,BCM5906,BCM5906M",
      note: [
        l10nGlobal.autoGen5466,
        l10nGlobal.autoGen5467,
        l10nGlobal.autoGen5463
      ]);

  static KernelKext get AtherosL1cEthernet => KernelKext(
      name: 'AtherosL1cEthernet',
      bundlePath: 'AtherosL1cEthernet.kext',
      executablePath: 'Contents/MacOS/AtherosL1cEthernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "AR8131,AR8132,AR8151,AR8152",
      note: [l10nGlobal.autoGen5466, l10nGlobal.autoGen5468, l10nGlobal.autoGen5463]);

  static KernelKext get RealtekRTL8111 => KernelKext(
      name: 'RealtekRTL8111',
      bundlePath: 'RealtekRTL8111.kext',
      executablePath: 'Contents/MacOS/RealtekRTL8111',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "8111,8168,2500,2600,E2500,E2600",
      note: [
        l10nGlobal.autoGen5466,
        l10nGlobal.autoGen5469,
        l10nGlobal.autoGen5470
      ]);

  static KernelKext get AtherosE2200Ethernet => KernelKext(
      name: 'AtherosE2200Ethernet',
      bundlePath: 'AtherosE2200Ethernet.kext',
      executablePath: 'Contents/MacOS/AtherosE2200Ethernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "AR816X,AR817X,E220X,E2400",
      note: [l10nGlobal.autoGen5466, l10nGlobal.autoGen5471]);

  static KernelKext get AppleIGC => KernelKext(
      name: 'AppleIGC',
      bundlePath: 'AppleIGC.kext',
      executablePath: 'Contents/MacOS/AppleIGC',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "I225,I226",
      note: [
        l10nGlobal.autoGen5472,
        l10nGlobal.autoGen5473,
        l10nGlobal.autoGen5474
      ]);

  static KernelKext get AppleIGB => KernelKext(
      name: 'AppleIGB',
      bundlePath: 'AppleIGB.kext',
      executablePath: 'Contents/MacOS/AppleIGB',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "82575,82576,82580,DH89XXCC,I350,I354,I210,I211",
      note: [
        l10nGlobal.autoGen5472,
        l10nGlobal.autoGen5475,
        l10nGlobal.autoGen5476,
        l10nGlobal.autoGen5477
      ]);

  static KernelKext get IntelMausi => KernelKext(
      name: 'IntelMausi',
      bundlePath: 'IntelMausi.kext',
      executablePath: 'Contents/MacOS/IntelMausi',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "82578,82579,I217,I218,I219",
      note: [
        l10nGlobal.autoGen5466,
        l10nGlobal.autoGen5478,
        l10nGlobal.autoGen5479,
        l10nGlobal.autoGen5480,
        l10nGlobal.autoGen5481,
        l10nGlobal.autoGen5482,
        l10nGlobal.autoGen5483,
        l10nGlobal.autoGen5484
      ]);

  static KernelKext get IntelMausiEthernet => KernelKext(
      name: 'IntelMausiEthernet',
      bundlePath: 'IntelMausiEthernet.kext',
      executablePath: 'Contents/MacOS/IntelMausiEthernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function:
          "82578LM,82578LC,82578DM,82578DC,82579LM,82579V,I217LM,I217V,I218LM,I218V,I218LM2,I218V2,I218LM3,I219V,I219LM,I219V2,I219LM2,I219LM2",
      note: [
        l10nGlobal.autoGen5466,
        l10nGlobal.autoGen5478,
        l10nGlobal.autoGen5479,
        l10nGlobal.autoGen5480,
        l10nGlobal.autoGen5481,
        l10nGlobal.autoGen5482,
        l10nGlobal.autoGen5483,
        l10nGlobal.autoGen5485
      ]);

  static KernelKext get LucyRTL8125Ethernet => KernelKext(
      name: 'LucyRTL8125Ethernet',
      bundlePath: 'LucyRTL8125Ethernet.kext',
      executablePath: 'Contents/MacOS/LucyRTL8125Ethernet',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "8125",
      note: [l10nGlobal.autoGen5472, l10nGlobal.autoGen5486]);

  static KernelKext get RTL812xLucy => KernelKext(
      name: 'RTL812xLucy',
      bundlePath: 'RTL812xLucy.kext',
      executablePath: 'Contents/MacOS/RTL812xLucy',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "8125,8126",
      note: [
        l10nGlobal.autoGen5487,
        l10nGlobal.autoGen5488,
        l10nGlobal.autoGen5489
      ]);

  static KernelKext get SmallTreeIntel82576 => KernelKext(
      name: 'SmallTreeIntel82576',
      bundlePath: 'SmallTreeIntel82576.kext',
      executablePath: 'Contents/MacOS/SmallTreeIntel82576',
      plistPath: 'Contents/Info.plist',
      minKernel: '',
      maxKernel: '',
      function: "I211",
      note: [
        l10nGlobal.autoGen5472,
        l10nGlobal.autoGen5490,
        l10nGlobal.autoGen5491,
        l10nGlobal.autoGen5492
      ]);

  static KernelKext get IntelLucy => KernelKext(
      name: 'IntelLucy',
      bundlePath: 'IntelLucy.kext',
      executablePath: 'Contents/MacOS/IntelLucy',
      plistPath: 'Contents/Info.plist',
      minKernel: '17.0.0',
      maxKernel: '',
      function: "X520,X540,X550,82598",
      note: [
        l10nGlobal.autoGen5493,
        l10nGlobal.autoGen5494,
        l10nGlobal.autoGen5495,
        l10nGlobal.autoGen5496
      ]);

  static KernelKext get SATAUnsupported => KernelKext(
    bundlePath: 'SATA-unsupported.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '19.99.99',
    note: [l10nGlobal.autoGen5497],
  );

  static KernelKext get CtlnaAHCIPort => KernelKext(
    bundlePath: 'CtlnaAHCIPort.kext',
    executablePath: 'Contents/MacOS/CtlnaAHCIPort',
    plistPath: 'Contents/Info.plist',
    minKernel: '20.0.0',
    maxKernel: '',
    note: [l10nGlobal.autoGen5498],
  );

  static KernelKext get IntelMKLFixup => KernelKext(
    bundlePath: 'IntelMKLFixup.kext',
    executablePath: 'Contents/MacOS/IntelMKLFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [l10nGlobal.autoGen5499],
  );

  static KernelKext get IOSkywalkFamily => KernelKext(
    bundlePath: 'IOSkywalkFamily.kext',
    executablePath: 'Contents/MacOS/IOSkywalkFamily',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '25.99.99',
  );

  static KernelKext get IO80211FamilyLegacy => KernelKext(
    bundlePath: 'IO80211FamilyLegacy.kext',
    executablePath: 'Contents/MacOS/IO80211FamilyLegacy',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '25.99.99',
  );

  static KernelKext get IO80211FamilyLegacyAirPortBrcmNIC => KernelKext(
    bundlePath: 'IO80211FamilyLegacy.kext/Contents/PlugIns/AirPortBrcmNIC.kext',
    executablePath: 'Contents/MacOS/AirPortBrcmNIC',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '25.99.99',
  );

  static KernelKext get AirportBrcmFixup => KernelKext(
    bundlePath: 'AirportBrcmFixup.kext',
    executablePath: 'Contents/MacOS/AirportBrcmFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '14.0.0',
    maxKernel: '',
  );

  static KernelKext get AirportBrcmFixupAirPortBrcm4360_Injector => KernelKext(
    bundlePath:
        'AirportBrcmFixup.kext/Contents/PlugIns/AirPortBrcm4360_Injector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '14.0.0',
    maxKernel: '19.99.99',
  );

  static KernelKext get AirportBrcmFixupAirPortBrcmNIC_Injector => KernelKext(
    bundlePath:
        'AirportBrcmFixup.kext/Contents/PlugIns/AirPortBrcmNIC_Injector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '20.0.0',
    maxKernel: '',
  );

  static KernelKext get corecaptureElCap => KernelKext(
    bundlePath: 'corecaptureElCap.kext',
    executablePath: 'Contents/MacOS/corecaptureElCap',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext get IO80211ElCap => KernelKext(
    bundlePath: 'IO80211ElCap.kext',
    executablePath: 'Contents/MacOS/IO80211ElCap',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext get IO80211ElCap_AirPortAtheros40 => KernelKext(
    bundlePath: 'IO80211ElCap.kext/Contents/PlugIns/AirPortAtheros40.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '',
  );

  // 10.14 被移除
  static KernelKext get IO80211ElCap_AirPortBrcm4331 => KernelKext(
    bundlePath: 'IO80211ElCap.kext/Contents/PlugIns/AirPortBrcm4331.kext',
    executablePath: 'Contents/MacOS/AirPortBrcm4331',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '',
  );

  // 10.12 被移除
  static KernelKext get IO80211ElCap_AppleAirPortBrcm43224 => KernelKext(
    bundlePath: 'IO80211ElCap.kext/Contents/PlugIns/AppleAirPortBrcm43224.kext',
    executablePath: 'Contents/MacOS/AppleAirPortBrcm43224',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext get itlwm => KernelKext(
    bundlePath: 'itlwm.kext',
    executablePath: 'Contents/MacOS/itlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '',
    note: [l10nGlobal.autoGen5500],
  );

  static KernelKext get AirportItlwm_Sequoia => KernelKext(
    bundlePath: 'AirportItlwm_Sequoia.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '24.0.0',
    maxKernel: '25.99.99',
    note: [
      l10nGlobal.autoGen5501
    ],
  );

  static KernelKext get AirportItlwm_Sonoma_14_4 => KernelKext(
    bundlePath: 'AirportItlwm_Sonoma_14_4.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.4.0',
    maxKernel: '23.99.99',
    note: [l10nGlobal.autoGen5502],
  );

  static KernelKext get AirportItlwm_Sonoma => KernelKext(
    bundlePath: 'AirportItlwm_Sonoma.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '23.0.0',
    maxKernel: '23.3.99',
    note: ["macOS Sonoma 14.0 ~ macOS Sonoma 14.3"],
  );

  static KernelKext get AirportItlwm_Ventura => KernelKext(
    bundlePath: 'AirportItlwm_Ventura.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '22.0.0',
    maxKernel: '22.99.99',
    note: ["macOS Ventura 13.x"],
  );

  static KernelKext get AirportItlwm_Monterey => KernelKext(
    bundlePath: 'AirportItlwm_Monterey.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '21.99.99',
    note: ["macOS Monterey 12.x"],
  );

  static KernelKext get AirportItlwm_BigSur => KernelKext(
    bundlePath: 'AirportItlwm_BigSur.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '20.0.0',
    maxKernel: '20.99.99',
    note: ["macOS Big Sur 11.x"],
  );

  static KernelKext get AirportItlwm_Catalina => KernelKext(
    bundlePath: 'AirportItlwm_Catalina.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '19.0.0',
    maxKernel: '19.99.99',
    note: ["macOS Catalina 10.15.x"],
  );

  static KernelKext get AirportItlwm_Mojave => KernelKext(
    bundlePath: 'AirportItlwm_Mojave.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '18.99.99',
    note: ["macOS Mojave 10.14.x"],
  );

  static KernelKext get AirportItlwm_HighSierra => KernelKext(
    bundlePath: 'AirportItlwm_HighSierra.kext',
    executablePath: 'Contents/MacOS/AirportItlwm',
    plistPath: 'Contents/Info.plist',
    minKernel: '17.0.0',
    maxKernel: '17.99.99',
    note: ["macOS High Sierra 10.13.x"],
  );

  static KernelKext get IntelBTPatcher => KernelKext(
    bundlePath: 'IntelBTPatcher.kext',
    executablePath: 'Contents/MacOS/IntelBTPatcher',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '',
  );

  static KernelKext get IntelBluetoothInjector => KernelKext(
    bundlePath: 'IntelBluetoothInjector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '20.99.99',
  );

  static KernelKext get IntelBluetoothFirmware => KernelKext(
    bundlePath: 'IntelBluetoothFirmware.kext',
    executablePath: 'Contents/MacOS/IntelBluetoothFirmware',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get BlueToolFixup => KernelKext(
    bundlePath: 'BlueToolFixup.kext',
    executablePath: 'Contents/MacOS/BlueToolFixup',
    plistPath: 'Contents/Info.plist',
    minKernel: '21.0.0',
    maxKernel: '',
    function: l10nGlobal.autoGen5503,
  );

  static KernelKext get BrcmBluetoothInjector => KernelKext(
    bundlePath: 'BrcmBluetoothInjector.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '15.0.0',
    maxKernel: '20.99.99',
  );

  static KernelKext get BrcmBluetoothInjectorLegacy => KernelKext(
    bundlePath: 'BrcmBluetoothInjectorLegacy.kext',
    executablePath: '',
    plistPath: 'Contents/Info.plist',
    minKernel: '15.0.0',
    maxKernel: '20.99.99',
  );

  static KernelKext get BrcmFirmwareData => KernelKext(
    bundlePath: 'BrcmFirmwareData.kext',
    executablePath: 'Contents/MacOS/BrcmFirmwareData',
    plistPath: 'Contents/Info.plist',
    minKernel: '12.0.0',
    maxKernel: '',
  );

  static KernelKext get BrcmPatchRAM => KernelKext(
    bundlePath: 'BrcmPatchRAM.kext',
    executablePath: 'Contents/MacOS/BrcmPatchRAM',
    plistPath: 'Contents/Info.plist',
    minKernel: '12.0.0',
    maxKernel: '14.99.99',
  );

  static KernelKext get BrcmPatchRAM2 => KernelKext(
    bundlePath: 'BrcmPatchRAM2.kext',
    executablePath: 'Contents/MacOS/BrcmPatchRAM2',
    plistPath: 'Contents/Info.plist',
    minKernel: '15.0.0',
    maxKernel: '18.99.99',
  );

  static KernelKext get BrcmPatchRAM3 => KernelKext(
    bundlePath: 'BrcmPatchRAM3.kext',
    executablePath: 'Contents/MacOS/BrcmPatchRAM3',
    plistPath: 'Contents/Info.plist',
    minKernel: '19.0.0',
    maxKernel: '',
  );

  static KernelKext get Ath3kBT => KernelKext(
    bundlePath: 'Ath3kBT.kext',
    executablePath: 'Contents/MacOS/Ath3kBT',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext get Ath3kBTInjector => KernelKext(
    bundlePath: 'Ath3kBTInjector.kext',
    executablePath: 'Contents/MacOS/Ath3kBTInjector',
    plistPath: 'Contents/Info.plist',
    minKernel: '16.0.0',
    maxKernel: '',
  );

  static KernelKext get HS80211Family => KernelKext(
    bundlePath: 'HS80211Family.kext',
    executablePath: 'Contents/MacOS/HS80211Family',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: [l10nGlobal.autoGen5504],
  );

  static KernelKext get AirPortAtheros40_9285 => KernelKext(
    bundlePath: 'AirPortAtheros40_9285.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: [l10nGlobal.autoGen5505],
  );

  static KernelKext get AirPortAtheros40_9380 => KernelKext(
    bundlePath: 'AirPortAtheros40_9380.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: [l10nGlobal.autoGen5506],
  );

  static KernelKext get AirPortAtheros40_9485 => KernelKext(
    bundlePath: 'AirPortAtheros40_9485.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: [l10nGlobal.autoGen5507],
  );

  static KernelKext get AirPortAtheros40_9565 => KernelKext(
    bundlePath: 'AirPortAtheros40_9565.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: [l10nGlobal.autoGen5508],
  );

  static KernelKext get AirPortAtheros40_9463 => KernelKext(
    bundlePath: 'AirPortAtheros40_9463.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: [l10nGlobal.autoGen5509],
  );

  static KernelKext get AirPortAtheros40_9462 => KernelKext(
    bundlePath: 'AirPortAtheros40_9462.kext',
    executablePath: 'Contents/MacOS/AirPortAtheros40',
    plistPath: 'Contents/Info.plist',
    minKernel: '18.0.0',
    maxKernel: '20.99.99',
    note: [l10nGlobal.autoGen5510],
  );

  static KernelKext get NoTouchID => KernelKext(
    bundlePath: 'NoTouchID.kext',
    executablePath: 'Contents/MacOS/NoTouchID',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
    note: [
      l10nGlobal.autoGen5511,
      l10nGlobal.autoGen5512,
    ],
  );

  static KernelKext get RtWlanU1827 => KernelKext(
    bundlePath: 'RtWlanU1827.kext',
    executablePath: 'Contents/MacOS/RtWlanU1827',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static KernelKext get RtWlanU => KernelKext(
    bundlePath: 'RtWlanU.kext',
    executablePath: 'Contents/MacOS/RtWlanU',
    plistPath: 'Contents/Info.plist',
    minKernel: '',
    maxKernel: '',
  );

  static List<KernelKext> get lanKernelKexts => [
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

  static List<KernelKext> get sortKernelKexts => [
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

  static List<KernelEmulate> get kernelEmulateList_Desktop => [
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

  static List<KernelKext> get kernelKextsList_desktop_0th => [
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

  static List<KernelKext> get kernelKextsList_desktop_1th => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> get kernelKextsList_desktop_2th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_3th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_4th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_5th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_6th => kernelKextsList_desktop_1th;

  static List<KernelKext> get kernelKextsList_desktop_7th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_8th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_9th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_10th => kernelKextsList_desktop_1th;

  static List<KernelKext> get kernelKextsList_desktop_11th => kernelKextsList_desktop_1th;
  static List<KernelKext> get kernelKextsList_desktop_12th => kernelKextsList_desktop_11th;
  static List<KernelKext> get kernelKextsList_desktop_13th => kernelKextsList_desktop_11th;
  static List<KernelKext> get kernelKextsList_desktop_14th => kernelKextsList_desktop_11th;
  static List<KernelKext> get kernelKextsList_desktop_15th => kernelKextsList_desktop_11th;

  static KernelQuirks get kernelQuirks_desktop_0th => KernelQuirks(
    appleCpuPmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_desktop_1th => kernelQuirks_desktop_0th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_2th => kernelQuirks_desktop_1th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_3th => kernelQuirks_desktop_2th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_4th => kernelQuirks_desktop_3th.copyWith(
    appleCpuPmCfgLock: false,
    appleXcpmCfgLock: true,
  );

  static KernelQuirks get kernelQuirks_desktop_5th => kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_6th => kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_7th => kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_8th => kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_9th => kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_10th => kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_11th => kernelQuirks_desktop_4th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_12th => kernelQuirks_desktop_11th.copyWith(provideCurrentCpuInfo: true);

  static KernelQuirks get kernelQuirks_desktop_13th => kernelQuirks_desktop_12th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_14th => kernelQuirks_desktop_12th.copyWith();

  static KernelQuirks get kernelQuirks_desktop_15th => kernelQuirks_desktop_12th.copyWith();

  static List<KernelKext> get kernelKextsList_laptop_0th => [
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

  static List<KernelKext> get kernelKextsList_laptop_1th => [
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

  static List<KernelKext> get kernelKextsList_laptop_2th => kernelKextsList_laptop_1th;
  static List<KernelKext> get kernelKextsList_laptop_3th => [
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

  static List<KernelKext> get kernelKextsList_laptop_4th => kernelKextsList_laptop_3th;

  static List<KernelKext> get kernelKextsList_laptop_5th => kernelKextsList_laptop_3th;

  static List<KernelKext> get kernelKextsList_laptop_6th => [
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
  static List<KernelKext> get kernelKextsList_laptop_7th => kernelKextsList_laptop_6th;
  static List<KernelKext> get kernelKextsList_laptop_8th => kernelKextsList_laptop_6th;
  static List<KernelKext> get kernelKextsList_laptop_9th => kernelKextsList_laptop_6th;
  static List<KernelKext> get kernelKextsList_laptop_10th_cometLake => kernelKextsList_laptop_6th;

  static List<KernelKext> get kernelKextsList_laptop_10th_IceLake => kernelKextsList_laptop_6th;

  static KernelQuirks get kernelQuirks_laptop_0th => KernelQuirks(
    appleCpuPmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_laptop_1th => kernelQuirks_laptop_0th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_2th => kernelQuirks_laptop_0th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_3th => kernelQuirks_laptop_0th.copyWith();

  static KernelQuirks kernelQuirks_laptop_4th = kernelQuirks_laptop_0th
      .copyWith(appleCpuPmCfgLock: false, appleXcpmCfgLock: true);

  static KernelQuirks get kernelQuirks_laptop_5th => kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_6th => kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_7th => kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_8th => kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_9th => kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_10th_cometLake => kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_10th_IceLake => kernelQuirks_laptop_4th.copyWith();

  static KernelQuirks get kernelQuirks_laptop_11th_TigerLake => kernelQuirks_laptop_4th.copyWith(
          appleCpuPmCfgLock: true, appleXcpmExtraMsrs: true);

  static KernelQuirks get kernelQuirks_laptop_12th_AlderLake => kernelQuirks_laptop_11th_TigerLake.copyWith(provideCurrentCpuInfo: true);

  static List<KernelKext> get kernelKextsList_nuc_0th => [
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

  static List<KernelKext> get kernelKextsList_nuc_1th => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> get kernelKextsList_nuc_2th => kernelKextsList_nuc_1th;
  static List<KernelKext> get kernelKextsList_nuc_3th => kernelKextsList_nuc_2th;

  static List<KernelKext> get kernelKextsList_nuc_4th => kernelKextsList_nuc_2th;

  static List<KernelKext> get kernelKextsList_nuc_5th => kernelKextsList_nuc_2th;

  static List<KernelKext> get kernelKextsList_nuc_6th => kernelKextsList_nuc_2th;
  static List<KernelKext> get kernelKextsList_nuc_7th => kernelKextsList_nuc_2th;
  static List<KernelKext> get kernelKextsList_nuc_8th => kernelKextsList_nuc_2th;
  static List<KernelKext> get kernelKextsList_nuc_9th => kernelKextsList_nuc_2th;
  static List<KernelKext> get kernelKextsList_nuc_10th_cometLake => kernelKextsList_nuc_2th;

  static List<KernelKext> get kernelKextsList_nuc_10th_IceLake => kernelKextsList_nuc_2th;

  static KernelQuirks get kernelQuirks_nuc_0th => KernelQuirks(
    appleCpuPmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_nuc_1th => kernelQuirks_nuc_0th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_2th => kernelQuirks_nuc_0th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_3th => kernelQuirks_nuc_0th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_4th => kernelQuirks_nuc_0th.copyWith(
    appleCpuPmCfgLock: false,
    appleXcpmCfgLock: true,
  );

  static KernelQuirks get kernelQuirks_nuc_5th => kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_6th => kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_7th => kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_8th => kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_9th => kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_10th_cometLake => kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks get kernelQuirks_nuc_10th_IceLake => kernelQuirks_nuc_4th.copyWith();

  static KernelQuirks kernelQuirks_nuc_11th_TigerLake = kernelQuirks_nuc_4th
      .copyWith(appleCpuPmCfgLock: true, appleXcpmExtraMsrs: true);

  static KernelQuirks get kernelQuirks_nuc_12th_AlderLake => kernelQuirks_nuc_11th_TigerLake.copyWith(provideCurrentCpuInfo: true);

  static List<KernelKext> get kernelKextsList_hedt_1th => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    SMCProcessor,
    SMCSuperIO,
    USBInjectAll
  ];

  static List<KernelKext> get kernelKextsList_hedt_2th => kernelKextsList_hedt_1th;
  static List<KernelKext> get kernelKextsList_hedt_3th => kernelKextsList_hedt_1th;

  static List<KernelKext> get kernelKextsList_hedt_4th => kernelKextsList_hedt_1th;

  static List<KernelKext> get kernelKextsList_hedt_5th => kernelKextsList_hedt_1th;

  static List<KernelKext> get kernelKextsList_hedt_6th => kernelKextsList_hedt_1th;
  static List<KernelKext> get kernelKextsList_hedt_10th => kernelKextsList_hedt_1th;

  static KernelQuirks get kernelQuirks_hedt_1th => KernelQuirks(
    appleCpuPmCfgLock: true,
    appleXcpmExtraMsrs: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_hedt_2th => kernelQuirks_hedt_1th.copyWith();

  static KernelQuirks get kernelQuirks_hedt_3th => kernelQuirks_hedt_1th.copyWith();

  static KernelQuirks get kernelQuirks_hedt_4th => KernelQuirks(
    appleXcpmCfgLock: true,
    appleXcpmExtraMsrs: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_hedt_5th => kernelQuirks_hedt_4th.copyWith();

  static KernelQuirks get kernelQuirks_hedt_6th => KernelQuirks(
    appleXcpmCfgLock: true,
    disableIoMapper: true,
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_hedt_10th => kernelQuirks_hedt_6th.copyWith();

  static List<KernelKext> get kernelKextsList_amd_desktop_legacy => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static List<KernelKext> get kernelKextsList_amd_desktop_ryzen => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static KernelEmulate kernelEmulate_amd =
      KernelEmulate(dummyPowerManagement: true);

  static KernelQuirks get kernelQuirks_amd_desktop_legacy => KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_amd_desktop_ryzen => KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelKext> get kernelKextsList_amd_laptop_legacy => [
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

  static List<KernelKext> get kernelKextsList_amd_laptop_ryzen => [
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
  static KernelQuirks get kernelQuirks_amd_laptop_legacy => KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_amd_laptop_ryzen => KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelKext> get kernelKextsList_amd_nuc_legacy => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static List<KernelKext> get kernelKextsList_amd_nuc_ryzen => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  ///
  static KernelQuirks get kernelQuirks_amd_nuc_legacy => KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static KernelQuirks get kernelQuirks_amd_nuc_ryzen => KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelKext> get kernelKextsList_amd_hedt_ryzen => [
    Lilu,
    VirtualSMC,
    WhateverGreen,
    AppleALC,
    USBInjectAll
  ];

  static KernelQuirks get kernelQuirks_amd_hedt_ryzen => KernelQuirks(
    disableLinkeditJettison: true,
    panicNoKextDump: true,
    powerTimeoutKernelPanic: true,
    provideCurrentCpuInfo: true,
    xhciPortLimit: true,
  );

  static List<KernelTrim> get kernelTrims => [
    KernelTrim(
        value: -1,
        comment: l10nGlobal.autoGen5513,
        note: [
          l10nGlobal.autoGen5514,
          l10nGlobal.autoGen5515,
          l10nGlobal.autoGen5516,
          l10nGlobal.autoGen5517
        ]),
    KernelTrim(
        value: 0,
        comment: l10nGlobal.autoGen5518,
        note: [
          l10nGlobal.autoGen5519,
          l10nGlobal.autoGen5520,
          l10nGlobal.autoGen5521,
          l10nGlobal.autoGen5522,
          l10nGlobal.autoGen5523,
          l10nGlobal.autoGen5524,
          l10nGlobal.autoGen5525,
          l10nGlobal.autoGen5526,
          l10nGlobal.autoGen5527,
        ])
  ];
}
