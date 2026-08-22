// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - أداة تهيئة OpenCore EFI';

  @override
  String get navHardware => 'العتاد';

  @override
  String get navManual => 'تهيئة EFI اليدوية';

  @override
  String get navProcess => 'معالجة EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'السجل';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get navAbout => 'حول';

  @override
  String get navSponsor => 'دعم المطور';

  @override
  String get btnRefresh => 'تحديث';

  @override
  String get btnImportReport => 'استيراد التقرير';

  @override
  String get btnExportReport => 'تصدير التقرير';

  @override
  String get btnExportAcpi => 'تصدير ACPI';

  @override
  String get btnEfiSettings => 'إعدادات EFI';

  @override
  String get btnExportEfi => 'تصدير EFI';

  @override
  String get btnGenerateEfi => 'توليد EFI';

  @override
  String get btnBrowse => 'استعراض';

  @override
  String get btnChooseFile => 'اختيار ملف';

  @override
  String get btnCancel => 'إلغاء';

  @override
  String get btnApply => 'تطبيق';

  @override
  String get btnSave => 'حفظ';

  @override
  String get btnClose => 'إغلاق';

  @override
  String get btnCheckUpdates => 'التحقق من التحديثات';

  @override
  String get btnChecking => 'جاري التحقق...';

  @override
  String get btnSelectAll => 'تحديد الكل';

  @override
  String get btnDeselectAll => 'إلغاء تحديد الكل';

  @override
  String get btnCustomSsdt => 'SSDT مخصص';

  @override
  String get btnPrebuiltSsdt => 'SSDT جاهز';

  @override
  String get btnDumpAcpi => 'استخراج ACPI';

  @override
  String get btnSelectAcpis => 'تحديد ACPI';

  @override
  String get btnSelectConfig => 'تحديد config';

  @override
  String get btnMergeConfig => 'دمج config';

  @override
  String get btnExecutePatch => 'تطبيق الرقعة';

  @override
  String get btnOpenFolder => 'فتح المجلد';

  @override
  String get hardwareReport => 'تقرير العتاد';

  @override
  String get cpuArchitecture => 'المعالج (CPU)';

  @override
  String get motherboardChipset => 'اللوحة الأم والرقاقات';

  @override
  String get graphicsDevice => 'معالج الرسوميات (GPU)';

  @override
  String get audioCodec => 'متحكم الصوت';

  @override
  String get networkController => 'الشبكة واللاسلكي';

  @override
  String get storageDevice => 'أجهزة التخزين';

  @override
  String get acpiTables => 'جداول ACPI';

  @override
  String get compatibilityStatus => 'التوافقية';

  @override
  String get compatible => 'مدعوم';

  @override
  String get unsupported => 'غير مدعوم';

  @override
  String get requiresPatch => 'يتطلب رقعة';

  @override
  String get details => 'التفاصيل';

  @override
  String get showDetailedReport => 'عرض مفصل';

  @override
  String get platformConfig => 'تهيئة المنصة';

  @override
  String get cpuVendor => 'الشركة المصنعة للمعالج';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'نوع الجهاز';

  @override
  String get desktop => 'مكتبي';

  @override
  String get laptop => 'محمول';

  @override
  String get nucMiniPc => 'NUC / حاسوب صغير';

  @override
  String get hedtServer => 'HEDT / خادم';

  @override
  String get processorGen => 'جيل المعالج';

  @override
  String get targetMacOs => 'إصدار macOS المستهدف';

  @override
  String get smbiosModel => 'طراز SMBIOS المستهدف';

  @override
  String get motherboardSelector => 'اختيار اللوحة الأم';

  @override
  String get brand => 'العلامة التجارية';

  @override
  String get model => 'الموديل';

  @override
  String get outputDirectory => 'مجلد الإخراج';

  @override
  String get kextConfiguration => 'تهيئة التعريفات (Kexts)';

  @override
  String get bootArguments => 'معاملات الإقلاع (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'تفعيل SIP (00000000)';

  @override
  String get sipDisabled => 'تعطيل SIP (03080000)';

  @override
  String get processEfiTitle => 'معالجة وإعادة بناء EFI';

  @override
  String get chooseEfiPrompt =>
      'حدد مجلد EFI أو ملف configModel لتحميل الإعدادات';

  @override
  String get configModelFound => 'تم العثور على configModel وتحميله بنجاح';

  @override
  String get rebuildEfi => 'إعادة بناء EFI';

  @override
  String get ssdtGeneratorTitle => 'مولد SSDT ومصلح ACPI';

  @override
  String get corePatches => 'الرقع الأساسية';

  @override
  String get recommendedPatches => 'الرقع الموصى بها';

  @override
  String get optionalPatches => 'الرقع الاختيارية';

  @override
  String get compilationComplete => 'اكتمل التجميع';

  @override
  String get mergeSuccess => 'تم الدمج في EFI بنجاح';

  @override
  String get oclpTitle => 'تكامل OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'تطبيق رقع الروت';

  @override
  String get graphicsAcceleration => 'تسريع الرسوميات';

  @override
  String get wirelessFix => 'إصلاح Wi-Fi والبلوتوث';

  @override
  String get postInstall => 'خطوات ما بعد التثبيت';

  @override
  String get tahoeGuideTitle => 'دليل توافقية macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'ملاءمة نواة وصوت Tahoe 26';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get appLanguage => 'اللغة :';

  @override
  String get followSystem => 'اتباع النظام';

  @override
  String get themeMode => 'نمط المظهر :';

  @override
  String get themeColor => 'لون المظهر :';

  @override
  String get appFont => 'خط التطبيق :';

  @override
  String get efiOptions => 'خيارات EFI :';

  @override
  String get addThemeToEfi => 'إضافة مظهر إقلاع OpenCore إلى EFI';

  @override
  String get generateConfigModel => 'توليد ملف configModel في مجلد EFI';

  @override
  String get compressZipEfi => 'ضغط EFI في ملف ZIP';

  @override
  String get checkForUpdates => 'التحقق من التحديثات :';

  @override
  String currentVersion(String version) {
    return 'الإصدار الحالي: $version';
  }

  @override
  String get copyrightNotice => 'حقوق النشر والترخيص';

  @override
  String get exitAppTip => 'اضغط رجوع مرة أخرى للخروج';

  @override
  String get updateAvailable => 'يتوفر إصدار جديد';

  @override
  String versionTag(String version) {
    return 'الإصدار: $version';
  }

  @override
  String releaseDate(String date) {
    return 'تاريخ الإصدار: $date';
  }

  @override
  String get noUpdateFound => 'أنت تستخدم أحدث إصدار';

  @override
  String get efiBuildSuccess => 'تم توليد EFI بنجاح!';

  @override
  String get efiBuildFailed => 'فشل توليد EFI';

  @override
  String get copiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get soundLayoutId => 'معرف تخطيط الصوت (alcid)';

  @override
  String get nvramBootArgs => 'boot-args مخصصة';

  @override
  String get generateSerial => 'توليد الرقم التسلسلي';
}
