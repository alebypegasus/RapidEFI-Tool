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

  @override
  String get navManualTab => 'Manual EFI Config';

  @override
  String get navAutoTab => 'Auto EFI Config';

  @override
  String get cpuSelection => 'CPU Selection:';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Pentium or Celeron processors require CPU spoofing; please enable this!\nNote: Pentium/Celeron iGPUs are generally unsupported!';

  @override
  String get platformSelection => 'Platform Selection:';

  @override
  String get processorGeneration => 'Processor Generation:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 cores / 12 threads) requires specific CPU spoofing';

  @override
  String get amdCoresTitle => 'AMD CPU Cores:';

  @override
  String get amdSpecialMb => 'AMD Special Motherboards:';

  @override
  String get usePrecastMmio => 'Use Precast MMIO';

  @override
  String get useRyzenGpu => 'Enable Ryzen iGPU Support (NootedRed)';

  @override
  String get motherboardBrand => 'Motherboard Brand:';

  @override
  String get motherboardModel => 'Motherboard Model:';

  @override
  String get customMotherboard => 'Custom / Generic Motherboard';

  @override
  String get igpuConfig => 'iGPU Configuration:';

  @override
  String get dgpuConfig => 'dGPU Configuration:';

  @override
  String get audioConfig => 'Audio Configuration:';

  @override
  String get audioCodecFix => 'Audio Codec & Layout ID';

  @override
  String get fixIrq => 'Fix IRQ Conflicts';

  @override
  String get networkConfig => 'Network & Wireless Configuration:';

  @override
  String get laptopDrivers => 'Laptop Drivers:';

  @override
  String get touchpadDriver => 'Touchpad Driver (I2C / PS2)';

  @override
  String get smbiosSelection => 'Target SMBIOS Model:';

  @override
  String get targetMacOsVersion => 'Target macOS Version:';

  @override
  String get bootArgsTitle => 'Boot Arguments (boot-args):';

  @override
  String get csrActiveConfigTitle => 'System Integrity Protection (SIP):';

  @override
  String get outputEfiTitle => 'Output EFI Folder:';

  @override
  String get selectOutputFolder => 'Select Output Folder';

  @override
  String get clearConfig => 'Clear Config';

  @override
  String get importConfigModel => 'Import configModel';

  @override
  String get importingConfigModel => 'Importing configModel...';

  @override
  String get dragDropConfigModel =>
      'Drag and drop configModel file here\nor click to browse';

  @override
  String get clearAllHistory => 'Clear All History';

  @override
  String get clearingHistory => 'Clearing history...';

  @override
  String get noHistoryRecords => 'No history records yet';

  @override
  String get overview => 'Overview';

  @override
  String get platformPatches => 'Platform Patches';

  @override
  String get audioPatches => 'Audio Patches';

  @override
  String get gpuSpoofing => 'GPU Spoofing';

  @override
  String get disableDevices => 'Disable Devices';

  @override
  String get brightnessPatches => 'Brightness Patches';

  @override
  String get graphicsPatches => 'Graphics Patches';

  @override
  String get wifiPatches => 'Wi-Fi Patches';

  @override
  String get documentationGuides => 'Documentation & Guides';

  @override
  String get aboutSupport => 'About & Support';

  @override
  String get hardwareTabTitle => 'Hardware Configuration';

  @override
  String get acpiFolderTitle => 'ACPI Folder';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Loading data...';

  @override
  String get configuringEfiWait => 'Configuring EFI, please wait...';

  @override
  String get summary => 'Summary';

  @override
  String get recent => 'Recent';

  @override
  String get efiConfig => 'EFI Config';

  @override
  String get toolsAndGuides => 'Tools & Guides';

  @override
  String get checkUpdates => 'Check Updates';

  @override
  String get sponsorDeveloper => 'Sponsor Developer';

  @override
  String get releaseNotes => 'Release Notes';

  @override
  String get searchPlaceholder => 'Search';

  @override
  String get initialSupportMacOs => 'Initial natively supported macOS version:';

  @override
  String get lastSupportMacOs => 'Latest natively supported macOS version:';

  @override
  String get oclpSupportMacOs => 'OCLP patch supported macOS versions:';

  @override
  String get cpuInfoTitle => '[CPU Info]:';

  @override
  String get biosRecommendedEnabled => '[BIOS Recommended Settings - Enabled]:';

  @override
  String get biosRecommendedDisabled =>
      '[BIOS Recommended Settings - Disabled]:';

  @override
  String get historyExpanderDesc =>
      'EFIs generated with RapidEFI are automatically backed up to history.\nYou can reload and adjust any previously generated EFI at any time.\n\nThis feature is supported on RapidEFI V3.0.0 and above.';

  @override
  String get gpuPresets => 'Presets';

  @override
  String get gpuByCpuModel => 'By CPU Model';

  @override
  String get selectCpuGeneration => 'Select Generation';

  @override
  String get selectCpuModel => 'Select CPU';

  @override
  String get cpuGenerationLabel => 'CPU Generation';

  @override
  String get cpuModelLabel => 'CPU Model';

  @override
  String get matchingIgpuTip => 'Check if matching, otherwise leave unchecked';

  @override
  String get selectPropertiesToApply => 'Select properties to apply';

  @override
  String get motherboardConfigTitle => 'Motherboard Model Config:';

  @override
  String get motherboardConfigItems => 'Select configuration items to apply';

  @override
  String get selectModelToConfigure => '(Select model to configure)';

  @override
  String get pleaseSelect => 'Please select';

  @override
  String get selectAllDeselectAll => 'Select / Deselect All';

  @override
  String get deselectAll => 'Deselect All';

  @override
  String get stuckOnEbFix =>
      'Stuck on [EB] Fix (Optional - defaults recommended):';

  @override
  String get renameCurrentEfi => 'Rename Current EFI';

  @override
  String get enterNewName => 'Enter new name';

  @override
  String get renameEfiTooltip => 'Rename EFI';

  @override
  String get adminPrivilegesRequired => 'Administrator Privileges Required';

  @override
  String get enterLoginPassword => 'Please enter your computer login password';

  @override
  String get importHardwareMaterials => 'Import Hardware Materials';

  @override
  String get currentBiosSettings => 'Current BIOS Settings';

  @override
  String get colorTheme => 'Color Theme';

  @override
  String get noValidHardwareReport => 'No valid hardware report file detected';

  @override
  String get viewOnGitHub => 'View on GitHub';

  @override
  String get downloadNow => 'Download Now';

  @override
  String get btnConfirm => 'Confirm';

  @override
  String get btnDeleteRecord => 'Delete this record';

  @override
  String get currentEfiNamePrefix => 'Current EFI Name: ';

  @override
  String get close => 'Close';

  @override
  String get applySelected => 'Apply Selected';

  @override
  String get connectedGpuPrefix => 'Connected GPU: ';

  @override
  String get requiresSpoofIdPrefix => 'Requires Spoof ID: ';

  @override
  String get selectPlatform => 'Platform Generation';

  @override
  String get selectVendor => 'Brand';

  @override
  String get selectModel => 'Motherboard Model';

  @override
  String get btnImport => 'Import';

  @override
  String get defaultLabel => 'Default';

  @override
  String get wifiBluetoothDrivers => 'Wi-Fi & Bluetooth Drivers:';

  @override
  String get noWifiDriversByDefault =>
      '(No Wi-Fi drivers configured by default)';

  @override
  String get getIntelModifiedOclp => 'Get Intel Modified OCLP';

  @override
  String get forLaptopSystems => '(For Laptop Systems)';
}
