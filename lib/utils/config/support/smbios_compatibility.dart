import 'package:rapidefi/utils/config/models/platform_info/pi_generic.dart';
import 'package:rapidefi/utils/config/support/macos_version.dart';

class SMBIOSCompatibility {
  const SMBIOSCompatibility._();

  static const Map<String, ({int min, int max})> _supportRanges = {
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

  static const Map<String, String> _supportDescriptions = {
    'iMac10,1': 'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13',
    'iMac11,1': 'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13',
    'iMac11,2': 'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13',
    'iMac12,2': 'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, suitable for iGPU + dGPU systems',
    'iMac13,1':
        'Supports OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, suitable for Ivy Bridge architecture iGPU-only models',
    'iMac13,2':
        'Supports OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, suitable for Ivy Bridge architecture with iGPU compute/decode + dGPU display output',
    'iMac14,2':
        'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture with NVIDIA Maxwell and Pascal dGPUs',
    'iMac14,4': 'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture iGPU-only models',
    'iMac15,1': 'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture iGPU + dGPU models',
    'iMac16,1': 'Supports macOS El Capitan 10.11 ~ macOS Monterey 12, suitable for iGPU (or with dGPU) models',
    'iMac16,2':
        'Supports macOS El Capitan 10.11 ~ macOS Monterey 12, suitable for Broadwell architecture iGPU (or with dGPU) models',
    'iMac17,1':
        'Supports macOS El Capitan 10.11 ~ macOS Monterey 12, suitable for Skylake architecture iGPU (or with dGPU) models',
    'iMac18,1':
        'Supports macOS Sierra 10.12 ~ macOS Ventura 13, suitable for iGPU + dGPU models. Note: with this model, most iGPU-only users may experience display color issues. Not recommended for iGPU-only users.',
    'iMac18,3': 'Supports macOS Sierra 10.12 ~ macOS Ventura 13, suitable for iGPU compute/decode + dGPU display output',
    'iMac19,2': 'Supports macOS 10.14 ~ macOS Sequoia 15, suitable for iGPU (or with dGPU) models',
    'iMac19,1': 'Supports macOS 10.14 ~ macOS Sequoia 15, suitable for iGPU (or with dGPU) models',
    'iMac20,1': 'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for i7-10700K and lower processors with iGPU (or with dGPU)',
    'iMac20,2': 'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for i9-10850K and higher processors with iGPU (or with dGPU)',
    'MacBookPro5,1': 'Supports macOS 10.5 ~ macOS El Capitan 10.11',
    'MacBookPro5,2': 'Supports macOS 10.5 ~ macOS El Capitan 10.11',
    'MacBookPro5,3': 'Supports macOS 10.5 ~ macOS El Capitan 10.11',
    'MacBookPro5,4': 'Supports macOS 10.5 ~ macOS El Capitan 10.11',
    'MacBookPro6,1': 'Supports macOS 10.6 ~ macOS High Sierra 10.13',
    'MacBookPro6,2': 'Supports macOS 10.6 ~ macOS High Sierra 10.13',
    'MacBookAir4,1': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'MacBookAir4,2': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'MacBookPro8,1': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'MacBookPro8,2': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'MacBookPro8,3': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'Macmini5,1': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'Macmini5,2': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'Macmini5,3': 'Supports macOS 10.7 ~ macOS High Sierra 10.13',
    'MacBookAir5,1': 'Supports macOS 10.8 ~ macOS Catalina 10.15',
    'MacBookAir5,2': 'Supports macOS 10.8 ~ macOS Catalina 10.15',
    'MacBookPro9,2': 'Supports macOS 10.8 ~ macOS Catalina 10.15',
    'MacBookPro10,1': 'Supports macOS 10.8 ~ macOS Catalina 10.15',
    'MacBookPro10,2': 'Supports macOS 10.8 ~ macOS Catalina 10.15',
    'Macmini6,1': 'Supports macOS 10.8 ~ macOS Catalina 10.15',
    'Macmini6,2': 'Supports macOS 10.8 ~ macOS Catalina 10.15',
    'MacBookAir6,1': 'Supports macOS 10.9 ~ macOS Big Sur 11',
    'MacBookAir6,2': 'Supports macOS 10.9 ~ macOS Big Sur 11',
    'MacBookPro11,1': 'Supports macOS 10.9 ~ macOS Big Sur 11',
    'MacBookPro11,2': 'Supports macOS 10.9 ~ macOS Big Sur 11',
    'MacBookPro11,3': 'Supports macOS 10.9 ~ macOS Big Sur 11',
    'MacBookPro11,4': 'Supports macOS High Sierra 10.13 ~ macOS Monterey 12',
    'MacBookPro11,5': 'Supports macOS High Sierra 10.13 ~ macOS Monterey 12',
    'Macmini3,1': 'Supports macOS 10.5 ~ macOS El Capitan 10.11',
    'Macmini4,1': 'Supports macOS 10.5 ~ macOS El Capitan 10.11',
    'Macmini7,1': 'Supports macOS Mojave 10.14 ~ macOS Monterey 12',
    'MacBook8,1': 'Supports OS X El Capitan 10.11 ~ macOS Big Sur 11',
    'MacBookAir7,1': 'Supports OS X El Capitan 10.11 ~ macOS Monterey 12',
    'MacBookAir7,2': 'Supports OS X El Capitan 10.11 ~ macOS Monterey 12',
    'MacBookPro12,1': 'Supports macOS Sierra 10.12 ~ macOS Monterey 12',
    'MacBook9,1':
        'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (HD 515 iGPU officially supports up to Monterey 12, spoofing supports macOS Sequoia 15)',
    'MacBookPro13,1':
        'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (Iris 540 iGPU officially supports up to Monterey 12, spoofing supports macOS Sequoia 15)',
    'MacBookPro13,2':
        'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (Iris 550 iGPU officially supports up to Monterey 12, spoofing supports macOS Sequoia 15)',
    'MacBookPro13,3':
        'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (HD 530 iGPU officially supports up to Monterey 12, spoofing supports macOS Sequoia 15)',
    'MacBookPro14,1': 'Supports macOS High Sierra 10.13 ~ macOS Ventura 13',
    'MacBookPro14,2': 'Supports macOS High Sierra 10.13 ~ macOS Ventura 13',
    'MacBookPro14,3': 'Supports macOS High Sierra 10.13 ~ macOS Ventura 13',
    'MacBookPro15,1': 'Supports macOS Mojave 10.14 ~ macOS Sequoia 15',
    'MacBookPro15,2': 'Supports macOS Mojave 10.14 ~ macOS Sequoia 15',
    'MacBookPro15,3': 'Supports macOS Mojave 10.14 ~ macOS Sequoia 15',
    'MacBookPro15,4': 'Supports macOS Mojave 10.14 ~ macOS Sequoia 15',
    'Macmini8,1': 'Supports macOS Mojave 10.14 ~ macOS Sequoia 15',
    'MacBookPro16,1': 'Supports macOS Catalina 10.15 ~ macOS Tahoe 26',
    'MacBookPro16,3': 'Supports macOS Catalina 10.15 ~ macOS Sequoia 15',
    'MacBookPro16,4': 'Supports macOS Catalina 10.15 ~ macOS Tahoe 26',
    'MacBookAir9,1': 'Supports macOS Catalina 10.15 ~ macOS Sequoia 15',
    'MacBookPro16,2': 'Supports macOS Catalina 10.15 ~ macOS Tahoe 26',
    'MacPro6,1': 'Supports macOS 10.9 ~ macOS Monterey 12, suitable for dGPU-only models',
    'iMacPro1,1':
        'Supports macOS 10.13 ~ macOS Sequoia 15, suitable for dGPU-only models. For Intel 11th Gen and above, this model provides normal CPU power management and turbo boost without extra kext patches (if turbo boost is abnormal in macOS, dump and use native SSDT-PLUG).',
    'MacPro7,1':
        'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for AMD dGPU-only systems. Supported native AMD GPUs (e.g. RX560, RX570, RX5500, RX6600) provide full VDA hardware acceleration. For Intel 11th Gen and above using this model, CPU power management requires an extra kext patch. Enable this under [Optional Kexts] -> [CPU Related] -> [CPU Power Management Driver for MacPro7,1].',
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
      return description;
    }

    final range = supportRange(smbios);
    if (range == null) {
      return 'macOS compatibility range not configured';
    }

    return 'Supports ${MacOSVersions.labelFromDarwinMajor(range.min)} ~ '
        '${MacOSVersions.labelFromDarwinMajor(range.max)}';
  }
}
