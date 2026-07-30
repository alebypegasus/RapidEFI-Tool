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
  String get recent => 'مؤخرًا';

  @override
  String get efiRelated => 'ذات صلة بـ EFI';

  @override
  String get toolsAndGuides => 'الأدوات والأدلة';

  @override
  String get navHistory => 'تاريخ';

  @override
  String get navConfigureEFI => 'تكوين EFI';

  @override
  String get navProcessEFI => 'عملية EFI';

  @override
  String get navCustomSSDT => 'SSDT مخصص';

  @override
  String get navOCLPPatch => 'تصحيح OCLP-X';

  @override
  String get navTahoeGuide => 'ماك تاهو 26';

  @override
  String get navSettings => 'إعدادات';

  @override
  String get navSponsor => 'المطور الراعي';

  @override
  String get searchPlaceholder => 'يبحث';

  @override
  String get darkMode => 'الوضع المظلم';

  @override
  String get clickAgainToExit => 'انقر مرة أخرى للخروج';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'الإصدار الحالي من OpenCore: $version';
  }

  @override
  String get copyrightTitle => 'بيان حقوق النشر';

  @override
  String get copyrightText =>
      'حقوق الطبع والنشر (C) 2024 لشركة JeoJay\n\nالترخيص:\nمسموح للاستخدام الفردي أو المؤسسي وفقًا للشروط التالية:\n\n1. الاستخدام غير التجاري:\nهذا البرنامج مجاني تمامًا ومفتوح المصدر، مخصص للاستخدام غير التجاري فقط. بيع هذا البرنامج محظور.\n\n2. الإسناد:\nيجب أن يذكر أي شكل من أشكال إعادة النشر أو الاقتباس أو الاستخدام على مواقع الطرف الثالث المصدر صراحةً وأن يتضمن المعلومات التالية:\nتم تطويره بواسطة جوجاي. حقوق الطبع والنشر (C) 2024 لشركة JeoJay. جميع الحقوق محفوظة.\n\n3. لا تقم بتعديل إعلانات حقوق النشر:\nعند إعادة نشر أو استخدام أي محتوى من هذا البرنامج، يجب عدم تعديل أو حذف إشعار حقوق الطبع والنشر الأصلي ومعلومات الإسناد.\n\nإخلاء المسؤولية:\nيتم توفير هذا البرنامج \"كما هو\"، دون أي ضمان من أي نوع، صريحًا أو ضمنيًا. لا يتحمل مالك حقوق الطبع والنشر أي مسؤولية عن أي أضرار مباشرة أو غير مباشرة تنشأ عن استخدام هذا البرنامج.';

  @override
  String get themeModeTitle => 'الوضع الداكن:';

  @override
  String get themeModeSystem => 'اتبع النظام';

  @override
  String get themeModeLight => 'عن';

  @override
  String get themeModeDark => 'على';

  @override
  String get themeColorTitle => 'لون الموضوع:';

  @override
  String get appFontTitle => 'خط التطبيق:';

  @override
  String get efiSettingsTitle => 'خيارات إخراج EFI:';

  @override
  String get addOpenCoreTheme => 'أضف سمة تمهيد OpenCore عند تكوين EFI';

  @override
  String get generateConfigModel => 'قم بإنشاء ملف configModel في مجلد EFI';

  @override
  String get zipEFI => 'ضغط EFI في ملف مضغوط';

  @override
  String get languageTitle => 'لغة:';

  @override
  String get languageSystem => 'اتبع النظام';

  @override
  String get languageEn => 'إنجليزي';

  @override
  String get languagePtBR => 'البرتغالية (البرازيل)';

  @override
  String get languagePtPT => 'البرتغالية (البرتغال)';

  @override
  String get languageZhCN => 'الصينية (المبسطة)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => 'اليابانية';

  @override
  String get languageEs => 'الاسبانية';

  @override
  String get languageFr => 'فرنسي';

  @override
  String get languageAr => 'العربية';

  @override
  String get languageHi => 'الهندية';

  @override
  String get languageRu => 'الروسية';

  @override
  String get languageIt => 'ايطالي';

  @override
  String get versionUpdateTitle => 'تحديث الإصدار:';

  @override
  String currentVersion(Object version) {
    return 'الإصدار الحالي: $version';
  }

  @override
  String get checkUpdate => 'التحقق من وجود تحديثات';

  @override
  String get checkingUpdate => 'جارٍ التحقق...';

  @override
  String get settingSnippet =>
      '1. يتم تمكين الخيار \"إضافة سمة تمهيد OpenCore عند تكوين EFI\" افتراضيًا. سيتم تضمين سمة التمهيد في مجلد EFI الناتج. قم بإلغاء تحديد إذا لم تكن هناك حاجة إليها.\n\n2. يتم تمكين الخيار \"إنشاء ملف configModel في مجلد EFI\" افتراضيًا. يمكن استخدام هذا الملف لإعادة تحرير وضبط EFI الحالي في قسم \"عملية EFI\".\n\n3. يقوم الخيار \"ضغط EFI في ملف Zip\" بضغط مخرجات EFI في ملف Zip. لاحظ أن ضغط الملفات المضغوطة قد يؤثر على التقدم الإجمالي لمخرجات EFI، خاصة على الأجهزة ذات الأداء المنخفض.';

  @override
  String get fontMicrosoftYaHei => 'مايكروسوفت ياهي';

  @override
  String get fontSarasaGothic => 'ساراسا القوطية';

  @override
  String get fontSourceHanSerif => 'المصدر هان شريف';

  @override
  String get cpuArchitecture => 'بنية وحدة المعالجة المركزية';

  @override
  String get desktop => 'سطح المكتب';

  @override
  String get laptop => 'كمبيوتر محمول';

  @override
  String get hedt => 'الخادم';

  @override
  String get nuc => 'جهاز كمبيوتر صغير';

  @override
  String get amd => 'معالج ايه ام دي';

  @override
  String get smbios => 'نموذج سمبيوس';

  @override
  String get generateEFI => 'إنشاء EFI';

  @override
  String get clearSelection => 'مسح التحديد';

  @override
  String get exportConfig => 'تكوين التصدير';

  @override
  String get selectTargetFolder => 'حدد الدليل الهدف';

  @override
  String get efiGenerateSuccess => 'تم إنشاء EFI بنجاح!';

  @override
  String efiGenerateFailed(Object error) {
    return 'فشل إنشاء EFI: $error';
  }

  @override
  String get cancel => 'يلغي';

  @override
  String get confirm => 'يتأكد';

  @override
  String get save => 'يحفظ';

  @override
  String get delete => 'يمسح';

  @override
  String get openFolder => 'افتح المجلد';

  @override
  String get date => 'تاريخ';

  @override
  String get actions => 'الإجراءات';

  @override
  String get historyTitle => 'تاريخ';

  @override
  String get historyDescription =>
      'يتم نسخ EFIs التي تم إنشاؤها بواسطة RapidEFI تلقائيًا احتياطيًا بعد كل عملية إنشاء ناجحة. يمكنك إعادة تحرير وضبط المخرجات بناءً على هذه السجلات كلما دعت الحاجة.';

  @override
  String get clearAllHistory => 'مسح كل التاريخ';

  @override
  String get clearingHistory => 'مسح التاريخ...';

  @override
  String get noHistory => 'لا توجد سجلات التاريخ';

  @override
  String get editEFI => 'تحرير EFI';

  @override
  String get configuringEFI => 'جارٍ تكوين EFI، برجاء الانتظار...';

  @override
  String get configureEFISuccess => 'تم تكوين EFI بنجاح';

  @override
  String get configureEFIFailed =>
      'خطأ في تكوين EFI!\nالرجاء تغيير دليل إخراج EFI.';

  @override
  String get sponsorTitle => 'المطور الراعي';

  @override
  String get visitBilibili => 'المؤلف بيليبيلي';

  @override
  String get visitGithub => 'قم بزيارة جيثب';

  @override
  String get buyCoffeeTitle => 'شراء المطور القهوة';

  @override
  String get buyCoffeeText =>
      'إذا ساعدتك هذه الأداة، فلا تتردد في رعاية المطور! شكرا لدعمكم!\n\nجهة اتصال المؤلف: QQ 766264141 أو WX: JeoJay127. لا توجد طرق اتصال خاصة أخرى، احذر من عمليات الاحتيال!';

  @override
  String get successCasesTitle => 'حالات نجاح RapidEFI';

  @override
  String get tahoeGuideTitle => 'دليل ماك تاهو 26';

  @override
  String get oclpIntro => 'مقدمة';

  @override
  String get oclpGpu => 'تصحيح GPU';

  @override
  String get oclpWifi => 'تصحيح واي فاي';

  @override
  String get ssdtPlatform => 'تصحيح المنصة';

  @override
  String get ssdtAudio => 'تصحيح الصوت';

  @override
  String get ssdtGpuSpoof => 'انتحال GPU';

  @override
  String get ssdtDisableDevice => 'تعطيل الجهاز';

  @override
  String get ssdtBrightness => 'تصحيح السطوع';

  @override
  String get manualEFIConfig => 'تكوين EFI اليدوي';

  @override
  String get autoEFIConfig => 'تكوين EFI التلقائي';

  @override
  String get cpuSelection => 'اختيار وحدة المعالجة المركزية:';

  @override
  String get platformSelection => 'اختيار المنصة:';

  @override
  String get platformInfo => 'معلومات المنصة:';

  @override
  String get targetMacOSVersion => 'إصدار macOS المستهدف:';

  @override
  String get smbiosModelSetup => 'إعداد نموذج SMBIOS:';

  @override
  String get motherboardModelConfig => 'تكوين نموذج اللوحة الأم:';

  @override
  String get selectMotherboardModelTip =>
      '(اختر طراز اللوحة الأم لتطبيق التكوين)';

  @override
  String get platformGen => 'جيل المنصة';

  @override
  String get vendor => 'ماركة';

  @override
  String get motherboardModel => 'نموذج اللوحة الأم';

  @override
  String get pleaseSelect => 'الرجاء التحديد';

  @override
  String get selected => 'المحدد:';

  @override
  String get applySelectedConfig => 'تطبيق التكوين المحدد';

  @override
  String get noMatchingConfigEntries => 'لا توجد إدخالات تكوين مطابقة';

  @override
  String get pentiumCeleron => 'بنتيوم / سيليرون';

  @override
  String get pentiumCeleronTip =>
      'تتطلب معالجات Pentium أو Celeron انتحال وحدة المعالجة المركزية! يرجى التمكين.\nملاحظة: وحدات معالجة الرسومات Pentium/Celeron iGPU غير مدعومة عادةً!';

  @override
  String get u62CpuTitle => 'U62 نوع وحدة المعالجة المركزية';

  @override
  String get u62CpuTip =>
      'وحدة المعالجة المركزية Comet Lake U62 من الجيل العاشر (مثل i3-10110U، وi5-10210U، وi7-10510U، وما إلى ذلك) - يرجى التمكين!';

  @override
  String get macOSVersionSnippet =>
      'يتوافق EFI الذي تم إنشاؤه مع الإصدارات السابقة مع إصدار macOS المحدد وصولاً إلى OS X El Capitan 10.11.';

  @override
  String get amdCores => 'عدد AMD الأساسية:';

  @override
  String get ryzen7000to9000 =>
      'وحدات المعالجة المركزية من سلسلة 7000 إلى 9000';

  @override
  String get useAmdIgpuOutput => 'استخدم AMD iGPU لإخراج العرض';

  @override
  String get igpuConfigTitle => 'تكوين iGPU';

  @override
  String get dgpuConfigTitle => 'تكوين dGPU';

  @override
  String get audioDriver => 'برنامج تشغيل الصوت:';

  @override
  String get defaultAppleALCDriver =>
      '(الافتراضي: يستخدم برنامج تشغيل AppleALC)';

  @override
  String get alcLayoutId => 'معرف تخطيط ALC:';

  @override
  String get queryLayoutId => 'معرف تخطيط الاستعلام';

  @override
  String get hpetAcpiPath => 'مسار HPET ACPI (إصلاح IRQ الصوتي):';

  @override
  String get fixIrq => 'إصلاح طلب المقاطعة';

  @override
  String get selectAudioLayoutIdTitle => 'حدد معرف تخطيط الصوت';

  @override
  String get selectAudioLayoutIdTip =>
      '(استخدم عجلة التمرير للتحديد، ثم انقر فوق تأكيد)';

  @override
  String get ethernetDriver => 'سائق إيثرنت:';

  @override
  String get defaultNoEthernetDriver =>
      '(الافتراضي: لم تتم إضافة برنامج تشغيل إيثرنت)';

  @override
  String get loadingData => 'جارٍ تحميل البيانات...';

  @override
  String get refreshHardwareInfo => 'تحديث معلومات الأجهزة';

  @override
  String get importHardwareInfo => 'استيراد بيانات الأجهزة';

  @override
  String get exportHardwareReport => 'تصدير تقرير الأجهزة';

  @override
  String get exportAcpiTables => 'تصدير جداول ACPI';

  @override
  String get efiSettings => 'إعدادات إيفي';

  @override
  String get outputEFI => 'تصدير EFI';

  @override
  String get summaryView => 'ملخص';

  @override
  String get detailedView => 'مفصل';

  @override
  String get legendGreen => 'الأخضر: يدعم أحدث نظام تشغيل (macOS Tahoe 26)';

  @override
  String get legendYellow => 'الأصفر: يدعم بعض إصدارات نظام التشغيل';

  @override
  String get legendRed => 'الأحمر: غير متوافق تمامًا';

  @override
  String get noAcpiImported => 'لم يتم استيراد ACPI';

  @override
  String get personalizedEfiTitle => 'إعدادات EFI الشخصية';

  @override
  String get applySettings => 'تطبيق الإعدادات';

  @override
  String get configureEFIError =>
      'خطأ في تكوين EFI!\nالرجاء تغيير مسار الإخراج';

  @override
  String get selectConfigItems => 'حدد عناصر التكوين المراد تطبيقها';

  @override
  String get newVersionFound => 'الإصدار الجديد متاح';

  @override
  String versionTag(Object tag) {
    return 'الإصدار: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'تاريخ الإصدار: $date';
  }

  @override
  String get downloadNow => 'تحميل الآن';

  @override
  String get close => 'يغلق';

  @override
  String get generatingEfiAndSsdt =>
      'جارٍ إنشاء EFI وSSDT المخصص، برجاء الانتظار...';

  @override
  String get configuringEfiTitle => 'تكوين EFI';

  @override
  String get configureEfiSuccessTitle => 'تم تكوين EFI بنجاح';

  @override
  String get configureEfiErrorTitle => 'فشل تكوين EFI';

  @override
  String get outputDirectory => 'دليل الإخراج:';

  @override
  String get openEfiDirectory => 'افتح دليل EFI';

  @override
  String get select => 'يختار';

  @override
  String get selectFile => 'حدد ملف';

  @override
  String get selectDirectory => 'حدد الدليل';

  @override
  String get hardwareReport => 'تقرير الأجهزة';

  @override
  String get acpiTablesDirectory => 'دليل جداول ACPI';

  @override
  String get noAcpiFolderTip =>
      'بدون دليل جداول ACPI، لا يمكن إنشاء SSDT مخصص من التقرير المستورد.';

  @override
  String get hasAcpiFolderTip =>
      'سيتم استخدام دليل جداول ACPI المحدد لـ SSDT المخصص.';

  @override
  String get adminRightsRequired => 'حقوق المسؤول المطلوبة';

  @override
  String get enterSystemPassword => 'الرجاء إدخال كلمة مرور النظام الخاص بك';

  @override
  String get import => 'يستورد';

  @override
  String get optionalSelectIfMatching => '(اختياري - تحقق من المطابقة)';

  @override
  String get selectIfMatching => '(تحقق من المطابقة)';

  @override
  String get baseConfig => 'التكوين الأساسي';

  @override
  String get advanceConfig => 'التكوين المتقدم';

  @override
  String get connectorCustomization => 'تخصيص الموصل';

  @override
  String get displayEdid => 'عرض إيد';

  @override
  String get nvidiaDgpu => 'نفيديا دي جي بي يو';

  @override
  String get amdDgpu => 'ايه ام دي دي جي بي يو';

  @override
  String get amdDgpuSpoof => 'AMD dGPU محاكاة ساخرة';

  @override
  String get above4gTitle => 'فوق إعدادات فك تشفير 4G';

  @override
  String get addNpciBootArg => 'أضف وسيطة التمهيد npci=0x2000';

  @override
  String get above4gTip =>
      'يوصى به إذا تم تعطيل فك التشفير فوق 4G في BIOS. قم بإلغاء التحديد إذا تم تمكينه.';

  @override
  String get personalizedEfiIntroTip =>
      'جميع الحقول اختيارية. سيقوم إخراج EFI بإنشاء الملفات المقابلة بناءً على هذه الإعدادات.';

  @override
  String get ssdtType => 'نوع SSDT:';

  @override
  String get customSsdt => 'SSDT مخصص';

  @override
  String get presetSsdt => 'SSDT محدد مسبقًا';

  @override
  String get cpuTypeLabel => 'نوع وحدة المعالجة المركزية:';

  @override
  String get platformTypeLabel => 'نوع المنصة:';

  @override
  String get selectAll => 'حدد الكل';

  @override
  String get basicOfficialRecommend => '* الأساسية (التوصية الرسمية)';

  @override
  String get recommendFixes => '* يوصي (إصلاحات الميزة)';

  @override
  String get optionalEnhancements => '* اختياري (التحسينات)';

  @override
  String get personalizedPlatformTip =>
      'يتم الكشف عن نوع وحدة المعالجة المركزية ونوع النظام الأساسي والمعلومات من الأجهزة؛ اضبط يدويًا أدناه إذا كان غير صحيح.';

  @override
  String get pciPathLabel => 'مسار GPU PCI:';

  @override
  String get pciPathHint => 'أدخل مسار PCI';

  @override
  String get spoofGpuIdLabel => 'معرف GPU المزيف:';

  @override
  String get bluetoothNvramDefaultTitle =>
      'Bluetooth NVRAM 1 (Default. Automatically added with the Bluetooth driver)';

  @override
  String get bluetoothNvramAxTitle =>
      'Bluetooth NVRAM 2 (Only for Intel AX200/AX201 cards)';

  @override
  String get uefiHfsPlusLegacyTip =>
      'Uses HfsPlusLegacy. Suitable for old systems (3rd gen or earlier), especially Celeron/Pentium. If OpenCore menu does not appear, try HfsPlus or OpenHfsPlus.';

  @override
  String get uefiHfsPlusTip =>
      'Uses HfsPlus. Suitable for 3rd gen and newer systems. Recommended by default. If the menu does not appear, try HfsPlusLegacy or OpenHfsPlus.';

  @override
  String get uefiOpenHfsPlusTip =>
      'Uses OpenHfsPlus. Suitable for 3rd gen and newer, recommended for newer Celeron/Pentium. Avoid if not necessary. If the menu does not appear, try HfsPlusLegacy or HfsPlus.';

  @override
  String get selectSpoofGpuPlaceholder => 'حدد GPU للمحاكاة الساخرة';

  @override
  String get gpuSpoofDataLoadError => 'فشل تحميل بيانات محاكاة GPU';

  @override
  String get injectEdidTitle =>
      'حقن عرض EDID (256 أو 512 حرفًا سداسيًا عشريًا):';

  @override
  String get injectEdidHint =>
      'أدخل Display EDID (التنسيق السداسي، والمسافات مسموحة)';

  @override
  String get edidHexError => 'تحتوي بيانات EDID على أحرف غير سداسية عشرية!';

  @override
  String get edidLengthError => 'طول EDID ليس من مضاعفات 256!';

  @override
  String get edidInvalidToast =>
      'بيانات EDID غير صالحة، يرجى التحقق قبل الدخول!';

  @override
  String get details => 'تفاصيل';

  @override
  String get clearAllSelection => 'مسح كل التحديد';

  @override
  String applySelected(Object count) {
    return 'تطبيق المحدد ($count العناصر)';
  }

  @override
  String get getModdedOclp => 'احصل على OCLP المعدل';

  @override
  String get getIntelModdedOclp => 'احصل على Intel Modded OCLP';

  @override
  String get soundDriverCardTitle => 'برنامج تشغيل الصوت:';

  @override
  String get soundDriverDefaultTip =>
      '(يستخدم الافتراضي برنامج تشغيل AppleALC)';

  @override
  String get hpetAcpiPathTitle => 'مسار HPET ACPI (إصلاح IRQ الصوتي):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'حدد معرف تخطيط الصوت (DB: $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip =>
      '(قم بالتمرير باستخدام العجلة، ثم انقر فوق تأكيد)';

  @override
  String get nicDriverCardTitle => 'برنامج تشغيل بطاقة الشبكة:';

  @override
  String get nicDriverDefaultTip =>
      '(افتراضيًا لم تتم إضافة برنامج تشغيل بطاقة الشبكة)';

  @override
  String get wifiBtCardTitle => 'برنامج تشغيل الواي فاي والبلوتوث:';

  @override
  String get wifiBtDefaultTip =>
      '(لا يوجد برنامج تشغيل Wi-Fi افتراضيًا، قم بتكوينه يدويًا إذا لزم الأمر)';

  @override
  String get usbCardTitle => 'برنامج تشغيل USB:';

  @override
  String get usbDefaultTip => '(يستخدم الافتراضي USBInjectAll)';

  @override
  String get selectUtbMap => 'حدد خريطة UTB';

  @override
  String get selectUtbMapHint =>
      'حدد UTBMap.kext الذي تم إنشاؤه بواسطة USBToolBox';

  @override
  String get releaseUsbOwnershipText =>
      'قم بتمكين الميزة \"UEFI->Quirks->ReleaseUsbOwnership\" لتحرير ملكية وحدة تحكم USB من البرامج الثابتة...';

  @override
  String get bootArgsCardTitle => 'وسيطات التمهيد:';

  @override
  String get bootArgsDefaultTip =>
      '(الوضع الافتراضي يتيح وضع -v المطول، قم بإلغاء تحديده إذا لم تكن هناك حاجة إليه)';

  @override
  String get debugCategory => 'تصحيح';

  @override
  String get amfiSipCategory => 'AMFI/SIP';

  @override
  String get igpuCategory => 'iGPU';

  @override
  String get dgpuCategory => 'dGPU';

  @override
  String get blackScreenFixCategory => 'إصلاحات الشاشة السوداء';

  @override
  String get above4gCategory => 'فوق فك تشفير 4G';

  @override
  String get touchpadFixCategory => 'إصلاحات لوحة اللمس';

  @override
  String get othersCategory => 'آحرون';

  @override
  String get optionalKextsCardTitle => 'نصوص اختيارية:';

  @override
  String get optionalKextsDefaultTip =>
      '(برامج التشغيل الاختيارية، لا تضيف إلا إذا لزم الأمر)';

  @override
  String get graphicsCategory => 'الرسومات';

  @override
  String get powerManagementCategory => 'إدارة الطاقة';

  @override
  String get sleepCategory => 'ينام';

  @override
  String get diskCategory => 'القرص';

  @override
  String get cpuCategory => 'وحدة المعالجة المركزية';

  @override
  String get amdPlatformCategory => 'منصة ايه ام دي';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'بطاقة SD';

  @override
  String get optionalSettingsCardTitle => 'الإعدادات الاختيارية:';

  @override
  String get optionalSettingsDefaultTip =>
      '(عادةً ما يتم الاحتفاظ بالإعدادات الافتراضية ما لم تكن هناك حاجة لذلك)';

  @override
  String get tabBrand => 'ماركة';

  @override
  String get tabSpecialMotherboard => 'اللوحة الأم الخاصة';

  @override
  String get tabSipSetting => 'إعدادات SIP';

  @override
  String get tabCpuRename => 'إعادة تسمية وحدة المعالجة المركزية';

  @override
  String get tabUiScale => 'مقياس واجهة المستخدم OpenCore';

  @override
  String get tabAcpiConfig => 'تكوين ACPI';

  @override
  String get tabBooterConfig => 'تكوين التمهيد';

  @override
  String get tabKernelConfig => 'تكوين النواة';

  @override
  String get tabUefiConfig => 'تكوين UEFI';

  @override
  String get processEfiTitle => 'عملية EFI';

  @override
  String get processEfiSubTitle =>
      '(إعادة معالجة EFI التي تم تكوينها بواسطة RapidEFI)';

  @override
  String get processEfiExpanderText =>
      'سيقوم EFI الذي تم تكوينه بواسطة أداة RapidEFI بإنشاء ملف يسمى configModel في مجلد إخراج EFI. قم باستيراد هذا الملف هنا لتحرير EFI الحالي مرة أخرى.\n\nتدعم هذه الميزة RapidEFI V3.0.0 والإصدارات الأحدث فقط.';

  @override
  String get clearCurrentConfig => 'مسح التكوين الحالي';

  @override
  String get importConfigModelFile => 'استيراد ملف configModel';

  @override
  String get importingConfigModel => 'جارٍ استيراد نموذج التكوين...';

  @override
  String get releaseToReimport => 'حرر الماوس لإعادة استيراد configModel';

  @override
  String get dragConfigModelArea =>
      'اسحب ملف configModel هنا\nأو انقر لتحديد الملف';

  @override
  String get importFailedToast =>
      'بيانات التكوين المستوردة غير صالحة، يرجى إعادة استيراد ملف configModel صالح.';

  @override
  String get changeEfiTitle => 'تغيير عنوان EFI';

  @override
  String get modifyCurrentEfiName => 'تعديل اسم EFI الحالي';

  @override
  String originalEfiName(String name) {
    return 'اسم EFI الأصلي: $name';
  }

  @override
  String get enterModifiedName => 'الرجاء إدخال الاسم المعدل';

  @override
  String get deleteRecord => 'حذف هذا السجل';

  @override
  String get exportThisEfi => 'تصدير هذا EFI';

  @override
  String get releaseToIdentifyHardware =>
      'قم بالتحرير لتحديد تقرير الأجهزة وجداول ACPI تلقائيًا';

  @override
  String get dragHardwareReportHere =>
      'اسحب إلى مجلد تقرير الأجهزة الذي تم تصديره بواسطة هذه الأداة\n(يحدد تلقائيًا دليل sysInfo.txt وACPI)';

  @override
  String get invalidHardwareReportToast =>
      'لم يتم التعرف على ملف تقرير الأجهزة الصالح';

  @override
  String optionalSuffix(String title) {
    return '$title (اختياري)';
  }

  @override
  String get notSelected => 'لم يتم التحديد';

  @override
  String get verifyingAdminPassword => 'جارٍ التحقق من كلمة مرور المسؤول...';

  @override
  String get hardwareReportAcpiMissing =>
      'تم استيراد تقرير الأجهزة الخارجية، ولكن لم يتم توفير دليل جدول ACPI، ولا يمكن تخصيص SSDT.';

  @override
  String get hwMemory => 'ذاكرة';

  @override
  String get hwCompatible => 'متناسق';

  @override
  String hwDeviceID(String id) {
    return 'معرف الجهاز: $id';
  }

  @override
  String hwType(String type) {
    return 'النوع: $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'السعة: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'الواجهة: $bus';
  }

  @override
  String hwModel(String model) {
    return 'الموديل: $model';
  }

  @override
  String get hwStorage => 'تخزين';

  @override
  String get hwStorageController => 'التخزين\nالمراقب المالي';

  @override
  String get hwBluetooth => 'بلوتوث';

  @override
  String get hwAudioCard => 'بطاقة الصوت';

  @override
  String get hwAudioLayoutId => 'معرف التخطيط:';

  @override
  String get hwNetworkCard => 'بطاقة الشبكة';

  @override
  String get hwMonitor => 'شاشة';

  @override
  String hwResolution(String res, String hz) {
    return 'القرار: $res @ $hz هرتز';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'وحدة معالجة الرسومات المتصلة: $gpu';
  }

  @override
  String get hwInput => 'مدخل';

  @override
  String get hwSDCard => 'بطاقة SD';

  @override
  String hwDevice(String dev) {
    return 'الجهاز: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'الرقم التسلسلي: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'مدمج: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'التمهيد الآمن: $status';
  }

  @override
  String hwCSM(String status) {
    return 'سي إس إم: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'شريط يمكن تغيير حجمه: $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'فك التشفير فوق 4G: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'أتشي: $status';
  }

  @override
  String get hwAHCIUnknown => 'آتشي: غير معروف';

  @override
  String get hwEnabled => 'ممكّن';

  @override
  String get hwDisabled => 'عاجز';

  @override
  String get hwCurrentBiosSettings => 'إعدادات BIOS الحالية';

  @override
  String get hwBiosNote =>
      'ملاحظات هاكنتوش:\n1. بالنسبة لجميع النصوص الحمراء، يرجى التأكد من تشغيلها أو إيقاف تشغيلها في BIOS لإبقائها باللون الأزرق.\n2. يشير النص الأزرق إلى الإعدادات المناسبة في معظم الحالات.\nالتمهيد الآمن: يجب تعطيله (وإلا فإن البرامج الثابتة غير الموقعة مثل أداة تحميل التشغيل OC لا يمكن أن تبدأ بشكل طبيعي).\nCSM (وحدة دعم التوافق): يوصى بتعطيلها في معظم الحالات (قد تحتاج أنظمة IGPU المحمولة من الجيل الرابع/الخامس من Intel، والأنظمة الأساسية X99، وبعض بطاقات الرسومات RX460 إلى تمكين CSM، وإلا فسيحدث تمزق في الشاشة أو فشل التمهيد).\nشريط يمكن تغيير حجمه: يوصى بتعطيله في BIOS (إذا لم يكن معطلاً، فتأكد من تعيين ResizeAppleGpuBars على 0 في Booter->Quirks لتجنب مشكلات التمهيد).\nفك التشفير فوق 4G: يوصى بتمكينه في BIOS، وإزالة المعلمة npci=0x2000 المحددة تلقائيًا. إذا لم يكن هذا الخيار موجودًا في BIOS، فنوصي بالتحقق من npci=0x2000 أو npci=0x3000. ملحوظة: BIOS فوق فك تشفير 4G ومعلمات npci متنافيتان!\nAHCI (وضع قرص SATA): يجب تمكينه (إذا لم يكن الأمر كذلك، فقد لا يتم التعرف على الأقراص أو يظهر رمز الحظر).';

  @override
  String hwBit(String arch) {
    return '$arch بت';
  }

  @override
  String get hwVirtualizationEnabled => 'المحاكاة الافتراضية: ممكّنة';

  @override
  String get hwVirtualizationDisabled => 'المحاكاة الافتراضية: معطل';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores النوى $threads الخيوط';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'مجموعة التعليمات: $simd';
  }

  @override
  String hwCore(String core) {
    return 'الأساسية: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'مطلوب معرف محاكاة ساخرة: $id';
  }

  @override
  String get hwGPU => 'GPU';

  @override
  String get hwIncompatible => 'غير متوافق';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'اللوحة الأم';

  @override
  String hwBrand(String brand) {
    return 'العلامة التجارية: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'شرائح: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'يدعم AppleALC معرفات التخطيط المتعددة. قد تؤثر المعرفات المختلفة على توفر الواجهة الصوتية.';

  @override
  String get manualNvidiaInfoText =>
      'سلسلة Nvidia GPU المدعومة هي كما يلي:\n• سلسلة Tesla (السلسلة 8000 - 300): مدعومة أصلاً حتى نظام التشغيل macOS High Sierra 10.13.x (قد تحتاج إلى إصلاح NVCAP)، وتتطلب الإصدارات الأعلى تصحيح OCLP (بدون دعم Metal)\nأمثلة: 8600GT، 9600GT، GT210، GT220، GT240، إلخ. قديمة جدًا، غير مستحسن!\n• سلسلة Kepler (السلسلة 600 - 800): مدعومة أصلاً حتى macOS Big Sur 11.x، وتتطلب الإصدارات الأعلى تصحيح OCLP (يدعم برنامج Metal، برنامج التشغيل الحقيقي)\nكبلر الأساسية: GT630، GT635، GT640، GTX650، GTX660، GTX680، GT710، GT720، GT730، GT740، GTX760، GTX Titan Z، GTX Titan Black، إلخ.\nبطاقات Kepler الأساسية الاحترافية: NVS 510، Quadro 410، Quadro K420، Quadro K600، Quadro K2000، إلخ.\n• سلسلة Fermi وMaxwell وPascal: برنامج تشغيل الويب يدعم ما يصل إلى macOS High Sierra 10.13.x. بالنسبة لنظام التشغيل macOS Big Sur 11.x والإصدارات الأحدث، تحقق من وسائط التمهيد أدناه وقم بتطبيق تصحيح OCLP (لا يوجد دعم معدني، برنامج تشغيل مزيف)\nسلسلة فيرمي: GT605، GT610، GT620، GT630، GT705، GT710، GT720، GT730، GT740، إلخ.\nسلسلة ماكسويل: GTX750، GTX750Ti، GTX950، GTX960، GTX970، GTX980، إلخ.\nسلسلة باسكال: GTX1050، GTX1060، GTX1070، GTX1080، إلخ.\nسلسلة Nvidia GPU غير المدعومة (السلسلة 11 وما فوق غير مدعومة):\n• 16 ~ 50 سلسلة: GTX1650، GTX1660، RTX 2050، RTX 2060، RTX 3050، RTX 3060، RTX 4050، RTX 4060، RTX 5060، RTX 5070، إلخ.';

  @override
  String get manualEdidInfoText =>
      '1. يُستخدم عادةً لإصلاح مشكلة الشاشة السوداء/عدم وجود إشارة في معالج Intel iGPU من الجيل السادس إلى العاشر (لا يتم التعامل مع dGPU EDID هنا). (الأعراض النموذجية: يعمل ضوء Caps Lock للوحة المفاتيح، لكن الشاشة تعرض شاشة سوداء بدون إشارة)\n2. بالنسبة للوحات الأم المكتبية من السلسلة 500 (H510/B560/H570/Q570/Z590/W580) باستخدام مخرج iGPU HDMI، يعد حقن شاشة حقيقية EDID أمرًا إلزاميًا، وإلا فمن المحتمل جدًا ظهور شاشة سوداء.\n3. كيفية الحصول على جهاز EDID:\nفي نظام التشغيل Windows، استخدم أداة RapidEFI أو أداة hdinfo للحصول على EDID (يمكنك استخدام أدوات خارجية، ولكن يجب عليك تنسيق EDID بنفسك):\n1). افتح RapidEFI v4.x أو أعلى، وانقر على \"تكوين EFI\" -> \"التكوين التلقائي لـ EFI\" -> \"التكوين التفصيلي\" (أو انقر فوق \"التكوين التفصيلي\" في حالة استخدام hdinfo).\n2). انتظر حتى ينتهي الاكتشاف التلقائي لمعلومات الأجهزة، ثم انقر فوق رمز EDID الموجود بجوار قسم المراقبة للحصول عليه (ستتم المطالبة بنسخه بنجاح إلى الحافظة).\n3). ارجع إلى هذه الصفحة والصق EDID في مربع الإدخال.\n4. قبل حقن EDID، يرجى التحقق من واجهة AAPL0X المستهدفة في \"التكوين المتقدم\"؛ إذا لم تكن متأكدًا، فاختر بناءً على خطة إصلاح HDMI الفعلية.\n5. عادةً ما تكون بيانات EDID 128 بايت (256 حرفًا سداسيًا عشريًا) أو 256 بايت (512 حرفًا سداسيًا عشريًا). إذا لم يكن كذلك، يرجى التحقق مرة أخرى قبل الإدخال!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'مخزن الإطارات المؤقت الحالي: $fb. إنشاء Framebuffer-conX-alldata لكل مستندات WhatGreen.';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'لا يدعم Framebuffer الحالي التوصيات المنظمة؛ احذف القيم الأولية الموجودة وأعد تحديد تكوين قاعدة iGPU المدعوم.';

  @override
  String get manualAddConnectorTooltip => 'إضافة تصحيح الموصل';

  @override
  String get manualConnectorLabel => 'موصل';

  @override
  String get manualIndexLabel => 'فِهرِس';

  @override
  String get manualBusIdLabel => 'معرف الحافلة';

  @override
  String get manualConnectorTypeLabel => 'يكتب';

  @override
  String manualOldConnector(String label) {
    return '$label (تراث)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'قم بحذف تصحيح con$index';
  }

  @override
  String get manualUnparseableValue => 'القيمة الأولية غير قابلة للتحليل';

  @override
  String get manualDeleteAndReadd =>
      'الرجاء حذف وإعادة إضافة تصحيحات الموصل الهيكلي';

  @override
  String get manualDeleteUnparseableTooltip =>
      'حذف تصحيح الموصل غير القابل للتحليل';

  @override
  String get manualBatteryDriver => 'سائق البطارية';

  @override
  String get manualKeyboardTouchpadDriver =>
      'برنامج تشغيل لوحة المفاتيح ولوحة اللمس';

  @override
  String get manualSensorDriver =>
      'برنامج تشغيل المستشعر (غير مستحسن إلا إذا لزم الأمر)';

  @override
  String get manualKernelTrimStrategy => 'استراتيجية SSD Trim';

  @override
  String get manualKernelPowerManagement => 'إدارة الطاقة';

  @override
  String get manualKernelDummyPowerManagement =>
      'تعطيل إدارة الطاقة (DummyPowerManagement)، وإصلاح مشكلات إعادة التشغيل الناتجة عن إدارة طاقة وحدة المعالجة المركزية (على سبيل المثال، الذعر في نواة AppleIntelCPUPowerManagement، أو التوقف عند شعار التمهيد، أو إعادة التشغيل مباشرة بعد الدخول إلى النظام). بالنسبة للجيل الرابع وما فوق، هذا هو البديل المفضل لـ NullCpuPowerManagement.kext';

  @override
  String get manualKernelQuirksDefault =>
      'Kernel - يوصى باستخدام Quirks للاحتفاظ بالوضع الافتراضي، إلا إذا كان ذلك ضروريًا أو إذا كنت تعرف معنى كل عنصر';

  @override
  String get manualUefiProvideConsoleGop =>
      'يتم تمكين ميزة ProvideConsoleGop بشكل افتراضي لإصلاح عدم ظهور واجهة مستخدم التمهيد OpenCore. إذا استمر عدم الظهور، فحاول إلغاء تحديد هذا الخيار';

  @override
  String get manualUefiDriversHfs =>
      'برامج تشغيل UEFI (إصلاح عدم ظهور واجهة مستخدم التمهيد OpenCore بسبب برنامج تشغيل HFS)';

  @override
  String get manualUefiOutputBootUI =>
      'UEFI - الإخراج (إصلاح عدم ظهور واجهة مستخدم تمهيد OpenCore)';

  @override
  String get manualSpecialMotherboardTip =>
      'اختياري - تحقق مما إذا كانت اللوحة الأم الخاصة بك مطابقة للوصف';

  @override
  String get manualCsrSettingTip =>
      'اختياري - يتم ضبطه وفقًا للاحتياجات، ويتم تعطيل SIP افتراضيًا';

  @override
  String get manualRenameCpuNameTip =>
      'اختياري - تخصيص اسم وحدة المعالجة المركزية';

  @override
  String get manualRenameCpuNameLabel =>
      'أدخل اسم وحدة المعالجة المركزية (اتركه فارغًا لإظهار اسم وحدة المعالجة المركزية لنظام التشغيل Windows):';

  @override
  String get manualRenameCpuNameHint => 'أدخل اسم وحدة المعالجة المركزية هنا';

  @override
  String get manualBrandTip =>
      'اختياري - تحقق مما إذا كانت العلامة التجارية مطابقة للوصف';

  @override
  String get manualBooterPlan1 => 'الخطة 1';

  @override
  String get manualBooterPlan2 => 'الخطة 2';

  @override
  String get manualBooterPlan3 => 'الخطة 3';

  @override
  String get manualBooterPlan4 => 'الخطة 4';

  @override
  String get manualBooterEbFix =>
      'عالق في إصلاح EB (اختياري - عادةً ما يكون الإعداد الافتراضي جيدًا):';

  @override
  String get manualAcpiPatch => 'ACPI - التصحيح';

  @override
  String get manualAcpiSsdt => 'ACPI - SSDT';

  @override
  String get manualBluetoothNvram => 'معلمات Bluetooth NVRAM:';

  @override
  String get manualUsbWifiGithub => 'قم بزيارة مستودع المؤلف chris1111';

  @override
  String get manualUsbWifiKexts =>
      'أضف Kexts المطلوبة لـ USB WiFi (ملاحظة: تحتاج أيضًا إلى تثبيت عميل Wireless USB Big Sur Adaptor على نظام التشغيل macOS. أعد التشغيل إذا لم يسري مفعوله)';

  @override
  String get manualWifiCardSupport =>
      'تدعم برامج التشغيل المتوفرة نظام التشغيل macOS Mojave 10.14 ~ macOS Sequoia 15! لاحظ أن مونتيري 12 وما فوق يتطلب تصحيح OCLP ليعمل بشكل صحيح!!!';

  @override
  String get manualWifiAtheros => 'اثيروس';

  @override
  String get manualWifiIntel => 'إنتل';

  @override
  String get manualWifiBrcm => 'برودكوم (برسم)';

  @override
  String get manualWifiBluetoothDriver => 'سائق بلوتوث';

  @override
  String get manualWifiItlwmPlan =>
      'الخطة 2، استخدم itlwm (يتطلب HeliPort)، برنامج تشغيل Intel WiFi. يتعارض مع الخطة 1، لا تستخدمهما معًا!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'الخطة 1، استخدم AirportItlwm، برنامج تشغيل Intel WiFi، ويضيف جميع نصوص WiFi (حجم كبير، اختر بعناية). يتعارض مع الخطة 2، لا تستخدمهما معًا!!!';

  @override
  String get manualWifiAddAllDrivers =>
      'إضافة كافة برامج تشغيل WiFi (حجم كبير، اختر بعناية)';

  @override
  String get manualLaptopMainly => '(أساسا لأجهزة الكمبيوتر المحمولة)';

  @override
  String get manualLaptopRelatedDrivers =>
      'برامج تشغيل الكمبيوتر المحمول ذات الصلة:';

  @override
  String get manualLaptopOtherFixes => 'إصلاحات أخرى';

  @override
  String get manualLaptopOtherFixesTip =>
      'إصلاحات أخرى (غير مستحسن إلا إذا لزم الأمر)';

  @override
  String get manualMotherboardSelectAll => 'حدد الكل / لا شيء';

  @override
  String get manualMotherboardDetails => 'تفاصيل';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total محدد)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return 'تم تطبيق $count التكوينات من $model';
  }

  @override
  String get manualMotherboardFromMbconfs => 'من مبكونفس';

  @override
  String get manualIgpuRemark => '⚠️ ملاحظة';

  @override
  String get manualIgpuSelectCpu => 'حدد وحدة المعالجة المركزية';

  @override
  String get manualIgpuLoadConfig =>
      'قم بتحميل تكوين iGPU من طراز وحدة المعالجة المركزية';

  @override
  String get manualIgpuSelectProperties => 'حدد الخصائص لتطبيقها';

  @override
  String get manualIgpuPresetScheme => 'مخطط محدد مسبقا';

  @override
  String get manualIgpuSelectGen => 'حدد الجيل';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'تم التحديد: $model $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'نموذج وحدة المعالجة المركزية';

  @override
  String get manualIgpuMatchOrNot => 'تحقق مما إذا كانت مطابقة';

  @override
  String get manualIgpuCpuGen => 'وحدة المعالجة المركزية الجنرال';

  @override
  String get manualIgpuByCpuModel => 'بواسطة نموذج وحدة المعالجة المركزية';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return 'تم تحميل $igpu تكوين iGPU من $model، وكتابة $count من الخصائص';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return 'من $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'حدد جين وحدة المعالجة المركزية وطرازها، ثم تحقق من الخصائص المراد تطبيقها';

  @override
  String get manualIgpuModel => 'نموذج';

  @override
  String get manualFakeGpuSelect => 'حدد GPU للمحاكاة الساخرة';

  @override
  String get settingsThemeColors => 'موضوع اللون';

  @override
  String get settingsThemeDefault => 'تقصير';

  @override
  String get sharedInvalidInput => 'إدخال غير صالح';

  @override
  String sharedRequiresHexChars(String length) {
    return 'يتطلب $length أحرف ست عشرية';
  }

  @override
  String get sharedExample73BF => 'مثال: 73BF';

  @override
  String get sharedTipsLengthMustMatch =>
      'يجب أن يتطابق طول النصائح مع الاختيارات';

  @override
  String sharedCpuInfo(String description) {
    return '[معلومات وحدة المعالجة المركزية]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'آخر إصدار لنظام التشغيل MacOS مدعوم محليًا: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[يوصى بتعطيل BIOS]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'إصدار macOS مدعوم بالتصحيح: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[يوصى بتمكين BIOS]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'إصدار macOS الأولي مدعوم محليًا: $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'مسار ACPI غير صالح';

  @override
  String get sharedFillAcpiPath => 'املأ مسار ACPI';

  @override
  String get sharedFillPciPath => 'املأ مسار PCI';

  @override
  String get sharedInvalidPciPath => 'مسار PCI غير صالح';

  @override
  String get sharedGetModifiedOclp => 'الحصول على OCLP المعدلة';

  @override
  String hwConfigModelGenerated(String details) {
    return 'تم إنشاء نموذج التكوين: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'فشل الحصول على معلومات الأجهزة: $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'كلمة مرور المسؤول غير صحيحة، لا يمكن تصدير جداول ACPI';

  @override
  String get hwNoNativeInfoExportable =>
      'لا تتوفر معلومات الأجهزة الأصلية للتصدير';

  @override
  String get hwOutputtingOpencore => 'إخراج OpenCore EFI...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'فشل تصدير جداول ACPI الأصلية: $error';
  }

  @override
  String get hwSsdtProcessFailed => 'فشلت عملية تخصيص SSDT.';

  @override
  String get hwConfigRuleRefactoring =>
      'إعادة هيكلة قواعد إنشاء ConfigModel للأجهزة';

  @override
  String get hwQueryUnsupported =>
      'النظام الأساسي الحالي لا يدعم الاستعلام عن معلومات الأجهزة';

  @override
  String hwPreparingSsdt(String items) {
    return 'التحضير لتخصيص SSDT: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'هذا تقرير عن أجهزة خارجية مستوردة، يرجى تحديث معلومات الأجهزة الأصلية أولاً قبل التصدير';

  @override
  String get hwRefreshingInfo => 'تحديث معلومات الأجهزة';

  @override
  String get hwSsdtProcessEnded => 'انتهت عملية تخصيص SSDT.';

  @override
  String get hwInfoUnsupported => 'معلومات الأجهزة غير مدعومة حاليًا';

  @override
  String get hwEfiWrittenExtracting =>
      'تمت كتابة EFI، والبدء في استخراج ACPI وتخصيص SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'فشل تكوين EFI: $error';
  }

  @override
  String get hwReportFolderCleanFailed => 'فشل في تنظيف مجلد تقرير الأجهزة';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'فشل في تنظيف مجلد تقرير الأجهزة: $error';
  }

  @override
  String get hwExportingNativeReport => 'جارٍ تصدير تقرير الأجهزة الأصلية...';

  @override
  String get hwAdminAuthCanceled =>
      'تم إلغاء ترخيص المسؤول، ولم يتم تصدير جداول ACPI';

  @override
  String get hwImportedNoAcpiDir =>
      'تم استيراد تقرير الأجهزة الخارجية ولكن لم يتم توفير دليل جداول ACPI، وتم تعطيل تخصيص SSDT.';

  @override
  String get hwExportAcpiUnsupported =>
      'النظام الأساسي الحالي لا يدعم تصدير جداول ACPI';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'تم تصدير تقرير الأجهزة إلى $reportDirectory، $msg';
  }

  @override
  String get hwInfoNotJson => 'ملف معلومات الأجهزة ليس كائن JSON';

  @override
  String get hwUnsupported => 'غير مدعوم';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'فشل في تنظيف الدليل المؤقت لجداول ACPI: $error';
  }

  @override
  String get hwEfiConfigDone => 'اكتمل تكوين EFI.';

  @override
  String hwEfiConfigError(String error) {
    return 'خطأ في تكوين EFI: $error';
  }

  @override
  String get hwNativeAcpiExportFailed => 'فشل تصدير جداول ACPI الأصلية';

  @override
  String get hwAcpiToolNotReady => 'أداة تصدير ACPI ليست جاهزة';

  @override
  String get hwFailed => 'فشل';

  @override
  String hwImportReportFailed(String e) {
    return 'فشل استيراد تقرير الأجهزة: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'اكتمل تصدير جداول ACPI الأصلية: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'فشل تصدير جداول ACPI: لم يتم العثور على جداول ACPI صالحة';

  @override
  String get hwUsingOriginalSsdt =>
      'استخدام EFI SSDT الأصلي، وتخطي تخصيص SSDT.';

  @override
  String get hwWaitingRefresh => 'في انتظار تحديث معلومات الأجهزة';

  @override
  String get hwInfoLoaded => 'تم تحميل معلومات الأجهزة بنجاح';

  @override
  String hwAcpiExportedTo(String path) {
    return 'تم تصدير جداول ACPI إلى $path';
  }

  @override
  String get hwStartConfigEfi => 'بدء تكوين EFI...';

  @override
  String get hwInfoLoadFailed => 'فشل في تحميل معلومات الأجهزة';

  @override
  String get hwCache => 'مخبأ';

  @override
  String get hwInfoImportDone => 'اكتمل استيراد معلومات الأجهزة';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'تم تصدير تقرير الأجهزة وجداول ACPI إلى $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid =>
      'دليل جداول ACPI غير صالح، وتخصيص SSDT غير متوفر';

  @override
  String get hwExportingNativeAcpi => 'جارٍ تصدير جداول ACPI الأصلية...';

  @override
  String get hwGeneratingConfigModel =>
      'جارٍ إنشاء ConfigModel استنادًا إلى معلومات الأجهزة...';

  @override
  String get hwInfoImported => 'تم استيراد معلومات الأجهزة';

  @override
  String get hwAcpiExportFailedOrUnsup => 'فشل تصدير جداول ACPI أو غير مدعوم';

  @override
  String get hwReportFolderCreateFailed => 'فشل في إنشاء مجلد تقرير الأجهزة';

  @override
  String get hwNoAdminPwd =>
      'لم يتم إدخال كلمة مرور المسؤول، ولا يمكن تصدير جداول ACPI';

  @override
  String get hwEfiConfigFailedCheck =>
      'فشل تكوين EFI، يرجى التحقق من مسار الإخراج أو السجلات.';

  @override
  String get hwLoadingInfo => 'جارٍ تحميل معلومات الأجهزة';

  @override
  String get hwDone => 'منتهي';

  @override
  String get hwAcpiExportFailedProcess =>
      'فشل تصدير جداول ACPI: فشل تنفيذ عملية التصدير';

  @override
  String get hwIgpuType => 'iGPU';

  @override
  String get hwGpuCompatible => 'متناسق';

  @override
  String get hwGpuIncompatibleNoDisplay =>
      'غير متوافق، ولا يوجد اتصال مباشر بالشاشة';

  @override
  String get hwGpuIncompatible => 'غير متوافق';

  @override
  String get hwLaptop => 'كمبيوتر محمول';

  @override
  String get hwGpuLoadingCompat => 'تحميل التوافق';

  @override
  String get hwGpuLimitedCompat => 'توافق محدود';

  @override
  String get hwClickToCopy => 'انقر للنسخ';

  @override
  String get hwCopiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get linkCantOpen => 'لا يمكن فتح الرابط';

  @override
  String get clickToCopy => 'انقر للنسخ';

  @override
  String get copiedToClipboard => 'تم النسخ إلى الحافظة';

  @override
  String get gpuCard => 'GPU';

  @override
  String gpuDeviceId(String id) {
    return 'معرف الجهاز: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'الأساسية: $codename';
  }

  @override
  String get gpuCompatible => 'متناسق';

  @override
  String get gpuIncompatible => 'غير متوافق';

  @override
  String get gpuIncompatibleNoDisplay => 'غير متوافق، لا يوجد عرض مباشر';

  @override
  String get gpuLimitedCompat => 'توافق محدود';

  @override
  String get gpuLoadingCompat => 'تحميل التوافق';

  @override
  String gpuSpoofId(String id) {
    return 'مطلوب معرف محاكاة ساخرة: $id';
  }

  @override
  String get bootArgVerbose =>
      'تمكين الوضع المطول -v (يظهر إخراج التصحيح أثناء التمهيد، وهو مفيد لتصحيح مشكلات بدء التشغيل)';

  @override
  String get bootArgKeepsyms =>
      'اطبع رموز تعطل kernel للمساعدة في تشخيص المشكلات. تستخدم عادة مع التصحيح = 0x100. يوصى بشدة أثناء تصحيح أخطاء التمهيد الأولي.';

  @override
  String get bootArgDebug0x100 =>
      'منع إعادة التشغيل التلقائي في حالة ذعر kernel، مما يسمح لك بعرض سجلات الأعطال. يوصى بشدة أثناء تصحيح أخطاء التمهيد الأولي.';

  @override
  String get bootArgWatchdog0 =>
      'قم بتعطيل المراقبة لمنع عمليات إعادة التشغيل غير المقصودة التي تسبب الذعر أثناء تصحيح أخطاء التمهيد.';

  @override
  String get bootArgSlide0 =>
      'قم بتعطيل KASLR لإصلاح تعارضات الذاكرة التي تسبب ذعرًا مبكرًا في نواة التمهيد. تستخدم لتصحيح الأخطاء.';

  @override
  String get bootArgNoCompatCheck =>
      'تخطي التحقق من توافق النموذج أثناء التمهيد لتجنب الرمز المحظور. ملاحظة: لا يتجاوز فحص نموذج المثبت.';

  @override
  String get bootArgCpus1 =>
      'تمكين وحدة معالجة مركزية واحدة فقط (لوحدات المعالجة المركزية للخادم متعددة النواة X58/X79/X99/X299 التي تعاني من مشكلات ذعر kernel أثناء تصحيح أخطاء التثبيت المبكر).';

  @override
  String get bootArgBetaFix =>
      'أصلح المشكلات التي قد تظهر في أحدث إصدار من macOS (الإصدار التجريبي بشكل أساسي)، مثل الصوت والبلوتوث وشذوذات تردد وحدة المعالجة المركزية. يوصى به بشدة في الإصدارات التجريبية.';

  @override
  String get bootArgAmfi0x80 =>
      'قم بتعطيل AMFI لوحدات معالجة الرسومات الأحدث (HD4000+، GT710+ Kepler) أو عند تصحيح برامج تشغيل Wi-Fi. لا تستخدم مع amfi_get_out_of_my_way=0x1. فعال فقط مع تعطيل SIP.';

  @override
  String get bootArgAmfiGetOut =>
      'قم بتعطيل AMFI لوحدات معالجة الرسوميات الأقدم (على سبيل المثال، GT240) أو عند تصحيح برامج تشغيل Wi-Fi. لا تستخدم مع amfi=0x80. فعال فقط مع تعطيل SIP.';

  @override
  String get bootArgIpcControl =>
      'إصلاح أعطال التطبيق (على سبيل المثال، Baidu Netdisk) بعد تعطيل AMFI. فعال فقط مع تعطيل SIP.';

  @override
  String get bootArgAmfiPassBeta =>
      'تأكد من أن AMFIPass.kext يعمل في أحدث إصدار من نظام التشغيل macOS Tahoe 26 لمواصلة تجاوز فحوصات أمان AMFI.';

  @override
  String get bootArgRevpatch =>
      'أصلح مشكلات تحديث macOS OTA بعد تعطيل SIP أو SecureBootModel، وأصلح عرض اسم وحدة المعالجة المركزية المخصص.';

  @override
  String get bootArgDisableGfxFirmware =>
      'قم بتعطيل تحميل برنامج Apple Graphics Firmware لتجنب توقفه أثناء بدء التشغيل بسبب فشل تحميل البرنامج الثابت (Intel iGPU فقط).';

  @override
  String get bootArgWegNoIgpu =>
      'قم بتعطيل Intel iGPU (يوصى به عندما لا يمكن تشغيل iGPU أو عندما لا يدعم تسريع الأجهزة).';

  @override
  String get bootArgIgfxVesa =>
      'قم بتعطيل تسريع Intel iGPU (يُستخدم عندما لا يبدأ النظام بعد تطبيق تصحيح OCLP iGPU، تصحيح الأخطاء فقط).';

  @override
  String get bootArgIgfxRpsc =>
      'إصلاح وتحسين أداء Intel iGPU (على سبيل المثال، إصلاح مشكلات ترميز 4K HEVC والدقة وFPS).';

  @override
  String get bootArgIgfxMpc =>
      'أصلح مشكلات دقة iGPU عن طريق فرض تجاوز الحد الأقصى لساعة البكسل، وإزالة حدود الدقة الافتراضية/معدل التحديث لنظام التشغيل MacOS.';

  @override
  String get bootArgGfxfw2 =>
      'قم بتمكين التحميل الكامل للبرامج الثابتة لـ iGPU لتحسين الاستخدام والأداء. قد يتسبب في فشل التمهيد - استخدمه بحذر.';

  @override
  String get bootArgCdclk =>
      'قم بإصلاح ذعر kernel على Ice Lake من الجيل العاشر نظرًا لأن تردد Core Display Clock (CDCLK) منخفض جدًا.';

  @override
  String get bootArgIgfxdbeo =>
      'قم بإصلاح ذعر kernel على Ice Lake من الجيل العاشر حيث يقوم برنامج التشغيل بحساب حجم ذاكرة DVMT المخصص مسبقًا بشكل غير صحيح.';

  @override
  String get bootArgIceLakeDisplay =>
      'قم بإصلاح تلف العرض الذي يستمر من 7 إلى 15 ثانية على أجهزة الكمبيوتر المحمولة Ice Lake من الجيل العاشر عند التمهيد.';

  @override
  String get bootArgIgfxNoTelemetry =>
      'تعطيل تحميل وحدة القياس عن بعد لـ iGPU أثناء التمهيد. قد تتوقف بعض أجهزة الكمبيوتر المحمولة (خاصة أجهزة Chromebook) عن التشغيل عند تحميل هذه الوحدة.';

  @override
  String get bootArgWegNoEgpu =>
      'قم بتعطيل وحدة معالجة الرسومات المنفصلة (يوصى به عندما لا يمكن تشغيل dGPU على أجهزة الكمبيوتر المحمولة المزودة بوحدة معالجة رسومات مزدوجة من Intel - عادةً NVIDIA).';

  @override
  String get bootArgNvDisable =>
      'قم بتعطيل برنامج تشغيل NVIDIA (فقط لتصحيح أخطاء وحدات معالجة الرسومات NVIDIA غير المتوافقة).';

  @override
  String get bootArgUnfairGva =>
      'إصلاح دعم DRM للأجهزة على وحدات معالجة الرسومات AMD (يمكّن المحتوى المحمي بموجب إدارة الحقوق الرقمية مثل البث على وحدات معالجة الرسومات AMD المدعومة).';

  @override
  String get bootArgRadpg15 =>
      'إصلاح تلف العرض (شاشة مشوشة/صفراء) على وحدات معالجة الرسومات AMD الأقدم (HD7750، HD7850 مع مراكز GCN مثل HD77XX/HD78XX/HD79XX).';

  @override
  String get bootArgAmdNoAccel =>
      'قم بتعطيل تسريع ATI/AMD GPU (استخدمه عندما لا يبدأ النظام بعد تصحيح OCLP GPU، تصحيح الأخطاء فقط).';

  @override
  String get bootArgRaddvi =>
      'إصلاح عرض إخراج DVI على وحدات معالجة الرسومات AMD الأقدم (290X، 370، وما إلى ذلك).';

  @override
  String get bootArgRadcodec =>
      'إصلاح دعم تشفير فيديو أجهزة VDA لوحدات معالجة الرسومات AMD غير المدعومة رسميًا (على سبيل المثال، RX550 Lexa core).';

  @override
  String get bootArgNgfxFermi =>
      'أصلح مشكلات برنامج تشغيل وحدة معالجة الرسومات لبطاقات NVIDIA Fermi/Maxwell/Pascal الأقدم (GT610 وGTX750 وGTX960 وGTX1050) على نظام التشغيل macOS Big Sur 11+. يجب تطبيق تصحيح OCLP GPU بعد الدخول إلى النظام! كيبلر لا يحتاج إلى هذا.';

  @override
  String get bootArgApplbkl3 =>
      'تمكين التحكم في الإضاءة الخلفية PWM لوحدات معالجة الرسومات من سلسلة AMD Radeon RX 5000.';

  @override
  String get bootArgAgdpmodIgnore =>
      'قم بإصلاح مشكلات الشاشة السوداء أو العرض في بعض وحدات معالجة الرسومات عن طريق تجاهل قيود AppleGraphicsDevicePolicy.kext تمامًا. استخدم مع WhatGreen.kext.';

  @override
  String get bootArgAgdpmodPikera =>
      'قم بإصلاح الشاشة السوداء عند التمهيد لوحدات معالجة الرسومات AMD Navi RX5XXX/RX6XXX (RX5500، RX5600، RX5700، RX6600، RX6800، RX6900، وما إلى ذلك) عن طريق استبدال معرف اللوحة بـ board-ix. استخدم مع WhatGreen.kext.';

  @override
  String get bootArgAgdpmodVit9696 =>
      'قم بإصلاح الشاشة السوداء بعد وضع السكون/الاستيقاظ على وحدات معالجة الرسومات RX470/RX570 عن طريق تعطيل التحقق من معرف اللوحة في AppleGraphicsDevicePolicy. استخدم مع WhatGreen.kext.';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'إصلاح الشاشة السوداء على Ventura+ لوحدات معالجة الرسوميات AMD RX5XX/RX5XXX/RX6XXX المدعومة محليًا على الجيل الثالث من Intel أو الأقدم. قم بتطبيق تصحيح OCLP GPU بعد التشغيل، ثم قم بإزالة هذه الوسيطة.';

  @override
  String get bootArgBrcmfx =>
      'قم بإصلاح السرعة البطيئة لبعض بطاقات Broadcom Wi-Fi عن طريق تغيير رمز البلد إلى HK. يمكنك أيضًا التحسين عن طريق تغيير قناة جهاز التوجيه.';

  @override
  String get bootArgVsmcgen =>
      'إصلاح مشكلة تعليق التعليمات البرمجية ramrod وفساد محاكي SMC.';

  @override
  String get bootArgSwdPanic =>
      'منع إعادة تشغيل الجهاز بعد وضع السكون للمساعدة في جمع سجلات أعطال kernel وتصحيح مشكلات السكون.';

  @override
  String get bootArgCtrsmt =>
      'تحسين الكشف عن الهيكل والجدولة لوحدات المعالجة المركزية Intel 12th gen+ hybrid (P+E). مكاسب الأداء غير مضمونة - قم بالاختبار قبل التمكين. يتطلب CpuTopologyRebuild.kext.';

  @override
  String get bootArgDarkwake0 =>
      'قم بتعطيل وضع Darkwake تمامًا واستخدم وضع السكون التقليدي. يعمل بشكل أساسي على إصلاح مشكلات تنبيه الشاشة السوداء ومشكلات التنبيه التلقائي.';

  @override
  String get bootArgForceRenderStandby =>
      'قم بتعطيل وضع الاستعداد لـ iGPU RC6 لإصلاح ذعر NVMe kernel الناجم عن iGPU RC6 أثناء النوم.';

  @override
  String get bootArgI2cForcePolling =>
      'فرض لوحة التتبع I2C على استخدام وضع الاستقصاء بدلاً من الوضع القائم على المقاطعة (يتطلب وضع المقاطعة عادةً تخصيص SSDT).';

  @override
  String get kextLiluDesc =>
      'مطلوب برنامج تشغيل أساسي يوفر إمكانية التوسعة والتوافق لنظام التشغيل macOS. تعتمد جميع النصوص من نوع البرنامج المساعد عليها.';

  @override
  String get kextVirtualSMCDesc =>
      'مطلوب محاكي SMC. يحاكي Apple SMC على أجهزة غير تابعة لشركة Apple، مما يوفر أجهزة استشعار والتحكم في المروحة وإدارة الطاقة. لا يمكن تشغيل macOS بدون هذا.';

  @override
  String get kextWhateverGreenDesc =>
      'دعم برنامج تشغيل الرسومات GPU. يوصى به بشدة لمعظم المستخدمين. قد يتم إلغاء تحديد MacPro7,1 المزود بوحدات AMD dGPU (RX460، RX560+). عادةً ما يتعارض مع NootRX/NootedRed — لا تقم بالتحديد معًا أثناء التثبيت.';

  @override
  String get kextAppleALCDesc =>
      'استخدم AppleALC لمحاكاة برنامج ترميز الصوت المدمج (حل أكثر اكتمالاً، خيار مفضل).';

  @override
  String get kextVoodooHDADesc =>
      'برنامج تشغيل الصوت العالمي VoodooHDA (يتم تحميله أثناء التمهيد، ويدعم فقط نظام التشغيل macOS Big Sur 11.2.3 والإصدارات الأقدم؛ وتتطلب الإصدارات الأعلى إدخاله في مجلد ملحق kernel للنظام).';

  @override
  String get kextUSBInjectAllDesc =>
      'حل حقن USB عام، وهو الخيار الافتراضي عندما لا يتم تخصيص USB.';

  @override
  String get kextUSBToolBoxDesc =>
      'حل USBToolBox، يُستخدم عادةً مع UTBMap.kext المخصص.';

  @override
  String get kextBatteryV1Desc =>
      'حل برنامج تشغيل البطارية 1 (لأجهزة الكمبيوتر المحمولة المزودة بمعالج Intel من الجيل الثالث أو الأنظمة الأساسية الأقدم).';

  @override
  String get kextBatteryV2Desc =>
      'حل برنامج تشغيل البطارية 2 (لأجهزة الكمبيوتر المحمولة المزودة بمعالج Intel من الجيل الثالث أو الأنظمة الأساسية الأحدث).';

  @override
  String get kextAmbientLightDesc =>
      'مستشعر الإضاءة المحيطة (سطوع الشاشة التلقائي). لا تستخدمه إذا لم يكن لديك جهاز استشعار للإضاءة المحيطة، لأنه قد يسبب مشاكل.';

  @override
  String get kextAsusNBFnKeysDesc =>
      'التحكم في مروحة الكمبيوتر المحمول من ASUS وإدارة الطاقة وتحسينات أخرى لمستشعر النظام. لا ينصح به للأجهزة غير التابعة لشركة ASUS.';

  @override
  String get kextLenovoDesc =>
      'التحكم في مروحة الكمبيوتر المحمول من Lenovo وإدارة الطاقة وتحسينات أخرى لمستشعر النظام. لا يُنصح باستخدامه مع الأجهزة غير التابعة لشركة Lenovo.';

  @override
  String get kextDellDesc =>
      'مستشعر مخصص للكمبيوتر المحمول من Dell لمراقبة المروحة والتحكم فيها بشكل أكثر دقة. لا يُنصح باستخدامه مع الأجهزة غير التابعة لشركة Dell.';

  @override
  String get kextNootRXDesc =>
      'دعم وحدات RX6XXX dGPU غير المدعومة رسميًا (RX6700، RX6750XT، RX6750GRE، وما إلى ذلك). يتعارض مع WhatGreen - لا يتم التحديد معًا أثناء التثبيت.';

  @override
  String get kextBatteryFixDesc =>
      'إصلاح قراءة البطارية، وإصلاح بعض مشكلات عرض البطارية.';

  @override
  String get kextNVMeFixDesc =>
      'تحسين التوافق مع محركات أقراص SSD غير التابعة لشركة Apple NVMe وتقليل استهلاك الطاقة في وضع الخمول. قد تستمر محركات أقراص NVMe غير المتوافقة في التعطل. قد تسبب محركات أقراص NVMe المتوافقة حالة من الذعر مع برنامج التشغيل هذا - استخدمه بحذر.';

  @override
  String get kextFeatureUnlockDesc =>
      'قم بإلغاء قفل Universal Control وSidecar والميزات الأخرى على طرز Mac غير المدعومة.';

  @override
  String get kextHibernationFixDesc =>
      'إصلاح المشاكل الشائعة المتعلقة بالإسبات والنوم.';

  @override
  String get kextHoRNDIS =>
      'اسمح لنظام التشغيل macOS باستخدام التوصيل بشبكة جهاز Android عبر USB.';

  @override
  String get kextCPUFriendDesc =>
      'برنامج تشغيل قياس تردد وحدة المعالجة المركزية، يوفر بشكل أساسي دعمًا لقياس التردد لنظام MacPro7,1 على الجيل الحادي عشر والأنظمة الأساسية الأحدث.';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'برنامج تشغيل بيانات مصاحب لـ CPUFriend، يوفر بيانات قياس تردد وحدة المعالجة المركزية لنماذج أجهزة محددة.';

  @override
  String get kextAppleIGHDA =>
      'إصلاح مشكلات الصوت Intel iGPU HDMI في بعض الأنظمة.';

  @override
  String get kextNoTouchID =>
      'إصلاح عدم القدرة على تسجيل الدخول إلى Apple ID وiCloud، عادةً لأجهزة الكمبيوتر المحمولة التي لا تحتوي على بطاقة شبكة سلكية محلية.';

  @override
  String get kextAppleRTCDesc =>
      'قم بإصلاح التعارضات بين macOS AppleRTC وPC BIOS على الأنظمة الأساسية الأحدث، على سبيل المثال، RTC الذي يسبب توقفًا أو إعادة تشغيل مفاجئة أو تنبيهًا فوريًا من وضع السكون.';

  @override
  String get kextPS2KBMouseDesc =>
      'برنامج تشغيل لوحة المفاتيح والماوس PS/2 (لللوحات الأم لسطح المكتب المزودة بمنافذ PS/2 المستديرة).';

  @override
  String get kextPS2KeyboardDesc =>
      'برنامج تشغيل لوحة المفاتيح PS/2 (لللوحات الأم لسطح المكتب مع منافذ لوحة المفاتيح المستديرة PS/2).';

  @override
  String get kextPS2MouseDesc =>
      'برنامج تشغيل الماوس PS/2 (لللوحات الأم لسطح المكتب مع منافذ الماوس المستديرة PS/2).';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'لوحة مفاتيح Microsoft Surface المخصصة وبرنامج تشغيل لوحة التتبع.';

  @override
  String get kextBrightnessKeysDesc => 'إصلاح مفتاح اختصار السطوع.';

  @override
  String get kextGenericUSBXHCIDesc =>
      'إصلاح توافق وحدة التحكم USB 3.0 للأنظمة الأساسية القديمة أو AMD.';

  @override
  String get kextXLNCUSBFixDesc =>
      'إصلاح مشكلات توافق وحدة تحكم USB على منصات AMD الأقدم (FM1/FM2/AM3).';

  @override
  String get kextRealtekCardReaderDesc =>
      'برنامج تشغيل قارئ بطاقة Realtek SD (استخدمه مع RealtekCardReaderFriend).';

  @override
  String get kextRadeonSensorDesc =>
      'قم بتحسين أداء وحدة معالجة الرسومات AMD Radeon، ولكن قد يتسبب في تعطل النظام أو فشل التمهيد في بعض السيناريوهات - استخدمه بحذر.';

  @override
  String get hwStatusIdle => 'في انتظار تحديث معلومات الأجهزة';

  @override
  String get hwStatusLoading => 'جارٍ تحميل معلومات الأجهزة';

  @override
  String get hwStatusRefreshing => 'تحديث معلومات الأجهزة';

  @override
  String get hwStatusComplete => 'تم تحميل معلومات الأجهزة';

  @override
  String get hwStatusFailed => 'فشل في تحميل معلومات الأجهزة';

  @override
  String get hwStatusUnsupported => 'معلومات الأجهزة غير مدعومة';

  @override
  String get hwStatusImported => 'تم استيراد معلومات الأجهزة';

  @override
  String get hwPlatformUnsupported =>
      'النظام الأساسي الحالي لا يدعم الاستعلام عن معلومات الأجهزة';

  @override
  String hwFetchFailed(String error) {
    return 'فشل في جلب معلومات الأجهزة: $error';
  }

  @override
  String get hwExportWarning =>
      'هذا تقرير مستورد. يرجى تحديث معلومات الأجهزة المحلية قبل التصدير.';

  @override
  String get hwNoLocalInfo => 'لا تتوفر معلومات الأجهزة المحلية للتصدير';

  @override
  String get hwFolderCleanFailed => 'فشل في تنظيف مجلد تقرير الأجهزة';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'فشل في تنظيف مجلد تقرير الأجهزة: $error';
  }

  @override
  String get hwFolderCreateFailed => 'فشل في إنشاء مجلد تقرير الأجهزة';

  @override
  String get hwExporting => 'جارٍ تصدير تقرير الأجهزة المحلية...';

  @override
  String hwExportSuccess(String path) {
    return 'تم تصدير تقرير الأجهزة وجداول ACPI إلى $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'تم تصدير تقرير الأجهزة إلى $path، $error';
  }

  @override
  String get hwAcpiExporting => 'جارٍ تصدير جداول ACPI المحلية...';

  @override
  String get hwAcpiExportFailed => 'فشل تصدير جداول ACPI المحلية';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'تصدير جداول ACPI المحلية: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'فشل تصدير جداول ACPI المحلية: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'النظام الأساسي الحالي لا يدعم تصدير جداول ACPI';

  @override
  String get hwAcpiAuthCancelled =>
      'تم إلغاء ترخيص المشرف. لم يتم تصدير جداول ACPI.';

  @override
  String get hwAcpiNoPassword =>
      'لم يتم توفير كلمة مرور المسؤول. لا يمكن تصدير جداول ACPI.';

  @override
  String get hwAcpiWrongPassword =>
      'كلمة مرور المسؤول غير صحيحة. لا يمكن تصدير جداول ACPI.';

  @override
  String get hwImportNotJson => 'ملف معلومات الأجهزة ليس كائن JSON';

  @override
  String get hwImportSuccess => 'تم استيراد معلومات الأجهزة';

  @override
  String get hwImportAcpiInvalid =>
      'دليل جداول ACPI غير صالح. SSDT المخصص غير متوفر.';

  @override
  String hwImportFailed(String error) {
    return 'فشل استيراد تقرير الأجهزة: $error';
  }

  @override
  String get hwConfigStart => 'بدء تكوين EFI...';

  @override
  String get hwConfigGenerating =>
      'جارٍ إنشاء ConfigModel من معلومات الأجهزة...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'إعداد SSDT المخصص: $items';
  }

  @override
  String get hwConfigSsdtSkip => 'باستخدام EFI SSDT الأصلي. تخطي SSDT المخصص.';

  @override
  String get hwConfigSsdtDisabled =>
      'تقرير الأجهزة الخارجية المستوردة بدون دليل جداول ACPI. تم تعطيل SSDT المخصص.';

  @override
  String get hwConfigExporting => 'تصدير OpenCore EFI...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'فشل تكوين EFI: $error';
  }

  @override
  String get hwConfigRebuilding =>
      'تتم إعادة هيكلة قواعد ConfigModel التي يتم إنشاؤها تلقائيًا للأجهزة';

  @override
  String get cpuUnknown => 'مجهول';

  @override
  String get platDesktop => 'سطح المكتب';

  @override
  String get platLaptop => 'كمبيوتر محمول';

  @override
  String get platMini => 'جهاز كمبيوتر صغير';

  @override
  String get platServer => 'الخادم';

  @override
  String get csrEnabled =>
      'تمكين SIP لتعزيز أمان النظام. يوصى به في حالة عدم استخدام OCLP لتصحيحات GPU/WiFi.';

  @override
  String get csrPartial => 'قم بتعطيل خيار SIP رقم 1';

  @override
  String get csrPartialDesc =>
      'قم بتعطيل SIP جزئيًا. يوصى به لـ Big Sur أو الأحدث عند استخدام OCLP لتصحيحات GPU/WiFi.';

  @override
  String get csrFully => 'قم بتعطيل خيار SIP 2';

  @override
  String get csrFullyDesc =>
      'تعطيل SIP بالكامل. يُفضل لـ Big Sur أو الأحدث عند استخدام OCLP لتصحيحات GPU/WiFi.';

  @override
  String get uiScaleAuto =>
      'التكيف التلقائي: ضبط مقياس واجهة المستخدم لتمهيد OpenCore تلقائيًا بناءً على دقة العرض.';

  @override
  String get uiScaleStandard =>
      'الدقة القياسية: مناسبة لشاشات العرض 720p، 1080p، 1440p.';

  @override
  String get uiScaleHigh =>
      'دقة عالية: مناسبة لشاشات العرض بدقة 4K/5K (تعمل على إصلاح عناصر واجهة المستخدم الصغيرة في قائمة تمهيد OpenCore).';

  @override
  String get procDefault => 'لا تقم بتعديل نوع المعالج';

  @override
  String get procKeep =>
      'حافظ على عرض نوع وحدة المعالجة المركزية الافتراضية للنظام';

  @override
  String get brandAsus => 'آسوس';

  @override
  String get brandGigabyte => 'جيجابايت';

  @override
  String get brandAsrock => 'آسروك';

  @override
  String get brandMsi => 'إم إس آي';

  @override
  String get brandDell => 'ديل';

  @override
  String get brandLenovo => 'لينوفو';

  @override
  String get brandSony => 'فايو';

  @override
  String get brandHp => 'HP';

  @override
  String get brandGoogle => 'جهاز Chromebook';

  @override
  String get brandMicrosoft => 'مايكروسوفت سيرفس';

  @override
  String get mbNormal => 'اللوحة الأم القياسية';

  @override
  String get mbOemUsb =>
      'تواجه بعض اللوحات الأم الخاصة بشركة OEM مشكلات في إصدار ملكية USB: فشل عملية تسليم EHCI';

  @override
  String get navAppGuide => 'دليل التطبيق';

  @override
  String get appGuideTitle => 'دليل مستخدم RapidEFI';

  @override
  String get logMsg001 => '=> فشل في العثور على LPC(B)! تم إنهاء العملية!';

  @override
  String get logMsg002 =>
      'لم يتم العثور على DSDT صالح! الرجاء تحديد ملف DSDT أو دليل ملف يحتوي على DSDT أولاً!';

  @override
  String get logMsg003 =>
      'فشل إعداد أداة iasl! يرجى تحديث أو استخدام أداة iasl المضمنة أولاً!';

  @override
  String get logMsg004 => 'لم يتم العثور على ملف .aml صالح!\\n';

  @override
  String get logMsg005 =>
      'لم يتم العثور على DSDT صالح! الرجاء تحديد ملف DSDT أو دليل ملف يحتوي على DSDT أولاً!';

  @override
  String get logMsg006 =>
      'تم اكتشاف ملفات DSDT متعددة حاليًا ولا يُسمح إلا بمعالجة ملف واحد فقط في كل مرة. الرجاء الاحتفاظ بملف DSDT واحد وإزالة الملفات الأخرى والمحاولة مرة أخرى.\\n';

  @override
  String get logMsg007 =>
      'ملف DSDT غير صالح! الرجاء إعادة تحديد ملف DSDT صالح!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 فشل التفكيك!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'نتيجة التجميع: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'حدث خطأ أثناء معالجة نوع IntObj: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'خطأ في معالجة نوع MethodObj: $arg0';
  }

  @override
  String get logMsg012 => 'لم يتم العثور على معلومات IRQ!';

  @override
  String get logMsg013 =>
      'الخيارات الحالية أو طلبات المقاطعة المخصصة فارغة! غير قادر على إنشاء تصحيح IRQ!';

  @override
  String get logMsg014 => '=> لم يتم العثور على معلومات IRQ!';

  @override
  String get logMsg015 =>
      'تنسيق قائمة IRQ المخصصة غير صحيح! ! ! افصل بين الأجهزة بمسافات وأسئلة المقاطعة (IRQs) بفواصل! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> _خطأ في تحليل HID: $arg0';
  }

  @override
  String get logMsg017 => 'لم يتم العثور على جهاز صالح، وتم تخطي عملية HPET!';

  @override
  String get logMsg018 =>
      'لم يتم توفير أي طلبات IRQ صالحة أو أن طلبات IRQ فارغة! تم إحباط العملية!';

  @override
  String logMsg019(String arg0) {
    return '=> غير قادر على تحديد موقع $arg0._CRS! تم إنهاء العملية!';
  }

  @override
  String logMsg020(String arg0) {
    return '=> غير قادر على تحديد موقع $arg0._CRS!';
  }

  @override
  String get logMsg021 => '=> يبدو أن _CRS قد تم تسميته بـ XCRS!';

  @override
  String get logMsg022 =>
      '=> الرجاء تعطيل إعادة تسمية الجهاز من _CRS إلى XCRS في DSDT والمحاولة مرة أخرى بعد إعادة التشغيل!\\n';

  @override
  String get logMsg023 => '=> غير قادر على تحديد نوع الوصول إلى الذاكرة!';

  @override
  String get logMsg024 => '=> لا يمكن تحويل القاعدة أو الطول إلى عدد صحيح!';

  @override
  String get logMsg025 => '=> غير موجود!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> استخدم القيمة الافتراضية $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> غير موجود!';

  @override
  String get logMsg028 => '=> لا شيء للتصحيح!';

  @override
  String logMsg029(String arg0, String arg1) {
    return 'نهاية تصحيح IRQ مفقودة ($arg1) لـ $arg0! تم تخطي…';
  }

  @override
  String get logMsg030 => 'قد لا يكون ما يلي فريدًا ويتم تعطيله افتراضيًا! \\n';

  @override
  String get logMsg031 => 'لم يتم تقديم معرف UID صالح، قم بإلغاء العملية!';

  @override
  String logMsg032(String arg0) {
    return '$arg0 هو معرف UID مخصص قد يتطلب تخصيصًا يدويًا أو قد لا يكون مدعومًا على الإطلاق!';
  }

  @override
  String get logMsg033 =>
      'لم يتم العثور على مسار iGPU صالح في جدول ACPI الذي تم تمريره!\\n';

  @override
  String logMsg034(String arg0) {
    return 'ملاحظة: تم تخمين مسار iGPU كـ $arg0\\n يرجى التحقق قبل الاستخدام!';
  }

  @override
  String logMsg035(String arg0) {
    return 'ملاحظة: تم ضبط مسار iGPU يدويًا على $arg0. يرجى التأكد من تأكيد ما إذا كان المسار صحيحًا قبل الاستخدام!';
  }

  @override
  String get logMsg036 => '=> تم العثور على جهاز EC مسمى، لا داعي للتزييف!\\n';

  @override
  String get logMsg037 =>
      'لا يمكن أن يكون تصحيح سمة USBX فارغًا! تم إنهاء العملية!';

  @override
  String get logMsg038 => 'لم يتم العثور على جهاز معالج صالح!';

  @override
  String get logMsg039 =>
      '=> تم العثور على جهاز PNP0B00 (RTC) صالح والتحقق منه، ولا يلزم وجود تصحيح أو SSDT! تم إنهاء العملية!';

  @override
  String get logMsg040 =>
      '=> لم يتم العثور على جهاز ACPI000E (AWAC)، ولا يلزم وجود تصحيح أو SSDT! تم إنهاء العملية!';

  @override
  String get logMsg041 => '=> لم يتم العثور على جهاز! تم إنهاء العملية!';

  @override
  String get logMsg042 => 'لم يتم العثور على تطابق للمسار التالي:';

  @override
  String get logMsg043 => 'لم يتم العثور على أي تطابقات!';

  @override
  String get logMsg044 =>
      'لاحظ أن مسار الجهاز يجب أن يبدأ بـ PciRoot() التالي لمطابقة جدول ACPI الحالي:';

  @override
  String logMsg045(String arg0) {
    return '=> لم يتم العثور عليه، لا يبدو أنه جدول $arg0 صالح!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 لم يتم العثور على القيمة! تم إحباط العملية!';
  }

  @override
  String get logMsg047 =>
      'إعادة تعيين قيمة عنوان التسجيل غير موجودة! تم إحباط العملية!';

  @override
  String logMsg048(String arg0) {
    return 'غير قادر على حل معرف المعالج في $arg0، مما يؤدي إلى إحباط عملية التصحيح';
  }

  @override
  String logMsg049(String arg0) {
    return 'وحدة المعالجة المركزية الأولى في $arg0 متطابقة بالفعل، لا حاجة لتصحيح جدول APIC!';
  }

  @override
  String get logMsg050 =>
      '=> لم يتم العثور على تطابق للمعالج! تم إحباط العملية!';

  @override
  String get logMsg051 => 'الرجاء تحديد تصحيح IMEI!';

  @override
  String logMsg052(String arg0) {
    return '=> تم العثور على جهاز IMEI في $arg0، ليست هناك حاجة إلى الجسر من أجل الانتحال! تم إحباط العملية!';
  }

  @override
  String get logMsg053 =>
      '=> لم يتم العثور على جهاز جذر PCI! تم إحباط العملية!';

  @override
  String get logMsg054 =>
      '=> لم يتم تمكين SSDT انتحال IMEI، يجب تعيين معرف الجهاز عبر DeviceProperties!';

  @override
  String get logMsg055 =>
      'لم يتم العثور على جهاز UNC (PNP0A03)! لا يلزم تصحيح SSDT-UNC! تم إحباط العملية! \\n';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: طريقة _STA غير موجودة!';
  }

  @override
  String get logMsg057 =>
      '=> جهاز DMA (PNP0200) غير موجود في أي من جداول ACPI المذكورة أعلاه! تم إحباط العملية! \\n';

  @override
  String get logMsg058 =>
      '=> لم يتم العثور على طريقة _PTS، ولن يتم إنشاء إدخال جدولة _PTS وتصحيح إعادة التسمية!';

  @override
  String get logMsg059 =>
      '=> لم يتم العثور على طريقة _WAK، ولن يتم إنشاء إدخال جدولة _WAK وتصحيح إعادة التسمية!';

  @override
  String get logMsg060 =>
      '=> لم يتم العثور على أسلوب _PTS/_WAK القابل للجدولة، تم تخطي SSDT-SleepHook!\\n';

  @override
  String get logMsg061 =>
      '=> لم يتم العثور على طريقة _SST في أي من جداول ACPI المذكورة أعلاه! تم إحباط العملية! \\n';

  @override
  String get logMsg062 =>
      '=> لم يتم العثور على جهاز PNP0C0D في أي من جداول ACPI المذكورة أعلاه! تم إحباط العملية! \\n';

  @override
  String get logMsg063 =>
      '=> حالة النظام غير مدعومة: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> ملاحظة: البرنامج الثابت الحالي لا يدعم حالة _S3. إذا لم يقم إعداد BIOS بتعطيل وظيفة S3، فهذا يعني أن الجهاز لا يدعم S3 Sleep!';

  @override
  String get logMsg065 =>
      '=> ملاحظة: هذا جهاز AOAC، ولا يدعم نظام التشغيل macOS S3 Sleep!';

  @override
  String get logMsg066 =>
      '=> لم يتم اكتشاف ما إذا كان جهاز AOAC حاليًا، يرجى التأكد بنفسك!';

  @override
  String get logMsg067 =>
      'لم يتم العثور على قيمة الطاقة المنخفضة S0 الخاملة (V5)!';

  @override
  String get logMsg068 =>
      'حاليًا، جهاز AOAC، لا يدعم نظام التشغيل macOS S3 Sleep!';

  @override
  String get logMsg069 =>
      '=> لم يتم العثور على الاسم أو الطريقة _S3، التكوين الحالي لا يدعم S3 Sleep! تم إنهاء العملية!';

  @override
  String logMsg070(String arg0) {
    return '=> تم العثور على الطريقة $arg0!';
  }

  @override
  String get logMsg071 =>
      '=> تمت إعادة تسمية الطريقة الحالية وقد لا تكون جدول ACPI الأصلي! الرجاء إعادة الحصول على جدول ACPI الأصلي والمحاولة مرة أخرى!\\n';

  @override
  String get logMsg072 =>
      '=> لم يتم العثور على جهاز LID (PNP0C0D) في أي من جداول ACPI المذكورة أعلاه! تم إنهاء العملية!\\n';

  @override
  String get logMsg073 =>
      '=> لم يتم العثور على Method _LID في أي من جداول ACPI المذكورة أعلاه! تم إنهاء العملية!\\n';

  @override
  String get logMsg074 =>
      '=> لم يتم العثور على جهاز PWRB (PNP0C0C) في جدول ACPI أعلاه! مجرد واحدة وهمية! \\n';

  @override
  String logMsg075(String arg0) {
    return '=> لا داعي لتزييف جهاز SLPB، فقد تم العثور على جهاز PNP0C0E في $arg0!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> جهاز PNP0C0E $arg0 لديه طريقة _STA!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> جهاز PNP0C0E $arg0 غير موجود بطريقة _STA!';
  }

  @override
  String get logMsg078 =>
      '=> لم يتم العثور على أجهزة XHC/XHCI/XDCI/CNVW مطابقة! تم إنهاء العملية! \\n';

  @override
  String get logMsg079 => '=> لم يتم العثور على طريقة GPRW!';

  @override
  String get logMsg080 =>
      '=> تم العثور على طريقة XPRW! تمت إعادة تسمية الطريقة الحالية وقد لا تكون جدول ACPI الأصلي! الرجاء إعادة الحصول على جدول ACPI الأصلي والمحاولة مرة أخرى!\\n';

  @override
  String get logMsg081 => '=> لم يتم العثور على طريقة XPRW! تم إنهاء العملية!';

  @override
  String get logMsg082 => '=> لم يتم العثور على طريقة UPRW!';

  @override
  String get logMsg083 =>
      '=> تم العثور على طريقة XPRW! تمت إعادة تسمية الطريقة الحالية وقد لا تكون جدول ACPI الأصلي! الرجاء إعادة الحصول على جدول ACPI الأصلي والمحاولة مرة أخرى!\\n';

  @override
  String get logMsg084 => '=> لم يتم العثور على طريقة XPRW! تم إنهاء العملية!';

  @override
  String get logMsg085 =>
      '=> لم يتم العثور على جهاز GPI0! تم إنهاء العملية! \\n';

  @override
  String get logMsg086 =>
      '=> لم يتم العثور على طريقة _STA! تم إنهاء العملية! \\n';

  @override
  String get logMsg087 =>
      '=> يتوافق نظام تسمية المعالج الحالي مع مواصفات تسمية وحدة المعالجة المركزية! لا حاجة لهذا SSDT! تم إنهاء العملية!';

  @override
  String get logMsg088 =>
      '=> لا يوجد جهاز PLTF، ومنصة Intel الحالية لا تتطلب SSDT! تم إنهاء العملية...';

  @override
  String get logMsg089 =>
      '=> لم يتم العثور على جهاز CPU يلبي المتطلبات، ولا يلزم تصحيح SSDT-CPUR! تم إنهاء العملية!';

  @override
  String get logMsg090 =>
      '=> لم يتم تمكين SSDT انتحال IMEI، يجب تعيين معرف الجهاز عبر DeviceProperties!';

  @override
  String get logMsg091 => 'لم يتم توفير مسار جهاز ACPI صالح! تم إحباط العملية!';

  @override
  String logMsg092(String arg0) {
    return 'لم يتم العثور على طريقة _ON أو _OFF المقابلة لـ $arg0 في DSDT أو SSDT! تم إحباط العملية!';
  }

  @override
  String logMsg093(String arg0) {
    return 'لم يتم العثور على طريقة _PS3 أو _DSM المقابلة لـ $arg0 في DSDT أو SSDT! تم إحباط العملية!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> هناك طريقة _PRT للجهاز $arg0، والتي ربما تكون قد أخفت الجهاز الحقيقي وستقوم بإدخال جهاز جسر BRG0!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> الجهاز $arg0 غير موجود!';
  }

  @override
  String logMsg096(String arg0) {
    return 'مسار الجهاز الحالي $arg0 قد يخفي الجهاز الحقيقي!';
  }

  @override
  String logMsg097(String arg0) {
    return '=> يوجد تجاوز في عنوان _ADR لجهاز بطاقة الرسومات $arg0!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> قم بالرجوع إلى مسار الجهاز الأصلي: $arg0 وقم بإدخال جهاز الجسر BRG0!';
  }

  @override
  String logMsg099(String arg0) {
    return 'طريقة إخفاء غير معروفة: $arg0، تم إحباط العملية.';
  }

  @override
  String logMsg100(String arg0) {
    return 'لم يتم العثور على بعض الطرق: $arg0';
  }

  @override
  String get logMsg101 =>
      '=> غير قادر على العثور على جهاز ناقل صالح، تم إنهاء العملية!';

  @override
  String get logMsg102 =>
      'لم يتم توفير مسار ACPI صالح لبطاقة الرسومات! تم إنهاء العملية!';

  @override
  String get logMsg103 =>
      'لم يتم تقديم معرف بطاقة رسومات مزيف صالح! تم إنهاء العملية!';

  @override
  String get logMsg104 =>
      'لم يتم توفير اسم صالح لبطاقة الرسومات المزيفة! لن يتم إدخال أي أسماء مزيفة!';

  @override
  String logMsg105(String arg0) {
    return 'قد يؤدي مسار بطاقة الرسومات الحالي $arg0 إلى إخفاء الجهاز الحقيقي!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> يحتوي الجهاز $arg0 على طريقة _PRT، والتي ربما تكون قد أخفت الجهاز الحقيقي وستحقن جهاز GFX0!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> الجهاز $arg0 غير موجود في DSDT أو SSDT! تم إحباط العملية!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> يوجد تجاوز في عنوان _ADR لجهاز بطاقة الرسومات $arg0!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> قم بالرجوع إلى مسار الجهاز الأصلي: $arg0 وقم بإدخال جهاز GFX0!';
  }

  @override
  String get logMsg110 => 'يوجد عنوان _ADR تجاوز في مسار الجهاز!';

  @override
  String get logMsg111 => 'قد تؤثر الأجهزة التالية على حقن الخاصية:';

  @override
  String get logMsg112 => 'تحديد موقع LPC(B)/SBRG...';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 موجود في $arg0';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 موجود في $arg0';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 موجود في $arg0';
  }

  @override
  String logMsg116(String arg0) {
    return 'مسار DSDT المقدم: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'مسار DSDT المتوفر غير صالح: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'يتم الآن تجميع جداول ACPI الصالحة من الدليل $arg0...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'تم العثور على إجمالي $arg0 جداول ACPI، منها $arg1 صالحة:';
  }

  @override
  String get logMsg120 => 'تم التحقق من عدة ملفات ذات توقيعات DSDT:';

  @override
  String logMsg121(String arg0) {
    return 'على وشك فك التحويل البرمجي $arg0 للتحقق مما إذا كان يلزم تطبيق التصحيحات المعدة مسبقًا...';
  }

  @override
  String get logMsg122 => '=> لا داعي لتطبيق تصحيحات معدة مسبقاً!\\n';

  @override
  String logMsg123(String arg0) {
    return 'جار التحميل $arg0...';
  }

  @override
  String get logMsg124 => 'اكتملت المعالجة!\\n';

  @override
  String get logMsg125 => 'الملف أو المجلد الذي تم تمريره غير موجود!\\n';

  @override
  String get logMsg126 => 'معالجة ملفات DSDT التي بها مشكلات...';

  @override
  String get logMsg127 => 'تحقق من التصحيحات المعدة مسبقًا المتاحة ...';

  @override
  String logMsg128(String arg0) {
    return 'جارٍ تحميل الملف $arg0 إلى الذاكرة...';
  }

  @override
  String get logMsg129 => 'معالجة التصحيحات واحدة تلو الأخرى...\\n';

  @override
  String get logMsg130 => '=> تم وضعه، تطبيق...';

  @override
  String get logMsg131 => '=> تم فك ملف DSDT من السؤال السابق بنجاح!';

  @override
  String logMsg132(String arg0) {
    return '=> تم تطبيق التصحيح على الملف المعدل وحفظ الملف في مجلد النتائج:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return 'جارٍ تحميل جداول ACPI الصالحة في $arg0...';
  }

  @override
  String get logMsg134 => 'تم الانتهاء من تفكيك جميع جداول ACPI الصالحة!';

  @override
  String logMsg135(String arg0) {
    return 'إجمالي الوقت المستغرق: $arg0 ثانية\\n';
  }

  @override
  String logMsg136(String arg0) {
    return 'تجميع $arg0.aml بنجاح!';
  }

  @override
  String logMsg137(String arg0) {
    return 'احذف $arg0.dsl الملف المصدر';
  }

  @override
  String logMsg138(String arg0) {
    return '=> لم يتم العثور على النطاق للجهاز $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> غير قادر على تحديد موقع $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return 'جارٍ تحديد موقع جهاز $arg0 ($arg1)...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> غير قادر على استهداف أي $arg0 من الأجهزة';
  }

  @override
  String logMsg142(String arg0) {
    return '=> وجدت $arg0';
  }

  @override
  String get logMsg143 => '=> جارٍ البحث عن التحقق _STA...';

  @override
  String get logMsg144 =>
      '=> تمت إعادة تسمية _STA إلى XSTA! تخطي عمليات التحقق الأخرى...';

  @override
  String get logMsg145 =>
      '=> الرجاء تعطيل إعادة تسمية الجهاز من _STA إلى XSTA في DSDT والمحاولة مرة أخرى بعد إعادة التشغيل!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 المتغير $arg1';
  }

  @override
  String get logMsg147 => '=> لم يتم العثور على طريقة/اسم _STA';

  @override
  String logMsg148(String arg0) {
    return '=> تم العثور على طريقة _STA في الفهرس $arg0!';
  }

  @override
  String get logMsg149 => '=> إنشاء _STA لإعادة تسمية XSTA';

  @override
  String get logMsg150 =>
      '=> هناك عبارات إرجاع متعددة، أو أن قيمة الإرجاع ليست إرجاع (0x0F)';

  @override
  String get logMsg151 => 'يتم الآن جمع معلومات جهاز ACPI...';

  @override
  String get logMsg152 => 'يتم الآن تجميع مسارات جهاز ACPI...';

  @override
  String get logMsg153 => 'إعادة فحص الأجهزة المعزولة...';

  @override
  String logMsg154(String arg0) {
    return 'طلبات المقاطعة المخصصة الحالية: $arg0';
  }

  @override
  String get logMsg155 => '=> مثال: RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> تم العثور على _HID: $arg0';
  }

  @override
  String get logMsg157 => 'تحديد موقع جهاز PNP0103 (HPET)...';

  @override
  String logMsg158(String arg0) {
    return '=> تم وضعه في $arg0';
  }

  @override
  String get logMsg159 => 'تحديد موقع أسلوب/اسم _CRS لـ HPET...';

  @override
  String logMsg160(String arg0) {
    return '=> يقع في $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> موجود في الفهرس: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> النوع: $arg0';
  }

  @override
  String get logMsg163 => '=> التحقق من Memory32Fixed...';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> احصل على $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'جارٍ إنشاء تصحيح IRQ...';

  @override
  String get logMsg166 => 'جارٍ التحقق من طلب المقاطعة...';

  @override
  String get logMsg167 => 'طلب المقاطعة فارغ! تخطي...\\n';

  @override
  String get logMsg168 => 'لم يتم العثور على تطابق.';

  @override
  String logMsg169(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg170 => 'إنشاء جهاز HPET مزيف...';

  @override
  String logMsg171(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> المعرف الفريد المستخدم: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> المنصات القابلة للتطبيق: $arg0';
  }

  @override
  String get logMsg174 =>
      'لم يتم توفير مسار iGPU صالح، جارٍ محاولة البحث تلقائيًا...';

  @override
  String get logMsg175 => 'أبحث عن جهاز iGPU على 0x00020000...';

  @override
  String logMsg176(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> تم العثور على جهاز iGPU في $arg0!';
  }

  @override
  String get logMsg178 => 'لم يتم العثور على جهاز iGPU حسب العنوان!';

  @override
  String get logMsg179 => 'جارٍ البحث عن أسماء iGPU الشائعة...';

  @override
  String logMsg180(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> تم العثور على جهاز iGPU محتمل في $arg0';
  }

  @override
  String logMsg182(String arg0) {
    return 'تم العثور على جهاز iGPU محتمل في $arg0\\n';
  }

  @override
  String logMsg183(String arg0) {
    return 'لقد تم ضبطه يدويًا على $arg0 وفقًا لمسار iGPU المحدد \\n';
  }

  @override
  String logMsg184(String arg0) {
    return 'مسار iGPU غير صالح: $arg0';
  }

  @override
  String get logMsg185 => 'جارٍ التحقق من جدول ACPI لجهاز PNLF الأصلي...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> تم العثور على جهاز PNLF الأصلي في $arg0: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> يجب إعادة تسمية PNLF الأصلي إلى XNLF، ويتم الآن إنشاء تصحيح إعادة التسمية...';

  @override
  String get logMsg188 => '=> لم يتم العثور على جهاز PNLF الأصلي!';

  @override
  String get logMsg189 => '=> لا حاجة لإنشاء تصحيح إعادة تسمية PNLF إلى XNLF!';

  @override
  String logMsg190(String arg0) {
    return 'تم اكتشاف الاسم (NBCF، 0x00) في $arg0، مما أدى إلى إنشاء التصحيح...';
  }

  @override
  String logMsg191(String arg0) {
    return 'تم اكتشاف الاسم (NBCF، Zero) في $arg0، مما يؤدي إلى إنشاء التصحيح...';
  }

  @override
  String get logMsg192 => 'جارٍ تحديد موقع جهاز PNP0C09(EC)...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 تم العثور على أجهزة PNP0C09 (EC) في $arg0';
  }

  @override
  String get logMsg194 => '=> التحقق...';

  @override
  String logMsg195(String arg0) {
    return '=> وجدت $arg0';
  }

  @override
  String get logMsg196 => '=> جهاز PNP0C09 (EC) يسمى EC، جاري إعادة التسمية';

  @override
  String get logMsg197 => '=> جهاز PNP0C09 (EC) صالح';

  @override
  String get logMsg198 => '=> تم تمكين _STA بشكل صحيح، مع تخطي إعادة التسمية';

  @override
  String get logMsg199 => '=> جهاز PNP0C09 (EC) غير صالح';

  @override
  String get logMsg200 =>
      '=> لم يتم العثور على جهاز PNP0C09 (EC) صالح، فقط قم بتزييف جهاز EC';

  @override
  String logMsg201(String arg0) {
    return 'جارٍ إنشاء $arg0.dsl...';
  }

  @override
  String logMsg202(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg203 => 'يتم الآن تحديد نظام تسمية وحدة المعالجة المركزية...';

  @override
  String logMsg204(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> تم العثور على المعالج: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> لم يتم العثور على كائن المعالج...';

  @override
  String get logMsg208 => '=> لم يتم العثور على جهاز ACPI0007...';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 تم العثور على أجهزة ACPI0007';
  }

  @override
  String logMsg210(String arg0) {
    return '=> تم العثور على الجهاز الأصلي في $arg0، جارٍ المعالجة...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> جارٍ التحقق من $arg0...';
  }

  @override
  String get logMsg212 => '=> غير موجود! القفز فوق…';

  @override
  String get logMsg213 => '=> غير موجود! القفز فوق…';

  @override
  String logMsg214(String arg0) {
    return 'معالجة $arg0 أجهزة معالج صالحة...';
  }

  @override
  String get logMsg215 => 'فشل الحصول على اسم LPC...';

  @override
  String logMsg216(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg217 => '=> بحاجة إلى تزييف RTC!';

  @override
  String get logMsg218 => '=> التحقق من _CRS...';

  @override
  String get logMsg219 =>
      '=> _CRS عبارة عن مخزن مؤقت، يتم التحقق من نطاق RTC...';

  @override
  String get logMsg220 =>
      '=> غير قادر على ضبط القيمة، غير قادر على التحقق من نطاق RTC.';

  @override
  String get logMsg221 => '=> فشل جمع القيمة، غير قادر على التحقق من نطاق RTC.';

  @override
  String get logMsg222 => '=> _CRS هي طريقة ولا يمكنها التحقق من نطاق RTC!';

  @override
  String get logMsg223 => '=> جارٍ إعادة تسمية _CRS إلى XCRS...';

  @override
  String logMsg224(String arg0) {
    return '=> موجود في الفهرس $arg0';
  }

  @override
  String get logMsg225 => '=> غير موجود';

  @override
  String logMsg226(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg228 => 'جارٍ تجميع أجهزة RHUB/HUBN/URTH...';

  @override
  String logMsg229(String arg0) {
    return '=> تم العثور على $arg0 من الأجهزة';
  }

  @override
  String get logMsg230 => '=> بحاجة إلى إعادة تسميتها!';

  @override
  String logMsg231(String arg0) {
    return '=> تحقق من $arg0: ما إذا كانت طريقة _STA موجودة أم لا';
  }

  @override
  String logMsg232(String arg0) {
    return '=> تم العثور على طريقة _STA في الفهرس $arg0!';
  }

  @override
  String get logMsg233 => '=> قم بإنشاء التصحيح من _STA إلى XSTA';

  @override
  String get logMsg234 => '=> لم يتم العثور على طريقة _STA!';

  @override
  String logMsg235(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg236 => '=> يوجد تجاوز لعنوان _ADR في مسار الجهاز!';

  @override
  String get logMsg237 =>
      '=> قد تتطلب الأجهزة التالية تعديلات على الجسور لتعمل بشكل صحيح:';

  @override
  String get logMsg238 => 'جارٍ تجميع أجهزة جسر PCI...';

  @override
  String get logMsg239 => 'جهاز جسر PCI فارغ! تم إنهاء العملية!';

  @override
  String get logMsg240 => 'جهاز بناء الجسور...';

  @override
  String get logMsg241 => 'جهاز جسر PCI فارغ! القفز فوق…';

  @override
  String get logMsg242 => 'جارٍ مطابقة مسارات الأجهزة...';

  @override
  String get logMsg243 => 'لم يتم العثور على تطابق!';

  @override
  String logMsg244(String arg0) {
    return '=> يطابق $arg0، ولا يلزم إجراء تجسير';
  }

  @override
  String get logMsg245 => 'لم يتم العثور على أي تطابق!\\n';

  @override
  String get logMsg246 => 'لا يلزم التوصيل!\\n';

  @override
  String get logMsg247 => 'حل جهاز الجسر...';

  @override
  String get logMsg248 => '=> غير قادر على التحليل!';

  @override
  String get logMsg249 => 'حدث خطأ أثناء تحليل جهاز الجسر!\\n';

  @override
  String logMsg250(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg251 => 'تحديد موقع جهاز ACPI0008 (ALS)...';

  @override
  String logMsg252(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> تم العثور على جهاز ALS في الجدول $arg0: $arg1!';
  }

  @override
  String get logMsg254 => '=> لا داعي للتزييف!\\n';

  @override
  String logMsg255(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg256 => '_STA تم تمكينه بشكل صحيح، ولا يلزم التصحيح! \\n';

  @override
  String get logMsg257 => 'لم يتم العثور عليه، لا يلزم التصحيح!\\n';

  @override
  String get logMsg258 =>
      'لم يتم العثور على جهاز ACPI0008 (ALS)، ويلزم وجود جهاز مزيف...';

  @override
  String logMsg259(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg260 => 'الكشف عن مخطط XOSI...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> تم اكتشافه تلقائيًا: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'جارٍ التحقق من طريقة OSID...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> تم العثور على الطريقة $arg1 عند الإزاحة $arg0';
  }

  @override
  String get logMsg264 =>
      '=> لم يتم العثور عليه، لا داعي لإعادة تسمية OSID إلى XSID';

  @override
  String get logMsg265 => 'جارٍ إنشاء _OSI لإعادة تسمية XOSI...';

  @override
  String logMsg266(String arg0) {
    return 'البحث عن جدول $arg0...';
  }

  @override
  String logMsg267(String arg0) {
    return 'تم العثور على جدول $arg0، التحقق من التوقيع...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 تم التحقق من توقيع الجدول!';
  }

  @override
  String logMsg269(String arg0) {
    return 'جارٍ التحقق من القيمة $arg0...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'تم الحصول على قيمة $arg0: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'تم الحصول على قيمة عنوان إعادة تعيين السجل: $arg0';
  }

  @override
  String get logMsg272 => 'تصحيحات ACPI التي تحتاج إلى تصحيح هي كما يلي:';

  @override
  String get logMsg273 => 'تصحيح جدول APIC...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> معرف معالج APIC المصحح: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> اكتمل تصحيح جدول APIC!';

  @override
  String logMsg276(String arg0) {
    return 'جارٍ إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg277 => 'جارٍ التحقق من منطقة الذاكرة المحجوزة لجدول DMAR...';

  @override
  String get logMsg278 =>
      '=> لم يتم العثور على منطقة محجوزة في الذاكرة، لا داعي لتصحيح DMAR!\\n';

  @override
  String logMsg279(String arg0) {
    return 'تم العثور على $arg0 مناطق ذاكرة محجوزة، مما أدى إلى إنشاء جدول جديد...';
  }

  @override
  String get logMsg280 => 'أبحث عن جهاز IMEI على العنوان 0x00160000...';

  @override
  String get logMsg281 => 'لم يتم العثور على جهاز IMEI، يجب تزييف الجهاز...';

  @override
  String get logMsg282 => 'جارٍ التحقق من الجهاز الأصلي...';

  @override
  String get logMsg283 => 'أبحث عن جهاز iGPU على 0x00020000...';

  @override
  String get logMsg284 => '=> لم يتم العثور على جهاز iGPU!';

  @override
  String get logMsg285 => 'جارٍ محاولة تحديد موقع جهاز جذر PCI...';

  @override
  String logMsg286(String arg0) {
    return '=> تم العثور على جهاز جذر PCI: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> تم العثور على جهاز iGPU: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> استخدم الجهاز الأصلي: $arg0';
  }

  @override
  String get logMsg289 => 'جارٍ جمع مخططات معرفات الأجهزة المزيفة...';

  @override
  String logMsg290(String arg0) {
    return '=> لوحة أم مزيفة مثل IMEI من السلسلة 7 (معرف الجهاز: $arg0) لمطابقة الجيل الثالث من معالج Ivy Bridge';
  }

  @override
  String logMsg291(String arg0) {
    return '=> لوحة أم مزيفة مثل IMEI من السلسلة 6 (معرف الجهاز: $arg0) لمطابقة الجيل الثاني من معالج Sandy Bridge';
  }

  @override
  String logMsg292(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String get logMsg293 => 'جارٍ البحث عن جهاز UNC (PNP0A03)...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 تم العثور على أجهزة UNC';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> جهاز UNC $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> تحقق من وجود $arg0: طريقة _STA';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> تم العثور على $arg1: طريقة _STA في الفهرس $arg0!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> إنشاء $arg0: _STA إلى تصحيح XSTA';
  }

  @override
  String logMsg299(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg300(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg301 => 'التحقق من وجود طريقة DTGP...';

  @override
  String get logMsg302 => '=> لم يتم العثور على طريقة DTGP!';

  @override
  String get logMsg303 =>
      '=> لم يتم العثور على طريقة DTGP في أي من جداول ACPI المذكورة أعلاه! \\n';

  @override
  String logMsg304(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg305(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg306 => 'جارٍ البحث عن جهاز DMA (PNP0200)...';

  @override
  String get logMsg307 => '=> لم يتم العثور على جهاز DMA (PNP0200)!';

  @override
  String logMsg308(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg309(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg310 => 'التحقق من وجود طريقة _PTS...';

  @override
  String logMsg311(String arg0) {
    return '=> تم العثور على الطريقة $arg0!';
  }

  @override
  String get logMsg312 => '=> لم يتم العثور على طريقة _PTS!';

  @override
  String get logMsg313 => 'التحقق من وجود أسلوب _WAK...';

  @override
  String logMsg314(String arg0) {
    return '=> تم العثور على الطريقة $arg0!';
  }

  @override
  String get logMsg315 => '=> لم يتم العثور على طريقة _WAK!';

  @override
  String logMsg316(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg318 => 'التحقق من وجود طريقة _SST...';

  @override
  String logMsg319(String arg0) {
    return '=> تم العثور على طريقة _SST في $arg0!';
  }

  @override
  String get logMsg320 => '=> لم يتم العثور على طريقة _SST!';

  @override
  String logMsg321(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg323 => 'التحقق من وجود جهاز PNP0C0D...';

  @override
  String logMsg324(String arg0) {
    return '=> تم العثور على جهاز PNP0C0D في $arg0!';
  }

  @override
  String get logMsg325 => '=> لم يتم العثور على جهاز PNP0C0D!';

  @override
  String logMsg326(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return 'التحقق من وجود $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> تم العثور على $arg1 في $arg0';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> تم العثور على $arg1 في $arg0';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 غير موجود';
  }

  @override
  String get logMsg332 => 'تم فحص جميع جداول ACPI!';

  @override
  String get logMsg333 => '=> دعم حالة النظام: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> تدعم البرامج الثابتة الحالية حالات النظام المشتركة! بعد إصلاح مشكلة النوم، يمكن لنظام التشغيل macOS دعم وضع S3 للنوم!';

  @override
  String get logMsg335 => 'التحقق من قيمة الطاقة المنخفضة S0 Idle (V5)...';

  @override
  String logMsg336(String arg0) {
    return 'احصل على طاقة منخفضة S0 خامل (V5): $arg0';
  }

  @override
  String get logMsg337 =>
      'إنه ليس جهاز AOAC حاليًا ولا يؤثر على نوم نظام macOS S3!';

  @override
  String get logMsg338 => 'التحقق من وجود _S3...';

  @override
  String logMsg339(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> تم العثور على الاسم _S3 في $arg0!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> تم العثور على الطريقة _S3 في $arg0!';
  }

  @override
  String get logMsg342 => '=> لم يتم العثور على الاسم أو الطريقة _S3';

  @override
  String logMsg343(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg344(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg345(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg346 => 'جارٍ البحث عن جهاز LID (PNP0C0D)...';

  @override
  String logMsg347(String arg0) {
    return '=> تم العثور على جهاز PNP0C0D في $arg0!';
  }

  @override
  String get logMsg348 => '=> لم يتم العثور على جهاز LID (PNP0C0D)!';

  @override
  String logMsg349(String arg0) {
    return '=> تم العثور على طريقة _LID في $arg0!';
  }

  @override
  String get logMsg350 => '=> لم يتم العثور على الطريقة _LID!';

  @override
  String get logMsg351 => 'يتم الآن التحقق من وجود أسلوب _TTS...';

  @override
  String logMsg352(String arg0) {
    return '=> تم العثور على الطريقة $arg0!';
  }

  @override
  String get logMsg353 => '=> لم يتم العثور على طريقة _TTS!';

  @override
  String get logMsg354 => 'التحقق من وجود أسلوب ZTTS...';

  @override
  String get logMsg355 => '=> لم يتم العثور على طريقة ZTTS!';

  @override
  String logMsg356(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg358 => 'جارٍ البحث عن جهاز PWRB (PNP0C0C)...';

  @override
  String get logMsg359 => '=> لم يتم العثور على جهاز PWRB (PNP0C0C)!';

  @override
  String logMsg360(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg361(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg362 => 'جارٍ البحث عن جهاز SLPB (PNP0C0E)...';

  @override
  String get logMsg363 => '=> لم يتم العثور على جهاز SLPB (PNP0C0E)!';

  @override
  String get logMsg364 =>
      '=> لم يتم العثور على جهاز SLPB (PNP0C0E) في جدول ACPI أعلاه! مجرد واحدة وهمية! \\n';

  @override
  String logMsg365(String arg0) {
    return 'إنشاء $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg367(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg368(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String get logMsg369 => 'جارٍ البحث عن جهاز PNP0C01...';

  @override
  String get logMsg370 => '=> لم يتم العثور على جهاز PNP0C01!';

  @override
  String get logMsg371 =>
      '=> لم يتم العثور على جهاز PNP0C01 في أي من جداول ACPI المذكورة أعلاه!\\n';

  @override
  String logMsg372(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg373 => 'جارٍ جمع أجهزة XHC/XHCI/XDCI/CNVW...';

  @override
  String logMsg374(String arg0) {
    return '=> التحقق مما إذا كان الجهاز $arg0 يدعم PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 لا يدعم PMEE، تم تخطيه';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 يدعم PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg378 => 'التحقق من وجود طريقة GPRW...';

  @override
  String get logMsg379 => 'التحقق من وجود طريقة XPRW...';

  @override
  String logMsg380(String arg0) {
    return '=> تم العثور على طريقة GPRW في $arg0!';
  }

  @override
  String logMsg381(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg382 => 'التحقق من وجود أسلوب UPRW...';

  @override
  String get logMsg383 => 'التحقق من وجود طريقة XPRW...';

  @override
  String logMsg384(String arg0) {
    return '=> تم العثور على طريقة UPRW في $arg0!';
  }

  @override
  String logMsg385(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg386 => 'جارٍ التحقق من وجود جهاز GPI0...';

  @override
  String logMsg387(String arg0) {
    return '=> تم العثور على جهاز GPI0 في $arg0!';
  }

  @override
  String get logMsg388 => 'التحقق من وجود أسلوب _STA...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> تم العثور على $arg1: طريقة _STA في الفهرس $arg0!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> إنشاء $arg0: _STA إلى تصحيح XSTA';
  }

  @override
  String logMsg391(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg392 => 'يتم الآن تحديد نظام تسمية وحدة المعالجة المركزية...';

  @override
  String logMsg393(String arg0) {
    return 'جارٍ التحقق $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> تم العثور على المعالج: $arg0';
  }

  @override
  String get logMsg395 => '=> لم يتم العثور على كائن المعالج...';

  @override
  String get logMsg396 => '=> لم يتم العثور على جهاز ACPI0007...';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 تم العثور على أجهزة ACPI0007';
  }

  @override
  String logMsg398(String arg0) {
    return '=> تم العثور على الجهاز الأصلي في $arg0، جارٍ المعالجة...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> جارٍ التحقق من $arg0...';
  }

  @override
  String get logMsg400 => '=> غير موجود! القفز فوق…';

  @override
  String get logMsg401 => '=> غير موجود! القفز فوق…';

  @override
  String logMsg402(String arg0) {
    return 'معالجة $arg0 أجهزة معالج صالحة...';
  }

  @override
  String logMsg403(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg404(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg405(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg406(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg407(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg408(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg409(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg410(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg411 => 'جارٍ جمع مخططات معرفات الأجهزة المزيفة...';

  @override
  String logMsg412(String arg0) {
    return '=> لوحة أم مزيفة مثل IMEI من السلسلة 7 (معرف الجهاز: $arg0) لمطابقة الجيل الثالث من معالج Ivy Bridge';
  }

  @override
  String logMsg413(String arg0) {
    return '=> لوحة أم مزيفة مثل IMEI من السلسلة 6 (معرف الجهاز: $arg0) لمطابقة الجيل الثاني من معالج Sandy Bridge';
  }

  @override
  String logMsg414(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg415(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg416(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg417(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg418(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg419(String arg0) {
    return 'جارٍ التحقق من الجهاز $arg0 بحثًا عن طريقة _ON أو _OFF...';
  }

  @override
  String logMsg420(String arg0) {
    return 'جارٍ التحقق من الجهاز $arg0 بحثًا عن أساليب _PS3 أو _DSM...';
  }

  @override
  String logMsg421(String arg0) {
    return 'فحص الجهاز $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> لم يتم العثور على طريقة _PRT المقابلة لـ $arg0 في DSDT أو SSDT!';
  }

  @override
  String logMsg423(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 مسار الجهاز الذي يجب حظره: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> طريقة التدريع: طريقة $arg0.';
  }

  @override
  String logMsg426(String arg0) {
    return '=> تم تحويل المسار النسبي للجهاز إلى المسار المطلق: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> ابحث عن $arg1.$arg2 الطريقة في $arg0';
  }

  @override
  String logMsg428(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String get logMsg429 => 'تجميع أجهزة الحافلات المحتملة...';

  @override
  String logMsg430(String arg0) {
    return 'إنشاء مترجمة مسبقا $arg0.dsl...';
  }

  @override
  String logMsg431(String arg0) {
    return 'جارٍ فحص جهاز الرسومات $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> لم يتم العثور على طريقة _PRT المقابلة لـ $arg0 في DSDT أو SSDT!';
  }

  @override
  String logMsg433(String arg0) {
    return 'إنشاء $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> مسار جهاز بطاقة الرسومات: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> معرف بطاقة الرسومات المزيفة: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> اسم بطاقة الرسومات المزيفة: $arg0';
  }

  @override
  String get logMsg437 => '=> غير موجود!';

  @override
  String logMsg438(String arg0) {
    return '=> مسار PCI المطابق: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> تحديث $arg0 \"$arg1\" إلى $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" موجود بالفعل في $arg2، تخطى...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> أضف $arg0 \"$arg1\" إلى $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> قم بتحديث قيمة المفتاح \"$arg0\" إلى \"$arg1\" في $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> قيمة المفتاح \"$arg0\" محدثة بالفعل، مع تخطي $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> أضف قيمة المفتاح \"$arg0\" \"$arg1\" إلى $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return 'فشل تنظيف مجلد تقارير الأجهزة: $arg0';
  }

  @override
  String get logMsg446 => 'فشل تصدير جدول ACPI الأصلي';

  @override
  String logMsg447(String arg0) {
    return 'فشل تصدير جدول ACPI الأصلي: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'فشل تصدير جدول ACPI الأصلي: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'فشل تنظيف الدليل المؤقت لجدول ACPI: $arg0';
  }

  @override
  String get logMsg450 => 'جارٍ تصدير تقرير الأجهزة الأصلية...';

  @override
  String get logMsg451 => 'جارٍ تصدير جداول ACPI الأصلية...';

  @override
  String logMsg452(String arg0) {
    return 'اكتمل تصدير جدول ACPI الأصلي: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'الملف المصدر غير موجود: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'خطأ في حفظ الملف: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'إصدار OC الحالي: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'الملف المضغوط غير موجود: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 تم فك ضغط الملف بنجاح';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'خطأ أثناء فك ضغط الملف $arg0: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'الملف أو الدليل غير موجود: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'اكتمل الضغط: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'خطأ في الضغط: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'حذف الدليل: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'حذف الملف: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'فشل الحذف: $arg0، $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'تم حفظ الملف بنجاح في: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'الدليل المصدر غير موجود: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'تم إعداد المجلد: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'خطأ في إنشاء المجلد: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'فشل في فتح الدليل، المسار غير موجود: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'فشل في فتح الدليل: $arg0، $arg1';
  }

  @override
  String get autoGen5000 => 'متناسق';

  @override
  String get autoGen5001 => 'توافق محدود';

  @override
  String get autoGen5002 => 'غير متوافق';

  @override
  String get autoGen5003 => 'ممكّن';

  @override
  String get autoGen5004 => 'تشغيل';

  @override
  String get autoGen5005 => 'مجهول';

  @override
  String get autoGen5006 => 'بطاقة الشبكة السلكية';

  @override
  String get autoGen5007 =>
      'توافق محدود\nيدعم ما يصل إلى نظام التشغيل MacOS Tahoe 26\nمفقود AVX2';

  @override
  String get autoGen5008 =>
      'غير متوافق\nيدعم ما يصل إلى macOS El Capitan 10.11\nمفقود SSE4';

  @override
  String get autoGen5009 => 'معرف الجهاز مفقود';

  @override
  String get autoGen5010 => 'دعم نوتيدريد';

  @override
  String get autoGen5011 => 'تحميل التوافق';

  @override
  String get autoGen5012 => 'لا يتم دعم رسومات Intel CPU الأساسية المنخفضة';

  @override
  String get autoGen5013 => 'لا يتم دعم إخراج VGA';

  @override
  String get autoGen5014 => 'دعم مزيف';

  @override
  String get autoGen5015 => 'الدعم الأصلي';

  @override
  String get autoGen5016 => 'مجموعة تعليمات AVX2 مفقودة';

  @override
  String get autoGen5017 => 'جوهر';

  @override
  String get autoGen5018 => 'مستقل';

  @override
  String get autoGen5019 => 'العرض النووي';

  @override
  String get autoGen5020 => 'آسوس';

  @override
  String get autoGen5021 => 'جيجابايت';

  @override
  String get autoGen5022 => 'آسروك';

  @override
  String get autoGen5023 => 'إم إس آي';

  @override
  String get autoGen5024 => 'ديل';

  @override
  String get autoGen5025 => 'لينوفو';

  @override
  String get autoGen5026 => 'سوني';

  @override
  String get autoGen5027 => 'HP';

  @override
  String get autoGen5028 => 'جوجل';

  @override
  String get autoGen5029 => 'مايكروسوفت';

  @override
  String get autoGen5030 =>
      'غير قادر على تحديد نوع النظام الأساسي بناءً على معلومات وحدة المعالجة المركزية';

  @override
  String get autoGen5031 => 'دفتر';

  @override
  String get autoGen5032 => 'مضيف صغير';

  @override
  String get autoGen5033 => 'محطة العمل';

  @override
  String get autoGen5034 =>
      'لا يمكن تحديد رمز النظام الأساسي بناءً على وحدة المعالجة المركزية واللوحة الأم والشاشة الأساسية.';

  @override
  String get autoGen5035 => 'تخطي حظر الجهاز:';

  @override
  String get autoGen5036 => 'مسار ACPI صالح مفقود';

  @override
  String get autoGen5037 => 'قائمة SSDT للتخصيص:';

  @override
  String get autoGen5038 => 'فشل استخراج جدول ACPI';

  @override
  String get autoGen5039 => 'فشل تحميل جدول ACPI';

  @override
  String get autoGen5040 => 'نتائج SSDT المخصصة غير كاملة';

  @override
  String get autoGen5041 => 'حدث استثناء في SSDT المخصص';

  @override
  String get autoGen5042 => 'فشل تنظيف الدليل المؤقت SSDT المخصص:';

  @override
  String get autoGen5043 => 'انتحال معرف جهاز بطاقة الرسومات SSDT';

  @override
  String get autoGen5044 => 'فشل في الإنشاء:';

  @override
  String get autoGen5045 => 'ACPI Device Shield SSDT';

  @override
  String get autoGen5046 => 'تم تخطي دمج SSDT المخصص،';

  @override
  String get autoGen5047 => 'استمر في استخدام SSDT الأصلي في EFI الحالي كبديل.';

  @override
  String get autoGen5048 => 'تم تخطي انتحال معرف جهاز بطاقة الرسومات:';

  @override
  String get autoGen5049 =>
      'ذاكرة التخزين المؤقت لمعلومات الأجهزة ليست كائن JSON';

  @override
  String get autoGen5050 => 'تم تحميل معلومات الأجهزة من ذاكرة التخزين المؤقت';

  @override
  String get autoGen5051 =>
      'تم تحميل معلومات الأجهزة من ذاكرة التخزين المؤقت المحلية';

  @override
  String get autoGen5052 => 'تم تحميل معلومات الأجهزة من ملف الاستيراد';

  @override
  String get autoGen5053 => 'تهيئة معلومات الأجهزة';

  @override
  String get autoGen5054 => 'النظام الحالي غير مدعوم، فقط نظام Windows مدعوم';

  @override
  String get autoGen5055 => 'الاستعلام عن معلومات الأجهزة';

  @override
  String get autoGen5056 => 'اكتمل الاستعلام عن معلومات الأجهزة';

  @override
  String get autoGen5057 => 'لم يُرجع sysInfo.exe معلومات الأجهزة';

  @override
  String get autoGen5058 =>
      'المحتوى الذي تم إرجاعه بواسطة sysInfo.exe ليس كائن JSON';

  @override
  String get autoGen5059 => 'اكتمل استعلام sysInfo.exe';

  @override
  String get autoGen5060 => 'بطاقة الرسومات الأساسية';

  @override
  String get autoGen5061 => 'بطاقة رسومات منفصلة';

  @override
  String get autoGen5062 => 'تم تشغيله بالفعل';

  @override
  String get autoGen5063 => 'بطاقة رسومات غير معروفة';

  @override
  String get autoGen5064 => 'مدمج';

  @override
  String get autoGen5065 => 'برودكوم';

  @override
  String get autoGen5066 => 'كوالكوم';

  @override
  String get autoGen5067 => 'إنتل';

  @override
  String get autoGen5068 => 'تفاحة';

  @override
  String get autoGen5069 => 'لحظة الصفر';

  @override
  String get autoGen5070 => 'ماتسوشيتا';

  @override
  String get autoGen5071 => 'اعتقد';

  @override
  String get autoGen5072 => 'بيوستار';

  @override
  String get autoGen5073 => 'ملون';

  @override
  String get autoGen5074 => 'زوتاك';

  @override
  String get autoGen5075 => 'جينج شنغ';

  @override
  String get autoGen5076 => 'ينغزونغ';

  @override
  String get autoGen5077 => 'سوبر مايكرو';

  @override
  String get autoGen5078 => 'ثم';

  @override
  String get autoGen5079 => 'سبارتاكوس';

  @override
  String get autoGen5080 => 'بانتشنغ';

  @override
  String get autoGen5081 => 'جنوب الصين';

  @override
  String get autoGen5082 => 'جينجيو';

  @override
  String get autoGen5083 => 'العقل';

  @override
  String get autoGen5084 => 'قوشو';

  @override
  String get autoGen5085 => 'جيتواي';

  @override
  String get autoGen5086 => 'الماس';

  @override
  String get autoGen5087 => 'النجم الأعلى';

  @override
  String get autoGen5088 => 'مينغشوان';

  @override
  String get autoGen5089 => 'ميجي';

  @override
  String get autoGen5090 => 'نخبة';

  @override
  String get autoGen5091 => 'فوكسكون';

  @override
  String get autoGen5092 => 'أبيت';

  @override
  String get autoGen5093 => 'شوانغمين';

  @override
  String get autoGen5094 => 'إيونجي';

  @override
  String get autoGen5095 => 'المجرة';

  @override
  String get autoGen5096 => 'العلم المقدس';

  @override
  String get autoGen5097 => 'سمك القرش';

  @override
  String get autoGen5098 => 'تحقق من ذلك';

  @override
  String get autoGen5099 => 'أدفانتيك';

  @override
  String get autoGen5100 => 'أدلينك';

  @override
  String get autoGen5101 => 'ميكانيكي عظيم';

  @override
  String get autoGen5102 => 'وطني';

  @override
  String get autoGen5103 => 'لغة الإشارة الأمريكية';

  @override
  String get autoGen5104 => 'إيرينغ';

  @override
  String get autoGen5105 => 'الياقوت';

  @override
  String get autoGen5106 => 'كونتيك';

  @override
  String get autoGen5107 => 'تشينغيون';

  @override
  String get autoGen5108 => 'هواوي';

  @override
  String get autoGen5109 => 'الدخن';

  @override
  String get autoGen5110 => 'الأرز الأحمر';

  @override
  String get autoGen5111 => 'مجد';

  @override
  String get autoGen5112 => 'سامسونج';

  @override
  String get autoGen5113 => 'ثورة ميكانيكية';

  @override
  String get autoGen5114 => 'ميكانيكي';

  @override
  String get autoGen5115 => 'ثور';

  @override
  String get autoGen5116 => 'الماسح';

  @override
  String get autoGen5117 => 'أيسر';

  @override
  String get autoGen5118 => 'توشيبا';

  @override
  String get autoGen5119 => 'فوجيتسو';

  @override
  String get autoGen5120 => 'السماء الزرقاء';

  @override
  String get autoGen5121 => 'كائن فضائي';

  @override
  String get autoGen5122 => 'شنتشو';

  @override
  String get autoGen5123 => 'هاير';

  @override
  String get autoGen5124 => 'تشونغباي';

  @override
  String get autoGen5125 => 'شوان لونغ';

  @override
  String get autoGen5126 => 'البشر في المستقبل';

  @override
  String get autoGen5127 => 'مكعب';

  @override
  String get autoGen5128 => 'Xuanpai Xuanji ستار';

  @override
  String get autoGen5129 => 'جارٍ التحقق من وجود تحديثات، يرجى الانتظار...';

  @override
  String get autoGen5130 =>
      'لقد قمت للتو بالتحقق من وجود تحديثات، يرجى المحاولة مرة أخرى لاحقًا';

  @override
  String get autoGen5131 =>
      'فشل التحقق من وجود تحديثات، يرجى المحاولة مرة أخرى لاحقًا';

  @override
  String get autoGen5132 =>
      'فشل الحصول على قائمة إصدارات الإصدار، يرجى المحاولة مرة أخرى لاحقًا';

  @override
  String get autoGen5133 => 'قائمة إصدارات الإصدار فارغة';

  @override
  String get autoGen5134 => 'سطح المكتب';

  @override
  String get autoGen5135 => 'الخادم';

  @override
  String get autoGen5136 =>
      'قم بتشغيل SIP لتعزيز أمان النظام. يوصى بتحديد هذا المربع عندما لا تحتاج عادةً إلى استخدام OCLP لتشغيل بطاقات الرسومات وWiFi وبرامج التشغيل الأخرى.';

  @override
  String get autoGen5137 => 'تعطيل حل SIP واحد';

  @override
  String get autoGen5138 =>
      'ما لم يتم تعطيل SIP تمامًا، فمن المستحسن عادةً تحديد المربع عندما تحتاج أنظمة مثل BigSur وما فوق إلى استخدام OCLP لتشغيل بطاقات الرسومات، وWiFi، وما إلى ذلك.';

  @override
  String get autoGen5139 => 'تعطيل حل SIP الثاني';

  @override
  String get autoGen5140 =>
      'قم بتعطيل SIP تمامًا. عادةً عندما تحتاج أنظمة مثل BigSur وما فوق إلى استخدام OCLP لتشغيل بطاقات الرسومات وWiFi وما إلى ذلك، يُفضل هذا الخيار.';

  @override
  String get autoGen5141 =>
      'شاشة تكيفية، تقوم تلقائيًا بضبط نسبة العرض لواجهة التمهيد OpenCore وفقًا لدقة العرض';

  @override
  String get autoGen5142 =>
      'شاشة ذات دقة قياسية، مناسبة لشاشات الدقة 720p و1080p و1440p وغيرها من الشاشات ذات الدقة القياسية';

  @override
  String get autoGen5143 =>
      'شاشة عالية الدقة، مناسبة للشاشات عالية الدقة مثل 4K و5K (يمكن أن تحسن بشكل فعال مشكلة عناصر واجهة المستخدم الصغيرة جدًا في صفحة تمهيد OpenCore للشاشات عالية الدقة)';

  @override
  String get autoGen5144 => 'لا تقم بتعديل نوع المعالج';

  @override
  String get autoGen5145 =>
      'حافظ على عرض نوع وحدة المعالجة المركزية الافتراضية للنظام';

  @override
  String get autoGen5146 =>
      'خيار تعديل اسم وحدة المعالجة المركزية لمنصة Intel وAMD رقم 1 (ينطبق عادةً على وحدات المعالجة المركزية ذات 6 مراكز أو أقل)';

  @override
  String get autoGen5147 =>
      'الخيار 2 لتعديل اسم وحدة المعالجة المركزية لمنصة Intel وAMD (ينطبق عادةً على وحدات المعالجة المركزية ذات 8 مراكز وما فوقها)';

  @override
  String get autoGen5148 =>
      'بدائل تعديل اسم وحدة المعالجة المركزية لمنصة Intel وAMD (تنطبق عادةً على وحدات المعالجة المركزية من سلسلة i7 وi9 ذات 8 مراكز وما فوق)';

  @override
  String get autoGen5149 => 'آسوس';

  @override
  String get autoGen5150 => 'جيجابايت';

  @override
  String get autoGen5151 => 'آسروك';

  @override
  String get autoGen5152 => 'إم إس آي';

  @override
  String get autoGen5153 => 'ديل';

  @override
  String get autoGen5154 => 'لينوفو';

  @override
  String get autoGen5155 => 'سوني (فايو)';

  @override
  String get autoGen5156 => 'HP';

  @override
  String get autoGen5157 => 'جوجل (كروم بوك)';

  @override
  String get autoGen5158 => 'مايكروسوفت سيرفس';

  @override
  String get autoGen5159 => 'اللوحة الأم العادية';

  @override
  String get autoGen5160 =>
      'اللوحات الأم B850، وB650، وB550، وA520، وأجهزة الكمبيوتر المحمولة ذات الشرائح 550';

  @override
  String get autoGen5161 => 'اللوحة الأم TRx40';

  @override
  String get autoGen5162 => 'اللوحة الأم X570';

  @override
  String get autoGen5163 =>
      'اللوحة الأم X470 أو B450 أواخر عام 2020 أو BIOS المحدث';

  @override
  String get autoGen5164 => '6 شرائح سلسلة';

  @override
  String get autoGen5165 =>
      'تحقق عند خلط وحدة المعالجة المركزية Intel من الجيل الثالث ومجموعة شرائح السلسلة 6 (على سبيل المثال: H61، HM65)';

  @override
  String get autoGen5166 => '7 شرائح سلسلة';

  @override
  String get autoGen5167 =>
      'تحقق عند خلط معالجات Intel من الجيل الثاني وشرائح السلسلة 7 (على سبيل المثال: B75، HM76)';

  @override
  String get autoGen5168 => 'H110، B150، B250، Q270، الخ.';

  @override
  String get autoGen5169 =>
      'تواجه بعض اللوحات الأم الخاصة بشركة OEM مشكلات في إصدار ملكية USB: فشل عملية تسليم EHCI';

  @override
  String get autoGen5170 => 'Z490 وتحديثات BIOS الأخرى في عام 2020';

  @override
  String get autoGen5171 =>
      'مجموعة شرائح من السلسلة 6 (تحقق عند دمج مجموعة شرائح Intel من الجيل الثالث لوحدة المعالجة المركزية ومجموعة شرائح من السلسلة 6 (على سبيل المثال: H61، HM65))';

  @override
  String get autoGen5172 =>
      'مجموعة شرائح السلسلة 7 (تحقق عند دمج مجموعة شرائح Intel من الجيل الثاني لوحدة المعالجة المركزية والسلسلة 7 (على سبيل المثال: B75، HM76))';

  @override
  String get autoGen5173 =>
      'H110، B150، B250، Q270، وما إلى ذلك (بعض اللوحات الأم OEM بها مشكلات في إصدار ملكية USB: فشل تسليم EHCI)';

  @override
  String get autoGen5174 => 'من مبكونفس';

  @override
  String get autoGen5175 => 'DVI سلسلة مزدوجة';

  @override
  String get autoGen5176 => 'DVI سلسلة واحدة';

  @override
  String get autoGen5177 =>
      'يدعم نظام التشغيل OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5178 =>
      'يدعم OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13، مناسب للرسومات الأساسية + نماذج الرسومات المستقلة';

  @override
  String get autoGen5179 =>
      'يدعم OS X Mountain Lion 10.8 ~ macOS Catalina 10.15، وهو مناسب لبنية Ivy Bridge، ونماذج الرسومات الأساسية فقط';

  @override
  String get autoGen5180 =>
      'يدعم OS X Mountain Lion 10.8 ~ macOS Catalina 10.15، مناسب لهندسة Ivy Bridge، وفك تشفير العرض الأساسي + نماذج إخراج العرض المستقلة';

  @override
  String get autoGen5181 =>
      'يدعم نظام التشغيل OS X Mavericks 10.9 ~ macOS Big Sur 11، مناسب لهندسة Haswell ورسومات NVIDIA Maxwell وPascal المستقلة';

  @override
  String get autoGen5182 =>
      'يدعم OS X Mavericks 10.9 ~ macOS Big Sur 11، مناسب لنماذج العرض الأساسية فقط لهندسة Haswell';

  @override
  String get autoGen5183 =>
      'يدعم OS X Mavericks 10.9 ~ macOS Big Sur 11، مناسب للرسومات الأساسية لهندسة Haswell + نماذج الرسومات المستقلة';

  @override
  String get autoGen5184 =>
      'يدعم نظام التشغيل macOS El Capitan 10.11 ~ macOS Monterey 12، وهو مناسب للنماذج ذات الرسومات الأساسية (أو الرسومات المستقلة)';

  @override
  String get autoGen5185 =>
      'يدعم نظام التشغيل macOS El Capitan 10.11 ~ macOS Monterey 12، مناسب للعرض الأساسي لهندسة Broadwell (أو مع شاشة مستقلة)';

  @override
  String get autoGen5186 =>
      'يدعم نظام التشغيل macOS Sierra 10.12 ~ macOS Ventura 13. مناسب للعرض الأساسي + نماذج العرض المستقلة. تجدر الإشارة إلى أنه عند استخدام هذا الطراز، فإن معظم مستخدمي شاشات العرض الأساسية فقط سيواجهون لون شاشة غير طبيعي. لا يُنصح باستخدام هذا الطراز لمستخدمي شاشات العرض الأساسية فقط.';

  @override
  String get autoGen5187 =>
      'يدعم macOS Sierra 10.12 ~ macOS Ventura 13، مناسب لفك تشفير العرض الأساسي + نماذج إخراج العرض المستقلة';

  @override
  String get autoGen5188 =>
      'يدعم macOS 10.14 ~ macOS Sequoia 15، مناسب للنماذج ذات الرسومات الأساسية (أو الرسومات المستقلة)';

  @override
  String get autoGen5189 =>
      'يدعم نظام التشغيل macOS 10.15 ~ macOS Tahoe 26، مناسب لطرازات i7-10700K وما دونها من شاشات العرض الأساسية للمعالج (أو مع شاشة مستقلة)';

  @override
  String get autoGen5190 =>
      'يدعم نظام التشغيل macOS 10.15 ~ macOS Tahoe 26، مناسب لنماذج العرض الأساسية للمعالج الأعلى i9-10850K (أو مع شاشة مستقلة)';

  @override
  String get autoGen5191 =>
      'دعم نظام التشغيل MacOS 10.5 ~ نظام التشغيل MacOS El Capitan 10.11';

  @override
  String get autoGen5192 =>
      'دعم نظام التشغيل MacOS 10.6 ~ نظام التشغيل MacOS High Sierra 10.13';

  @override
  String get autoGen5193 =>
      'دعم نظام التشغيل MacOS 10.7 ~ نظام التشغيل MacOS High Sierra 10.13';

  @override
  String get autoGen5194 =>
      'دعم نظام التشغيل MacOS 10.8 ~ نظام التشغيل MacOS Catalina 10.15';

  @override
  String get autoGen5195 =>
      'دعم نظام التشغيل MacOS 10.9 ~ نظام التشغيل MacOS Big Sur 11';

  @override
  String get autoGen5196 =>
      'دعم نظام التشغيل MacOS High Sierra 10.13 ~ نظام التشغيل MacOS Monterey 12';

  @override
  String get autoGen5197 =>
      'دعم نظام التشغيل MacOS Mojave 10.14 ~ نظام التشغيل MacOS Monterey 12';

  @override
  String get autoGen5198 => 'دعم OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 => 'دعم OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 =>
      'دعم نظام التشغيل MacOS Sierra 10.12 ~ نظام التشغيل MacOS Monterey 12';

  @override
  String get autoGen5201 =>
      'يدعم نظام التشغيل macOS Sierra 10.12 ~ macOS Monterey 12 (الشاشة الأساسية HD 515 تدعم رسميًا نظام التشغيل macOS Monterey 12 فقط، بينما تدعم النسخة المزيفة أحدث إصدار من نظام التشغيل macOS Sequoia 15)';

  @override
  String get autoGen5202 =>
      'يدعم macOS Sierra 10.12 ~ macOS Monterey 12 (الشاشة الأساسية Iris 540 تدعم رسميًا macOS Monterey 12 فقط، والنسخة المزيفة تدعم أحدث macOS Sequoia 15)';

  @override
  String get autoGen5203 =>
      'يدعم macOS Sierra 10.12 ~ macOS Monterey 12 (الشاشة الأساسية Iris 550 تدعم رسميًا macOS Monterey 12 فقط، والنسخة المزيفة تدعم أحدث macOS Sequoia 15)';

  @override
  String get autoGen5204 =>
      'يدعم نظام التشغيل macOS Sierra 10.12 ~ macOS Monterey 12 (الشاشة الأساسية HD530 تدعم رسميًا نظام التشغيل macOS Monterey 12 فقط، بينما يدعم الجهاز المزيف أحدث إصدار من نظام التشغيل macOS Sequoia 15)';

  @override
  String get autoGen5205 =>
      'دعم نظام التشغيل MacOS High Sierra 10.13 ~ نظام التشغيل MacOS Ventura 13';

  @override
  String get autoGen5206 =>
      'دعم نظام التشغيل MacOS Mojave 10.14 ~ نظام التشغيل MacOS Sequoia 15';

  @override
  String get autoGen5207 =>
      'دعم نظام التشغيل MacOS كاتالينا 10.15 ~ نظام التشغيل MacOS Tahoe 26';

  @override
  String get autoGen5208 =>
      'دعم نظام التشغيل MacOS Catalina 10.15 ~ نظام التشغيل MacOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'يدعم macOS 10.9 ~ macOS Monterey 12، مناسب لنماذج الرسومات المستقلة فقط';

  @override
  String get autoGen5210 =>
      'يدعم نظام التشغيل macOS 10.13 ~ macOS Sequoia 15. ينطبق على نماذج الرسومات المستقلة فقط. بالنسبة للجيل الحادي عشر من Intel وما فوق، يتم استخدام هذا النموذج عادةً. يعد تحويل تردد وحدة المعالجة المركزية وتردد التربو أمرًا طبيعيًا، ولا حاجة إلى تصحيح Kext إضافي (إذا لم يكن التردد التربو لنظام macOS طبيعيًا، فيرجى استخراج SSDT-PLUG الأصلي واستخدامه)';

  @override
  String get autoGen5211 =>
      'يدعم نظام التشغيل macOS 10.15 ~ macOS Tahoe 26، وهو مناسب لنماذج الرسومات المستقلة ذات البطاقة A. ستدعم بطاقات A المدعومة الخالية من برامج التشغيل (مثل RX560 وRX570 وRX5500 وRX6600) فك التشفير الثابت VDA بشكل مثالي. بالنسبة للجيل الحادي عشر من Intel وما فوق، يتم استخدام هذا النموذج عادةً، والتردد التوربيني لوحدة المعالجة المركزية ليس طبيعيًا، ويلزم تصحيح Kext إضافي. يمكنك الانتقال إلى [برنامج تشغيل Kexts الاختياري]->[متعلق بوحدة المعالجة المركزية]->[برنامج تشغيل التردد المتغير لوحدة المعالجة المركزية، يوفر بشكل أساسي الجيل الحادي عشر وما فوق من دعم تحويل التردد MacPro7,1] للتحقق من هذا الخيار.';

  @override
  String get autoGen5212 => 'لم يتم تكوين نطاق توافق macOS';

  @override
  String get autoGen5213 => 'يجب أن يتكون معرف الجهاز من 4 أحرف';

  @override
  String get autoGen5214 =>
      'تمكين التبديل الرئيسي لتصحيح المخزن المؤقت لإطار العرض الأساسي (Frambuffer).';

  @override
  String get autoGen5215 =>
      'قم بتعديل ذاكرة الفيديو إلى 1536 ميجا (ذاكرة فيديو 1.5 جيجا، القيمة الافتراضية الرسمية لشركة Apple، مناسبة لمنصات عرض Intel الأساسية من الجيل الثالث إلى العاشر)';

  @override
  String get autoGen5216 =>
      'قم بتعديل ذاكرة الفيديو إلى 2048 ميجا (ذاكرة فيديو 2 جيجا، القيمة الافتراضية للأداة، مناسبة لمنصات عرض Intel الأساسية من الجيل الثالث إلى العاشر)';

  @override
  String get autoGen5217 =>
      'قم بتعديل ذاكرة الفيديو إلى 3072M (ذاكرة فيديو 3G، مناسبة لمنصات عرض Intel الأساسية من الجيل الثالث إلى العاشر)';

  @override
  String get autoGen5218 =>
      'قم بتعديل ذاكرة الفيديو إلى 4095M (ذاكرة فيديو 4G، مناسبة لمنصات عرض Intel الأساسية من الجيل الثالث إلى العاشر)';

  @override
  String get autoGen5219 =>
      'إصلاح مشكلة طمس الشاشة عالية الدقة 1080P على منصة Haswell من الجيل الرابع (على سبيل المثال، قد يكون طمس الشاشة عالي الدقة لأن القيمة ليست كبيرة بما يكفي. هذا التصحيح هو تصحيح مخصص لشاشة Haswell الأساسية. يوصى باستخدام هذا التكوين لشاشات 1080P والشاشات أدناه)';

  @override
  String get autoGen5220 =>
      'إصلاح مشكلة الشاشات عالية الدقة مثل 2K و4K على منصة Haswell من الجيل الرابع (على سبيل المثال، قد تكون الشاشة عالية الدقة غير واضحة لأن القيمة ليست كبيرة بما يكفي. هذا التصحيح عبارة عن تصحيح مخصص لشاشة Haswell الأساسية. يوصى باستخدام هذا التكوين لشاشات 2K و4K)';

  @override
  String get autoGen5221 => 'تصحيح مرشح شاشة Ivy Bridge عالي الدقة';

  @override
  String get autoGen5222 => 'تمكين تصحيح واجهة con0';

  @override
  String get autoGen5223 => 'تمكين تصحيح واجهة con1';

  @override
  String get autoGen5224 => 'تمكين تصحيح واجهة con2';

  @override
  String get autoGen5225 => 'تمكين تصحيح واجهة con3';

  @override
  String get autoGen5226 => 'تصحيح واجهة مرشح الشاشة عالية الدقة Ivy Bridge';

  @override
  String get autoGen5227 =>
      'شاشة كمبيوتر محمول Sandy Bridge عالية الدقة (دقة 1600 × 900 وما فوق).';

  @override
  String get autoGen5228 =>
      'تصحيحات اختيارية لأجهزة الكمبيوتر المحمولة Ironlake/Arrandale';

  @override
  String get autoGen5229 =>
      'إصلاح حل شاشة HDMI عالية الدقة بمعدل 60 إطارًا في الثانية (في بعض الحالات، قد تستخدم شاشة Intel الأساسية معيار HDMI 1.4 افتراضيًا. قم بتمكين هذه المعلمة لإجبار HDMI 2.0 على دعم دقة أعلى ومعدل تحديث، مثل دعم 4K@60HZ)';

  @override
  String get autoGen5230 =>
      'إصلاح إخراج صوت HDMI (عادةً ما تكون هناك حاجة إلى حمض مناسب فقط، ويمكن لهذه المعلمة في بعض الأحيان حل مشكلة إخراج صوت HDMI الصحيح)';

  @override
  String get autoGen5231 =>
      'قم بتعطيل تصحيح تحويل DP إلى HDMI للصوت الرقمي (يضمن استقرار وموثوقية اتصال HDMI عندما تكون واجهة DisplayPort متصلة بواجهة HDMI من خلال محول)';

  @override
  String get autoGen5232 =>
      'فرض حالة الاتصال بالإنترنت على جميع الشاشات، وهو أمر مفيد لإخراج الشاشات المتعددة للشاشة الأساسية. في بعض الحالات، يمكن تجنب مشكلات مثل ظهور شاشة سوداء بعد الاستيقاظ من النوم أو الحاجة إلى توصيل كابل الشاشة وفصله لإضاءة الشاشة عند بدء التشغيل (ينطبق عادةً على شاشات Coffee Lake من الجيل الثامن وما فوقها)';

  @override
  String get autoGen5233 =>
      'تحسين أداء العرض الأساسي (على سبيل المثال: إصلاح مشكلة ترميز 4K hevc للشاشة الأساسية ودقتها وعدم وصول الإطارات في الثانية إلى القيم المثالية)';

  @override
  String get autoGen5234 =>
      'تمكين تحميل البرامج الثابتة الكاملة للشاشة الأساسية، وتحسين استخدام الشاشة الأساسية، وتحسين أداء الشاشة الأساسية. قد تؤدي إضافة هذه المعلمة إلى عدم قدرة النظام على الدخول، لذا استخدمه بحذر';

  @override
  String get autoGen5235 =>
      'تم إصلاح مشكلة الحلقة اللانهائية التي تسببها شاشة Skylake الأساسية من الجيل السادس وشاشة Kaby Lake الأساسية من الجيل السابع وبرنامج تشغيل شاشة Coffee Lake الأساسية من الجيل الثامن عند محاولة إضاءة شاشة HDMI خارجية عالية الدقة (تتمثل الأعراض المحددة في أنه بعد توصيل كابل HDMI، تتحول الشاشة الداخلية للكمبيوتر المحمول إلى اللون الأسود ولكنها تحتوي على إضاءة خلفية، ويصبح النظام غير مستجيب، ولا يوجد أي إخراج على الشاشة الخارجية)';

  @override
  String get autoGen5236 =>
      'إصلاح مشكلة تعطل kernel الناتجة عن انخفاض تردد ساعة العرض الأساسية (CDCLK) على منصة Ice Lake من الجيل العاشر';

  @override
  String get autoGen5237 =>
      'تم إصلاح عطل kernel على منصة Ice Lake من الجيل العاشر بسبب قيام السائق بحساب حجم ذاكرة DVMT المخصص مسبقًا بشكل غير صحيح';

  @override
  String get autoGen5238 =>
      'اضبط إعدادات Brightness Slider (Brightness Slider) لجعل التحولات أكثر سلاسة وطبيعية لتحسين تجربة المستخدم';

  @override
  String get autoGen5239 =>
      'تم إصلاح مشكلة ظهور شاشة داكنة لمدة 3 دقائق بعد بدء التشغيل على أجهزة الكمبيوتر المحمولة التي تعمل بنظام التشغيل macOS 13.4 أو أعلى على منصات الجيل السابع من Kaby Lake والجيل الثامن والجيل التاسع من Coffee Lake.';

  @override
  String get autoGen5240 =>
      'تم إصلاح مشكلة ظهور شاشة داكنة على أجهزة الكمبيوتر المحمولة التي تعمل بنظام التشغيل macOS 13.3 والإصدارات الأقدم على الجيل السابع من منصات Kaby Lake والجيل الثامن والجيل التاسع من Coffee Lake، لمدة 3 دقائق بعد التشغيل.';

  @override
  String get autoGen5241 =>
      'تم إصلاح مشكلة استمرار الشاشة على منصة الجيل العاشر من Ice Lake لمدة تتراوح من 7 إلى 15 ثانية عند تشغيل الكمبيوتر الدفتري';

  @override
  String get autoGen5242 =>
      'تم إصلاح مشكلة أن شاشة العرض HDMI عالية الدقة من الجيل العاشر من Ice Lake الأساسية ستحتوي على شاشة سوداء، ولا توجد إشارة، ولا يمكن إخراج الدقة بشكل صحيح في 4K عند 60 هرتز وبعض سيناريوهات التحديث العالية 2K/4K (مجبرة على تمكين \"تجاوز الحد الأقصى لساعة البكسل\" للشاشة الأساسية (IGPU))';

  @override
  String get autoGen5243 =>
      'يستخدم لإصلاح تأثيرات خلل العرض النووي أو مشاكل الشاشة الوامضة (مثل العرض النووي HD530)';

  @override
  String get autoGen5244 =>
      'قم بتعطيل الشاشة المستقلة (عادة عندما لا يمكن تشغيل الشاشة المستقلة للكمبيوتر المحمول ثنائي الرسومات، يجب تعطيل الشاشة المستقلة)';

  @override
  String get autoGen5245 =>
      'تم إصلاح مشكلة أجهزة الكمبيوتر المحمولة (مثل Dell XPS 15 9570 وغيرها من أجهزة الكمبيوتر المحمولة ذات الشاشة عالية الدقة) حيث تقوم الشاشة الداخلية للشاشة عالية الدقة بإرجاع قيمة الحد الأقصى لمعدل الارتباط الخاطئة، مما يؤدي إلى تعطل مباشر عند إضاءة الشاشة الداخلية (يوصى بتحديد هذا المربع لأجهزة الكمبيوتر المحمولة ذات الشاشة عالية الدقة)';

  @override
  String get autoGen5246 =>
      'أدخل الشاشة EDID في واجهة AAPL00 (عادةً الشاشة الداخلية للكمبيوتر المحمول) لإصلاح مشكلة الشاشة السوداء للواجهة (ملاحظة: تحتاج إلى إدخال الشاشة EDID في صفحة تكوين EDID أولاً! يمكنك ملء EDID في الأداة \"تكوين العرض\" -> \"عرض EDID\". بالنسبة للوحات الأم من سلسلة 500 مثل B560، عند إصلاح مخرج HDMI، يجب عليك حقن الشاشة EDID، وإلا فهناك احتمال كبير لظهور شاشة سوداء في بعض الأحيان، بالنسبة لمنصات Intel الأخرى، قد يتم إصلاح مشكلة الشاشة غير الواضحة أو الشاشة الأرجوانية أو الشاشة السوداء.';

  @override
  String get autoGen5247 =>
      'أدخل شاشة EDID في واجهة AAPL01 لإصلاح الشاشة السوداء وعدم وجود مشكلة في عرض الواجهة (ملاحظة: تحتاج إلى إدخال شاشة EDID في صفحة تكوين EDID أولاً! يمكنك ملء EDID في أداة \"تكوين العرض\" -> \"عرض EDID\". يجب أن تقوم اللوحات الأم من سلسلة 500 مثل B560 بحقن EDID للشاشة عند إصلاح مخرج HDMI، وإلا فهناك احتمال كبير لظهور شاشة سوداء في بعض الأحيان، بالنسبة لمنصات Intel الأخرى، قد يتم إصلاح مشكلة شاشة العرض الأساسية غير الواضحة أو الشاشة الأرجوانية أو السوداء.';

  @override
  String get autoGen5248 =>
      'أدخل شاشة EDID في واجهة AAPL02 لإصلاح الشاشة السوداء وعدم وجود مشكلة في عرض الواجهة (ملاحظة: تحتاج إلى إدخال شاشة EDID في صفحة تكوين EDID أولاً! يمكنك ملء EDID في أداة \"تكوين العرض\" -> \"عرض EDID\". يجب أن تقوم اللوحات الأم من سلسلة 500 مثل B560 بحقن EDID للشاشة عند إصلاح مخرج HDMI، وإلا فهناك احتمال كبير لظهور شاشة سوداء في بعض الأحيان، بالنسبة لمنصات Intel الأخرى، قد يتم إصلاح مشكلة شاشة العرض الأساسية غير الواضحة أو الشاشة الأرجوانية أو السوداء.';

  @override
  String get autoGen5249 =>
      'تمكين دعم LSPCON وتحويل DisplayPort إلى مخرج HDMI 2.0 (يتطلب محول إشارة LSPCON منفذ 0~3، مناسب لمنصات الجيل السادس من Skylake ~ الجيل العاشر من Comet Lake وIce Lake Intel)';

  @override
  String get autoGen5250 => 'محول إشارة LSPCON للمنفذ 0 (يجب تمكين دعم LSPCON)';

  @override
  String get autoGen5251 => 'محول إشارة LSPCON للمنفذ 1 (يجب تمكين دعم LSPCON)';

  @override
  String get autoGen5252 => 'محول إشارة LSPCON للمنفذ 2 (يجب تمكين دعم LSPCON)';

  @override
  String get autoGen5253 => 'محول إشارة LSPCON للمنفذ 3 (يجب تمكين دعم LSPCON)';

  @override
  String get autoGen5254 =>
      'قم بتعديل ذاكرة مخزن الإطارات المؤقت إلى 9M (سيؤثر حجم ذاكرة مخزن الإطارات المؤقت على الشاشات عالية الدقة، والتي تستخدم عادةً مع ذاكرة الإطارات المسروقة)';

  @override
  String get autoGen5255 =>
      'قم بتعديل الذاكرة المسروقة إلى 19 ميجا (ينطبق على شاشة 1080 بكسل، القيمة الافتراضية للأداة، لا حاجة للتحقق. إذا كانت هناك معلمة DVMT في BIOS، فمن المستحسن تعديلها إلى 64 ميجا. إذا تم تغيير معلمة DVMT في BIOS، فيمكن إزالة هذه المعلمة)';

  @override
  String get autoGen5256 =>
      'قم بتعديل الذاكرة المسروقة إلى 64 ميجا (ينطبق على شاشات 2k أو 4k. إذا كانت هناك معلمة DVMT في BIOS، فمن المستحسن تعديلها إلى 64M أو أعلى. إذا تم تغيير معلمة DVMT في BIOS، فيمكن إزالة هذه المعلمة)';

  @override
  String get autoGen5257 =>
      'قم بتعديل الذاكرة المسروقة إلى 128 ميجا (ينطبق على شاشات 4K. إذا كانت هناك معلمة DVMT في BIOS، فمن المستحسن تعديلها إلى 128 ميجا أو 256 ميجا أو أعلى للشاشات عالية الدقة. إذا تم تغيير معلمات DVMT في BIOS، فيمكن إزالة هذه المعلمة)';

  @override
  String get autoGen5258 => 'تمكين منفذ HDMI con0 (يتطلب واجهة HDMI رقم 0)';

  @override
  String get autoGen5259 =>
      'واجهة HDMI رقم 0، تستخدم لإصلاح مشكلة الشاشة السوداء للجيل السادس إلى العاشر من HDMI (تحتاج إلى تمكين منفذ con0 HDMI)';

  @override
  String get autoGen5260 => 'تمكين منفذ HDMI con1 (يتطلب واجهة HDMI رقم 1)';

  @override
  String get autoGen5261 =>
      'واجهة HDMI رقم 1، تستخدم لإصلاح مشكلة الشاشة السوداء للجيل السادس إلى العاشر من HDMI (تحتاج إلى تمكين منفذ con1 HDMI)';

  @override
  String get autoGen5262 => 'تمكين منفذ HDMI con2 (يتطلب واجهة HDMI رقم 2)';

  @override
  String get autoGen5263 =>
      'واجهة HDMI رقم 2، تستخدم لإصلاح مشكلة الشاشة السوداء للجيل السادس إلى العاشر من HDMI (تحتاج إلى تمكين منفذ con2 HDMI)';

  @override
  String get autoGen5264 => 'ذاكرة الفيديو/معلمات DVMT';

  @override
  String get autoGen5265 => 'الجيل الرابع من هاسويل معلمات محددة';

  @override
  String get autoGen5266 =>
      'التصحيح المرشح للشاشة عالية الدقة من الجيل الثالث من Ivy Bridge';

  @override
  String get autoGen5267 =>
      'الجيل الثاني من تصحيح الشاشة المرشح عالي الدقة لـ Sandy Bridge';

  @override
  String get autoGen5268 =>
      'تصحيح المرشح للجيل الأول من أجهزة الكمبيوتر المحمولة Arrandale';

  @override
  String get autoGen5269 => 'إصلاح واجهة HDMI/';

  @override
  String get autoGen5270 => 'إصلاح بحيرة الجليد من الجيل العاشر';

  @override
  String get autoGen5271 => 'الإصلاح العالمي';

  @override
  String get autoGen5272 =>
      'تصحيح شاشة الكمبيوتر المحمول Ivy Bridge عالية الدقة (1600 × 900 وما فوق).';

  @override
  String get autoGen5273 =>
      'تمكين تصحيح تصحيح نوع HDMI لواجهة con0 لإصلاح شاشة HDMI السوداء من الجيل السادس إلى العاشر والشاشة الأرجوانية ومشاكل الصوت';

  @override
  String get autoGen5274 =>
      'تمكين تصحيح تصحيح نوع HDMI لواجهة con1 لإصلاح شاشة HDMI السوداء من الجيل السادس إلى العاشر والشاشة الأرجوانية ومشاكل الصوت';

  @override
  String get autoGen5275 =>
      'تمكين تصحيح تصحيح نوع HDMI لواجهة con2 لإصلاح الجيل السادس إلى العاشر من شاشة HDMI السوداء والشاشة الأرجوانية ومشاكل الصوت';

  @override
  String get autoGen5276 =>
      'خطأ في تنسيق alc_codec.json: يجب أن تكون العقدة الجذرية Map<String,dynamic>';

  @override
  String get autoGen5277 =>
      'قم بتمكين -v لتشغيل الكود (ملائم لتحديد الأخطاء عندما يكون الكود عالقًا، ومناسب لمرحلة تصحيح الأخطاء والتمهيد)';

  @override
  String get autoGen5278 =>
      'من السهل على نظام Mac طباعة المزيد من معلومات الرمز عند حدوث عطل في kernel، وهو أمر مفيد في استكشاف المشكلات وإصلاحها. تُستخدم هذه المعلمة عادةً مع debug=0x100 (يوصى بشدة بالتحقق منها عند تصحيح الأخطاء والتمهيد لأول مرة)';

  @override
  String get autoGen5279 =>
      'منع إعادة التشغيل التلقائي عند تعطل النواة، مما يسهل عرض سجلات الأعطال الذعرية (يوصى بشدة بالتحقق من ذلك عند تصحيح الأخطاء والتمهيد لأول مرة)';

  @override
  String get autoGen5280 =>
      'قم بتعطيل وظيفة المراقبة لمنع التشغيل غير المقصود لإعادة تشغيل حالة الذعر (ينطبق على تصحيح الأخطاء)';

  @override
  String get autoGen5281 =>
      'قم بتعطيل التوزيع العشوائي لمساحة عنوان kernel (KASLR) للتأكد من تحميل kernel و kext (امتداد kernel) في نفس خريطة الذاكرة الثابتة لتجنب تعطل kernel عند بدء التشغيل المبكر الناجم عن تعارضات الذاكرة الناتجة عن قيم الشرائح العشوائية (ينطبق على تصحيح أخطاء التمهيد)';

  @override
  String get autoGen5282 =>
      'تخطي فحص النموذج أثناء بدء تشغيل macOS لأول مرة لتجنب رموز الحظر بسبب انخفاض SMBIOS أو ارتفاعه جدًا، والتأكد من إمكانية تشغيل النظام بشكل طبيعي (لاحظ أن هذه المعلمة لا يمكنها تخطي التحقق من النموذج أثناء التثبيت. ستظهر رسالة مشابهة لـ \"macOS غير مدعوم\" أثناء التثبيت. في هذا الوقت، يمكنك تغيير SMBIOS إلى مستوى أعلى أو أقل لدعم النظام الجديد أو القديم)';

  @override
  String get autoGen5283 =>
      'تنطبق هذه المعلمة على تعطيل AMFI، وبطاقات الرسومات الجديدة نسبيًا (مثل HD4000 وما فوق، وGT710 وأنوية Kepler الأخرى وما فوق) أو برامج تشغيل WiFi. لاحظ عدم استخدامه مع المعلمة amfi_get_out_of_my_way=0x1 في نفس الوقت! (لن تصبح هذه المعلمة نافذة المفعول إلا إذا تم تعطيل SIP، وستتم إزالة هذه المعلمة تلقائيًا بعد تمكين SIP)';

  @override
  String get autoGen5284 =>
      'تأكد من إمكانية تمكين AMFIPass.kext وتنشيطه بشكل صحيح في أحدث نظام macOS Tahoe 26 من أجل الاستمرار في تجاوز فحوصات أمان AMFI (AMFI معطل). (ملاحظة: 1. لا يمكن استخدام هذه المعلمة في نفس الوقت مع تعطيل معلمة AMFI، ويجب استخدام هذه المعلمة مع AMFIPass.kext. 2. عادةً ما يتم استخدام هذه المعلمة فقط في أحدث الأنظمة، ولا تقم بإضافتها إلا إذا لزم الأمر)';

  @override
  String get autoGen5285 =>
      'تنطبق هذه المعلمة عند تعطيل AMFI أو استخدام الأنظمة الأساسية القديمة أو بطاقات الرسومات القديمة (مثل GT240) أو برامج تشغيل WiFi. لاحظ عدم استخدام المعلمة amfi=0x80 في نفس الوقت! (لا يسري مفعوله إلا عند تعطيل SIP، وتتم إزالة هذه المعلمة تلقائيًا بعد تمكين SIP)';

  @override
  String get autoGen5286 =>
      'تم إصلاح مشكلة تعطل بعض التطبيقات (على سبيل المثال: Baidu Netdisk) بعد تعطيل AMFI (لن يسري مفعوله إلا إذا تم تعطيل SIP، وستتم إزالة هذه المعلمة تلقائيًا بعد تمكين SIP)';

  @override
  String get autoGen5287 =>
      'إصلاح المشكلات التي قد تحدث في أحدث نظام (الإصدار التجريبي بشكل أساسي) (استثناء برنامج تشغيل النظام، مثل: خلل مفاجئ في بطاقة الصوت، والبلوتوث، وتردد وحدة المعالجة المركزية، وما إلى ذلك. يوصى بشدة بالتحقق من ذلك عند تجربة أحدث إصدار من النظام)';

  @override
  String get autoGen5288 =>
      'تمكين نواة وحدة المعالجة المركزية (CPU) واحدة فقط (ينطبق على X58 وX79 وX99 وX299 وغيرها من حالات الأعطال الأساسية لوحدة المعالجة المركزية للخادم متعدد النواة والتثبيت المبكر ومراحل تصحيح الأخطاء)';

  @override
  String get autoGen5289 =>
      'قم بإيقاف تشغيل VT-d (قم بتعطيل IOMMU، يمكنك التحقق من ذلك عندما لا يقوم BIOS بإيقاف تشغيل VT-d) لحل مشكلة تعطل بعض اللوحات الأم بعد بدء النظام أو الدخول إليه.';

  @override
  String get autoGen5290 =>
      'قم بتعطيل تحميل البرامج الثابتة لرسومات Apple لتجنب التعطل بسبب فشل تحميل البرامج الثابتة أو إعادة المحاولة أثناء بدء التشغيل (ينطبق فقط على رسومات Intel)';

  @override
  String get autoGen5291 =>
      'تعطيل شاشة Intel الأساسية (يوصى بالتحقق من عدم إمكانية تشغيل الشاشة الأساسية وعدم دعم فك التشفير الثابت المتسارع)';

  @override
  String get autoGen5292 =>
      'تعطيل الرسومات المستقلة (عادةً عندما لا يمكن تشغيل بطاقة الرسومات المستقلة للكمبيوتر المحمول ذات الرسومات المزدوجة من Intel [تُستخدم عادةً في بطاقات N]، فمن المستحسن التحقق من ذلك)';

  @override
  String get autoGen5293 =>
      'تعطيل برنامج تشغيل NVIDIA (ينطبق فقط عند تصحيح أخطاء بطاقات N غير المتوافقة)';

  @override
  String get autoGen5294 =>
      'تعطيل تسريع رسومات Intel الأساسية (على سبيل المثال: عند استخدام OCLP وعدم القدرة على البدء بشكل طبيعي بعد تصحيح تصحيح الرسومات الأساسية، يمكنك التحقق من ذلك، لا يوجد تسريع، فقط لتصحيح الأخطاء)';

  @override
  String get autoGen5295 =>
      'إصلاح وتحسين أداء شاشة Intel الأساسية (على سبيل المثال: إصلاح مشكلة ترميز الشاشة الأساسية 4K hevc والدقة وعدم وصول الإطارات في الثانية إلى القيم المثالية)';

  @override
  String get autoGen5296 =>
      'تم إصلاح مشكلة الحد الأقصى لقيمة معدل الارتباط لشاشة Intel الأساسية، والتي تسببت في تعطل مباشر عند تشغيل الشاشة ((خاصة على Skylake وKaby Lake وCoffee Lake وComet Lake والشاشة السوداء وعدم وجود إشارة، وعدم الوصول إلى دقة 4K المتوقعة، وما إلى ذلك)';

  @override
  String get autoGen5297 =>
      'إصلاح مشكلة دقة الشاشة الأساسية، وفرض تمكين \"تجاوز الحد الأقصى لساعة البكسل\" لوحدة معالجة الرسوميات IGPU، ورفع الدقة الافتراضية ومعدل التحديث والقيود الأخرى لنظام التشغيل macOS';

  @override
  String get autoGen5298 =>
      'إصلاح مشكلة الشاشة السوداء بدقة 4K في إخراج HDMI لبعض أجهزة الكمبيوتر المحمولة (ينطبق عادةً على أجهزة الكمبيوتر المحمولة، مثل ThinkPad P71/7700HQ/HD630/4K العالق في `gIOScreenLockState3`)';

  @override
  String get autoGen5299 =>
      'إصلاح مشكلة تعطل kernel الناتجة عن انخفاض تردد ساعة العرض الأساسية (CDCLK) على منصة Ice Lake من الجيل العاشر';

  @override
  String get autoGen5300 =>
      'تم إصلاح مشكلة تعطل kernel على منصة Ice Lake من الجيل العاشر والتي كانت ناجمة عن قيام برنامج التشغيل بحساب حجم ذاكرة DVMT المخصص مسبقًا بشكل غير صحيح.';

  @override
  String get autoGen5301 =>
      'تم إصلاح مشكلة استمرار الشاشة على منصة الجيل العاشر من Ice Lake لمدة تتراوح من 7 إلى 15 ثانية عند تشغيل الكمبيوتر الدفتري';

  @override
  String get autoGen5302 =>
      'قم بتعطيل iGPU (الرسومات الأساسية) لتحميل وحدة القياس عن بعد أثناء عملية بدء التشغيل. قد تتسبب بعض أجهزة الكمبيوتر المحمولة (خاصة أجهزة Chromebook) في تجميد النظام أو تجميده أثناء مرحلة بدء التشغيل عند تحميل هذه الوحدة (ينطبق على أجهزة الكمبيوتر المحمولة Intel Skylake من الجيل السادس وما فوق)';

  @override
  String get autoGen5303 =>
      'إصلاح سجل الإضاءة الخلفية على نظام التشغيل macOS Ventura 13.4 والإصدارات الأقدم، والجيل السابع من KBL، ومنصات الكمبيوتر المحمول من الجيل الثامن والتاسع CFL، وإصلاح مشكلة الشاشة السوداء أو الشاشة المظلمة التي تستمر لمدة 3 دقائق (ينطبق على أجهزة الكمبيوتر المحمولة)';

  @override
  String get autoGen5304 =>
      'إصلاح سجل الإضاءة الخلفية على نظام التشغيل macOS Ventura 13.4 والإصدارات الأحدث، والجيل السابع من KBL، ومنصات الكمبيوتر المحمول من الجيل الثامن والتاسع CFL، وإصلاح مشكلة الشاشة السوداء أو الشاشة المظلمة التي تستمر لمدة 3 دقائق (ينطبق على أجهزة الكمبيوتر المحمولة)';

  @override
  String get autoGen5305 =>
      'اضبط إعدادات شريط تمرير السطوع (شريط تمرير السطوع) لجعل التحولات أكثر سلاسة وأكثر طبيعية لتحسين تجربة المستخدم (ينطبق على أجهزة الكمبيوتر المحمولة)';

  @override
  String get autoGen5306 =>
      'ارسم شعار Apple في مرحلة بدء التشغيل الثانية بدلاً من نسخ المخزن المؤقت للإطار. عند توصيل شاشة خارجية، انتقل بسلاسة من شريط التقدم إلى سطح مكتب تسجيل الدخول. وفي بعض الحالات يمكن إصلاح مشكلة الشاشة السوداء عند الدخول إلى النظام. وفي الوقت نفسه، من المفيد توصيل كابل الشاشة وفصله لتشغيل الشاشة.';

  @override
  String get autoGen5307 =>
      'إصلاح مشكلة بدء تكوين ACPI لبطاقات النظام الأساسي مثل X58،';

  @override
  String get autoGen5308 =>
      'إصلاح مشكلة بدء تكوين ACPI لبطاقات النظام الأساسي مثل X58،';

  @override
  String get autoGen5309 =>
      'مشكلة دعم إدارة الحقوق الرقمية للأجهزة الثابتة (DRM) على وحدات معالجة الرسومات AMD (تتيح تجربة المحتوى الرقمي المحمي بموجب إدارة الحقوق الرقمية، مثل مقاطع الفيديو عالية الجودة المقدمة من خدمات البث، على وحدات معالجة الرسومات AMD المدعومة)';

  @override
  String get autoGen5310 =>
      'تعطيل تسريع بطاقة الرسومات ATI وAMD (على سبيل المثال: عند استخدام OCLP ولا يمكن أن تبدأ بطاقة الرسومات بشكل طبيعي بعد التصحيح، يمكنك التحقق من عدم وجود تسريع، فقط لتصحيح الأخطاء)';

  @override
  String get autoGen5311 =>
      'إصلاح HD7750، HD7850 (النواة الرئيسية هي سلسلة GCN HD77XX، HD78XX، HD79XX) وغيرها من تشويه شاشة البطاقة القديمة، والشاشة الصفراء وغيرها من مشاكل العرض غير الطبيعية';

  @override
  String get autoGen5312 =>
      'إصلاح الشاشة السوداء أو مشاكل العرض غير الطبيعية التي قد تنتج عن بعض بطاقات الرسومات، مع تجاهل قيود أو إعدادات AppleGraphicsDevicePolicy.kext تمامًا على بطاقة الرسومات. عندما لا تكون متأكدًا من القيود المحددة، تجنب مشكلات العرض أو ظواهر الشاشة السوداء الناتجة عن تكوينات الأجهزة غير المتوافقة (مثل معرف اللوحة المحدد). انتبه إلى هذه المعلمة، والتي لن تصبح سارية المفعول إلا عند استخدامها مع WhatGreen.kext. بالنسبة لبطاقات A الأصلية الخالية من برامج التشغيل، يمكنك إزالة برنامج التشغيل WhatGreen.kext، لذلك لا يلزم إضافة هذه المعلمة.';

  @override
  String get autoGen5313 =>
      'قم بإصلاح مشكلة الشاشة السوداء عند بدء تشغيل بطاقات الرسومات من سلسلة AMD Navi core RX5XXX وRX6XXX (على سبيل المثال: RX5500 وRX5600 وRX5700 وRX6600 وRX6800 وRX6900 وما إلى ذلك)، واستبدل معرف اللوحة بـ board-ix، وتجاوز بعض قيود AppleGraphicsDevicePolicy. ملاحظة: 1. لن يصبح ساري المفعول إلا عند استخدامه مع WhatGreen.kext. 2. BIOS قم بإيقاف تشغيل المنفذ التسلسلي/COM في إعدادات SuperIO. بالنسبة لبطاقات A الأصلية الخالية من برامج التشغيل، يمكنك إزالة برنامج التشغيل WhatGreen.kext، لذلك لا يلزم إضافة هذه المعلمة.';

  @override
  String get autoGen5314 =>
      'إصلاح مشكلة الشاشة السوداء بعد الاستيقاظ من النوم لبعض بطاقات الرسوميات مثل RX470 وRX570، وتعطيل فحص معرف اللوحة في AppleGraphicsDevicePolicy، وإصلاح مشاكل الشاشة السوداء أو العرض غير الطبيعي التي قد تكون ناجمة عن بعض بطاقات الرسوميات. لاحظ أن هذه المعلمة لن تصبح نافذة المفعول إلا عند استخدامها مع WhatGreen.kext. بالنسبة لبطاقات A الأصلية الخالية من برامج التشغيل، يمكن إزالة برنامج التشغيل WhatGreen.kext، لذلك لا يلزم إضافة هذه المعلمة.';

  @override
  String get autoGen5315 =>
      'إصلاح الجيل الثالث من Intel والأنظمة الأساسية AMD RX5XX (على سبيل المثال: سلسلة RX560 وRX570 وRX580) وAMD RX5XXX وRX6XXX (على سبيل المثال: RX5500 وRX6600) تحتوي بطاقات الرسومات الخالية من برامج التشغيل على مشكلة شاشة سوداء في أنظمة Ventura والأنظمة الأحدث (ملاحظة: تحتاج إلى استخدام OCLP لتصحيح بطاقة الرسومات بعد دخول النظام! بعد تصحيح بطاقة الرسومات، قم بإزالة معلمة التمهيد أو استخدمها التكوين البديل بعد النشر في دليل EFI لإعادة تسمية التكوين وإعادة التشغيل لتشغيل بطاقة الرسومات!)';

  @override
  String get autoGen5316 =>
      'إصلاح بطاقات رسومات AMD غير المدعومة رسميًا (على سبيل المثال: RX550 Lexa core) لدعم تشفير فيديو أجهزة VDA';

  @override
  String get autoGen5317 =>
      'إصلاح بطاقة N القديمة لبنية Fermi وMaxwell وPascal (على سبيل المثال: GT610 وGTX750 وGTX960 وGTX1050) مشكلة برنامج تشغيل بطاقة رسومات النظام BigSur 11 أو أعلى (ملاحظة: تحتاج إلى استخدام OCLP لتصحيح بطاقة الرسومات بعد الدخول إلى النظام!!! هذه المعلمة غير مطلوبة لـ Kepler core!!!)';

  @override
  String get autoGen5318 =>
      'تم إصلاح مشكلة السرعة البطيئة لبعض بطاقات الشبكة اللاسلكية من Broadcom (قم بتغيير رمز بلد Broadcom WiFi إلى هونج كونج، ويمكنك أيضًا تغيير قناة جهاز التوجيه لتحسينه)';

  @override
  String get autoGen5319 => 'إصلاح رمز صارم، مشكلة تلف محاكاة SMC';

  @override
  String get autoGen5320 =>
      'قم بإصلاح مشكلة تحديث OTA لنظام macOS بعد تعطيل SIP (حماية تكامل النظام) أو SecureBootModel (نموذج الأمان)، وإصلاح مشكلة عرض اسم وحدة المعالجة المركزية المخصصة';

  @override
  String get autoGen5321 =>
      'تجنب مشكلة إعادة تشغيل الجهاز بعد الدخول في وضع السكون، مما يسهل الحصول على سجلات أعطال kernel واستكشاف مشكلات السكون وإصلاحها.';

  @override
  String get autoGen5322 =>
      'تحسين تحديد الهيكل وجدولة معالجات Intel من الجيل الثاني عشر ووحدات المعالجة المركزية الكبيرة والصغيرة اللاحقة. تحسين الأداء غير مضمون. يوصى بتمكينه بعد الاختبار الفعلي (لاحظ أنه يجب استخدامه مع CpuTopologyRebuild.kext ليصبح ساري المفعول)';

  @override
  String get autoGen5323 =>
      'قم بتعطيل وضع Darkwake تمامًا واترك النظام يدخل في وضع السكون التقليدي. يتم استخدامه بشكل أساسي لإصلاح المشكلات مثل تنبيه الشاشة السوداء والتنشيط التلقائي.';

  @override
  String get autoGen5324 =>
      'قم بتعطيل وضع الاستعداد لعرض iGPU RC6 وإصلاح مشكلة ذعر NVMe kernel الناتج عن شاشة RC6 الأساسية أثناء النوم';

  @override
  String get autoGen5325 =>
      'قم بتمكين التحكم في الإضاءة الخلفية PWM لبطاقات الرسومات من سلسلة AMD Radeon RX 5000';

  @override
  String get autoGen5326 =>
      'إصلاح وتصحيح عرض إخراج واجهة DVI لبطاقات A القديمة (290X، 370، وما إلى ذلك)';

  @override
  String get autoGen5327 =>
      'إجبار لوحة اللمس من نوع I2C على العمل في وضع الاستقصاء بدلاً من الوضع القائم على المقاطعة (يتطلب وضع المقاطعة عادةً SSDT مخصصًا، وهو أمر معقد نسبيًا. في بعض الأحيان يمكن إصلاح مشكلة عدم إمكانية استخدام لوحة اللمس I2C (يجب استخدامها مع برنامج تشغيل VoodooI2C)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (قد تواجه بعض اللوحات الأم والبرامج الثابتة تعارضات أو مشكلات عدم توافق عند التعامل مع منطقة MMIO. يمكن أن يساعد تمكين هذا الخيار في حل هذه التعارضات وتحسين توافق النظام واستقراره. عادةً ما يتم دمج هذا الخيار مع إصدار OpenCore Debug لتخصيص MMIO لحل بطاقة EB الناتجة عن مشكلات الذاكرة في بعض اللوحات الأم (على سبيل المثال: بعض اللوحات الأم لمعالج سلسلة X58 وX79 وX99 وAMD 7000))';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (يوصى بالتحقق منه على البرامج الثابتة التي لا تدعم جدول سمات الذاكرة (MAT)، وخاصة البرامج الثابتة الخاصة بشركة OEM. بعد تشغيله، سيتم حذف الحماية ضد الكتابة في سجل CR0 أثناء التنفيذ لضمان الكتابة العادية لـ NVRAM. ينطبق هذا عادةً على الأنظمة الأساسية قبل الجيل السابع)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (تحمي خدمات UEFI من الكتابة فوقها بواسطة البرامج الثابتة، وتستخدم عادةً لإصلاح مشكلات بطاقة EB التي تسببها DevirtualiseMmio، وما إلى ذلك. يوصى بالتحقق من اللوحات الأم Z390 وZ490 والجيل العاشر من Ice Lake)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (ينشئ ذاكرة افتراضية مستمرة لاستخدام OC ويعينها للذاكرة الفعلية المشتتة. ملاحظة: لا يُنصح بتحديد هذا الخيار للوحات الأم من الجيل العاشر من Comet Lake ASUS وGigabyte وAsRock.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (في البرامج الثابتة التي تدعم جدول سمات الذاكرة (MAT)، يوصى بالتحقق منه. يتم استخدامه عادةً مع SyncRuntimePermissions. قد يتعارض هذا العنصر مع EnableWriteUnprotector. يوصى باختيار أحدهما. وعادة ما ينطبق على الأنظمة الأساسية بعد الجيل الثامن، وينطبق أيضًا على بعض الأنظمة الأساسية القديمة)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (يصلح مشكلة عدم قدرة الأجهزة على إدخال الأذونات عند حقن الذاكرة. بشكل عام، توجد هذه المشكلة في اللوحات الأم بعد عام 2018. إذا لم تتمكن من الدخول إلى Windows بسبب هذا الخيار، فيرجى تشغيله. يُستخدم هذا العنصر عادةً مع RebuildAppleMemoryMap)';

  @override
  String get autoGen5334 =>
      'وحدة المعالجة المركزية من الجيل الثاني - اللوحة الأم الهجينة من الجيل الثالث';

  @override
  String get autoGen5335 =>
      'وحدة المعالجة المركزية من الجيل الثالث - الجيل الثاني من اللوحة الأم الهجينة';

  @override
  String get autoGen5336 =>
      'أكمل التثبيت دون تشغيل الشاشة الأساسية في الوقت الحالي (وهذا يمكن أن يتجنب مشاكل الشاشة السوداء وتعطل kernel الناجمة عن مشكلة إطار المخزن المؤقت للشاشة الأساسية)';

  @override
  String get autoGen5337 => 'معرف الجهاز المزيف';

  @override
  String get autoGen5338 =>
      'يتم استخدام الشاشة الأساسية فقط لمهام التسريع والحساب، وليس كشاشة عرض الإخراج (شاشة إخراج بطاقة الرسومات المستقلة)';

  @override
  String get autoGen5339 => 'HD3000، HD P3000 وشاشات العرض الأساسية الأخرى';

  @override
  String get autoGen5340 => 'HD4000، HD P4000 وشاشات العرض الأساسية الأخرى';

  @override
  String get autoGen5341 =>
      'HD4400، HD4600، HD P4600 وشاشات العرض الأساسية الأخرى';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 وشاشات العرض الأساسية الأخرى';

  @override
  String get autoGen5343 => 'شاشة HD5600 الأساسية (P6200، P6300 يمكن تزويرها)';

  @override
  String get autoGen5344 => 'HD6000 وIris 6100 وشاشات العرض الأساسية الأخرى';

  @override
  String get autoGen5345 =>
      'HD520، HD530 وشاشات العرض الأساسية HD620 المزيفة الأخرى (تنطبق على أنظمة Ventura والأنظمة الأحدث)';

  @override
  String get autoGen5346 =>
      'HD520، HD530 وشاشات العرض الأساسية HD620 المزيفة الأخرى (تنطبق على أنظمة Ventura والأنظمة الأعلى، البديلة)';

  @override
  String get autoGen5347 =>
      'HD530، HD P530 وشاشات العرض الأساسية الأخرى من سلسلة 500 (تنطبق على أنظمة مونتيري والأنظمة أدناه)';

  @override
  String get autoGen5348 => 'HD 630، HD P630 وشاشات العرض الأساسية الأخرى';

  @override
  String get autoGen5349 =>
      'شاشات HD 630 وP630 وغيرها من شاشات UHD630 الأساسية المزيفة (الخيار 1)';

  @override
  String get autoGen5350 =>
      'شاشات HD 630 وP630 وغيرها من شاشات UHD630 الأساسية المزيفة (الخيار 2)';

  @override
  String get autoGen5351 => 'UHD 630 حل إخراج العرض النووي واحد';

  @override
  String get autoGen5352 => 'UHD 630 حالة إخراج العرض الأساسية 2';

  @override
  String get autoGen5353 =>
      'Intel HD Graphics (على سبيل المثال: i3 380M، i5 480M يأتي مزودًا بشاشة عرض أساسية مدمجة)';

  @override
  String get autoGen5354 =>
      'شاشة عرض إخراج HD3000 الأساسية، مناسبة لدقة 1366 × 768 وأدناه)';

  @override
  String get autoGen5355 => 'تمكين الدعم للقرارات فوق 1600X900';

  @override
  String get autoGen5356 =>
      'شاشة عرض نووية HD3000، مناسبة لدقة 1600 × 900 وما فوق)';

  @override
  String get autoGen5357 =>
      'الحل الأول لبرنامج تشغيل العرض الأساسي HD4000، مناسب لدقة 1366 × 768 وأقل، طريقة ربط LVDS';

  @override
  String get autoGen5358 =>
      'الحل الثاني لبرنامج تشغيل العرض الأساسي HD4000، مناسب لوضع رابط LVDS بدقة 1600 × 900 وما فوق، قد يتطلب الإخراج متعدد الشاشات المزيد من تكوينات التصحيح)';

  @override
  String get autoGen5359 =>
      'الحل الثالث لبرنامج تشغيل العرض الأساسي HD4000، مناسب للشاشات المزودة باتصال eDP)';

  @override
  String get autoGen5360 => 'شاشة HD4200، HD4400، HD4600 الأساسية';

  @override
  String get autoGen5361 => 'HD5000، HD5100، HD5200 العرض الأساسي';

  @override
  String get autoGen5362 => 'شاشة HD5500 الأساسية';

  @override
  String get autoGen5363 => 'شاشة HD5600 الأساسية';

  @override
  String get autoGen5364 => 'شاشة HD6000 الأساسية';

  @override
  String get autoGen5365 =>
      'HD520، HD530 وشاشات العرض الأساسية HD620 المزيفة الأخرى (لأنظمة Ventura وما فوقها)';

  @override
  String get autoGen5366 =>
      'شاشة HD 515، HD 520، HD 530، HD 540، HD 550، P530 الأساسية (تنطبق على أنظمة مونتيري والأنظمة أدناه)';

  @override
  String get autoGen5367 => 'HD 515 بديل العرض النووي';

  @override
  String get autoGen5368 => 'شاشة HD 510 الأساسية';

  @override
  String get autoGen5369 =>
      'HD 615، HD 620، HD 630، HD 640، HD 650 العرض الأساسي';

  @override
  String get autoGen5370 => 'بديل العرض الأساسي HD/UHD 620';

  @override
  String get autoGen5371 => 'شاشة UHD 617، UHD 620 الأساسية';

  @override
  String get autoGen5372 => 'شاشة UHD 630 الأساسية';

  @override
  String get autoGen5373 => 'شاشة UHD 620 الأساسية';

  @override
  String get autoGen5374 => 'شاشة Intel lris Plus 655 الأساسية';

  @override
  String get autoGen5375 => 'العرض الأساسي لسلسلة G4/G7';

  @override
  String get autoGen5376 => 'HD3000 عرض إخراج العرض النووي';

  @override
  String get autoGen5377 => 'HD4000 عرض إخراج العرض النووي';

  @override
  String get autoGen5378 =>
      'HD4200، HD4400، HD4600، HD P4600 وشاشات العرض الأساسية الأخرى (يوصى بالتحقق من التصحيح المخصص لشاشة العرض الأساسية من الجيل الرابع في التكوين المتقدم للشاشة الأساسية، وقد تم إصلاح المشكلات البسيطة التي قد تحدث)';

  @override
  String get autoGen5379 => 'شاشة HD 515 الأساسية';

  @override
  String get autoGen5380 => 'شاشة HD 520/530 الأساسية';

  @override
  String get autoGen5381 => 'شاشة HD 540/550 الأساسية';

  @override
  String get autoGen5382 => 'شاشة HD 580 الأساسية';

  @override
  String get autoGen5383 =>
      'شاشة HD P530 الأساسية (مثل e3 1245v5 تأتي مع شاشة أساسية مدمجة)';

  @override
  String get autoGen5384 => 'شاشة HD 615 الأساسية';

  @override
  String get autoGen5385 => 'شاشة HD 630، HD P630 الأساسية';

  @override
  String get autoGen5386 => 'شاشة HD 640/650 الأساسية';

  @override
  String get autoGen5387 => 'شاشة HD/UHD 620 الأساسية';

  @override
  String get autoGen5388 => 'شاشة UHD 620/630 الأساسية';

  @override
  String get autoGen5389 => 'شاشة UHD 655 الأساسية';

  @override
  String get autoGen5390 =>
      'أعد تسمية GPRW إلى XPRW لإصلاح مشكلة التنبيه الفوري (ملاحظة: قد يتسبب ذلك في عدم قدرة لوحة مفاتيح USB على تنبيه الجهاز، يمكنك تنبيهه من خلال مفتاح التشغيل)';

  @override
  String get autoGen5391 =>
      'أعد تسمية UPRW إلى XPRW لإصلاح مشكلة الاستيقاظ الفوري (ملاحظة: قد يتسبب ذلك في عدم قدرة لوحة مفاتيح USB على تنبيه الجهاز، يمكنك تنبيهه من خلال مفتاح التشغيل)';

  @override
  String get autoGen5392 => 'تمكين أجهزة GPI0 لدعم لوحات التتبع I2C';

  @override
  String get autoGen5393 =>
      'برنامج تشغيل ضروري لامتدادات kernel لـ macOS، والذي يوفر بشكل أساسي قابلية التوسع والتوافق لنظام macOS، والذي يسمح للمطورين الآخرين بكتابة امتدادات kernel لتوسيع macOS.';

  @override
  String get autoGen5394 =>
      'على سبيل المثال، يمكن لـ WhatGreen وAppleALC وVirtualSMC وما إلى ذلك تنفيذ تعديلات وتحسينات متنوعة على macOS من خلال Lilu.kext، مثل دعم بطاقات الرسومات المختلفة وبطاقات الصوت وإدارة الأجهزة الافتراضية وما إلى ذلك.';

  @override
  String get autoGen5395 =>
      'عادةً ما يكون Lilu.kext هو أول ملحق kernel لنظام التشغيل MacOS يتم تحميله، حيث قد تحتاج المكونات الإضافية الأخرى إلى الاعتماد على وظائفه. وهذا يضمن تحميل البرنامج الإضافي بشكل صحيح عند بدء تشغيل macOS';

  @override
  String get autoGen5396 => 'برامج التشغيل الأساسية الأساسية';

  @override
  String get autoGen5397 =>
      'على أجهزة Apple الحقيقية، يكون SMC مسؤولاً عن إدارة وظائف إدارة النظام مثل أجهزة استشعار الأجهزة، والتحكم في المروحة، وإدارة الطاقة، وأجهزة استشعار درجة الحرارة، وحالة البطارية. يوفر VirtualSMC هذه الميزات على أجهزة غير تابعة لشركة Apple لضمان إمكانية تشغيل macOS بشكل صحيح على هذه الأنظمة';

  @override
  String get autoGen5398 =>
      'يُستخدم غالبًا مع ملحقات kernel الأخرى مثل Lilu.kext وWhateverGreen وما إلى ذلك لإنشاء بيئة Mac شبه حقيقية على أجهزة غير تابعة لشركة Apple';

  @override
  String get autoGen5399 =>
      'برنامج التشغيل مفقود ولا يمكن تشغيل macOS بشكل صحيح.';

  @override
  String get autoGen5400 =>
      'وهو يوفر بشكل أساسي دعمًا لبرنامج تشغيل رسومات GPU. يوصى بشدة بفحص معظمها (يمكن لمستخدمي أجهزة MacPro7 و1 وRX460 وRX560 وما فوقها من مستخدمي الرسومات المستقلة من AMD إزالة الفحص). وعادةً ما يتعارض مع برامج تشغيل NootRX وNootedRed. لا تقم بتحديدها في نفس الوقت أثناء مرحلة التثبيت.';

  @override
  String get autoGen5401 =>
      'يدعم مجموعة متنوعة من بطاقات الرسومات، بما في ذلك بطاقات الرسومات NVIDIA وAMD وIntel. يمكن لهذا الملحق إصلاح وتكوين Framebuffer الصحيح بحيث يعمل العرض والدقة بشكل صحيح';

  @override
  String get autoGen5402 =>
      'يوفر الدعم لاتصالات HDMI وDisplayPort (DP) لضمان عمل مخرجات الصوت والفيديو بشكل صحيح';

  @override
  String get autoGen5403 =>
      'استخدم AppleALC لتقليد بطاقة الصوت المدمجة (الخيار المثالي والمفضل نسبيًا)';

  @override
  String get autoGen5404 =>
      'استخدم بطاقة الصوت العالمية VoodooHDA (يتم تحميلها أثناء التمهيد، وتدعم فقط نظام التشغيل macOS BigSur 11.2.3 والإصدارات الأقدم. تحتاج إصدارات macOS الأعلى إلى إضافة برنامج التشغيل هذا إلى ملحق kernel للنظام ليصبح ساري المفعول. وفقًا لاختبار المؤلف، فإن أعلى دعم هو الإصدار الرسمي لنظام التشغيل macOS Tahoe 26.x)';

  @override
  String get autoGen5405 =>
      'إصلاح توافق وحدة التحكم USB 3.0 للأنظمة الأساسية القديمة أو منصات AMD';

  @override
  String get autoGen5406 =>
      'إصلاح مشكلة إعادة التشغيل الناتجة عن إدارة طاقة وحدة المعالجة المركزية للأنظمة الأساسية القديمة قبل الجيل الثالث من Intel (يظهر كسجل تعطل kernel AppleIntelCPUPowerManagement، أو شعار التمهيد المتوقف، أو إعادة التشغيل بعد الدخول إلى النظام مباشرةً، وما إلى ذلك)';

  @override
  String get autoGen5407 =>
      'إصلاح إدارة طاقة وحدة المعالجة المركزية لسلسلة AMD Ryzen (ينطبق فقط على سلسلة AMD Ryzen، إذا كانت هناك مشكلات في إعادة التشغيل ناجمة عن إدارة الطاقة، فيمكنك التفكير في إزالة مربع الاختيار)';

  @override
  String get autoGen5408 =>
      'حل محرك البطارية 1 (ينطبق على أجهزة الكمبيوتر المحمولة من الجيل الثالث والأنظمة الأساسية الأقدم)';

  @override
  String get autoGen5409 =>
      'حل محرك البطارية 2 (ينطبق على أجهزة الكمبيوتر المحمولة من الجيل الثالث والأنظمة الأساسية الأحدث)';

  @override
  String get autoGen5410 =>
      'مستشعر الإضاءة المحيطة (سطوع الشاشة التلقائي)، إذا لم يكن لديك مستشعر الإضاءة المحيطة، فلا تستخدمه، وإلا فقد يسبب مشاكل';

  @override
  String get autoGen5411 =>
      'لا يُنصح باستخدام التحكم في مروحة الكمبيوتر المحمول من Asus، وإدارة الطاقة، وتحسين أجهزة استشعار النظام الأخرى، وما إلى ذلك من قبل الشركات غير التابعة لشركة Asus';

  @override
  String get autoGen5412 =>
      'لا يُنصح بالتحكم في مروحة الكمبيوتر المحمول من Lenovo وإدارة الطاقة وتحسين أجهزة استشعار النظام الأخرى وما إلى ذلك للأجهزة غير التابعة لشركة Lenovo.';

  @override
  String get autoGen5413 =>
      'مستشعر خاص لأجهزة الكمبيوتر المحمولة Dell لمراقبة المراوح والتحكم فيها بشكل أكثر دقة. لا يُنصح باستخدامه مع الأجهزة غير التابعة لشركة Dell.';

  @override
  String get autoGen5414 =>
      'يسمح بعرض معلومات المستشعر الخاصة بمعالجات AMD (مثل درجة الحرارة واستهلاك الطاقة والتردد وما إلى ذلك) لأدوات مراقبة macOS. يدعم برنامج التشغيل هذا معالجات سلسلة AMD Ryzen وبعض معالجات سلسلة AMD FX. قد تتسبب معالجات AMD الأخرى في حدوث مشكلات غير متوقعة. في الوقت نفسه، قد تواجه بعض الأنظمة الأساسية لأنظمة Sequoia 15 وما فوق مشكلات في التوافق، لذا اختر بعناية.';

  @override
  String get autoGen5415 =>
      'يُستخدم لدعم RX6700 وRX6750XT وRX6750GRE وغيرها من الرسومات المستقلة من سلسلة RX6XXX غير المدعومة رسميًا. يوجد تعارض مع برنامج التشغيل WhatGreen. لا تحدد كلاهما في مرحلة التثبيت.';

  @override
  String get autoGen5416 =>
      'يدعم Navi 21 (Big Sur وما فوق)، Navi 22/23 (Monterey وما فوق)، ويدعم أيضًا RX6650 وRX6950 وبطاقات الرسومات الأخرى';

  @override
  String get autoGen5417 =>
      'قد تؤدي إضافة برنامج التشغيل هذا عند تثبيت macOS لأول مرة إلى عدم القدرة على الدخول إلى النظام. يوصى بإضافته بعد الانتهاء من التثبيت.';

  @override
  String get autoGen5418 =>
      'إصلاح مشكلة البطء الناتجة عن عدم إيقاف تشغيل شاشة العرض الأساسية لسلسلة AMD Ryzen 2000~5000 Edge ومتصفح Chrome لتسريع الأجهزة (ينطبق فقط على سلسلة AMD Ryzen، مما يقلل بشكل أساسي من استخدام عرض OpenGL، والاستخدام العادي لـ QQ، ومتصفح Chrome. قد يؤدي استخدام برنامج التشغيل هذا إلى عدم عمل التطبيقات الأخرى بشكل صحيح، اتخذ قرارك الخاص)';

  @override
  String get autoGen5419 =>
      'إصلاح قراءة البطارية، إصلاح بعض مشاكل عرض البطارية';

  @override
  String get autoGen5420 =>
      'تحسين التوافق مع محركات أقراص NVMe SSD غير التابعة لشركة Apple وتقليل استهلاك الطاقة في وضع الخمول';

  @override
  String get autoGen5421 =>
      'لا يمكن لأقراص NVMe المدرجة في القائمة السوداء غير المتوافقة من Samsung وغيرها حل مشكلة تعطل المهلة بشكل فعال';

  @override
  String get autoGen5422 =>
      'قد يؤدي استخدام برنامج التشغيل هذا مع NVMe SSD ذو التوافق الجيد إلى تعطل kernel، لذا استخدمه بحذر في معظم الأوقات.';

  @override
  String get autoGen5423 =>
      'تعزيز القدرة على تجاوز أو تعطيل AMFI. ملاحظة: قد تؤدي إضافة برنامج التشغيل هذا إلى فشل فتح بعض التطبيقات أو تعطلها. في الوقت الحالي، يمكنك محاولة إزالة برنامج التشغيل واستخدام معلمات بدء تشغيل AMFI المعطلة فقط (مثل amfi=0x80)';

  @override
  String get autoGen5424 =>
      'تم إصلاح مشكلة التعرف على محركات الأقراص ذات الحالة الصلبة NVMe كأقراص خارجية';

  @override
  String get autoGen5425 =>
      'افتح عناصر التحكم العامة والتنقل والوظائف الأخرى على أجهزة Mac غير المدعومة';

  @override
  String get autoGen5426 => 'إصلاح المشكلات الشائعة المتعلقة بالإسبات والنوم';

  @override
  String get autoGen5427 =>
      'اسمح لنظام التشغيل macOS باستخدام ميزة التوصيل لجهاز Android عبر اتصال USB';

  @override
  String get autoGen5428 =>
      'برنامج تشغيل التردد المتغير لوحدة المعالجة المركزية، يوفر بشكل أساسي دعم تحويل التردد MacPro7,1 للجيل الحادي عشر وما فوق';

  @override
  String get autoGen5429 =>
      'تم تجهيز CPUFriend ببرنامج تشغيل بيانات لتوفير بيانات تحويل تردد وحدة المعالجة المركزية لنماذج محددة.';

  @override
  String get autoGen5430 =>
      'قم بتحسين حجم وحدة المعالجة المركزية والتكوينات الأساسية للجيل الثاني عشر من Intel والإصدارات الأحدث';

  @override
  String get autoGen5431 =>
      'يمكن أن يؤدي ذلك إلى تحسين أداء النواة الواحدة، ولكنه قد يؤدي إلى انخفاض في أداء النواة المتعددة. ينطبق فقط على منصات الجيل الثاني عشر وما فوق.';

  @override
  String get autoGen5432 =>
      'حل مزامنة وحدة المعالجة المركزية TSC هو الحل المفضل عادةً';

  @override
  String get autoGen5433 =>
      'يُستخدم بشكل شائع في منصات X79 وX99 وX299 وAMD متعددة النواة';

  @override
  String get autoGen5434 =>
      'يستخدم لإصلاح مشكلات مثل توقف التشغيل، وتوقف شعار التمهيد، ومزامنة الصوت والفيديو غير الطبيعية، والفشل في الاستيقاظ من وضع السكون، وما إلى ذلك.';

  @override
  String get autoGen5435 =>
      'حل مزامنة وحدة المعالجة المركزية TSC 2، يُستخدم عادةً على AMD Ryzen وبعض منصات Intel';

  @override
  String get autoGen5436 =>
      'يستخدم لإصلاح المشكلات مثل تأخر التشغيل، والأعطال العرضية، وتشوهات مزامنة الصوت والفيديو، وفشل الاستيقاظ أثناء النوم، وما إلى ذلك.';

  @override
  String get autoGen5437 =>
      'إصلاح مشكلة مزامنة الساعة متعددة النواة لوحدة المعالجة المركزية لمنصة AMD Ryzen (ينطبق فقط على سلسلة AMD Ryzen، ويستخدم لإصلاح مشكلات مثل تأخر التشغيل، وشعار التمهيد المتوقف، وما إلى ذلك. قد تؤدي إضافة برنامج التشغيل هذا إلى حدوث مشكلات غير متوقعة، اختر بعناية)';

  @override
  String get autoGen5438 =>
      'حل مزامنة وحدة المعالجة المركزية TSC الثالث، يُستخدم عادةً على منصات Intel الأقدم وأنظمة macOS الأقدم';

  @override
  String get autoGen5439 =>
      'مناسب للأنظمة الأساسية متعددة النواة X79 وX99 وX299 وغيرها من الأنظمة الأساسية، ويستخدم لإصلاح المشكلات مثل تأخر التشغيل وتوقف شعار التمهيد';

  @override
  String get autoGen5440 =>
      'تم إصلاح بعض مشكلات الصوت في Intel Core Display HDMI';

  @override
  String get autoGen5441 =>
      'أصلح مشكلة عدم القدرة على تسجيل الدخول إلى Apple ID وiCloud، والذي يُستخدم عادةً لأجهزة الكمبيوتر المحمولة التي لا تحتوي على بطاقات شبكة سلكية محلية';

  @override
  String get autoGen5442 =>
      'إصلاح التعارضات بين النظام الأساسي الجديد macOS AppleRTC وPC BIOS، مثل RTC الذي يتسبب في التجميد أو إعادة التشغيل المفاجئ أو الاستيقاظ المفاجئ من وضع الإسبات.';

  @override
  String get autoGen5443 =>
      'برنامج تشغيل لوحة المفاتيح والماوس من نوع واجهة PS (لوحة المفاتيح والمنفذ الدائري PS لسطح المكتب وبرنامج تشغيل الماوس)';

  @override
  String get autoGen5444 =>
      'برنامج تشغيل لوحة المفاتيح من نوع واجهة PS (برنامج تشغيل لوحة المفاتيح ذات المنفذ الدائري PS لسطح المكتب)';

  @override
  String get autoGen5445 =>
      'برنامج تشغيل الماوس من نوع واجهة PS (برنامج تشغيل الماوس ذو المنفذ الدائري PS لسطح المكتب)';

  @override
  String get autoGen5446 =>
      'برنامج تشغيل لوحة اللمس المخصص لـ Microsoft Surface';

  @override
  String get autoGen5447 => 'إصلاح مفتاح اختصار السطوع';

  @override
  String get autoGen5448 =>
      'قم بتحسين أداء بطاقة الرسومات AMD Radeon، ولكن بعض السيناريوهات قد تتسبب في تعطل النظام أو عدم بدء التشغيل، لذا تحقق بعناية';

  @override
  String get autoGen5449 =>
      'اسمح لـ RadeonGadget.app بقراءة درجة حرارة وحدة معالجة الرسومات لبطاقة الرسومات AMD وغيرها من المعلومات';

  @override
  String get autoGen5450 =>
      'قم بتصدير درجة حرارة وحدة معالجة الرسومات AMD وغيرها من المعلومات إلى VirtualSMC لقراءة أدوات المراقبة';

  @override
  String get autoGen5451 =>
      'تم إصلاح مشكلات توافق وحدة تحكم USB على الأنظمة الأساسية القديمة مثل AMD FM1/FM2/AM3';

  @override
  String get autoGen5452 =>
      'حل حقن USB عالمي، وهو الخيار الافتراضي عندما لا يتم تخصيص USB';

  @override
  String get autoGen5453 =>
      'حل USBToolBox، يُستخدم عادةً مع UTBMap.kext المخصص';

  @override
  String get autoGen5454 =>
      'إصلاح مشكلة USB3.0 على الجيل الثالث من Intel والأنظمة الأساسية المحدثة لاحقًا (مطلوب لشرائح سلسلة 300 (H370، B360، H310، Z390 [غير مطلوب للأنظمة 10.14 وما فوق]، X79، X99، ASRock اللوحات الأم Intel [باستثناء B460/Z490+])';

  @override
  String get autoGen5455 =>
      'أصلح مشكلات توافق EHCI USB2.0 على AMD FM1 وFM2 وAM3 والأنظمة الأساسية القديمة الأخرى';

  @override
  String get autoGen5456 =>
      'أصلح مشكلات توافق XHCI USB3.0 على AMD FM1 وFM2 وAM3 والأنظمة الأساسية القديمة الأخرى';

  @override
  String get autoGen5457 =>
      'إصلاح إدارة طاقة وحدة المعالجة المركزية لأنظمة Intel من الجيل الثالث والأنظمة الأقدم Ventura 13 والأنظمة الأحدث';

  @override
  String get autoGen5458 =>
      'برنامج تشغيل قارئ بطاقة SD من سلسلة Realtek (يستخدم مع RealtekCardReaderFriend)';

  @override
  String get autoGen5459 =>
      'يدعم برنامج RealtekCardReader برنامج التشغيل لتحسين توافق قارئ بطاقة Realtek';

  @override
  String get autoGen5460 =>
      'برنامج تشغيل جهاز بطاقة الذاكرة SDHC، يدعم بطاقات الذاكرة eMMC وMMC';

  @override
  String get autoGen5461 => 'برنامج تشغيل بطاقة الشبكة السلكية 100M';

  @override
  String get autoGen5462 =>
      'دعم RTL8101E، RTL8102E، RTL8103E، RTL8401E، RTL8105E، RTL8402، RTL8106E، RTL8106EUS، RTL8107E، RTL8139 بطاقات الشبكة';

  @override
  String get autoGen5463 => 'تستخدم عادة للمنصات القديمة التقليدية';

  @override
  String get autoGen5464 => 'جيجابت سائق بطاقة الشبكة';

  @override
  String get autoGen5465 =>
      'دعم Intel 82540 ~ 82547، 82578 ~ 82579، 82574L، 82571 ~ 82574، 82583، I217-V وبطاقات الشبكة الأخرى';

  @override
  String get autoGen5466 => 'جيجابت السلكية برنامج تشغيل بطاقة الشبكة';

  @override
  String get autoGen5467 =>
      'يدعم BCM5722، BCM5754، BCM5754M، BCM5755، BCM5755M، BCM57788، BCM5787، BCM5787M، BCM5906، BCM5906M وبطاقات الشبكة الأخرى';

  @override
  String get autoGen5468 =>
      'يدعم AR8131، AR8132، AR8151، AR8152 وبطاقات الشبكة الأخرى';

  @override
  String get autoGen5469 =>
      'يدعم Realtek RTL8111 / 8168 B / C / D / E / F / G / H، ويدعم بطاقات الشبكة Killer E2500 وما فوق';

  @override
  String get autoGen5470 =>
      'قد يدعم الإصدار الجديد من برنامج تشغيل RealtekRTL8111 الأنظمة 10.13.x والإصدارات الأحدث فقط';

  @override
  String get autoGen5471 =>
      'يدعم AR816x، AR817x، Killer E220x، Killer E2400 وغيرها من بطاقات الشبكة';

  @override
  String get autoGen5472 =>
      'جيجابت (دعم 2.5G) برنامج تشغيل بطاقة الشبكة السلكية';

  @override
  String get autoGen5473 =>
      'يدعم جميع الأجهزة المتوافقة مع IGC (i225، i226، i226-V وبطاقات الشبكة السلكية الأخرى). قد لا يكون معرف PCI لبعض الأجهزة موجودًا في قائمة IOPCIMatch. أضفه بنفسك للاختبار.';

  @override
  String get autoGen5474 =>
      'بالمقارنة مع برنامج تشغيل AppleEthernetE1000، فهو يتمتع بأداء واستقرار أفضل (قد يتسبب i226-V في حدوث ذعر لدى kernel عند استخدام AppleEthernetE1000 في نظام مونتيري)';

  @override
  String get autoGen5475 =>
      'دعم بطاقات الشبكة Intel 82575 و82576 و82580 وdh89xxcc وi350 وi354 وi210 وi211';

  @override
  String get autoGen5476 =>
      'قد تكون هناك مشكلات في عدم الاستقرار، فمن المستحسن البقاء في إصدار Big Sur واستخدام SmallTree';

  @override
  String get autoGen5477 =>
      'ينطبق عادةً على أنظمة macOS Monterey 12 والإصدارات الأحدث';

  @override
  String get autoGen5478 =>
      'دعم سلسلة إنتل 5: 82578LM، 82578LC، 82578DM، 82578DC';

  @override
  String get autoGen5479 => 'دعم سلسلة إنتل 6 و7: 82579LM، 82579V';

  @override
  String get autoGen5480 =>
      'دعم سلسلة إنتل 8 و9: I217LM، I217V، I218LM، I218V، I218LM2، I218V2، I218LM3';

  @override
  String get autoGen5481 =>
      'دعم سلسلة إنتل 100: I219V، I219LM، I219V2، I219LM2، I219LM3';

  @override
  String get autoGen5482 => 'دعم سلسلة إنتل 200: I219LM، I219V';

  @override
  String get autoGen5483 => 'دعم سلسلة إنتل 300: I219LM، I219V';

  @override
  String get autoGen5484 =>
      'تتم صيانة السائق بواسطة acidanthera. يستخدم OS X 10.6 ~ 10.8 IntelSnowMausi';

  @override
  String get autoGen5485 =>
      'يتم توفير هذا السائق من قبل لورا مولر. يستخدم OS X 10.6 ~ 10.8 IntelSnowMausi';

  @override
  String get autoGen5486 =>
      'برنامج التشغيل القديم RTL8125، يدعم بطاقات Ethernet من سلسلة Realtek RTL8125';

  @override
  String get autoGen5487 =>
      'جيجابت (يدعم 2.5G، 5G) برنامج تشغيل بطاقة الشبكة السلكية';

  @override
  String get autoGen5488 =>
      'برنامج تشغيل جديد لـ RTL812x، يدعم بطاقات Ethernet من سلسلة Realtek RTL8125 وRTL8126';

  @override
  String get autoGen5489 =>
      'النماذج المدعومة: RTL8125A، RTL8125B، RTL8125BP، RTL8125CP، RTL8126A';

  @override
  String get autoGen5490 =>
      'يدعم بطاقة الشبكة السلكية Intel i211، وهذا الطراز شائع في اللوحات الأم AMD';

  @override
  String get autoGen5491 =>
      'ينطبق بشكل عام على نظام التشغيل macOS Big Sur والإصدارات الأقدم، وقد يكون نظام التشغيل macOS Monterey غير مستقر';

  @override
  String get autoGen5492 => 'التوافق: نظام التشغيل';

  @override
  String get autoGen5493 => '10G (يدعم 10G) برنامج تشغيل بطاقة الشبكة السلكية';

  @override
  String get autoGen5494 => 'يدعم إنتل X520،';

  @override
  String get autoGen5495 => 'يدعم فقط أنظمة macOS 10.13 والإصدارات الأحدث';

  @override
  String get autoGen5496 => 'يوصى بإيقاف تشغيل WoL في إعدادات BIOS UEFI';

  @override
  String get autoGen5497 =>
      'تم إصلاح مشكلة عدم تعرف الأداة المساعدة للقرص على أقراص SATA أثناء تثبيت نظام Catalina 10.15 والأنظمة الأقدم';

  @override
  String get autoGen5498 =>
      'تم إصلاح مشكلة عدم تعرف Disk Utility على أقراص SATA أثناء عملية تثبيت أنظمة Big Sur 11 والإصدارات الأحدث';

  @override
  String get autoGen5499 =>
      'إصلاح مشكلات التوافق المتعلقة بمنصة AMD Adobe Family Bucket';

  @override
  String get autoGen5500 =>
      'يدعم نظام التشغيل macOS High Sierra 10.13 ~ macOS Tathoe 26.x (يُستخدم عادةً مع عميل HeliPort)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (ملاحظة: يحتاج نظام Sequoia 15 إلى التصحيح باستخدام الإصدار المعدل الخاص بـ OCLP Intel قبل أن يمكن استخدامه بشكل طبيعي!!!)';

  @override
  String get autoGen5502 => 'نظام التشغيل MacOS Sonoma 14.4 والإصدارات الأحدث';

  @override
  String get autoGen5503 =>
      'يعمل بشكل أساسي على إصلاح بعض مشكلات أجهزة Bluetooth (تنطبق على بعض أجهزة Broadcom وأجهزة USB Bluetooth الأخرى)';

  @override
  String get autoGen5504 =>
      'Qualcomm WiFi، يدعم نظام التشغيل macOS Big Sur 11.x والإصدارات الأقدم';

  @override
  String get autoGen5505 => 'كوالكوم (اثيروس)-AR9285';

  @override
  String get autoGen5506 => 'كوالكوم (اثيروس)-AR9380';

  @override
  String get autoGen5507 => 'كوالكوم (اثيروس)-AR9485';

  @override
  String get autoGen5508 => 'كوالكوم (اثيروس)-AR9565';

  @override
  String get autoGen5509 => 'كوالكوم (اثيروس)-AR9463';

  @override
  String get autoGen5510 => 'كوالكوم (اثيروس)-AR9462';

  @override
  String get autoGen5511 =>
      'قم بتعطيل Touch ID لتقليل هدر موارد النظام وتحسين الاستقرار';

  @override
  String get autoGen5512 =>
      'عادةً ما يكون مناسبًا لأجهزة الكمبيوتر المحمولة المزودة بتقنية التعرف على بصمات الأصابع والإصدارات الأقل من macOS Big Sur 11';

  @override
  String get autoGen5513 =>
      'يتم تكوين سياسة TRIM بشكل افتراضي (أي SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1. ينفذ نظام APFS عمليات TRIM بناءً على مهلة TRIM الافتراضية لنظام التشغيل macOS، والتي تنطبق على معظم محركات أقراص SSD التي تدعم TRIM.';

  @override
  String get autoGen5515 =>
      '2. في محركات أقراص SSD التي تدعم TRIM، يقوم macOS تلقائيًا بإدارة تنفيذ TRIM، مما يساعد على تنظيف كتل البيانات المحذوفة، مما يجعل كتابة SSD أكثر كفاءة، وتجنب تضخيم الكتابة المتكرر، وتحسين سرعة الكتابة.';

  @override
  String get autoGen5516 =>
      '3. سوف تقوم TRIM بتنظيف الكتل غير المستخدمة بانتظام لتقليل تآكل SSD، وبالتالي إطالة عمر خدمة SSD.';

  @override
  String get autoGen5517 =>
      '4. قد تواجه بعض محركات أقراص SSD التابعة لجهات خارجية والتي لا تدعم TRIM بشكل كامل تأخيرات أو حتى تجميدًا عند تنفيذ TRIM، مما يتسبب في أن تصبح عملية التمهيد بطيئة للغاية.';

  @override
  String get autoGen5518 =>
      'تعطيل وظيفة TRIM تمامًا (أي تعيين SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => 'فوائد تعطيل TRIM:';

  @override
  String get autoGen5520 =>
      '1. تحسين سرعة التمهيد. بالنسبة لمحركات أقراص SSD التابعة لجهات خارجية والتي لا تدعم TRIM أو تدعمه جزئيًا، قد يتسبب نظام macOS في حدوث تأخيرات بسبب محاولة عمليات TRIM أثناء بدء التشغيل. يمكن أن يؤدي تعطيل TRIM إلى التخلص من هذا التأخير وتحسين سرعة التمهيد.';

  @override
  String get autoGen5521 =>
      '2. تحسين التوافق. يمكن لبعض محركات أقراص SSD ذات التوافق الضعيف أن تقلل من خطر حدوث أعطال غير طبيعية.';

  @override
  String get autoGen5522 =>
      '3. إطالة عمر محركات أقراص SSD غير TRIM. على محركات أقراص SSD التي لا تدعم TRIM، قد يؤدي تمكين TRIM بالقوة إلى تسريع التآكل والتأثير على الحياة. يمكن أن يؤدي تعطيل TRIM إلى إطالة عمر محركات أقراص الحالة الصلبة هذه.';

  @override
  String get autoGen5523 => 'عيوب تعطيل TRIM:';

  @override
  String get autoGen5524 =>
      '1. انخفاض أداء SSD. لا تحتوي بعض محركات أقراص SSD على آلية جمع البيانات المهملة TRIM. لا يستطيع SSD تنظيف الكتل الحرة ووضع علامات عليها في الوقت المناسب بعد حذف البيانات، مما قد يتسبب في إبطاء سرعة الكتابة.';

  @override
  String get autoGen5525 =>
      '2. يتم تقليل كفاءة إدارة مساحة القرص. بعد تعطيلها، تتطلب وحدة تحكم SSD مزيدًا من الوقت والموارد لجمع البيانات المهملة، مما قد يؤدي إلى زيادة التجزئة وتقليل كفاءة إدارة المساحة.';

  @override
  String get autoGen5526 =>
      '3. تقصير عمر SSD. بالنسبة لمحركات أقراص SSD التي تدعم TRIM، بعد تعطيل TRIM، لا يستطيع SSD تحسين عملية الكتابة، مما سيؤدي إلى زيادة تآكل كتل التخزين، وبالتالي تقصير عمر SSD الذي يدعم TRIM.';

  @override
  String get autoGen5527 =>
      'على الرغم من أن تعطيل TRIM يمكن أن يؤدي إلى بعض التحسينات في سرعة التمهيد، بالنسبة لمحركات أقراص SSD الحديثة التي تدعم TRIM، فمن المستحسن إبقاء TRIM قيد التشغيل للحصول على أداء واستقرار على المدى الطويل. عادةً ما تكون هذه الزيادة في السرعة صغيرة ولن يكون لها سوى تأثير كبير على بعض محركات أقراص SSD غير المتوافقة.';

  @override
  String get autoGen5528 =>
      'برنامج تشغيل التردد المتغير لوحدة المعالجة المركزية، هنا يوفر بشكل أساسي دعم التردد المتغير MacPro7,1 من الجيل الحادي عشر إلى الرابع عشر';

  @override
  String get autoGen5529 => 'قارئ بطاقة Realtek SD وبرنامج التشغيل الداعم لها';

  @override
  String get autoGen5530 =>
      'مناسبة للجيل الثالث وما دون المنصات القديمة، وأجهزة الإدخال المتصلة بناءً على بروتوكول ناقل PS/2، مثل لوحة المفاتيح، والماوس، ولوحة اللمس، وما إلى ذلك. يمكنها تحقيق درجة معينة من وظيفة اللمس المتعدد، لكن الدعم محدود.';

  @override
  String get autoGen5531 =>
      'مناسبة لمنصات الجيل الثالث وما فوق، وأجهزة الإدخال المتصلة بناءً على بروتوكول ناقل PS/2، مثل لوحة المفاتيح والماوس ولوحة اللمس وما إلى ذلك. توفير الدعم للوحة اللمس PS/2 من خلال برنامج التشغيل الفرعي، ويمكن تحقيق درجة معينة من وظيفة اللمس المتعدد، ولكن الدعم محدود.';

  @override
  String get autoGen5532 =>
      'لوحة مفاتيح PS2 مناسبة للوحات اللمس وشاشات اللمس وأجهزة الاستشعار وأجهزة الإدخال الأخرى المتصلة بناءً على بروتوكول ناقل I2C. يوفر دعمًا لإيماءات اللمس المتعدد لمحاكاة تجربة اللمس الأصلية لنظام التشغيل macOS.';

  @override
  String get autoGen5533 =>
      'لوحة مفاتيح PS2، مناسبة للوحة اللمس Synaptics المتصلة بناءً على بروتوكول ناقل بروتوكول RMI4. ركز على دعم أجهزة Synaptics بشكل أفضل، مما يوفر إمكانات اللمس المتعدد والإيماءات المشابهة للوحة اللمس الأصلية لنظام التشغيل macOS.';

  @override
  String get autoGen5534 =>
      'لوحة مفاتيح PS2، مناسبة لأجهزة اللمس المستندة إلى ناقل I2C ولوحات اللمس Synaptics باستخدام بروتوكول RMI4. يجمع RMII2C بين مزايا VoodooI2C وVodooRMI.';

  @override
  String get autoGen5535 =>
      'برنامج تشغيل لوحة المفاتيح والماوس الدائري يعتمد على اتصال بروتوكول ناقل PS/2';

  @override
  String get autoGen5536 =>
      'مجموعة لوحة المفاتيح ولوحة اللمس وبرنامج تشغيل شاشة اللمس المخصصة من Microsoft Surface.';

  @override
  String get autoGen5537 => 'سلسلة Broadcom BCM94360 الخالية من السائق';

  @override
  String get autoGen5538 =>
      'بطاقات Apple AirPort وFenvi الخالية من برامج التشغيل، وVentura وما دونها خالية من برامج التشغيل، ويدعم التصحيح Sonoma 14 وSequoia 15! ملاحظة: تحتاج أنظمة Sonoma 14 والإصدارات الأحدث إلى تصحيحها باستخدام OCLP قبل استخدامها بشكل طبيعي! ! !';

  @override
  String get autoGen5539 => 'سلسلة Broadcom BCM943XX بدون برامج تشغيل';

  @override
  String get autoGen5540 =>
      'البطاقات بخلاف Apple AirPort وFenvi وCatalina وما دونها خالية من برامج التشغيل، ويدعم التصحيح Sonoma 14 وSequoia 15! ملاحظة: تحتاج أنظمة Sonoma 14 والإصدارات الأحدث إلى تصحيحها باستخدام OCLP قبل استخدامها بشكل طبيعي! ! !';

  @override
  String get autoGen5541 => 'برودكوم القديم BCM4331';

  @override
  String get autoGen5542 =>
      'لاحظ أن أنظمة مونتيري 12 أو أعلى تحتاج إلى استخدام تصحيح OCLP قبل استخدامها بشكل طبيعي! ! !';

  @override
  String get autoGen5543 => 'برودكوم القديم BCM43224';

  @override
  String get autoGen5544 => 'برنامج تشغيل طراز Qualcomm (Atheros) WiFi';

  @override
  String get autoGen5545 => 'خيار يدوي Qualcomm WiFi';

  @override
  String get autoGen5546 => 'Qualcomm (Atheros) WiFi Big Sur والتبعيات التالية';

  @override
  String get autoGen5547 =>
      'تستخدم أنظمة macOS Big Sur 11 والأنظمة الأقدم HS80211Family لمطابقة برامج تشغيل طرازات معينة';

  @override
  String get autoGen5548 =>
      'Qualcomm (Atheros) WiFi Monterey وما فوق من التبعيات';

  @override
  String get autoGen5549 =>
      'تستخدم أنظمة macOS Monterey 12 والإصدارات الأحدث مجموعة IO80211ElCap';

  @override
  String get autoGen5550 =>
      'تم إصلاح مشكلة التعرف على البطارية في \"تفضيلات النظام\" لسلسلة Surface Pro 7 وBook 3';

  @override
  String get autoGen5551 =>
      'تم إصلاح مشكلة خطأ POST عند بدء تشغيل ساعة الوقت الفعلي لبعض أجهزة الكمبيوتر التي تحمل علامة HP التجارية.';

  @override
  String get autoGen5552 =>
      'تعطيل خطة تنبيه RTC وإصلاح مشكلة التنبيه التلقائي بعد النوم';

  @override
  String get autoGen5553 => 'منصة الجيل 0-بنرين-775';

  @override
  String get autoGen5554 => 'منصة الجيل 1-لينفيلد-1156';

  @override
  String get autoGen5555 => 'منصة الجيل الثاني ساندي بريدج 1155';

  @override
  String get autoGen5556 => 'منصة الجيل الثالث-Ivy Bridge-1155';

  @override
  String get autoGen5557 => 'منصة الجيل الرابع-هاسويل-1150';

  @override
  String get autoGen5558 => 'منصة الجيل الخامس-برودويل-1150';

  @override
  String get autoGen5559 => 'منصة الجيل السادس Skylake-1151';

  @override
  String get autoGen5560 => 'منصة الجيل السابع-بحيرة كابي-1151';

  @override
  String get autoGen5561 => 'منصة الجيل الثامن-Coffee Lake-1151';

  @override
  String get autoGen5562 => 'منصة الجيل التاسع-Coffee Lake-1151';

  @override
  String get autoGen5563 => 'منصة الجيل العاشر-Comet Lake-1200';

  @override
  String get autoGen5564 => 'منصة الجيل الحادي عشر-Rocket Lake-1200';

  @override
  String get autoGen5565 => 'منصة الجيل الثاني عشر-ألدر ليك-1700';

  @override
  String get autoGen5566 => 'منصة الجيل الثالث عشر رابتور ليك 1700';

  @override
  String get autoGen5567 => 'منصة الجيل الرابع عشر Raptor Lake Refresh-1700';

  @override
  String get autoGen5568 => 'منصة الجيل الخامس عشر-Arrow Lake-1851';

  @override
  String get autoGen5569 => 'الجيل 0-بنرين-دفتر الملاحظات';

  @override
  String get autoGen5570 => 'دفتر ملاحظات الجيل الأول من كلاركسفيلد وأراندال';

  @override
  String get autoGen5571 => 'الجيل الثاني - ساندي بريدج - دفتر';

  @override
  String get autoGen5572 => 'دفتر الجيل الثالث آيفي بريدج';

  @override
  String get autoGen5573 => 'الجيل الرابع-هاسويل-لابتوب';

  @override
  String get autoGen5574 => 'كمبيوتر محمول من الجيل الخامس من برودويل';

  @override
  String get autoGen5575 => 'دفتر سكاي ليك الجيل السادس';

  @override
  String get autoGen5576 => 'دفتر الجيل السابع كابي ليك';

  @override
  String get autoGen5577 => 'دفتر ملاحظات الجيل الثامن من Coffee Lake';

  @override
  String get autoGen5578 => 'دفتر ملاحظات الجيل التاسع من Coffee Lake';

  @override
  String get autoGen5579 => 'كمبيوتر محمول من الجيل العاشر - Comet Lake';

  @override
  String get autoGen5580 => 'كمبيوتر محمول من الجيل العاشر - بحيرة الجليد';

  @override
  String get autoGen5581 => 'دفتر الجيل الحادي عشر تايجر ليك';

  @override
  String get autoGen5582 => 'دفتر الجيل الثاني عشر-ألدر ليك';

  @override
  String get autoGen5583 => 'دفتر ملاحظات الجيل الثالث عشر رابتور ليك';

  @override
  String get autoGen5584 => 'دفتر رابتور ليك ريفريش الجيل الرابع عشر';

  @override
  String get autoGen5585 => 'مضيف الجيل 0 بنرين ميني';

  @override
  String get autoGen5586 => 'مضيف الجيل الأول من كلاركسفيلد وأراندال ميني';

  @override
  String get autoGen5587 => 'مضيف الجيل الثاني ساندي بريدج ميني';

  @override
  String get autoGen5588 => 'مضيف الجيل الثالث-Ivy Bridge-mini';

  @override
  String get autoGen5589 => 'مضيف الجيل الرابع-هاسويل ميني';

  @override
  String get autoGen5590 => 'مضيف الجيل الخامس من برودويل ميني';

  @override
  String get autoGen5591 => 'مضيف الجيل السادس-Skylake-mini';

  @override
  String get autoGen5592 => 'مضيف الجيل السابع - بحيرة كابي - ميني';

  @override
  String get autoGen5593 => 'مضيف الجيل الثامن-Coffee Lake-mini';

  @override
  String get autoGen5594 => 'مضيف صغير من الجيل التاسع - بحيرة القهوة';

  @override
  String get autoGen5595 => 'مضيف الجيل العاشر-Comet Lake-mini';

  @override
  String get autoGen5596 => 'مضيف صغير من الجيل العاشر من Ice Lake';

  @override
  String get autoGen5597 => 'مضيف الجيل الحادي عشر-Tiger Lake-mini';

  @override
  String get autoGen5598 => 'مضيف الجيل الثاني عشر - بحيرة ألدر - ميني';

  @override
  String get autoGen5599 => 'مضيف الجيل الثالث عشر - بحيرة رابتور - ميني';

  @override
  String get autoGen5600 =>
      'مضيف صغير من الجيل الرابع عشر - Raptor Lake Refresh';

  @override
  String get autoGen5601 => 'منصة الجيل 1-Nehalem&Westmere-X58';

  @override
  String get autoGen5602 => 'منصة الجيل الثاني ساندي بريدج-E-X79';

  @override
  String get autoGen5603 => 'منصة الجيل الثالث-Ivy Bridge-E-X79';

  @override
  String get autoGen5604 => 'منصة الجيل الرابع-Haswell-E-X99';

  @override
  String get autoGen5605 => 'منصة الجيل الخامس-Broadwell-E-X99';

  @override
  String get autoGen5606 => 'منصة الجيل السادس Skylake-X&W-X299';

  @override
  String get autoGen5607 => 'منصة الجيل العاشر-Cascade Lake-X&W';

  @override
  String get autoGen5608 =>
      'البلدوزر (15 ساعة) وجاكوار (16 ساعة) - دفتر ملاحظات';

  @override
  String get autoGen5609 => 'دفتر رايزن';

  @override
  String get autoGen5610 => 'البلدوزر (15 ساعة) وجاكوار (16 ساعة) - مضيف صغير';

  @override
  String get autoGen5611 => 'مضيف رايزن ميني';

  @override
  String get autoGen5612 => 'Ryzen وThreadripper (17 ساعة و19 ساعة)-الخادم';

  @override
  String get autoGen5613 => 'امتحان';

  @override
  String get autoGen5614 => 'اختبار nvram';

  @override
  String get autoGen5615 => 'غير قادر على الحصول على الدليل الرئيسي';

  @override
  String get autoGen5616 => 'الدليل المصدر غير موجود';

  @override
  String get autoGen5617 => 'غير قادر على الحصول على دليل سطح المكتب';

  @override
  String get autoGen5618 => 'فشل التحقق من المسار وإرجاع المسار الفارغ';

  @override
  String get autoGen5619 =>
      'فشل الحصول على معلومات ملف plist وكانت النتيجة التي تم إرجاعها غير كاملة.';

  @override
  String get autoGen5620 =>
      'ملاحظة: تم تمكين NormalizeHeaders ويحتوي معرف الجدول على أحرف غير قابلة للطباعة!';

  @override
  String get autoGen5621 =>
      'ملاحظة: لم يتم تمكين NormalizeHeaders ويحتوي معرف الجدول على الحرف \'\'؟\'\'!';

  @override
  String get autoGen5622 => 'لم يتم تحديد ملف config.plist المستهدف!';

  @override
  String get autoGen5623 => '=> غير قادر على تحديد نوع config.plist!';

  @override
  String get autoGen5624 => '=> لم يتم العثور على جدول SSDT! القفز فوق...';

  @override
  String get autoGen5625 => '=> لم يتم العثور على جدول SSDT مكرر!';

  @override
  String get autoGen5626 => '=> لم يتم العثور على التصحيح! القفز فوق...';

  @override
  String get autoGen5627 => '=> لم يتم العثور على التصحيح المكرر!';

  @override
  String get autoGen5628 => '=> لم يتم العثور على التصحيح المسقط! القفز فوق...';

  @override
  String get autoGen5629 => '=> لم يتم العثور على تصحيح الإسقاط المكرر!';

  @override
  String get autoGen5630 =>
      '=> لم يتم العثور على تكوين Quirks الذي يحتاج إلى التحديث! القفز فوق...';

  @override
  String get autoGen5631 => '=> التحقق من تكوين Quirks الهدف ...';

  @override
  String get autoGen5632 => 'جارٍ النسخ الاحتياطي لملف التكوين الحالي...';

  @override
  String get autoGen5633 => 'جارٍ التحضير لنسخ ملفات SSDT...';

  @override
  String get autoGen5634 => 'تم حفظ التكوين بنجاح!';

  @override
  String get autoGen5635 => 'اكتمل الدمج!';

  @override
  String get autoGen5636 => 'فشل الدمج!';

  @override
  String get autoGen5637 =>
      'ملاحظة: تم العثور على أخطاء محتملة أثناء عملية الدمج، يرجى التحقق منها وإصلاحها!';

  @override
  String get autoGen5638 =>
      'ملاحظة: لم يتم إعداد التكوين الحالي لتجاوز وضع EFI المستهدف!';

  @override
  String get autoGen5639 => 'عليك القيام بما يلي يدويًا:';

  @override
  String get autoGen5640 => 'لم يتم العثور على عنصر القاموس الجذر';

  @override
  String get autoGen5641 =>
      'تخلص من تعارضات IRQ، التي تُستخدم غالبًا لإصلاحات بطاقة الصوت';

  @override
  String get autoGen5642 =>
      '• HPET (مؤقت الأحداث عالي الدقة) عبارة عن وحدة أجهزة تستخدم لتوقيت النظام.\n• في نظام التشغيل macOS، قد تتسبب بعض أجهزة HPET الموجودة على اللوحة الأم في حدوث تعارضات IRQ (طلب المقاطعة)، مما سيؤثر على التشغيل العادي لجهاز الصوت، مما يتسبب في عدم استقرار النظام أو حتى عدم قدرته على البدء.\n• يقوم هذا التصحيح بضبط تعريفات جهاز ACPI المتعلقة بـ HPET لتجنب تعارضات IRQ، والتأكد من قدرة macOS على استخدام مؤقتات HPET بشكل صحيح، وإصلاح مشكلات بطاقة الصوت، وتحسين استقرار النظام.';

  @override
  String get autoGen5643 =>
      'سمات طاقة EC مزيفة وحقن USB (تنطبق على أجهزة الكمبيوتر المكتبية من الجيل السادس وما فوق من Intel)';

  @override
  String get autoGen5644 =>
      '• ينطبق على أجهزة الكمبيوتر المكتبية من الجيل السادس من Intel وما فوق\n• سيؤدي هذا التصحيح إلى تعطيل جهاز EC الأصلي للنظام، ثم إنشاء جهاز EC افتراضي \"لخداع\" macOS للاعتقاد بوجود EC متوافق، وبالتالي حل مشكلات بدء التشغيل الناتجة عن فقدان أجهزة EC. \n• تمت إضافة خصائص طاقة USB الضرورية لإصلاح المشكلات المحتملة. يعادل الدمج: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'منتجات EC المزيفة فقط، ولا تؤثر على EC الموجودة، وتحقن سمات طاقة USB في نفس الوقت (ينطبق على أجهزة الكمبيوتر المحمولة من الجيل السادس من Intel وما فوقها)';

  @override
  String get autoGen5646 =>
      '• ينطبق على أجهزة الكمبيوتر المحمولة من الجيل السادس من Intel وما فوق\n• مناسب لأجهزة الكمبيوتر المحمولة، فهو لا يحذف أو يعدل EC الموجود، ولكنه ينشئ EC افتراضيًا جديدًا بشكل منفصل لتجنب إتلاف جهاز EC الأصلي ومنع حدوث تشوهات وظيفية مثل إدارة طاقة الكمبيوتر المحمول والإضاءة الخلفية للوحة المفاتيح.\n• تمت إضافة خصائص طاقة USB الضرورية لإصلاح المشكلات المحتملة. أي ما يعادل الدمج: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 =>
      'EC المزيفة (تنطبق على أجهزة كمبيوتر Intel من الجيل الخامس وما دونه من أجهزة الكمبيوتر المكتبية)';

  @override
  String get autoGen5648 =>
      '• مناسب لأجهزة الكمبيوتر المكتبية من الجيل الخامس من Intel وما دونها\n• سيؤدي هذا التصحيح إلى تعطيل جهاز EC الأصلي للنظام، ثم إنشاء جهاز EC افتراضي \"لخداع\" macOS للاعتقاد بوجود EC متوافق، وبالتالي حل مشكلات بدء التشغيل الناتجة عن فقدان أجهزة EC.';

  @override
  String get autoGen5649 =>
      'فقط EC المزيفة، ولا تؤثر على EC الموجودة (ينطبق على الجيل الخامس من Intel وأجهزة الكمبيوتر المحمولة الأقل)';

  @override
  String get autoGen5650 =>
      '• ينطبق على أجهزة الكمبيوتر المحمولة من الجيل الخامس من Intel وما دونه\n• لا يقوم بحذف أو تعديل EC الموجودة، ولكنه ينشئ EC افتراضيًا جديدًا بشكل منفصل لتجنب إتلاف جهاز EC الأصلي ومنع حدوث تشوهات وظيفية مثل إدارة طاقة الكمبيوتر المحمول والإضاءة الخلفية للوحة المفاتيح.';

  @override
  String get autoGen5651 =>
      'تصحيح سمة طاقة USB (ينطبق على الجيل السادس من Intel والأنظمة الأساسية الأحدث)';

  @override
  String get autoGen5652 =>
      '• ينطبق على الجيل السادس من Intel Skylake والإصدارات الأحدث، وخادم Haswell-E من الجيل الرابع والإصدارات الأحدث، وAMD Ryzen والمنصات الأخرى\n• بدءًا من Intel Skylake والمعالجات الأحدث، يتطلب نظام التشغيل macOS خصائص طاقة USB محددة لضمان تشغيل أجهزة USB والتعرف عليها بشكل صحيح.\n• يعمل هذا التصحيح على تصحيح إدارة الطاقة لمنافذ USB للتوافق مع متطلبات macOS وحل مشكلات مثل التعرف غير الطبيعي على جهاز USB، وعدم كفاية مصدر الطاقة، وعدم القدرة على التوصيل السريع.\n• لأجهزة الكمبيوتر المحمولة: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml والجمع بين الاثنين يعادل SSDT-EC-USBX-LAPTOP.aml\n• لسطح المكتب: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml الجمع بين الاثنين يعادل SSDT-EC-USBX-DESKTOP.aml';

  @override
  String get autoGen5653 =>
      'تحديد نواة وحدة المعالجة المركزية، مما يتيح تعديل التردد وتصحيح توفير الطاقة';

  @override
  String get autoGen5654 =>
      '• SSDT-PLUG مناسب للجيل الرابع من Intel Haswell ~ الجيل الحادي عشر، وخادم Haswell-E من الجيل الرابع وما فوق (عند تخصيص SSDT-PLUG، تكتشف الأداة وتولدها تلقائيًا!)\n• SSDT-PLUG-ALT مناسب للجيل الثاني عشر من Intel Alder Lake وما فوق، ومنصة AMD Ryzen (عند تخصيص SSDT-PLUG، تكتشفه الأداة تلقائيًا وتولده وتعيد تسميته إلى SSDT-PLUG-ALT!)\n• يعتمد macOS على المكون الإضافي لإدارة طاقة وحدة المعالجة المركزية (PluginType) لضبط تردد وحدة المعالجة المركزية وتحسين كفاءة الطاقة وعمر البطارية.\n• سيقوم هذا التصحيح بتعديل تعريف وحدة المعالجة المركزية بحيث يعتقد نظام التشغيل macOS أنه معالج من النوع الإضافي = 1 تتطلبه أجهزة Apple، وبالتالي تحميل إدارة تردد وحدة المعالجة المركزية بشكل صحيح وتحسين الأداء والتحكم في استهلاك الطاقة.';

  @override
  String get autoGen5655 =>
      'تمكين دعم NVRAM (عادةً للوحات الأم من سلسلة Intel 300 الأصلية)';

  @override
  String get autoGen5656 =>
      '• ينطبق على منصات Intel Coffee Lake من الجيل الثامن إلى الجيل التاسع\n• قد لا تستخدم اللوحات الأم من السلسلة 300 الأصلية (مثل Z370 وB360) NVRAM بشكل صحيح في نظام التشغيل macOS، مما يتسبب في عدم حفظ بعض الوظائف (مثل iMessage وذاكرة التخزين ومعلمات التمهيد وما إلى ذلك).\n• يعمل هذا التصحيح على تمكين PMC (وحدة التحكم في إدارة الطاقة) باللوحة الأم، مما يسمح لنظام التشغيل macOS باستخدام NVRAM الأصلي بشكل طبيعي دون الحاجة إلى برنامج تشغيل EmuVariableUEFI إضافي.';

  @override
  String get autoGen5657 =>
      'إضافة جهاز PNLF لدعم الإضاءة الخلفية (أجهزة الكمبيوتر المحمولة والأجهزة المتكاملة فقط)';

  @override
  String get autoGen5658 =>
      '• يتطلب نظام التشغيل macOS جهاز PNLF (سطوع اللوحة) للتحكم بشكل صحيح في سطوع شاشة الكمبيوتر المحمول.\n• سيؤدي هذا التصحيح إلى إنشاء جهاز PNLF في ACPI، مما يسمح لنظام التشغيل macOS بضبط سطوع الشاشة وخيارات التحكم في سطوع العرض في تفضيلات النظام.\n• مناسب لأجهزة الكمبيوتر المحمولة وبعض أجهزة الكمبيوتر المتكاملة لحل مشكلة عدم توفر إمكانية ضبط السطوع.\n• UID = 14، ينطبق على: الجيل الأول من Arrandale من Intel، والجيل الثاني من Sandy Bridge، والجيل الثالث من Ivy Bridge\n  ملاحظة: بعض الأجهزة التي تستخدم UID: 14 ستواجه الحد الأقصى المحدود من السطوع أو مشاكل أخرى. من أجل حل هذه المشكلات، يجب تعيين المسار الصحيح لجهاز iGPU (بطاقة الرسومات المدمجة)، وقد يلزم استكمال معلومات تسجيل IGPU.\n• UID = 15، ينطبق على: الجيل الرابع من Intel Haswell، والجيل الخامس من Broadwell\n• UID = 16، ينطبق على: الجيل السادس من Intel Skylake، والجيل السابع من Kaby Lake، وبعض الجيل الرابع من Haswell\n• UID = 17، ينطبق على: السطوع المخصص، يُستخدم عادةً لبعض الأجهزة غير القياسية أو إعدادات Hackintosh ذات الاحتياجات الخاصة\n• UID = 18، مناسب لـ: السطوع المخصص، يُستخدم عادةً لبعض الأجهزة غير القياسية أو إعدادات Hackintosh ذات الاحتياجات الخاصة\n• UID = 19، ينطبق على: الجيل الثامن من CoffeeLake من Intel وما فوق، والجيل الأقل من 10، وأجهزة الكمبيوتر المحمولة من AMD\n• UID = 99، ينطبق على: الآخرين (يتطلب خصائص جهاز applbkl-name / applbkl-data المخصصة)، وقد لا يعمل على الإطلاق';

  @override
  String get autoGen5659 =>
      'يوفر دعم المستشعر المطلوب لضبط الإضاءة الخلفية للشاشة (ينطبق فقط على أجهزة الكمبيوتر المحمولة وأجهزة الكمبيوتر المتكاملة)';

  @override
  String get autoGen5660 =>
      '• يُستخدم لمحاكاة وتمكين وظيفة مستشعر Apple الأصلي (مستشعر الإضاءة المحيطة، ALS) لضبط سطوع الشاشة تلقائيًا\n• إذا كان جهازك يحتوي بالفعل على ALS (مثل بعض أجهزة الكمبيوتر المحمولة المتطورة) وكانت هناك مشكلات، فيمكنك محاولة إضافة SSDT-ALS0 لتصحيح وظيفة ضبط السطوع التلقائي، وإلا فلا يوصى بإضافة\n• ينطبق على: أجهزة الكمبيوتر الشخصية (AIOs) وأجهزة الكمبيوتر المحمولة فقط';

  @override
  String get autoGen5661 =>
      'يتنكر macOS على أنه Windows ويفتح الأجهزة المحظورة (مثل لوحات اللمس I2C)';

  @override
  String get autoGen5662 =>
      '• _OSI (واجهة نظام التشغيل) هي إحدى طرق ACPI التي تسمح لنظام التشغيل بالإبلاغ عن الميزات التي يدعمها.\n• قد تقرر بعض البرامج الثابتة للوحة الأم ما إذا كان سيتم تمكين أجهزة معينة بناءً على قيمة الإرجاع _OSI، والتي قد لا يتعرف عليها macOS، مما يؤدي إلى فقدان الوظائف.\n• \"يخدع\" التصحيح البرنامج الثابت ليعتقد أن macOS هو أيضًا Windows، وبالتالي تنشيط الميزات المخفية مثل: لوحة اللمس I2C، وإدارة البطارية، وما إلى ذلك.';

  @override
  String get autoGen5663 => 'إعادة ضبط منفذ USB وإصلاحه';

  @override
  String get autoGen5664 =>
      '• تنتهك بعض الشركات المصنعة للمعدات الأصلية مواصفات ACPI، مما يسبب مشكلات عند تشغيل macOS. لحل هذه المشكلة، يجب إيقاف تشغيل جهاز RHUB وإجبار macOS على إعادة إنشاء المنفذ يدويًا.\n• يقوم هذا التصحيح بإعادة تعيين وحدة تحكم USB (بما في ذلك حماية EHC1 وEHC2 وأجهزة USB الأخرى وإعادة تسميتها) عند بدء تشغيل macOS، بحيث يمكن التعرف على جميع منافذ USB بشكل صحيح، ويتم استخدامه مع تعيين USB (مثل: UTBMap.kext) لضمان عمل أجهزة USB بشكل صحيح.\n• عادة ما تكون مناسبة للوحات الأم المكتبية من السلسلة 400 (Asus، وما إلى ذلك) ومنصات IceLake المحمولة (Dell، Lenovo، وما إلى ذلك).';

  @override
  String get autoGen5665 => 'قم بإنشاء جسر لمسار جهاز PCI المفقود';

  @override
  String get autoGen5666 =>
      '• قد لا يتم التعرف على مسارات جهاز PCI لبعض اللوحات الأم أو الأجهزة بشكل صحيح في نظام التشغيل macOS، مما يتسبب في عدم عمل الجهاز بشكل صحيح، مثل بطاقات الرسومات وبطاقات الصوت وبطاقات الشبكة اللاسلكية وما إلى ذلك.\n• سيقوم هذا التصحيح بإنشاء جسور PCI الصحيحة لهذه الأجهزة، مما يضمن قدرة macOS على التعرف على أجهزة PCI هذه واستخدامها بشكل صحيح.';

  @override
  String get autoGen5667 =>
      'قم بتصحيح جدول APIC لحل مشكلة ذعر kernel CPU (ينطبق على منصة خادم HEDT)';

  @override
  String get autoGen5668 =>
      '• قم بإصلاح أو إعادة كتابة معرف المعالج في جدول APIC للتأكد من أن macOS يمكنه تحديد عدد مراكز وحدة المعالجة المركزية وعددها بشكل صحيح وتجنب ذعر kernel أو أخطاء التعريف الأساسية.\n• يجب إدراج جدول APIC الأصلي في البرنامج الثابت قبل أن يتم تحميل الجدول المصحح.\n• ينطبق على أنظمة X58، وX79، وX99، وX299 ومنصات خادم Intel الأخرى (HEDT).';

  @override
  String get autoGen5669 =>
      'قم بإزالة منطقة الذاكرة المحجوزة لـ DMAR، وإصلاح مشكلات بدء تشغيل النظام ومشكلات توافق بطاقة الشبكة';

  @override
  String get autoGen5670 =>
      '• يعد DMAR (جدول إعادة تعيين DMA) جزءًا من تقنية المحاكاة الافتراضية Intel VT-d لدعم IOMMU (وحدة إدارة ذاكرة الإدخال والإخراج).\n• سيؤدي هذا التصحيح إلى إزالة منطقة الذاكرة المحجوزة في جدول DMAR التي تسبب المشكلة، وبالتالي منع macOS من قراءة DMAR بشكل خاطئ والتسبب في فشل تشغيل النظام.\n• توفير الدعم للتوافق مع VT-d بحيث يعمل VT-d بشكل صحيح في نظام التشغيل macOS Big Sur والإصدارات الأحدث، خاصة فيما يتعلق بالأجهزة التي يتم تشغيلها بواسطة DriverKit.\n• يدعم macOS VT-d، ولكن هناك مشكلات في التوافق مع جدول DMAR الذي توفره بعض اللوحات الأم أو BIOS، مما قد يتسبب في تسبب macOS في حدوث تعطل kernel وتأخر بدء التشغيل وعدم استقرار النظام ومشكلات أخرى عند تحليل جدول ACPI DMAR (عالق في مواقع السجل ذات الصلة بـ AppleACPICPU وIOPCI وAppleVTD).\n• نطاق الأجهزة المدعومة: بطاقة شبكة I225، وبطاقة شبكة Aquantia، وبعض أجهزة WiFi، وما إلى ذلك.\n• يجب إدراج جدول DMAR الأصلي في البرنامج الثابت قبل تحميل الجدول المصحح.\n• وحدة المعالجة المركزية القابلة للتطبيق: أي معالج يدعم تقنية VT-d.';

  @override
  String get autoGen5671 => 'إضافة دعم ناقل النظام SMBus';

  @override
  String get autoGen5672 =>
      '• يتطلب macOS جهاز SMBus (ناقل إدارة النظام) لتشغيل خدمات معينة بشكل صحيح، مثل:\n  لوحة لمس I2C، وإدارة البطارية، وتعديل السطوع التلقائي باستشعار الضوء، وبعض أجهزة Wi-Fi/Bluetooth\n• SSDT-SBUS-MCHC يجعل macOS يعتقد أن هذا جهاز Apple أصلي عن طريق إضافة أجهزة SBUS (ناقل إدارة النظام) وMCHC (وحدة التحكم في الذاكرة) إلى ACPI، مما يضمن عمل الوظائف ذات الصلة بشكل صحيح.\n• إذا تعذر استخدام لوحة اللمس I2C الخاصة بالجهاز ومعلومات البطارية وضبط السطوع التلقائي، فيمكنك محاولة تمكين هذا التصحيح.';

  @override
  String get autoGen5673 =>
      'إصلاح مشكلة فشل تسريع الرسومات الأساسية (ينطبق عادةً على Ivy Bridge وSandy Bridge)';

  @override
  String get autoGen5674 =>
      '• محرك إدارة Intel (IMEI للاختصار) عبارة عن واجهة جهاز تستخدم للاتصال بمحرك الإدارة. تكون هناك حاجة إليه فقط عندما تفتقر الأنظمة الأساسية القديمة (Sandy/Ivy) وبعض اللوحات الأم إلى أجهزة MEI/IMEI/HECI.\n• ينطبق على معالج Intel Ivy Bridge من الجيل الثالث واللوحة الأم من السلسلة 6 عند الخلط (على سبيل المثال: معالج i3 3225، اللوحة الأم H61)، مشكلة تسريع الرسومات الأساسية\n• ينطبق على معالج Intel Sandy Bridge من الجيل الثاني واللوحة الأم من السلسلة 7 عند الخلط (على سبيل المثال: معالج i5 2500k، اللوحة الأم B75)، مشكلة تسريع الرسومات الأساسية\n• معالجات Intel من الجيل الثالث Ivy Bridge المقترنة باللوحات الأم من السلسلة 7، ومعالجات Intel من الجيل الثاني Sandy Bridge المقترنة باللوحات الأم من السلسلة 6 لا تتطلب SSDT!\n• يمكن للجيل الرابع من Intel Haswell والأنظمة الأساسية الأحدث عادةً تنفيذ أجهزة MEI/IMEI/HECI بشكل صحيح ولا تحتاج إلى SSDT!';

  @override
  String get autoGen5675 =>
      'إصلاح مشكلة إيقاف التشغيل وإعادة التشغيل أو إيقاف التشغيل بدون مصدر طاقة';

  @override
  String get autoGen5676 =>
      '• تم إصلاح مشكلة عدم قيام بعض اللوحات الأم في بعض الأحيان بإيقاف تشغيل الطاقة بشكل كامل عن وحدة تحكم USB عند إيقاف تشغيل macOS (S5)، مما يؤدي إلى فشل إيقاف التشغيل بشكل طبيعي (يصبح إيقاف التشغيل بمثابة إعادة تشغيل أو إيقاف تشغيل بدون طاقة)\n• يتطلب تصحيح إعادة تسمية ACPI: _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      'تحقق من حالة النظام الحالية، وذلك بشكل أساسي للتحقق مما إذا كان S3 Sleep مدعومًا (SSDT غير المخصص)';

  @override
  String get autoGen5678 =>
      '• التحقق مما إذا كان الجهاز الحالي عبارة عن جهاز AOAC (SSDT غير مخصص)\n• التحقق من حالة النظام في إعدادات BIOS الحالية، بشكل أساسي للتحقق مما إذا كان وضع S3 مدعومًا (SSDT غير المخصص)\n• ملاحظة: الأجهزة التي لا تحتوي على AOAC هي فقط المتوافقة مع S3 Sleep. تتعارض أجهزة AOAC مع S3 Sleep ولا تدعم S3 Sleep!\n• إذا أظهرت نتيجة الفحص أن حالة النظام لجهاز غير AOAC (جهاز AOAC لا يدعم سكون S3، لا تقرأ أدناه) لا يدعم سكون S3، فقد تكون هناك المواقف التالية:\n  1. تدعم البرامج الثابتة للوحة الأم وضع S3 Sleep، ولكن لم يتم تمكين S3 Sleep في إعدادات BIOS. بعد تمكينه، يمكن دعم S3 Sleep.\n  2. لا تقوم البرامج الثابتة للوحة الأم بإخصاء S3 فعليًا، لكن DSDT لا يحدد طريقة _S3. من المحتمل أن يؤدي إكمال طريقة _S3 إلى إصلاح مشكلة سكون S3.\n  3. تقوم البرامج الثابتة للوحة الأم بإخصاء S3 فعليًا ولا تدعم وضع S3 على الإطلاق. حتى إذا اكتملت طريقة _S3، فلا يمكن إصلاح مشكلة سكون S3.';

  @override
  String get autoGen5679 => 'تحقق مما إذا كان جهاز AOAC (SSDT غير مخصص)';

  @override
  String get autoGen5680 =>
      '• التحقق مما إذا كان الجهاز عبارة عن جهاز AOAC (SSDT غير مخصص) استنادًا إلى FACP.aml\n• ملاحظة: الأجهزة التي لا تحتوي على AOAC هي فقط المتوافقة مع S3 Sleep. تتعارض أجهزة AOAC مع S3 Sleep ولا تدعم S3 Sleep! آلات AOAC شائعة في أجهزة الكمبيوتر المحمولة.\n• بمجرد دخول جهاز AOAC في وضع السكون S3، قد يبدو أنه لا يمكن إيقاظه بعد النوم ويظهر في حالة تعطل، ولا يمكن إلا إجباره على إيقاف التشغيل. يوصى بتعطيل وضع S3 الخاص بالنوم.\n• توصي آلات AOAC بالنظر في الحلول التالية:\n  1. فتح BIOS وتعطيل AOAC (عادةً ما يكون ذلك صعبًا، ولكنه الأكثر استقرارًا)\n  2. تعطيل وضع السكون S3 (تعطيل وضع السكون S3 في BIOS، أو SSDT-S3-DISABLE لتعطيل وضع السكون S3)\n  3. قم بإيقاف تشغيل مصدر طاقة الرسومات المستقل\n  4. استخدم NVMeFix.kext لتمكين APST لـ SSD\n  5. تمكين ASPM (خيارات BIOS المتقدمة تمكن ASPM، وتصحيح SSDT يمكّن L1)';

  @override
  String get autoGen5681 => 'إصلاح مشكلة الاستيقاظ من النوم بسبب وحدة تحكم USB';

  @override
  String get autoGen5682 =>
      '• أعد تسمية GPRW إلى XPRW لإصلاح مشكلة التنبيه الفوري (ملاحظة: قد يتسبب ذلك في عدم قدرة لوحة مفاتيح USB على تنبيه الجهاز، يمكنك تنبيهه من خلال مفتاح التشغيل)\n• يتم استخدام SSDT-GPRW بشكل أكثر شيوعًا لأن معظم الأنظمة الأساسية تستخدم طريقة GPRW وعدد قليل جدًا من المنصات توفر وتستخدم طريقة UPRW.\n• متاح لSkylake ومنصات أحدث';

  @override
  String get autoGen5683 =>
      '• أعد تسمية GPRW إلى XPRW لإصلاح مشكلة التنبيه الفوري (ملاحظة: قد يتسبب ذلك في عدم قدرة لوحة مفاتيح USB على تنبيه الجهاز، يمكنك تنبيهه من خلال مفتاح التشغيل)\n• نادراً ما يتم استخدام SSDT-UPRW لأن معظم المنصات تستخدم طريقة GPRW وعدد قليل جدًا من المنصات توفر وتستخدم طريقة UPRW.\n• متاح لSkylake ومنصات أحدث';

  @override
  String get autoGen5684 =>
      'إصلاح مشكلة سكون زر السكون (ينطبق على أجهزة الكمبيوتر المحمولة)';

  @override
  String get autoGen5685 =>
      '• عندما تدخل بعض أجهزة الكمبيوتر في وضع السكون من خلال زر السكون SLPB (PNP0C0E)، يرسل ACPI معلمات غير صحيحة، مما يتسبب في اعتقاد macOS عن طريق الخطأ أنه تم إيقاف التشغيل. قد يؤدي ذلك إلى: إعادة التشغيل المباشر، أو التعطل بعد النوم، أو النوم الناجح ولكن حالة النظام تالفة.\n• التظاهر بأن \"الغطاء مغلق\" عند الضغط على زر النوم، مما يجبر PNP0C0E على النوم الخطير في وضع PNP0C0D الآمن والمستقر\n• مناسبة عادة لأجهزة الكمبيوتر المحمولة';

  @override
  String get autoGen5686 =>
      'تم إصلاح المشكلة حيث تحتاج إلى الضغط على أي مفتاح لتشغيل الشاشة بعد الاستيقاظ';

  @override
  String get autoGen5687 =>
      '• تم إصلاح المشكلة حيث تحتاج بعض الأجهزة إلى الضغط على أي مفتاح لتشغيل الشاشة بعد الاستيقاظ';

  @override
  String get autoGen5688 =>
      'إصلاح مشكلة ضوء التنفس غير الطبيعي لزر الطاقة بعد الاستيقاظ (ينطبق على أجهزة كمبيوتر Lenovo المحمولة)';

  @override
  String get autoGen5689 =>
      '• تم إصلاح مشكلة عدم عودة ضوء التنفس الموجود على الجانب A وضوء التنفس الموجود على زر الطاقة إلى الوضع الطبيعي بعد الاستيقاظ على بعض أجهزة الكمبيوتر المحمولة من Lenovo\n• تم إصلاح المشكلة حيث تكون حالة ضوء مؤشر الميكروفون F4 غير طبيعية بعد الاستيقاظ على بعض أجهزة الكمبيوتر المحمولة من Lenovo\n• ينطبق بشكل أساسي على أجهزة الكمبيوتر المحمولة من سلسلة Lenovo، ولا تنطبق عادةً العلامات التجارية الأخرى لأجهزة الكمبيوتر المحمولة';

  @override
  String get autoGen5690 =>
      'تعطيل حالة سكون النظام S3 (إصلاح مشكلات تعطل سكون S3 أو إعادة التشغيل أو إيقاف التشغيل)';

  @override
  String get autoGen5691 =>
      '• قم بتعطيل حالة سكون S3 فقط ضمن نظام macOS لتجنب تعطل النظام أو إعادة تشغيله أو إيقاف تشغيله عند تنبيه نظام macOS\n• عند التعطيل، فإن macOS فقط لم يعد يدعم وضع S3 Sleep (بالنقر فوق زر Sleep (السكون) أو تدخل الشاشة في وضع توفير الطاقة، يتم إيقاف تشغيل الشاشة، ولكن سيستمر المضيف في العمل ولن تتوقف المروحة عن العمل)\n• بعد تعطيل حالة السكون S3 في نظام التشغيل macOS، لم تعد بحاجة إلى تعديل أي إعدادات نظام لنظام التشغيل macOS، ولا تحتاج إلى إيقاف تشغيل وضع توفير الطاقة (قبل ذلك، قد تحتاج إلى تعديل إعدادات النظام -> إيقاف تشغيل العرض عندما يكون غير نشط -> أبدًا)\n• السيناريوهات القابلة للتطبيق: عندما لا يتم إصلاح مشكلة السكون، يتم تشغيل وضع توفير الطاقة في إعدادات نظام macOS (\"أوقف تشغيل الشاشة عندما تكون غير نشطة -> 10 دقائق\"). بعد أن يدخل النظام في حالة السكون، عندما يتم تنشيط نظام macOS، قد يتعطل النظام أو تتم إعادة تشغيله أو إيقاف تشغيله. في هذا الوقت، يمكنك تعطيل حالة السكون S3 لإصلاح المشكلة.\n• يتطلب تصحيح إعادة تسمية ACPI: _S3 -> XS3';

  @override
  String get autoGen5692 =>
      'يتم تغيير إعادة التشغيل السريع إلى إعادة التشغيل البارد لإصلاح مشكلة عدم توفر بعض الأجهزة.';

  @override
  String get autoGen5693 =>
      '• يتم تغيير إعادة التشغيل السريع إلى إعادة التشغيل البارد، مما يعمل على حل مشكلة عدم توفر بعض الأجهزة بعد إعادة التشغيل من Windows إلى macOS على بعض الأنظمة الأساسية. (على سبيل المثال: بطاقة الصوت، WiFi، Bluetooth)\n• ملاحظة: لم يتم إنشاء SSDT-FACP.aml! يتم إنشاء تصحيح ACPI فقط!';

  @override
  String get autoGen5694 => 'تعيين معرف جهاز الرسومات';

  @override
  String get autoGen5695 =>
      '• يستخدم لسيناريوهات تعيين معرف جهاز بطاقة الرسومات AMD، وإدخال معرفات الأجهزة المتوافقة من خلال ACPI للسماح للنظام بتحميل برنامج تشغيل الرسومات المقابل.\n• يوصى به فقط للطرز التي تم وضع علامة واضحة عليها في بيانات توافق RapidEFI على أنها تتطلب تعيين معرف الجهاز.';

  @override
  String get autoGen5696 => 'حماية جهاز ACPI';

  @override
  String get autoGen5697 =>
      '• يُستخدم للتعامل مع أجهزة PCI في طبقة ACPI غير المناسبة للتسليم إلى برنامج تشغيل macOS، مثل بطاقات الرسومات غير المتوافقة أو وحدات تحكم NVMe أو أجهزة التوسعة الأخرى.\n• تحاول أجهزة الكمبيوتر المحمولة إلغاء تنشيط مستوى الطاقة أولاً؛ إذا كان البرنامج الثابت لا يدعم طريقة إمداد الطاقة، فسيتم الرجوع إلى طبقة برنامج التشغيل لتجنب ذلك.\n• تستخدم أجهزة الكمبيوتر المكتبية ووحدات NUC وHEDTs أساليب التحايل العامة بشكل افتراضي لتجنب الاعتماد على أساليب طاقة الرسومات المستقلة التي لا توجد عادةً في البرامج الثابتة للجهاز.\n• تتطلب كافة السيناريوهات مسار ACPI صالحًا؛ إذا أبلغ الجهاز عن فقدان مسار ACPI، فسيتم تخطي الجهاز تلقائيًا.';

  @override
  String get autoGen5698 =>
      'معدات بطاقات الشبكة السلكية المزيفة (تنطبق على أجهزة الكمبيوتر المحمولة التي لا تحتوي على بطاقات شبكة سلكية)';

  @override
  String get autoGen5699 =>
      '• توفر بطاقة شبكة افتراضية NullEthernet وهمية لأنظمة Hackintosh لحل اعتماد iMessage وFacetime وiCloud وخدمات Apple الأخرى على معدات الشبكة المدمجة';

  @override
  String get autoGen5700 =>
      'إصلاح مشكلة لوحة اللمس I2C للكمبيوتر المحمول (ينطبق على أجهزة الكمبيوتر المحمولة)';

  @override
  String get autoGen5701 =>
      '• من خلال إصلاح تركيب عقدة أجهزة ACPI، والتأكد من تمكين الجهاز في نظام macOS، وإصلاح مشكلة عدم إمكانية التعرف على بعض لوحات اللمس I2C بشكل طبيعي.\n• يعمل SSDT-GPI0 على حل مشكلة تثبيت برامج التشغيل على الأجهزة. يستخدم SSDT-XOSI بشكل أساسي لإصلاح مشكلة عدم التوافق بين منطق تهيئة BIOS/ACPI والتعرف على نظام التشغيل (في بعض الأحيان يمكنه إصلاح مشكلة لوحة اللمس)';

  @override
  String get autoGen5702 =>
      'إعادة تسمية وحدة المعالجة المركزية لشرائح B850 وB650 وB550 وA520 (فقط لمنصات Ryzen)';

  @override
  String get autoGen5703 =>
      '• ينطبق على إعادة تسمية وحدة المعالجة المركزية لمجموعات الشرائح B850 وB650 وB550 وA520 لإصلاح مشكلة التعطل الناجمة عن عدم قدرة منصة AMD على التعرف على وحدة المعالجة المركزية (يوصى به فقط عند استخدام تصحيحات SSDT المعدة مسبقًا)\n• عند تخصيص تصحيح SSDT، يوصى باستخدام SSDT-PLUG المخصص! (تغير منصة AMD Ryzen اسمها تلقائيًا إلى SSDT-PLUG-ALT عند تخصيص SSDT)';

  @override
  String get autoGen5704 =>
      'إصلاح إدارة الطاقة (ينطبق على الجيل الثاني عشر من Intel وما فوق، وبعض AMD Ryzen والأنظمة الأساسية الأخرى)';

  @override
  String get autoGen5705 =>
      '• يعتمد macOS على المكون الإضافي لإدارة طاقة وحدة المعالجة المركزية (PluginType) لضبط تردد وحدة المعالجة المركزية وتحسين كفاءة الطاقة وعمر البطارية.\n• سيقوم هذا التصحيح بتعديل تعريف وحدة المعالجة المركزية بحيث يعتقد نظام التشغيل macOS أنه معالج من النوع الإضافي = 1 تتطلبه أجهزة Apple، وبالتالي تحميل إدارة تردد وحدة المعالجة المركزية بشكل صحيح وتحسين الأداء والتحكم في استهلاك الطاقة.\n• ينطبق على الجيل الثاني عشر من Intel Alder Lake وما فوق، وبعض منصات AMD Ryzen';

  @override
  String get autoGen5706 =>
      'تعطيل AWAC (المؤقت الحديث) (متوفر للجيل الثامن من Intel Coffee Lake وما فوق)';

  @override
  String get autoGen5707 =>
      '• تعطيل AWAC (المؤقت الحديث) أثناء تمكين أو انتحال RTC القديم\n• متوافق مع الجيل الثامن من Intel Coffee Lake وما فوق';

  @override
  String get autoGen5708 =>
      'مطلوب من قبل جميع اللوحات الأم X99 (C612) الأصلية ومعظم اللوحات الأم X79 (C602) الأصلية';

  @override
  String get autoGen5709 =>
      '• ينطبق SSDT على جميع اللوحات الأم X99 ومعظم اللوحات الأم X79. وتتمثل وظيفتها الرئيسية في تعطيل الأجهزة غير المستخدمة في ACPI لمنع IOPCIFamily من التسبب في ذعر kernel.\n• اللوحات الأم القابلة للتطبيق: جميع اللوحات الأم الأصلية X99 (C612) ومعظم اللوحات الأم الأصلية X79 (C602).';

  @override
  String get autoGen5710 =>
      'تمكين مؤقت RTC القديم أو تزييفه، وإصلاح نطاق RTC (ينطبق على جميع اللوحات الأم الأصلية X99 (C612) وX299)';

  @override
  String get autoGen5711 =>
      '• تمكين مؤقتات RTC القديمة أو تزييفها وإصلاح نطاق RTC.\n• حل وقت التمهيد غير الصحيح، والأخطاء المتعلقة بـ RTC، ومشكلات التنبيه أثناء النوم، وما إلى ذلك.\n• ينطبق SSDT على جميع اللوحات الأم X99(C612) وكذلك اللوحات الأم X299';

  @override
  String get autoGen5712 => 'إضافة دعم DTGP';

  @override
  String get autoGen5713 =>
      '• قم بإدخال سمات الجهاز لإصلاح بعض مشكلات ACPI مع بطاقات الرسومات، وبطاقات الصوت، وبطاقات Thunderbolt، وما إلى ذلك. (في حالة عدم وجود دعم لطريقة DTGP، قد تفشل عمليات حقن السمات هذه أو لا تعمل!)';

  @override
  String get autoGen5714 => 'تزوير وحدة تحكم DMA القياسية';

  @override
  String get autoGen5715 =>
      '• وحدة تحكم جهاز ظاهري (PNP0200) تحاكي وحدة تحكم DMA القياسية (وحدة تحكم الوصول المباشر للذاكرة)، وتكمل جدول موارد ACPI، وتسمح لنظام التشغيل macOS بالتعرف بشكل صحيح على أجهزة ناقل LPC ووظائف DMA.\n• عادةً غير مطلوب لمنصات HEDT/الخادم\n• إضافة الأجزاء المفقودة، هذا مجرد حل مثالي، وليس ضروريا!';

  @override
  String get autoGen5716 => 'تزوير وحدة تحكم PWRB القياسية';

  @override
  String get autoGen5717 =>
      '• تزييف جهاز زر الطاقة القياسي (PNP0C0C) للسماح لنظام التشغيل macOS بالتعرف على زر طاقة النظام بشكل طبيعي ودعم وضع السكون والاستيقاظ\n• لا يوجد PNP0C0C في بعض أشجار ACPI الخاصة بـ BIOS/اللوحة الأم، ولا يستطيع macOS التعامل مع زر الطاقة بشكل صحيح، مما قد يؤدي إلى عدم القدرة على النوم، وعدم القدرة على الاستيقاظ، وعدم توفر زر الطاقة في شريط القائمة.\n• إضافة الأجزاء المفقودة، هذا مجرد حل مثالي، وليس ضروريا!';

  @override
  String get autoGen5718 => 'تزوير وحدة تحكم SLPB القياسية';

  @override
  String get autoGen5719 =>
      '• تزييف جهاز زر السكون القياسي (PNP0C0E) للسماح لنظام التشغيل macOS بالتعرف بشكل صحيح على زر سكون النظام وتنفيذ وظائف السكون والاستيقاظ\n• لا يوجد PNP0C0E في بعض أشجار ACPI الخاصة بـ BIOS/اللوحة الأم، ولا يستطيع نظام macOS التعامل مع زر السكون بشكل صحيح، مما قد يؤدي إلى عدم القدرة على النوم، وعدم القدرة على الاستيقاظ، وعدم توفر زر السكون في شريط القائمة.\n• هذا الجزء مطلوب لطريقة تصحيح النوم PNP0C0E!\n• إضافة الأجزاء المفقودة، هذا مجرد حل مثالي، وليس ضروريا!';

  @override
  String get autoGen5720 => 'جهاز MEM2 مطلوب لتقليد IGPU';

  @override
  String get autoGen5721 =>
      '• إضافة جهاز MEM2 ACPI المطلوب من قبل IGPU وإصلاح المشكلات المتعلقة بـ IGPU\n• استكمال تعيين ذاكرة العرض الأساسية لتجنب فشل تهيئة برنامج التشغيل\n• النطاق المطبق: Haswell ~ Kaby Lake، نظام الرسومات الأساسي فقط. عادةً ما لا تحتاج الرسومات المنفصلة فقط إلى SSDT!';

  @override
  String get autoGen5722 => 'مسار غير صالح';

  @override
  String get autoGen5723 => 'لم يتم العثور على ملف .aml أو .dat صالح';

  @override
  String get autoGen5724 => 'إلغاء ترجمة ملفات SSDT.aml على دفعات...';

  @override
  String get autoGen5725 => 'إلغاء ترجمة ملفات DSDT.aml وSSDT.aml على دفعات...';

  @override
  String get autoGen5726 =>
      'يتم الآن إلغاء ترجمة ملفات .aml الفاشلة بشكل فردي...';

  @override
  String get autoGen5727 => 'يتم الآن إلغاء ترجمة ملفات .aml الأخرى...';

  @override
  String get autoGen5728 =>
      'ملاحظة: حاول عدم تضمين أحرف صينية أو خاصة في المسار أو اسم الملف، وإلا فقد يسبب ذلك مشاكل غير متوقعة!';

  @override
  String get autoGen5729 => 'أداة تصدير ACPI ليست جاهزة';

  @override
  String get autoGen5730 => 'جارٍ تصدير جداول ACPI...';

  @override
  String get autoGen5731 => 'النظام الأساسي الحالي لا يدعم تصدير جداول ACPI';

  @override
  String get autoGen5732 => 'في انتظار ترخيص كلمة مرور Sudo ...';

  @override
  String get autoGen5733 => 'تم إلغاء ترخيص المسؤول';

  @override
  String get autoGen5734 => 'لم يتم إدخال كلمة مرور المسؤول';

  @override
  String get autoGen5735 => 'كلمة مرور المسؤول غير صحيحة';

  @override
  String get autoGen5736 => 'فشلت عملية تصدير جدول ACPI';

  @override
  String get autoGen5737 =>
      'جدول ACPI المستخرج بواسطة النظام الأساسي الحالي فارغ أو لا يدعم تصدير جدول ACPI.';

  @override
  String get autoGen5738 =>
      '=> لم يتم العثور على DSDT، التصدير عن طريق التوقيع...';

  @override
  String get autoGen5739 => 'فشل تصدير جدول DSDT';

  @override
  String get autoGen5740 => 'جارٍ تحديث اسم الجدول...';

  @override
  String get autoGen5741 => 'تصدير جدول ACPI بنجاح!';

  @override
  String get autoGen5742 => 'لم يتم توفير جدول ACPI صالح!';

  @override
  String get autoGen5743 =>
      'لم يتم العثور على البيانات السداسية العشرية التي سيتم تحديد موقعها!';

  @override
  String get autoGen5744 => 'لم يتم العثور على معرف التعبئة الفريد!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: معلمة جدول غير صالحة';

  @override
  String get autoGen5746 => 'الأكثر مرونة';

  @override
  String get autoGen5747 => 'الطول فقط';

  @override
  String get autoGen5748 => 'معرف الجدول وطوله، تعطيل الرؤوس التي تمت تسويتها';

  @override
  String get autoGen5749 => 'معرف الجدول وطوله، تمكين الرؤوس المقيسة';

  @override
  String get autoGen5750 =>
      'إنتل الجيل الأول من Arrandale، الجيل الثاني من Sandy Bridge، الجيل الثالث من Ivy Bridge';

  @override
  String get autoGen5751 => 'إنتل الجيل الرابع هاسويل، الجيل الخامس برودويل';

  @override
  String get autoGen5752 =>
      'Intel الجيل السادس من Skylake، والجيل السابع من Kaby Lake، وبعض الجيل الرابع من Haswell';

  @override
  String get autoGen5753 =>
      'سطوع مخصص، يُستخدم عادةً لبعض المعدات غير القياسية أو إعدادات الاحتياجات الخاصة';

  @override
  String get autoGen5754 =>
      'Intel الجيل الثامن من CoffeeLake ~ الجيل العاشر وأجهزة الكمبيوتر المحمولة من AMD';

  @override
  String get autoGen5755 =>
      'البعض الآخر (يتطلب خصائص جهاز applbkl-name / applbkl-data المخصصة)، قد لا يكون مدعومًا';

  @override
  String get autoGen5756 =>
      'تدعم أدوات ACPI حاليًا الأنظمة الأساسية Windows/macOS/Linux فقط';

  @override
  String get autoGen5757 =>
      'ملاحظة: الإصدار القديم من iasl-legacy يدعم فقط نظام التشغيل macOS 10.6 والإصدارات السابقة. قد تكون هناك مشكلات في التوافق مع الأنظمة السائدة الحالية، لذا استخدمها بحذر!!!';

  @override
  String get autoGen5758 => 'استخدم [مترجم الإصدار القديم iasl-legacy]';

  @override
  String get autoGen5759 => 'فشل التجميع!';

  @override
  String get autoGen5760 =>
      'يوصى بالتغيير إلى إصدار جديد من IASL أو تمكين الترجمة القسرية والمحاولة مرة أخرى!';

  @override
  String get autoGen5761 => 'يخرج';

  @override
  String get autoGen5762 => 'غير موجود';

  @override
  String get autoGen5763 =>
      'ملاحظة: يستخدم الجيل الأول من Arrandale من Intel والجيل الثاني من Sandy Bridge والجيل الثالث من Ivy Bridge UID: 14 ​​​​بشكل افتراضي، لكن بعض الأجهزة التي تستخدم UID: 14 ​​ستواجه الحد الأقصى المحدود من السطوع أو مشاكل أخرى. من أجل حل هذه المشكلات، يجب تعيين المسار الصحيح لجهاز iGPU (بطاقة الرسومات المدمجة)، وقد يلزم استكمال معلومات تسجيل IGPU.';

  @override
  String get autoGen5764 =>
      'الرجاء إدخال مسار iGPU ACPI المراد استخدامه. الحد الأقصى لعدد الأحرف لكل عنصر مسار هو 4 أحرف أبجدية رقمية (تبدأ بحرف أو شرطة سفلية)، مفصولة بمسافات. على سبيل المثال: SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      'ملاحظة: تم إنشاء تصحيح NBCF (يعتمد على برنامج تشغيل BrightnessKeys.kext)، ويتم تمكينه افتراضيًا! إذا واجهت مشاكل أثناء الاستخدام، يرجى تعطيل هذا التصحيح!';

  @override
  String get autoGen5766 => 'لا يمكن حل الجسر التالي:';

  @override
  String get autoGen5767 =>
      '=> تدعم البرامج الثابتة الحالية حالات النظام المشتركة! إذا لم يكن جهاز AOAC، بعد إصلاح مشكلة السكون، يمكن لنظام التشغيل macOS دعم S3 Sleep، وإلا فإنه لا يدعم S3 Sleep!';

  @override
  String get autoGen5768 => 'رقعة';

  @override
  String get autoGen5769 => 'انتهت مهلة الاتصال بالخادم';

  @override
  String get autoGen5770 => 'تم إلغاء التنزيل';

  @override
  String get autoGen5771 => 'قراءة مهلة الاستجابة';

  @override
  String get autoGen5772 => 'تم نسخ Kext بنجاح';

  @override
  String get autoGen5773 =>
      'يتم تنزيل نظام الويب الأساسي مباشرةً بشكل افتراضي، ولا يدعم حاليًا تحديد المسار الافتراضي.';

  @override
  String get autoGen5774 => 'العقدة الجذرية لملف التكوين ليست كائن JSON';

  @override
  String get autoGen5775 => 'اتبع النظام';

  @override
  String get autoGen5776 => 'إنهاء';

  @override
  String get autoGen5777 => 'مايكروسوفت ياهي';

  @override
  String get autoGen5778 => 'تحديث الجسم الأسود';

  @override
  String get autoGen5779 => 'سيوان سونجتي';

  @override
  String get autoGen5780 => 'في انتظار تحديث معلومات الأجهزة';

  @override
  String get autoGen5781 => 'تحميل معلومات الأجهزة';

  @override
  String get autoGen5782 => 'تحديث معلومات الأجهزة';

  @override
  String get autoGen5783 => 'اكتمل تحميل معلومات الأجهزة';

  @override
  String get autoGen5784 => 'فشل تحميل معلومات الأجهزة';

  @override
  String get autoGen5785 => 'معلومات الأجهزة غير مدعومة حتى الآن';

  @override
  String get autoGen5786 => 'اكتمل استيراد معلومات الأجهزة';

  @override
  String get autoGen5787 => 'يفشل';

  @override
  String get autoGen5788 => 'غير معتمد';

  @override
  String get autoGen5789 => 'ينهي';

  @override
  String get autoGen5790 => 'مخبأ';

  @override
  String get autoGen5791 =>
      'النظام الأساسي الحالي لا يدعم الاستعلام عن معلومات الأجهزة';

  @override
  String get autoGen5792 =>
      'التقرير الحالي عبارة عن تقرير أجهزة خارجية مستوردة. الرجاء تحديث معلومات الأجهزة المحلية قبل التصدير.';

  @override
  String get autoGen5793 =>
      'لا توجد حاليًا أية معلومات عن الأجهزة المحلية القابلة للتصدير.';

  @override
  String get autoGen5794 => 'فشل تنظيف مجلد تقارير الأجهزة';

  @override
  String get autoGen5795 => 'فشل إنشاء مجلد تقارير الأجهزة';

  @override
  String get autoGen5796 => 'فشل تصدير جدول ACPI أو أنه غير مدعوم';

  @override
  String get autoGen5797 => 'تم إلغاء ترخيص المسؤول ولم يتم تصدير جدول ACPI';

  @override
  String get autoGen5798 =>
      'غير قادر على تصدير جدول ACPI دون إدخال كلمة مرور المسؤول';

  @override
  String get autoGen5799 =>
      'كلمة مرور المسؤول غير صحيحة ولا يمكن تصدير جدول ACPI.';

  @override
  String get autoGen5800 =>
      'فشل تصدير جدول ACPI: لم يتم العثور على جدول ACPI صالح';

  @override
  String get autoGen5801 => 'فشل تصدير جدول ACPI: فشلت عملية التصدير.';

  @override
  String get autoGen5802 => 'ملف معلومات الأجهزة ليس كائن JSON';

  @override
  String get autoGen5803 => 'تم استيراد معلومات الأجهزة';

  @override
  String get autoGen5804 => 'كتالوج جدول ACPI غير صالح، SSDT المخصص غير متوفر';

  @override
  String get autoGen5805 => 'ابدأ في تكوين EFI...';

  @override
  String get autoGen5806 =>
      'جارٍ إنشاء ConfigModel استنادًا إلى معلومات الأجهزة...';

  @override
  String get autoGen5807 => 'استخدم EFI SSDT الخام، وتخطي تخصيص SSDT.';

  @override
  String get autoGen5808 =>
      'تم استيراد تقرير الأجهزة الخارجية ولكن لم يتم توفير كتالوج جدول ACPI، وتم تعطيل SSDT المخصص.';

  @override
  String get autoGen5809 => 'تصدير OpenCore EFI...';

  @override
  String get autoGen5810 =>
      'تمت كتابة EFI، وابدأ في استخراج ACPI وتخصيص SSDT...';

  @override
  String get autoGen5811 => 'تنتهي عملية تخصيص SSDT.';

  @override
  String get autoGen5812 => 'فشلت عملية تخصيص SSDT.';

  @override
  String get autoGen5813 => 'اكتمل تكوين EFI.';

  @override
  String get autoGen5814 =>
      'فشل تكوين EFI، برجاء التحقق من مسار الإخراج أو السجلات.';

  @override
  String get autoGen5815 =>
      'يقوم الجهاز تلقائيًا بإنشاء قواعد ConfigModel ويتم إعادة بنائها.';

  @override
  String get autoGen5816 => 'يجب أن يكون طول النصائح هو نفس الاختيارات';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'الأصول/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'الأصول/ssdt/بطاقة الصوت patch.md';

  @override
  String get autoGen5820 => 'الأصول/ssdt/بطاقة الرسومات counterfeit.md';

  @override
  String get autoGen5821 => 'الأصول/ssdt/جهاز التدريع.md';

  @override
  String get autoGen5822 => 'الأصول/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'تعليمات تشغيل البلوتوث:\n  1. عند تحديد Intel WiFi، ستتم إضافة برنامج تشغيل Intel Bluetooth تلقائيًا وفقًا لإصدار macOS، دون الحاجة إلى التحقق منه يدويًا! ! !\n  2. عند تحديد Broadcom WiFi، ستتم إضافة برنامج تشغيل Broadcom Bluetooth تلقائيًا وفقًا لإصدار macOS، دون الحاجة إلى التحقق منه يدويًا! ! !\n  3. عند تحديد Atheros WiFi، ستتم إضافة برنامج تشغيل Atheros Bluetooth تلقائيًا، دون الحاجة إلى التحقق منه يدويًا! ! !\n  4. إذا لم يتم تحديد طراز WiFi أو لم يتم شرح طراز Bluetooth، فستحتاج إلى التحقق منه يدويًا! ! !\n  5. بما أن البلوتوث يستخدم قناة USB، إذا كان لا يزال لا يعمل بشكل صحيح بعد إضافة برامج التشغيل والتصحيحات، فيرجى التأكد من تخصيص USB بشكل جيد! ! !';

  @override
  String get autoGen5824 =>
      'مسارات HPET الشائعة:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  يستخدم هذا الخيار لإصلاح بعض مشاكل IRQ لبطاقة الصوت! ملحوظة: إذا لم تكن بطاقة الصوت الخاصة بك بها مشكلات IRQ، فيرجى عدم استخدام هذه الوظيفة!!!';

  @override
  String get autoGen5825 =>
      'إصدارات نظام التشغيل Mac المدعومة:\n    • إصدار V18 من محول USB Big Sur اللاسلكي يدعم نظام التشغيل macOS Catalina 10.15.x ~ نظام التشغيل macOS Tahoe 26.x (يتطلب تصحيح OCLP USB)\n    • إصدار V15 من محول USB Big Sur اللاسلكي يدعم OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  USB WiFi المدعوم هو كما يلي:\n    • الشريحة الرئيسية هي محول Realtek 802.11n و802.11ac USB Wi-Fi. لمزيد من النماذج المحددة، يرجى الرجوع إلى تعليمات المؤلف.';

  @override
  String get autoGen5826 =>
      'رسومات AMD المنفصلة المزيفة (خصائص الجهاز):\n   1. تحتاج إلى ملء مسار PCI الخاص ببطاقة الرسومات، على سبيل المثال: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. تحتاج إلى ملء معرف الجهاز المزيف لبطاقة الرسومات (4 أرقام بالنظام الست عشري)، على سبيل المثال: 73BF\n   3. بعد تزييف بطاقة الرسومات، لا تزال بحاجة إلى مراعاة معلمات بدء التشغيل التي تتطلبها بطاقة الرسومات AMD (يمكنك الانتقال إلى تكوين الرسومات المستقلة -> رسومات AMD المستقلة -> التحقق حسب الحاجة)\n   4. قامت الأداة بإعداد بعض معرفات أجهزة بطاقة الرسومات مسبقًا. إذا لم يكن الأمر كذلك، يرجى العثور عليه بنفسك أو الاتصال بالمؤلف للحصول على معلومات تكميلية.';

  @override
  String get autoGen5827 => 'يتأكد';

  @override
  String get autoGen5828 => 'يلغي';

  @override
  String get autoGen5829 => 'بالتأكيد';
}
