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
}
