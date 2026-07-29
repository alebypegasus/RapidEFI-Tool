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
}
