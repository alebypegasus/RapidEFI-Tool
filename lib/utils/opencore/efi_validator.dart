//  efi_validator.dart
//  RapidEFI OpenCore Configuration & Directory Sanity Checker
//

import 'dart:io';
import 'package:path/path.dart' as path;

enum IssueSeverity {
  error,
  warning,
  info,
}

class EfiValidationIssue {
  final IssueSeverity severity;
  final String title;
  final String message;
  final String? recommendation;

  const EfiValidationIssue({
    required this.severity,
    required this.title,
    required this.message,
    this.recommendation,
  });

  @override
  String toString() => '[${severity.name.toUpperCase()}] $title: $message';
}

class EfiValidationReport {
  final List<EfiValidationIssue> issues;

  const EfiValidationReport(this.issues);

  bool get isValid => !issues.any((i) => i.severity == IssueSeverity.error);
  bool get hasWarnings => issues.any((i) => i.severity == IssueSeverity.warning);

  List<EfiValidationIssue> get errors =>
      issues.where((i) => i.severity == IssueSeverity.error).toList();

  List<EfiValidationIssue> get warnings =>
      issues.where((i) => i.severity == IssueSeverity.warning).toList();

  List<EfiValidationIssue> get info =>
      issues.where((i) => i.severity == IssueSeverity.info).toList();
}

class EfiValidator {
  const EfiValidator._();

  /// Validates a parsed OpenCore config.plist dictionary and optional EFI root directory.
  static EfiValidationReport validateConfig(
    Map<String, dynamic> config, {
    String? efiRootPath,
    String? cpuType,
    String? gpuCodename,
  }) {
    final issues = <EfiValidationIssue>[];

    _validateAcpi(config, efiRootPath, issues);
    _validateKernel(config, efiRootPath, issues);
    _validateUefi(config, efiRootPath, issues);
    _validateNvramAndBootArgs(config, gpuCodename, issues);
    _validateCpuAndBooterQuirks(config, cpuType, issues);

    return EfiValidationReport(issues);
  }

  /// Validates ACPI entries and files
  static void _validateAcpi(
    Map<String, dynamic> config,
    String? efiRootPath,
    List<EfiValidationIssue> issues,
  ) {
    final acpi = config['ACPI'] as Map<String, dynamic>?;
    if (acpi == null) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Missing ACPI Section',
        message: 'The config.plist is missing the top-level ACPI section.',
      ));
      return;
    }

    final addList = acpi['Add'] as List<dynamic>? ?? [];
    final seenPaths = <String>{};

    for (final item in addList) {
      if (item is Map<String, dynamic>) {
        final amlPath = item['Path'] as String? ?? '';
        final enabled = item['Enabled'] as bool? ?? true;

        if (amlPath.isEmpty) {
          issues.add(const EfiValidationIssue(
            severity: IssueSeverity.error,
            title: 'Empty ACPI Path',
            message: 'An ACPI Add entry contains an empty or missing Path.',
          ));
          continue;
        }

        if (enabled) {
          if (seenPaths.contains(amlPath)) {
            issues.add(EfiValidationIssue(
              severity: IssueSeverity.error,
              title: 'Duplicate ACPI Entry',
              message: 'Duplicate enabled ACPI SSDT found: $amlPath',
              recommendation: 'Remove duplicate SSDT references to prevent OpenCore boot halt.',
            ));
          }
          seenPaths.add(amlPath);

          if (efiRootPath != null) {
            final file = File(path.join(efiRootPath, 'OC', 'ACPI', amlPath));
            if (!file.existsSync()) {
              issues.add(EfiValidationIssue(
                severity: IssueSeverity.error,
                title: 'Missing ACPI File',
                message: 'Referenced SSDT file does not exist: $amlPath',
                recommendation: 'Ensure $amlPath is placed in EFI/OC/ACPI/ directory.',
              ));
            }
          }
        }
      }
    }
  }

  /// Validates Kernel Kexts, ordering, and mutual exclusivity
  static void _validateKernel(
    Map<String, dynamic> config,
    String? efiRootPath,
    List<EfiValidationIssue> issues,
  ) {
    final kernel = config['Kernel'] as Map<String, dynamic>?;
    if (kernel == null) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Missing Kernel Section',
        message: 'The config.plist is missing the top-level Kernel section.',
      ));
      return;
    }

    final addList = kernel['Add'] as List<dynamic>? ?? [];
    bool hasLilu = false;
    bool hasVirtualSmc = false;
    bool hasWhateverGreen = false;
    bool hasNootedRed = false;
    int liluIndex = -1;

    for (int i = 0; i < addList.length; i++) {
      final item = addList[i];
      if (item is Map<String, dynamic>) {
        final bundlePath = item['BundlePath'] as String? ?? '';
        final enabled = item['Enabled'] as bool? ?? true;

        if (!enabled) continue;

        if (bundlePath.contains('Lilu.kext')) {
          hasLilu = true;
          liluIndex = i;
        } else if (bundlePath.contains('VirtualSMC.kext') || bundlePath.contains('FakeSMC.kext')) {
          hasVirtualSmc = true;
        } else if (bundlePath.contains('WhateverGreen.kext')) {
          hasWhateverGreen = true;
        } else if (bundlePath.contains('NootedRed.kext')) {
          hasNootedRed = true;
        }

        if (efiRootPath != null && bundlePath.isNotEmpty) {
          final kextDir = Directory(path.join(efiRootPath, 'OC', 'Kexts', bundlePath));
          if (!kextDir.existsSync()) {
            issues.add(EfiValidationIssue(
              severity: IssueSeverity.warning,
              title: 'Missing Kext Directory',
              message: 'Referenced Kext directory does not exist on disk: $bundlePath',
              recommendation: 'Ensure $bundlePath is copied to EFI/OC/Kexts/.',
            ));
          }
        }
      }
    }

    if (!hasLilu) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Missing Lilu.kext',
        message: 'Lilu.kext is required for macOS kernel patching and plugin support.',
        recommendation: 'Add Lilu.kext as the first entry under Kernel -> Add.',
      ));
    } else if (liluIndex > 0) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.warning,
        title: 'Lilu.kext Order Warning',
        message: 'Lilu.kext is not the first driver in Kernel -> Add.',
        recommendation: 'Move Lilu.kext to the top of the Kernel -> Add list.',
      ));
    }

    if (!hasVirtualSmc) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Missing VirtualSMC.kext',
        message: 'VirtualSMC.kext (or FakeSMC) is required for macOS SMC emulation.',
        recommendation: 'Add VirtualSMC.kext under Kernel -> Add.',
      ));
    }

    if (hasWhateverGreen && hasNootedRed) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Kext Conflict: WhateverGreen & NootedRed',
        message: 'WhateverGreen.kext and NootedRed.kext cannot be enabled at the same time.',
        recommendation: 'Disable WhateverGreen.kext when using NootedRed.kext for AMD APUs.',
      ));
    }
  }

  /// Validates UEFI drivers and essential runtime files
  static void _validateUefi(
    Map<String, dynamic> config,
    String? efiRootPath,
    List<EfiValidationIssue> issues,
  ) {
    final uefi = config['UEFI'] as Map<String, dynamic>?;
    if (uefi == null) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Missing UEFI Section',
        message: 'The config.plist is missing the top-level UEFI section.',
      ));
      return;
    }

    final drivers = uefi['Drivers'] as List<dynamic>? ?? [];
    bool hasOpenRuntime = false;

    for (final item in drivers) {
      String driverPath = '';
      bool enabled = true;

      if (item is String) {
        driverPath = item;
      } else if (item is Map<String, dynamic>) {
        driverPath = item['Path'] as String? ?? '';
        enabled = item['Enabled'] as bool? ?? true;
      }

      if (enabled && driverPath.contains('OpenRuntime.efi')) {
        hasOpenRuntime = true;
      }

      if (enabled && efiRootPath != null && driverPath.isNotEmpty) {
        final driverFile = File(path.join(efiRootPath, 'OC', 'Drivers', driverPath));
        if (!driverFile.existsSync()) {
          issues.add(EfiValidationIssue(
            severity: IssueSeverity.warning,
            title: 'Missing UEFI Driver File',
            message: 'Referenced UEFI driver file does not exist: $driverPath',
            recommendation: 'Ensure $driverPath is located in EFI/OC/Drivers/.',
          ));
        }
      }
    }

    if (!hasOpenRuntime) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Missing OpenRuntime.efi',
        message: 'OpenRuntime.efi is essential for memory mapping and NVRAM runtime services.',
        recommendation: 'Add OpenRuntime.efi to UEFI -> Drivers.',
      ));
    }
  }

  /// Validates NVRAM boot arguments and GPU-specific parameters
  static void _validateNvramAndBootArgs(
    Map<String, dynamic> config,
    String? gpuCodename,
    List<EfiValidationIssue> issues,
  ) {
    final nvram = config['NVRAM'] as Map<String, dynamic>?;
    final add = nvram?['Add'] as Map<String, dynamic>?;
    final appleGuid = add?['7C436110-AB2A-4BBB-A880-FE41995C9F82'] as Map<String, dynamic>?;
    final bootArgs = appleGuid?['boot-args'] as String? ?? '';

    // Check conflicting backlight arguments
    if (bootArgs.contains('-igfxblr') && bootArgs.contains('-igfxblt')) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.error,
        title: 'Conflicting Backlight Boot Arguments',
        message: 'Both -igfxblr and -igfxblt are present in boot-args.',
        recommendation: 'Use -igfxblr for macOS 13.4+ or -igfxblt for older macOS, but not both.',
      ));
    }

    // Check AMD Navi GPU boot arg recommendation
    final isNavi = gpuCodename != null &&
        (gpuCodename.contains('Navi') ||
            gpuCodename.contains('RX 5') ||
            gpuCodename.contains('RX 6'));
    if (isNavi && !bootArgs.contains('agdpmod=pikera')) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.info,
        title: 'AMD Navi GPU agdpmod Recommendation',
        message: 'AMD RX 5000/6000 (Navi) series GPUs usually require agdpmod=pikera to prevent black screens.',
        recommendation: 'Consider adding agdpmod=pikera to boot-args.',
      ));
    }
  }

  /// Validates CPU-specific quirks (e.g. ProvideCurrentCpuInfo for Alder/Raptor/Arrow Lake)
  static void _validateCpuAndBooterQuirks(
    Map<String, dynamic> config,
    String? cpuType,
    List<EfiValidationIssue> issues,
  ) {
    final kernel = config['Kernel'] as Map<String, dynamic>?;
    final kernelQuirks = kernel?['Quirks'] as Map<String, dynamic>? ?? {};

    final booter = config['Booter'] as Map<String, dynamic>?;
    final booterQuirks = booter?['Quirks'] as Map<String, dynamic>? ?? {};

    // Check Intel Hybrid CPU Quirk
    final isHybridCpu = cpuType != null &&
        (cpuType.contains('Alder') ||
            cpuType.contains('Raptor') ||
            cpuType.contains('Arrow') ||
            cpuType.contains('Meteor') ||
            cpuType.contains('12th') ||
            cpuType.contains('13th') ||
            cpuType.contains('14th') ||
            cpuType.contains('15th') ||
            cpuType.contains('Ultra'));

    if (isHybridCpu) {
      final provideCurrentCpuInfo = kernelQuirks['ProvideCurrentCpuInfo'] as bool? ?? false;
      if (!provideCurrentCpuInfo) {
        issues.add(const EfiValidationIssue(
          severity: IssueSeverity.warning,
          title: 'ProvideCurrentCpuInfo Recommended',
          message: 'Intel 12th+ Gen Hybrid architecture CPUs require ProvideCurrentCpuInfo for correct core topology.',
          recommendation: 'Enable Kernel -> Quirks -> ProvideCurrentCpuInfo.',
        ));
      }
    }

    // Check booter quirk mutual exclusivity
    final enableWriteUnprotector = booterQuirks['EnableWriteUnprotector'] as bool? ?? false;
    final rebuildAppleMemoryMap = booterQuirks['RebuildAppleMemoryMap'] as bool? ?? false;
    if (enableWriteUnprotector && rebuildAppleMemoryMap) {
      issues.add(const EfiValidationIssue(
        severity: IssueSeverity.warning,
        title: 'Conflicting Booter Memory Quirks',
        message: 'EnableWriteUnprotector and RebuildAppleMemoryMap are generally mutually exclusive in OpenCore.',
        recommendation: 'On modern UEFI firmware, keep RebuildAppleMemoryMap=true and EnableWriteUnprotector=false.',
      ));
    }
  }
}
