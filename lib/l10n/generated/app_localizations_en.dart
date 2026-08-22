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
  String get fixIrq => 'Fix IRQ';

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
  String get clearConfig => 'Clear Configuration';

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
  String get wifiBluetoothDrivers => 'Wi-Fi and Bluetooth Drivers:';

  @override
  String get noWifiDriversByDefault =>
      '(No Wi-Fi driver configured by default)';

  @override
  String get getIntelModifiedOclp => 'Get Modified OCLP';

  @override
  String get forLaptopSystems => '(For Laptop Systems)';

  @override
  String get basicConfig => 'Basic Config';

  @override
  String get advancedConfig => 'Advanced Config';

  @override
  String get portCustomization => 'Port Customization';

  @override
  String get displayEdid => 'Display EDID';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'AMD dGPU Spoof';

  @override
  String get intelWifi => 'Intel Wi-Fi';

  @override
  String get broadcomBrcm => 'Broadcom (Brcm)';

  @override
  String get atherosWifi => 'Atheros';

  @override
  String get usbWifi => 'USB Wi-Fi';

  @override
  String get bluetoothDrivers => 'Bluetooth Drivers';

  @override
  String get debuggingTab => 'Debugging';

  @override
  String get amfiSipTab => 'AMFI / SIP';

  @override
  String get igpuFixesTab => 'iGPU Fixes';

  @override
  String get dgpuFixesTab => 'dGPU Fixes';

  @override
  String get blackScreenFixesTab => 'Black Screen Fixes';

  @override
  String get above4gTab => 'Above 4G Decoding';

  @override
  String get trackpadFixesTab => 'Trackpad Fixes';

  @override
  String get othersTab => 'Others';

  @override
  String get powerManagementTab => 'Power Management';

  @override
  String get sleepHibernationTab => 'Sleep / Hibernation';

  @override
  String get storageDiskTab => 'Storage / Disk';

  @override
  String get cpuFixesTab => 'CPU Fixes';

  @override
  String get amdPlatformTab => 'AMD Platform';

  @override
  String get usbFixesTab => 'USB Fixes';

  @override
  String get sdCardTab => 'SD Card';

  @override
  String get brandTab => 'Brand';

  @override
  String get specialMotherboardTab => 'Special Motherboard';

  @override
  String get sipSettingsTab => 'SIP Settings';

  @override
  String get renameCpuTab => 'Rename CPU';

  @override
  String get uiScaleTab => 'UI Scale';

  @override
  String get acpiConfigTab => 'ACPI Config';

  @override
  String get booterConfigTab => 'Booter Config';

  @override
  String get kernelConfigTab => 'Kernel Config';

  @override
  String get uefiConfigTab => 'UEFI Config';

  @override
  String get lookupLayoutId => 'Lookup Layout ID';

  @override
  String get visitChris1111Repo => 'Visit chris1111 Repository';

  @override
  String get supportedMacOsVersions => 'Supported macOS Versions:';

  @override
  String get supportedUsbWifiChipsets => 'Supported USB Wi-Fi Chipsets:';

  @override
  String get selectUtbMap => 'Select UTBMap';

  @override
  String get selectUtbMapHint =>
      'Select mapped UTBMap.kext created with USBToolBox';

  @override
  String get reprocessEfiSubtitle => '(Reprocess an EFI generated by RapidEFI)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI automatically outputs a configModel file inside the EFI folder. Import this file below to reload and customize your EFI configuration.';

  @override
  String get reprocessEfiVersionNote =>
      'This feature is supported on RapidEFI V3.0.0 and above.';

  @override
  String get dropConfigModelHint =>
      'Drop the configModel file here or click to browse';

  @override
  String get offLabel => 'Off';

  @override
  String get onLabel => 'On';

  @override
  String get githubRepository => 'GitHub Repository';

  @override
  String get releasesAndUpdates => 'Releases & Updates';

  @override
  String get projectDocumentation => 'Project Documentation';

  @override
  String get aboutSupportDetails =>
      'RapidEFI is an open-source, automated OpenCore EFI generator, ACPI/SSDT patcher, and hardware analysis tool built for Hackintosh and macOS enthusiasts.\n\nCreated and maintained with love. Star and fork the project on GitHub to support ongoing development!';

  @override
  String get checkApplicableOptions => '(Check applicable options)';

  @override
  String get optionalCheckApplicableOptions =>
      '(Optional - check applicable options)';

  @override
  String get appleAlcUsedByDefault => '(AppleALC driver used by default)';

  @override
  String get noEthernetDriverByDefault =>
      '(No Ethernet driver added by default)';

  @override
  String get usbInjectAllByDefault => '(USBInjectAll used by default)';

  @override
  String get verboseModeByDefault =>
      '(-v verbose mode enabled by default; uncheck to disable)';

  @override
  String get optionalDriversSubtitle =>
      '(Optional drivers - not needed unless required)';

  @override
  String get keepDefaultsSubtitle =>
      '(Keep defaults unless specific customization is needed)';

  @override
  String get optionalCheckDeviceBrand =>
      'Optional - Check if your device brand matches';

  @override
  String get optionalCheckMotherboardModel =>
      'Optional - Check if motherboard model matches';

  @override
  String get optionalConfigureSip =>
      'Optional - Configure SIP as needed (Disabled by default)';

  @override
  String get optionalCustomCpuName => 'Optional - Custom CPU Name';

  @override
  String get optionalAdjustUiScale =>
      'Optional - Adjust OpenCore boot UI scale';

  @override
  String get acpiSsdtPatches => 'ACPI - SSDT Patches';

  @override
  String get acpiPatches => 'ACPI - Patches';

  @override
  String get kernelPatches => 'Kernel - Patches';

  @override
  String get powerManagement => 'Power Management';

  @override
  String get ssdApfsTrimPolicy => 'NVMe / SATA SSD APFS Trim Policy';

  @override
  String get kernelQuirksSubtitle =>
      'Kernel - Quirks (Default settings recommended unless specific fixes needed)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - Drivers (Keep default configurations unless specific needs arise)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI - Output (Default settings recommended)';

  @override
  String get method1Title =>
      'Method 1: Rename \'GPRW to XPRW\' (Instant Wake Fix)';

  @override
  String get method2Title =>
      'Method 2: Rename \'UPRW to XPRW\' (Instant Wake Fix)';

  @override
  String get method3Title =>
      'Method 3: Rename \'RTC Fix\' (Fix RTC Power Off / CMOS Reset)';

  @override
  String get method4Title =>
      'Method 4: Rename \'Battery Fix\' (Support 16-bit to 8-bit Battery Patches)';

  @override
  String get pciPathLabel => 'dGPU PCI Path:';

  @override
  String get pciPathPlaceholder => 'Enter PCI Path';

  @override
  String get spoofedDeviceIdLabel => 'Spoofed Device ID:';

  @override
  String get spoofedDeviceIdPlaceholder => 'Select GPU device to spoof';

  @override
  String get injectDisplayEdidLabel =>
      'Inject Display EDID (usually 256 or 512 hex characters):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'Enter display EDID (usually 256 or 512 hex chars; spaces and newlines allowed)';

  @override
  String get failed => 'Failed';

  @override
  String get method1 => 'Method 1';

  @override
  String get method2 => 'Method 2';

  @override
  String get method3 => 'Method 3';

  @override
  String get method4 => 'Method 4';

  @override
  String get optionalKextDrivers => 'Optional Kext Drivers';

  @override
  String get optionalKextSubTitle =>
      'Select optional kext drivers according to your hardware';

  @override
  String get brandConfigTab => 'Brand';

  @override
  String get optionalSettings => 'Optional Settings';

  @override
  String get optionalSettingsSubTitle =>
      'Select additional optional configurations';

  @override
  String get optionalCheckMotherboard => 'Special Motherboard Options';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI automatically outputs a configModel file inside the EFI folder.\nImport this file below to reload and customize your EFI configuration.\n\nThis feature is supported on RapidEFI V3.0.0 and above.';

  @override
  String get releaseToReimportConfigModel => 'Release to re-import configModel';

  @override
  String get invalidConfigFileMessage =>
      'Invalid configuration file. Please select a valid configModel file.';

  @override
  String get ethernetTitle => 'Ethernet Drivers:';

  @override
  String get usbTitle => 'USB Drivers:';

  @override
  String get ssdtCoreOfficial => '* Core (Official)';

  @override
  String get ssdtRecommendedFixes => '* Recommended (Fixes)';

  @override
  String get ssdtOptionalEnhancements => '* Optional (Enhancements)';

  @override
  String get platformDesktop => 'Desktop';

  @override
  String get platformLaptop => 'Laptop';

  @override
  String get platformNucMini => 'NUC / Mini PC';

  @override
  String get platformHedtServer => 'HEDT / Server';
}
