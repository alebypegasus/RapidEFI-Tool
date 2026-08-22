// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI টুল';

  @override
  String get navHardware => 'হার্ডওয়্যার';

  @override
  String get navManual => 'ম্যানুয়াল EFI কনফিগারেশন';

  @override
  String get navProcess => 'EFI প্রক্রিয়া করুন';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'ইতিহাস';

  @override
  String get navSettings => 'সেটিংস';

  @override
  String get navAbout => 'সম্পর্কে';

  @override
  String get navSponsor => 'ডেভেলপারকে স্পনসর করুন';

  @override
  String get btnRefresh => 'রিফ্রেশ';

  @override
  String get btnImportReport => 'রিপোর্ট ইম্পোর্ট';

  @override
  String get btnExportReport => 'রিপোর্ট এক্সপোর্ট';

  @override
  String get btnExportAcpi => 'ACPI এক্সপোর্ট';

  @override
  String get btnEfiSettings => 'EFI সেটিংস';

  @override
  String get btnExportEfi => 'EFI রপ্তানি করুন';

  @override
  String get btnGenerateEfi => 'EFI তৈরি করুন';

  @override
  String get btnBrowse => 'ব্রাউজ';

  @override
  String get btnChooseFile => 'ফাইল বেছে নিন';

  @override
  String get btnCancel => 'বাতিল';

  @override
  String get btnApply => 'প্রয়োগ করুন';

  @override
  String get btnSave => 'সংরক্ষণ';

  @override
  String get btnClose => 'বন্ধ করুন';

  @override
  String get btnCheckUpdates => 'আপডেট চেক করুন';

  @override
  String get btnChecking => 'চেক করা হচ্ছে...';

  @override
  String get btnSelectAll => 'সব নির্বাচন করুন';

  @override
  String get btnDeselectAll => 'সব অনির্বাচন করুন';

  @override
  String get btnCustomSsdt => 'কাস্টম SSDT';

  @override
  String get btnPrebuiltSsdt => 'প্রিবিল্ট SSDT';

  @override
  String get btnDumpAcpi => 'ACPI বের করুন';

  @override
  String get btnSelectAcpis => 'ACPI নির্বাচন করুন';

  @override
  String get btnSelectConfig => 'config নির্বাচন করুন';

  @override
  String get btnMergeConfig => 'config মার্জ করুন';

  @override
  String get btnExecutePatch => 'প্যাচ প্রয়োগ করুন';

  @override
  String get btnOpenFolder => 'ফোল্ডার খুলুন';

  @override
  String get hardwareReport => 'হার্ডওয়্যার রিপোর্ট';

  @override
  String get cpuArchitecture => 'প্রসেসর (CPU)';

  @override
  String get motherboardChipset => 'মাদারবোর্ড ও চিপসেট';

  @override
  String get graphicsDevice => 'গ্রাফিক্স (GPU)';

  @override
  String get audioCodec => 'অডিও কন্ট্রোলার';

  @override
  String get networkController => 'নেটওয়ার্ক ও ওয়্যারলেস';

  @override
  String get storageDevice => 'স্টোরেজ ডিভাইস';

  @override
  String get acpiTables => 'ACPI টেবিল';

  @override
  String get compatibilityStatus => 'সামঞ্জস্যতা';

  @override
  String get compatible => 'সমর্থিত';

  @override
  String get unsupported => 'অসমর্থিত';

  @override
  String get requiresPatch => 'প্যাচ প্রয়োজন';

  @override
  String get details => 'বিবরণ';

  @override
  String get showDetailedReport => 'বিস্তারিত দেখুন';

  @override
  String get platformConfig => 'প্ল্যাটফর্ম কনফিগারেশন';

  @override
  String get cpuVendor => 'CPU প্রস্তুতকারক';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'ডিভাইস টাইপ';

  @override
  String get desktop => 'ডেস্কটপ';

  @override
  String get laptop => 'ল্যাপটপ';

  @override
  String get nucMiniPc => 'NUC / মিনি পিসি';

  @override
  String get hedtServer => 'HEDT / সার্ভার';

  @override
  String get processorGen => 'প্রসেসর প্রজন্ম';

  @override
  String get targetMacOs => 'টার্গেট macOS সংস্করণ';

  @override
  String get smbiosModel => 'টার্গেট SMBIOS মডেল';

  @override
  String get motherboardSelector => 'মাদারবোর্ড নির্বাচন';

  @override
  String get brand => 'ব্র্যান্ড';

  @override
  String get model => 'মডেল';

  @override
  String get outputDirectory => 'আউটপুট ডিরেক্টরি';

  @override
  String get kextConfiguration => 'ড্রাইভার কনফিগারেশন';

  @override
  String get bootArguments => 'বুট আর্গুমেন্ট (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP সক্রিয় (00000000)';

  @override
  String get sipDisabled => 'SIP নিষ্ক্রিয় (03080000)';

  @override
  String get processEfiTitle => 'EFI প্রক্রিয়া ও পুনর্নির্মাণ';

  @override
  String get chooseEfiPrompt =>
      'কনফিগারেশন লোড করতে একটি EFI ফোল্ডার বা configModel ফাইল বেছে নিন';

  @override
  String get configModelFound => 'ConfigModel সফলভাবে পাওয়া ও লোড করা হয়েছে';

  @override
  String get rebuildEfi => 'EFI পুনর্নির্মাণ করুন';

  @override
  String get ssdtGeneratorTitle => 'SSDT জেনারেটর ও ACPI প্যাচার';

  @override
  String get corePatches => 'কোর প্যাচসমূহ';

  @override
  String get recommendedPatches => 'প্রস্তাবিত প্যাচসমূহ';

  @override
  String get optionalPatches => 'ঐচ্ছিক প্যাচসমূহ';

  @override
  String get compilationComplete => 'কম্পাইলেশন সম্পন্ন';

  @override
  String get mergeSuccess => 'সফলভাবে EFI-তে মার্জ করা হয়েছে';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher সংযুক্তি';

  @override
  String get rootPatching => 'রুট প্যাচিং';

  @override
  String get graphicsAcceleration => 'গ্রাফিক্স অ্যাক্সিলারেশন';

  @override
  String get wirelessFix => 'ওয়াই-ফাই ও ব্লুটুথ সমাধান';

  @override
  String get postInstall => 'ইনস্টলেশন পরবর্তী ধাপ';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 সামঞ্জস্যতা গাইড';

  @override
  String get tahoeCompatibility => 'Tahoe 26 কার্নেল ও অডিও অভিযোজন';

  @override
  String get settingsTitle => 'সেটিংস';

  @override
  String get appLanguage => 'ভাষা :';

  @override
  String get followSystem => 'সিস্টেম অনুকরণ';

  @override
  String get themeMode => 'থিম মোড :';

  @override
  String get themeColor => 'থিম রঙ :';

  @override
  String get appFont => 'অ্যাপ ফন্ট :';

  @override
  String get efiOptions => 'EFI অপশন :';

  @override
  String get addThemeToEfi => 'EFI-তে OpenCore বুট থিম যুক্ত করুন';

  @override
  String get generateConfigModel => 'EFI ফোল্ডারে configModel ফাইল তৈরি করুন';

  @override
  String get compressZipEfi => 'EFI-কে ZIP ফাইলে কম্প্রেস করুন';

  @override
  String get checkForUpdates => 'আপডেট চেক করুন :';

  @override
  String currentVersion(String version) {
    return 'বর্তমান সংস্করণ: $version';
  }

  @override
  String get copyrightNotice => 'কপিরাইট ও লাইসেন্স';

  @override
  String get exitAppTip => 'প্রস্থান করতে আবার ব্যাক চাপুন';

  @override
  String get updateAvailable => 'নতুন সংস্করণ উপলব্ধ';

  @override
  String versionTag(String version) {
    return 'সংস্করণ: $version';
  }

  @override
  String releaseDate(String date) {
    return 'মুক্তির তারিখ: $date';
  }

  @override
  String get noUpdateFound => 'আপনি সর্বশেষ সংস্করণ ব্যবহার করছেন';

  @override
  String get efiBuildSuccess => 'EFI সফলভাবে তৈরি হয়েছে!';

  @override
  String get efiBuildFailed => 'EFI তৈরি করতে ব্যর্থ হয়েছে';

  @override
  String get copiedToClipboard => 'ক্লিপবোর্ডে কপি করা হয়েছে';

  @override
  String get soundLayoutId => 'অডিও লেআউট ID (alcid)';

  @override
  String get nvramBootArgs => 'কাস্টম boot-args';

  @override
  String get generateSerial => 'সিরিয়াল তৈরি করুন';

  @override
  String get navManualTab => 'ম্যানুয়াল EFI কনফিগারেশন';

  @override
  String get navAutoTab => 'স্বয়ংক্রিয় EFI কনফিগারেশন';

  @override
  String get cpuSelection => 'প্রসেসর (CPU) নির্বাচন:';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'পেন্টিয়াম বা সেলেরন প্রসেসরের জন্য CPU স্পুফিং প্রয়োজন; অনুগ্রহ করে এটি সক্রিয় করুন!\nউল্লেখ্য: পেন্টিয়াম/সেরেলন iGPU সমর্থিত নয়!';

  @override
  String get platformSelection => 'প্ল্যাটফর্ম নির্বাচন:';

  @override
  String get processorGeneration => 'প্রসেসর প্রজন্ম:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 কোর / 12 থ্রেড) নির্দিষ্ট CPU স্পুফিং প্রয়োজন';

  @override
  String get amdCoresTitle => 'AMD CPU কোর:';

  @override
  String get amdSpecialMb => 'AMD বিশেষ মাদারবোর্ড:';

  @override
  String get usePrecastMmio => 'প্রিকাস্ট MMIO ব্যবহার করুন';

  @override
  String get useRyzenGpu => 'Ryzen iGPU সাপোর্ট সক্রিয় করুন (NootedRed)';

  @override
  String get motherboardBrand => 'মাদারবোর্ড ব্র্যান্ড:';

  @override
  String get motherboardModel => 'মাদারবোর্ড মডেল:';

  @override
  String get customMotherboard => 'কাস্টম / সাধারণ মাদারবোর্ড';

  @override
  String get igpuConfig => 'iGPU কনফিগারেশন:';

  @override
  String get dgpuConfig => 'dGPU কনফিগারেশন:';

  @override
  String get audioConfig => 'অডিও কনফিগারেশন:';

  @override
  String get audioCodecFix => 'অডিও কোডেক ও লেআউট ID';

  @override
  String get fixIrq => 'IRQ দ্বন্দ্ব সমাধান করুন';

  @override
  String get networkConfig => 'নেটওয়ার্ক ও ওয়্যারলেস কনফিগারেশন:';

  @override
  String get laptopDrivers => 'ল্যাপটপ ড্রাইভারসমূহ:';

  @override
  String get touchpadDriver => 'টাচপ্যাড ড্রাইভার (I2C / PS2)';

  @override
  String get smbiosSelection => 'টার্গেট SMBIOS মডেল:';

  @override
  String get targetMacOsVersion => 'টার্গেট macOS সংস্করণ:';

  @override
  String get bootArgsTitle => 'বুট আর্গুমেন্ট (boot-args):';

  @override
  String get csrActiveConfigTitle => 'সিস্টেম ইন্টিগ্রিটি প্রোটেকশন (SIP):';

  @override
  String get outputEfiTitle => 'আউটপুট EFI ফোল্ডার:';

  @override
  String get selectOutputFolder => 'আউটপুট ফোল্ডার নির্বাচন করুন';

  @override
  String get clearConfig => 'কনফিগারেশন মুছুন';

  @override
  String get importConfigModel => 'configModel ইম্পোর্ট করুন';

  @override
  String get importingConfigModel => 'configModel ইম্পোর্ট করা হচ্ছে...';

  @override
  String get dragDropConfigModel =>
      'configModel ফাইল এখানে টেনে আনুন\nঅথবা ব্রাউজ করতে ক্লিক করুন';

  @override
  String get clearAllHistory => 'সব ইতিহাস মুছুন';

  @override
  String get clearingHistory => 'ইতিহাস মুছে ফেলা হচ্ছে...';

  @override
  String get noHistoryRecords => 'এখনও কোনো ইতিহাস রেকর্ড নেই';

  @override
  String get overview => 'সংক্ষিপ্ত বিবরণ';

  @override
  String get platformPatches => 'প্ল্যাটফর্ম প্যাচসমূহ';

  @override
  String get audioPatches => 'অডিও প্যাচসমূহ';

  @override
  String get gpuSpoofing => 'GPU স্পুফিং';

  @override
  String get disableDevices => 'ডিভাইস নিষ্ক্রিয় করুন';

  @override
  String get brightnessPatches => 'উজ্জ্বলতা প্যাচসমূহ';

  @override
  String get graphicsPatches => 'গ্রাফিক্স প্যাচসমূহ';

  @override
  String get wifiPatches => 'ওয়াই-ফাই প্যাচসমূহ';

  @override
  String get documentationGuides => 'ডকুমেন্টেশন ও নির্দেশিকা';

  @override
  String get aboutSupport => 'সম্পর্কে ও সহায়তা';

  @override
  String get hardwareTabTitle => 'হার্ডওয়্যার কনফিগারেশন';

  @override
  String get acpiFolderTitle => 'ACPI ফোল্ডার';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'ডাটা লোড হচ্ছে...';

  @override
  String get configuringEfiWait => 'EFI কনফিগার করা হচ্ছে, অপেক্ষা করুন...';

  @override
  String get summary => 'সারাংশ';

  @override
  String get recent => 'সাম্প্রতিক';

  @override
  String get efiConfig => 'EFI কনফিগ';

  @override
  String get toolsAndGuides => 'টুলস ও গাইড';

  @override
  String get checkUpdates => 'আপডেট চেক করুন';

  @override
  String get sponsorDeveloper => 'ডেভেলপারকে স্পনসর করুন';

  @override
  String get releaseNotes => 'রিলিজ নোট';

  @override
  String get searchPlaceholder => 'অনুসন্ধান করুন';

  @override
  String get initialSupportMacOs =>
      'প্রাথমিক স্থানীয়ভাবে সমর্থিত macOS সংস্করণ:';

  @override
  String get lastSupportMacOs => 'সর্বশেষ স্থানীয়ভাবে সমর্থিত macOS সংস্করণ:';

  @override
  String get oclpSupportMacOs => 'OCLP প্যাচ সমর্থিত macOS সংস্করণ:';

  @override
  String get cpuInfoTitle => '[সিপিইউ তথ্য]:';

  @override
  String get biosRecommendedEnabled => '[BIOS প্রস্তাবিত সেটিংস - সক্রিয়]:';

  @override
  String get biosRecommendedDisabled =>
      '[BIOS প্রস্তাবিত সেটিংস - নিষ্ক্রিয়]:';

  @override
  String get historyExpanderDesc =>
      'RapidEFI দিয়ে তৈরি EFI স্বয়ংক্রিয়ভাবে ইতিহাসে ব্যাকআপ হয়।\nআপনি যেকোনো সময় পূর্বে তৈরি যেকোনো EFI পুনরায় লোড এবং সামঞ্জস্য করতে পারেন।\n\nএই বৈশিষ্ট্যটি RapidEFI V3.0.0 এবং তার উপরে সমর্থিত।';

  @override
  String get gpuPresets => 'প্রিসেট';

  @override
  String get gpuByCpuModel => 'সিপিইউ মডেল অনুযায়ী';

  @override
  String get selectCpuGeneration => 'প্রজন্ম নির্বাচন করুন';

  @override
  String get selectCpuModel => 'সিপিইউ নির্বাচন করুন';

  @override
  String get cpuGenerationLabel => 'সিপিইউ প্রজন্ম';

  @override
  String get cpuModelLabel => 'সিপিইউ মডেল';

  @override
  String get matchingIgpuTip => 'মিলে গেলে চেক করুন, অন্যথায় আনচেক রাখুন';

  @override
  String get selectPropertiesToApply =>
      'প্রয়োগ করার জন্য বৈশিষ্ট্য নির্বাচন করুন';

  @override
  String get motherboardConfigTitle => 'মাদারবোর্ড মডেল কনফিগারেশন:';

  @override
  String get motherboardConfigItems =>
      'প্রয়োগ করার জন্য কনফিগারেশন আইটেম নির্বাচন করুন';

  @override
  String get selectModelToConfigure => '(কনফিগার করতে মডেল নির্বাচন করুন)';

  @override
  String get pleaseSelect => 'অনুগ্রহ করে নির্বাচন করুন';

  @override
  String get selectAllDeselectAll => 'সব নির্বাচন / সব অনির্বাচন করুন';

  @override
  String get deselectAll => 'সব অনির্বাচন করুন';

  @override
  String get stuckOnEbFix =>
      '[EB] তে আটকে যাওয়ার সমাধান (ঐচ্ছিক - ডিফল্ট প্রস্তাবিত):';

  @override
  String get renameCurrentEfi => 'বর্তমান EFI পুনঃনামকরণ করুন';

  @override
  String get enterNewName => 'নতুন নাম লিখুন';

  @override
  String get renameEfiTooltip => 'EFI পুনঃনামকরণ করুন';

  @override
  String get adminPrivilegesRequired => 'প্রশাসকের বিশেষাধিকার প্রয়োজন';

  @override
  String get enterLoginPassword =>
      'অনুগ্রহ করে আপনার কম্পিউটার লগইন পাসওয়ার্ড লিখুন';

  @override
  String get importHardwareMaterials => 'হার্ডওয়্যার সামগ্রী আমদানি করুন';

  @override
  String get currentBiosSettings => 'বর্তমান BIOS সেটিংস';

  @override
  String get colorTheme => 'রঙের থিম';

  @override
  String get noValidHardwareReport =>
      'কোনো বৈধ হার্ডওয়্যার রিপোর্ট ফাইল সনাক্ত করা যায়নি';

  @override
  String get viewOnGitHub => 'GitHub এ দেখুন';

  @override
  String get downloadNow => 'এখনই ডাউনলোড করুন';

  @override
  String get btnConfirm => 'নিশ্চিত করুন';

  @override
  String get btnDeleteRecord => 'এই রেকর্ড মুছুন';

  @override
  String get currentEfiNamePrefix => 'বর্তমান EFI নাম: ';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get applySelected => 'নির্বাচিত প্রয়োগ করুন';

  @override
  String get connectedGpuPrefix => 'সংযুক্ত GPU: ';

  @override
  String get requiresSpoofIdPrefix => 'স্পুফ ID প্রয়োজন: ';

  @override
  String get selectPlatform => 'প্ল্যাটফর্ম প্রজন্ম';

  @override
  String get selectVendor => 'ব্র্যান্ড';

  @override
  String get selectModel => 'মাদারবোর্ড মডেল';

  @override
  String get btnImport => 'আমদানি করুন';

  @override
  String get defaultLabel => 'ডিফল্ট';

  @override
  String get wifiBluetoothDrivers => 'ওয়াই-ফাই এবং ব্লুটুথ ড্রাইভার:';

  @override
  String get noWifiDriversByDefault =>
      '(ডিফল্টভাবে কোনও ওয়াই-ফাই ড্রাইভার কনফিগার করা নেই)';

  @override
  String get getIntelModifiedOclp => 'ইন্টেল পরিবর্তিত OCLP পান';

  @override
  String get forLaptopSystems => '(ল্যাপটপ সিস্টেমের জন্য)';

  @override
  String get basicConfig => 'বেসিক কনফিগারেশন';

  @override
  String get advancedConfig => 'উন্নত কনফিগারেশন';

  @override
  String get portCustomization => 'পোর্ট কাস্টমাইজেশন';

  @override
  String get displayEdid => 'EDID প্রদর্শন করুন';

  @override
  String get nvidiaDgpu => 'এনভিডিয়া ডিজিপিইউ';

  @override
  String get amdDgpu => 'এএমডি ডিজিপিইউ';

  @override
  String get amdDgpuSpoof => 'এএমডি ডিজিপিইউ স্পুফ';

  @override
  String get intelWifi => 'ইন্টেল ওয়াই-ফাই';

  @override
  String get broadcomBrcm => 'ব্রডকম (বিআরসিএম)';

  @override
  String get atherosWifi => 'এথেরোস';

  @override
  String get usbWifi => 'ইউএসবি ওয়াই-ফাই';

  @override
  String get bluetoothDrivers => 'ব্লুটুথ ড্রাইভার';

  @override
  String get debuggingTab => 'ডিবাগিং';

  @override
  String get amfiSipTab => 'এএমএফআই/এসআইপি';

  @override
  String get igpuFixesTab => 'iGPU ফিক্স';

  @override
  String get dgpuFixesTab => 'dGPU ফিক্স';

  @override
  String get blackScreenFixesTab => 'কালো স্ক্রীন ফিক্স';

  @override
  String get above4gTab => '4G ডিকোডিং এর উপরে';

  @override
  String get trackpadFixesTab => 'ট্র্যাকপ্যাড ফিক্স';

  @override
  String get othersTab => 'অন্যরা';

  @override
  String get powerManagementTab => 'পাওয়ার ম্যানেজমেন্ট';

  @override
  String get sleepHibernationTab => 'ঘুম / হাইবারনেশন';

  @override
  String get storageDiskTab => 'স্টোরেজ / ডিস্ক';

  @override
  String get cpuFixesTab => 'CPU ফিক্স';

  @override
  String get amdPlatformTab => 'AMD প্ল্যাটফর্ম';

  @override
  String get usbFixesTab => 'ইউএসবি ফিক্স';

  @override
  String get sdCardTab => 'এসডি কার্ড';

  @override
  String get brandTab => 'ব্র্যান্ড';

  @override
  String get specialMotherboardTab => 'বিশেষ মাদারবোর্ড';

  @override
  String get sipSettingsTab => 'SIP সেটিংস';

  @override
  String get renameCpuTab => 'CPU পুনঃনামকরণ করুন';

  @override
  String get uiScaleTab => 'UI স্কেল';

  @override
  String get acpiConfigTab => 'ACPI কনফিগারেশন';

  @override
  String get booterConfigTab => 'বুটার কনফিগারেশন';

  @override
  String get kernelConfigTab => 'কার্নেল কনফিগারেশন';

  @override
  String get uefiConfigTab => 'UEFI কনফিগারেশন';

  @override
  String get lookupLayoutId => 'লুকআপ লেআউট আইডি';

  @override
  String get visitChris1111Repo => 'chris1111 রিপোজিটরি দেখুন';

  @override
  String get supportedMacOsVersions => 'সমর্থিত macOS সংস্করণ:';

  @override
  String get supportedUsbWifiChipsets => 'সমর্থিত USB Wi-Fi চিপসেট:';

  @override
  String get selectUtbMap => 'UTBMap নির্বাচন করুন';

  @override
  String get selectUtbMapHint =>
      'USBToolBox দিয়ে তৈরি ম্যাপ করা UTBMap.kext নির্বাচন করুন';

  @override
  String get reprocessEfiSubtitle =>
      '(RapidEFI দ্বারা উত্পন্ন একটি EFI পুনরায় প্রক্রিয়া করুন)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI স্বয়ংক্রিয়ভাবে EFI ফোল্ডারের ভিতরে একটি configModel ফাইল আউটপুট করে। আপনার EFI কনফিগারেশন পুনরায় লোড এবং কাস্টমাইজ করতে নীচের এই ফাইলটি আমদানি করুন৷';

  @override
  String get reprocessEfiVersionNote =>
      'এই বৈশিষ্ট্যটি RapidEFI V3.0.0 এবং তার উপরে সমর্থিত।';

  @override
  String get dropConfigModelHint =>
      'configModel ফাইলটি এখানে ড্রপ করুন বা ব্রাউজ করতে ক্লিক করুন';

  @override
  String get offLabel => 'বন্ধ';

  @override
  String get onLabel => 'চালু';

  @override
  String get githubRepository => 'GitHub সংগ্রহস্থল';

  @override
  String get releasesAndUpdates => 'রিলিজ এবং আপডেট';

  @override
  String get projectDocumentation => 'প্রকল্প ডকুমেন্টেশন';

  @override
  String get aboutSupportDetails =>
      'RapidEFI হল একটি ওপেন-সোর্স, স্বয়ংক্রিয় OpenCore EFI জেনারেটর, ACPI/SSDT প্যাচার, এবং Hackintosh এবং macOS উত্সাহীদের জন্য তৈরি হার্ডওয়্যার বিশ্লেষণ টুল।\n\nভালবাসা দিয়ে তৈরি এবং বজায় রাখা। চলমান উন্নয়নকে সমর্থন করার জন্য GitHub-এ প্রোজেক্টকে স্টার এবং ফোর্ক করুন!';

  @override
  String get checkApplicableOptions => '(প্রযোজ্য বিকল্পগুলি পরীক্ষা করুন)';

  @override
  String get optionalCheckApplicableOptions =>
      '(ঐচ্ছিক - প্রযোজ্য বিকল্পগুলি পরীক্ষা করুন)';

  @override
  String get appleAlcUsedByDefault => '(AppleALC ড্রাইভার ডিফল্টরূপে ব্যবহৃত)';

  @override
  String get noEthernetDriverByDefault =>
      '(ডিফল্টরূপে কোনো ইথারনেট ড্রাইভার যোগ করা হয়নি)';

  @override
  String get usbInjectAllByDefault => '(ইউএসবিইনজেক্ট সবই ডিফল্টরূপে ব্যবহৃত)';

  @override
  String get verboseModeByDefault =>
      '(-v ভার্বোজ মোড ডিফল্টরূপে সক্রিয়; নিষ্ক্রিয় করতে টিক চিহ্ন সরিয়ে দিন)';

  @override
  String get optionalDriversSubtitle =>
      '(ঐচ্ছিক ড্রাইভার - প্রয়োজন না হলে প্রয়োজন নেই)';

  @override
  String get keepDefaultsSubtitle =>
      '(নির্দিষ্ট কাস্টমাইজেশন প্রয়োজন না হলে ডিফল্ট রাখুন)';

  @override
  String get optionalCheckDeviceBrand =>
      'ঐচ্ছিক - আপনার ডিভাইস ব্র্যান্ড মেলে কিনা তা পরীক্ষা করুন';

  @override
  String get optionalCheckMotherboardModel =>
      'ঐচ্ছিক - মাদারবোর্ডের মডেল মেলে কিনা তা পরীক্ষা করুন';

  @override
  String get optionalConfigureSip =>
      'ঐচ্ছিক - প্রয়োজন অনুযায়ী SIP কনফিগার করুন (ডিফল্টরূপে অক্ষম)';

  @override
  String get optionalCustomCpuName => 'ঐচ্ছিক - কাস্টম CPU নাম';

  @override
  String get optionalAdjustUiScale =>
      'ঐচ্ছিক - OpenCore বুট UI স্কেল সামঞ্জস্য করুন';

  @override
  String get acpiSsdtPatches => 'ACPI - SSDT প্যাচ';

  @override
  String get acpiPatches => 'ACPI - প্যাচ';

  @override
  String get kernelPatches => 'কার্নেল - প্যাচ';

  @override
  String get powerManagement => 'পাওয়ার ম্যানেজমেন্ট';

  @override
  String get ssdApfsTrimPolicy => 'NVMe / SATA SSD APFS ট্রিম নীতি';

  @override
  String get kernelQuirksSubtitle =>
      'কার্নেল - Quirks (নির্দিষ্ট সংশোধনের প্রয়োজন না হলে ডিফল্ট সেটিংস সুপারিশ করা হয়)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - ড্রাইভার (নির্দিষ্ট প্রয়োজন না হলে ডিফল্ট কনফিগারেশন রাখুন)';

  @override
  String get uefiOutputSubtitle => 'UEFI - আউটপুট (ডিফল্ট সেটিংস প্রস্তাবিত)';

  @override
  String get method1Title =>
      'পদ্ধতি 1: \'GPRW থেকে XPRW\' নাম পরিবর্তন করুন (তাত্ক্ষণিক ওয়েক ফিক্স)';

  @override
  String get method2Title =>
      'পদ্ধতি 2: \'UPRW থেকে XPRW\' নাম পরিবর্তন করুন (তাত্ক্ষণিক ওয়েক ফিক্স)';

  @override
  String get method3Title =>
      'পদ্ধতি 3: \'RTC ফিক্স\' নাম পরিবর্তন করুন (আরটিসি পাওয়ার বন্ধ / CMOS রিসেট ঠিক করুন)';

  @override
  String get method4Title =>
      'পদ্ধতি 4: \'ব্যাটারি ফিক্স\' নাম পরিবর্তন করুন (16-বিট থেকে 8-বিট ব্যাটারি প্যাচ সমর্থন করে)';

  @override
  String get pciPathLabel => 'dGPU PCI পাথ:';

  @override
  String get pciPathPlaceholder => 'PCI পাথ লিখুন';

  @override
  String get spoofedDeviceIdLabel => 'স্পুফড ডিভাইস আইডি:';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'স্পুফ করতে GPU ডিভাইস নির্বাচন করুন';

  @override
  String get injectDisplayEdidLabel =>
      'ডিসপ্লে ইডিআইডি ইনজেক্ট করুন (সাধারণত 256 বা 512 হেক্স অক্ষর):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'প্রদর্শন EDID লিখুন (সাধারণত 256 বা 512 হেক্স অক্ষর; স্পেস এবং নতুন লাইন অনুমোদিত)';

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
