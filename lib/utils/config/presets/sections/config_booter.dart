import '../../models/booter/booter_quirk_type.dart';
import '../../models/booter/booter_quirks.dart';

class ConfigBooter {
  /// 775 - 0th Gen
  static BooterQuirks booterQuirks_intel_desktop_0th = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true);

  /// 1156 - 1st Gen
  static BooterQuirks booterQuirks_intel_desktop_1th =
      booterQuirks_intel_desktop_0th.copyWith();

  /// 1155 - 2nd Gen
  static BooterQuirks booterQuirks_intel_desktop_2th =
      booterQuirks_intel_desktop_1th.copyWith(
    enableWriteUnprotector: true,
  );

  /// 1155 - 3rd Gen
  static BooterQuirks booterQuirks_intel_desktop_3th =
      booterQuirks_intel_desktop_2th.copyWith();

  /// 1150 - 4th Gen
  static BooterQuirks booterQuirks_intel_desktop_4th =
      booterQuirks_intel_desktop_3th.copyWith();

  /// 1150 - 5th Gen
  static BooterQuirks booterQuirks_intel_desktop_5th =
      booterQuirks_intel_desktop_4th.copyWith();

  /// 1151 - 6th Gen
  static BooterQuirks booterQuirks_intel_desktop_6th =
      booterQuirks_intel_desktop_4th.copyWith();

  /// 1151 - 7th Gen
  static BooterQuirks booterQuirks_intel_desktop_7th =
      booterQuirks_intel_desktop_4th.copyWith();

  /// 1151 - 8th Gen
  static BooterQuirks booterQuirks_intel_desktop_8th =
      booterQuirks_intel_desktop_7th.copyWith();

  /// 1151 - 9th Gen
  static BooterQuirks booterQuirks_intel_desktop_9th = BooterQuirks(
    avoidRuntimeDefrag: true,
    devirtualiseMmio: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
    rebuildAppleMemoryMap: true,
    syncRuntimePermissions: true,
  );

  /// 1200 - 10th Gen
  static BooterQuirks booterQuirks_intel_desktop_10th = BooterQuirks(
    avoidRuntimeDefrag: true,
    devirtualiseMmio: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
    rebuildAppleMemoryMap: true,
    syncRuntimePermissions: true,
  );

  /// 1200 - 11th Gen
  static BooterQuirks booterQuirks_intel_desktop_11th = BooterQuirks(
    avoidRuntimeDefrag: true,
    devirtualiseMmio: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    protectUefiServices: true,
    setupVirtualMap: true,
    rebuildAppleMemoryMap: true,
    syncRuntimePermissions: true,
  );

  /// 1700 - 12th Gen
  static BooterQuirks booterQuirks_intel_desktop_12th =
      booterQuirks_intel_desktop_11th;

  /// 1700 - 13th Gen
  static BooterQuirks booterQuirks_intel_desktop_13th =
      booterQuirks_intel_desktop_11th;

  /// 1700 - 14th Gen
  static BooterQuirks booterQuirks_intel_desktop_14th =
      booterQuirks_intel_desktop_11th;

  /// 0th Gen
  static BooterQuirks booterQuirks_laptop_0th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
    rebuildAppleMemoryMap: true,
  );

  static BooterQuirks booterQuirks_laptop_1th =
      booterQuirks_laptop_0th.copyWith();
  static BooterQuirks booterQuirks_laptop_2th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    enableWriteUnprotector: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
  );
  static BooterQuirks booterQuirks_laptop_3th =
      booterQuirks_laptop_2th.copyWith();
  static BooterQuirks booterQuirks_laptop_4th =
      booterQuirks_laptop_2th.copyWith();
  static BooterQuirks booterQuirks_laptop_5th =
      booterQuirks_laptop_2th.copyWith();
  static BooterQuirks booterQuirks_laptop_6th =
      booterQuirks_laptop_2th.copyWith();
  static BooterQuirks booterQuirks_laptop_7th =
      booterQuirks_laptop_2th.copyWith();
  static BooterQuirks booterQuirks_laptop_8th =
      booterQuirks_laptop_7th.copyWith();
  static BooterQuirks booterQuirks_laptop_9th = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);
  static BooterQuirks booterQuirks_laptop_10th_cometLake = BooterQuirks(
      avoidRuntimeDefrag: true,
      devirtualiseMmio: true,
      enableSafeModeSlide: true,
      protectUefiServices: true,
      provideCustomSlide: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);
  static BooterQuirks booterQuirks_laptop_10th_IceLake = BooterQuirks(
      avoidRuntimeDefrag: true,
      devirtualiseMmio: true,
      enableSafeModeSlide: true,
      protectUefiServices: true,
      provideCustomSlide: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);

  static BooterQuirks booterQuirks_laptop_11th_TigerLake = BooterQuirks(
      avoidRuntimeDefrag: true,
      devirtualiseMmio: true,
      enableSafeModeSlide: true,
      protectUefiServices: true,
      protectMemoryRegions: true,
      provideCustomSlide: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);

  /// 0th Gen
  static BooterQuirks booterQuirks_nuc_0th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
  );

  /// 1st Gen
  static BooterQuirks booterQuirks_nuc_1th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
  );

  /// 2nd Gen
  static BooterQuirks booterQuirks_nuc_2th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    enableWriteUnprotector: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
  );
  static BooterQuirks booterQuirks_nuc_3th = booterQuirks_nuc_2th.copyWith();
  static BooterQuirks booterQuirks_nuc_4th = booterQuirks_nuc_2th.copyWith();
  static BooterQuirks booterQuirks_nuc_5th = booterQuirks_nuc_2th.copyWith();
  static BooterQuirks booterQuirks_nuc_6th = booterQuirks_nuc_2th.copyWith();
  static BooterQuirks booterQuirks_nuc_7th = booterQuirks_nuc_2th.copyWith();
  static BooterQuirks booterQuirks_nuc_8th = booterQuirks_nuc_7th.copyWith();
  static BooterQuirks booterQuirks_nuc_9th = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);
  static BooterQuirks booterQuirks_nuc_10th_cometLake = BooterQuirks(
      avoidRuntimeDefrag: true,
      devirtualiseMmio: true,
      enableSafeModeSlide: true,
      protectUefiServices: true,
      provideCustomSlide: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);
  static BooterQuirks booterQuirks_nuc_10th_IceLake = BooterQuirks(
      avoidRuntimeDefrag: true,
      devirtualiseMmio: true,
      enableSafeModeSlide: true,
      protectUefiServices: true,
      provideCustomSlide: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);

  static BooterQuirks booterQuirks_nuc_11th_TigerLake = BooterQuirks(
      avoidRuntimeDefrag: true,
      devirtualiseMmio: true,
      enableSafeModeSlide: true,
      protectUefiServices: true,
      protectMemoryRegions: true,
      provideCustomSlide: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);

  static BooterQuirks booterQuirks_hedt_1th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    enableWriteUnprotector: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
  );

  static BooterQuirks booterQuirks_hedt_2th = booterQuirks_hedt_1th.copyWith();
  static BooterQuirks booterQuirks_hedt_3th = booterQuirks_hedt_1th.copyWith();
  static BooterQuirks booterQuirks_hedt_4th = booterQuirks_hedt_3th.copyWith();
  static BooterQuirks booterQuirks_hedt_5th = booterQuirks_hedt_3th.copyWith();
  static BooterQuirks booterQuirks_hedt_6th = BooterQuirks(
      avoidRuntimeDefrag: true,
      devirtualiseMmio: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);
  static BooterQuirks booterQuirks_hedt_10th = booterQuirks_hedt_6th.copyWith();

  static BooterQuirks booterQuirks_amd_desktop_legacy = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      enableWriteUnprotector: true,
      provideCustomSlide: true,
      setupVirtualMap: true);

  static BooterQuirks booterQuirks_amd_desktop_ryzen = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);

  static BooterQuirks booterQuirks_amd_laptop_legacy = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      enableWriteUnprotector: true,
      provideCustomSlide: true,
      setupVirtualMap: true);

  static BooterQuirks booterQuirks_amd_laptop_ryzen = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);

  static BooterQuirks booterQuirks_amd_nuc_legacy = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      enableWriteUnprotector: true,
      setupVirtualMap: true);

  static BooterQuirks booterQuirks_amd_nuc_ryzen = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true,
      rebuildAppleMemoryMap: true,
      syncRuntimePermissions: true);

  static BooterQuirks booterQuirks_amd_hedt_ryzen = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true);

  static List<BooterQuirkType> booterQuirkTypes = [
    const BooterQuirkType(
        name: 'DevirtualiseMmio',
        comment:
            'DevirtualiseMmio(Helps resolve conflicts/incompatibilities when firmware handles MMIO regions, improving system compatibility and stability. Often combined with OpenCore Debug to customize MMIO for boards stuck at [EB|#LOG:EXITBS:START], e.g. some X58, X79, X99, and AMD 7000 series boards)'),
    const BooterQuirkType(
        name: 'EnableWriteUnprotector',
        comment:
            'EnableWriteUnprotector(Recommended on firmware without Memory Attribute Table (MAT) support, especially OEM firmware. Removes write protection from CR0 register during execution to allow proper NVRAM writing. Typically used for pre-8th Gen platforms)'),
    const BooterQuirkType(
        name: 'ProtectUefiServices',
        comment:
            'ProtectUefiServices(Protects UEFI services from being overwritten by firmware; typically fixes [EB|#LOG:EXITBS:START] issues caused by DevirtualiseMmio. Recommended for Z390, Z490, and 10th Gen Ice Lake)'),
    const BooterQuirkType(
        name: 'SetupVirtualMap',
        comment:
            'SetupVirtualMap(Builds continuous virtual memory for OpenCore mapped to physical memory. Note: Not recommended for 10th Gen Comet Lake ASUS, Gigabyte, and ASRock motherboards)'),
    const BooterQuirkType(
        name: 'RebuildAppleMemoryMap',
        comment:
            'RebuildAppleMemoryMap(Recommended on firmware with MAT support. Usually paired with SyncRuntimePermissions. Mutually exclusive with EnableWriteUnprotector. Typically for 8th Gen and newer platforms)'),
    const BooterQuirkType(
        name: 'SyncRuntimePermissions',
        comment:
            'SyncRuntimePermissions(Fixes runtime memory permissions on newer boards (post-2018). If you cannot boot Windows without this option, enable it. Usually paired with RebuildAppleMemoryMap)')
  ];
}
