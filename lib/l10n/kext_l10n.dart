import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/utils/config/models/kernel/kernel_kext.dart';

/// Returns the localized description for a [KernelKext].
/// Falls back to kext.function or bundlePath if no translation is found.
String localizedKextDescription(KernelKext kext, AppLocalizations l10n) {
  final localized = _kextDescMap(l10n)[kext.bundlePath];
  if (localized != null && localized.trim().isNotEmpty) return localized;
  final function = kext.function.trim();
  if (function.isNotEmpty) return function;
  final note = kext.note.where((s) => s.trim().isNotEmpty).join(' ');
  if (note.isNotEmpty) return note;
  return kext.bundlePath;
}

Map<String, String> _kextDescMap(AppLocalizations l10n) => {
      'Lilu.kext': l10n.kextLiluDesc,
      'VirtualSMC.kext': l10n.kextVirtualSMCDesc,
      'WhateverGreen.kext': l10n.kextWhateverGreenDesc,
      'AppleALC.kext': l10n.kextAppleALCDesc,
      'VoodooHDA.kext': l10n.kextVoodooHDADesc,
      'USBInjectAll.kext': l10n.kextUSBInjectAllDesc,
      'USBToolBox.kext': l10n.kextUSBToolBoxDesc,
      'VoodooBattery.kext': l10n.kextBatteryV1Desc,
      'ECEnabler.kext': l10n.kextBatteryV2Desc,
      'SMCLightSensor.kext': l10n.kextAmbientLightDesc,
      'AsusNBFnKeys.kext': l10n.kextAsusNBFnKeysDesc,
      'YogaSMC.kext': l10n.kextLenovoDesc,
      'SMCDellSensors.kext': l10n.kextDellDesc,
      'NootRX.kext': l10n.kextNootRXDesc,
      'ECEnabler.kext': l10n.kextBatteryV2Desc,
      'RealtekBattery.kext': l10n.kextBatteryFixDesc,
      'NVMeFix.kext': l10n.kextNVMeFixDesc,
      'FeatureUnlock.kext': l10n.kextFeatureUnlockDesc,
      'HibernationFixup.kext': l10n.kextHibernationFixDesc,
      'HoRNDIS.kext': l10n.kextHoRNDIS,
      'CPUFriend.kext': l10n.kextCPUFriendDesc,
      'CPUFriendDataProvider.kext': l10n.kextCPUFriendDataProviderDesc,
      'AppleIGHDA.kext': l10n.kextAppleIGHDA,
      'NoTouchID.kext': l10n.kextNoTouchID,
      'RTCMemoryFixup.kext': l10n.kextAppleRTCDesc,
      'ApplePS2SmartTouchPad.kext': l10n.kextPS2KBMouseDesc,
      'VoodooPS2Keyboard.kext': l10n.kextPS2KeyboardDesc,
      'VoodooPS2Mouse.kext': l10n.kextPS2MouseDesc,
      'SurfaceKeyboard.kext': l10n.kextMicrosoftSurfaceDesc,
      'BrightnessKeys.kext': l10n.kextBrightnessKeysDesc,
      'GenericUSBXHCI.kext': l10n.kextGenericUSBXHCIDesc,
      'XLNCUSBFix.kext': l10n.kextXLNCUSBFixDesc,
      'RealtekCardReader.kext': l10n.kextRealtekCardReaderDesc,
      'RadeonSensor.kext': l10n.kextRadeonSensorDesc,
    };
