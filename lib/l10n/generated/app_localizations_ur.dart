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

  @override
  String get navManualTab => 'دستی EFI ترتیب';

  @override
  String get navAutoTab => 'خودکار EFI ترتیب';

  @override
  String get cpuSelection => 'پروسیسر (CPU) کا انتخاب:';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'پینٹیم یا سیلیرون پروسیسرز کو CPU سپوفنگ کی ضرورت ہوتی ہے؛ براہ کرم اسے فعال کریں!\nنوٹ: پینٹیم/سیلیرون iGPU عام طور پر تعاون یافتہ نہیں ہیں!';

  @override
  String get platformSelection => 'پلیٹ فارم کا انتخاب:';

  @override
  String get processorGeneration => 'پروسیسر جنریشن:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 کورز / 12 تھریڈز) کو مخصوص CPU سپوفنگ درکار ہے';

  @override
  String get amdCoresTitle => 'AMD CPU کورز:';

  @override
  String get amdSpecialMb => 'AMD کے خصوصی مدر بورڈز:';

  @override
  String get usePrecastMmio => 'Precast MMIO استعمال کریں';

  @override
  String get useRyzenGpu => 'Ryzen iGPU سپورٹ فعال کریں (NootedRed)';

  @override
  String get motherboardBrand => 'مدر بورڈ برانڈ:';

  @override
  String get motherboardModel => 'مدر بورڈ ماڈل:';

  @override
  String get customMotherboard => 'کسٹم / عام مدر بورڈ';

  @override
  String get igpuConfig => 'iGPU کنفیگریشن:';

  @override
  String get dgpuConfig => 'dGPU کنفیگریشن:';

  @override
  String get audioConfig => 'آڈیو کنفیگریشن:';

  @override
  String get audioCodecFix => 'آڈیو کوڈیک اور لے آؤٹ ID';

  @override
  String get fixIrq => 'IRQ تنازعات کو درست کریں';

  @override
  String get networkConfig => 'نیٹ ورک اور وائی فائی کنفیگریشن:';

  @override
  String get laptopDrivers => 'لیپ ٹاپ ڈرائیورز:';

  @override
  String get touchpadDriver => 'ٹچ پیڈ ڈرائیور (I2C / PS2)';

  @override
  String get smbiosSelection => 'ہدف SMBIOS ماڈل:';

  @override
  String get targetMacOsVersion => 'ہدف شدہ macOS ورژن:';

  @override
  String get bootArgsTitle => 'بوٹ آرگومنٹس (boot-args):';

  @override
  String get csrActiveConfigTitle => 'سسٹم کی سالمیت کا تحفظ (SIP):';

  @override
  String get outputEfiTitle => 'آؤٹ پٹ EFI فولڈر:';

  @override
  String get selectOutputFolder => 'آؤٹ پٹ فولڈر منتخب کریں';

  @override
  String get clearConfig => 'ترتیب صاف کریں';

  @override
  String get importConfigModel => 'configModel درآمد کریں';

  @override
  String get importingConfigModel => 'configModel درآمد ہو رہا ہے...';

  @override
  String get dragDropConfigModel =>
      'configModel فائل کو یہاں ڈریگ اور ڈراپ کریں\nیا براؤز کرنے کے لیے کلک کریں';

  @override
  String get clearAllHistory => 'تمام تاریخ صاف کریں';

  @override
  String get clearingHistory => 'تاریخ صاف ہو رہی ہے...';

  @override
  String get noHistoryRecords => 'ابھی تک کوئی تاریخ کا ریکارڈ نہیں';

  @override
  String get overview => 'جائزہ';

  @override
  String get platformPatches => 'پلیٹ فارم پیچز';

  @override
  String get audioPatches => 'آڈیو پیچز';

  @override
  String get gpuSpoofing => 'GPU سپوفنگ';

  @override
  String get disableDevices => 'ڈیوائسز غیر فعال کریں';

  @override
  String get brightnessPatches => 'چمک کے پیچز';

  @override
  String get graphicsPatches => 'گرافکس پیچز';

  @override
  String get wifiPatches => 'وائی فائی پیچز';

  @override
  String get documentationGuides => 'دستاویزات اور رہنمائی';

  @override
  String get aboutSupport => 'کے بارے میں اور سپورٹ';

  @override
  String get hardwareTabTitle => 'ہارڈ ویئر کنفیگریشن';

  @override
  String get acpiFolderTitle => 'ACPI فولڈر';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'ڈیٹا لوڈ ہو رہا ہے...';

  @override
  String get configuringEfiWait =>
      'EFI ترتیب دیا جا رہا ہے، براہ کرم انتظار کریں...';

  @override
  String get summary => 'خلاصہ';

  @override
  String get recent => 'حالیہ';

  @override
  String get efiConfig => 'EFI ترتیب';

  @override
  String get toolsAndGuides => 'اوزار اور گائیڈز';

  @override
  String get checkUpdates => 'اپ ڈیٹس چیک کریں';

  @override
  String get sponsorDeveloper => 'ڈویلپر کو سپانسر کریں';

  @override
  String get releaseNotes => 'ریلیز نوٹس';

  @override
  String get searchPlaceholder => 'تلاش کریں';

  @override
  String get initialSupportMacOs =>
      'ابتدائی مقامی طور پر تعاون یافتہ macOS ورژن:';

  @override
  String get lastSupportMacOs =>
      'تازہ ترین مقامی طور پر تعاون یافتہ macOS ورژن:';

  @override
  String get oclpSupportMacOs => 'OCLP پیچ سے تعاون یافتہ macOS ورژن:';

  @override
  String get cpuInfoTitle => '[سی پی یو کی معلومات]:';

  @override
  String get biosRecommendedEnabled => '[BIOS تجویز کردہ ترتیبات - فعال]:';

  @override
  String get biosRecommendedDisabled => '[BIOS تجویز کردہ ترتیبات - غیر فعال]:';

  @override
  String get historyExpanderDesc =>
      'RapidEFI کے ساتھ تیار کردہ EFI خود بخود تاریخ میں محفوظ ہو جاتے ہیں۔\nآپ کسی بھی وقت پہلے تیار کردہ کسی بھی EFI کو دوبارہ لوڈ اور ایڈجسٹ کر سکتے ہیں۔\n\nیہ خصوصیت RapidEFI V3.0.0 اور اس سے اوپر پر تعاون یافتہ ہے۔';

  @override
  String get gpuPresets => 'پریسیٹس';

  @override
  String get gpuByCpuModel => 'سی پی یو ماڈل کے لحاظ سے';

  @override
  String get selectCpuGeneration => 'نسل منتخب کریں';

  @override
  String get selectCpuModel => 'سی پی یو منتخب کریں';

  @override
  String get cpuGenerationLabel => 'سی پی یو نسل';

  @override
  String get cpuModelLabel => 'سی پی یو ماڈل';

  @override
  String get matchingIgpuTip =>
      'اگر مماثل ہو تو چیک کریں، ورنہ غیر چیک شدہ چھوڑ دیں';

  @override
  String get selectPropertiesToApply => 'لاگو کرنے کے لیے خصوصیات منتخب کریں';

  @override
  String get motherboardConfigTitle => 'مدر بورڈ ماڈل کنفیگریشن:';

  @override
  String get motherboardConfigItems =>
      'لاگو کرنے کے لیے کنفیگریشن آئٹمز منتخب کریں';

  @override
  String get selectModelToConfigure => '(کنفیگر کرنے کے لیے ماڈل منتخب کریں)';

  @override
  String get pleaseSelect => 'براہ کرم منتخب کریں';

  @override
  String get selectAllDeselectAll => 'سب منتخب / غیر منتخب کریں';

  @override
  String get deselectAll => 'سب غیر منتخب کریں';

  @override
  String get stuckOnEbFix =>
      '[EB] پر پھنس جانے کا حل (اختیاری - ڈیفالٹ تجویز کردہ):';

  @override
  String get renameCurrentEfi => 'موجودہ EFI کا نام تبدیل کریں';

  @override
  String get enterNewName => 'نیا نام درج کریں';

  @override
  String get renameEfiTooltip => 'EFI کا نام تبدیل کریں';

  @override
  String get adminPrivilegesRequired => 'ایڈمنسٹریٹر کے مراعات درکار ہیں';

  @override
  String get enterLoginPassword =>
      'براہ کرم اپنے کمپیوٹر کا لاگ ان پاس ورڈ درج کریں';

  @override
  String get importHardwareMaterials => 'ہارڈ ویئر مواد درآمد کریں';

  @override
  String get currentBiosSettings => 'موجودہ BIOS ترتیبات';

  @override
  String get colorTheme => 'رنگین تھیم';

  @override
  String get noValidHardwareReport => 'کوئی درست ہارڈ ویئر رپورٹ فائل نہیں ملی';

  @override
  String get viewOnGitHub => 'GitHub پر دیکھیں';

  @override
  String get downloadNow => 'ابھی ڈاؤن لوڈ کریں';

  @override
  String get btnConfirm => 'تصدیق کریں';

  @override
  String get btnDeleteRecord => 'یہ ریکارڈ حذف کریں';

  @override
  String get currentEfiNamePrefix => 'موجودہ EFI کا نام: ';

  @override
  String get close => 'بند کریں';

  @override
  String get applySelected => 'منتخب کردہ لاگو کریں';

  @override
  String get connectedGpuPrefix => 'منسلک GPU: ';

  @override
  String get requiresSpoofIdPrefix => 'اسپوف ID درکار: ';

  @override
  String get selectPlatform => 'پلیٹ فارم کی نسل';

  @override
  String get selectVendor => 'برانڈ';

  @override
  String get selectModel => 'مدر بورڈ ماڈل';

  @override
  String get btnImport => 'درآمد کریں';

  @override
  String get defaultLabel => 'ڈیفالٹ';

  @override
  String get wifiBluetoothDrivers => 'وائی فائی اور بلوٹوتھ ڈرائیورز:';

  @override
  String get noWifiDriversByDefault =>
      '(طے شدہ طور پر کوئی وائی فائی ڈرائیور تشکیل نہیں دیا گیا)';

  @override
  String get getIntelModifiedOclp => 'انٹیل کا ترمیم شدہ OCLP حاصل کریں';

  @override
  String get forLaptopSystems => '(لیپ ٹاپ سسٹمز کے لیے)';

  @override
  String get basicConfig => 'بنیادی ترتیب';

  @override
  String get advancedConfig => 'اعلی درجے کی ترتیب';

  @override
  String get portCustomization => 'پورٹ حسب ضرورت';

  @override
  String get displayEdid => 'EDID ڈسپلے کریں۔';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'AMD dGPU Spoof';

  @override
  String get intelWifi => 'انٹیل وائی فائی';

  @override
  String get broadcomBrcm => 'براڈ کام (Brcm)';

  @override
  String get atherosWifi => 'ایتھروس';

  @override
  String get usbWifi => 'USB Wi-Fi';

  @override
  String get bluetoothDrivers => 'بلوٹوتھ ڈرائیورز';

  @override
  String get debuggingTab => 'ڈیبگنگ';

  @override
  String get amfiSipTab => 'AMFI/SIP';

  @override
  String get igpuFixesTab => 'iGPU فکسز';

  @override
  String get dgpuFixesTab => 'dGPU فکسز';

  @override
  String get blackScreenFixesTab => 'بلیک اسکرین کی اصلاحات';

  @override
  String get above4gTab => '4G ڈی کوڈنگ سے اوپر';

  @override
  String get trackpadFixesTab => 'ٹریک پیڈ کی اصلاحات';

  @override
  String get othersTab => 'دوسرے';

  @override
  String get powerManagementTab => 'پاور مینجمنٹ';

  @override
  String get sleepHibernationTab => 'نیند / ہائبرنیشن';

  @override
  String get storageDiskTab => 'اسٹوریج / ڈسک';

  @override
  String get cpuFixesTab => 'سی پی یو فکسز';

  @override
  String get amdPlatformTab => 'AMD پلیٹ فارم';

  @override
  String get usbFixesTab => 'USB فکسز';

  @override
  String get sdCardTab => 'ایس ڈی کارڈ';

  @override
  String get brandTab => 'برانڈ';

  @override
  String get specialMotherboardTab => 'خصوصی مدر بورڈ';

  @override
  String get sipSettingsTab => 'SIP کی ترتیبات';

  @override
  String get renameCpuTab => 'CPU کا نام تبدیل کریں۔';

  @override
  String get uiScaleTab => 'UI اسکیل';

  @override
  String get acpiConfigTab => 'ACPI ترتیب';

  @override
  String get booterConfigTab => 'بوٹر کنفیگریشن';

  @override
  String get kernelConfigTab => 'کرنل کنفیگ';

  @override
  String get uefiConfigTab => 'UEFI کنفیگریشن';

  @override
  String get lookupLayoutId => 'لے آؤٹ ID تلاش کریں۔';

  @override
  String get visitChris1111Repo => 'chris1111 Repository ملاحظہ کریں۔';

  @override
  String get supportedMacOsVersions => 'تعاون یافتہ macOS ورژن:';

  @override
  String get supportedUsbWifiChipsets => 'تائید شدہ USB Wi-Fi چپ سیٹ:';

  @override
  String get selectUtbMap => 'UTBMap منتخب کریں۔';

  @override
  String get selectUtbMapHint =>
      'USBToolBox کے ساتھ تیار کردہ میپ شدہ UTBMap.kext کو منتخب کریں۔';

  @override
  String get reprocessEfiSubtitle =>
      '(RapidEFI کے ذریعہ تیار کردہ EFI کو دوبارہ پروسیس کریں)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI خود بخود EFI فولڈر کے اندر ایک configModel فائل کو آؤٹ پٹ کرتا ہے۔ اپنی EFI کنفیگریشن کو دوبارہ لوڈ کرنے اور حسب ضرورت بنانے کے لیے نیچے دی گئی اس فائل کو درآمد کریں۔';

  @override
  String get reprocessEfiVersionNote =>
      'یہ خصوصیت RapidEFI V3.0.0 اور اس سے اوپر پر تعاون یافتہ ہے۔';

  @override
  String get dropConfigModelHint =>
      'configModel فائل کو یہاں ڈراپ کریں یا براؤز کرنے کے لیے کلک کریں۔';

  @override
  String get offLabel => 'آف';

  @override
  String get onLabel => 'پر';

  @override
  String get githubRepository => 'GitHub ذخیرہ';

  @override
  String get releasesAndUpdates => 'ریلیز اور اپ ڈیٹس';

  @override
  String get projectDocumentation => 'پروجیکٹ کی دستاویزات';

  @override
  String get aboutSupportDetails =>
      'RapidEFI ایک اوپن سورس، خودکار OpenCore EFI جنریٹر، ACPI/SSDT پیچر، اور ہارڈویئر تجزیہ ٹول ہے جو Hackintosh اور macOS کے شائقین کے لیے بنایا گیا ہے۔\n\nمحبت کے ساتھ تخلیق اور برقرار رکھا۔ جاری ترقی کو سپورٹ کرنے کے لیے GitHub پر پروجیکٹ کو اسٹار اور فورک کریں!';

  @override
  String get checkApplicableOptions => '(قابل اطلاق اختیارات چیک کریں)';

  @override
  String get optionalCheckApplicableOptions =>
      '(اختیاری - قابل اطلاق اختیارات چیک کریں)';

  @override
  String get appleAlcUsedByDefault =>
      '(AppleALC ڈرائیور بطور ڈیفالٹ استعمال کیا جاتا ہے)';

  @override
  String get noEthernetDriverByDefault =>
      '(بطور ڈیفالٹ کوئی ایتھرنیٹ ڈرائیور شامل نہیں کیا گیا)';

  @override
  String get usbInjectAllByDefault => '(USBInjectAll استعمال شدہ بطور ڈیفالٹ)';

  @override
  String get verboseModeByDefault =>
      '(-v وربوز موڈ بطور ڈیفالٹ فعال؛ غیر فعال کرنے کے لیے نشان ہٹا دیں)';

  @override
  String get optionalDriversSubtitle =>
      '(اختیاری ڈرائیوروں کی ضرورت نہیں جب تک ضرورت نہ ہو)';

  @override
  String get keepDefaultsSubtitle =>
      '(پہلے سے طے شدہ رکھیں جب تک کہ مخصوص تخصیص کی ضرورت نہ ہو)';

  @override
  String get optionalCheckDeviceBrand =>
      'اختیاری - چیک کریں کہ آیا آپ کے آلے کا برانڈ مماثل ہے۔';

  @override
  String get optionalCheckMotherboardModel =>
      'اختیاری - چیک کریں کہ آیا مدر بورڈ ماڈل مماثل ہے۔';

  @override
  String get optionalConfigureSip =>
      'اختیاری - ضرورت کے مطابق SIP ترتیب دیں (بطور ڈیفالٹ غیر فعال)';

  @override
  String get optionalCustomCpuName => 'اختیاری - حسب ضرورت CPU نام';

  @override
  String get optionalAdjustUiScale =>
      'اختیاری - OpenCore بوٹ UI اسکیل کو ایڈجسٹ کریں۔';

  @override
  String get acpiSsdtPatches => 'ACPI - SSDT پیچ';

  @override
  String get acpiPatches => 'ACPI - پیچ';

  @override
  String get kernelPatches => 'دانا - پیچ';

  @override
  String get powerManagement => 'پاور مینجمنٹ';

  @override
  String get ssdApfsTrimPolicy => 'NVMe / SATA SSD APFS ٹرم پالیسی';

  @override
  String get kernelQuirksSubtitle =>
      'Kernel - Quirks (پہلے سے طے شدہ ترتیبات کی سفارش کی جاتی ہے جب تک کہ مخصوص اصلاحات کی ضرورت نہ ہو)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - ڈرائیورز (پہلے سے طے شدہ ترتیب کو برقرار رکھیں جب تک کہ مخصوص ضروریات پیدا نہ ہوں)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI - آؤٹ پٹ (پہلے سے طے شدہ ترتیبات کی سفارش کی جاتی ہے)';

  @override
  String get method1Title =>
      'طریقہ 1: \'GPRW کا نام بدل کر XPRW\' (فوری ویک فکس)';

  @override
  String get method2Title =>
      'طریقہ 2: \'UPRW سے XPRW\' کا نام تبدیل کریں (انسٹنٹ ویک فکس)';

  @override
  String get method3Title =>
      'طریقہ 3: \'RTC فکس\' کا نام تبدیل کریں (آر ٹی سی پاور آف / سی ایم او ایس ری سیٹ کو درست کریں)';

  @override
  String get method4Title =>
      'طریقہ 4: \'بیٹری فکس\' کا نام تبدیل کریں (16 بٹ سے 8 بٹ بیٹری پیچ کو سپورٹ کریں)';

  @override
  String get pciPathLabel => 'dGPU PCI پاتھ:';

  @override
  String get pciPathPlaceholder => 'پی سی آئی پاتھ درج کریں۔';

  @override
  String get spoofedDeviceIdLabel => 'جعلی ڈیوائس ID:';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'جعل سازی کے لیے GPU ڈیوائس کو منتخب کریں۔';

  @override
  String get injectDisplayEdidLabel =>
      'ڈسپلے EDID انجیکشن کریں (عام طور پر 256 یا 512 ہیکس حروف):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'ڈسپلے EDID درج کریں (عام طور پر 256 یا 512 ہیکس حروف؛ خالی جگہوں اور نئی لائنوں کی اجازت ہے)';

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
