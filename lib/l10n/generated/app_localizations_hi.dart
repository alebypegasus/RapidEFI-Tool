// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI टूल';

  @override
  String get navHardware => 'हार्डवेयर';

  @override
  String get navManual => 'मैनुअल EFI कॉन्फ़िगरेशन';

  @override
  String get navProcess => 'EFI प्रोसेस करें';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get navAbout => 'के बारे में';

  @override
  String get navSponsor => 'डेवलपर को प्रायोजित करें';

  @override
  String get btnRefresh => 'रिफ्रेश करें';

  @override
  String get btnImportReport => 'रिपोर्ट इम्पोर्ट करें';

  @override
  String get btnExportReport => 'रिपोर्ट एक्सपोर्ट करें';

  @override
  String get btnExportAcpi => 'ACPI एक्सपोर्ट करें';

  @override
  String get btnEfiSettings => 'EFI सेटिंग्स';

  @override
  String get btnExportEfi => 'EFI एक्सपोर्ट करें';

  @override
  String get btnGenerateEfi => 'EFI जनरेट करें';

  @override
  String get btnBrowse => 'ब्राउज़ करें';

  @override
  String get btnChooseFile => 'फ़ाइल चुनें';

  @override
  String get btnCancel => 'रद्द करें';

  @override
  String get btnApply => 'लागू करें';

  @override
  String get btnSave => 'सहेजें';

  @override
  String get btnClose => 'बंद करें';

  @override
  String get btnCheckUpdates => 'अपडेट जांचें';

  @override
  String get btnChecking => 'जांच जारी है...';

  @override
  String get btnSelectAll => 'सभी चुनें';

  @override
  String get btnDeselectAll => 'सभी अचयनित करें';

  @override
  String get btnCustomSsdt => 'कस्टम SSDT';

  @override
  String get btnPrebuiltSsdt => 'प्रीबिल्ट SSDT';

  @override
  String get btnDumpAcpi => 'ACPI निकालें';

  @override
  String get btnSelectAcpis => 'ACPI चुनें';

  @override
  String get btnSelectConfig => 'config चुनें';

  @override
  String get btnMergeConfig => 'config मर्ज करें';

  @override
  String get btnExecutePatch => 'पैच लागू करें';

  @override
  String get btnOpenFolder => 'फ़ोल्डर खोलें';

  @override
  String get hardwareReport => 'हार्डवेयर रिपोर्ट';

  @override
  String get cpuArchitecture => 'प्रोसेसर (CPU)';

  @override
  String get motherboardChipset => 'मदरबोर्ड और चिपसेट';

  @override
  String get graphicsDevice => 'ग्राफ़िक्स (GPU)';

  @override
  String get audioCodec => 'ऑडियो नियंत्रक';

  @override
  String get networkController => 'नेटवर्क और वाई-फ़ाई';

  @override
  String get storageDevice => 'स्टोरेज डिवाइस';

  @override
  String get acpiTables => 'ACPI टेबल्स';

  @override
  String get compatibilityStatus => 'संगतता';

  @override
  String get compatible => 'समर्थित';

  @override
  String get unsupported => 'असमर्थित';

  @override
  String get requiresPatch => 'पैच आवश्यक';

  @override
  String get details => 'विवरण';

  @override
  String get showDetailedReport => 'विस्तृत दृश्य';

  @override
  String get platformConfig => 'प्लेटफ़ॉर्म कॉन्फ़िगरेशन';

  @override
  String get cpuVendor => 'CPU निर्माता';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'फॉर्म फ़ैक्टर';

  @override
  String get desktop => 'डेस्कटॉप';

  @override
  String get laptop => 'लैपटॉप';

  @override
  String get nucMiniPc => 'NUC / मिनी पीसी';

  @override
  String get hedtServer => 'HEDT / सर्वर';

  @override
  String get processorGen => 'प्रोसेसर पीढ़ी';

  @override
  String get targetMacOs => 'लक्षित macOS संस्करण';

  @override
  String get smbiosModel => 'लक्षित SMBIOS मॉडल';

  @override
  String get motherboardSelector => 'मदरबोर्ड चयन';

  @override
  String get brand => 'ब्रांड';

  @override
  String get model => 'मॉडल';

  @override
  String get outputDirectory => 'आउटपुट निर्देशिका';

  @override
  String get kextConfiguration => 'Kext कॉन्फ़िगरेशन';

  @override
  String get bootArguments => 'बूट तर्क (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP सक्षम (00000000)';

  @override
  String get sipDisabled => 'SIP अक्षम (03080000)';

  @override
  String get processEfiTitle => 'EFI प्रोसेस और पुनर्निर्माण';

  @override
  String get chooseEfiPrompt =>
      'कॉन्फ़िगरेशन लोड करने के लिए एक EFI फ़ोल्डर या configModel फ़ाइल चुनें';

  @override
  String get configModelFound => 'ConfigModel सफलतापूर्वक पाया और लोड किया गया';

  @override
  String get rebuildEfi => 'EFI का पुनर्निर्माण करें';

  @override
  String get ssdtGeneratorTitle => 'SSDT जेनरेटर और ACPI पैचर';

  @override
  String get corePatches => 'कोर पैच';

  @override
  String get recommendedPatches => 'अनुशंसित पैच';

  @override
  String get optionalPatches => 'वैकल्पिक पैच';

  @override
  String get compilationComplete => 'संकलन पूरा हुआ';

  @override
  String get mergeSuccess => 'सफलतापूर्वक EFI में मर्ज किया गया';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher एकीकरण';

  @override
  String get rootPatching => 'रूट पैचिंग';

  @override
  String get graphicsAcceleration => 'ग्राफ़िक्स त्वरण';

  @override
  String get wirelessFix => 'वाई-फ़ाई और ब्लूटूथ फिक्स';

  @override
  String get postInstall => 'इंस्टॉल के बाद के चरण';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 संगतता गाइड';

  @override
  String get tahoeCompatibility => 'Tahoe 26 कर्नेल और ऑडियो अनुकूलन';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get appLanguage => 'भाषा :';

  @override
  String get followSystem => 'सिस्टम के अनुसार';

  @override
  String get themeMode => 'थीम मोड :';

  @override
  String get themeColor => 'थीम रंग :';

  @override
  String get appFont => 'ऐप फ़ॉन्ट :';

  @override
  String get efiOptions => 'EFI विकल्प :';

  @override
  String get addThemeToEfi => 'EFI में OpenCore बूट थीम जोड़ें';

  @override
  String get generateConfigModel => 'EFI फ़ोल्डर में configModel फ़ाइल बनाएं';

  @override
  String get compressZipEfi => 'EFI को ZIP फ़ाइल में संपीड़ित करें';

  @override
  String get checkForUpdates => 'अपडेट जांचें :';

  @override
  String currentVersion(String version) {
    return 'वर्तमान संस्करण: $version';
  }

  @override
  String get copyrightNotice => 'कॉपीराइट और लाइसेंस';

  @override
  String get exitAppTip => 'बाहर निकलने के लिए फिर से बैक दबाएं';

  @override
  String get updateAvailable => 'नया संस्करण उपलब्ध है';

  @override
  String versionTag(String version) {
    return 'संस्करण: $version';
  }

  @override
  String releaseDate(String date) {
    return 'रिलीज़ दिनांक: $date';
  }

  @override
  String get noUpdateFound => 'आप नवीनतम संस्करण चला रहे हैं';

  @override
  String get efiBuildSuccess => 'EFI सफलतापूर्वक जनरेट हुई!';

  @override
  String get efiBuildFailed => 'EFI जनरेट करने में विफल';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get soundLayoutId => 'ऑडियो लेआउट ID (alcid)';

  @override
  String get nvramBootArgs => 'कस्टम boot-args';

  @override
  String get generateSerial => 'सीरियल जनरेट करें';

  @override
  String get navManualTab => 'मैनुअल EFI कॉन्फ़िगरेशन';

  @override
  String get navAutoTab => 'ऑटो EFI कॉन्फ़िगरेशन';

  @override
  String get cpuSelection => 'प्रोसेसर (CPU) चयन:';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'पेंटियम या सेलेरॉन प्रोसेसर को CPU स्पूफिंग की आवश्यकता होती है; कृपया इसे सक्षम करें!\nनोट: पेंटियम/सेलेरॉन iGPU समर्थित नहीं हैं!';

  @override
  String get platformSelection => 'प्लेटफ़ॉर्म चयन:';

  @override
  String get processorGeneration => 'प्रोसेसर पीढ़ी:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6 कोर/12 थ्रेड)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 कोर / 12 थ्रेड्स) को विशिष्ट CPU स्पूफिंग की आवश्यकता है';

  @override
  String get amdCoresTitle => 'AMD CPU कोर:';

  @override
  String get amdSpecialMb => 'AMD विशेष मदरबोर्ड:';

  @override
  String get usePrecastMmio => 'प्रीकास्ट MMIO का उपयोग करें';

  @override
  String get useRyzenGpu => 'Ryzen iGPU समर्थन सक्षम करें (NootedRed)';

  @override
  String get motherboardBrand => 'मदरबोर्ड ब्रांड:';

  @override
  String get motherboardModel => 'मदरबोर्ड मॉडल:';

  @override
  String get customMotherboard => 'कस्टम / जेनेरिक मदरबोर्ड';

  @override
  String get igpuConfig => 'iGPU कॉन्फ़िगरेशन:';

  @override
  String get dgpuConfig => 'dGPU कॉन्फ़िगरेशन:';

  @override
  String get audioConfig => 'ऑडियो कॉन्फ़िगरेशन:';

  @override
  String get audioCodecFix => 'ऑडियो कोडेक और लेआउट ID';

  @override
  String get fixIrq => 'IRQ विरोध ठीक करें';

  @override
  String get networkConfig => 'नेटवर्क और वाई-फ़ाई कॉन्फ़िगरेशन:';

  @override
  String get laptopDrivers => 'लैपटॉप ड्राइवर:';

  @override
  String get touchpadDriver => 'टचपैड ड्राइवर (I2C / PS2)';

  @override
  String get smbiosSelection => 'लक्षित SMBIOS मॉडल:';

  @override
  String get targetMacOsVersion => 'लक्षित macOS संस्करण:';

  @override
  String get bootArgsTitle => 'बूट तर्क (boot-args):';

  @override
  String get csrActiveConfigTitle => 'सिस्टम इंटीग्रिटी प्रोटेक्शन (SIP):';

  @override
  String get outputEfiTitle => 'आउटपुट EFI फ़ोल्डर:';

  @override
  String get selectOutputFolder => 'आउटपुट फ़ोल्डर चुनें';

  @override
  String get clearConfig => 'कॉन्फ़िगरेशन साफ़ करें';

  @override
  String get importConfigModel => 'configModel इम्पोर्ट करें';

  @override
  String get importingConfigModel => 'configModel इम्पोर्ट हो रहा है...';

  @override
  String get dragDropConfigModel =>
      'configModel फ़ाइल यहाँ खींचें और छोड़ें\nया ब्राउज़ करने के लिए क्लिक करें';

  @override
  String get clearAllHistory => 'सभी इतिहास साफ़ करें';

  @override
  String get clearingHistory => 'इतिहास साफ़ हो रहा है...';

  @override
  String get noHistoryRecords => 'अभी तक कोई इतिहास रिकॉर्ड नहीं है';

  @override
  String get overview => 'अवलोकन';

  @override
  String get platformPatches => 'प्लेटफ़ॉर्म पैच';

  @override
  String get audioPatches => 'ऑडियो पैच';

  @override
  String get gpuSpoofing => 'GPU स्पूफिंग';

  @override
  String get disableDevices => 'डिवाइस अक्षम करें';

  @override
  String get brightnessPatches => 'ब्राइटनेस पैच';

  @override
  String get graphicsPatches => 'ग्राफ़िक्स पैच';

  @override
  String get wifiPatches => 'वाई-फ़ाई पैच';

  @override
  String get documentationGuides => 'दस्तावेज़ीकरण और गाइड';

  @override
  String get aboutSupport => 'के बारे में और सहायता';

  @override
  String get hardwareTabTitle => 'हार्डवेयर कॉन्फ़िगरेशन';

  @override
  String get acpiFolderTitle => 'ACPI फ़ोल्डर';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'डेटा लोड हो रहा है...';

  @override
  String get configuringEfiWait =>
      'EFI कॉन्फ़िगर हो रहा है, कृपया प्रतीक्षा करें...';

  @override
  String get summary => 'सारांश';

  @override
  String get recent => 'हालिया';

  @override
  String get efiConfig => 'EFI कॉन्फ़िग';

  @override
  String get toolsAndGuides => 'उपकरण और गाइड';

  @override
  String get checkUpdates => 'अपडेट जांचें';

  @override
  String get sponsorDeveloper => 'डेवलपर को प्रायोजित करें';

  @override
  String get releaseNotes => 'रिलीज़ नोट्स';

  @override
  String get searchPlaceholder => 'खोजें';
}
