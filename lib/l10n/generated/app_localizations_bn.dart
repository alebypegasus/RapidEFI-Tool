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
  String get btnExportEfi => 'EFI এক্সপোর্ট';

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
  String get details => 'বিস্তারিত';

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
}
