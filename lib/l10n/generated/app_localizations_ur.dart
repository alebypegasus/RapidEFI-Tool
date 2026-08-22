// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Urdu (`ur`).
class AppLocalizationsUr extends AppLocalizations {
  AppLocalizationsUr([String locale = 'ur']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - اوپن کور EFI ٹول';

  @override
  String get navHardware => 'ہارڈ ویئر';

  @override
  String get navManual => 'دستی EFI ترتیب';

  @override
  String get navProcess => 'EFI پروسیس کریں';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'تاریخچہ';

  @override
  String get navSettings => 'ترتیبات';

  @override
  String get navAbout => 'کے بارے میں';

  @override
  String get navSponsor => 'ڈویلپر کو سپورٹ کریں';

  @override
  String get btnRefresh => 'تازہ کریں';

  @override
  String get btnImportReport => 'رپورٹ درآمد کریں';

  @override
  String get btnExportReport => 'رپورٹ برآمد کریں';

  @override
  String get btnExportAcpi => 'ACPI برآمد کریں';

  @override
  String get btnEfiSettings => 'EFI ترتیبات';

  @override
  String get btnExportEfi => 'EFI برآمد کریں';

  @override
  String get btnGenerateEfi => 'EFI بنائیں';

  @override
  String get btnBrowse => 'براؤز کریں';

  @override
  String get btnChooseFile => 'فائل منتخب کریں';

  @override
  String get btnCancel => 'منسوخ کریں';

  @override
  String get btnApply => 'لاگو کریں';

  @override
  String get btnSave => 'محفوظ کریں';

  @override
  String get btnClose => 'بند کریں';

  @override
  String get btnCheckUpdates => 'اپ ڈیٹس چیک کریں';

  @override
  String get btnChecking => 'چیکنگ جاری ہے...';

  @override
  String get btnSelectAll => 'سب منتخب کریں';

  @override
  String get btnDeselectAll => 'سب غیر منتخب کریں';

  @override
  String get btnCustomSsdt => 'کسٹم SSDT';

  @override
  String get btnPrebuiltSsdt => 'پری بلٹ SSDT';

  @override
  String get btnDumpAcpi => 'ACPI نکالیں';

  @override
  String get btnSelectAcpis => 'ACPI منتخب کریں';

  @override
  String get btnSelectConfig => 'config منتخب کریں';

  @override
  String get btnMergeConfig => 'config ضم کریں';

  @override
  String get btnExecutePatch => 'پیچ لاگو کریں';

  @override
  String get btnOpenFolder => 'فولڈر کھولیں';

  @override
  String get hardwareReport => 'ہارڈ ویئر رپورٹ';

  @override
  String get cpuArchitecture => 'پروسیسر (CPU)';

  @override
  String get motherboardChipset => 'مدر بورڈ اور چپ سیٹ';

  @override
  String get graphicsDevice => 'گرافکس (GPU)';

  @override
  String get audioCodec => 'آڈیو کنٹرولر';

  @override
  String get networkController => 'نیٹ ورک اور وائی فائی';

  @override
  String get storageDevice => 'سٹوریج ڈیوائسز';

  @override
  String get acpiTables => 'ACPI ٹیبلز';

  @override
  String get compatibilityStatus => 'مطابقت';

  @override
  String get compatible => 'معاونت یافتہ';

  @override
  String get unsupported => 'غیر معاون';

  @override
  String get requiresPatch => 'پیچ درکار ہے';

  @override
  String get details => 'تفصیلات';

  @override
  String get showDetailedReport => 'تفصیلی منظر';

  @override
  String get platformConfig => 'پلیٹ فارم ترتیب';

  @override
  String get cpuVendor => 'CPU بنانے والا';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'فارم فیکٹر';

  @override
  String get desktop => 'ڈیسک ٹاپ';

  @override
  String get laptop => 'لیپ ٹاپ';

  @override
  String get nucMiniPc => 'NUC / منی پی سی';

  @override
  String get hedtServer => 'HEDT / سرور';

  @override
  String get processorGen => 'پروسیسر جنریشن';

  @override
  String get targetMacOs => 'ہدف شدہ macOS ورژن';

  @override
  String get smbiosModel => 'ہدف شدہ SMBIOS ماڈل';

  @override
  String get motherboardSelector => 'مدر بورڈ کا انتخاب';

  @override
  String get brand => 'برانڈ';

  @override
  String get model => 'ماڈل';

  @override
  String get outputDirectory => 'آؤٹ پٹ ڈائرکٹری';

  @override
  String get kextConfiguration => 'Kext کنفیگریشن';

  @override
  String get bootArguments => 'بوٹ آرگومنٹس (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP فعال (00000000)';

  @override
  String get sipDisabled => 'SIP غیر فعال (03080000)';

  @override
  String get processEfiTitle => 'EFI پروسیس اور دوبارہ تعمیر';

  @override
  String get chooseEfiPrompt =>
      'ترتیبات لوڈ کرنے کے لیے EFI فولڈر یا configModel فائل منتخب کریں';

  @override
  String get configModelFound => 'ConfigModel کامیابی سے مل گیا اور لوڈ ہو گیا';

  @override
  String get rebuildEfi => 'EFI دوبارہ تعمیر کریں';

  @override
  String get ssdtGeneratorTitle => 'SSDT جنریٹر اور ACPI پیچر';

  @override
  String get corePatches => 'بنیادی پیچز';

  @override
  String get recommendedPatches => 'تجویز کردہ پیچز';

  @override
  String get optionalPatches => 'اختیاری پیچز';

  @override
  String get compilationComplete => 'کمپائلیشن مکمل ہو گئی';

  @override
  String get mergeSuccess => 'EFI میں کامیابی کے ساتھ ضم ہو گیا';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher انضمام';

  @override
  String get rootPatching => 'روٹ پیچنگ';

  @override
  String get graphicsAcceleration => 'گرافکس ایکسلریشن';

  @override
  String get wirelessFix => 'وائی فائی اور بلوٹوتھ فکس';

  @override
  String get postInstall => 'انسٹال کے بعد کے اقدامات';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 مطابقت گائیڈ';

  @override
  String get tahoeCompatibility => 'Tahoe 26 کرنل اور آڈیو مطابقت';

  @override
  String get settingsTitle => 'ترتیبات';

  @override
  String get appLanguage => 'زبان :';

  @override
  String get followSystem => 'سسٹم کی پیروی کریں';

  @override
  String get themeMode => 'تھیم موڈ :';

  @override
  String get themeColor => 'تھیم کا رنگ :';

  @override
  String get appFont => 'ایپ فونٹ :';

  @override
  String get efiOptions => 'EFI اختیارات :';

  @override
  String get addThemeToEfi => 'EFI میں اوپن کور بوٹ تھیم شامل کریں';

  @override
  String get generateConfigModel => 'EFI فولڈر میں configModel فائل بنائیں';

  @override
  String get compressZipEfi => 'EFI کو ZIP فائل میں سکیڑیں';

  @override
  String get checkForUpdates => 'اپ ڈیٹس چیک کریں :';

  @override
  String currentVersion(String version) {
    return 'موجودہ ورژن: $version';
  }

  @override
  String get copyrightNotice => 'کاپی رائٹ اور لائسنس';

  @override
  String get exitAppTip => 'باہر نکلنے کے لیے دوبارہ بیک دبائیں';

  @override
  String get updateAvailable => 'نیا ورژن دستیاب ہے';

  @override
  String versionTag(String version) {
    return 'ورژن: $version';
  }

  @override
  String releaseDate(String date) {
    return 'تاریخ اشاعت: $date';
  }

  @override
  String get noUpdateFound => 'آپ تازہ ترین ورژن استعمال کر رہے ہیں';

  @override
  String get efiBuildSuccess => 'EFI کامیابی سے بن گئی!';

  @override
  String get efiBuildFailed => 'EFI بنانے میں ناکامی';

  @override
  String get copiedToClipboard => 'کلپ بورڈ پر کاپی ہو گیا';

  @override
  String get soundLayoutId => 'آڈیو لے آؤٹ ID (alcid)';

  @override
  String get nvramBootArgs => 'کسٹم boot-args';

  @override
  String get generateSerial => 'سیریل نمبر بنائیں';
}
