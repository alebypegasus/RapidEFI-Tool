// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI Tool';

  @override
  String get navHardware => 'Hardware';

  @override
  String get navManual => 'Manual EFI Config';

  @override
  String get navProcess => 'Process EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'History';

  @override
  String get navSettings => 'Settings';

  @override
  String get navAbout => 'About';

  @override
  String get navSponsor => 'Sponsor Developer';

  @override
  String get btnRefresh => 'Refresh';

  @override
  String get btnImportReport => 'Import Report';

  @override
  String get btnExportReport => 'Export Report';

  @override
  String get btnExportAcpi => 'Export ACPI';

  @override
  String get btnEfiSettings => 'EFI Settings';

  @override
  String get btnExportEfi => 'Export EFI';

  @override
  String get btnGenerateEfi => 'Generate EFI';

  @override
  String get btnBrowse => 'Browse';

  @override
  String get btnChooseFile => 'Choose File';

  @override
  String get btnCancel => 'Cancel';

  @override
  String get btnApply => 'Apply';

  @override
  String get btnSave => 'Save';

  @override
  String get btnClose => 'Close';

  @override
  String get btnCheckUpdates => 'Check Updates';

  @override
  String get btnChecking => 'Checking...';

  @override
  String get btnSelectAll => 'Select All';

  @override
  String get btnDeselectAll => 'Deselect All';

  @override
  String get btnCustomSsdt => 'Custom SSDT';

  @override
  String get btnPrebuiltSsdt => 'Prebuilt SSDT';

  @override
  String get btnDumpAcpi => 'Dump ACPI';

  @override
  String get btnSelectAcpis => 'Select ACPIs';

  @override
  String get btnSelectConfig => 'Select config';

  @override
  String get btnMergeConfig => 'Merge config';

  @override
  String get btnExecutePatch => 'Execute Patch';

  @override
  String get btnOpenFolder => 'Open Folder';

  @override
  String get hardwareReport => 'Hardware Report';

  @override
  String get cpuArchitecture => 'Processor (CPU)';

  @override
  String get motherboardChipset => 'Motherboard & Chipset';

  @override
  String get graphicsDevice => 'Graphics (GPU)';

  @override
  String get audioCodec => 'Audio Controller';

  @override
  String get networkController => 'Network & Wireless';

  @override
  String get storageDevice => 'Storage Devices';

  @override
  String get acpiTables => 'ACPI Tables';

  @override
  String get compatibilityStatus => 'Compatibility';

  @override
  String get compatible => 'Supported';

  @override
  String get unsupported => 'Unsupported';

  @override
  String get requiresPatch => 'Patch Required';

  @override
  String get details => 'Details';

  @override
  String get showDetailedReport => 'Detailed View';

  @override
  String get platformConfig => 'Platform Configuration';

  @override
  String get cpuVendor => 'CPU Vendor';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Form Factor';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Laptop';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Server';

  @override
  String get processorGen => 'Processor Generation';

  @override
  String get targetMacOs => 'Target macOS Version';

  @override
  String get smbiosModel => 'Target SMBIOS Model';

  @override
  String get motherboardSelector => 'Motherboard Selection';

  @override
  String get brand => 'Brand';

  @override
  String get model => 'Model';

  @override
  String get outputDirectory => 'Output Directory';

  @override
  String get kextConfiguration => 'Kext Configuration';

  @override
  String get bootArguments => 'Boot Arguments (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Enabled (00000000)';

  @override
  String get sipDisabled => 'SIP Disabled (03080000)';

  @override
  String get processEfiTitle => 'Process & Rebuild EFI';

  @override
  String get chooseEfiPrompt =>
      'Select an EFI directory or configModel file to load configuration';

  @override
  String get configModelFound => 'ConfigModel found and loaded successfully';

  @override
  String get rebuildEfi => 'Rebuild EFI';

  @override
  String get ssdtGeneratorTitle => 'SSDT Generator & ACPI Patcher';

  @override
  String get corePatches => 'Core Patches';

  @override
  String get recommendedPatches => 'Recommended Patches';

  @override
  String get optionalPatches => 'Optional Patches';

  @override
  String get compilationComplete => 'Compilation Completed';

  @override
  String get mergeSuccess => 'Merged into EFI successfully';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher Integration';

  @override
  String get rootPatching => 'Root Patching';

  @override
  String get graphicsAcceleration => 'Graphics Acceleration';

  @override
  String get wirelessFix => 'Wi-Fi & Bluetooth Fix';

  @override
  String get postInstall => 'Post-Install Steps';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 Compatibility Guide';

  @override
  String get tahoeCompatibility => 'Tahoe 26 Kernel & Audio Adaptation';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get appLanguage => 'Language :';

  @override
  String get followSystem => 'Follow System';

  @override
  String get themeMode => 'Theme Mode :';

  @override
  String get themeColor => 'Theme Color :';

  @override
  String get appFont => 'App Font :';

  @override
  String get efiOptions => 'EFI Options :';

  @override
  String get addThemeToEfi => 'Add OpenCore boot theme to EFI';

  @override
  String get generateConfigModel => 'Generate configModel file in EFI folder';

  @override
  String get compressZipEfi => 'Compress EFI to ZIP file';

  @override
  String get checkForUpdates => 'Check for Updates :';

  @override
  String currentVersion(String version) {
    return 'Current version: $version';
  }

  @override
  String get copyrightNotice => 'Copyright & License';

  @override
  String get exitAppTip => 'Press back again to exit';

  @override
  String get updateAvailable => 'New version available';

  @override
  String versionTag(String version) {
    return 'Version: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Release Date: $date';
  }

  @override
  String get noUpdateFound => 'You are running the latest version';

  @override
  String get efiBuildSuccess => 'EFI built successfully!';

  @override
  String get efiBuildFailed => 'Failed to build EFI';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get soundLayoutId => 'Audio Layout ID (alcid)';

  @override
  String get nvramBootArgs => 'Custom boot-args';

  @override
  String get generateSerial => 'Generate Serial';
}
