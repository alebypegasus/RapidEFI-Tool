import 'package:rapidefi/l10n/l10n_helper.dart';
import '../../models/booter/booter_quirk_type.dart';
import '../../models/booter/booter_quirks.dart';

class ConfigBooter {
  /// 775 - 0代
  static BooterQuirks booterQuirks_intel_desktop_0th = BooterQuirks(
      avoidRuntimeDefrag: true,
      enableSafeModeSlide: true,
      provideCustomSlide: true,
      setupVirtualMap: true);

  /// 1156 - 1代
  static BooterQuirks booterQuirks_intel_desktop_1th =
      booterQuirks_intel_desktop_0th.copyWith();

  /// 1155 - 2代
  static BooterQuirks booterQuirks_intel_desktop_2th =
      booterQuirks_intel_desktop_1th.copyWith(
    enableWriteUnprotector: true,
  );

  /// 1155 - 3代
  static BooterQuirks booterQuirks_intel_desktop_3th =
      booterQuirks_intel_desktop_2th.copyWith();

  /// 1150 - 4代
  static BooterQuirks booterQuirks_intel_desktop_4th =
      booterQuirks_intel_desktop_3th.copyWith();

  /// 1150 - 5代
  static BooterQuirks booterQuirks_intel_desktop_5th =
      booterQuirks_intel_desktop_4th.copyWith();

  /// 1151 - 6代
  static BooterQuirks booterQuirks_intel_desktop_6th =
      booterQuirks_intel_desktop_4th.copyWith();

  /// 1151 - 7代
  static BooterQuirks booterQuirks_intel_desktop_7th =
      booterQuirks_intel_desktop_4th.copyWith();

  /// 1151 - 8代
  static BooterQuirks booterQuirks_intel_desktop_8th =
      booterQuirks_intel_desktop_7th.copyWith();

  /// 1151 - 9代
  static BooterQuirks booterQuirks_intel_desktop_9th = BooterQuirks(
    avoidRuntimeDefrag: true,
    devirtualiseMmio: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
    rebuildAppleMemoryMap: true,
    syncRuntimePermissions: true,
  );

  /// 1200 - 10代
  static BooterQuirks booterQuirks_intel_desktop_10th = BooterQuirks(
    avoidRuntimeDefrag: true,
    devirtualiseMmio: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
    rebuildAppleMemoryMap: true,
    syncRuntimePermissions: true,
  );

  /// 1200 - 11代
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

  /// 1700 - 12代
  static BooterQuirks booterQuirks_intel_desktop_12th =
      booterQuirks_intel_desktop_11th;

  /// 1700 - 13代
  static BooterQuirks booterQuirks_intel_desktop_13th =
      booterQuirks_intel_desktop_11th;

  /// 1700 - 14代
  static BooterQuirks booterQuirks_intel_desktop_14th =
      booterQuirks_intel_desktop_11th;

  ///0代
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

  ///0代
  static BooterQuirks booterQuirks_nuc_0th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
  );

  ///1代
  static BooterQuirks booterQuirks_nuc_1th = BooterQuirks(
    avoidRuntimeDefrag: true,
    enableSafeModeSlide: true,
    provideCustomSlide: true,
    setupVirtualMap: true,
  );

  ///2代
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
    BooterQuirkType(
        name: 'DevirtualiseMmio',
        comment:
            l10nGlobal.autoGen5328),
    BooterQuirkType(
        name: 'EnableWriteUnprotector',
        comment:
            l10nGlobal.autoGen5329),
    BooterQuirkType(
        name: 'ProtectUefiServices',
        comment:
            l10nGlobal.autoGen5330),
    BooterQuirkType(
        name: 'SetupVirtualMap',
        comment:
            l10nGlobal.autoGen5331),
    BooterQuirkType(
        name: 'RebuildAppleMemoryMap',
        comment:
            l10nGlobal.autoGen5332),
    BooterQuirkType(
        name: 'SyncRuntimePermissions',
        comment:
            l10nGlobal.autoGen5333)
  ];
}
