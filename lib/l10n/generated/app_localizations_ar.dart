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

  @override
  String get navManualTab => 'تهيئة EFI اليدوية';

  @override
  String get navAutoTab => 'تهيئة EFI التلقائية';

  @override
  String get cpuSelection => 'اختيار المعالج (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'تتطلب معالجات Pentium أو Celeron انتحال المعالج (CPU spoofing)؛ يرجى تفعيل هذا!\nملاحظة: كروت iGPU لمعالجات Pentium/Celeron غير مدعومة عموماً!';

  @override
  String get platformSelection => 'اختيار نوع المنصة:';

  @override
  String get processorGeneration => 'جيل المعالج:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'يتطلب Comet Lake U62 (6 أنوية / 12 مساراً) انتحالاً مخصصاً للمعالج';

  @override
  String get amdCoresTitle => 'أنوية معالج AMD:';

  @override
  String get amdSpecialMb => 'لوحات أم خاصة بـ AMD:';

  @override
  String get usePrecastMmio => 'استخدام Precast MMIO';

  @override
  String get useRyzenGpu =>
      'تفعيل دعم معالج الرسوميات المدمج Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'علامة اللوحة الأم:';

  @override
  String get motherboardModel => 'موديل اللوحة الأم:';

  @override
  String get customMotherboard => 'لوحة أم مخصصة / عامة';

  @override
  String get igpuConfig => 'تهيئة معالج الرسوميات المدمج (iGPU):';

  @override
  String get dgpuConfig => 'تهيئة كرت الشاشة المنفصل (dGPU):';

  @override
  String get audioConfig => 'تهيئة الصوت:';

  @override
  String get audioCodecFix => 'ترميز الصوت ومعرف التخطيط';

  @override
  String get fixIrq => 'إصلاح تعارضات IRQ';

  @override
  String get networkConfig => 'تهيئة الشبكة واللاسلكي:';

  @override
  String get laptopDrivers => 'تعريفات الحواسيب المحمولة:';

  @override
  String get touchpadDriver => 'تعريف لوحة اللمس (I2C / PS2)';

  @override
  String get smbiosSelection => 'طراز SMBIOS المستهدف:';

  @override
  String get targetMacOsVersion => 'إصدار macOS المستهدف:';

  @override
  String get bootArgsTitle => 'معاملات الإقلاع (boot-args):';

  @override
  String get csrActiveConfigTitle => 'حماية تكامل النظام (SIP):';

  @override
  String get outputEfiTitle => 'مجلد إخراج EFI:';

  @override
  String get selectOutputFolder => 'تحديد مجلد الإخراج';

  @override
  String get clearConfig => 'مسح التهيئة';

  @override
  String get importConfigModel => 'استيراد configModel';

  @override
  String get importingConfigModel => 'جاري استيراد configModel...';

  @override
  String get dragDropConfigModel =>
      'اسحب وأفلت ملف configModel هنا\nأو انقر للتصفح';

  @override
  String get clearAllHistory => 'مسح كل السجل';

  @override
  String get clearingHistory => 'جاري مسح السجل...';

  @override
  String get noHistoryRecords => 'لا توجد سجلات بعد';

  @override
  String get overview => 'نظرة عامة';

  @override
  String get platformPatches => 'رقع المنصة';

  @override
  String get audioPatches => 'رقع الصوت';

  @override
  String get gpuSpoofing => 'انتحال كرت الشاشة';

  @override
  String get disableDevices => 'تعطيل الأجهزة';

  @override
  String get brightnessPatches => 'رقع السطوع';

  @override
  String get graphicsPatches => 'رقع الرسوميات';

  @override
  String get wifiPatches => 'رقع Wi-Fi';

  @override
  String get documentationGuides => 'الوثائق والأدلة';

  @override
  String get aboutSupport => 'حول والدعم';

  @override
  String get hardwareTabTitle => 'تهيئة العتاد';

  @override
  String get acpiFolderTitle => 'مجلد ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'جاري تحميل البيانات...';

  @override
  String get configuringEfiWait => 'جاري تهيئة EFI، يرجى الانتظار...';

  @override
  String get summary => 'ملخص';

  @override
  String get recent => 'الأحدث';

  @override
  String get efiConfig => 'تهيئة EFI';

  @override
  String get toolsAndGuides => 'الأدوات والأدلة';

  @override
  String get checkUpdates => 'التحقق من التحديثات';

  @override
  String get sponsorDeveloper => 'دعم المطور';

  @override
  String get releaseNotes => 'ملاحظات الإصدار';

  @override
  String get searchPlaceholder => 'بحث';

  @override
  String get initialSupportMacOs => 'إصدار macOS المدعوم أصلياً في البداية:';

  @override
  String get lastSupportMacOs => 'أحدث إصدار macOS مدعوم أصلياً:';

  @override
  String get oclpSupportMacOs => 'إصدارات macOS المدعومة عبر تصحيح OCLP:';

  @override
  String get cpuInfoTitle => '[معلومات المعالج]:';

  @override
  String get biosRecommendedEnabled => '[إعدادات BIOS الموصى بها - مفعلة]:';

  @override
  String get biosRecommendedDisabled => '[إعدادات BIOS الموصى بها - معطلة]:';

  @override
  String get historyExpanderDesc =>
      'يتم نسخ ملفات EFI التي تم إنشاؤها باستخدام RapidEFI احتياطياً تلقائياً في السجل.\nيمكنك إعادة تحميل وضبط أي EFI تم إنشاؤه مسبقاً في أي وقت.\n\nهذه الميزة مدعومة في RapidEFI V3.0.0 وما فوق.';

  @override
  String get gpuPresets => 'الإعدادات المسبقة';

  @override
  String get gpuByCpuModel => 'حسب طراز المعالج';

  @override
  String get selectCpuGeneration => 'حدد الجيل';

  @override
  String get selectCpuModel => 'حدد المعالج';

  @override
  String get cpuGenerationLabel => 'جيل المعالج';

  @override
  String get cpuModelLabel => 'طراز المعالج';

  @override
  String get matchingIgpuTip => 'حدد إذا كان متطابقاً، وإلا اتركه غير محدد';

  @override
  String get selectPropertiesToApply => 'حدد الخصائص لتطبيقها';

  @override
  String get motherboardConfigTitle => 'تكوين طراز اللوحة الأم:';

  @override
  String get motherboardConfigItems => 'حدد عناصر التكوين لتطبيقها';

  @override
  String get selectModelToConfigure => '(حدد الطراز للتكوين)';

  @override
  String get pleaseSelect => 'يرجى التحديد';

  @override
  String get selectAllDeselectAll => 'تحديد الكل / إلغاء تحديد الكل';

  @override
  String get deselectAll => 'إلغاء تحديد الكل';

  @override
  String get stuckOnEbFix =>
      'إصلاح التعليق عند [EB] (اختياري - يوصى بالإعدادات الافتراضية):';

  @override
  String get renameCurrentEfi => 'إعادة تسمية EFI الحالي';

  @override
  String get enterNewName => 'أدخل الاسم الجديد';

  @override
  String get renameEfiTooltip => 'إعادة تسمية EFI';

  @override
  String get adminPrivilegesRequired => 'مطلوب امتيازات المسؤول';

  @override
  String get enterLoginPassword =>
      'يرجى إدخال كلمة مرور تسجيل الدخول للكمبيوتر';

  @override
  String get importHardwareMaterials => 'استيراد مواد الأجهزة';

  @override
  String get currentBiosSettings => 'إعدادات BIOS الحالية';

  @override
  String get colorTheme => 'سمة الألوان';

  @override
  String get noValidHardwareReport => 'لم يتم العثور على ملف تقرير أجهزة صالح';

  @override
  String get viewOnGitHub => 'عرض على GitHub';

  @override
  String get downloadNow => 'تحميل الآن';

  @override
  String get btnConfirm => 'تأكيد';

  @override
  String get btnDeleteRecord => 'حذف هذا السجل';

  @override
  String get currentEfiNamePrefix => 'اسم EFI الحالي: ';

  @override
  String get close => 'إغلاق';

  @override
  String get applySelected => 'تطبيق المحدد';

  @override
  String get connectedGpuPrefix => 'وحدة معالجة الرسومات المتصلة: ';

  @override
  String get requiresSpoofIdPrefix => 'يتطلب معرف محاكاة: ';

  @override
  String get selectPlatform => 'جيل المنصة';

  @override
  String get selectVendor => 'العلامة التجارية';

  @override
  String get selectModel => 'طراز اللوحة الأم';

  @override
  String get btnImport => 'استيراد';

  @override
  String get defaultLabel => 'افتراضي';

  @override
  String get wifiBluetoothDrivers => 'برامج تشغيل Wi-Fi وبلوتوث:';

  @override
  String get noWifiDriversByDefault =>
      '(لم يتم تكوين برامج تشغيل Wi-Fi افتراضيًا)';

  @override
  String get getIntelModifiedOclp => 'الحصول على OCLP المعدل من Intel';

  @override
  String get forLaptopSystems => '(لأنظمة الكمبيوتر المحمول)';

  @override
  String get basicConfig => 'التكوين الأساسي';

  @override
  String get advancedConfig => 'التكوين المتقدم';

  @override
  String get portCustomization => 'تخصيص المنفذ';

  @override
  String get displayEdid => 'عرض إيد';

  @override
  String get nvidiaDgpu => 'نفيديا دي جي بي يو';

  @override
  String get amdDgpu => 'ايه ام دي دي جي بي يو';

  @override
  String get amdDgpuSpoof => 'AMD dGPU محاكاة ساخرة';

  @override
  String get intelWifi => 'إنتل واي فاي';

  @override
  String get broadcomBrcm => 'برودكوم (برسم)';

  @override
  String get atherosWifi => 'اثيروس';

  @override
  String get usbWifi => 'واي فاي يو اس بي';

  @override
  String get bluetoothDrivers => 'برامج تشغيل بلوتوث';

  @override
  String get debuggingTab => 'تصحيح الأخطاء';

  @override
  String get amfiSipTab => 'أمفي / رشفة';

  @override
  String get igpuFixesTab => 'إصلاحات iGPU';

  @override
  String get dgpuFixesTab => 'إصلاحات dGPU';

  @override
  String get blackScreenFixesTab => 'إصلاحات الشاشة السوداء';

  @override
  String get above4gTab => 'فوق فك تشفير 4G';

  @override
  String get trackpadFixesTab => 'إصلاحات لوحة التتبع';

  @override
  String get othersTab => 'آحرون';

  @override
  String get powerManagementTab => 'إدارة الطاقة';

  @override
  String get sleepHibernationTab => 'النوم / السبات';

  @override
  String get storageDiskTab => 'التخزين / القرص';

  @override
  String get cpuFixesTab => 'إصلاحات وحدة المعالجة المركزية';

  @override
  String get amdPlatformTab => 'منصة ايه ام دي';

  @override
  String get usbFixesTab => 'إصلاحات USB';

  @override
  String get sdCardTab => 'بطاقة SD';

  @override
  String get brandTab => 'ماركة';

  @override
  String get specialMotherboardTab => 'اللوحة الأم الخاصة';

  @override
  String get sipSettingsTab => 'إعدادات SIP';

  @override
  String get renameCpuTab => 'إعادة تسمية وحدة المعالجة المركزية';

  @override
  String get uiScaleTab => 'مقياس واجهة المستخدم';

  @override
  String get acpiConfigTab => 'تكوين ACPI';

  @override
  String get booterConfigTab => 'تكوين التمهيد';

  @override
  String get kernelConfigTab => 'تكوين النواة';

  @override
  String get uefiConfigTab => 'تكوين UEFI';

  @override
  String get lookupLayoutId => 'معرف تخطيط البحث';

  @override
  String get visitChris1111Repo => 'قم بزيارة مستودع chris1111';

  @override
  String get supportedMacOsVersions => 'إصدارات نظام التشغيل Mac المدعومة:';

  @override
  String get supportedUsbWifiChipsets => 'شرائح USB Wi-Fi المدعومة:';

  @override
  String get selectUtbMap => 'حدد خريطة UTB';

  @override
  String get selectUtbMapHint =>
      'حدد UTBMap.kext المعين الذي تم إنشاؤه باستخدام USBToolBox';

  @override
  String get reprocessEfiSubtitle =>
      '(إعادة معالجة EFI الذي تم إنشاؤه بواسطة RapidEFI)';

  @override
  String get reprocessEfiDetails =>
      'يقوم RapidEFI تلقائيًا بإخراج ملف configModel داخل مجلد EFI. قم باستيراد هذا الملف أدناه لإعادة تحميل وتخصيص تكوين EFI الخاص بك.';

  @override
  String get reprocessEfiVersionNote =>
      'هذه الميزة مدعومة في RapidEFI V3.0.0 والإصدارات الأحدث.';

  @override
  String get dropConfigModelHint =>
      'قم بإسقاط ملف configModel هنا أو انقر للتصفح';

  @override
  String get offLabel => 'عن';

  @override
  String get onLabel => 'على';

  @override
  String get githubRepository => 'مستودع جيثب';

  @override
  String get releasesAndUpdates => 'الإصدارات والتحديثات';

  @override
  String get projectDocumentation => 'توثيق المشروع';

  @override
  String get aboutSupportDetails =>
      'RapidEFI عبارة عن مولد OpenCore EFI آلي مفتوح المصدر، وأداة تصحيح ACPI/SSDT، وأداة تحليل الأجهزة المصممة لعشاق Hackintosh وmacOS.\n\nتم إنشاؤها والحفاظ عليها بالحب. قم بتمييز المشروع وشوكته على GitHub لدعم التطوير المستمر!';

  @override
  String get checkApplicableOptions => '(تحقق من الخيارات المطبقة)';

  @override
  String get optionalCheckApplicableOptions =>
      '(اختياري - تحقق من الخيارات القابلة للتطبيق)';

  @override
  String get appleAlcUsedByDefault =>
      '(يتم استخدام برنامج تشغيل AppleALC بشكل افتراضي)';

  @override
  String get noEthernetDriverByDefault =>
      '(لم تتم إضافة برنامج تشغيل Ethernet بشكل افتراضي)';

  @override
  String get usbInjectAllByDefault => '(يتم استخدام USBInjectAll بشكل افتراضي)';

  @override
  String get verboseModeByDefault =>
      '(يتم تمكين الوضع المطول -v بشكل افتراضي؛ قم بإلغاء تحديده للتعطيل)';

  @override
  String get optionalDriversSubtitle =>
      '(برامج التشغيل الاختيارية - غير مطلوبة ما لم تكن مطلوبة)';

  @override
  String get keepDefaultsSubtitle =>
      '(احتفظ بالإعدادات الافتراضية ما لم تكن هناك حاجة إلى تخصيص محدد)';

  @override
  String get optionalCheckDeviceBrand =>
      'اختياري - تحقق من تطابق العلامة التجارية لجهازك';

  @override
  String get optionalCheckMotherboardModel =>
      'اختياري - تحقق من تطابق طراز اللوحة الأم';

  @override
  String get optionalConfigureSip =>
      'اختياري - قم بتكوين SIP حسب الحاجة (معطل افتراضيًا)';

  @override
  String get optionalCustomCpuName =>
      'اختياري - اسم وحدة المعالجة المركزية المخصص';

  @override
  String get optionalAdjustUiScale =>
      'اختياري - ضبط مقياس واجهة المستخدم لتمهيد OpenCore';

  @override
  String get acpiSsdtPatches => 'ACPI - تصحيحات SSDT';

  @override
  String get acpiPatches => 'ACPI - التصحيحات';

  @override
  String get kernelPatches => 'النواة - البقع';

  @override
  String get powerManagement => 'إدارة الطاقة';

  @override
  String get ssdApfsTrimPolicy => 'سياسة القطع NVMe / SATA SSD APFS';

  @override
  String get kernelQuirksSubtitle =>
      'Kernel - Quirks (يوصى بالإعدادات الافتراضية ما لم تكن هناك حاجة إلى إصلاحات محددة)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - برامج التشغيل (احتفظ بالتكوينات الافتراضية ما لم تنشأ احتياجات محددة)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI - الإخراج (يوصى بالإعدادات الافتراضية)';

  @override
  String get method1Title =>
      'الطريقة الأولى: إعادة تسمية \"GPRW إلى XPRW\" (إصلاح التنبيه الفوري)';

  @override
  String get method2Title =>
      'الطريقة الثانية: إعادة تسمية \"UPRW إلى XPRW\" (إصلاح التنبيه الفوري)';

  @override
  String get method3Title =>
      'الطريقة الثالثة: إعادة تسمية \"RTC Fix\" (إصلاح إيقاف تشغيل RTC / إعادة تعيين CMOS)';

  @override
  String get method4Title =>
      'الطريقة الرابعة: إعادة تسمية \"إصلاح البطارية\" (دعم تصحيحات البطارية من 16 بت إلى 8 بت)';

  @override
  String get pciPathLabel => 'مسار dGPU PCI:';

  @override
  String get pciPathPlaceholder => 'أدخل مسار PCI';

  @override
  String get spoofedDeviceIdLabel => 'معرف الجهاز المخادع:';

  @override
  String get spoofedDeviceIdPlaceholder => 'حدد جهاز GPU للمحاكاة الساخرة';

  @override
  String get injectDisplayEdidLabel =>
      'حقن عرض EDID (عادةً 256 أو 512 حرفًا سداسي عشريًا):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'أدخل عرض EDID (عادةً 256 أو 512 حرفًا سداسيًا عشريًا؛ يُسمح بالمسافات والأسطر الجديدة)';

  @override
  String get failed => 'فشل';

  @override
  String get method1 => 'الطريقة 1';

  @override
  String get method2 => 'الطريقة 2';

  @override
  String get method3 => 'الطريقة 3';

  @override
  String get method4 => 'الطريقة 4';

  @override
  String get optionalKextDrivers => 'برامج تشغيل Kext الاختيارية';

  @override
  String get optionalKextSubTitle =>
      'حدد برامج تشغيل kext الاختيارية وفقًا لجهازك';

  @override
  String get brandConfigTab => 'العلامة التجارية';

  @override
  String get optionalSettings => 'إعدادات اختيارية';

  @override
  String get optionalSettingsSubTitle => 'حدد تكوينات اختيارية إضافية';

  @override
  String get optionalCheckMotherboard => 'خيارات اللوحة الأم الخاصة';

  @override
  String get processEfiExpanderTip =>
      'يقوم RapidEFI تلقائيًا بإخراج ملف configModel داخل مجلد EFI.\nقم باستيراد هذا الملف أدناه لإعادة تحميل تكوين EFI وتخصيصه.\n\nهذه الميزة مدعومة في RapidEFI V3.0.0 والإصدارات الأحدث.';

  @override
  String get releaseToReimportConfigModel => 'حرر لإعادة استيراد configModel';

  @override
  String get invalidConfigFileMessage =>
      'ملف التكوين غير صالح. يرجى تحديد ملف configModel صالح.';

  @override
  String get ethernetTitle => 'برامج تشغيل إيثرنت:';

  @override
  String get usbTitle => 'برامج تشغيل USB:';

  @override
  String get ssdtCoreOfficial => '* أساسي (رسمي)';

  @override
  String get ssdtRecommendedFixes => '* مستحسن (إصلاحات)';

  @override
  String get ssdtOptionalEnhancements => '* اختياري (تحسينات)';

  @override
  String get platformDesktop => 'كمبيوتر مكتبي';

  @override
  String get platformLaptop => 'كمبيوتر محمول';

  @override
  String get platformNucMini => 'NUC / كمبيوتر صغير';

  @override
  String get platformHedtServer => 'HEDT / خادم';
}
