import 'package:rapidefi/l10n/l10n_helper.dart';
import 'package:rapidefi/utils/config/models/platform_info/pi_generic.dart';
import 'package:rapidefi/utils/config/support/macos_version.dart';

class SMBIOSCompatibility {
  const SMBIOSCompatibility._();

  static final Map<String, ({int min, int max})> _supportRanges = {
    'iMac10,1': (min: 10, max: 17),
    'iMac11,1': (min: 10, max: 17),
    'iMac11,2': (min: 10, max: 17),
    'iMac12,2': (min: 10, max: 17),
    'iMac13,1': (min: 12, max: 19),
    'iMac13,2': (min: 12, max: 19),
    'iMac14,2': (min: 13, max: 20),
    'iMac14,4': (min: 13, max: 20),
    'iMac15,1': (min: 13, max: 20),
    'iMac16,1': (min: 15, max: 21),
    'iMac16,2': (min: 15, max: 21),
    'iMac17,1': (min: 15, max: 21),
    'iMac18,1': (min: 16, max: 22),
    'iMac18,3': (min: 16, max: 22),
    'iMac19,2': (min: 18, max: 24),
    'iMac19,1': (min: 18, max: 24),
    'iMac20,1': (min: 19, max: 25),
    'iMac20,2': (min: 19, max: 25),
    'MacBookPro5,1': (min: 9, max: 15),
    'MacBookPro5,2': (min: 9, max: 15),
    'MacBookPro5,3': (min: 9, max: 15),
    'MacBookPro5,4': (min: 9, max: 15),
    'MacBookPro6,1': (min: 10, max: 17),
    'MacBookPro6,2': (min: 10, max: 17),
    'MacBookAir4,1': (min: 11, max: 17),
    'MacBookAir4,2': (min: 11, max: 17),
    'MacBookPro8,1': (min: 11, max: 17),
    'MacBookPro8,2': (min: 11, max: 17),
    'MacBookPro8,3': (min: 11, max: 17),
    'Macmini5,1': (min: 11, max: 17),
    'Macmini5,2': (min: 11, max: 17),
    'Macmini5,3': (min: 11, max: 17),
    'MacBookAir5,1': (min: 12, max: 19),
    'MacBookAir5,2': (min: 12, max: 19),
    'MacBookPro9,2': (min: 12, max: 19),
    'MacBookPro10,1': (min: 12, max: 19),
    'MacBookPro10,2': (min: 12, max: 19),
    'Macmini6,1': (min: 12, max: 19),
    'Macmini6,2': (min: 12, max: 19),
    'MacBookAir6,1': (min: 13, max: 20),
    'MacBookAir6,2': (min: 13, max: 20),
    'MacBookPro11,1': (min: 13, max: 20),
    'MacBookPro11,2': (min: 13, max: 20),
    'MacBookPro11,3': (min: 13, max: 20),
    'MacBookPro11,4': (min: 17, max: 21),
    'MacBookPro11,5': (min: 17, max: 21),
    'Macmini3,1': (min: 9, max: 15),
    'Macmini4,1': (min: 9, max: 15),
    'Macmini7,1': (min: 18, max: 21),
    'MacBook8,1': (min: 15, max: 20),
    'MacBookAir7,1': (min: 15, max: 21),
    'MacBookAir7,2': (min: 15, max: 21),
    'MacBookPro12,1': (min: 16, max: 21),
    'MacBook9,1': (min: 16, max: 21),
    'MacBookPro13,1': (min: 16, max: 21),
    'MacBookPro13,2': (min: 16, max: 21),
    'MacBookPro13,3': (min: 16, max: 21),
    'MacBookPro14,1': (min: 17, max: 22),
    'MacBookPro14,2': (min: 17, max: 22),
    'MacBookPro14,3': (min: 17, max: 22),
    'MacBookPro15,1': (min: 18, max: 24),
    'MacBookPro15,2': (min: 18, max: 24),
    'MacBookPro15,3': (min: 18, max: 24),
    'MacBookPro15,4': (min: 18, max: 24),
    'Macmini8,1': (min: 18, max: 24),
    'MacBookPro16,1': (min: 19, max: 25),
    'MacBookPro16,3': (min: 19, max: 24),
    'MacBookPro16,4': (min: 19, max: 25),
    'MacBookAir9,1': (min: 19, max: 24),
    'MacBookPro16,2': (min: 19, max: 25),
    'MacPro6,1': (min: 13, max: 21),
    'iMacPro1,1': (min: 17, max: 24),
    'MacPro7,1': (min: 19, max: 25),
  };

  static final Map<String, String Function()> _supportDescriptions = {
    'iMac10,1': () => l10nGlobal.autoGen5177,
    'iMac11,1': () => l10nGlobal.autoGen5177,
    'iMac11,2': () => l10nGlobal.autoGen5177,
    'iMac12,2': () => l10nGlobal.autoGen5178,
    'iMac13,1': () => l10nGlobal.autoGen5179,
    'iMac13,2': () => l10nGlobal.autoGen5180,
    'iMac14,2': () => l10nGlobal.autoGen5181,
    'iMac14,4': () => l10nGlobal.autoGen5182,
    'iMac15,1': () => l10nGlobal.autoGen5183,
    'iMac16,1': () => l10nGlobal.autoGen5184,
    'iMac16,2': () => l10nGlobal.autoGen5185,
    'iMac17,1': () => l10nGlobal.autoGen5185,
    'iMac18,1': () => l10nGlobal.autoGen5186,
    'iMac18,3': () => l10nGlobal.autoGen5187,
    'iMac19,2': () => l10nGlobal.autoGen5188,
    'iMac19,1': () => l10nGlobal.autoGen5188,
    'iMac20,1': () => l10nGlobal.autoGen5189,
    'iMac20,2': () => l10nGlobal.autoGen5190,
    'MacBookPro5,1': () => l10nGlobal.autoGen5191,
    'MacBookPro5,2': () => l10nGlobal.autoGen5191,
    'MacBookPro5,3': () => l10nGlobal.autoGen5191,
    'MacBookPro5,4': () => l10nGlobal.autoGen5191,
    'MacBookPro6,1': () => l10nGlobal.autoGen5192,
    'MacBookPro6,2': () => l10nGlobal.autoGen5192,
    'MacBookAir4,1': () => l10nGlobal.autoGen5193,
    'MacBookAir4,2': () => l10nGlobal.autoGen5193,
    'MacBookPro8,1': () => l10nGlobal.autoGen5193,
    'MacBookPro8,2': () => l10nGlobal.autoGen5193,
    'MacBookPro8,3': () => l10nGlobal.autoGen5193,
    'Macmini5,1': () => l10nGlobal.autoGen5193,
    'Macmini5,2': () => l10nGlobal.autoGen5193,
    'Macmini5,3': () => l10nGlobal.autoGen5193,
    'MacBookAir5,1': () => l10nGlobal.autoGen5194,
    'MacBookAir5,2': () => l10nGlobal.autoGen5194,
    'MacBookPro9,2': () => l10nGlobal.autoGen5194,
    'MacBookPro10,1': () => l10nGlobal.autoGen5194,
    'MacBookPro10,2': () => l10nGlobal.autoGen5194,
    'Macmini6,1': () => l10nGlobal.autoGen5194,
    'Macmini6,2': () => l10nGlobal.autoGen5194,
    'MacBookAir6,1': () => l10nGlobal.autoGen5195,
    'MacBookAir6,2': () => l10nGlobal.autoGen5195,
    'MacBookPro11,1': () => l10nGlobal.autoGen5195,
    'MacBookPro11,2': () => l10nGlobal.autoGen5195,
    'MacBookPro11,3': () => l10nGlobal.autoGen5195,
    'MacBookPro11,4': () => l10nGlobal.autoGen5196,
    'MacBookPro11,5': () => l10nGlobal.autoGen5196,
    'Macmini3,1': () => l10nGlobal.autoGen5191,
    'Macmini4,1': () => l10nGlobal.autoGen5191,
    'Macmini7,1': () => l10nGlobal.autoGen5197,
    'MacBook8,1': () => l10nGlobal.autoGen5198,
    'MacBookAir7,1': () => l10nGlobal.autoGen5199,
    'MacBookAir7,2': () => l10nGlobal.autoGen5199,
    'MacBookPro12,1': () => l10nGlobal.autoGen5200,
    'MacBook9,1': () => l10nGlobal.autoGen5201,
    'MacBookPro13,1': () => l10nGlobal.autoGen5202,
    'MacBookPro13,2': () => l10nGlobal.autoGen5203,
    'MacBookPro13,3': () => l10nGlobal.autoGen5204,
    'MacBookPro14,1': () => l10nGlobal.autoGen5205,
    'MacBookPro14,2': () => l10nGlobal.autoGen5205,
    'MacBookPro14,3': () => l10nGlobal.autoGen5205,
    'MacBookPro15,1': () => l10nGlobal.autoGen5206,
    'MacBookPro15,2': () => l10nGlobal.autoGen5206,
    'MacBookPro15,3': () => l10nGlobal.autoGen5206,
    'MacBookPro15,4': () => l10nGlobal.autoGen5206,
    'Macmini8,1': () => l10nGlobal.autoGen5206,
    'MacBookPro16,1': () => l10nGlobal.autoGen5207,
    'MacBookPro16,3': () => l10nGlobal.autoGen5208,
    'MacBookPro16,4': () => l10nGlobal.autoGen5207,
    'MacBookAir9,1': () => l10nGlobal.autoGen5208,
    'MacBookPro16,2': () => l10nGlobal.autoGen5207,
    'MacPro6,1': () => l10nGlobal.autoGen5209,
    'iMacPro1,1': () => l10nGlobal.autoGen5210,
    'MacPro7,1': () => l10nGlobal.autoGen5211,
  };

  static ({int min, int max})? supportRange(PlatformInfoGeneric smbios) {
    return _supportRanges[smbios.systemProductName];
  }

  static List<PlatformInfoGeneric> supportedByDarwinMajor(
    List<PlatformInfoGeneric> candidates,
    int darwinMajor,
  ) {
    final supported = candidates
        .where((candidate) => supportsDarwinMajor(candidate, darwinMajor))
        .toList();
    return supported.isNotEmpty ? supported : candidates;
  }

  static PlatformInfoGeneric? recommendForDarwinMajor(
    List<PlatformInfoGeneric> candidates,
    int darwinMajor, {
    PlatformInfoGeneric? current,
  }) {
    final supported = supportedByDarwinMajor(candidates, darwinMajor);
    if (supported.isEmpty) return null;

    if (current != null &&
        supported.any(
          (candidate) =>
              candidate.systemProductName == current.systemProductName,
        )) {
      return supported.firstWhere(
        (candidate) => candidate.systemProductName == current.systemProductName,
      );
    }

    return supported.first;
  }

  static int recommendDarwinMajorForSMBIOS(
    PlatformInfoGeneric smbios,
    int currentDarwinMajor,
  ) {
    if (supportsDarwinMajor(smbios, currentDarwinMajor)) {
      return currentDarwinMajor;
    }

    final range = supportRange(smbios);
    if (range != null && currentDarwinMajor > range.max) return range.max;
    if (range != null && currentDarwinMajor < range.min) return range.min;
    return currentDarwinMajor;
  }

  static bool supportsDarwinMajor(
    PlatformInfoGeneric smbios,
    int darwinMajor,
  ) {
    final range = supportRange(smbios);
    if (range == null) return true;
    if (darwinMajor < range.min) return false;
    if (darwinMajor > range.max) return false;
    return true;
  }

  static String supportSummary(PlatformInfoGeneric smbios) {
    final description = _supportDescriptions[smbios.systemProductName];
    if (description != null) {
      return description();
    }

    final range = supportRange(smbios);
    if (range == null) {
      return l10nGlobal.autoGen5212;
    }

    return '支持${MacOSVersions.labelFromDarwinMajor(range.min)} ~ '
        '${MacOSVersions.labelFromDarwinMajor(range.max)}';
  }
}
