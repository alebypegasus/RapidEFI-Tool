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
  String get recent => 'Recent';

  @override
  String get efiRelated => 'EFI Related';

  @override
  String get toolsAndGuides => 'Tools & Guides';

  @override
  String get navHistory => 'History';

  @override
  String get navConfigureEFI => 'Configure EFI';

  @override
  String get navProcessEFI => 'Process EFI';

  @override
  String get navCustomSSDT => 'Custom SSDT';

  @override
  String get navOCLPPatch => 'OCLP-X Patch';

  @override
  String get navTahoeGuide => 'macOS Tahoe 26';

  @override
  String get navSettings => 'Settings';

  @override
  String get navSponsor => 'Sponsor Developer';

  @override
  String get searchPlaceholder => 'Search';

  @override
  String get darkMode => 'Dark Mode';

  @override
  String get clickAgainToExit => 'Click again to exit';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'Current OpenCore Version: $version';
  }

  @override
  String get copyrightTitle => 'Copyright Statement';

  @override
  String get copyrightText =>
      'Copyright (C) 2024 JeoJay\n\nLicense:\nAllowed for individual or organization use under the following conditions:\n\n1. Non-commercial use:\nThis software is completely free and open source, strictly for non-commercial use. Selling this software is prohibited.\n\n2. Attribution:\nAny form of republication, quotation, or use on third-party websites must explicitly state the source and include the following information:\nDeveloped by JeoJay. Copyright (C) 2024 JeoJay. All rights reserved.\n\n3. Do not modify copyright declarations:\nWhen reposting or using any content of this software, the original copyright notice and attribution information must not be modified or deleted.\n\nDisclaimer:\nThis software is provided \'as is\', without warranty of any kind, express or implied. The copyright owner shall not be liable for any direct or indirect damages arising from the use of this software.';

  @override
  String get themeModeTitle => 'Dark Mode:';

  @override
  String get themeModeSystem => 'Follow System';

  @override
  String get themeModeLight => 'Off';

  @override
  String get themeModeDark => 'On';

  @override
  String get themeColorTitle => 'Theme Color:';

  @override
  String get appFontTitle => 'Application Font:';

  @override
  String get efiSettingsTitle => 'EFI Output Options:';

  @override
  String get addOpenCoreTheme => 'Add OpenCore boot theme when configuring EFI';

  @override
  String get generateConfigModel => 'Generate configModel file in EFI folder';

  @override
  String get zipEFI => 'Compress EFI into Zip file';

  @override
  String get languageTitle => 'Language:';

  @override
  String get languageSystem => 'Follow System';

  @override
  String get languageEn => 'English';

  @override
  String get languagePtBR => 'Português (Brasil)';

  @override
  String get languagePtPT => 'Português (Portugal)';

  @override
  String get languageZhCN => '中文 (简体)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => '日本語';

  @override
  String get languageEs => 'Español';

  @override
  String get languageFr => 'Français';

  @override
  String get languageAr => 'العربية';

  @override
  String get languageHi => 'हिन्दी';

  @override
  String get languageRu => 'Русский';

  @override
  String get languageIt => 'Italiano';

  @override
  String get versionUpdateTitle => 'Version Update:';

  @override
  String currentVersion(Object version) {
    return 'Current Version: $version';
  }

  @override
  String get checkUpdate => 'Check for Updates';

  @override
  String get checkingUpdate => 'Checking...';

  @override
  String get settingSnippet =>
      '1. Option \'Add OpenCore boot theme when configuring EFI\' is enabled by default. A boot theme will be included in the output EFI folder. Uncheck if not needed.\n\n2. Option \'Generate configModel file in EFI folder\' is enabled by default. This file can be used to re-edit and adjust the current EFI in the \'Process EFI\' section.\n\n3. Option \'Compress EFI into Zip file\' compresses the output EFI into a Zip file. Note that compressing Zip files may affect overall EFI output progress, especially on lower performance hardware.';

  @override
  String get fontMicrosoftYaHei => 'Microsoft YaHei';

  @override
  String get fontSarasaGothic => 'Sarasa Gothic';

  @override
  String get fontSourceHanSerif => 'Source Han Serif';

  @override
  String get cpuArchitecture => 'CPU Architecture';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Laptop';

  @override
  String get hedt => 'Server';

  @override
  String get nuc => 'Mini PC';

  @override
  String get amd => 'AMD Processor';

  @override
  String get smbios => 'SMBIOS Model';

  @override
  String get generateEFI => 'Generate EFI';

  @override
  String get clearSelection => 'Clear Selection';

  @override
  String get exportConfig => 'Export Config';

  @override
  String get selectTargetFolder => 'Select Target Directory';

  @override
  String get efiGenerateSuccess => 'EFI generated successfully!';

  @override
  String efiGenerateFailed(Object error) {
    return 'EFI generation failed: $error';
  }

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get save => 'Save';

  @override
  String get delete => 'Delete';

  @override
  String get openFolder => 'Open Folder';

  @override
  String get date => 'Date';

  @override
  String get actions => 'Actions';

  @override
  String get historyTitle => 'History';

  @override
  String get historyDescription =>
      'EFIs generated by RapidEFI are automatically backed up after each successful build. You can re-edit and adjust the output based on these records whenever needed.';

  @override
  String get clearAllHistory => 'Clear All History';

  @override
  String get clearingHistory => 'Clearing history...';

  @override
  String get noHistory => 'No history records';

  @override
  String get editEFI => 'Edit EFI';

  @override
  String get configuringEFI => 'Configuring EFI, please wait...';

  @override
  String get configureEFISuccess => 'EFI configured successfully';

  @override
  String get configureEFIFailed =>
      'Error configuring EFI!\nPlease change the EFI output directory.';

  @override
  String get sponsorTitle => 'Sponsor Developer';

  @override
  String get visitBilibili => 'Author\'s Bilibili';

  @override
  String get visitGithub => 'Visit GitHub';

  @override
  String get buyCoffeeTitle => 'Buy the Developer a Coffee';

  @override
  String get buyCoffeeText =>
      'If this tool helped you, feel free to sponsor the developer! Thank you for your support!\n\nAuthor contact: QQ 766264141 or WX: JeoJay127. No other private contact methods exist, beware of scams!';

  @override
  String get successCasesTitle => 'RapidEFI Success Cases';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 Guide';

  @override
  String get oclpIntro => 'Introduction';

  @override
  String get oclpGpu => 'GPU Patch';

  @override
  String get oclpWifi => 'WiFi Patch';

  @override
  String get ssdtPlatform => 'Platform Patch';

  @override
  String get ssdtAudio => 'Audio Patch';

  @override
  String get ssdtGpuSpoof => 'GPU Spoofing';

  @override
  String get ssdtDisableDevice => 'Disable Device';

  @override
  String get ssdtBrightness => 'Brightness Patch';

  @override
  String get manualEFIConfig => 'Manual EFI Configuration';

  @override
  String get autoEFIConfig => 'Auto EFI Configuration';

  @override
  String get cpuSelection => 'CPU Selection:';

  @override
  String get platformSelection => 'Platform Selection:';

  @override
  String get platformInfo => 'Platform Info:';

  @override
  String get targetMacOSVersion => 'Target macOS Version:';

  @override
  String get smbiosModelSetup => 'SMBIOS Model Setup:';

  @override
  String get motherboardModelConfig => 'Motherboard Model Config:';

  @override
  String get selectMotherboardModelTip =>
      '(Select motherboard model to apply configuration)';

  @override
  String get platformGen => 'Platform Generation';

  @override
  String get vendor => 'Brand';

  @override
  String get motherboardModel => 'Motherboard Model';

  @override
  String get pleaseSelect => 'Please Select';

  @override
  String get selected => 'Selected: ';

  @override
  String get applySelectedConfig => 'Apply Selected Config';

  @override
  String get noMatchingConfigEntries => 'No matching config entries';

  @override
  String get pentiumCeleron => 'Pentium / Celeron';

  @override
  String get pentiumCeleronTip =>
      'Pentium or Celeron processors require CPU spoofing! Please enable.\nNote: Pentium/Celeron iGPUs are usually not supported!';

  @override
  String get u62CpuTitle => 'U62 Type CPU';

  @override
  String get u62CpuTip =>
      '10th Gen Comet Lake U62 CPU (e.g. i3-10110U, i5-10210U, i7-10510U, etc.) - please enable!';

  @override
  String get macOSVersionSnippet =>
      'The generated EFI is backward compatible with selected macOS version down to OS X El Capitan 10.11.';

  @override
  String get amdCores => 'AMD Core Count:';

  @override
  String get ryzen7000to9000 => '7000~9000 Series CPUs';

  @override
  String get useAmdIgpuOutput => 'Use AMD iGPU for Display Output';

  @override
  String get igpuConfigTitle => 'iGPU Config';

  @override
  String get dgpuConfigTitle => 'dGPU Config';

  @override
  String get audioDriver => 'Audio Driver:';

  @override
  String get defaultAppleALCDriver => '(Default: uses AppleALC driver)';

  @override
  String get alcLayoutId => 'ALC Layout ID:';

  @override
  String get queryLayoutId => 'Query Layout ID';

  @override
  String get hpetAcpiPath => 'HPET ACPI Path (fix audio IRQ):';

  @override
  String get fixIrq => 'Fix IRQ';

  @override
  String get selectAudioLayoutIdTitle => 'Select Audio Layout ID';

  @override
  String get selectAudioLayoutIdTip =>
      '(Use scroll wheel to select, then click confirm)';

  @override
  String get ethernetDriver => 'Ethernet Driver:';

  @override
  String get defaultNoEthernetDriver => '(Default: no ethernet driver added)';

  @override
  String get loadingData => 'Loading data...';

  @override
  String get refreshHardwareInfo => 'Refresh Hardware Info';

  @override
  String get importHardwareInfo => 'Import Hardware Data';

  @override
  String get exportHardwareReport => 'Export Hardware Report';

  @override
  String get exportAcpiTables => 'Export ACPI Tables';

  @override
  String get efiSettings => 'EFI Settings';

  @override
  String get outputEFI => 'Export EFI';

  @override
  String get summaryView => 'Summary';

  @override
  String get detailedView => 'Detailed';

  @override
  String get legendGreen => 'Green: Supports latest OS (macOS Tahoe 26)';

  @override
  String get legendYellow => 'Yellow: Supports some OS versions';

  @override
  String get legendRed => 'Red: Completely incompatible';

  @override
  String get noAcpiImported => 'No ACPI Imported';

  @override
  String get personalizedEfiTitle => 'Personalized EFI Settings';

  @override
  String get applySettings => 'Apply Settings';

  @override
  String get configureEFIError =>
      'Error configuring EFI!\nPlease change the output path';

  @override
  String get selectConfigItems => 'Select Configuration Items to Apply';

  @override
  String get newVersionFound => 'New Version Available';

  @override
  String versionTag(Object tag) {
    return 'Version: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'Release Date: $date';
  }

  @override
  String get downloadNow => 'Download Now';

  @override
  String get close => 'Close';

  @override
  String get generatingEfiAndSsdt =>
      'Generating EFI & Custom SSDT, please wait...';

  @override
  String get configuringEfiTitle => 'Configuring EFI';

  @override
  String get configureEfiSuccessTitle => 'EFI Configured Successfully';

  @override
  String get configureEfiErrorTitle => 'EFI Configuration Failed';

  @override
  String get outputDirectory => 'Output Directory:';

  @override
  String get openEfiDirectory => 'Open EFI Directory';

  @override
  String get select => 'Select';

  @override
  String get selectFile => 'Select File';

  @override
  String get selectDirectory => 'Select Directory';

  @override
  String get hardwareReport => 'Hardware Report';

  @override
  String get acpiTablesDirectory => 'ACPI Tables Directory';

  @override
  String get noAcpiFolderTip =>
      'Without ACPI tables directory, custom SSDT cannot be generated from imported report.';

  @override
  String get hasAcpiFolderTip =>
      'Selected ACPI tables directory will be used for custom SSDT.';

  @override
  String get adminRightsRequired => 'Administrator Rights Required';

  @override
  String get enterSystemPassword => 'Please enter your system password';

  @override
  String get import => 'Import';

  @override
  String get optionalSelectIfMatching => '(Optional - check if matching)';

  @override
  String get selectIfMatching => '(Check if matching)';

  @override
  String get baseConfig => 'Base Config';

  @override
  String get advanceConfig => 'Advanced Config';

  @override
  String get connectorCustomization => 'Connector Customization';

  @override
  String get displayEdid => 'Display EDID';

  @override
  String get nvidiaDgpu => 'Nvidia dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'AMD dGPU Spoof';

  @override
  String get above4gTitle => 'Above 4G Decoding Settings';

  @override
  String get addNpciBootArg => 'Add npci=0x2000 boot argument';

  @override
  String get above4gTip =>
      'Recommended if Above 4G Decoding is disabled in BIOS. Uncheck if enabled.';

  @override
  String get personalizedEfiIntroTip =>
      'All fields are optional. Output EFI will generate corresponding files based on these settings.';

  @override
  String get ssdtType => 'SSDT Type:';

  @override
  String get customSsdt => 'Custom SSDT';

  @override
  String get presetSsdt => 'Preset SSDT';

  @override
  String get cpuTypeLabel => 'CPU Type:';

  @override
  String get platformTypeLabel => 'Platform Type:';

  @override
  String get selectAll => 'Select All';

  @override
  String get basicOfficialRecommend => '* Basic (Official Recommend)';

  @override
  String get recommendFixes => '* Recommend (Feature Fixes)';

  @override
  String get optionalEnhancements => '* Optional (Enhancements)';

  @override
  String get personalizedPlatformTip =>
      'CPU type, platform type, and info are detected from hardware; adjust manually below if incorrect.';

  @override
  String get pciPathLabel => 'GPU PCI Path:';

  @override
  String get pciPathHint => 'Enter PCI Path';

  @override
  String get spoofGpuIdLabel => 'Spoof GPU ID:';

  @override
  String get selectSpoofGpuPlaceholder => 'Select GPU to spoof';

  @override
  String get gpuSpoofDataLoadError => 'Failed to load GPU spoof data';

  @override
  String get injectEdidTitle => 'Inject Display EDID (256 or 512 hex chars):';

  @override
  String get injectEdidHint =>
      'Enter Display EDID (hex format, spaces allowed)';

  @override
  String get edidHexError => 'EDID data contains non-hexadecimal characters!';

  @override
  String get edidLengthError => 'EDID length is not a multiple of 256!';

  @override
  String get edidInvalidToast =>
      'EDID data is invalid, please verify before entering!';

  @override
  String get details => 'Details';

  @override
  String get clearAllSelection => 'Clear All Selection';

  @override
  String applySelected(Object count) {
    return 'Apply Selected ($count items)';
  }

  @override
  String get getModdedOclp => 'Get Modded OCLP';

  @override
  String get getIntelModdedOclp => 'Get Intel Modded OCLP';

  @override
  String get soundDriverCardTitle => 'Audio Driver:';

  @override
  String get soundDriverDefaultTip => '(Default uses AppleALC driver)';

  @override
  String get hpetAcpiPathTitle => 'HPET ACPI Path (Fix Audio IRQ):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'Select Audio Layout ID (DB: $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip =>
      '(Scroll with wheel, then click confirm)';

  @override
  String get nicDriverCardTitle => 'Network Card Driver:';

  @override
  String get nicDriverDefaultTip => '(Default no network card driver added)';

  @override
  String get wifiBtCardTitle => 'Wi-Fi & Bluetooth Driver:';

  @override
  String get wifiBtDefaultTip =>
      '(Default no Wi-Fi driver, configure manually if needed)';

  @override
  String get usbCardTitle => 'USB Driver:';

  @override
  String get usbDefaultTip => '(Default uses USBInjectAll)';

  @override
  String get selectUtbMap => 'Select UTBMap';

  @override
  String get selectUtbMapHint => 'Select UTBMap.kext created by USBToolBox';

  @override
  String get releaseUsbOwnershipText =>
      'Enable \'UEFI->Quirks->ReleaseUsbOwnership\' quirk to release USB controller ownership from firmware...';

  @override
  String get bootArgsCardTitle => 'Boot Arguments:';

  @override
  String get bootArgsDefaultTip =>
      '(Default enables -v verbose mode, uncheck if not needed)';

  @override
  String get debugCategory => 'Debug';

  @override
  String get amfiSipCategory => 'AMFI/SIP';

  @override
  String get igpuCategory => 'iGPU';

  @override
  String get dgpuCategory => 'dGPU';

  @override
  String get blackScreenFixCategory => 'Black Screen Fixes';

  @override
  String get above4gCategory => 'Above 4G Decoding';

  @override
  String get touchpadFixCategory => 'Touchpad Fixes';

  @override
  String get othersCategory => 'Others';

  @override
  String get optionalKextsCardTitle => 'Optional Kexts:';

  @override
  String get optionalKextsDefaultTip =>
      '(Optional drivers, do not add unless needed)';

  @override
  String get graphicsCategory => 'Graphics';

  @override
  String get powerManagementCategory => 'Power Management';

  @override
  String get sleepCategory => 'Sleep';

  @override
  String get diskCategory => 'Disk';

  @override
  String get cpuCategory => 'CPU';

  @override
  String get amdPlatformCategory => 'AMD Platform';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'SD Card';

  @override
  String get optionalSettingsCardTitle => 'Optional Settings:';

  @override
  String get optionalSettingsDefaultTip =>
      '(Usually keep defaults unless needed)';

  @override
  String get tabBrand => 'Brand';

  @override
  String get tabSpecialMotherboard => 'Special Motherboard';

  @override
  String get tabSipSetting => 'SIP Settings';

  @override
  String get tabCpuRename => 'CPU Rename';

  @override
  String get tabUiScale => 'OpenCore UI Scale';

  @override
  String get tabAcpiConfig => 'ACPI Config';

  @override
  String get tabBooterConfig => 'Booter Config';

  @override
  String get tabKernelConfig => 'Kernel Config';

  @override
  String get tabUefiConfig => 'UEFI Config';

  @override
  String get processEfiTitle => 'Process EFI';

  @override
  String get processEfiSubTitle => '(Reprocess EFI configured by RapidEFI)';

  @override
  String get processEfiExpanderText =>
      'EFI configured by RapidEFI tool will generate a file named configModel in the EFI output folder. Import this file here to edit the current EFI again.\n\nThis feature only supports RapidEFI V3.0.0 and above.';

  @override
  String get clearCurrentConfig => 'Clear Current Config';

  @override
  String get importConfigModelFile => 'Import configModel File';

  @override
  String get importingConfigModel => 'Importing configModel...';

  @override
  String get releaseToReimport => 'Release mouse to re-import configModel';

  @override
  String get dragConfigModelArea =>
      'Drag configModel file here\nor click to select file';

  @override
  String get importFailedToast =>
      'Imported config data is invalid, please re-import a valid configModel file.';

  @override
  String get changeEfiTitle => 'Change EFI Title';

  @override
  String get modifyCurrentEfiName => 'Modify Current EFI Name';

  @override
  String originalEfiName(String name) {
    return 'Original EFI Name: $name';
  }

  @override
  String get enterModifiedName => 'Please enter modified name';

  @override
  String get deleteRecord => 'Delete this record';

  @override
  String get exportThisEfi => 'Export this EFI';

  @override
  String get releaseToIdentifyHardware =>
      'Release to automatically identify hardware report and ACPI tables';

  @override
  String get dragHardwareReportHere =>
      'Drag in the hardware report folder exported by this tool\n(automatically identifies sysInfo.txt and ACPI directory)';

  @override
  String get invalidHardwareReportToast =>
      'Valid hardware report file not recognized';

  @override
  String optionalSuffix(String title) {
    return '$title (Optional)';
  }

  @override
  String get notSelected => 'Not selected';

  @override
  String get verifyingAdminPassword => 'Verifying administrator password...';

  @override
  String get hardwareReportAcpiMissing =>
      'External hardware report imported, but ACPI table directory not provided, SSDT cannot be customized.';

  @override
  String get hwMemory => 'Memory';

  @override
  String get hwCompatible => 'Compatible';

  @override
  String hwDeviceID(String id) {
    return 'Device ID: $id';
  }

  @override
  String hwType(String type) {
    return 'Type: $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'Capacity: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'Interface: $bus';
  }

  @override
  String hwModel(String model) {
    return 'Model: $model';
  }

  @override
  String get hwStorage => 'Storage';

  @override
  String get hwStorageController => 'Storage\nController';

  @override
  String get hwBluetooth => 'Bluetooth';

  @override
  String get hwAudioCard => 'Audio Card';

  @override
  String get hwAudioLayoutId => 'Layout ID:';

  @override
  String get hwNetworkCard => 'Network Card';

  @override
  String get hwMonitor => 'Monitor';

  @override
  String hwResolution(String res, String hz) {
    return 'Resolution: $res @ $hz Hz';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'Connected GPU: $gpu';
  }

  @override
  String get hwInput => 'Input';

  @override
  String get hwSDCard => 'SD Card';

  @override
  String hwDevice(String dev) {
    return 'Device: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'Serial Number: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'Built-in: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'Secure Boot: $status';
  }

  @override
  String hwCSM(String status) {
    return 'CSM: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'Resizable BAR: $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'Above 4G Decoding: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'AHCI: $status';
  }

  @override
  String get hwAHCIUnknown => 'AHCI: Unknown';

  @override
  String get hwEnabled => 'Enabled';

  @override
  String get hwDisabled => 'Disabled';

  @override
  String get hwCurrentBiosSettings => 'Current BIOS Settings';

  @override
  String get hwBiosNote =>
      'Hackintosh Notes:\n1. For all red text, please make sure to turn it on or off in BIOS to keep it blue.\n2. Blue text indicates appropriate settings in most cases.\nSecure Boot: Must be disabled (otherwise unsigned firmware like OC bootloader cannot start normally).\nCSM (Compatibility Support Module): Recommended to disable in most cases (Intel 4th/5th gen mobile IGPU, X99 platforms, and some RX460 graphics cards may need CSM enabled, otherwise screen tearing or boot failure occurs).\nResizable BAR: Recommended to disable in BIOS (if not disabled, make sure ResizeAppleGpuBars is set to 0 in Booter->Quirks to avoid boot issues).\nAbove 4G Decoding: Recommended to enable in BIOS, and remove the automatically checked npci=0x2000 parameter. If this option is not in BIOS, recommend checking npci=0x2000 or npci=0x3000. Note: BIOS Above 4G Decoding and npci parameters are mutually exclusive!\nAHCI (SATA Disk Mode): Must be enabled (if not, disks may not be recognized or a prohibitory symbol appears).';

  @override
  String hwBit(String arch) {
    return '$arch Bit';
  }

  @override
  String get hwVirtualizationEnabled => 'Virtualization: Enabled';

  @override
  String get hwVirtualizationDisabled => 'Virtualization: Disabled';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores Cores $threads Threads';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'Instruction Set: $simd';
  }

  @override
  String hwCore(String core) {
    return 'Core: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'Spoof ID Required: $id';
  }

  @override
  String get hwGPU => 'GPU';

  @override
  String get hwIncompatible => 'Incompatible';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'Motherboard';

  @override
  String hwBrand(String brand) {
    return 'Brand: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'Chipset: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALC supports multiple layout IDs. Different IDs may affect audio interface availability.';

  @override
  String get manualNvidiaInfoText =>
      'Supported Nvidia GPU series are as follows:\n• Tesla series (8000 - 300 series): Natively supported up to macOS High Sierra 10.13.x (may need NVCAP fix), higher versions require OCLP patch (no Metal support)\nExamples: 8600GT, 9600GT, GT210, GT220, GT240, etc. Too old, not recommended!\n• Kepler series (600 - 800 series): Natively supported up to macOS Big Sur 11.x, higher versions require OCLP patch (supports Metal, true driver)\nKepler core: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black, etc.\nKepler core professional cards: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000, etc.\n• Fermi, Maxwell, Pascal series: Webdriver supported up to macOS High Sierra 10.13.x. For macOS Big Sur 11.x and above, check the boot arguments below and apply OCLP patch (no Metal support, fake driver)\nFermi series: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740, etc.\nMaxwell series: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980, etc.\nPascal series: GTX1050, GTX1060, GTX1070, GTX1080, etc.\nUnsupported Nvidia GPU series (11 series and above are NOT supported):\n• 16 ~ 50 series: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070, etc.';

  @override
  String get manualEdidInfoText =>
      '1. Usually used to fix the black screen/no signal issue of Intel 6th-10th Gen iGPU (dGPU EDID is not handled here). (Typical symptom: Keyboard Caps Lock light works, but monitor shows black screen with no signal)\n2. For 500-series desktop motherboards (H510/B560/H570/Q570/Z590/W580) using iGPU HDMI output, injecting real monitor EDID is mandatory, otherwise a black screen is highly likely.\n3. How to get monitor EDID:\nIn Windows, use the RapidEFI tool or hdinfo tool to get the EDID (you can use third-party tools, but you must format the EDID yourself):\n1). Open RapidEFI v4.x or above, click \"Configure EFI\" -> \"Auto Configure EFI\" -> \"Detailed Configuration\" (or click \"Detailed Configuration\" if using hdinfo).\n2). Wait for hardware info auto-detection to finish, then click the EDID code next to the Monitor section to get it (it will prompt successfully copied to clipboard).\n3). Return to this page and paste the EDID into the input box.\n4. Before injecting EDID, please check the target AAPL0X interface in \"Advanced Configuration\"; if unsure, choose based on the actual HDMI fix plan.\n5. EDID data is usually 128 bytes (256 hex chars) or 256 bytes (512 hex chars). If it\'s not, please double-check before inputting!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'Current Framebuffer: $fb. Generating framebuffer-conX-alldata per WhateverGreen docs.';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'Current Framebuffer doesn\'t support structured recommendations; delete existing raw values and reselect a supported iGPU base config.';

  @override
  String get manualAddConnectorTooltip => 'Add Connector Patch';

  @override
  String get manualConnectorLabel => 'Connector';

  @override
  String get manualIndexLabel => 'Index';

  @override
  String get manualBusIdLabel => 'Bus ID';

  @override
  String get manualConnectorTypeLabel => 'Type';

  @override
  String manualOldConnector(String label) {
    return '$label (Legacy)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'Delete con$index patch';
  }

  @override
  String get manualUnparseableValue => 'Raw value unparseable';

  @override
  String get manualDeleteAndReadd =>
      'Please delete and re-add structured connector patches';

  @override
  String get manualDeleteUnparseableTooltip =>
      'Delete unparseable connector patch';

  @override
  String get manualBatteryDriver => 'Battery Driver';

  @override
  String get manualKeyboardTouchpadDriver => 'Keyboard & Touchpad Driver';

  @override
  String get manualSensorDriver =>
      'Sensor Driver (Not recommended unless necessary)';

  @override
  String get manualKernelTrimStrategy => 'SSD Trim Strategy';

  @override
  String get manualKernelPowerManagement => 'Power Management';

  @override
  String get manualKernelDummyPowerManagement =>
      'Disable Power Management (DummyPowerManagement), fixes reboot issues caused by CPU power management (e.g. AppleIntelCPUPowerManagement kernel panic, stuck at boot logo, or rebooting right after entering system). For 4th Gen and above, this is the preferred alternative to NullCpuPowerManagement.kext';

  @override
  String get manualKernelQuirksDefault =>
      'Kernel - Quirks is recommended to keep default, unless necessary or you know what each item means';

  @override
  String get manualUefiProvideConsoleGop =>
      'ProvideConsoleGop quirk is enabled by default to fix OpenCore boot UI not showing. If it still doesn\'t show, try unchecking this';

  @override
  String get manualUefiDriversHfs =>
      'UEFI-Drivers (Fix OpenCore boot UI not showing due to HFS driver)';

  @override
  String get manualUefiOutputBootUI =>
      'UEFI - Output (Fix OpenCore boot UI not showing)';

  @override
  String get manualSpecialMotherboardTip =>
      'Optional - check if your motherboard matches the description';

  @override
  String get manualCsrSettingTip =>
      'Optional - set according to needs, SIP is disabled by default';

  @override
  String get manualRenameCpuNameTip => 'Optional - customize CPU name';

  @override
  String get manualRenameCpuNameLabel =>
      'Input CPU name (leave blank to show Windows CPU name):';

  @override
  String get manualRenameCpuNameHint => 'Input CPU name here';

  @override
  String get manualBrandTip =>
      'Optional - check if the brand matches the description';

  @override
  String get manualBooterPlan1 => 'Plan 1';

  @override
  String get manualBooterPlan2 => 'Plan 2';

  @override
  String get manualBooterPlan3 => 'Plan 3';

  @override
  String get manualBooterPlan4 => 'Plan 4';

  @override
  String get manualBooterEbFix =>
      'Stuck on EB fix (Optional - usually default is fine):';

  @override
  String get manualAcpiPatch => 'ACPI - Patch';

  @override
  String get manualAcpiSsdt => 'ACPI - SSDT';

  @override
  String get manualBluetoothNvram => 'Bluetooth NVRAM params:';

  @override
  String get manualUsbWifiGithub => 'Visit author chris1111\'s repo';

  @override
  String get manualUsbWifiKexts =>
      'Add required Kexts for USB WiFi (Note: you also need to install the Wireless USB Big Sur Adapter client on macOS. Reboot if it doesn\'t take effect)';

  @override
  String get manualWifiCardSupport =>
      'The provided drivers support macOS Mojave 10.14 ~ macOS Sequoia 15! Note that Monterey 12 and above require OCLP patch to work properly!!!';

  @override
  String get manualWifiAtheros => 'Atheros';

  @override
  String get manualWifiIntel => 'Intel';

  @override
  String get manualWifiBrcm => 'Broadcom (Brcm)';

  @override
  String get manualWifiBluetoothDriver => 'Bluetooth Driver';

  @override
  String get manualWifiItlwmPlan =>
      'Plan 2, use itlwm (requires HeliPort), Intel WiFi driver. Conflicts with Plan 1, DO NOT use together!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'Plan 1, use AirportItlwm, Intel WiFi driver, adds all WiFi kexts (large size, choose carefully). Conflicts with Plan 2, DO NOT use together!!!';

  @override
  String get manualWifiAddAllDrivers =>
      'Add all WiFi drivers (large size, choose carefully)';

  @override
  String get manualLaptopMainly => '(Mainly for laptops)';

  @override
  String get manualLaptopRelatedDrivers => 'Laptop related drivers:';

  @override
  String get manualLaptopOtherFixes => 'Other fixes';

  @override
  String get manualLaptopOtherFixesTip =>
      'Other fixes (Not recommended unless necessary)';

  @override
  String get manualMotherboardSelectAll => 'Select All / None';

  @override
  String get manualMotherboardDetails => 'Details';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total Selected)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return 'Applied $count configs from $model';
  }

  @override
  String get manualMotherboardFromMbconfs => 'From mbconfs';

  @override
  String get manualIgpuRemark => '⚠️ Remark';

  @override
  String get manualIgpuSelectCpu => 'Select CPU';

  @override
  String get manualIgpuLoadConfig => 'Load iGPU config from CPU model';

  @override
  String get manualIgpuSelectProperties => 'Select properties to apply';

  @override
  String get manualIgpuPresetScheme => 'Preset Scheme';

  @override
  String get manualIgpuSelectGen => 'Select Generation';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'Selected: $model  $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'CPU Model';

  @override
  String get manualIgpuMatchOrNot => 'Check if matched';

  @override
  String get manualIgpuCpuGen => 'CPU Gen';

  @override
  String get manualIgpuByCpuModel => 'By CPU Model';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return 'Loaded $igpu iGPU config from $model, writing $count properties';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return 'From $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'Select CPU gen and model, then check properties to apply';

  @override
  String get manualIgpuModel => 'Model';

  @override
  String get manualFakeGpuSelect => 'Select GPU to spoof';

  @override
  String get settingsThemeColors => 'Color Theme';

  @override
  String get settingsThemeDefault => 'Default';

  @override
  String get sharedInvalidInput => 'Invalid input';

  @override
  String sharedRequiresHexChars(String length) {
    return 'Requires $length hexadecimal characters';
  }

  @override
  String get sharedExample73BF => 'Example: 73BF';

  @override
  String get sharedTipsLengthMustMatch => 'Tips length must match choices';

  @override
  String sharedCpuInfo(String description) {
    return '[CPU Info]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'Last macOS Version Supported Natively: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[BIOS Recommended to Disable]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'macOS Version Supported by Patch: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[BIOS Recommended to Enable]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'Initial macOS Version Supported Natively: $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'Invalid ACPI path';

  @override
  String get sharedFillAcpiPath => 'Fill in ACPI path';

  @override
  String get sharedFillPciPath => 'Fill in PCI path';

  @override
  String get sharedInvalidPciPath => 'Invalid PCI path';

  @override
  String get sharedGetModifiedOclp => 'Get modified OCLP';

  @override
  String hwConfigModelGenerated(String details) {
    return 'ConfigModel generated: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'Failed to get hardware info: $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'Admin password incorrect, cannot export ACPI tables';

  @override
  String get hwNoNativeInfoExportable =>
      'No native hardware info available to export';

  @override
  String get hwOutputtingOpencore => 'Outputting OpenCore EFI...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'Native ACPI tables export failed: $error';
  }

  @override
  String get hwSsdtProcessFailed => 'SSDT customization process failed.';

  @override
  String get hwConfigRuleRefactoring =>
      'Hardware ConfigModel generation rules refactoring';

  @override
  String get hwQueryUnsupported =>
      'Current platform does not support hardware info query';

  @override
  String hwPreparingSsdt(String items) {
    return 'Preparing to customize SSDT: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'This is an imported external hardware report, please refresh native hardware info first before exporting';

  @override
  String get hwRefreshingInfo => 'Refreshing hardware info';

  @override
  String get hwSsdtProcessEnded => 'SSDT customization process ended.';

  @override
  String get hwInfoUnsupported => 'Hardware info currently unsupported';

  @override
  String get hwEfiWrittenExtracting =>
      'EFI written, starting to extract ACPI and customize SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'Failed to configure EFI: $error';
  }

  @override
  String get hwReportFolderCleanFailed =>
      'Failed to clean hardware report folder';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'Failed to clean hardware report folder: $error';
  }

  @override
  String get hwExportingNativeReport => 'Exporting native hardware report...';

  @override
  String get hwAdminAuthCanceled =>
      'Admin authorization canceled, ACPI tables not exported';

  @override
  String get hwImportedNoAcpiDir =>
      'External hardware report imported but no ACPI tables directory provided, SSDT customization disabled.';

  @override
  String get hwExportAcpiUnsupported =>
      'Current platform does not support exporting ACPI tables';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'Hardware report exported to $reportDirectory, $msg';
  }

  @override
  String get hwInfoNotJson => 'Hardware info file is not a JSON object';

  @override
  String get hwUnsupported => 'Unsupported';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'Failed to clean ACPI tables temp directory: $error';
  }

  @override
  String get hwEfiConfigDone => 'EFI configuration complete.';

  @override
  String hwEfiConfigError(String error) {
    return 'Error configuring EFI: $error';
  }

  @override
  String get hwNativeAcpiExportFailed => 'Native ACPI tables export failed';

  @override
  String get hwAcpiToolNotReady => 'ACPI export tool is not ready';

  @override
  String get hwFailed => 'Failed';

  @override
  String hwImportReportFailed(String e) {
    return 'Failed to import hardware report: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'Native ACPI tables export complete: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'ACPI tables export failed: No valid ACPI tables found';

  @override
  String get hwUsingOriginalSsdt =>
      'Using original EFI SSDT, skipping SSDT customization.';

  @override
  String get hwWaitingRefresh => 'Waiting for hardware info refresh';

  @override
  String get hwInfoLoaded => 'Hardware info loaded successfully';

  @override
  String hwAcpiExportedTo(String path) {
    return 'ACPI tables exported to $path';
  }

  @override
  String get hwStartConfigEfi => 'Starting EFI configuration...';

  @override
  String get hwInfoLoadFailed => 'Failed to load hardware info';

  @override
  String get hwCache => 'Cache';

  @override
  String get hwInfoImportDone => 'Hardware info import complete';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'Hardware report and ACPI tables exported to $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid =>
      'ACPI tables directory is invalid, SSDT customization unavailable';

  @override
  String get hwExportingNativeAcpi => 'Exporting native ACPI tables...';

  @override
  String get hwGeneratingConfigModel =>
      'Generating ConfigModel based on hardware info...';

  @override
  String get hwInfoImported => 'Hardware info imported';

  @override
  String get hwAcpiExportFailedOrUnsup =>
      'ACPI tables export failed or unsupported';

  @override
  String get hwReportFolderCreateFailed =>
      'Failed to create hardware report folder';

  @override
  String get hwNoAdminPwd =>
      'Admin password not entered, cannot export ACPI tables';

  @override
  String get hwEfiConfigFailedCheck =>
      'EFI configuration failed, please check output path or logs.';

  @override
  String get hwLoadingInfo => 'Loading hardware info';

  @override
  String get hwDone => 'Done';

  @override
  String get hwAcpiExportFailedProcess =>
      'ACPI tables export failed: Export process execution failed';

  @override
  String get hwIgpuType => 'iGPU';

  @override
  String get hwGpuCompatible => 'Compatible';

  @override
  String get hwGpuIncompatibleNoDisplay =>
      'Incompatible, no direct display connection';

  @override
  String get hwGpuIncompatible => 'Incompatible';

  @override
  String get hwLaptop => 'Laptop';

  @override
  String get hwGpuLoadingCompat => 'Loading compatibility';

  @override
  String get hwGpuLimitedCompat => 'Limited compatibility';

  @override
  String get hwClickToCopy => 'Click to copy';

  @override
  String get hwCopiedToClipboard => 'Copied to clipboard';

  @override
  String get linkCantOpen => 'Cannot open link';

  @override
  String get clickToCopy => 'Click to copy';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get gpuCard => 'GPU';

  @override
  String gpuDeviceId(String id) {
    return 'Device ID: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'Core: $codename';
  }

  @override
  String get gpuCompatible => 'Compatible';

  @override
  String get gpuIncompatible => 'Incompatible';

  @override
  String get gpuIncompatibleNoDisplay => 'Incompatible, no direct display';

  @override
  String get gpuLimitedCompat => 'Limited compatibility';

  @override
  String get gpuLoadingCompat => 'Loading compatibility';

  @override
  String gpuSpoofId(String id) {
    return 'Spoof ID required: $id';
  }

  @override
  String get bootArgVerbose =>
      'Enable -v verbose mode (shows debug output during boot, useful for debugging startup issues)';

  @override
  String get bootArgKeepsyms =>
      'Print kernel crash symbols to help diagnose issues. Usually used with debug=0x100. Strongly recommended during initial boot debugging.';

  @override
  String get bootArgDebug0x100 =>
      'Prevent automatic restart on kernel panic, allowing you to view crash logs. Strongly recommended during initial boot debugging.';

  @override
  String get bootArgWatchdog0 =>
      'Disable watchdog to prevent accidental panic-triggered restarts during boot debugging.';

  @override
  String get bootArgSlide0 =>
      'Disable KASLR to fix memory conflicts causing early boot kernel panics. Used for debugging.';

  @override
  String get bootArgNoCompatCheck =>
      'Skip model compatibility check during boot to avoid the prohibited symbol. Note: does not bypass installer model check.';

  @override
  String get bootArgCpus1 =>
      'Enable only 1 CPU core (for X58/X79/X99/X299 multi-core server CPUs with kernel panic issues during early installation debugging).';

  @override
  String get bootArgBetaFix =>
      'Fix issues that may appear in the latest macOS (mainly Beta), such as audio, Bluetooth, CPU frequency anomalies. Strongly recommended on Beta versions.';

  @override
  String get bootArgAmfi0x80 =>
      'Disable AMFI for newer GPUs (HD4000+, GT710+ Kepler) or when patching Wi-Fi drivers. Do NOT use with amfi_get_out_of_my_way=0x1. Only effective with SIP disabled.';

  @override
  String get bootArgAmfiGetOut =>
      'Disable AMFI for older GPUs (e.g., GT240) or when patching Wi-Fi drivers. Do NOT use with amfi=0x80. Only effective with SIP disabled.';

  @override
  String get bootArgIpcControl =>
      'Fix app crashes (e.g., Baidu Netdisk) after disabling AMFI. Only effective with SIP disabled.';

  @override
  String get bootArgAmfiPassBeta =>
      'Ensure AMFIPass.kext works in the latest macOS Tahoe 26 to continue bypassing AMFI security checks.';

  @override
  String get bootArgRevpatch =>
      'Fix macOS OTA update issues after disabling SIP or SecureBootModel, and fix custom CPU name display.';

  @override
  String get bootArgDisableGfxFirmware =>
      'Disable Apple Graphics Firmware loading to avoid hangs during startup due to firmware load failure (Intel iGPU only).';

  @override
  String get bootArgWegNoIgpu =>
      'Disable Intel iGPU (recommended when iGPU cannot be driven or doesn\'t support hardware acceleration).';

  @override
  String get bootArgIgfxVesa =>
      'Disable Intel iGPU acceleration (use when system won\'t start after applying OCLP iGPU patch, debug only).';

  @override
  String get bootArgIgfxRpsc =>
      'Fix and improve Intel iGPU performance (e.g., fix 4K HEVC encoding, resolution and FPS issues).';

  @override
  String get bootArgIgfxMpc =>
      'Fix iGPU resolution issues by forcing maximum pixel clock override, removing macOS default resolution/refresh rate limits.';

  @override
  String get bootArgGfxfw2 =>
      'Enable full iGPU firmware loading to improve utilization and performance. May cause boot failure — use with caution.';

  @override
  String get bootArgCdclk =>
      'Fix kernel panic on 10th gen Ice Lake due to Core Display Clock (CDCLK) frequency being too low.';

  @override
  String get bootArgIgfxdbeo =>
      'Fix kernel panic on 10th gen Ice Lake where the driver incorrectly calculates DVMT pre-allocated memory size.';

  @override
  String get bootArgIceLakeDisplay =>
      'Fix display corruption lasting 7–15 seconds on 10th gen Ice Lake laptops at boot.';

  @override
  String get bootArgIgfxNoTelemetry =>
      'Disable iGPU telemetry module loading during boot. Some laptops (especially Chromebooks) may hang at boot when this module loads.';

  @override
  String get bootArgWegNoEgpu =>
      'Disable discrete GPU (recommended when the dGPU on Intel dual-GPU laptops — typically NVIDIA — cannot be driven).';

  @override
  String get bootArgNvDisable =>
      'Disable NVIDIA driver (only for debugging incompatible NVIDIA GPUs).';

  @override
  String get bootArgUnfairGva =>
      'Fix hardware DRM support on AMD GPUs (enables DRM-protected content like streaming on supported AMD GPUs).';

  @override
  String get bootArgRadpg15 =>
      'Fix display corruption (scrambled/yellow screen) on older AMD GPUs (HD7750, HD7850 with GCN cores like HD77XX/HD78XX/HD79XX).';

  @override
  String get bootArgAmdNoAccel =>
      'Disable ATI/AMD GPU acceleration (use when system won\'t start after OCLP GPU patch, debug only).';

  @override
  String get bootArgRaddvi =>
      'Fix DVI output display on older AMD GPUs (290X, 370, etc.).';

  @override
  String get bootArgRadcodec =>
      'Fix VDA hardware video encoding support for officially unsupported AMD GPUs (e.g., RX550 Lexa core).';

  @override
  String get bootArgNgfxFermi =>
      'Fix GPU driver issues for older NVIDIA Fermi/Maxwell/Pascal cards (GT610, GTX750, GTX960, GTX1050) on macOS Big Sur 11+. Must apply OCLP GPU patch after entering system! Kepler does NOT need this.';

  @override
  String get bootArgApplbkl3 =>
      'Enable PWM backlight control for AMD Radeon RX 5000 series GPUs.';

  @override
  String get bootArgAgdpmodIgnore =>
      'Fix black screen or display issues on some GPUs by completely ignoring AppleGraphicsDevicePolicy.kext restrictions. Use with WhateverGreen.kext.';

  @override
  String get bootArgAgdpmodPikera =>
      'Fix black screen at boot for AMD Navi RX5XXX/RX6XXX GPUs (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.) by replacing board-id with board-ix. Use with WhateverGreen.kext.';

  @override
  String get bootArgAgdpmodVit9696 =>
      'Fix black screen after sleep/wake on RX470/RX570 GPUs by disabling board-id check in AppleGraphicsDevicePolicy. Use with WhateverGreen.kext.';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Fix black screen on Ventura+ for AMD RX5XX/RX5XXX/RX6XXX natively-supported GPUs on Intel 3rd gen or older. Apply OCLP GPU patch after booting, then remove this argument.';

  @override
  String get bootArgBrcmfx =>
      'Fix slow speed on some Broadcom Wi-Fi cards by changing the country code to HK. You can also improve by changing the router channel.';

  @override
  String get bootArgVsmcgen =>
      'Fix ramrod code hang and SMC emulator corruption issues.';

  @override
  String get bootArgSwdPanic =>
      'Prevent device restart after sleep to help collect kernel crash logs and debug sleep issues.';

  @override
  String get bootArgCtrsmt =>
      'Improve topology detection and scheduling for Intel 12th gen+ hybrid (P+E) CPUs. Performance gain not guaranteed — test before enabling. Requires CpuTopologyRebuild.kext.';

  @override
  String get bootArgDarkwake0 =>
      'Completely disable Darkwake mode and use traditional sleep mode. Primarily fixes wake black screen and automatic wake issues.';

  @override
  String get bootArgForceRenderStandby =>
      'Disable iGPU RC6 render standby to fix NVMe kernel panic caused by iGPU RC6 during sleep.';

  @override
  String get bootArgI2cForcePolling =>
      'Force I2C trackpad to use polling mode instead of interrupt-driven mode (interrupt mode usually requires SSDT customization).';

  @override
  String get kextLiluDesc =>
      'Required base driver providing extensibility and compatibility for macOS. All plugin-type kexts depend on it.';

  @override
  String get kextVirtualSMCDesc =>
      'Required SMC emulator. Simulates Apple SMC on non-Apple hardware, providing sensors, fan control, and power management. macOS cannot run without this.';

  @override
  String get kextWhateverGreenDesc =>
      'GPU graphics driver support. Strongly recommended for most users. MacPro7,1 with AMD dGPUs (RX460, RX560+) may uncheck. Usually conflicts with NootRX/NootedRed — do not select together during installation.';

  @override
  String get kextAppleALCDesc =>
      'Use AppleALC to spoof the built-in audio codec (more complete solution, preferred choice).';

  @override
  String get kextVoodooHDADesc =>
      'Universal audio driver VoodooHDA (loaded during boot, only supports macOS Big Sur 11.2.3 and below; higher versions require injecting into the system kernel extension folder).';

  @override
  String get kextUSBInjectAllDesc =>
      'Generic USB injection solution, the default choice when USB customization has not been done.';

  @override
  String get kextUSBToolBoxDesc =>
      'USBToolBox solution, typically used together with a customized UTBMap.kext.';

  @override
  String get kextBatteryV1Desc =>
      'Battery driver solution 1 (for laptops with 3rd gen Intel or older platforms).';

  @override
  String get kextBatteryV2Desc =>
      'Battery driver solution 2 (for laptops with 3rd gen Intel or newer platforms).';

  @override
  String get kextAmbientLightDesc =>
      'Ambient light sensor (automatic screen brightness). Do not use if you have no ambient light sensor, as it may cause issues.';

  @override
  String get kextAsusNBFnKeysDesc =>
      'ASUS laptop fan control, power management and other system sensor optimizations. Not recommended for non-ASUS machines.';

  @override
  String get kextLenovoDesc =>
      'Lenovo laptop fan control, power management and other system sensor optimizations. Not recommended for non-Lenovo machines.';

  @override
  String get kextDellDesc =>
      'Dell laptop dedicated sensor for more accurate fan monitoring and control. Not recommended for non-Dell machines.';

  @override
  String get kextNootRXDesc =>
      'Support officially unsupported RX6XXX dGPUs (RX6700, RX6750XT, RX6750GRE, etc.). Conflicts with WhateverGreen — do not select together during installation.';

  @override
  String get kextBatteryFixDesc =>
      'Battery reading fix, repairs certain battery display issues.';

  @override
  String get kextNVMeFixDesc =>
      'Improve compatibility for non-Apple NVMe SSDs and reduce idle power consumption. Incompatible NVMe drives may still crash. Compatible NVMe drives may kernel panic with this driver — use with caution.';

  @override
  String get kextFeatureUnlockDesc =>
      'Unlock Universal Control, Sidecar, and other features on unsupported Mac models.';

  @override
  String get kextHibernationFixDesc =>
      'Fix common hibernation and sleep-related issues.';

  @override
  String get kextHoRNDIS =>
      'Allow macOS to use Android device network tethering via USB.';

  @override
  String get kextCPUFriendDesc =>
      'CPU frequency scaling driver, primarily providing frequency scaling support for MacPro7,1 on 11th gen and newer platforms.';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'CPUFriend companion data driver, providing CPU frequency scaling data for specific machine models.';

  @override
  String get kextAppleIGHDA =>
      'Fix Intel iGPU HDMI audio issues on some systems.';

  @override
  String get kextNoTouchID =>
      'Fix inability to log in to Apple ID and iCloud, usually for laptops without a local wired network card.';

  @override
  String get kextAppleRTCDesc =>
      'Fix conflicts between macOS AppleRTC and PC BIOS on newer platforms, e.g., RTC causing hangs, sudden restarts, or immediate wake from sleep.';

  @override
  String get kextPS2KBMouseDesc =>
      'PS/2 keyboard and mouse driver (for desktop motherboards with PS/2 round ports).';

  @override
  String get kextPS2KeyboardDesc =>
      'PS/2 keyboard driver (for desktop motherboards with PS/2 round keyboard ports).';

  @override
  String get kextPS2MouseDesc =>
      'PS/2 mouse driver (for desktop motherboards with PS/2 round mouse ports).';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Microsoft Surface dedicated keyboard and trackpad driver.';

  @override
  String get kextBrightnessKeysDesc => 'Brightness shortcut key fix.';

  @override
  String get kextGenericUSBXHCIDesc =>
      'USB 3.0 controller compatibility fix for older or AMD platforms.';

  @override
  String get kextXLNCUSBFixDesc =>
      'Fix USB controller compatibility issues on older AMD platforms (FM1/FM2/AM3).';

  @override
  String get kextRealtekCardReaderDesc =>
      'Realtek SD card reader driver (use with RealtekCardReaderFriend).';

  @override
  String get kextRadeonSensorDesc =>
      'Optimize AMD Radeon GPU performance, but may cause system crashes or boot failure in some scenarios — use with caution.';

  @override
  String get hwStatusIdle => 'Waiting to refresh hardware info';

  @override
  String get hwStatusLoading => 'Loading hardware info';

  @override
  String get hwStatusRefreshing => 'Refreshing hardware info';

  @override
  String get hwStatusComplete => 'Hardware info loaded';

  @override
  String get hwStatusFailed => 'Failed to load hardware info';

  @override
  String get hwStatusUnsupported => 'Hardware info not supported';

  @override
  String get hwStatusImported => 'Hardware info imported';

  @override
  String get hwPlatformUnsupported =>
      'Current platform does not support hardware info query';

  @override
  String hwFetchFailed(String error) {
    return 'Failed to fetch hardware info: $error';
  }

  @override
  String get hwExportWarning =>
      'This is an imported report. Please refresh local hardware info before exporting.';

  @override
  String get hwNoLocalInfo => 'No local hardware info available to export';

  @override
  String get hwFolderCleanFailed => 'Failed to clean hardware report folder';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'Failed to clean hardware report folder: $error';
  }

  @override
  String get hwFolderCreateFailed => 'Failed to create hardware report folder';

  @override
  String get hwExporting => 'Exporting local hardware report...';

  @override
  String hwExportSuccess(String path) {
    return 'Hardware report and ACPI tables exported to $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'Hardware report exported to $path, $error';
  }

  @override
  String get hwAcpiExporting => 'Exporting local ACPI tables...';

  @override
  String get hwAcpiExportFailed => 'Failed to export local ACPI tables';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'Local ACPI tables exported: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'Failed to export local ACPI tables: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'Current platform does not support exporting ACPI tables';

  @override
  String get hwAcpiAuthCancelled =>
      'Admin authorization cancelled. ACPI tables not exported.';

  @override
  String get hwAcpiNoPassword =>
      'No admin password provided. Cannot export ACPI tables.';

  @override
  String get hwAcpiWrongPassword =>
      'Incorrect admin password. Cannot export ACPI tables.';

  @override
  String get hwImportNotJson => 'Hardware info file is not a JSON object';

  @override
  String get hwImportSuccess => 'Hardware info imported';

  @override
  String get hwImportAcpiInvalid =>
      'Invalid ACPI tables directory. Custom SSDT unavailable.';

  @override
  String hwImportFailed(String error) {
    return 'Failed to import hardware report: $error';
  }

  @override
  String get hwConfigStart => 'Starting EFI configuration...';

  @override
  String get hwConfigGenerating =>
      'Generating ConfigModel from hardware info...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'Preparing custom SSDT: $items';
  }

  @override
  String get hwConfigSsdtSkip =>
      'Using original EFI SSDT. Skipping custom SSDT.';

  @override
  String get hwConfigSsdtDisabled =>
      'Imported external hardware report without ACPI tables directory. Custom SSDT disabled.';

  @override
  String get hwConfigExporting => 'Exporting OpenCore EFI...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'EFI configuration failed: $error';
  }

  @override
  String get hwConfigRebuilding =>
      'Hardware auto-generation ConfigModel rules are being refactored';

  @override
  String get cpuUnknown => 'Unknown';

  @override
  String get platDesktop => 'Desktop';

  @override
  String get platLaptop => 'Laptop';

  @override
  String get platMini => 'Mini PC';

  @override
  String get platServer => 'Server';

  @override
  String get csrEnabled =>
      'Enable SIP to enhance system security. Recommended if not using OCLP for GPU/WiFi patches.';

  @override
  String get csrPartial => 'Disable SIP Option 1';

  @override
  String get csrPartialDesc =>
      'Partially disable SIP. Recommended for Big Sur or newer when using OCLP for GPU/WiFi patches.';

  @override
  String get csrFully => 'Disable SIP Option 2';

  @override
  String get csrFullyDesc =>
      'Fully disable SIP. Preferred for Big Sur or newer when using OCLP for GPU/WiFi patches.';

  @override
  String get uiScaleAuto =>
      'Auto-adapt: Automatically adjust OpenCore boot UI scale based on display resolution.';

  @override
  String get uiScaleStandard =>
      'Standard resolution: Suitable for 720p, 1080p, 1440p displays.';

  @override
  String get uiScaleHigh =>
      'High resolution: Suitable for 4K/5K displays (fixes small UI elements in OpenCore boot menu).';

  @override
  String get procDefault => 'Do not modify ProcessorType';

  @override
  String get procKeep => 'Keep system default CPU type display';

  @override
  String get brandAsus => 'ASUS';

  @override
  String get brandGigabyte => 'GIGABYTE';

  @override
  String get brandAsrock => 'ASRock';

  @override
  String get brandMsi => 'MSI';

  @override
  String get brandDell => 'Dell';

  @override
  String get brandLenovo => 'Lenovo';

  @override
  String get brandSony => 'VAIO';

  @override
  String get brandHp => 'HP';

  @override
  String get brandGoogle => 'Chromebook';

  @override
  String get brandMicrosoft => 'Microsoft Surface';

  @override
  String get mbNormal => 'Standard Motherboard';

  @override
  String get mbOemUsb =>
      'Some OEM motherboards have USB ownership release issues: EHCI Hand-off failure';

  @override
  String get navAppGuide => 'App Guide';

  @override
  String get appGuideTitle => 'RapidEFI User Guide';

  @override
  String get logMsg001 => '=> Failed to find LPC(B)! Operation terminated!';

  @override
  String get logMsg002 =>
      'No valid DSDT found! Please select a DSDT file or a file directory containing DSDT first!';

  @override
  String get logMsg003 =>
      'The iasl tool preparation failed! Please update or use the built-in iasl tool first!';

  @override
  String get logMsg004 => 'No valid .aml file found!\\n';

  @override
  String get logMsg005 =>
      'No valid DSDT found! Please select a DSDT file or a file directory containing DSDT first!';

  @override
  String get logMsg006 =>
      'Multiple DSDT files are currently detected and only one is allowed to be processed at a time. Please keep one DSDT file and remove the others and try again.\\n';

  @override
  String get logMsg007 =>
      'Invalid DSDT file! Please reselect a valid DSDT file!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 Decompilation failed!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'Compilation result: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'Error occurred while processing IntObj type: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'Error processing MethodObj type: $arg0';
  }

  @override
  String get logMsg012 => 'No IRQ information found!';

  @override
  String get logMsg013 =>
      'The current options or custom IRQs are empty! Unable to generate IRQ patch!';

  @override
  String get logMsg014 => '=> No IRQ information found!';

  @override
  String get logMsg015 =>
      'Custom IRQ list format wrong! ! ! Separate devices with spaces and IRQs with commas! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> _HID parsing error: $arg0';
  }

  @override
  String get logMsg017 => 'No valid device found, skipping HPET operation!';

  @override
  String get logMsg018 =>
      'No valid IRQs were provided or the IRQs are empty! Operation aborted!';

  @override
  String logMsg019(String arg0) {
    return '=> Unable to locate $arg0._CRS! Operation terminated!';
  }

  @override
  String logMsg020(String arg0) {
    return '=> Unable to locate $arg0._CRS!';
  }

  @override
  String get logMsg021 => '=> _CRS appears to have been named XCRS!';

  @override
  String get logMsg022 =>
      '=> Please disable the renaming of the device from _CRS to XCRS in DSDT and try again after restarting!\\n';

  @override
  String get logMsg023 => '=> Unable to determine memory access type!';

  @override
  String get logMsg024 => '=> Cannot convert Base or Length to integer!';

  @override
  String get logMsg025 => '=> Not found!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> Use default value $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> Not found!';

  @override
  String get logMsg028 => '=> Nothing to patch!';

  @override
  String logMsg029(String arg0, String arg1) {
    return 'Missing IRQ patch ending ($arg1) for $arg0! Skipped…';
  }

  @override
  String get logMsg030 =>
      'The following may not be unique and are disabled by default! \\n';

  @override
  String get logMsg031 => 'No valid UID provided, abort operation!';

  @override
  String logMsg032(String arg0) {
    return '$arg0 is a custom UID that may require manual customization or may not be supported at all!';
  }

  @override
  String get logMsg033 => 'No valid iGPU path found in passed ACPI table!\\n';

  @override
  String logMsg034(String arg0) {
    return 'Note: iGPU path is guessed as $arg0\\n Please verify before use!';
  }

  @override
  String logMsg035(String arg0) {
    return 'Note: The iGPU path has been manually set to $arg0. Please be sure to confirm whether the path is correct before use!';
  }

  @override
  String get logMsg036 =>
      '=> Named EC device found, no need to counterfeit!\\n';

  @override
  String get logMsg037 =>
      'USBX attribute patch cannot be empty! Operation terminated!';

  @override
  String get logMsg038 => 'No valid processor device found!';

  @override
  String get logMsg039 =>
      '=> A valid PNP0B00 (RTC) device has been found and verified, no patch or SSDT required! Operation terminated!';

  @override
  String get logMsg040 =>
      '=> ACPI000E (AWAC) device not found, no patch or SSDT required! Operation terminated!';

  @override
  String get logMsg041 => '=> No device found! Operation terminated!';

  @override
  String get logMsg042 => 'No match found for the following path:';

  @override
  String get logMsg043 => 'No matches found!';

  @override
  String get logMsg044 =>
      'Note that the device path must start with the following PciRoot() to match the current ACPI table:';

  @override
  String logMsg045(String arg0) {
    return '=> Not found, does not appear to be a valid $arg0 table!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 value not found! Operation aborted!';
  }

  @override
  String get logMsg047 =>
      'Reset Register Address value not found! Operation aborted!';

  @override
  String logMsg048(String arg0) {
    return 'Unable to resolve Processor ID in $arg0, aborting patching';
  }

  @override
  String logMsg049(String arg0) {
    return 'First CPU in $arg0 already matched, no need to patch the APIC table!';
  }

  @override
  String get logMsg050 => '=> No match for Processor found! Operation aborted!';

  @override
  String get logMsg051 => 'Please select IMEI patch!';

  @override
  String logMsg052(String arg0) {
    return '=> IMEI device found at $arg0, no need to bridge for spoofing! Operation aborted!';
  }

  @override
  String get logMsg053 => '=> PCI root device not found! Operation aborted!';

  @override
  String get logMsg054 =>
      '=> SSDT spoofing IMEI is not enabled, device-id must be set via DeviceProperties!';

  @override
  String get logMsg055 =>
      'UNC (PNP0A03) device not found! No SSDT-UNC patch required! Operation aborted! \\n';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: _STA method does not exist!';
  }

  @override
  String get logMsg057 =>
      '=> DMA (PNP0200) device not found in any of the above ACPI tables! Operation aborted! \\n';

  @override
  String get logMsg058 =>
      '=> The _PTS method is not found, the _PTS scheduling entry and rename patch will not be generated!';

  @override
  String get logMsg059 =>
      '=> The _WAK method is not found, the _WAK scheduling entry and rename patch will not be generated!';

  @override
  String get logMsg060 =>
      '=> Scheduleable _PTS/_WAK method not found, SSDT-SleepHook skipped!\\n';

  @override
  String get logMsg061 =>
      '=> _SST method not found in any of the above ACPI tables! Operation aborted! \\n';

  @override
  String get logMsg062 =>
      '=> The PNP0C0D device was not found in any of the above ACPI tables! Operation aborted! \\n';

  @override
  String get logMsg063 =>
      '=> System state is not supported: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> Note: The current firmware does not support the _S3 state. If the BIOS setting does not disable the S3 function, then the machine does not support S3 sleep!';

  @override
  String get logMsg065 =>
      '=> Note: This is an AOAC machine, and macOS does not support S3 sleep!';

  @override
  String get logMsg066 =>
      '=> It is currently not detected whether it is an AOAC machine, please confirm by yourself!';

  @override
  String get logMsg067 => 'Low Power S0 Idle (V5) value not found!';

  @override
  String get logMsg068 =>
      'Currently an AOAC machine, macOS does not support S3 sleep!';

  @override
  String get logMsg069 =>
      '=> Name or Method _S3 not found, the current configuration does not support S3 sleep! The operation has been terminated!';

  @override
  String logMsg070(String arg0) {
    return '=> Method $arg0 found!';
  }

  @override
  String get logMsg071 =>
      '=> The current method has been renamed and may not be the original ACPI table! Please re-obtain the original ACPI table and try again!\\n';

  @override
  String get logMsg072 =>
      '=> The LID (PNP0C0D) device was not found in any of the above ACPI tables! Operation terminated!\\n';

  @override
  String get logMsg073 =>
      '=> Method _LID was not found in any of the above ACPI tables! Operation terminated!\\n';

  @override
  String get logMsg074 =>
      '=> The PWRB (PNP0C0C) device was not found in the above ACPI table! Just fake one! \\n';

  @override
  String logMsg075(String arg0) {
    return '=> No need to counterfeit SLPB device, PNP0C0E device has been found at $arg0!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> PNP0C0E Device $arg0 has _STA method!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E Device $arg0 does not exist _STA method!';
  }

  @override
  String get logMsg078 =>
      '=> No matching XHC/XHCI/XDCI/CNVW devices found! Operation terminated! \\n';

  @override
  String get logMsg079 => '=> GPRW method not found!';

  @override
  String get logMsg080 =>
      '=> XPRW method found! The current method has been renamed and may not be the original ACPI table! Please re-obtain the original ACPI table and try again!\\n';

  @override
  String get logMsg081 => '=> XPRW method not found! Operation terminated!';

  @override
  String get logMsg082 => '=> UPRW method not found!';

  @override
  String get logMsg083 =>
      '=> XPRW method found! The current method has been renamed and may not be the original ACPI table! Please re-obtain the original ACPI table and try again!\\n';

  @override
  String get logMsg084 => '=> XPRW method not found! Operation terminated!';

  @override
  String get logMsg085 => '=> GPI0 device not found! Operation terminated! \\n';

  @override
  String get logMsg086 => '=> _STA method not found! Operation terminated! \\n';

  @override
  String get logMsg087 =>
      '=> The current Processor processor naming scheme complies with the CPU naming specification! No need for this SSDT! The operation has been terminated!';

  @override
  String get logMsg088 =>
      '=> There is no PLTF device, the current Intel platform does not require this SSDT! The operation has been terminated...';

  @override
  String get logMsg089 =>
      '=> No CPU device meeting the requirements was found, no SSDT-CPUR patch required! Operation terminated!';

  @override
  String get logMsg090 =>
      '=> SSDT spoofing IMEI is not enabled, device-id must be set via DeviceProperties!';

  @override
  String get logMsg091 =>
      'No valid ACPI device path provided! Operation aborted!';

  @override
  String logMsg092(String arg0) {
    return 'The corresponding _ON or _OFF method for $arg0 was not found in DSDT or SSDT! Operation aborted!';
  }

  @override
  String logMsg093(String arg0) {
    return 'The _PS3 or _DSM method corresponding to $arg0 was not found in the DSDT or SSDT! Operation aborted!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> There is a _PRT method for device $arg0, which may have hidden the real device and will inject a BRG0 bridge device!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> Device $arg0 does not exist!';
  }

  @override
  String logMsg096(String arg0) {
    return 'Current device path $arg0 may hide the real device!';
  }

  @override
  String logMsg097(String arg0) {
    return '=> There is an overflow in the _ADR address of the graphics card device $arg0!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> Backtrack to the parent device path: $arg0 and inject a BRG0 bridge device!';
  }

  @override
  String logMsg099(String arg0) {
    return 'Unknown masking method: $arg0, operation aborted.';
  }

  @override
  String logMsg100(String arg0) {
    return 'Some methods not found: $arg0';
  }

  @override
  String get logMsg101 =>
      '=> Unable to find a valid bus device, the operation has been terminated!';

  @override
  String get logMsg102 =>
      'No valid graphics card ACPI path provided! Operation terminated!';

  @override
  String get logMsg103 =>
      'No valid counterfeit graphics card ID provided! Operation terminated!';

  @override
  String get logMsg104 =>
      'No valid counterfeit graphics card name provided! No counterfeit names will be injected!';

  @override
  String logMsg105(String arg0) {
    return 'Current graphics card path $arg0 may hide the real device!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> Device $arg0 has a _PRT method, which may have hidden the real device and will inject a GFX0 device!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> Device $arg0 not found in DSDT or SSDT! Operation aborted!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> There is an overflow in the _ADR address of the graphics card device $arg0!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> Backtrack to the parent device path: $arg0 and inject a GFX0 device!';
  }

  @override
  String get logMsg110 =>
      'There is an address _ADR overflow in the device path!';

  @override
  String get logMsg111 =>
      'The following devices may affect property injection:';

  @override
  String get logMsg112 => 'Locating LPC(B)/SBRG…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 found in $arg0';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 found in $arg0';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 found in $arg0';
  }

  @override
  String logMsg116(String arg0) {
    return 'DSDT path provided: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'The supplied DSDT path is invalid: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'Collecting valid ACPI tables from directory $arg0...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'A total of $arg0 ACPI tables were found, of which $arg1 are valid:';
  }

  @override
  String get logMsg120 => 'Several files with DSDT signatures were verified:';

  @override
  String logMsg121(String arg0) {
    return 'About to decompile $arg0 to verify if pre-made patches need to be applied...';
  }

  @override
  String get logMsg122 => '=> No need to apply pre-made patches!\\n';

  @override
  String logMsg123(String arg0) {
    return 'Loading $arg0...';
  }

  @override
  String get logMsg124 => 'Processing completed!\\n';

  @override
  String get logMsg125 => 'The file or folder passed in does not exist!\\n';

  @override
  String get logMsg126 => 'Handling problematic DSDT files...';

  @override
  String get logMsg127 => 'Check available pre-made patches…';

  @override
  String logMsg128(String arg0) {
    return 'Loading $arg0 file into memory...';
  }

  @override
  String get logMsg129 => 'Processing patches one by one...\\n';

  @override
  String get logMsg130 => '=> Positioned, applying…';

  @override
  String get logMsg131 =>
      '=> The DSDT file from the previous question was decompiled successfully!';

  @override
  String logMsg132(String arg0) {
    return '=> The patch has been applied to the modified file and the file is saved in the Results folder:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return 'Loading valid ACPI tables in $arg0...';
  }

  @override
  String get logMsg134 => 'Decompilation of all valid ACPI tables completed!';

  @override
  String logMsg135(String arg0) {
    return 'Total time taken: $arg0 seconds\\n';
  }

  @override
  String logMsg136(String arg0) {
    return 'Compiling $arg0.aml successfully!';
  }

  @override
  String logMsg137(String arg0) {
    return 'Delete $arg0.dsl source file';
  }

  @override
  String logMsg138(String arg0) {
    return '=> Scope not found for device $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> Unable to locate $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return 'Locating $arg0 ($arg1) device...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> Unable to target any $arg0 devices';
  }

  @override
  String logMsg142(String arg0) {
    return '=> found $arg0';
  }

  @override
  String get logMsg143 => '=> Looking for verification _STA…';

  @override
  String get logMsg144 =>
      '=> _STA has been renamed to XSTA! Skip other checks…';

  @override
  String get logMsg145 =>
      '=> Please disable the renaming of the device from _STA to XSTA in DSDT and try again after restarting!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 variable $arg1';
  }

  @override
  String get logMsg147 => '=> _STA method/name not found';

  @override
  String logMsg148(String arg0) {
    return '=> Found _STA method at index $arg0!';
  }

  @override
  String get logMsg149 => '=> Generating _STA to XSTA rename';

  @override
  String get logMsg150 =>
      '=> There are multiple return statements, or the return value is not Return (0x0F)';

  @override
  String get logMsg151 => 'Gathering ACPI device information...';

  @override
  String get logMsg152 => 'Gathering ACPI device paths...';

  @override
  String get logMsg153 => 'Rechecking orphaned devices...';

  @override
  String logMsg154(String arg0) {
    return 'Current custom IRQs: $arg0';
  }

  @override
  String get logMsg155 => '=> Example: RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> Found _HID: $arg0';
  }

  @override
  String get logMsg157 => 'Locating PNP0103 (HPET) device…';

  @override
  String logMsg158(String arg0) {
    return '=> positioned at $arg0';
  }

  @override
  String get logMsg159 => 'Locating _CRS method/name for HPET...';

  @override
  String logMsg160(String arg0) {
    return '=> Located at $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> Found at index: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> Type: $arg0';
  }

  @override
  String get logMsg163 => '=> Checking Memory32Fixed…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> Get $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'Creating IRQ patch...';

  @override
  String get logMsg166 => 'Checking IRQ…';

  @override
  String get logMsg167 => 'IRQ is empty! Skip...\\n';

  @override
  String get logMsg168 => 'No match found.';

  @override
  String logMsg169(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg170 => 'Creating a fake HPET device...';

  @override
  String logMsg171(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> UID used: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> Applicable platforms: $arg0';
  }

  @override
  String get logMsg174 =>
      'No valid iGPU path provided, trying to find automatically...';

  @override
  String get logMsg175 => 'Looking for iGPU device at 0x00020000…';

  @override
  String logMsg176(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> iGPU device found at $arg0!';
  }

  @override
  String get logMsg178 => 'iGPU device not found by address!';

  @override
  String get logMsg179 => 'Searching for common iGPU names…';

  @override
  String logMsg180(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> Possible iGPU device found at $arg0';
  }

  @override
  String logMsg182(String arg0) {
    return 'Possible iGPU device found at $arg0\\n';
  }

  @override
  String logMsg183(String arg0) {
    return 'It has been manually set to $arg0 according to the given iGPU path \\n';
  }

  @override
  String logMsg184(String arg0) {
    return 'Invalid iGPU path: $arg0';
  }

  @override
  String get logMsg185 => 'Checking ACPI table for native PNLF device...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> Native PNLF device found at $arg0: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> Native PNLF needs to be renamed to XNLF, renaming patch is being generated...';

  @override
  String get logMsg188 => '=> Native PNLF device not found!';

  @override
  String get logMsg189 => '=> No need to generate PNLF to XNLF rename patch!';

  @override
  String logMsg190(String arg0) {
    return 'Name (NBCF, 0x00) detected in $arg0, generating patch...';
  }

  @override
  String logMsg191(String arg0) {
    return 'Name (NBCF, Zero) detected in $arg0, generating patch...';
  }

  @override
  String get logMsg192 => 'Locating PNP0C09(EC) device...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 PNP0C09 (EC) devices found at $arg0';
  }

  @override
  String get logMsg194 => '=> Verifying...';

  @override
  String logMsg195(String arg0) {
    return '=> found $arg0';
  }

  @override
  String get logMsg196 =>
      '=> PNP0C09 (EC) device named EC, renaming in progress';

  @override
  String get logMsg197 => '=> Valid PNP0C09 (EC) device';

  @override
  String get logMsg198 => '=> _STA is correctly enabled, skipping rename';

  @override
  String get logMsg199 => '=> Invalid PNP0C09 (EC) device';

  @override
  String get logMsg200 =>
      '=> No valid PNP0C09 (EC) device found, just fake an EC device';

  @override
  String logMsg201(String arg0) {
    return 'Creating $arg0.dsl…';
  }

  @override
  String logMsg202(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg203 => 'Determining CPU naming scheme...';

  @override
  String logMsg204(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> Processor found: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> No Processor object found...';

  @override
  String get logMsg208 => '=> ACPI0007 device not found…';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 ACPI0007 devices found';
  }

  @override
  String logMsg210(String arg0) {
    return '=> Found parent device at $arg0, processing...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> Checking $arg0…';
  }

  @override
  String get logMsg212 => '=> Not found! jump over…';

  @override
  String get logMsg213 => '=> Not found! jump over…';

  @override
  String logMsg214(String arg0) {
    return 'Processing $arg0 valid processor devices...';
  }

  @override
  String get logMsg215 => 'Failed to obtain LPC Name...';

  @override
  String logMsg216(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg217 => '=> Need to counterfeit RTC!';

  @override
  String get logMsg218 => '=> Checking _CRS…';

  @override
  String get logMsg219 => '=> _CRS is a buffer, checking RTC range...';

  @override
  String get logMsg220 =>
      '=> Unable to adjust value, unable to verify RTC range.';

  @override
  String get logMsg221 => '=> 收集值失败, 无法验证 RTC 范围.';

  @override
  String get logMsg222 => '=> _CRS is a method and cannot verify RTC range!';

  @override
  String get logMsg223 => '=> Generating _CRS to XCRS rename…';

  @override
  String logMsg224(String arg0) {
    return '=> Found at index $arg0';
  }

  @override
  String get logMsg225 => '=> not found';

  @override
  String logMsg226(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String get logMsg228 => 'Collecting RHUB/HUBN/URTH devices...';

  @override
  String logMsg229(String arg0) {
    return '=> $arg0 devices found';
  }

  @override
  String get logMsg230 => '=> Need to be renamed!';

  @override
  String logMsg231(String arg0) {
    return '=> Check $arg0: whether the _STA method exists';
  }

  @override
  String logMsg232(String arg0) {
    return '=> Found _STA method at index $arg0!';
  }

  @override
  String get logMsg233 => '=> Generate patch from _STA to XSTA';

  @override
  String get logMsg234 => '=> _STA method not found!';

  @override
  String logMsg235(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String get logMsg236 =>
      '=> There is an _ADR address overflow in the device path!';

  @override
  String get logMsg237 =>
      '=> The following devices may require bridging adjustments to function properly:';

  @override
  String get logMsg238 => 'Collecting PCI bridge devices...';

  @override
  String get logMsg239 =>
      'PCI bridge device is empty! The operation has been terminated!';

  @override
  String get logMsg240 => 'Building bridge device...';

  @override
  String get logMsg241 => 'PCI bridge device is empty! jump over…';

  @override
  String get logMsg242 => 'Matching device paths…';

  @override
  String get logMsg243 => 'No match found!';

  @override
  String logMsg244(String arg0) {
    return '=> matches $arg0, no bridging required';
  }

  @override
  String get logMsg245 => 'No match found!\\n';

  @override
  String get logMsg246 => 'No bridging required!\\n';

  @override
  String get logMsg247 => 'Resolving bridge device...';

  @override
  String get logMsg248 => '=> Unable to parse!';

  @override
  String get logMsg249 => 'Error while parsing bridge device!\\n';

  @override
  String logMsg250(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String get logMsg251 => 'Locating ACPI0008 (ALS) device...';

  @override
  String logMsg252(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> Found ALS device at $arg0 table: $arg1!';
  }

  @override
  String get logMsg254 => '=> No need to counterfeit!\\n';

  @override
  String logMsg255(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String get logMsg256 => '_STA is correctly enabled, no patch required! \\n';

  @override
  String get logMsg257 => 'Not found, no patch required!\\n';

  @override
  String get logMsg258 =>
      'ACPI0008 (ALS) device not found, counterfeit device required…';

  @override
  String logMsg259(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String get logMsg260 => 'Detecting XOSI scheme...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> Automatically detected: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'Checking OSID method...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> Found method $arg1 at offset $arg0';
  }

  @override
  String get logMsg264 => '=> Not found, no need to rename OSID to XSID';

  @override
  String get logMsg265 => 'Creating _OSI to XOSI rename…';

  @override
  String logMsg266(String arg0) {
    return 'Looking for $arg0 table…';
  }

  @override
  String logMsg267(String arg0) {
    return 'Found $arg0 table, verifying signature...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 table signature verification passed!';
  }

  @override
  String logMsg269(String arg0) {
    return 'Checking $arg0 value...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'Obtained $arg0 value: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'Obtained Reset Register Address value: $arg0';
  }

  @override
  String get logMsg272 =>
      'The ACPI patches that need to be patched are as follows:';

  @override
  String get logMsg273 => 'Patching APIC table...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> Corrected APIC Processor ID: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> APIC table patching completed!';

  @override
  String logMsg276(String arg0) {
    return 'Creating $arg0.dsl…';
  }

  @override
  String get logMsg277 => 'Checking DMAR table reserved memory area...';

  @override
  String get logMsg278 =>
      '=> No reserved memory area found, no need to patch DMAR!\\n';

  @override
  String logMsg279(String arg0) {
    return 'Found $arg0 reserved memory areas, generating new table...';
  }

  @override
  String get logMsg280 => 'Looking for IMEI device at address 0x00160000...';

  @override
  String get logMsg281 =>
      'IMEI device not found, need to counterfeit the device…';

  @override
  String get logMsg282 => 'Verifying parent device...';

  @override
  String get logMsg283 => 'Looking for iGPU device at 0x00020000…';

  @override
  String get logMsg284 => '=> iGPU device not found!';

  @override
  String get logMsg285 => 'Trying to locate PCI root device...';

  @override
  String logMsg286(String arg0) {
    return '=> PCI root device found: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> Found iGPU device: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> Use parent device: $arg0';
  }

  @override
  String get logMsg289 => 'Collecting fake device-id schemes...';

  @override
  String logMsg290(String arg0) {
    return '=> Counterfeit as 7 series motherboard IMEI (device-id: $arg0) to match the 3rd generation Ivy Bridge processor';
  }

  @override
  String logMsg291(String arg0) {
    return '=> Counterfeit as 6 series motherboard IMEI (device-id: $arg0) to match the 2nd generation Sandy Bridge processor';
  }

  @override
  String logMsg292(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String get logMsg293 => 'Looking for UNC (PNP0A03) device...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 UNC devices found';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> UNC device $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> Check whether $arg0: _STA method exists';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> Found $arg1: _STA method at index $arg0!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> Generate $arg0: _STA to XSTA patch';
  }

  @override
  String logMsg299(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg300(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg301 => 'Checking if DTGP method exists...';

  @override
  String get logMsg302 => '=> DTGP method not found!';

  @override
  String get logMsg303 =>
      '=> DTGP method not found in any of the above ACPI tables! \\n';

  @override
  String logMsg304(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg305(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg306 => 'Looking for DMA (PNP0200) device...';

  @override
  String get logMsg307 => '=> DMA (PNP0200) device not found!';

  @override
  String logMsg308(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg309(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg310 => 'Checking for existence of _PTS method...';

  @override
  String logMsg311(String arg0) {
    return '=> Method $arg0 found!';
  }

  @override
  String get logMsg312 => '=> _PTS method not found!';

  @override
  String get logMsg313 => 'Checking for existence of _WAK method...';

  @override
  String logMsg314(String arg0) {
    return '=> Method $arg0 found!';
  }

  @override
  String get logMsg315 => '=> _WAK method not found!';

  @override
  String logMsg316(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg318 => 'Checking for existence of _SST method...';

  @override
  String logMsg319(String arg0) {
    return '=> Found _SST method at $arg0!';
  }

  @override
  String get logMsg320 => '=> _SST method not found!';

  @override
  String logMsg321(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg323 => 'Checking for presence of PNP0C0D device...';

  @override
  String logMsg324(String arg0) {
    return '=> PNP0C0D device found at $arg0!';
  }

  @override
  String get logMsg325 => '=> PNP0C0D device not found!';

  @override
  String logMsg326(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return 'Checking for existence of $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> Found $arg1 at $arg0';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> Found $arg1 at $arg0';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 not found';
  }

  @override
  String get logMsg332 => 'All ACPI tables checked!';

  @override
  String get logMsg333 => '=> Support system state: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> The current firmware supports common system states! After fixing the sleep problem, macOS can support S3 sleep!';

  @override
  String get logMsg335 => 'Checking Low Power S0 Idle (V5) value...';

  @override
  String logMsg336(String arg0) {
    return 'Get Low Power S0 Idle (V5): $arg0';
  }

  @override
  String get logMsg337 =>
      'It is not currently an AOAC machine and does not affect macOS system S3 sleep!';

  @override
  String get logMsg338 => 'Checking for existence of _S3...';

  @override
  String logMsg339(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> Name _S3 found at $arg0!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> Found Method _S3 at $arg0!';
  }

  @override
  String get logMsg342 => '=> Name or Method _S3 not found';

  @override
  String logMsg343(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg344(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg345(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg346 => 'Looking for LID (PNP0C0D) device...';

  @override
  String logMsg347(String arg0) {
    return '=> PNP0C0D device found at $arg0!';
  }

  @override
  String get logMsg348 => '=> LID (PNP0C0D) device not found!';

  @override
  String logMsg349(String arg0) {
    return '=> Found Method _LID at $arg0!';
  }

  @override
  String get logMsg350 => '=> Method _LID not found!';

  @override
  String get logMsg351 => 'Checking for existence of _TTS method...';

  @override
  String logMsg352(String arg0) {
    return '=> Method $arg0 found!';
  }

  @override
  String get logMsg353 => '=> _TTS method not found!';

  @override
  String get logMsg354 => 'Checking for existence of ZTTS method...';

  @override
  String get logMsg355 => '=> ZTTS method not found!';

  @override
  String logMsg356(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg358 => 'Looking for PWRB (PNP0C0C) device...';

  @override
  String get logMsg359 => '=> PWRB (PNP0C0C) device not found!';

  @override
  String logMsg360(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg361(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg362 => 'Looking for SLPB (PNP0C0E) device...';

  @override
  String get logMsg363 => '=> SLPB (PNP0C0E) device not found!';

  @override
  String get logMsg364 =>
      '=> The SLPB (PNP0C0E) device was not found in the above ACPI table! Just fake one! \\n';

  @override
  String logMsg365(String arg0) {
    return 'Creating $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg367(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg368(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String get logMsg369 => 'Looking for PNP0C01 device...';

  @override
  String get logMsg370 => '=> PNP0C01 device not found!';

  @override
  String get logMsg371 =>
      '=> The PNP0C01 device was not found in any of the above ACPI tables!\\n';

  @override
  String logMsg372(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg373 => 'Collecting XHC/XHCI/XDCI/CNVW devices...';

  @override
  String logMsg374(String arg0) {
    return '=> Checking if $arg0 device supports PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 does not support PMEE, skipped';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 supports PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg378 => 'Checking for existence of GPRW method...';

  @override
  String get logMsg379 => 'Checking for existence of XPRW method...';

  @override
  String logMsg380(String arg0) {
    return '=> GPRW method found at $arg0!';
  }

  @override
  String logMsg381(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg382 => 'Checking for existence of UPRW method...';

  @override
  String get logMsg383 => 'Checking for existence of XPRW method...';

  @override
  String logMsg384(String arg0) {
    return '=> UPRW method found at $arg0!';
  }

  @override
  String logMsg385(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg386 => 'Checking for presence of GPI0 device...';

  @override
  String logMsg387(String arg0) {
    return '=> GPI0 device found at $arg0!';
  }

  @override
  String get logMsg388 => 'Checking for existence of _STA method...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> Found $arg1: _STA method at index $arg0!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> Generate $arg0: _STA to XSTA patch';
  }

  @override
  String logMsg391(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg392 => 'Determining CPU naming scheme...';

  @override
  String logMsg393(String arg0) {
    return 'Checking $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> Processor found: $arg0';
  }

  @override
  String get logMsg395 => '=> No Processor object found...';

  @override
  String get logMsg396 => '=> ACPI0007 device not found…';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 ACPI0007 devices found';
  }

  @override
  String logMsg398(String arg0) {
    return '=> Found parent device at $arg0, processing...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> Checking $arg0…';
  }

  @override
  String get logMsg400 => '=> Not found! jump over…';

  @override
  String get logMsg401 => '=> Not found! jump over…';

  @override
  String logMsg402(String arg0) {
    return 'Processing $arg0 valid processor devices...';
  }

  @override
  String logMsg403(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg404(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg405(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg406(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg407(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg408(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg409(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg410(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg411 => 'Collecting fake device-id schemes...';

  @override
  String logMsg412(String arg0) {
    return '=> Counterfeit as 7 series motherboard IMEI (device-id: $arg0) to match the 3rd generation Ivy Bridge processor';
  }

  @override
  String logMsg413(String arg0) {
    return '=> Counterfeit as 6 series motherboard IMEI (device-id: $arg0) to match the 2nd generation Sandy Bridge processor';
  }

  @override
  String logMsg414(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg415(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg416(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg417(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg418(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg419(String arg0) {
    return 'Checking device $arg0 for an _ON or _OFF method...';
  }

  @override
  String logMsg420(String arg0) {
    return 'Checking device $arg0 for _PS3 or _DSM methods...';
  }

  @override
  String logMsg421(String arg0) {
    return 'Checking device $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> The _PRT method corresponding to $arg0 was not found in DSDT or SSDT!';
  }

  @override
  String logMsg423(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 device path that needs to be blocked: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> Shielding method: $arg0 method';
  }

  @override
  String logMsg426(String arg0) {
    return '=> Device relative path has been converted to absolute path: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> Find $arg1.$arg2 method in $arg0';
  }

  @override
  String logMsg428(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String get logMsg429 => 'Collecting possible bus devices...';

  @override
  String logMsg430(String arg0) {
    return 'Creating precompiled $arg0.dsl...';
  }

  @override
  String logMsg431(String arg0) {
    return 'Checking graphics device $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> The _PRT method corresponding to $arg0 was not found in DSDT or SSDT!';
  }

  @override
  String logMsg433(String arg0) {
    return 'Creating $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> Graphics card device path: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> Counterfeit graphics card ID: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> Counterfeit graphics card name: $arg0';
  }

  @override
  String get logMsg437 => '=> Not found!';

  @override
  String logMsg438(String arg0) {
    return '=> PCI path matched: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> Update $arg0 \"$arg1\" to $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" already exists in $arg2, skip...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> Add $arg0 \"$arg1\" to $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> Update the value of key \"$arg0\" to \"$arg1\" in $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> The value of key \"$arg0\" is already up to date, skipping $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> Add key \"$arg0\" value \"$arg1\" to $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return 'Hardware reporting folder cleanup failed: $arg0';
  }

  @override
  String get logMsg446 => 'Native ACPI table export failed';

  @override
  String logMsg447(String arg0) {
    return 'Native ACPI table export failed: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'Native ACPI table export failed: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'ACPI table temporary directory cleanup failed: $arg0';
  }

  @override
  String get logMsg450 => 'Exporting native hardware report...';

  @override
  String get logMsg451 => 'Exporting native ACPI tables...';

  @override
  String logMsg452(String arg0) {
    return 'Native ACPI table export completed: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'Source file does not exist: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'Error saving file: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'Current OC version: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'ZIP file does not exist: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 file successfully decompressed';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'Error while decompressing file $arg0: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'File or directory does not exist: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'Compression completed: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'Compression error: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'Delete directory: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'Delete file: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'Delete failed: $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'File successfully saved to: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'Source directory does not exist: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'Folder prepared: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'Error creating folder: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'Failed to open directory, path does not exist: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'Failed to open directory: $arg0, $arg1';
  }

  @override
  String get autoGen5000 => 'compatible';

  @override
  String get autoGen5001 => 'Limited compatibility';

  @override
  String get autoGen5002 => 'Not compatible';

  @override
  String get autoGen5003 => 'Enabled';

  @override
  String get autoGen5004 => 'turn on';

  @override
  String get autoGen5005 => 'unknown';

  @override
  String get autoGen5006 => 'Wired network card';

  @override
  String get autoGen5007 =>
      'Limited compatibility\nSupports up to macOS Tahoe 26\nMissing AVX2';

  @override
  String get autoGen5008 =>
      'Not compatible\nSupports up to macOS El Capitan 10.11\nMissing SSE4';

  @override
  String get autoGen5009 => 'Missing device ID';

  @override
  String get autoGen5010 => 'NootedRed support';

  @override
  String get autoGen5011 => 'Compatibility loading';

  @override
  String get autoGen5012 => 'Low-end Intel CPU core graphics are not supported';

  @override
  String get autoGen5013 => 'VGA output is not supported';

  @override
  String get autoGen5014 => 'Counterfeit support';

  @override
  String get autoGen5015 => 'Native support';

  @override
  String get autoGen5016 => 'Missing AVX2 instruction set';

  @override
  String get autoGen5017 => 'core';

  @override
  String get autoGen5018 => 'independent';

  @override
  String get autoGen5019 => 'Nuclear display';

  @override
  String get autoGen5020 => 'ASUS';

  @override
  String get autoGen5021 => 'Gigabyte';

  @override
  String get autoGen5022 => 'ASRock';

  @override
  String get autoGen5023 => 'MSI';

  @override
  String get autoGen5024 => 'Dell';

  @override
  String get autoGen5025 => 'Lenovo';

  @override
  String get autoGen5026 => 'sony';

  @override
  String get autoGen5027 => 'HP';

  @override
  String get autoGen5028 => 'Google';

  @override
  String get autoGen5029 => 'Microsoft';

  @override
  String get autoGen5030 =>
      'Unable to identify platform type based on CPU information';

  @override
  String get autoGen5031 => 'notebook';

  @override
  String get autoGen5032 => 'Mini host';

  @override
  String get autoGen5033 => 'workstation';

  @override
  String get autoGen5034 =>
      'The platform code cannot be determined based on the CPU, motherboard, and core display.';

  @override
  String get autoGen5035 => 'Device blocking skip:';

  @override
  String get autoGen5036 => 'Missing valid ACPI Path';

  @override
  String get autoGen5037 => 'SSDT list to be customized:';

  @override
  String get autoGen5038 => 'ACPI table extraction failed';

  @override
  String get autoGen5039 => 'ACPI table load failed';

  @override
  String get autoGen5040 => 'Custom SSDT results are incomplete';

  @override
  String get autoGen5041 => 'Exception occurred in custom SSDT';

  @override
  String get autoGen5042 => 'Custom SSDT temporary directory cleanup failed:';

  @override
  String get autoGen5043 => 'Graphics card device ID spoofing SSDT';

  @override
  String get autoGen5044 => 'Failed to generate:';

  @override
  String get autoGen5045 => 'ACPI Device Shield SSDT';

  @override
  String get autoGen5046 => 'Custom SSDT merge skipped,';

  @override
  String get autoGen5047 =>
      'Continue to use the original SSDT in current EFI as a fallback.';

  @override
  String get autoGen5048 => 'Graphics card device ID spoofing skipped:';

  @override
  String get autoGen5049 => 'Hardware information cache is not a JSON object';

  @override
  String get autoGen5050 => 'Hardware information has been loaded from cache';

  @override
  String get autoGen5051 =>
      'Hardware information has been loaded from local cache';

  @override
  String get autoGen5052 =>
      'Hardware information has been loaded from the import file';

  @override
  String get autoGen5053 => 'Initialize hardware information';

  @override
  String get autoGen5054 =>
      'Current system is not supported, only Windows is supported';

  @override
  String get autoGen5055 => 'Querying hardware information';

  @override
  String get autoGen5056 => 'Hardware information query completed';

  @override
  String get autoGen5057 => 'sysInfo.exe did not return hardware information';

  @override
  String get autoGen5058 =>
      'The content returned by sysInfo.exe is not a JSON object';

  @override
  String get autoGen5059 => 'sysInfo.exe query completed';

  @override
  String get autoGen5060 => 'core graphics card';

  @override
  String get autoGen5061 => 'Discrete graphics card';

  @override
  String get autoGen5062 => 'Already turned on';

  @override
  String get autoGen5063 => 'Unknown graphics card';

  @override
  String get autoGen5064 => 'integrated';

  @override
  String get autoGen5065 => 'Broadcom';

  @override
  String get autoGen5066 => 'Qualcomm';

  @override
  String get autoGen5067 => 'Intel';

  @override
  String get autoGen5068 => 'apple';

  @override
  String get autoGen5069 => 'Zero moment';

  @override
  String get autoGen5070 => 'Matsushita';

  @override
  String get autoGen5071 => 'Taian';

  @override
  String get autoGen5072 => 'Biostar';

  @override
  String get autoGen5073 => 'Colorful';

  @override
  String get autoGen5074 => 'Zotac';

  @override
  String get autoGen5075 => 'Gengsheng';

  @override
  String get autoGen5076 => 'Yingzhong';

  @override
  String get autoGen5077 => 'Super Micro';

  @override
  String get autoGen5078 => 'Onda';

  @override
  String get autoGen5079 => 'Spartacus';

  @override
  String get autoGen5080 => 'Panzheng';

  @override
  String get autoGen5081 => 'South China';

  @override
  String get autoGen5082 => 'Jingyue';

  @override
  String get autoGen5083 => 'Ke Nao';

  @override
  String get autoGen5084 => 'Guoshuo';

  @override
  String get autoGen5085 => 'Jetway';

  @override
  String get autoGen5086 => 'diamond';

  @override
  String get autoGen5087 => 'top star';

  @override
  String get autoGen5088 => 'Mingxuan';

  @override
  String get autoGen5089 => 'Meijie';

  @override
  String get autoGen5090 => 'Elite';

  @override
  String get autoGen5091 => 'Foxconn';

  @override
  String get autoGen5092 => 'abit';

  @override
  String get autoGen5093 => 'Shuangmin';

  @override
  String get autoGen5094 => 'Eunjie';

  @override
  String get autoGen5095 => 'GALAXY';

  @override
  String get autoGen5096 => 'holy flag';

  @override
  String get autoGen5097 => 'Shark';

  @override
  String get autoGen5098 => 'Seewo';

  @override
  String get autoGen5099 => 'Advantech';

  @override
  String get autoGen5100 => 'ADLINK';

  @override
  String get autoGen5101 => 'Great Mechanic';

  @override
  String get autoGen5102 => 'patriot';

  @override
  String get autoGen5103 => 'ASL';

  @override
  String get autoGen5104 => 'Erying';

  @override
  String get autoGen5105 => 'sapphire';

  @override
  String get autoGen5106 => 'Contech';

  @override
  String get autoGen5107 => 'Qingyun';

  @override
  String get autoGen5108 => 'Huawei';

  @override
  String get autoGen5109 => 'Millet';

  @override
  String get autoGen5110 => 'red rice';

  @override
  String get autoGen5111 => 'glory';

  @override
  String get autoGen5112 => 'Samsung';

  @override
  String get autoGen5113 => 'mechanical revolution';

  @override
  String get autoGen5114 => 'mechanic';

  @override
  String get autoGen5115 => 'Thor';

  @override
  String get autoGen5116 => 'Razer';

  @override
  String get autoGen5117 => 'Acer';

  @override
  String get autoGen5118 => 'Toshiba';

  @override
  String get autoGen5119 => 'Fujitsu';

  @override
  String get autoGen5120 => 'blue sky';

  @override
  String get autoGen5121 => 'alien';

  @override
  String get autoGen5122 => 'Shenzhou';

  @override
  String get autoGen5123 => 'Haier';

  @override
  String get autoGen5124 => 'Zhongbai';

  @override
  String get autoGen5125 => 'Xuanlong';

  @override
  String get autoGen5126 => 'future humans';

  @override
  String get autoGen5127 => 'Cube';

  @override
  String get autoGen5128 => 'Xuanpai Xuanji Star';

  @override
  String get autoGen5129 => 'Checking for updates, please wait...';

  @override
  String get autoGen5130 => 'Just checked for updates, please try again later';

  @override
  String get autoGen5131 =>
      'Failed to check for updates, please try again later';

  @override
  String get autoGen5132 =>
      'Failed to obtain release version list, please try again later';

  @override
  String get autoGen5133 => 'Release version list is empty';

  @override
  String get autoGen5134 => 'Desktop';

  @override
  String get autoGen5135 => 'server';

  @override
  String get autoGen5136 =>
      'Turn on SIP to enhance system security. It is recommended to check this box when you usually do not need to use OCLP to drive graphics cards, WiFi and other drivers.';

  @override
  String get autoGen5137 => 'Disable SIP solution one';

  @override
  String get autoGen5138 =>
      'Unless SIP is completely disabled, it is usually recommended to check the box when systems such as BigSur and above need to use OCLP to drive graphics cards, WiFi, etc.';

  @override
  String get autoGen5139 => 'Disable SIP solution two';

  @override
  String get autoGen5140 =>
      'Completely disable SIP. Usually when systems such as BigSur and above need to use OCLP to drive graphics cards, WiFi, etc., this option is preferred.';

  @override
  String get autoGen5141 =>
      'Adaptive display, automatically adjusts the display ratio of the OpenCore boot interface according to the display resolution';

  @override
  String get autoGen5142 =>
      'Standard resolution monitor, suitable for 720p, 1080p, 1440p and other standard resolution monitors';

  @override
  String get autoGen5143 =>
      'High-resolution display, suitable for high-resolution displays such as 4K and 5K (can effectively improve the problem of too small UI elements on the OpenCore boot page for high-resolution screens)';

  @override
  String get autoGen5144 => 'Do not modify ProcessorType';

  @override
  String get autoGen5145 => 'Keep system default CPU type display';

  @override
  String get autoGen5146 =>
      'Intel and AMD platform CPU name modification option 1 (usually applicable to CPUs with 6 cores and below)';

  @override
  String get autoGen5147 =>
      'Intel and AMD platform CPU name modification option 2 (usually applicable to 8-core and above CPUs)';

  @override
  String get autoGen5148 =>
      'Intel and AMD platform CPU name modification alternatives (usually applicable to i7 and i9 series CPUs with 8 cores and above)';

  @override
  String get autoGen5149 => 'ASUS';

  @override
  String get autoGen5150 => 'GIGABYTE';

  @override
  String get autoGen5151 => 'ASRock';

  @override
  String get autoGen5152 => 'MSI';

  @override
  String get autoGen5153 => 'Dell';

  @override
  String get autoGen5154 => 'Lenovo';

  @override
  String get autoGen5155 => 'Sony(VAIO)';

  @override
  String get autoGen5156 => 'HP';

  @override
  String get autoGen5157 => 'Google(Chromebook)';

  @override
  String get autoGen5158 => 'Microsoft Surface';

  @override
  String get autoGen5159 => 'Regular motherboard';

  @override
  String get autoGen5160 =>
      'B850, B650, B550 and A520 motherboards, 550 series chipset notebooks';

  @override
  String get autoGen5161 => 'TRx40 motherboard';

  @override
  String get autoGen5162 => 'X570 motherboard';

  @override
  String get autoGen5163 =>
      'X470 or B450 motherboard late 2020 or updated BIOS';

  @override
  String get autoGen5164 => '6 series chipset';

  @override
  String get autoGen5165 =>
      'Check when mixing Intel 3rd generation CPU and 6 series chipset (for example: H61, HM65)';

  @override
  String get autoGen5166 => '7 series chipset';

  @override
  String get autoGen5167 =>
      'Check when mixing Intel 2nd generation CPU and 7 series chipsets (for example: B75, HM76)';

  @override
  String get autoGen5168 => 'H110,B150,B250,Q270, etc.';

  @override
  String get autoGen5169 =>
      'Some OEM motherboards have USB ownership release issues: EHCI Hand-off fails';

  @override
  String get autoGen5170 => 'Z490 and other BIOS updates in 2020';

  @override
  String get autoGen5171 =>
      '6 series chipset (check when mixing Intel 3rd generation CPU and 6 series chipsets (for example: H61, HM65))';

  @override
  String get autoGen5172 =>
      '7 series chipset (check when mixing Intel 2nd generation CPU and 7 series chipsets (for example: B75, HM76))';

  @override
  String get autoGen5173 =>
      'H110, B150, B250, Q270, etc. (Some OEM motherboards have USB ownership release issues: EHCI Hand-off failure)';

  @override
  String get autoGen5174 => 'from mbconfs';

  @override
  String get autoGen5175 => 'DVI double chain';

  @override
  String get autoGen5176 => 'DVI single chain';

  @override
  String get autoGen5177 =>
      'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5178 =>
      'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, suitable for core graphics + independent graphics models';

  @override
  String get autoGen5179 =>
      'Supports OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, suitable for Ivy Bridge architecture, only core graphics models';

  @override
  String get autoGen5180 =>
      'Supports OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, suitable for Ivy Bridge architecture, core display decoding + independent display output models';

  @override
  String get autoGen5181 =>
      'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture NVIDIA Maxwell and Pascal independent graphics';

  @override
  String get autoGen5182 =>
      'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture only core display models';

  @override
  String get autoGen5183 =>
      'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture core graphics + independent graphics models';

  @override
  String get autoGen5184 =>
      'Supports macOS El Capitan 10.11 ~ macOS Monterey 12, suitable for models with core graphics (or independent graphics)';

  @override
  String get autoGen5185 =>
      'Supports macOS El Capitan 10.11 ~ macOS Monterey 12, suitable for Broadwell architecture core display (or with independent display)';

  @override
  String get autoGen5186 =>
      'Supports macOS Sierra 10.12 ~ macOS Ventura 13. Suitable for core display + independent display models. It should be noted that when using this model, most core display only users will experience abnormal screen color. This model is not recommended for core display only users.';

  @override
  String get autoGen5187 =>
      'Supports macOS Sierra 10.12 ~ macOS Ventura 13, suitable for core display decoding + independent display output models';

  @override
  String get autoGen5188 =>
      'Supports macOS 10.14 ~ macOS Sequoia 15, suitable for models with core graphics (or independent graphics)';

  @override
  String get autoGen5189 =>
      'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for i7-10700K and below processor core display (or with independent display) models';

  @override
  String get autoGen5190 =>
      'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for i9-10850K higher processor core display (or with independent display) models';

  @override
  String get autoGen5191 => 'Support macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 => 'Support macOS 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5193 => 'Support macOS 10.7 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5194 => 'Support macOS 10.8 ~ macOS Catalina 10.15';

  @override
  String get autoGen5195 => 'Support macOS 10.9 ~ macOS Big Sur 11';

  @override
  String get autoGen5196 =>
      'Support macOS High Sierra 10.13 ~ macOS Monterey 12';

  @override
  String get autoGen5197 => 'Support macOS Mojave 10.14 ~ macOS Monterey 12';

  @override
  String get autoGen5198 => 'Support OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 => 'Support OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 => 'Support macOS Sierra 10.12 ~ macOS Monterey 12';

  @override
  String get autoGen5201 =>
      'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (core display HD 515 officially only supports macOS Monterey 12, counterfeit supports the latest macOS Sequoia 15)';

  @override
  String get autoGen5202 =>
      'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (the core display Iris 540 officially only supports macOS Monterey 12, and the counterfeit version supports the latest macOS Sequoia 15)';

  @override
  String get autoGen5203 =>
      'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (the core display Iris 550 officially only supports macOS Monterey 12, and the counterfeit version supports the latest macOS Sequoia 15)';

  @override
  String get autoGen5204 =>
      'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (core display HD530 officially only supports macOS Monterey 12, counterfeit supports the latest macOS Sequoia 15)';

  @override
  String get autoGen5205 =>
      'Support macOS High Sierra 10.13 ~ macOS Ventura 13';

  @override
  String get autoGen5206 => 'Support macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 => 'Support macOS Catalina 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 => 'Support macOS Catalina 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'Supports macOS 10.9 ~ macOS Monterey 12, suitable for standalone graphics only models';

  @override
  String get autoGen5210 =>
      'Supports macOS 10.13 ~ macOS Sequoia 15. Applicable to standalone graphics only models. For Intel 11th generation and above, this model is usually used. The CPU frequency conversion and turbo frequency are normal, and no additional Kext patch is needed (if the macOS system turbo frequency is not normal, please extract and use the native SSDT-PLUG)';

  @override
  String get autoGen5211 =>
      'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for A-card independent graphics models. Supported driver-free A-cards (such as RX560, RX570, RX5500, RX6600) will perfectly support VDA hard decoding. For Intel 11th generation and above, this model is usually used, the CPU turbo frequency is not normal, and an additional Kext patch is required. You can go to [Optional Kexts driver]->[CPU related]->[CPU variable frequency driver, mainly provides 11th generation and above platforms MacPro7,1 frequency conversion support] to check this option.';

  @override
  String get autoGen5212 => 'macOS compatibility range not configured';

  @override
  String get autoGen5213 => 'device-id must be 4 characters';

  @override
  String get autoGen5214 =>
      'Enable core display frame buffer (Framebuffer) patch master switch';

  @override
  String get autoGen5215 =>
      'Modify the video memory to 1536M (1.5G video memory, Apple’s official default value, suitable for 3rd to 10th generation Intel core display platforms)';

  @override
  String get autoGen5216 =>
      'Modify the video memory to 2048M (2G video memory, tool default value, suitable for 3rd to 10th generation Intel core display platforms)';

  @override
  String get autoGen5217 =>
      'Modify the video memory to 3072M (3G video memory, suitable for 3rd to 10th generation Intel core display platforms)';

  @override
  String get autoGen5218 =>
      'Modify the video memory to 4095M (4G video memory, suitable for 3rd to 10th generation Intel core display platforms)';

  @override
  String get autoGen5219 =>
      'Fix the 1080P high-resolution screen blur problem on the 4th generation Haswell platform (for example, the high-resolution screen blur may be because the value is not large enough. This patch is a dedicated patch for Haswell core display. It is recommended to use this configuration for 1080P and below screens)';

  @override
  String get autoGen5220 =>
      'Fix the problem of high-resolution screens such as 2K and 4K on the 4th generation Haswell platform (for example, the high-resolution screen may be blurred because the value is not large enough. This patch is a dedicated patch for Haswell core display. It is recommended to use this configuration for 2K and 4k screens)';

  @override
  String get autoGen5221 => 'Ivy Bridge high-resolution screen candidate patch';

  @override
  String get autoGen5222 => 'Enable con0 interface patch';

  @override
  String get autoGen5223 => 'Enable con1 interface patch';

  @override
  String get autoGen5224 => 'Enable con2 interface patching';

  @override
  String get autoGen5225 => 'Enable con3 interface patch';

  @override
  String get autoGen5226 =>
      'Ivy Bridge high-resolution screen candidate interface patch';

  @override
  String get autoGen5227 =>
      'Sandy Bridge notebook high-resolution screen (1600x900 and above resolution) patch';

  @override
  String get autoGen5228 => 'Optional patches for Ironlake/Arrandale notebooks';

  @override
  String get autoGen5229 =>
      'Fix HDMI high-resolution screen 60 fps solution (In some cases, Intel core display may use HDMI 1.4 standard by default. Enable this parameter to force HDMI 2.0 to support higher resolution and refresh rate, such as supporting 4K@60HZ)';

  @override
  String get autoGen5230 =>
      'Repair HDMI audio output (usually only the appropriate alcid is needed, this parameter can sometimes fix the problem of correct HDMI audio output)';

  @override
  String get autoGen5231 =>
      'Disable DP to HDMI conversion patch for digital sound (ensures the stability and reliability of the HDMI connection when the DisplayPort interface is connected to the HDMI interface through a converter)';

  @override
  String get autoGen5232 =>
      'Force online status on all monitors, which is helpful for core display multi-screen output. In some cases, it can avoid problems such as a black screen after waking up from sleep or the need to plug and unplug the monitor cable to light up the screen when starting up (usually applicable to 8th generation Coffee Lake and above core displays)';

  @override
  String get autoGen5233 =>
      'Improve core display performance (for example: fix the problem of core display 4K hevc encoding, resolution and fps not reaching ideal values)';

  @override
  String get autoGen5234 =>
      'Enable the full firmware loading of the core display, improve the utilization of the core display, and improve the performance of the core display. Adding this parameter may cause the system to be unable to enter, so use with caution';

  @override
  String get autoGen5235 =>
      'Fixed the endless loop problem caused by the 6th generation Skylake core display, the 7th generation Kaby Lake core display and the 8th generation Coffee Lake core display driver when trying to light up an external HDMI high-resolution display (specific symptoms are that after plugging in the HDMI cable, the notebook\'\'s internal screen turns black but has a backlight, the system becomes unresponsive, and there is no output on the external screen)';

  @override
  String get autoGen5236 =>
      'Fix the kernel crash issue caused by low Core Display Clock (CDCLK) frequency on the 10th generation Ice Lake platform';

  @override
  String get autoGen5237 =>
      'Fixed a kernel crash on the 10th generation Ice Lake platform caused by the driver incorrectly calculating the DVMT pre-allocated memory size';

  @override
  String get autoGen5238 =>
      'Adjust the Brightness Slider (Brightness Slider) settings to make transitions smoother and more natural to improve user experience';

  @override
  String get autoGen5239 =>
      'Fixed the problem of a dark screen lasting 3 minutes after startup on notebooks running macOS 13.4 or above on the 7th generation Kaby Lake, 8th generation, and 9th generation Coffee Lake platforms.';

  @override
  String get autoGen5240 =>
      'Fixed the issue where notebooks running macOS 13.3 and below on 7th generation Kaby Lake, 8th generation, and 9th generation Coffee Lake platforms would have a dark screen for 3 minutes after booting.';

  @override
  String get autoGen5241 =>
      'Fixed the issue where the screen on the 10th generation Ice Lake platform persists for 7 to 15 seconds when the notebook is turned on';

  @override
  String get autoGen5242 =>
      'Fixed the problem that the 10th generation Ice Lake core display HDMI high-resolution display would have a black screen, no signal, and the resolution could not be output correctly in 4K@60Hz and some 2K/4K high refresh scenarios (forced to enable the \"max pixel clock override\" of the core display (IGPU))';

  @override
  String get autoGen5243 =>
      'Used to repair nuclear display glitch effects or flickering screen problems (such as nuclear display HD530)';

  @override
  String get autoGen5244 =>
      'Disable the independent display (usually when the independent display of a dual-graphics laptop cannot be driven, the independent display needs to be disabled)';

  @override
  String get autoGen5245 =>
      'Fixed the problem of laptops (such as Dell XPS 15 9570 and other high-resolution screen notebooks) that the high-resolution screen internal screen returns the wrong maximum link rate value, resulting in a direct crash when the internal screen is lit (it is recommended to check this box for high-resolution screen notebooks)';

  @override
  String get autoGen5246 =>
      'Inject the monitor EDID into the AAPL00 interface (usually the internal screen of a notebook) to fix the black screen problem of the interface (note: you need to inject the monitor EDID on the EDID configuration page first! You can fill in the EDID in the tool \"Display Configuration\" -> \"Display EDID\". For 500 series motherboards such as B560, when repairing the HDMI output, you must inject the monitor EDID, otherwise there is a high probability of a black screen. Sometimes, for other Intel platforms, the problem of blurred screen, purple screen or black screen may be repaired)';

  @override
  String get autoGen5247 =>
      'Inject the monitor EDID into the AAPL01 interface to fix the black screen and no display problem of the interface (Note: You need to inject the monitor EDID on the EDID configuration page first! You can fill in the EDID in the tool \"Display Configuration\" -> \"Display EDID\". 500 series motherboards such as B560 must inject the monitor EDID when repairing the HDMI output, otherwise there is a high probability of a black screen. Sometimes, for other Intel platforms, the core display blurred screen, purple screen or black screen problem may be repaired)';

  @override
  String get autoGen5248 =>
      'Inject the monitor EDID into the AAPL02 interface to fix the black screen and no display problem of the interface (Note: You need to inject the monitor EDID on the EDID configuration page first! You can fill in the EDID in the tool \"Display Configuration\" -> \"Display EDID\". 500 series motherboards such as B560 must inject the monitor EDID when repairing the HDMI output, otherwise there is a high probability of a black screen. Sometimes, for other Intel platforms, the core display blurred screen, purple screen or black screen problem may be repaired)';

  @override
  String get autoGen5249 =>
      'Enable LSPCON support and convert DisplayPort to HDMI 2.0 output (requires port 0~3 LSPCON signal converter, suitable for 6th generation Skylake ~ 10th generation Comet Lake, Ice Lake Intel platforms)';

  @override
  String get autoGen5250 =>
      'Port 0 LSPCON signal converter (LSPCON support needs to be enabled)';

  @override
  String get autoGen5251 =>
      'Port 1 LSPCON signal converter (LSPCON support needs to be enabled)';

  @override
  String get autoGen5252 =>
      'Port 2 LSPCON signal converter (LSPCON support needs to be enabled)';

  @override
  String get autoGen5253 =>
      'Port 3 LSPCON signal converter (LSPCON support needs to be enabled)';

  @override
  String get autoGen5254 =>
      'Modify framebuffer memory to 9M (framebuffer memory size will affect high-resolution screens, usually used in conjunction with framebuffer-stolenmem)';

  @override
  String get autoGen5255 =>
      'Modify the stolen memory to 19M (applicable to 1080P screen, tool default value, no need to check. If there is a DVMT parameter in the BIOS, it is recommended to modify it to 64M. If the DVMT parameter is changed in the BIOS, this parameter can be removed)';

  @override
  String get autoGen5256 =>
      'Modify the stolen memory to 64M (applicable to 2k or 4k screens. If there is a DVMT parameter in the BIOS, it is recommended to modify it to 64M or above. If the DVMT parameter is changed in the BIOS, this parameter can be removed)';

  @override
  String get autoGen5257 =>
      'Modify the stolen memory to 128M (applicable to 4k screens. If there is a DVMT parameter in the BIOS, it is recommended to modify it to 128M or 256M or above for high-resolution screens. If the DVMT parameters are changed in the BIOS, this parameter can be removed)';

  @override
  String get autoGen5258 =>
      'Enable con0 HDMI port (requires HDMI interface No. 0)';

  @override
  String get autoGen5259 =>
      'No. 0 HDMI interface, used to fix the black screen problem of 6th to 10th generation HDMI (need to enable the con0 HDMI port)';

  @override
  String get autoGen5260 =>
      'Enable con1 HDMI port (requires HDMI interface No. 1)';

  @override
  String get autoGen5261 =>
      'No. 1 HDMI interface, used to fix the black screen problem of 6th to 10th generation HDMI (need to enable the con1 HDMI port)';

  @override
  String get autoGen5262 =>
      'Enable con2 HDMI port (requires HDMI interface No. 2)';

  @override
  String get autoGen5263 =>
      'HDMI interface No. 2, used to fix the black screen problem of 6th to 10th generation HDMI (need to enable the con2 HDMI port)';

  @override
  String get autoGen5264 => 'Video memory/DVMT parameters';

  @override
  String get autoGen5265 => '4th generation Haswell specific parameters';

  @override
  String get autoGen5266 =>
      '3rd generation Ivy Bridge high-resolution screen candidate patch';

  @override
  String get autoGen5267 =>
      '2nd generation Sandy Bridge high-resolution screen candidate patch';

  @override
  String get autoGen5268 =>
      'Candidate patch for 1st generation Arrandale notebooks';

  @override
  String get autoGen5269 => 'HDMI/interface repair';

  @override
  String get autoGen5270 => '10th generation Ice Lake fix';

  @override
  String get autoGen5271 => 'Universal fix';

  @override
  String get autoGen5272 =>
      'Ivy Bridge notebook high-resolution screen (1600x900 and above resolution) patch';

  @override
  String get autoGen5273 =>
      'Enable con0 interface HDMI type correction patch to fix 6th to 10th generation HDMI black screen, purple screen, and audio problems';

  @override
  String get autoGen5274 =>
      'Enable con1 interface HDMI type correction patch to fix 6th to 10th generation HDMI black screen, purple screen, and audio problems';

  @override
  String get autoGen5275 =>
      'Enable con2 interface HDMI type correction patch to fix 6th to 10th generation HDMI black screen, purple screen, and audio problems';

  @override
  String get autoGen5276 =>
      'alc_codec.json format error: root node must be Map<String, dynamic>';

  @override
  String get autoGen5277 =>
      'Enable -v to run the code (convenient to locate errors when the code is stuck, suitable for debugging and booting stage)';

  @override
  String get autoGen5278 =>
      'It is convenient for the mac system to print more symbol information when a kernel crash occurs, which is helpful for troubleshooting problems. This parameter is usually used with debug=0x100 (it is strongly recommended to check it when debugging and booting for the first time)';

  @override
  String get autoGen5279 =>
      'Prevent automatic restart when the kernel crashes, making it easier to view Panic crash logs (it is strongly recommended to check this when debugging and booting for the first time)';

  @override
  String get autoGen5280 =>
      'Disable the watchdog function to prevent accidental triggering of Panic crash restart (applicable to debugging boot)';

  @override
  String get autoGen5281 =>
      'Disable kernel address space randomization (KASLR) to ensure that the kernel and kext (kernel extension) are loaded in the same fixed memory map to avoid early startup kernel crashes caused by memory conflicts caused by random slide values ​​(applicable to debugging boot)';

  @override
  String get autoGen5282 =>
      'Skip the model check during the first startup of macOS to avoid prohibition symbols due to too low or too high SMBIOS, and ensure that the system can be booted normally (note that this parameter cannot skip the model check during installation. A message similar to \"macOS is not supported\" will appear during installation. At this time, you can change the SMBIOS to a higher or lower level to support the new or old system)';

  @override
  String get autoGen5283 =>
      'This parameter is applicable to disabling AMFI, relatively new graphics cards (such as HD4000 and above, GT710 and other Kepler cores and above) or WiFi drivers. Note not to use it with the amfi_get_out_of_my_way=0x1 parameter at the same time! (This parameter will only take effect if SIP is disabled, and this parameter will be automatically removed after SIP is enabled)';

  @override
  String get autoGen5284 =>
      'Make sure AMFIPass.kext can be properly enabled and activated in the latest macOS Tahoe 26 system in order to continue bypassing AMFI (AMFI Disabled) security checks. (Note: 1. This parameter cannot be used at the same time as the disable AMFI parameter, and this parameter needs to be used with AMFIPass.kext. 2. This parameter is usually only used in the latest systems, do not add it unless necessary)';

  @override
  String get autoGen5285 =>
      'This parameter is applicable when AMFI is disabled, old platforms, old graphics cards (such as GT240) or WiFi drivers are used. Note not to use the amfi=0x80 parameter at the same time! (It only takes effect when SIP is disabled, and this parameter is automatically removed after SIP is enabled)';

  @override
  String get autoGen5286 =>
      'Fixed the crash problem of some applications (for example: Baidu Netdisk) after disabling AMFI (it will only take effect if SIP is disabled, and this parameter will be automatically removed after SIP is enabled)';

  @override
  String get autoGen5287 =>
      'Fix problems that may occur in the latest system (mainly Beta version) (system driver exception, such as: sudden abnormality in sound card, Bluetooth, CPU frequency, etc. It is strongly recommended to check this when trying the latest Beta version system)';

  @override
  String get autoGen5288 =>
      'Only enable 1 CPU core (applicable to X58, X79, X99, X299 and other multi-core server CPU core crashes, early installation and debugging stages)';

  @override
  String get autoGen5289 =>
      'Turn off VT-d (disable IOMMU, you can check it when the BIOS does not turn off VT-d) to solve the problem of some motherboards getting stuck after starting or entering the system.';

  @override
  String get autoGen5290 =>
      'Disable Apple Graphics Firmware loading to avoid getting stuck due to firmware loading failure or retry loop during startup (only applicable to Intel graphics)';

  @override
  String get autoGen5291 =>
      'Disable Intel core display (it is recommended to check when the core display cannot be driven and accelerated hard decoding is not supported)';

  @override
  String get autoGen5292 =>
      'Disable independent graphics (usually when Intel dual graphics notebook independent graphics card [commonly used in N cards] cannot be driven, it is recommended to check it)';

  @override
  String get autoGen5293 =>
      'Disable NVIDIA driver (only applicable when debugging incompatible N cards)';

  @override
  String get autoGen5294 =>
      'Disable Intel core graphics acceleration (for example: when using OCLP and unable to start normally after patching the core graphics patch, you can check it, no acceleration, only for debugging)';

  @override
  String get autoGen5295 =>
      'Repair and improve Intel core display performance (for example: fix the problem of core display 4K hevc encoding, resolution and fps not reaching ideal values)';

  @override
  String get autoGen5296 =>
      'Fixed the issue with the maximum link rate value of Intel core display, which caused a direct crash when the screen was turned on ((especially on Skylake, Kaby Lake, Coffee Lake, Comet Lake, black screen and no signal, not reaching the expected 4K resolution, etc.)';

  @override
  String get autoGen5297 =>
      'Fix the resolution problem of the core display, force the \"max pixel clock override\" of the IGPU to be enabled, and lift the default resolution, refresh rate and other restrictions of macOS';

  @override
  String get autoGen5298 =>
      'Fix the problem of 4K black screen in HDMI output of some laptops (usually applicable to laptops, such as ThinkPad P71/7700HQ/HD630/4K stuck in `gIOScreenLockState3`)';

  @override
  String get autoGen5299 =>
      'Fix the kernel crash issue caused by low Core Display Clock (CDCLK) frequency on the 10th generation Ice Lake platform';

  @override
  String get autoGen5300 =>
      'Fixed a kernel crash issue on the 10th generation Ice Lake platform caused by the driver incorrectly calculating the DVMT pre-allocated memory size.';

  @override
  String get autoGen5301 =>
      'Fixed the issue where the screen on the 10th generation Ice Lake platform persists for 7 to 15 seconds when the notebook is turned on';

  @override
  String get autoGen5302 =>
      'Disable iGPU (core graphics) to load the telemetry module during the startup process. Some notebooks (especially Chromebooks) may cause the system to freeze or freeze during the startup phase when loading this module (applicable to Intel Skylake 6th generation and above notebooks)';

  @override
  String get autoGen5303 =>
      'Fix the backlight register on macOS Ventura 13.4 and below, 7th generation KBL, 8th & 9th generation CFL notebook platforms, and fix the problem of black screen or dark screen lasting for 3 minutes (applicable to notebooks)';

  @override
  String get autoGen5304 =>
      'Fix the backlight register on macOS Ventura 13.4 and above, 7th generation KBL, 8th & 9th generation CFL notebook platforms, and fix the problem of black screen or dark screen lasting for 3 minutes (applicable to notebooks)';

  @override
  String get autoGen5305 =>
      'Adjust the brightness slider (brightness slider) settings to make transitions smoother and more natural to improve user experience (applicable to notebooks)';

  @override
  String get autoGen5306 =>
      'Draw the Apple logo in the second startup phase instead of copying the frame buffer. When connecting an external monitor, smoothly transition from the progress bar to the login desktop. In some cases, it can fix the black screen problem when entering the system. At the same time, it is helpful to plug and unplug the monitor cable to turn on the screen.';

  @override
  String get autoGen5307 =>
      'Fix the ACPI Configuration begin problem of platform cards such as X58,';

  @override
  String get autoGen5308 =>
      'Fix the ACPI Configuration begin problem of platform cards such as X58,';

  @override
  String get autoGen5309 =>
      'Fixed hardware digital rights management (DRM) support issue on AMD GPUs (enables DRM-protected digital content, such as high-quality videos provided by streaming services, to be experienced on supported AMD GPUs)';

  @override
  String get autoGen5310 =>
      'Disable ATI and AMD graphics card acceleration (for example: when using OCLP and the graphics card cannot start normally after patching, you can check it, no acceleration, only for debugging)';

  @override
  String get autoGen5311 =>
      'Repair HD7750, HD7850 (the main core is GCN series HD77XX, HD78XX, HD79XX) and other old A-card screen distortion, yellow screen and other abnormal display problems';

  @override
  String get autoGen5312 =>
      'Fix the black screen or abnormal display problems that may be caused by some graphics cards, completely ignoring the restrictions or settings of AppleGraphicsDevicePolicy.kext on the graphics card. When you are not sure of the specific restrictions, avoid display problems or black screen phenomena caused by incompatible hardware configurations (such as specific board-id). Pay attention to this parameter, which will only take effect when used with WhateverGreen.kext. For native driver-free A cards, you can remove the WhateverGreen.kext driver, so this parameter does not need to be added.';

  @override
  String get autoGen5313 =>
      'Fix the black screen problem when AMD Navi core RX5XXX, RX6XXX series graphics cards start up (for example: RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.), replace board-id with board-ix, and bypass some restrictions of AppleGraphicsDevicePolicy. Note: 1. It will only take effect when used with WhateverGreen.kext. 2. BIOS Turn off the Serial/COM Port in SuperIO settings. For native driver-free A cards, you can remove the WhateverGreen.kext driver, so this parameter does not need to be added.';

  @override
  String get autoGen5314 =>
      'Fix the black screen problem after waking up from sleep for some graphics cards such as RX470 and RX570, disable the board-id check in AppleGraphicsDevicePolicy, and fix the black screen or abnormal display problems that may be caused by some graphics cards. Note that this parameter will only take effect when used with WhateverGreen.kext. For native driver-free A cards, the WhateverGreen.kext driver can be removed, so this parameter does not need to be added.';

  @override
  String get autoGen5315 =>
      'Repair Intel 3rd generation and below platforms AMD RX5XX (for example: RX560, RX570, RX580) series, AMD RX5XXX, RX6XXX (for example: RX5500, RX6600) series driver-free graphics cards have a black screen problem in Ventura and above systems (Note: You need to use OCLP to patch the graphics card after entering the system! After patching the graphics card, remove the boot parameter or use the alternative config-after-post in the EFI directory to rename the config, and restart to drive the graphics card!)';

  @override
  String get autoGen5316 =>
      'Fix officially unsupported AMD graphics cards (for example: RX550 Lexa core) to support VDA hardware video encoding';

  @override
  String get autoGen5317 =>
      'Repair Fermi, Maxwell, Pascal architecture old N card (for example: GT610, GTX750, GTX960, GTX1050) BigSur 11 or above system graphics card driver problem (Note: You need to use OCLP to patch the graphics card after entering the system!!! This parameter is not required for Kepler core!!!)';

  @override
  String get autoGen5318 =>
      'Fixed the problem of slow speed of some Broadcom wireless network cards (change the Broadcom WiFi country code to Hong Kong, you can also change the router channel to improve it)';

  @override
  String get autoGen5319 => 'Fix ramrod code, SMC simulator damage problem';

  @override
  String get autoGen5320 =>
      'Fix the macOS system OTA update problem after disabling SIP (System Integrity Protection) or SecureBootModel (security model), and fix the custom CPU name display problem';

  @override
  String get autoGen5321 =>
      'Avoid the problem of restarting the device after entering sleep mode, making it easier to obtain kernel crash logs and troubleshoot sleep problems.';

  @override
  String get autoGen5322 =>
      'Improve the topology identification and scheduling of Intel 12th generation and later large and small core CPUs. Performance improvement is not guaranteed. It is recommended to enable it after actual testing (note that it needs to be used with CpuTopologyRebuild.kext to take effect)';

  @override
  String get autoGen5323 =>
      'Completely disable Darkwake mode and let the system enter traditional sleep mode. It is mainly used to repair problems such as black screen wake-up and automatic wake-up.';

  @override
  String get autoGen5324 =>
      'Disable iGPU RC6 rendering standby and fix the problem of NVMe kernel panic caused by RC6 core display during sleep';

  @override
  String get autoGen5325 =>
      'Enable PWM backlight control for AMD Radeon RX 5000 series graphics cards';

  @override
  String get autoGen5326 =>
      'Repair and correct the DVI interface output display of old A cards (290X, 370, etc.)';

  @override
  String get autoGen5327 =>
      'Force the I2C type touch panel to work in polling mode instead of interrupt-driven mode (interrupt mode usually requires customized SSDT, which is relatively complicated. Sometimes the problem of the I2C touch panel being unusable can be fixed (it needs to be used with the VoodooI2C driver)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (Some motherboards and firmware may have conflicts or incompatibility issues when handling the MMIO area. Enabling this option can help resolve these conflicts and improve system compatibility and stability. This option is usually combined with the OpenCore Debug version to customize MMIO to solve card EB caused by memory problems on some motherboards (for example: some X58, X79, X99, and AMD 7000 series processor motherboards))';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (It is recommended to check it on firmware that does not support memory attribute table (MAT), especially OEM firmware. After turning it on, the write protection in the CR0 register will be deleted during execution to ensure normal writing of NVRAM. Usually applicable to platforms before the 7th generation)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (protects UEFI services from being overwritten by firmware, usually used to repair card EB problems caused by DevirtualiseMmio, etc. It is recommended to check it for Z390, Z490 motherboards, and 10th generation Ice Lake)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (Establishes continuous virtual memory for OC use and maps it to dispersed physical memory. Note: It is not recommended to check this option for 10th generation Comet Lake ASUS, Gigabyte, and AsRock motherboards.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (On firmware that supports memory attribute table (MAT), it is recommended to check it. It is usually used in conjunction with SyncRuntimePermissions. This item may conflict with EnableWriteUnprotector. It is recommended to choose one of the two. It is usually applicable to platforms after the 8th generation, and is also applicable to some old platforms)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (Fixes the problem that hardware cannot inject permissions when injecting memory. Generally, this problem exists in motherboards after 2018. If you cannot enter Windows because of this option, please turn it on. This item is usually used in conjunction with RebuildAppleMemoryMap)';

  @override
  String get autoGen5334 =>
      '2nd generation CPU - 3rd generation motherboard hybrid';

  @override
  String get autoGen5335 =>
      '3rd generation CPU - 2nd generation motherboard hybrid';

  @override
  String get autoGen5336 =>
      'Complete the installation without driving the core display for the time being (this can avoid black screen and kernel crash problems caused by the core display buffer frame problem)';

  @override
  String get autoGen5337 => 'Counterfeit device ID';

  @override
  String get autoGen5338 =>
      'Core display is only used for acceleration and calculation tasks, not as output display (independent graphics card output display)';

  @override
  String get autoGen5339 => 'HD3000, HD P3000 and other core displays';

  @override
  String get autoGen5340 => 'HD4000, HD P4000 and other core displays';

  @override
  String get autoGen5341 => 'HD4400, HD4600, HD P4600 and other core displays';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 and other core displays';

  @override
  String get autoGen5343 =>
      'HD5600 core display (P6200, P6300 can be counterfeited)';

  @override
  String get autoGen5344 => 'HD6000, Iris 6100 and other core displays';

  @override
  String get autoGen5345 =>
      'HD520, HD530 and other counterfeit HD620 core displays (applicable to Ventura and above systems)';

  @override
  String get autoGen5346 =>
      'HD520, HD530 and other counterfeit HD620 core displays (applicable to Ventura and above systems, alternative)';

  @override
  String get autoGen5347 =>
      'HD530, HD P530 and other 500 series core displays (applicable to Monterey and below systems)';

  @override
  String get autoGen5348 => 'HD 630, HD P630 and other core displays';

  @override
  String get autoGen5349 =>
      'HD 630, P630 and other counterfeit UHD630 core displays (Option 1)';

  @override
  String get autoGen5350 =>
      'HD 630, P630 and other counterfeit UHD630 core displays (Option 2)';

  @override
  String get autoGen5351 => 'UHD 630 nuclear display output solution one';

  @override
  String get autoGen5352 => 'UHD 630 core display output case 2';

  @override
  String get autoGen5353 =>
      'Intel HD Graphics (for example: i3 380M, i5 480M comes with built-in core display)';

  @override
  String get autoGen5354 =>
      'HD3000 core display output display, suitable for resolutions of 1366x768 and below)';

  @override
  String get autoGen5355 => 'Enable support for resolutions above 1600X900';

  @override
  String get autoGen5356 =>
      'HD3000 nuclear display output display, suitable for resolutions of 1600x900 and above)';

  @override
  String get autoGen5357 =>
      'HD4000 core display driver solution one, suitable for 1366x768 and below resolution, LVDS link method';

  @override
  String get autoGen5358 =>
      'HD4000 core display driver solution two, suitable for 1600x900 and above resolution LVDS link mode, multi-screen output may require more patch configurations)';

  @override
  String get autoGen5359 =>
      'HD4000 core display driver solution three, suitable for monitors with eDP connection)';

  @override
  String get autoGen5360 => 'HD4200, HD4400, HD4600 core display';

  @override
  String get autoGen5361 => 'HD5000, HD5100, HD5200 core display';

  @override
  String get autoGen5362 => 'HD5500 core display';

  @override
  String get autoGen5363 => 'HD5600 core display';

  @override
  String get autoGen5364 => 'HD6000 core display';

  @override
  String get autoGen5365 =>
      'HD520, HD530 and other counterfeit HD620 core displays (for Ventura and above systems)';

  @override
  String get autoGen5366 =>
      'HD 515, HD 520, HD 530, HD 540, HD 550, P530 core display (applicable to Monterey and below systems)';

  @override
  String get autoGen5367 => 'HD 515 nuclear display alternative';

  @override
  String get autoGen5368 => 'HD 510 core display';

  @override
  String get autoGen5369 =>
      'HD 615, HD 620, HD 630, HD 640, HD 650 core display';

  @override
  String get autoGen5370 => 'HD/UHD 620 core display alternative';

  @override
  String get autoGen5371 => 'UHD 617, UHD 620 core display';

  @override
  String get autoGen5372 => 'UHD 630 core display';

  @override
  String get autoGen5373 => 'UHD 620 core display';

  @override
  String get autoGen5374 => 'Intel lris Plus 655 core display';

  @override
  String get autoGen5375 => 'G4/G7 series core display';

  @override
  String get autoGen5376 => 'HD3000 nuclear display output display';

  @override
  String get autoGen5377 => 'HD4000 nuclear display output display';

  @override
  String get autoGen5378 =>
      'HD4200, HD4400, HD4600, HD P4600 and other core displays (it is recommended to check the 4th generation core display dedicated patch in the advanced configuration of the core display, and minor problems that may occur have been fixed)';

  @override
  String get autoGen5379 => 'HD 515 core display';

  @override
  String get autoGen5380 => 'HD 520/530 core display';

  @override
  String get autoGen5381 => 'HD 540/550 core display';

  @override
  String get autoGen5382 => 'HD 580 core display';

  @override
  String get autoGen5383 =>
      'HD P530 core display (such as e3 1245v5 comes with built-in core display)';

  @override
  String get autoGen5384 => 'HD 615 core display';

  @override
  String get autoGen5385 => 'HD 630, HD P630 core display';

  @override
  String get autoGen5386 => 'HD 640/650 core display';

  @override
  String get autoGen5387 => 'HD/UHD 620 core display';

  @override
  String get autoGen5388 => 'UHD 620/630 core display';

  @override
  String get autoGen5389 => 'UHD 655 core display';

  @override
  String get autoGen5390 =>
      'Rename GPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)';

  @override
  String get autoGen5391 =>
      'Rename UPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)';

  @override
  String get autoGen5392 => 'Enable GPI0 devices to support I2C trackpads';

  @override
  String get autoGen5393 =>
      'A necessary driver for macOS kernel extensions, which mainly provides scalability and compatibility for macOS, which allows other developers to write kernel extensions for extending macOS.';

  @override
  String get autoGen5394 =>
      'For example, WhateverGreen, AppleALC, VirtualSMC, etc. can implement various modifications and enhancements to macOS through Lilu.kext, such as supporting different graphics cards, sound cards, virtual machine management, etc.';

  @override
  String get autoGen5395 =>
      'Lilu.kext is usually the first macOS kernel extension loaded, as other plugins may need to rely on its functionality. This ensures that the plugin loads correctly when macOS starts';

  @override
  String get autoGen5396 => 'Essential basic drivers';

  @override
  String get autoGen5397 =>
      'On real Apple hardware, SMC is responsible for managing system management functions such as hardware sensors, fan control, power management, temperature sensors, and battery status. VirtualSMC provides these features on non-Apple hardware to ensure macOS can run properly on these systems';

  @override
  String get autoGen5398 =>
      'Often used in conjunction with other kernel extensions such as Lilu.kext, WhateverGreen, etc. to create a near-real Mac environment on non-Apple hardware';

  @override
  String get autoGen5399 =>
      'The driver is missing and macOS cannot run properly.';

  @override
  String get autoGen5400 =>
      'It mainly provides GPU graphics driver support. Most of them are strongly recommended to check (MacPro7, 1 models and RX460, RX560 and above AMD independent graphics users can remove the check). It usually conflicts with the NootRX and NootedRed drivers. Do not select them at the same time during the installation stage.';

  @override
  String get autoGen5401 =>
      'Supports a variety of graphics cards, including NVIDIA, AMD, and Intel graphics cards. This extension can fix and configure the correct Framebuffer so that the display and resolution work properly';

  @override
  String get autoGen5402 =>
      'Provides support for HDMI and DisplayPort (DP) connections to ensure audio and video outputs work properly';

  @override
  String get autoGen5403 =>
      'Use AppleALC to imitate the built-in sound card (relatively perfect, preferred choice)';

  @override
  String get autoGen5404 =>
      'Use VoodooHDA universal sound card (loaded during boot, only supports macOS BigSur 11.2.3 and below. Higher macOS versions need to add this driver into the system kernel extension to take effect. According to the author\'\'s test, the highest support is macOS Tahoe 26.x official version)';

  @override
  String get autoGen5405 =>
      'USB 3.0 controller compatibility fix for old platforms or AMD platforms';

  @override
  String get autoGen5406 =>
      'Fix the restart problem caused by CPU power management of old platforms before Intel 3rd generation (shown as AppleIntelCPUPowerManagement kernel crash log, or stuck boot logo, or restarting just after entering the system, etc.)';

  @override
  String get autoGen5407 =>
      'Fix AMD Ryzen series CPU power management (only applicable to AMD Ryzen series, if there are restart problems caused by power management, you can consider removing the check box)';

  @override
  String get autoGen5408 =>
      'Battery drive solution 1 (applicable to notebooks of 3rd generation and older platforms)';

  @override
  String get autoGen5409 =>
      'Battery drive solution 2 (applicable to notebooks of 3rd generation and newer platforms)';

  @override
  String get autoGen5410 =>
      'Ambient light sensor (automatic screen brightness), if you do not have an ambient light sensor, do not use it, otherwise it may cause problems';

  @override
  String get autoGen5411 =>
      'Asus notebook fan control, power management and other system sensor optimization, etc. are not recommended for use by non-Asus';

  @override
  String get autoGen5412 =>
      'Lenovo notebook fan control, power management and other system sensor optimization, etc. are not recommended for non-Lenovo machines.';

  @override
  String get autoGen5413 =>
      'Special sensor for Dell laptops to more accurately monitor and control fans. Not recommended for non-Dell machines.';

  @override
  String get autoGen5414 =>
      'Allows the sensor information of AMD processors (such as temperature, power consumption, frequency, etc.) to be exposed to macOS monitoring tools. This driver supports AMD Ryzen series processors and some AMD FX series processors. Other AMD processors may cause unexpected problems. At the same time, some platforms of Sequoia 15 and above systems may have compatibility issues, so choose carefully.';

  @override
  String get autoGen5415 =>
      'Used to support RX6700, RX6750XT, RX6750GRE and other officially unsupported RX6XXX series independent graphics. There is a conflict with the WhateverGreen driver. Do not select both at the installation stage.';

  @override
  String get autoGen5416 =>
      'Supports Navi 21 (Big Sur and above), Navi 22/23 (Monterey and above), and also supports RX6650, RX6950 and other graphics cards';

  @override
  String get autoGen5417 =>
      'Adding this driver when installing macOS for the first time may result in the inability to enter the system. It is recommended to add it after completing the installation.';

  @override
  String get autoGen5418 =>
      'Fix the slowness problem caused by AMD Ryzen 2000~5000 series core display Edge and Chrome browser not turning off hardware acceleration (only applicable to AMD Ryzen series, mainly reducing the use of OpenGL rendering, normal use of QQ, Chrome browser. Using this driver may cause other applications to not work properly, make your own decision)';

  @override
  String get autoGen5419 =>
      'Battery reading repair, fix some battery display problems';

  @override
  String get autoGen5420 =>
      'Improved compatibility with non-Apple NVMe SSDs and reduced idle energy consumption';

  @override
  String get autoGen5421 =>
      'Incompatible blacklisted NVMe disks from Samsung and others cannot effectively fix the timeout crash problem';

  @override
  String get autoGen5422 =>
      'Using this driver with an NVMe SSD with good compatibility may cause a kernel crash, so use it with caution most of the time.';

  @override
  String get autoGen5423 =>
      'Enhance the ability to bypass or disable AMFI. Note: Adding this driver may cause some applications to fail to open or crash. At this time, you can try to remove the driver and only use disable AMFI startup parameters (such as amfi=0x80)';

  @override
  String get autoGen5424 =>
      'Fixed the issue where NVMe solid state drives were recognized as external disks';

  @override
  String get autoGen5425 =>
      'Unlock universal controls, navigation and other functions on unsupported Macs';

  @override
  String get autoGen5426 => 'Fix common hibernation and sleep related issues';

  @override
  String get autoGen5427 =>
      'Allow macOS to use the tethering feature of an Android device over a USB connection';

  @override
  String get autoGen5428 =>
      'CPU variable frequency driver, mainly provides MacPro7,1 frequency conversion support for 11th generation and above platforms';

  @override
  String get autoGen5429 =>
      'CPUFriend is equipped with a data driver to provide CPU frequency conversion data for specific models.';

  @override
  String get autoGen5430 =>
      'Optimize Intel 12th generation and later CPU size and core configurations';

  @override
  String get autoGen5431 =>
      'It can improve single-core performance, but may lead to a decrease in multi-core performance. It is only applicable to 12th generation and above platforms.';

  @override
  String get autoGen5432 =>
      'CPU TSC synchronization solution one, usually preferred';

  @override
  String get autoGen5433 =>
      'Commonly used in multi-core X79, X99, X299 and AMD platforms';

  @override
  String get autoGen5434 =>
      'Used to fix problems such as stuck operation, stuck boot logo, abnormal audio and video synchronization, failure to wake up from sleep, etc.';

  @override
  String get autoGen5435 =>
      'CPU TSC synchronization solution 2, usually used on AMD Ryzen and some Intel platforms';

  @override
  String get autoGen5436 =>
      'Used to fix problems such as operation lags, occasional crashes, audio and video synchronization abnormalities, sleep wake-up failures, etc.';

  @override
  String get autoGen5437 =>
      'Fix the multi-core clock synchronization problem of AMD Ryzen platform CPU (only applicable to AMD Ryzen series, used to fix problems such as operation lag, stuck boot logo, etc. Adding this driver may cause unexpected problems, choose carefully)';

  @override
  String get autoGen5438 =>
      'CPU TSC synchronization solution three, usually used on older Intel platforms and older macOS systems';

  @override
  String get autoGen5439 =>
      'Suitable for multi-core X79, X99, X299 and other platforms, used to fix problems such as operation lag and boot logo stuck';

  @override
  String get autoGen5440 => 'Fixed some Intel Core Display HDMI audio issues';

  @override
  String get autoGen5441 =>
      'Fix the problem of being unable to log in to Apple ID and iCloud, usually used for notebooks without local wired network cards';

  @override
  String get autoGen5442 =>
      'Fix conflicts between the new platform macOS AppleRTC and PC BIOS, such as RTC causing freezes, sudden restarts, or sudden wake-ups from hibernation.';

  @override
  String get autoGen5443 =>
      'PS interface type keyboard and mouse driver (desktop motherboard PS round port keyboard and mouse driver)';

  @override
  String get autoGen5444 =>
      'PS interface type keyboard driver (desktop motherboard PS round port keyboard driver)';

  @override
  String get autoGen5445 =>
      'PS interface type mouse driver (desktop motherboard PS round port mouse driver)';

  @override
  String get autoGen5446 =>
      'Microsoft Surface dedicated keyboard touchpad driver';

  @override
  String get autoGen5447 => 'Brightness shortcut key fix';

  @override
  String get autoGen5448 =>
      'Optimize AMD Radeon graphics card performance, but certain scenarios may cause the system to crash or fail to start, so check carefully';

  @override
  String get autoGen5449 =>
      'Allow RadeonGadget.app to read AMD graphics card GPU temperature and other information';

  @override
  String get autoGen5450 =>
      'Export AMD GPU temperature and other information to VirtualSMC for monitoring tools to read';

  @override
  String get autoGen5451 =>
      'Fixed USB controller compatibility issues on older platforms such as AMD FM1/FM2/AM3';

  @override
  String get autoGen5452 =>
      'Universal USB injection solution, the default choice when USB is not customized';

  @override
  String get autoGen5453 =>
      'USBToolBox solution, usually used with customized UTBMap.kext';

  @override
  String get autoGen5454 =>
      'Fix the USB3.0 problem on Intel 3rd generation and later updated platforms (required for 300 series chipsets (H370, B360, H310, Z390 [not required for 10.14 and above systems], X79, X99, ASRock Intel motherboards [except B460/Z490+])';

  @override
  String get autoGen5455 =>
      'Fix EHCI USB2.0 compatibility issues on AMD FM1, FM2, AM3 and other old platforms';

  @override
  String get autoGen5456 =>
      'Fix XHCI USB3.0 compatibility issues on AMD FM1, FM2, AM3 and other old platforms';

  @override
  String get autoGen5457 =>
      'Fix CPU power management of Intel 3rd generation and older platforms Ventura 13 and above systems';

  @override
  String get autoGen5458 =>
      'Realtek series SD card reader driver (used with RealtekCardReaderFriend)';

  @override
  String get autoGen5459 =>
      'RealtekCardReader supporting driver to improve Realtek card reader compatibility';

  @override
  String get autoGen5460 =>
      'SDHC memory card device driver, supports eMMC and MMC memory cards';

  @override
  String get autoGen5461 => '100M wired network card driver';

  @override
  String get autoGen5462 =>
      'Support RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139 network cards';

  @override
  String get autoGen5463 => 'Usually used for traditional old platforms';

  @override
  String get autoGen5464 => 'Gigabit network card driver';

  @override
  String get autoGen5465 =>
      'Support Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V and other network cards';

  @override
  String get autoGen5466 => 'Gigabit wired network card driver';

  @override
  String get autoGen5467 =>
      'Supports BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M and other network cards';

  @override
  String get autoGen5468 =>
      'Supports AR8131, AR8132, AR8151, AR8152 and other network cards';

  @override
  String get autoGen5469 =>
      'Supports Realtek RTL8111 / 8168 B / C / D / E / F / G / H, supports Killer E2500 and above network cards';

  @override
  String get autoGen5470 =>
      'RealtekRTL8111 new version driver may only support 10.13.x and above systems';

  @override
  String get autoGen5471 =>
      'Supports AR816x, AR817x, Killer E220x, Killer E2400 and other network cards';

  @override
  String get autoGen5472 => 'Gigabit (support 2.5G) wired network card driver';

  @override
  String get autoGen5473 =>
      'Supports all IGC-compliant devices (i225, i226, i226-V and other wired network cards). The PCI ID of some devices may not be in the IOPCIMatch list. Add it yourself for testing.';

  @override
  String get autoGen5474 =>
      'Compared with the AppleEthernetE1000 driver, it has better performance and stability (i226-V may cause kernel panic when using AppleEthernetE1000 in Monterey system)';

  @override
  String get autoGen5475 =>
      'Support Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 and i211 network cards';

  @override
  String get autoGen5476 =>
      'There may be instability issues, it is recommended to stay in the Big Sur version and use SmallTree';

  @override
  String get autoGen5477 =>
      'Typically applicable to macOS Monterey 12 and above systems';

  @override
  String get autoGen5478 =>
      'Support Intel 5 Series: 82578LM, 82578LC, 82578DM, 82578DC';

  @override
  String get autoGen5479 => 'Support Intel 6 and 7 Series: 82579LM, 82579V';

  @override
  String get autoGen5480 =>
      'Support Intel 8 and 9 Series: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3';

  @override
  String get autoGen5481 =>
      'Support Intel 100 Series: I219V, I219LM, I219V2, I219LM2, I219LM3';

  @override
  String get autoGen5482 => 'Support Intel 200 Series: I219LM, I219V';

  @override
  String get autoGen5483 => 'Support Intel 300 Series: I219LM, I219V';

  @override
  String get autoGen5484 =>
      'The driver is maintained by acidanthera. OS X 10.6 ~ 10.8 uses IntelSnowMausi';

  @override
  String get autoGen5485 =>
      'This driver is provided by Laura Müller. OS X 10.6 ~ 10.8 uses IntelSnowMausi';

  @override
  String get autoGen5486 =>
      'RTL8125 old driver, supports Realtek RTL8125 series Ethernet cards';

  @override
  String get autoGen5487 =>
      'Gigabit (supports 2.5G, 5G) wired network card driver';

  @override
  String get autoGen5488 =>
      'New driver for RTL812x, supports Realtek RTL8125, RTL8126 series Ethernet cards';

  @override
  String get autoGen5489 =>
      'Supported models: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A';

  @override
  String get autoGen5490 =>
      'Supports Intel i211 wired network card, this model is common on AMD motherboards';

  @override
  String get autoGen5491 =>
      'Generally applicable to macOS Big Sur and below, macOS Monterey may be unstable';

  @override
  String get autoGen5492 => 'Compatibility: OS';

  @override
  String get autoGen5493 => '10G (support 10G) wired network card driver';

  @override
  String get autoGen5494 => 'Supports Intel X520,';

  @override
  String get autoGen5495 => 'Only supports macOS 10.13 and above systems';

  @override
  String get autoGen5496 =>
      'It is recommended to turn off WoL in BIOS UEFI settings';

  @override
  String get autoGen5497 =>
      'Fixed the issue where disk utility does not recognize SATA disks during installation of Catalina 10.15 and below systems';

  @override
  String get autoGen5498 =>
      'Fixed the issue where Disk Utility does not recognize SATA disks during the installation process of Big Sur 11 and above systems';

  @override
  String get autoGen5499 =>
      'Fix compatibility issues related to AMD platform Adobe Family Bucket';

  @override
  String get autoGen5500 =>
      'Supports macOS High Sierra 10.13 ~ macOS Tathoe 26.x (usually used with HeliPort client)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (Note: The Sequoia 15 system needs to be patched with the OCLP Intel-specific modified version before it can be used normally!!!)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4 and above';

  @override
  String get autoGen5503 =>
      'Mainly fixes some Bluetooth device problems (applicable to some Broadcom and other USB Bluetooth devices)';

  @override
  String get autoGen5504 =>
      'Qualcomm WiFi, supports macOS Big Sur 11.x and below';

  @override
  String get autoGen5505 => 'Qualcomm (Atheros)-AR9285';

  @override
  String get autoGen5506 => 'Qualcomm (Atheros)-AR9380';

  @override
  String get autoGen5507 => 'Qualcomm (Atheros)-AR9485';

  @override
  String get autoGen5508 => 'Qualcomm (Atheros)-AR9565';

  @override
  String get autoGen5509 => 'Qualcomm (Atheros)-AR9463';

  @override
  String get autoGen5510 => 'Qualcomm (Atheros)-AR9462';

  @override
  String get autoGen5511 =>
      'Disable Touch ID to reduce system resource waste and improve stability';

  @override
  String get autoGen5512 =>
      'Usually suitable for notebooks with fingerprint recognition and below macOS Big Sur 11';

  @override
  String get autoGen5513 =>
      'The TRIM policy is configured by default (that is, SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1. The APFS system performs TRIM operations based on the default TRIM timeout of macOS, which is applicable to most SSDs that support TRIM.';

  @override
  String get autoGen5515 =>
      '2. On SSDs that support TRIM, macOS automatically manages the execution of TRIM, which helps clean up deleted data blocks, making SSD writing more efficient, avoiding frequent write amplification, and improving writing speed.';

  @override
  String get autoGen5516 =>
      '3.TRIM will regularly clean up unused blocks to reduce SSD wear and tear, thus extending SSD service life.';

  @override
  String get autoGen5517 =>
      '4. Some third-party SSDs that do not fully support TRIM may experience delays or even freezes when executing TRIM, causing the boot process to become very slow.';

  @override
  String get autoGen5518 =>
      'Completely disable TRIM functionality (i.e. set SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => 'Benefits of disabling TRIM:';

  @override
  String get autoGen5520 =>
      '1. Improve boot speed. For third-party SSDs that do not support or partially support TRIM, macOS may cause delays due to trying TRIM operations during startup. Disabling TRIM can eliminate this delay and improve boot speed.';

  @override
  String get autoGen5521 =>
      '2. Improve compatibility. Some SSDs with poor compatibility can reduce the risk of abnormal crashes.';

  @override
  String get autoGen5522 =>
      '3. Extend the life of non-TRIM SSDs. On SSDs that do not support TRIM, forcibly enabling TRIM may accelerate wear and affect life. Disabling TRIM can extend the life of such SSDs.';

  @override
  String get autoGen5523 => 'Disadvantages of disabling TRIM:';

  @override
  String get autoGen5524 =>
      '1. SSD performance declines. Some SSDs do not have the TRIM garbage collection mechanism. The SSD cannot clean and mark free blocks in time after deleting data, which may cause the writing speed to slow down.';

  @override
  String get autoGen5525 =>
      '2. Disk space management efficiency is reduced. After disabling it, the SSD controller requires more time and resources for garbage collection, which may lead to increased fragmentation and reduced space management efficiency.';

  @override
  String get autoGen5526 =>
      '3. Shorten the life of the SSD. For SSDs that support TRIM, after disabling TRIM, the SSD cannot optimize the writing process, which will increase the wear of the storage blocks, thus shortening the life of the SSD that supports TRIM.';

  @override
  String get autoGen5527 =>
      'Although disabling TRIM can bring some boot speed improvements, for modern SSDs that support TRIM, it is recommended to keep TRIM turned on for long-term performance and stability. This speed increase is usually small and will only have a significant effect on some incompatible SSDs.';

  @override
  String get autoGen5528 =>
      'CPU variable frequency driver, here mainly provides 11th to 14th generation MacPro7,1 variable frequency support';

  @override
  String get autoGen5529 => 'Realtek SD card reader and its supporting driver';

  @override
  String get autoGen5530 =>
      'Suitable for 3rd generation and below old platforms, input devices connected based on PS/2 bus protocol, such as keyboard, mouse, touchpad, etc. It can realize a certain degree of multi-touch function, but the support is limited.';

  @override
  String get autoGen5531 =>
      'Suitable for 3rd generation and above platforms, input devices connected based on PS/2 bus protocol, such as keyboard, mouse, touchpad, etc. Provide support for PS/2 touchpad through sub-driver, and can achieve a certain degree of multi-touch function, but the support is limited.';

  @override
  String get autoGen5532 =>
      'PS2 keyboard is suitable for touchpads, touch screens, sensors and other input devices connected based on I2C bus protocol. Provides multi-touch gesture support to simulate the native touch experience of macOS.';

  @override
  String get autoGen5533 =>
      'PS2 keyboard, suitable for Synaptics touchpad connected based on RMI4 protocol bus protocol. Focus on better supporting Synaptics devices, providing multi-touch and gesture capabilities similar to macOS\'\'s native touchpad.';

  @override
  String get autoGen5534 =>
      'PS2 keyboard, suitable for I2C bus-based touch devices and Synaptics touchpads using RMI4 protocol. RMII2C combines the advantages of VoodooI2C and VoodooRMI.';

  @override
  String get autoGen5535 =>
      'Round keyboard and mouse driver based on PS/2 bus protocol connection';

  @override
  String get autoGen5536 =>
      'Microsoft Surface dedicated keyboard, touchpad, and touch screen driver combination.';

  @override
  String get autoGen5537 => 'Broadcom BCM94360 driver-free series';

  @override
  String get autoGen5538 =>
      'Apple AirPort and Fenvi driver-free cards, Ventura and below are driver-free, and the patch supports Sonoma 14 and Sequoia 15! Note: Sonoma 14 and above systems need to be patched with OCLP before they can be used normally! ! !';

  @override
  String get autoGen5539 => 'Broadcom BCM943XX non-driver-free series';

  @override
  String get autoGen5540 =>
      'Cards other than Apple AirPort and Fenvi, Catalina and below are driver-free, and the patch supports Sonoma 14 and Sequoia 15! Note: Sonoma 14 and above systems need to be patched with OCLP before they can be used normally! ! !';

  @override
  String get autoGen5541 => 'Old Broadcom BCM4331';

  @override
  String get autoGen5542 =>
      'Note that Monterey 12 or above systems need to use the OCLP patch before they can be used normally! ! !';

  @override
  String get autoGen5543 => 'Old Broadcom BCM43224';

  @override
  String get autoGen5544 => 'Qualcomm (Atheros) WiFi model driver';

  @override
  String get autoGen5545 => 'Qualcomm WiFi manual option';

  @override
  String get autoGen5546 =>
      'Qualcomm (Atheros) WiFi Big Sur and following dependencies';

  @override
  String get autoGen5547 =>
      'macOS Big Sur 11 and below systems use HS80211Family to match specific model drivers';

  @override
  String get autoGen5548 =>
      'Qualcomm (Atheros) WiFi Monterey and above dependencies';

  @override
  String get autoGen5549 =>
      'macOS Monterey 12 and above systems use IO80211ElCap combination';

  @override
  String get autoGen5550 =>
      'Fixed battery recognition issue in \"System Preferences\" for Surface Pro 7 and Book 3 series';

  @override
  String get autoGen5551 =>
      'Fixed the problem of POST error when starting the real-time clock of some HP brand computers.';

  @override
  String get autoGen5552 =>
      'Disable RTC wake-up plan and fix the problem of automatic wake-up after sleep';

  @override
  String get autoGen5553 => 'Generation 0-Penryn-775 platform';

  @override
  String get autoGen5554 => 'Generation 1-Lynnfield-1156 platform';

  @override
  String get autoGen5555 => '2nd generation-Sandy Bridge-1155 platform';

  @override
  String get autoGen5556 => '3rd generation-Ivy Bridge-1155 platform';

  @override
  String get autoGen5557 => '4th generation-Haswell-1150 platform';

  @override
  String get autoGen5558 => '5th generation-Broadwell-1150 platform';

  @override
  String get autoGen5559 => '6th generation-Skylake-1151 platform';

  @override
  String get autoGen5560 => '7th Generation-Kaby Lake-1151 Platform';

  @override
  String get autoGen5561 => '8th generation-Coffee Lake-1151 platform';

  @override
  String get autoGen5562 => '9th generation-Coffee Lake-1151 platform';

  @override
  String get autoGen5563 => '10th Generation-Comet Lake-1200 Platform';

  @override
  String get autoGen5564 => '11th Generation-Rocket Lake-1200 Platform';

  @override
  String get autoGen5565 => '12th generation-Alder Lake-1700 platform';

  @override
  String get autoGen5566 => '13th generation-Raptor Lake-1700 platform';

  @override
  String get autoGen5567 => '14th generation-Raptor Lake Refresh-1700 platform';

  @override
  String get autoGen5568 => '15th Generation-Arrow Lake-1851 Platform';

  @override
  String get autoGen5569 => 'Generation 0-Penryn-Notebook';

  @override
  String get autoGen5570 => '1st Generation-Clarksfield&Arrandale-Notebook';

  @override
  String get autoGen5571 => '2nd generation-Sandy Bridge-notebook';

  @override
  String get autoGen5572 => '3rd generation-Ivy Bridge-notebook';

  @override
  String get autoGen5573 => '4th Generation-Haswell-Laptop';

  @override
  String get autoGen5574 => '5th generation-Broadwell-notebook';

  @override
  String get autoGen5575 => '6th generation-Skylake-notebook';

  @override
  String get autoGen5576 => '7th generation-Kaby Lake-notebook';

  @override
  String get autoGen5577 => '8th Generation-Coffee Lake-Notebook';

  @override
  String get autoGen5578 => '9th Generation-Coffee Lake-Notebook';

  @override
  String get autoGen5579 => '10th Generation-Comet Lake-Laptop';

  @override
  String get autoGen5580 => '10th Generation-Ice Lake-Laptop';

  @override
  String get autoGen5581 => '11th generation-Tiger Lake-notebook';

  @override
  String get autoGen5582 => '12th generation-Alder Lake-notebook';

  @override
  String get autoGen5583 => '13th generation-Raptor Lake-notebook';

  @override
  String get autoGen5584 => '14th generation-Raptor Lake Refresh-notebook';

  @override
  String get autoGen5585 => 'Generation 0-Penryn-mini host';

  @override
  String get autoGen5586 => '1st generation-Clarksfield&Arrandale-mini host';

  @override
  String get autoGen5587 => '2nd generation-Sandy Bridge-mini host';

  @override
  String get autoGen5588 => '3rd generation-Ivy Bridge-mini host';

  @override
  String get autoGen5589 => '4th generation-Haswell-mini host';

  @override
  String get autoGen5590 => '5th generation-Broadwell-mini host';

  @override
  String get autoGen5591 => '6th generation-Skylake-mini host';

  @override
  String get autoGen5592 => '7th generation-Kaby Lake-mini host';

  @override
  String get autoGen5593 => '8th generation-Coffee Lake-mini host';

  @override
  String get autoGen5594 => '9th generation-Coffee Lake-mini host';

  @override
  String get autoGen5595 => '10th generation-Comet Lake-mini host';

  @override
  String get autoGen5596 => '10th generation-Ice Lake-mini host';

  @override
  String get autoGen5597 => '11th generation-Tiger Lake-mini host';

  @override
  String get autoGen5598 => '12th generation-Alder Lake-mini host';

  @override
  String get autoGen5599 => '13th generation-Raptor Lake-mini host';

  @override
  String get autoGen5600 => '14th generation-Raptor Lake Refresh-mini host';

  @override
  String get autoGen5601 => 'Generation 1-Nehalem&Westmere-X58 platform';

  @override
  String get autoGen5602 => '2nd generation-Sandy Bridge-E-X79 platform';

  @override
  String get autoGen5603 => '3rd generation-Ivy Bridge-E-X79 platform';

  @override
  String get autoGen5604 => '4th generation-Haswell-E-X99 platform';

  @override
  String get autoGen5605 => '5th generation-Broadwell-E-X99 platform';

  @override
  String get autoGen5606 => '6th generation-Skylake-X&W-X299 platform';

  @override
  String get autoGen5607 => '10th Generation-Cascade Lake-X&W Platform';

  @override
  String get autoGen5608 => 'Bulldozer(15h) and Jaguar(16h)-Notebook';

  @override
  String get autoGen5609 => 'Ryzen-notebook';

  @override
  String get autoGen5610 => 'Bulldozer(15h) and Jaguar(16h)-mini host';

  @override
  String get autoGen5611 => 'Ryzen-mini host';

  @override
  String get autoGen5612 => 'Ryzen and Threadripper(17h and 19h)-Server';

  @override
  String get autoGen5613 => 'test';

  @override
  String get autoGen5614 => 'nvram test';

  @override
  String get autoGen5615 => 'Unable to get home directory';

  @override
  String get autoGen5616 => 'Source directory does not exist';

  @override
  String get autoGen5617 => 'Unable to get desktop directory';

  @override
  String get autoGen5618 => 'Path check fails and returns empty path';

  @override
  String get autoGen5619 =>
      'Failed to obtain plist file information and the returned result was incomplete.';

  @override
  String get autoGen5620 =>
      'NOTE: NormalizeHeaders is enabled and the table ID contains non-printable characters!';

  @override
  String get autoGen5621 =>
      'Note: NormalizeHeaders is not enabled and the table ID contains the \'\'?\'\' character!';

  @override
  String get autoGen5622 => 'No target config.plist file selected!';

  @override
  String get autoGen5623 => '=> Unable to determine config.plist type!';

  @override
  String get autoGen5624 => '=> SSDT table not found! jump over...';

  @override
  String get autoGen5625 => '=> Duplicate SSDT table not found!';

  @override
  String get autoGen5626 => '=> Patch not found! jump over...';

  @override
  String get autoGen5627 => '=> Duplicate Patch not found!';

  @override
  String get autoGen5628 => '=> Drop patch not found! jump over...';

  @override
  String get autoGen5629 => '=> Duplicate Drop patch not found!';

  @override
  String get autoGen5630 =>
      '=> No Quirks configuration found that needs to be updated! jump over...';

  @override
  String get autoGen5631 => '=> Checking target Quirks configuration...';

  @override
  String get autoGen5632 => 'Backing up current config configuration file...';

  @override
  String get autoGen5633 => 'Preparing to copy SSDT files...';

  @override
  String get autoGen5634 => 'Configuration saved successfully!';

  @override
  String get autoGen5635 => 'The merge is complete!';

  @override
  String get autoGen5636 => 'Merge failed!';

  @override
  String get autoGen5637 =>
      'Note: Potential errors are found during the merge process, please check and fix them!';

  @override
  String get autoGen5638 =>
      'Note: The current configuration is not set up to override the target EFI mode!';

  @override
  String get autoGen5639 => 'You need to do the following manually:';

  @override
  String get autoGen5640 => 'Root dictionary element not found';

  @override
  String get autoGen5641 =>
      'Eliminate IRQ conflicts, often used for sound card repairs';

  @override
  String get autoGen5642 =>
      '• HPET (High Precision Event Timer) is a hardware module used for system timing.\n• Under macOS, some motherboard HPET devices may cause IRQ (interrupt request) conflicts, which will affect the normal operation of the audio device, causing the system to be unstable or even unable to start.\n• This patch adjusts HPET-related ACPI device definitions to avoid IRQ conflicts, ensure that macOS can correctly use HPET timers, fix sound card issues, and improve system stability.';

  @override
  String get autoGen5643 =>
      'Counterfeit EC and inject USB power attributes (applicable to Intel 6th generation and above desktop computers)';

  @override
  String get autoGen5644 =>
      '• Applicable to Intel 6th generation and above desktop computers\n• This patch will disable the system\'\'s original EC device and then create a virtual EC device to \"trick\" macOS into thinking that a compatible EC exists, thus solving startup problems caused by missing EC devices. \n• Added necessary USB power properties to fix potential issues. Equivalent to merge: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'Only counterfeits EC, does not affect existing EC, and injects USB power attributes at the same time (applicable to Intel 6th generation and above notebooks)';

  @override
  String get autoGen5646 =>
      '• Applicable to Intel 6th generation and above notebooks\n• Suitable for notebooks, it does not delete or modify the existing EC, but creates a new virtual EC separately to avoid damaging the original EC device and preventing functional abnormalities such as notebook power management and keyboard backlight.\n• Added necessary USB power properties to fix potential issues. Equivalent to merge: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 =>
      'Counterfeit EC (applicable to Intel 5th generation and below desktop computers)';

  @override
  String get autoGen5648 =>
      '• Suitable for Intel 5th generation and below desktops\n• This patch will disable the system\'\'s original EC device and then create a virtual EC device to \"trick\" macOS into thinking that a compatible EC exists, thus solving startup problems caused by missing EC devices.';

  @override
  String get autoGen5649 =>
      'Only counterfeit EC, does not affect existing EC (applicable to Intel 5th generation and below notebooks)';

  @override
  String get autoGen5650 =>
      '• Applicable to Intel 5th generation and below notebooks\n• It does not delete or modify the existing EC, but creates a new virtual EC separately to avoid damaging the original EC device and preventing functional abnormalities such as notebook power management and keyboard backlight.';

  @override
  String get autoGen5651 =>
      'USB power attribute correction (applicable to Intel 6th generation and newer platforms)';

  @override
  String get autoGen5652 =>
      '• Applicable to Intel Skylake 6th generation and above, server Haswell-E 4th generation and above, AMD Ryzen and other platforms\n• Starting with Intel Skylake and newer processors, macOS requires specific USB power properties to ensure that USB devices are properly powered and recognized.\n• This patch corrects the power management of USB ports to comply with macOS requirements and solves problems such as abnormal USB device recognition, insufficient power supply, and inability to hot-plug.\n• For notebooks: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml The combination of the two is equivalent to SSDT-EC-USBX-LAPTOP.aml\n• For desktop: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml The combination of the two is equivalent to SSDT-EC-USBX-DESKTOP.aml';

  @override
  String get autoGen5653 =>
      'CPU core identification, enabling frequency adjustment and energy saving correction';

  @override
  String get autoGen5654 =>
      '• SSDT-PLUG is suitable for Intel Haswell 4th generation ~ 11th generation, server Haswell-E 4th generation and above platforms (when customizing SSDT-PLUG, the tool automatically detects and generates it!)\n• SSDT-PLUG-ALT is suitable for Intel Alder Lake 12th generation and above, and AMD Ryzen platform (when customizing SSDT-PLUG, the tool automatically detects and generates it and renames it to SSDT-PLUG-ALT!)\n• macOS relies on the CPU power management plug-in (PluginType) to adjust the CPU frequency and improve energy efficiency and battery life.\n• This patch will modify the CPU definition so that macOS thinks it is a plugin-type = 1 processor required by Apple devices, thereby correctly loading CPU frequency management and improving performance and power consumption control.';

  @override
  String get autoGen5655 =>
      'Enable NVRAM support (usually for Intel native 300 series motherboards)';

  @override
  String get autoGen5656 =>
      '• Applicable to Intel Coffee Lake 8th generation ~ 9th generation platforms\n• Native 300 series motherboards (such as Z370, B360) may not use NVRAM correctly under macOS, causing some functions (such as iMessage, volume memory, boot parameters, etc.) to not be saved.\n• This patch enables the motherboard\'\'s PMC (Power Management Controller), allowing macOS to use native NVRAM normally without the need for an additional EmuVariableUEFI driver.';

  @override
  String get autoGen5657 =>
      'Add PNLF device for backlight support (notebooks and all-in-ones only)';

  @override
  String get autoGen5658 =>
      '• macOS requires a PNLF device (Panel Brightness) to correctly control notebook screen brightness.\n• This patch will create a PNLF device in ACPI, allowing macOS to adjust screen brightness and display brightness control options in System Preferences.\n• Suitable for notebooks and some all-in-one computers to solve the problem of unavailable brightness adjustment.\n• UID = 14, applicable to: Intel 1st generation Arrandale, 2nd generation Sandy Bridge, 3rd generation Ivy Bridge\n  Note: Some machines using UID: 14 will encounter limited maximum brightness or other problems. In order to solve these problems, the correct device path of the iGPU (integrated graphics card) must be set, and the IGPU register information may need to be supplemented.\n• UID = 15, applicable to: Intel 4th generation Haswell, 5th generation Broadwell\n• UID = 16, applicable to: Intel 6th generation Skylake, 7th generation Kaby Lake, some 4th generation Haswell\n• UID = 17, applicable to: Custom brightness, usually used for some non-standard devices or Hackintosh settings with special needs\n• UID = 18, suitable for: Custom brightness, usually used for some non-standard devices or Hackintosh settings with special needs\n• UID = 19, applicable to: Intel 8th generation CoffeeLake and above, below 10th generation, and AMD notebooks\n• UID = 99, applies to: Others (requires custom applbkl-name / applbkl-data device properties), may not work at all';

  @override
  String get autoGen5659 =>
      'Provides sensor support required for screen backlight adjustment (only applicable to notebooks and all-in-one computers)';

  @override
  String get autoGen5660 =>
      '• Used to simulate and enable Apple\'\'s native sensor (Ambient Light Sensor, ALS) function to automatically adjust screen brightness\n• If your device really has ALS (such as some high-end notebooks) and there are problems, you can try to add SSDT-ALS0 to correct the automatic brightness adjustment function, otherwise it is not recommended to add\n• Applicable to: All-in-one PCs (AIOs) and laptops only';

  @override
  String get autoGen5661 =>
      'macOS disguises itself as Windows and unlocks blocked devices (such as I2C touchpads)';

  @override
  String get autoGen5662 =>
      '• _OSI (Operating System Interface) is a method of ACPI that allows the operating system to report which features it supports.\n• Some motherboard firmware may decide whether to enable certain devices based on the _OSI return value, which may not be recognized by macOS, resulting in loss of functionality.\n• The patch \"tricks\" the firmware into thinking that macOS is also Windows, thus activating hidden features such as: I2C touchpad, battery management, etc.';

  @override
  String get autoGen5663 => 'USB port reset and fix';

  @override
  String get autoGen5664 =>
      '• Some OEMs violate the ACPI specification, which causes problems when booting macOS. To resolve this issue, the RHUB device needs to be shut down and force macOS to rebuild the port manually.\n• This patch resets the USB controller (including EHC1, EHC2 and other USB device shielding and renaming) when macOS starts, so that all USB ports can be correctly identified, and is used with USB mapping (such as: UTBMap.kext) to ensure that USB devices work properly.\n• Usually suitable for desktop 400 series motherboards (Asus, etc.) and mobile IceLake platforms (Dell, Lenovo, etc.).';

  @override
  String get autoGen5665 => 'Create bridge for missing PCI device path';

  @override
  String get autoGen5666 =>
      '• The PCI device paths of some motherboards or devices may not be recognized correctly under macOS, causing the device to not work properly, such as graphics cards, sound cards, wireless network cards, etc.\n• This patch will create the correct PCI bridges for these devices, ensuring that macOS can correctly recognize and use these PCI devices.';

  @override
  String get autoGen5667 =>
      'Correct the APIC table to solve the CPU kernel panic problem (applicable to HEDT server platform)';

  @override
  String get autoGen5668 =>
      '• Repair or rewrite the Processor ID in the APIC table to ensure that macOS can correctly identify the number and number of CPU cores and avoid kernel panic or core identification errors.\n• The original APIC table needs to be dropped in the firmware before the patched table can be loaded.\n• Applicable to X58, X79, X99, X299 and other Intel server (HEDT) platforms.';

  @override
  String get autoGen5669 =>
      'Remove DMAR reserved memory area, fix system startup problems and network card compatibility issues';

  @override
  String get autoGen5670 =>
      '• DMAR (DMA Remapping Table) is part of Intel VT-d virtualization technology for IOMMU (Input-Output Memory Management Unit) support.\n• This patch will remove the reserved memory area in the DMAR table that is causing the problem, thus preventing macOS from misreading the DMAR and causing the system to fail to boot.\n• Provide support for VT-d compatibility so that VT-d works properly in macOS Big Sur and newer, especially involving hardware driven by DriverKit.\n• macOS supports VT-d, but there are compatibility issues with the DMAR table provided by some motherboards or BIOS, which may cause macOS to cause kernel crashes, startup lags, system instability and other issues when parsing the ACPI DMAR table (stuck in AppleACPICPU, IOPCI, AppleVTD related log locations).\n• Supported hardware range: I225 network card, Aquantia network card, some WiFi devices, etc.\n• The original DMAR table needs to be dropped in the firmware before the patched table can be loaded.\n• Applicable CPU: Any processor that supports VT-d technology.';

  @override
  String get autoGen5671 => 'Add system bus SMBus support';

  @override
  String get autoGen5672 =>
      '• macOS requires an SMBus (System Management Bus) device to properly run certain services, such as:\n  I2C touchpad, battery management, light-sensing automatic brightness adjustment, some Wi-Fi/Bluetooth devices\n• SSDT-SBUS-MCHC makes macOS think this is a native Apple device by adding SBUS (System Management Bus) and MCHC (Memory Controller) devices to ACPI, ensuring that related functions work properly.\n• If the device I2C touchpad, battery information, and automatic brightness adjustment cannot be used, you can try to enable this patch.';

  @override
  String get autoGen5673 =>
      'Fix the problem of core graphics acceleration failure (usually applicable to Ivy Bridge and Sandy Bridge)';

  @override
  String get autoGen5674 =>
      '• Intel Management Engine (IMEI for short) is a hardware interface used to connect to the management engine. It is only needed when old platforms (Sandy/Ivy) and some motherboards lack MEI/IMEI/HECI devices.\n• Applicable to Intel 3rd generation Ivy Bridge processor and 6 series motherboard when mixed (for example: i3 3225 processor, H61 motherboard), core graphics acceleration problem\n• Applicable to Intel 2nd generation Sandy Bridge processor and 7 series motherboard when mixed (for example: i5 2500k processor, B75 motherboard), core graphics acceleration problem\n• Intel 3rd generation Ivy Bridge processors paired with 7 series motherboards, and Intel 2nd generation Sandy Bridge processors paired with 6 series motherboards do not require this SSDT!\n• Intel 4th generation Haswell and newer platforms can usually implement MEI/IMEI/HECI devices correctly and do not need this SSDT!';

  @override
  String get autoGen5675 =>
      'Fix the problem of shutting down and restarting or shutting down without power supply';

  @override
  String get autoGen5676 =>
      '• Fixed the problem that some motherboards sometimes do not completely turn off the power to the USB controller when macOS is shutting down (S5), resulting in failure to shut down normally (shutdown becomes restarting or shutdown without power)\n• Requires ACPI rename patch: _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      'Check the current system status, mainly to check whether S3 sleep is supported (non-customized SSDT)';

  @override
  String get autoGen5678 =>
      '• Check whether the current machine is an AOAC machine (non-customized SSDT)\n• Check the system status in the current BIOS settings, mainly to check whether S3 sleep is supported (non-customized SSDT)\n• Note: Only non-AOAC machines are compatible with S3 sleep. AOAC machines conflict with S3 sleep and do not support S3 sleep!\n• If the check result shows that the system status of a non-AOAC machine (AOAC machine does not support S3 sleep, do not read below) does not support S3 sleep, there may be the following situations:\n  1. The motherboard firmware supports S3 sleep, but S3 sleep is not enabled in the BIOS settings. After it is enabled, S3 sleep can be supported.\n  2. The motherboard firmware does not physically castrate S3, but the DSDT does not define the _S3 method. Completing the _S3 method has a probability of fixing the S3 sleep problem.\n  3. The motherboard firmware physically castrates S3 and does not support S3 sleep at all. Even if the _S3 method is completed, the S3 sleep problem cannot be repaired.';

  @override
  String get autoGen5679 =>
      'Check whether it is an AOAC machine (non-customized SSDT)';

  @override
  String get autoGen5680 =>
      '• Check whether it is an AOAC machine (non-customized SSDT) based on FACP.aml\n• Note: Only non-AOAC machines are compatible with S3 sleep. AOAC machines conflict with S3 sleep and do not support S3 sleep! AOAC machines are common in notebooks.\n• Once the AOAC machine enters S3 sleep, it may appear that it cannot be woken up after sleeping and appears in a crash state, and can only be forced to shut down. It is recommended to disable S3 sleep.\n• AOAC machines recommend considering the following solutions:\n  1. Unlock BIOS and disable AOAC (usually difficult to do, but the most stable)\n  2. Disable S3 sleep (disable S3 sleep in BIOS, or SSDT-S3-DISABLE to disable S3 sleep)\n  3. Turn off the independent graphics power supply\n  4. Use NVMeFix.kext to enable APST of SSD\n  5. Enable ASPM (BIOS advanced options enable ASPM, SSDT patch enables L1)';

  @override
  String get autoGen5681 =>
      'Fix the problem of waking up from sleep due to USB controller';

  @override
  String get autoGen5682 =>
      '• Rename GPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)\n• SSDT-GPRW is more commonly used because most platforms use the GPRW method and very few platforms provide and use the UPRW method.\n• Available for Skylake and newer platforms';

  @override
  String get autoGen5683 =>
      '• Rename GPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)\n• SSDT-UPRW is rarely used because most platforms use the GPRW method and very few platforms provide and use the UPRW method.\n• Available for Skylake and newer platforms';

  @override
  String get autoGen5684 =>
      'Fix sleep button sleep problem (applicable to notebooks)';

  @override
  String get autoGen5685 =>
      '• When some computers enter sleep through the sleep button SLPB (PNP0C0E), ACPI transmits incorrect parameters, causing macOS to mistakenly think it is a shutdown. This may lead to: direct restart, crash after sleep, or successful sleep but damaged system status.\n• Pretend \"lid is closed\" when pressing the sleep button, forcing dangerous PNP0C0E sleep into safe and stable PNP0C0D sleep\n• Typically suitable for laptops';

  @override
  String get autoGen5686 =>
      'Fixed the issue where you need to press any key to turn on the screen after waking up';

  @override
  String get autoGen5687 =>
      '• Fixed the issue where some machines need to press any key to turn on the screen after waking up';

  @override
  String get autoGen5688 =>
      'Fix the abnormal breathing light problem of the power button after waking up (applicable to Lenovo notebooks)';

  @override
  String get autoGen5689 =>
      '• Fixed an issue where the breathing light on side A and the breathing light on the power button did not return to normal after waking up on some Lenovo notebooks\n• Fixed the issue where the F4 microphone indicator light status is abnormal after waking up on some Lenovo laptops\n• Mainly applicable to Lenovo series notebooks, other brands of notebooks are usually not applicable';

  @override
  String get autoGen5690 =>
      'Disable system S3 sleep state (fix S3 sleep wake-up crash, restart or shutdown issues)';

  @override
  String get autoGen5691 =>
      '• Only disable S3 sleep state under macOS system to avoid system crash, restart or shutdown when macOS system wakes up\n• When disabled, only macOS no longer supports S3 sleep (clicking the sleep button or the monitor enters power-saving mode, the screen turns off, but the host will still run and the fan will not stop running)\n• After disabling the S3 sleep state in macOS, you no longer need to modify any system settings of macOS, and you do not need to turn off the energy-saving mode (before this, you may need to modify the system settings -> turn off the display when inactive -> never)\n• Applicable scenarios: When the sleep problem is not repaired, the energy-saving mode is turned on in the macOS system settings (\"Turn off the display when inactive -> 10 minutes\"). After the system enters sleep state, when the macOS system is awakened, the system may crash, restart or shut down. At this time, you can disable the S3 sleep state to fix the problem.\n• Requires ACPI rename patch: _S3 -> XS3';

  @override
  String get autoGen5692 =>
      'Hot restart is changed to cold restart to fix the problem of some hardware being unavailable.';

  @override
  String get autoGen5693 =>
      '• Hot restart is changed to cold restart, which fixes the problem that some hardware becomes unavailable after restarting from Windows to macOS on some platforms. (For example: sound card, WiFi, Bluetooth)\n• Note: No SSDT-FACP.aml is generated! Only ACPI-Patch is generated!';

  @override
  String get autoGen5694 => 'Graphics device ID mapping';

  @override
  String get autoGen5695 =>
      '• Used for AMD graphics card device ID mapping scenarios, injecting compatible device IDs through ACPI to allow the system to load the corresponding graphics driver.\n• Recommended only for models explicitly marked in the RapidEFI compatibility data as requiring device ID mapping.';

  @override
  String get autoGen5696 => 'ACPI device shielding';

  @override
  String get autoGen5697 =>
      '• Used to handle PCI devices at the ACPI layer that are not suitable for handing over to the macOS driver, such as incompatible graphics cards, NVMe controllers, or other expansion devices.\n• Laptops try power-level deactivation first; if the firmware does not support the power supply method, it downgrades to the driver layer for avoidance.\n• Desktops, NUCs, and HEDTs use universal circumvention methods by default to avoid relying on independent graphics power methods that usually do not exist in the machine firmware.\n• All scenarios require a valid ACPI Path; if the hardware reports a missing ACPI Path, the device is automatically skipped.';

  @override
  String get autoGen5698 =>
      'Counterfeit wired network card equipment (applicable to notebooks without wired network cards)';

  @override
  String get autoGen5699 =>
      '• Provides NullEthernet fake virtual network card for Hackintosh systems to solve the dependence of iMessage, Facetime, iCloud and other Apple services on built-in network equipment';

  @override
  String get autoGen5700 =>
      'Fix laptop I2C touchpad problem (applicable to laptops)';

  @override
  String get autoGen5701 =>
      '• By repairing the ACPI hardware node mounting, ensuring that the device is enabled in the macOS system, and fixing the problem that some I2C touchpads cannot be recognized normally.\n• SSDT-GPI0 solves the problem of driver mounting hardware devices. SSDT-XOSI is mainly used to fix the problem of incompatibility between BIOS/ACPI initialization logic and operating system recognition (sometimes it can fix the touchpad problem)';

  @override
  String get autoGen5702 =>
      'CPU renaming for B850, B650, B550, A520 chipsets (only for Ryzen platforms)';

  @override
  String get autoGen5703 =>
      '• Applicable to CPU renaming of B850, B650, B550, and A520 chipsets to fix the crash problem caused by the AMD platform not being able to recognize the CPU (recommended only when using pre-made SSDT patches)\n• When customizing the SSDT patch, it is recommended to use the customized SSDT-PLUG! (AMD Ryzen platform automatically changes its name to SSDT-PLUG-ALT when customizing the SSDT)';

  @override
  String get autoGen5704 =>
      'Fix power management (applicable to Intel 12th generation and above, some AMD Ryzen and other platforms)';

  @override
  String get autoGen5705 =>
      '• macOS relies on the CPU power management plug-in (PluginType) to adjust the CPU frequency and improve energy efficiency and battery life.\n• This patch will modify the CPU definition so that macOS thinks it is a plugin-type = 1 processor required by Apple devices, thereby correctly loading CPU frequency management and improving performance and power consumption control.\n• Applicable to Intel Alder Lake 12th generation and above, and some AMD Ryzen platforms';

  @override
  String get autoGen5706 =>
      'Disable AWAC (Modern Timer) (available for Intel Coffee Lake 8th generation and above)';

  @override
  String get autoGen5707 =>
      '• Disable AWAC (Modern Timer) while enabling or spoofing legacy RTC\n• Compatible with Intel Coffee Lake 8th generation and above';

  @override
  String get autoGen5708 =>
      'Required by all native X99 (C612) motherboards and most native X79 (C602) motherboards';

  @override
  String get autoGen5709 =>
      '• This SSDT is applicable to all X99 motherboards and most X79 motherboards. Its main function is to disable unused devices in ACPI to prevent IOPCIFamily from causing kernel panic.\n• Applicable motherboards: All native X99 (C612) motherboards and most native X79 (C602) motherboards.';

  @override
  String get autoGen5710 =>
      'Enable or fake legacy RTC timer, and fix RTC range (applies to all native X99 (C612) and X299 motherboards)';

  @override
  String get autoGen5711 =>
      '• Enable or fake legacy RTC timers and fix RTC range.\n• Solve incorrect boot time, RTC related errors, sleep wake-up issues, etc.\n• This SSDT is applicable to all X99(C612) motherboards as well as X299 motherboards';

  @override
  String get autoGen5712 => 'Add DTGP support';

  @override
  String get autoGen5713 =>
      '• Inject hardware device attributes to fix some ACPI issues with graphics cards, sound cards, thunderbolt cards, etc. (When there is no DTGP method support, these attribute injections may fail or not work!)';

  @override
  String get autoGen5714 => 'Counterfeiting a standard DMA controller';

  @override
  String get autoGen5715 =>
      '• A virtual device controller (PNP0200) that imitates a standard DMA Controller (Direct Memory Access Controller), completes the ACPI resource table, and allows macOS to properly identify LPC bus devices and DMA functions.\n• Typically not required for HEDT/server platforms\n• Add missing parts, this is just a perfect solution, not necessary!';

  @override
  String get autoGen5716 => 'Counterfeiting a standard PWRB controller';

  @override
  String get autoGen5717 =>
      '• Counterfeit a standard Power Button (PNP0C0C) device to allow macOS to recognize the system power button normally and support sleep and wake-up\n• There is no PNP0C0C in some BIOS/motherboard ACPI trees, and macOS cannot handle the power button correctly, which may result in the inability to sleep, the inability to wake up, and the unavailability of the menu bar power button.\n• Add missing parts, this is just a perfect solution, not necessary!';

  @override
  String get autoGen5718 => 'Counterfeiting a standard SLPB controller';

  @override
  String get autoGen5719 =>
      '• Counterfeit a standard Sleep Button (PNP0C0E) device to allow macOS to correctly identify the system sleep button and implement sleep and wake functions\n• There is no PNP0C0E in some BIOS/motherboard ACPI trees, and macOS cannot handle the sleep button correctly, which may result in the inability to sleep, the inability to wake up, and the unavailability of the sleep button in the menu bar.\n• This part is required for PNP0C0E sleep correction method!\n• Add missing parts, this is just a perfect solution, not necessary!';

  @override
  String get autoGen5720 => 'MEM2 device required to imitate an IGPU';

  @override
  String get autoGen5721 =>
      '• Add MEM2 ACPI device required by IGPU and fix IGPU related issues\n• Supplement core display memory mapping to avoid driver initialization failure\n• Applicable scope: Haswell ~ Kaby Lake, core graphics system only. Usually only discrete graphics do not need this SSDT!';

  @override
  String get autoGen5722 => 'Invalid path';

  @override
  String get autoGen5723 => 'No valid .aml or .dat file found';

  @override
  String get autoGen5724 => 'Decompiling SSDT.aml files in batches...';

  @override
  String get autoGen5725 =>
      'Decompiling DSDT.aml and SSDT.aml files in batches...';

  @override
  String get autoGen5726 => 'Decompiling failed .aml files individually...';

  @override
  String get autoGen5727 => 'Decompiling other .aml files...';

  @override
  String get autoGen5728 =>
      'Note: Try not to include Chinese or special characters in the path or file name, otherwise it may cause unexpected problems!';

  @override
  String get autoGen5729 => 'ACPI export tool is not ready';

  @override
  String get autoGen5730 => 'Exporting ACPI tables...';

  @override
  String get autoGen5731 =>
      'The current platform does not support exporting ACPI tables';

  @override
  String get autoGen5732 => 'Waiting for sudo password authorization...';

  @override
  String get autoGen5733 => 'Administrator authorization has been canceled';

  @override
  String get autoGen5734 => 'Administrator password not entered';

  @override
  String get autoGen5735 => 'Administrator password is incorrect';

  @override
  String get autoGen5736 => 'ACPI table export process failed';

  @override
  String get autoGen5737 =>
      'The ACPI table extracted by the current platform is empty or does not support exporting the ACPI table.';

  @override
  String get autoGen5738 => '=> DSDT not found, exporting by signature...';

  @override
  String get autoGen5739 => 'DSDT table export failed';

  @override
  String get autoGen5740 => 'Updating table name...';

  @override
  String get autoGen5741 => 'Export ACPI table successfully!';

  @override
  String get autoGen5742 => 'No valid ACPI table provided!';

  @override
  String get autoGen5743 => 'The hexadecimal data to be located was not found!';

  @override
  String get autoGen5744 => 'Unique fill ID not found!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: invalid table parameter';

  @override
  String get autoGen5746 => 'loosest';

  @override
  String get autoGen5747 => 'length only';

  @override
  String get autoGen5748 => 'Table ID and length, disable normalized headers';

  @override
  String get autoGen5749 => 'Table ID and length, enable normalized headers';

  @override
  String get autoGen5750 =>
      'Intel 1st generation Arrandale, 2nd generation Sandy Bridge, 3rd generation Ivy Bridge';

  @override
  String get autoGen5751 =>
      'Intel 4th generation Haswell, 5th generation Broadwell';

  @override
  String get autoGen5752 =>
      'Intel 6th generation Skylake, 7th generation Kaby Lake, some 4th generation Haswell';

  @override
  String get autoGen5753 =>
      'Custom brightness, usually used for some non-standard equipment or special needs settings';

  @override
  String get autoGen5754 =>
      'Intel 8th generation CoffeeLake ~ 10th generation, and AMD notebooks';

  @override
  String get autoGen5755 =>
      'Others (requires custom applbkl-name / applbkl-data device properties), may not be supported';

  @override
  String get autoGen5756 =>
      'ACPI tools currently only support Windows/macOS/Linux platforms';

  @override
  String get autoGen5757 =>
      'Note: The old version of iasl-legacy only supports macOS 10.6 and earlier versions. There may be compatibility issues with current mainstream systems, so use with caution!!!';

  @override
  String get autoGen5758 => 'Use [iasl-legacy old version compiler]';

  @override
  String get autoGen5759 => 'Compilation failed!';

  @override
  String get autoGen5760 =>
      'It is recommended to change to a new version of iasl or enable forced compilation and try again!';

  @override
  String get autoGen5761 => 'exist';

  @override
  String get autoGen5762 => 'does not exist';

  @override
  String get autoGen5763 =>
      'Note: Intel 1st generation Arrandale, 2nd generation Sandy Bridge, 3rd generation Ivy Bridge use UID: 14 ​​by default, but some machines using UID: 14 ​​will encounter limited maximum brightness or other problems. In order to solve these problems, the correct device path of the iGPU (integrated graphics card) must be set, and the IGPU register information may need to be supplemented.';

  @override
  String get autoGen5764 =>
      'Please enter the iGPU ACPI path to use. The character limit for each path element is 4 alphanumeric characters (starting with a letter or underscore), separated by spaces. For example: SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      'Note: NBCF patch has been generated (depends on BrightnessKeys.kext driver), enabled by default! If you encounter problems during use, please disable this patch!';

  @override
  String get autoGen5766 => 'The following bridge cannot be resolved:';

  @override
  String get autoGen5767 =>
      '=> The current firmware supports common system states! If it is not an AOAC machine, after fixing the sleep problem, macOS can support S3 sleep, otherwise it does not support S3 sleep!';

  @override
  String get autoGen5768 => 'patch';

  @override
  String get autoGen5769 => 'Connection to server timed out';

  @override
  String get autoGen5770 => 'Download canceled';

  @override
  String get autoGen5771 => 'Read response timeout';

  @override
  String get autoGen5772 => 'Kext copied successfully';

  @override
  String get autoGen5773 =>
      'The web platform downloads directly by default, and does not currently support selecting the default path.';

  @override
  String get autoGen5774 => 'Configuration file root node is not a JSON object';

  @override
  String get autoGen5775 => 'Follow the system';

  @override
  String get autoGen5776 => 'closure';

  @override
  String get autoGen5777 => 'Microsoft Yahei';

  @override
  String get autoGen5778 => 'Update black body';

  @override
  String get autoGen5779 => 'Siyuan Songti';

  @override
  String get autoGen5780 => 'Waiting to refresh hardware information';

  @override
  String get autoGen5781 => 'Loading hardware information';

  @override
  String get autoGen5782 => 'Refreshing hardware information';

  @override
  String get autoGen5783 => 'Hardware information loading completed';

  @override
  String get autoGen5784 => 'Hardware information loading failed';

  @override
  String get autoGen5785 => 'Hardware information is not supported yet';

  @override
  String get autoGen5786 => 'Hardware information import completed';

  @override
  String get autoGen5787 => 'fail';

  @override
  String get autoGen5788 => 'Not supported';

  @override
  String get autoGen5789 => 'Finish';

  @override
  String get autoGen5790 => 'cache';

  @override
  String get autoGen5791 =>
      'The current platform does not support hardware information query';

  @override
  String get autoGen5792 =>
      'The current report is an imported external hardware report. Please refresh the local hardware information before exporting.';

  @override
  String get autoGen5793 =>
      'There is currently no exportable local hardware information.';

  @override
  String get autoGen5794 => 'Hardware reports folder cleanup failed';

  @override
  String get autoGen5795 => 'Hardware reporting folder creation failed';

  @override
  String get autoGen5796 => 'ACPI table export failed or not supported';

  @override
  String get autoGen5797 =>
      'Administrator authorization has been canceled and the ACPI table has not been exported';

  @override
  String get autoGen5798 =>
      'Unable to export ACPI table without entering administrator password';

  @override
  String get autoGen5799 =>
      'The administrator password is incorrect and the ACPI table cannot be exported.';

  @override
  String get autoGen5800 =>
      'ACPI table export failed: No valid ACPI table found';

  @override
  String get autoGen5801 => 'ACPI table export failed: Export process failed.';

  @override
  String get autoGen5802 => 'Hardware information file is not a JSON object';

  @override
  String get autoGen5803 => 'Hardware information has been imported';

  @override
  String get autoGen5804 =>
      'ACPI table catalog is invalid, custom SSDT is not available';

  @override
  String get autoGen5805 => 'Start configuring EFI...';

  @override
  String get autoGen5806 =>
      'Generating ConfigModel based on hardware information...';

  @override
  String get autoGen5807 => 'Use EFI raw SSDT, skip SSDT customization.';

  @override
  String get autoGen5808 =>
      'External hardware report imported but no ACPI table catalog provided, custom SSDT disabled.';

  @override
  String get autoGen5809 => 'Exporting OpenCore EFI...';

  @override
  String get autoGen5810 =>
      'EFI written, start extracting ACPI and customizing SSDT...';

  @override
  String get autoGen5811 => 'The SSDT customization process ends.';

  @override
  String get autoGen5812 => 'SSDT customization process failed.';

  @override
  String get autoGen5813 => 'EFI configuration completed.';

  @override
  String get autoGen5814 =>
      'EFI configuration failed, please check the output path or logs.';

  @override
  String get autoGen5815 =>
      'The hardware automatically generates ConfigModel rules and is being reconstructed.';

  @override
  String get autoGen5816 => 'The length of tips must be the same as choices';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'assets/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'assets/ssdt/sound card patch.md';

  @override
  String get autoGen5820 => 'assets/ssdt/graphics card counterfeit.md';

  @override
  String get autoGen5821 => 'assets/ssdt/shielding device.md';

  @override
  String get autoGen5822 => 'assets/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'Bluetooth driver instructions:\n  1. When Intel WiFi is checked, the Intel Bluetooth driver will be automatically added according to the macOS version, no need to check it manually! ! !\n  2. When Broadcom WiFi is checked, the Broadcom Bluetooth driver will be automatically added according to the macOS version, no need to manually check it! ! !\n  3. When Atheros WiFi is checked, the Atheros Bluetooth driver will be added automatically, no need to check it manually! ! !\n  4. If the WiFi model is not checked or the Bluetooth model is not explained, you need to check it manually! ! !\n  5. Since Bluetooth uses the USB channel, if it still does not work properly after adding drivers and patches, please make sure the USB is well customized! ! !';

  @override
  String get autoGen5824 =>
      'Common HPET paths:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  This option is used to fix some sound card IRQ problems! Note: If your sound card does not have IRQ problems, please do not use this function!!!';

  @override
  String get autoGen5825 =>
      'Supported macOS versions:\n    • Wireless USB Big Sur Adapter-V18 version supports macOS Catalina 10.15.x ~ macOS Tahoe 26.x (requires OCLP USB patch)\n    • Wireless USB Big Sur Adapter-V15 version supports OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  Supported USB WiFi is as follows:\n    • The main chip is Realtek 802.11n and 802.11ac USB Wi-Fi Adapter. For more specific models, please refer to the author\'\'s instructions.';

  @override
  String get autoGen5826 =>
      'AMD discrete graphics counterfeit (device properties):\n   1. You need to fill in the PCI path of the graphics card, for example: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. You need to fill in the counterfeit device ID of the graphics card (4 digits in hexadecimal), for example: 73BF\n   3. After the graphics card is counterfeited, you still need to consider the startup parameters required by the AMD graphics card (you can go to Independent Graphics Configuration -> AMD Independent Graphics -> Check as needed)\n   4. The tool has pre-prepared some graphics card device IDs. If not, please find it yourself or contact the author for supplementary information.';

  @override
  String get autoGen5827 => 'Confirm';

  @override
  String get autoGen5828 => 'Cancel';

  @override
  String get autoGen5829 => 'Sure';
}
