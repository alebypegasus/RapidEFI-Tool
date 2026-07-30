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
  String get recent => 'हाल ही का';

  @override
  String get efiRelated => 'ईएफआई संबंधित';

  @override
  String get toolsAndGuides => 'उपकरण एवं मार्गदर्शिकाएँ';

  @override
  String get navHistory => 'इतिहास';

  @override
  String get navConfigureEFI => 'ईएफआई कॉन्फ़िगर करें';

  @override
  String get navProcessEFI => 'प्रक्रिया ईएफआई';

  @override
  String get navCustomSSDT => 'कस्टम एसएसडीटी';

  @override
  String get navOCLPPatch => 'ओसीएलपी-एक्स पैच';

  @override
  String get navTahoeGuide => 'मैकओएस ताहो 26';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get navSponsor => 'प्रायोजक डेवलपर';

  @override
  String get searchPlaceholder => 'खोज';

  @override
  String get darkMode => 'डार्क मोड';

  @override
  String get clickAgainToExit => 'बाहर निकलने के लिए फिर से क्लिक करें';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'वर्तमान ओपनकोर संस्करण: $version';
  }

  @override
  String get copyrightTitle => 'कॉपीराइट वक्तव्य';

  @override
  String get copyrightText =>
      'कॉपीराइट (सी) 2024 जियोजे\n\nलाइसेंस:\nनिम्नलिखित शर्तों के तहत व्यक्तिगत या संगठन उपयोग के लिए अनुमति:\n\n1. गैर-व्यावसायिक उपयोग:\nयह सॉफ़्टवेयर पूरी तरह से मुफ़्त और खुला स्रोत है, केवल गैर-व्यावसायिक उपयोग के लिए। इस सॉफ़्टवेयर को बेचना प्रतिबंधित है.\n\n2. श्रेय:\nतीसरे पक्ष की वेबसाइटों पर किसी भी प्रकार के प्रकाशन, उद्धरण या उपयोग के स्रोत को स्पष्ट रूप से बताना चाहिए और निम्नलिखित जानकारी शामिल करनी चाहिए:\nजियोजे द्वारा विकसित। कॉपीराइट (सी) 2024 जियोजे। सर्वाधिकार सुरक्षित।\n\n3. कॉपीराइट घोषणाओं को संशोधित न करें:\nइस सॉफ़्टवेयर की किसी भी सामग्री को दोबारा पोस्ट करते या उपयोग करते समय, मूल कॉपीराइट नोटिस और एट्रिब्यूशन जानकारी को संशोधित या हटाया नहीं जाना चाहिए।\n\nअस्वीकरण:\nयह सॉफ़्टवेयर किसी भी प्रकार की व्यक्त या निहित वारंटी के बिना, \'जैसा है\' प्रदान किया जाता है। कॉपीराइट स्वामी इस सॉफ़्टवेयर के उपयोग से होने वाली किसी भी प्रत्यक्ष या अप्रत्यक्ष क्षति के लिए उत्तरदायी नहीं होगा।';

  @override
  String get themeModeTitle => 'डार्क मोड:';

  @override
  String get themeModeSystem => 'सिस्टम का पालन करें';

  @override
  String get themeModeLight => 'बंद';

  @override
  String get themeModeDark => 'पर';

  @override
  String get themeColorTitle => 'थीम रंग:';

  @override
  String get appFontTitle => 'एप्लिकेशन फ़ॉन्ट:';

  @override
  String get efiSettingsTitle => 'ईएफआई आउटपुट विकल्प:';

  @override
  String get addOpenCoreTheme =>
      'EFI को कॉन्फ़िगर करते समय OpenCore बूट थीम जोड़ें';

  @override
  String get generateConfigModel =>
      'EFI फ़ोल्डर में configModel फ़ाइल जनरेट करें';

  @override
  String get zipEFI => 'EFI को ज़िप फ़ाइल में संपीड़ित करें';

  @override
  String get languageTitle => 'भाषा:';

  @override
  String get languageSystem => 'सिस्टम का पालन करें';

  @override
  String get languageEn => 'अंग्रेज़ी';

  @override
  String get languagePtBR => 'पुर्तगाली (ब्राजील)';

  @override
  String get languagePtPT => 'पुर्तगाली (पुर्तगाल)';

  @override
  String get languageZhCN => 'सरलीकृत चीनी)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => 'जापानी';

  @override
  String get languageEs => 'Español';

  @override
  String get languageFr => 'फ़्रेंच';

  @override
  String get languageAr => 'अरबी';

  @override
  String get languageHi => 'हिन्दी';

  @override
  String get languageRu => 'रूसी';

  @override
  String get languageIt => 'इतालवी';

  @override
  String get versionUpdateTitle => 'संस्करण अद्यतन:';

  @override
  String currentVersion(Object version) {
    return 'वर्तमान संस्करण: $version';
  }

  @override
  String get checkUpdate => 'अद्यतन के लिए जाँच';

  @override
  String get checkingUpdate => 'जाँच हो रही है...';

  @override
  String get settingSnippet =>
      '1. विकल्प \'ईएफआई को कॉन्फ़िगर करते समय ओपनकोर बूट थीम जोड़ें\' डिफ़ॉल्ट रूप से सक्षम है। आउटपुट ईएफआई फ़ोल्डर में एक बूट थीम शामिल की जाएगी। यदि आवश्यक न हो तो अनचेक करें.\n\n2. विकल्प \'ईएफआई फ़ोल्डर में कॉन्फिगमॉडल फ़ाइल जेनरेट करें\' डिफ़ॉल्ट रूप से सक्षम है। इस फ़ाइल का उपयोग \'प्रक्रिया ईएफआई\' अनुभाग में वर्तमान ईएफआई को फिर से संपादित और समायोजित करने के लिए किया जा सकता है।\n\n3. विकल्प \'ईएफआई को ज़िप फ़ाइल में संपीड़ित करें\' आउटपुट ईएफआई को ज़िप फ़ाइल में संपीड़ित करता है। ध्यान दें कि ज़िप फ़ाइलों को संपीड़ित करने से समग्र ईएफआई आउटपुट प्रगति प्रभावित हो सकती है, खासकर कम प्रदर्शन वाले हार्डवेयर पर।';

  @override
  String get fontMicrosoftYaHei => 'माइक्रोसॉफ्ट याहेई';

  @override
  String get fontSarasaGothic => 'Sarasa Gothic';

  @override
  String get fontSourceHanSerif => 'स्रोत हान सेरिफ़';

  @override
  String get cpuArchitecture => 'सीपीयू आर्किटेक्चर';

  @override
  String get desktop => 'डेस्कटॉप';

  @override
  String get laptop => 'लैपटॉप';

  @override
  String get hedt => 'सर्वर';

  @override
  String get nuc => 'मिनी पीसी';

  @override
  String get amd => 'एएमडी प्रोसेसर';

  @override
  String get smbios => 'एसएमबीआईओएस मॉडल';

  @override
  String get generateEFI => 'ईएफआई उत्पन्न करें';

  @override
  String get clearSelection => 'स्पष्ट चयन';

  @override
  String get exportConfig => 'कॉन्फ़िग निर्यात करें';

  @override
  String get selectTargetFolder => 'लक्ष्य निर्देशिका चुनें';

  @override
  String get efiGenerateSuccess => 'ईएफआई सफलतापूर्वक उत्पन्न हुआ!';

  @override
  String efiGenerateFailed(Object error) {
    return 'ईएफआई पीढ़ी विफल: $error';
  }

  @override
  String get cancel => 'रद्द करना';

  @override
  String get confirm => 'पुष्टि करना';

  @override
  String get save => 'बचाना';

  @override
  String get delete => 'मिटाना';

  @override
  String get openFolder => 'फोल्डर खोलें';

  @override
  String get date => 'तारीख';

  @override
  String get actions => 'कार्रवाई';

  @override
  String get historyTitle => 'इतिहास';

  @override
  String get historyDescription =>
      'रैपिडईएफआई द्वारा उत्पन्न ईएफआई का प्रत्येक सफल निर्माण के बाद स्वचालित रूप से बैकअप लिया जाता है। जब भी जरूरत हो आप इन रिकॉर्ड्स के आधार पर आउटपुट को फिर से संपादित और समायोजित कर सकते हैं।';

  @override
  String get clearAllHistory => 'सारा इतिहास साफ़ करें';

  @override
  String get clearingHistory => 'इतिहास साफ़ किया जा रहा है...';

  @override
  String get noHistory => 'कोई इतिहास अभिलेख नहीं';

  @override
  String get editEFI => 'ईएफआई संपादित करें';

  @override
  String get configuringEFI =>
      'EFI कॉन्फ़िगर किया जा रहा है, कृपया प्रतीक्षा करें...';

  @override
  String get configureEFISuccess => 'EFI सफलतापूर्वक कॉन्फ़िगर किया गया';

  @override
  String get configureEFIFailed =>
      'EFI कॉन्फ़िगर करने में त्रुटि!\nकृपया EFI आउटपुट निर्देशिका बदलें।';

  @override
  String get sponsorTitle => 'प्रायोजक डेवलपर';

  @override
  String get visitBilibili => 'लेखक की बिलिबिली';

  @override
  String get visitGithub => 'गिटहब पर जाएँ';

  @override
  String get buyCoffeeTitle => 'डेवलपर के लिए कॉफ़ी खरीदें';

  @override
  String get buyCoffeeText =>
      'यदि इस टूल ने आपकी मदद की, तो बेझिझक डेवलपर को प्रायोजित करें! आपके समर्थन के लिए धन्यवाद!\n\nलेखक से संपर्क करें: QQ 766264141 या WX: JeoJay127। कोई अन्य निजी संपर्क विधि मौजूद नहीं है, घोटालों से सावधान रहें!';

  @override
  String get successCasesTitle => 'रैपिडईएफआई सफलता के मामले';

  @override
  String get tahoeGuideTitle => 'macOS ताहो 26 गाइड';

  @override
  String get oclpIntro => 'परिचय';

  @override
  String get oclpGpu => 'जीपीयू पैच';

  @override
  String get oclpWifi => 'वाईफाई पैच';

  @override
  String get ssdtPlatform => 'प्लेटफार्म पैच';

  @override
  String get ssdtAudio => 'ऑडियो पैच';

  @override
  String get ssdtGpuSpoof => 'जीपीयू स्पूफ़िंग';

  @override
  String get ssdtDisableDevice => 'डिवाइस अक्षम करें';

  @override
  String get ssdtBrightness => 'चमक पैच';

  @override
  String get manualEFIConfig => 'मैनुअल ईएफआई कॉन्फ़िगरेशन';

  @override
  String get autoEFIConfig => 'ऑटो ईएफआई कॉन्फ़िगरेशन';

  @override
  String get cpuSelection => 'सीपीयू चयन:';

  @override
  String get platformSelection => 'प्लेटफ़ॉर्म चयन:';

  @override
  String get platformInfo => 'प्लेटफ़ॉर्म जानकारी:';

  @override
  String get targetMacOSVersion => 'लक्ष्य macOS संस्करण:';

  @override
  String get smbiosModelSetup => 'एसएमबीआईओएस मॉडल सेटअप:';

  @override
  String get motherboardModelConfig => 'मदरबोर्ड मॉडल कॉन्फ़िगरेशन:';

  @override
  String get selectMotherboardModelTip =>
      '(कॉन्फ़िगरेशन लागू करने के लिए मदरबोर्ड मॉडल का चयन करें)';

  @override
  String get platformGen => 'प्लेटफार्म जनरेशन';

  @override
  String get vendor => 'ब्रांड';

  @override
  String get motherboardModel => 'मदरबोर्ड मॉडल';

  @override
  String get pleaseSelect => 'कृपया चयन कीजिए';

  @override
  String get selected => 'चयनित:';

  @override
  String get applySelectedConfig => 'चयनित कॉन्फ़िगरेशन लागू करें';

  @override
  String get noMatchingConfigEntries =>
      'कोई मेल खाती कॉन्फ़िग प्रविष्टियाँ नहीं';

  @override
  String get pentiumCeleron => 'पेंटियम / सेलेरॉन';

  @override
  String get pentiumCeleronTip =>
      'पेंटियम या सेलेरॉन प्रोसेसर को सीपीयू स्पूफिंग की आवश्यकता होती है! कृपया सक्षम करें.\nनोट: पेंटियम/सेलेरॉन आईजीपीयू आमतौर पर समर्थित नहीं हैं!';

  @override
  String get u62CpuTitle => 'U62 टाइप सीपीयू';

  @override
  String get u62CpuTip =>
      '10वीं पीढ़ी का कॉमेट लेक U62 सीपीयू (उदाहरण के लिए i3-10110U, i5-10210U, i7-10510U, आदि) - कृपया सक्षम करें!';

  @override
  String get macOSVersionSnippet =>
      'उत्पन्न EFI OS X El Capitan 10.11 तक चयनित macOS संस्करण के साथ बैकवर्ड संगत है।';

  @override
  String get amdCores => 'एएमडी कोर गिनती:';

  @override
  String get ryzen7000to9000 => '7000~9000 सीरीज सीपीयू';

  @override
  String get useAmdIgpuOutput =>
      'डिस्प्ले आउटपुट के लिए AMD iGPU का उपयोग करें';

  @override
  String get igpuConfigTitle => 'iGPU कॉन्फ़िग';

  @override
  String get dgpuConfigTitle => 'dGPU कॉन्फ़िग';

  @override
  String get audioDriver => 'ऑडियो ड्राइवर:';

  @override
  String get defaultAppleALCDriver =>
      '(डिफ़ॉल्ट: AppleALC ड्राइवर का उपयोग करता है)';

  @override
  String get alcLayoutId => 'एएलसी लेआउट आईडी:';

  @override
  String get queryLayoutId => 'क्वेरी लेआउट आईडी';

  @override
  String get hpetAcpiPath => 'एचपीईटी एसीपीआई पथ (ऑडियो आईआरक्यू ठीक करें):';

  @override
  String get fixIrq => 'आईआरक्यू ठीक करें';

  @override
  String get selectAudioLayoutIdTitle => 'ऑडियो लेआउट आईडी चुनें';

  @override
  String get selectAudioLayoutIdTip =>
      '(चयन करने के लिए स्क्रॉल व्हील का उपयोग करें, फिर पुष्टि करें पर क्लिक करें)';

  @override
  String get ethernetDriver => 'ईथरनेट ड्राइवर:';

  @override
  String get defaultNoEthernetDriver =>
      '(डिफ़ॉल्ट: कोई ईथरनेट ड्राइवर नहीं जोड़ा गया)';

  @override
  String get loadingData => 'डेटा लोड हो रहा है...';

  @override
  String get refreshHardwareInfo => 'हार्डवेयर जानकारी ताज़ा करें';

  @override
  String get importHardwareInfo => 'हार्डवेयर डेटा आयात करें';

  @override
  String get exportHardwareReport => 'हार्डवेयर रिपोर्ट निर्यात करें';

  @override
  String get exportAcpiTables => 'एसीपीआई टेबल्स निर्यात करें';

  @override
  String get efiSettings => 'ईएफआई सेटिंग्स';

  @override
  String get outputEFI => 'ईएफआई निर्यात करें';

  @override
  String get summaryView => 'सारांश';

  @override
  String get detailedView => 'विस्तृत';

  @override
  String get legendGreen => 'हरा: नवीनतम OS का समर्थन करता है (macOS Tahoe 26)';

  @override
  String get legendYellow => 'पीला: कुछ OS संस्करणों का समर्थन करता है';

  @override
  String get legendRed => 'लाल: पूरी तरह से असंगत';

  @override
  String get noAcpiImported => 'कोई ACPI आयातित नहीं';

  @override
  String get personalizedEfiTitle => 'वैयक्तिकृत ईएफआई सेटिंग्स';

  @override
  String get applySettings => 'सेटिंग्स लागू करें';

  @override
  String get configureEFIError =>
      'EFI कॉन्फ़िगर करने में त्रुटि!\nकृपया आउटपुट पथ बदलें';

  @override
  String get selectConfigItems =>
      'लागू करने के लिए कॉन्फ़िगरेशन आइटम का चयन करें';

  @override
  String get newVersionFound => 'नया संस्करण उपलब्ध है';

  @override
  String versionTag(Object tag) {
    return 'संस्करण: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'रिलीज़ दिनांक: $date';
  }

  @override
  String get downloadNow => 'अब डाउनलोड करो';

  @override
  String get close => 'बंद करना';

  @override
  String get generatingEfiAndSsdt =>
      'ईएफआई और कस्टम एसएसडीटी उत्पन्न कर रहा है, कृपया प्रतीक्षा करें...';

  @override
  String get configuringEfiTitle => 'ईएफआई को कॉन्फ़िगर करना';

  @override
  String get configureEfiSuccessTitle => 'ईएफआई सफलतापूर्वक कॉन्फ़िगर किया गया';

  @override
  String get configureEfiErrorTitle => 'EFI कॉन्फ़िगरेशन विफल';

  @override
  String get outputDirectory => 'आउटपुट निर्देशिका:';

  @override
  String get openEfiDirectory => 'ईएफआई निर्देशिका खोलें';

  @override
  String get select => 'चुनना';

  @override
  String get selectFile => 'फ़ाइल चुनें';

  @override
  String get selectDirectory => 'निर्देशिका का चयन करें';

  @override
  String get hardwareReport => 'हार्डवेयर रिपोर्ट';

  @override
  String get acpiTablesDirectory => 'एसीपीआई टेबल्स निर्देशिका';

  @override
  String get noAcpiFolderTip =>
      'एसीपीआई टेबल निर्देशिका के बिना, आयातित रिपोर्ट से कस्टम एसएसडीटी उत्पन्न नहीं किया जा सकता है।';

  @override
  String get hasAcpiFolderTip =>
      'चयनित ACPI तालिका निर्देशिका का उपयोग कस्टम SSDT के लिए किया जाएगा।';

  @override
  String get adminRightsRequired => 'व्यवस्थापक अधिकार आवश्यक';

  @override
  String get enterSystemPassword => 'कृपया अपना सिस्टम पासवर्ड दर्ज करें';

  @override
  String get import => 'आयात';

  @override
  String get optionalSelectIfMatching =>
      '(वैकल्पिक - जांचें कि क्या मिलान हो रहा है)';

  @override
  String get selectIfMatching => '(जांचें कि क्या मिलान हो रहा है)';

  @override
  String get baseConfig => 'आधार विन्यास';

  @override
  String get advanceConfig => 'उन्नत कॉन्फिग';

  @override
  String get connectorCustomization => 'कनेक्टर अनुकूलन';

  @override
  String get displayEdid => 'ईडीआईडी ​​प्रदर्शित करें';

  @override
  String get nvidiaDgpu => 'एनवीडिया dGPU';

  @override
  String get amdDgpu => 'एएमडी dGPU';

  @override
  String get amdDgpuSpoof => 'एएमडी dGPU स्पूफ';

  @override
  String get above4gTitle => '4जी डिकोडिंग सेटिंग्स के ऊपर';

  @override
  String get addNpciBootArg => 'npci=0x2000 बूट तर्क जोड़ें';

  @override
  String get above4gTip =>
      'यदि BIOS में उपरोक्त 4G डिकोडिंग अक्षम है तो अनुशंसित। सक्षम होने पर अनचेक करें.';

  @override
  String get personalizedEfiIntroTip =>
      'सभी फ़ील्ड वैकल्पिक हैं. आउटपुट ईएफआई इन सेटिंग्स के आधार पर संबंधित फाइलें उत्पन्न करेगा।';

  @override
  String get ssdtType => 'एसएसडीटी प्रकार:';

  @override
  String get customSsdt => 'कस्टम एसएसडीटी';

  @override
  String get presetSsdt => 'प्रीसेट SSDT';

  @override
  String get cpuTypeLabel => 'सीपीयू प्रकार:';

  @override
  String get platformTypeLabel => 'प्लेटफ़ॉर्म प्रकार:';

  @override
  String get selectAll => 'सबका चयन करें';

  @override
  String get basicOfficialRecommend => '* बुनियादी (आधिकारिक अनुशंसा)';

  @override
  String get recommendFixes => '* अनुशंसा (सुविधा सुधार)';

  @override
  String get optionalEnhancements => '* वैकल्पिक (संवर्द्धन)';

  @override
  String get personalizedPlatformTip =>
      'हार्डवेयर से सीपीयू प्रकार, प्लेटफ़ॉर्म प्रकार और जानकारी का पता लगाया जाता है; गलत होने पर नीचे मैन्युअल रूप से समायोजित करें।';

  @override
  String get pciPathLabel => 'जीपीयू पीसीआई पथ:';

  @override
  String get pciPathHint => 'पीसीआई पथ दर्ज करें';

  @override
  String get spoofGpuIdLabel => 'स्पूफ जीपीयू आईडी:';

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
  String get selectSpoofGpuPlaceholder => 'स्पूफ़ करने के लिए GPU का चयन करें';

  @override
  String get gpuSpoofDataLoadError => 'GPU स्पूफ़ डेटा लोड करने में विफल';

  @override
  String get injectEdidTitle =>
      'डिस्प्ले EDID इंजेक्ट करें (256 या 512 हेक्स वर्ण):';

  @override
  String get injectEdidHint =>
      'डिस्प्ले ईडीआईडी ​​दर्ज करें (हेक्स प्रारूप, रिक्त स्थान की अनुमति)';

  @override
  String get edidHexError => 'EDID डेटा में गैर-हेक्साडेसिमल वर्ण शामिल हैं!';

  @override
  String get edidLengthError => 'EDID की लंबाई 256 का गुणज नहीं है!';

  @override
  String get edidInvalidToast =>
      'EDID डेटा अमान्य है, कृपया दर्ज करने से पहले सत्यापित करें!';

  @override
  String get details => 'विवरण';

  @override
  String get clearAllSelection => 'सभी चयन साफ़ करें';

  @override
  String applySelected(Object count) {
    return 'चयनित लागू करें ($count आइटम)';
  }

  @override
  String get getModdedOclp => 'संशोधित ओसीएलपी प्राप्त करें';

  @override
  String get getIntelModdedOclp => 'इंटेल मॉडिफाइड ओसीएलपी प्राप्त करें';

  @override
  String get soundDriverCardTitle => 'ऑडियो ड्राइवर:';

  @override
  String get soundDriverDefaultTip =>
      '(डिफ़ॉल्ट AppleALC ड्राइवर का उपयोग करता है)';

  @override
  String get hpetAcpiPathTitle =>
      'एचपीईटी एसीपीआई पथ (ऑडियो आईआरक्यू ठीक करें):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'ऑडियो लेआउट आईडी चुनें (डीबी: $published वी$version)';
  }

  @override
  String get pickerScrollConfirmTip =>
      '(पहिये से स्क्रॉल करें, फिर पुष्टि करें पर क्लिक करें)';

  @override
  String get nicDriverCardTitle => 'नेटवर्क कार्ड ड्राइवर:';

  @override
  String get nicDriverDefaultTip =>
      '(डिफ़ॉल्ट कोई नेटवर्क कार्ड ड्राइवर नहीं जोड़ा गया)';

  @override
  String get wifiBtCardTitle => 'वाई-फ़ाई और ब्लूटूथ ड्राइवर:';

  @override
  String get wifiBtDefaultTip =>
      '(डिफ़ॉल्ट कोई वाई-फाई ड्राइवर नहीं, यदि आवश्यक हो तो मैन्युअल रूप से कॉन्फ़िगर करें)';

  @override
  String get usbCardTitle => 'यूएसबी ड्राइवर:';

  @override
  String get usbDefaultTip => '(डिफ़ॉल्ट USBInjectAll का उपयोग करता है)';

  @override
  String get selectUtbMap => 'UTBMap का चयन करें';

  @override
  String get selectUtbMapHint =>
      'USBToolBox द्वारा निर्मित UTBMap.kext का चयन करें';

  @override
  String get releaseUsbOwnershipText =>
      'फर्मवेयर से USB नियंत्रक स्वामित्व को मुक्त करने के लिए \'UEFI->Quirks->ReleaseUsbOwnership\' क्विर्क सक्षम करें...';

  @override
  String get bootArgsCardTitle => 'बूट तर्क:';

  @override
  String get bootArgsDefaultTip =>
      '(डिफ़ॉल्ट -v वर्बोज़ मोड सक्षम करता है, यदि आवश्यक न हो तो अनचेक करें)';

  @override
  String get debugCategory => 'डिबग';

  @override
  String get amfiSipCategory => 'एएमएफआई/एसआईपी';

  @override
  String get igpuCategory => 'आईजीपीयू';

  @override
  String get dgpuCategory => 'dGPU';

  @override
  String get blackScreenFixCategory => 'ब्लैक स्क्रीन ठीक करता है';

  @override
  String get above4gCategory => '4जी डिकोडिंग से ऊपर';

  @override
  String get touchpadFixCategory => 'टचपैड ठीक करता है';

  @override
  String get othersCategory => 'अन्य';

  @override
  String get optionalKextsCardTitle => 'वैकल्पिक पाठ:';

  @override
  String get optionalKextsDefaultTip =>
      '(वैकल्पिक ड्राइवर, जब तक आवश्यकता न हो, न जोड़ें)';

  @override
  String get graphicsCategory => 'GRAPHICS';

  @override
  String get powerManagementCategory => 'बिजली प्रबंधन';

  @override
  String get sleepCategory => 'नींद';

  @override
  String get diskCategory => 'डिस्क';

  @override
  String get cpuCategory => 'CPU';

  @override
  String get amdPlatformCategory => 'एएमडी प्लेटफार्म';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'एसडी कार्ड';

  @override
  String get optionalSettingsCardTitle => 'वैकल्पिक सेटिंग्स:';

  @override
  String get optionalSettingsDefaultTip =>
      '(आमतौर पर जब तक जरूरत न हो डिफ़ॉल्ट रखें)';

  @override
  String get tabBrand => 'ब्रांड';

  @override
  String get tabSpecialMotherboard => 'विशेष मदरबोर्ड';

  @override
  String get tabSipSetting => 'एसआईपी सेटिंग्स';

  @override
  String get tabCpuRename => 'सीपीयू का नाम बदलें';

  @override
  String get tabUiScale => 'ओपनकोर यूआई स्केल';

  @override
  String get tabAcpiConfig => 'एसीपीआई कॉन्फिग';

  @override
  String get tabBooterConfig => 'बूट कॉन्फिग';

  @override
  String get tabKernelConfig => 'कर्नेल कॉन्फ़िग';

  @override
  String get tabUefiConfig => 'यूईएफआई कॉन्फ़िगरेशन';

  @override
  String get processEfiTitle => 'प्रक्रिया ईएफआई';

  @override
  String get processEfiSubTitle =>
      '(रैपिडईएफआई द्वारा कॉन्फ़िगर किया गया ईएफआई को पुन: संसाधित करें)';

  @override
  String get processEfiExpanderText =>
      'RapidEFI टूल द्वारा कॉन्फ़िगर किया गया EFI, EFI आउटपुट फ़ोल्डर में configModel नामक फ़ाइल उत्पन्न करेगा। वर्तमान ईएफआई को दोबारा संपादित करने के लिए इस फ़ाइल को यहां आयात करें।\n\nयह सुविधा केवल RapidEFI V3.0.0 और इसके बाद के संस्करण को सपोर्ट करती है।';

  @override
  String get clearCurrentConfig => 'वर्तमान कॉन्फ़िगरेशन साफ़ करें';

  @override
  String get importConfigModelFile => 'कॉन्फिगमॉडल फ़ाइल आयात करें';

  @override
  String get importingConfigModel => 'कॉन्फ़िगमॉडल आयात किया जा रहा है...';

  @override
  String get releaseToReimport =>
      'configModel को पुनः आयात करने के लिए माउस छोड़ें';

  @override
  String get dragConfigModelArea =>
      'configModel फ़ाइल को यहां खींचें\nया फ़ाइल का चयन करने के लिए क्लिक करें';

  @override
  String get importFailedToast =>
      'आयातित कॉन्फिगरेशन डेटा अमान्य है, कृपया एक वैध कॉन्फिगमॉडल फ़ाइल को पुनः आयात करें।';

  @override
  String get changeEfiTitle => 'ईएफआई शीर्षक बदलें';

  @override
  String get modifyCurrentEfiName => 'वर्तमान ईएफआई नाम संशोधित करें';

  @override
  String originalEfiName(String name) {
    return 'मूल ईएफआई नाम: $name';
  }

  @override
  String get enterModifiedName => 'कृपया संशोधित नाम दर्ज करें';

  @override
  String get deleteRecord => 'यह रिकॉर्ड हटाएँ';

  @override
  String get exportThisEfi => 'इस EFI को निर्यात करें';

  @override
  String get releaseToIdentifyHardware =>
      'हार्डवेयर रिपोर्ट और एसीपीआई तालिकाओं को स्वचालित रूप से पहचानने के लिए रिलीज़';

  @override
  String get dragHardwareReportHere =>
      'इस टूल द्वारा निर्यात किए गए हार्डवेयर रिपोर्ट फ़ोल्डर में खींचें\n(स्वचालित रूप से sysInfo.txt और ACPI निर्देशिका की पहचान करता है)';

  @override
  String get invalidHardwareReportToast =>
      'मान्य हार्डवेयर रिपोर्ट फ़ाइल पहचानी नहीं गई';

  @override
  String optionalSuffix(String title) {
    return '$title (वैकल्पिक)';
  }

  @override
  String get notSelected => 'चयनित नहीं';

  @override
  String get verifyingAdminPassword =>
      'व्यवस्थापक पासवर्ड सत्यापित किया जा रहा है...';

  @override
  String get hardwareReportAcpiMissing =>
      'बाहरी हार्डवेयर रिपोर्ट आयात की गई, लेकिन एसीपीआई तालिका निर्देशिका प्रदान नहीं की गई, एसएसडीटी को अनुकूलित नहीं किया जा सकता।';

  @override
  String get hwMemory => 'याद';

  @override
  String get hwCompatible => 'अनुकूल';

  @override
  String hwDeviceID(String id) {
    return 'डिवाइस आईडी: $id';
  }

  @override
  String hwType(String type) {
    return 'प्रकार: $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'क्षमता: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'इंटरफ़ेस: $bus';
  }

  @override
  String hwModel(String model) {
    return 'मॉडल: $model';
  }

  @override
  String get hwStorage => 'भंडारण';

  @override
  String get hwStorageController => 'भंडारण\nनियंत्रक';

  @override
  String get hwBluetooth => 'ब्लूटूथ';

  @override
  String get hwAudioCard => 'ऑडियो कार्ड';

  @override
  String get hwAudioLayoutId => 'लेआउट आईडी:';

  @override
  String get hwNetworkCard => 'नेटवर्क कार्ड';

  @override
  String get hwMonitor => 'निगरानी करना';

  @override
  String hwResolution(String res, String hz) {
    return 'संकल्प: $res @ $hz हर्ट्ज';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'कनेक्टेड जीपीयू: $gpu';
  }

  @override
  String get hwInput => 'इनपुट';

  @override
  String get hwSDCard => 'एसडी कार्ड';

  @override
  String hwDevice(String dev) {
    return 'डिवाइस: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'क्रमांक: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'अंतर्निर्मित: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'सुरक्षित बूट: $status';
  }

  @override
  String hwCSM(String status) {
    return 'सीएसएम: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'आकार बदलने योग्य बार: $status';
  }

  @override
  String hwAbove4G(String status) {
    return '4जी डिकोडिंग से ऊपर: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'एएचसीआई: $status';
  }

  @override
  String get hwAHCIUnknown => 'एएचसीआई: अज्ञात';

  @override
  String get hwEnabled => 'सक्रिय';

  @override
  String get hwDisabled => 'अक्षम';

  @override
  String get hwCurrentBiosSettings => 'वर्तमान BIOS सेटिंग्स';

  @override
  String get hwBiosNote =>
      'हैकिंटोश नोट्स:\n1. सभी लाल टेक्स्ट के लिए, कृपया इसे नीला रखने के लिए इसे BIOS में चालू या बंद करना सुनिश्चित करें।\n2. नीला पाठ अधिकांश मामलों में उपयुक्त सेटिंग्स को इंगित करता है।\nसुरक्षित बूट: अक्षम होना चाहिए (अन्यथा ओसी बूटलोडर जैसे अहस्ताक्षरित फर्मवेयर सामान्य रूप से प्रारंभ नहीं हो सकता)।\nसीएसएम (संगतता समर्थन मॉड्यूल): ज्यादातर मामलों में अक्षम करने की अनुशंसा की जाती है (इंटेल 4थी/5वीं पीढ़ी के मोबाइल आईजीपीयू, एक्स99 प्लेटफॉर्म और कुछ आरएक्स460 ग्राफिक्स कार्ड के लिए सीएसएम सक्षम की आवश्यकता हो सकती है, अन्यथा स्क्रीन फट जाती है या बूट विफलता हो जाती है)।\nआकार बदलने योग्य BAR: BIOS में अक्षम करने की अनुशंसा की जाती है (यदि अक्षम नहीं है, तो सुनिश्चित करें कि बूट समस्याओं से बचने के लिए ResizeAppleGpuBars को Booter->Quirks में 0 पर सेट किया गया है)।\n4जी डिकोडिंग से ऊपर: BIOS में सक्षम करने और स्वचालित रूप से जांचे गए npci=0x2000 पैरामीटर को हटाने की अनुशंसा की जाती है। यदि यह विकल्प BIOS में नहीं है, तो npci=0x2000 या npci=0x3000 की जाँच करने की अनुशंसा करें। नोट: 4जी डिकोडिंग से ऊपर का BIOS और एनपीसीआई पैरामीटर परस्पर अनन्य हैं!\nएएचसीआई (एसएटीए डिस्क मोड): सक्षम होना चाहिए (यदि नहीं, तो डिस्क को पहचाना नहीं जा सकता है या निषेधात्मक प्रतीक दिखाई देगा)।';

  @override
  String hwBit(String arch) {
    return '$arch बिट';
  }

  @override
  String get hwVirtualizationEnabled => 'वर्चुअलाइजेशन: सक्षम';

  @override
  String get hwVirtualizationDisabled => 'वर्चुअलाइजेशन: अक्षम';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores कोर $threads धागे';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'निर्देश सेट: $simd';
  }

  @override
  String hwCore(String core) {
    return 'कोर: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'स्पूफ आईडी आवश्यक: $id';
  }

  @override
  String get hwGPU => 'जीपीयू';

  @override
  String get hwIncompatible => 'असंगत';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'मदरबोर्ड';

  @override
  String hwBrand(String brand) {
    return 'ब्रांड: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'चिपसेट: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALC एकाधिक लेआउट आईडी का समर्थन करता है। अलग-अलग आईडी ऑडियो इंटरफ़ेस उपलब्धता को प्रभावित कर सकती हैं।';

  @override
  String get manualNvidiaInfoText =>
      'समर्थित एनवीडिया जीपीयू श्रृंखला इस प्रकार हैं:\n• टेस्ला श्रृंखला (8000 - 300 श्रृंखला): मूल रूप से मैकओएस हाई सिएरा 10.13.x तक समर्थित (एनवीसीएपी फिक्स की आवश्यकता हो सकती है), उच्च संस्करणों के लिए ओसीएलपी पैच की आवश्यकता होती है (कोई धातु समर्थन नहीं)\nउदाहरण: 8600जीटी, 9600जीटी, जीटी210, जीटी220, जीटी240, आदि। बहुत पुराना, अनुशंसित नहीं!\n• केप्लर श्रृंखला (600 - 800 श्रृंखला): मूल रूप से मैकओएस बिग सुर 11.x तक समर्थित, उच्च संस्करणों के लिए ओसीएलपी पैच की आवश्यकता होती है (मेटल, ट्रू ड्राइवर का समर्थन करता है)\nकेप्लर कोर: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX टाइटन Z, GTX टाइटन ब्लैक, आदि।\nकेप्लर कोर प्रोफेशनल कार्ड: एनवीएस 510, क्वाड्रो 410, क्वाड्रो के420, क्वाड्रो के600, क्वाड्रो के2000, आदि।\n• फर्मी, मैक्सवेल, पास्कल श्रृंखला: वेबड्राइवर macOS हाई सिएरा 10.13.x तक समर्थित है। MacOS Big Sur 11.x और इसके बाद के संस्करण के लिए, नीचे दिए गए बूट तर्कों की जाँच करें और OCLP पैच लागू करें (कोई मेटल समर्थन नहीं, नकली ड्राइवर)\nफर्मी श्रृंखला: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740, आदि।\nमैक्सवेल श्रृंखला: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980, आदि।\nपास्कल श्रृंखला: GTX1050, GTX1060, GTX1070, GTX1080, आदि।\nअसमर्थित एनवीडिया जीपीयू श्रृंखला (11 श्रृंखला और ऊपर समर्थित नहीं हैं):\n• 16 ~ 50 श्रृंखला: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070, आदि।';

  @override
  String get manualEdidInfoText =>
      '1. आमतौर पर Intel 6th-10th Gen iGPU की ब्लैक स्क्रीन/नो सिग्नल समस्या को ठीक करने के लिए उपयोग किया जाता है (dGPU EDID को यहां नियंत्रित नहीं किया जाता है)। (विशिष्ट लक्षण: कीबोर्ड कैप्स लॉक लाइट काम करती है, लेकिन मॉनिटर बिना किसी सिग्नल के काली स्क्रीन दिखाता है)\n2. iGPU HDMI आउटपुट का उपयोग करने वाले 500-श्रृंखला डेस्कटॉप मदरबोर्ड (H510/B560/H570/Q570/Z590/W580) के लिए, वास्तविक मॉनिटर EDID इंजेक्ट करना अनिवार्य है, अन्यथा काली स्क्रीन होने की अत्यधिक संभावना है।\n3. मॉनिटर EDID कैसे प्राप्त करें:\nविंडोज़ में, EDID प्राप्त करने के लिए RapidEFI टूल या hdinfo टूल का उपयोग करें (आप तृतीय-पक्ष टूल का उपयोग कर सकते हैं, लेकिन आपको EDID को स्वयं प्रारूपित करना होगा):\n1). RapidEFI v4.x या इससे ऊपर खोलें, \"कॉन्फिगर EFI\" -> \"ऑटो कॉन्फिगर EFI\" -> \"विस्तृत कॉन्फ़िगरेशन\" पर क्लिक करें (या यदि hdinfo का उपयोग कर रहे हैं तो \"विस्तृत कॉन्फ़िगरेशन\" पर क्लिक करें)।\n2). हार्डवेयर जानकारी का स्वतः-पहचान समाप्त होने तक प्रतीक्षा करें, फिर इसे प्राप्त करने के लिए मॉनिटर अनुभाग के बगल में EDID कोड पर क्लिक करें (यह क्लिपबोर्ड पर सफलतापूर्वक कॉपी होने का संकेत देगा)।\n3). इस पृष्ठ पर वापस लौटें और EDID को इनपुट बॉक्स में पेस्ट करें।\n4. EDID इंजेक्ट करने से पहले, कृपया \"उन्नत कॉन्फ़िगरेशन\" में लक्ष्य AAPL0X इंटरफ़ेस की जाँच करें; यदि अनिश्चित है, तो वास्तविक एचडीएमआई फिक्स योजना के आधार पर चयन करें।\n5. EDID डेटा आमतौर पर 128 बाइट्स (256 हेक्स वर्ण) या 256 बाइट्स (512 हेक्स वर्ण) होता है। यदि ऐसा नहीं है, तो कृपया इनपुट करने से पहले दोबारा जांच लें!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'वर्तमान फ़्रेमबफ़र: $fb। जो कुछ भी ग्रीन डॉक्स के अनुसार फ्रेमबफ़र-कॉनएक्स-ऑलडेटा उत्पन्न कर रहा है।';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'वर्तमान फ़्रेमबफ़र संरचित अनुशंसाओं का समर्थन नहीं करता है; मौजूदा कच्चे मान हटाएं और समर्थित iGPU बेस कॉन्फ़िगरेशन को फिर से चुनें।';

  @override
  String get manualAddConnectorTooltip => 'कनेक्टर पैच जोड़ें';

  @override
  String get manualConnectorLabel => 'योजक';

  @override
  String get manualIndexLabel => 'अनुक्रमणिका';

  @override
  String get manualBusIdLabel => 'बस आईडी';

  @override
  String get manualConnectorTypeLabel => 'प्रकार';

  @override
  String manualOldConnector(String label) {
    return '$label (विरासत)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'con$index पैच हटाएं';
  }

  @override
  String get manualUnparseableValue => 'कच्चा मूल्य अप्राप्य';

  @override
  String get manualDeleteAndReadd =>
      'कृपया संरचित कनेक्टर पैच हटाएं और पुनः जोड़ें';

  @override
  String get manualDeleteUnparseableTooltip => 'अनपार्सेबल कनेक्टर पैच हटाएं';

  @override
  String get manualBatteryDriver => 'बैटरी ड्राइवर';

  @override
  String get manualKeyboardTouchpadDriver => 'कीबोर्ड और टचपैड ड्राइवर';

  @override
  String get manualSensorDriver =>
      'सेंसर ड्राइवर (जब तक आवश्यक न हो अनुशंसित नहीं)';

  @override
  String get manualKernelTrimStrategy => 'एसएसडी ट्रिम रणनीति';

  @override
  String get manualKernelPowerManagement => 'बिजली प्रबंधन';

  @override
  String get manualKernelDummyPowerManagement =>
      'पावर प्रबंधन (डमीपावरमैनेजमेंट) को अक्षम करें, सीपीयू पावर प्रबंधन के कारण होने वाली रिबूट समस्याओं को ठीक करता है (उदाहरण के लिए AppleIntelCPUPowerManagement कर्नेल पैनिक, बूट लोगो पर अटक जाना, या सिस्टम में प्रवेश करने के तुरंत बाद रिबूट होना)। चौथी पीढ़ी और उससे ऊपर के लिए, यह NullCpuPowerManagement.kext का पसंदीदा विकल्प है';

  @override
  String get manualKernelQuirksDefault =>
      'कर्नेल - जब तक आवश्यक न हो या आपको पता न हो कि प्रत्येक आइटम का क्या मतलब है, क्वर्क्स को डिफ़ॉल्ट रखने की अनुशंसा की जाती है';

  @override
  String get manualUefiProvideConsoleGop =>
      'OpenCore बूट UI नहीं दिखने को ठीक करने के लिए ProvideConsoleGop क्विर्क डिफ़ॉल्ट रूप से सक्षम है। यदि यह अभी भी दिखाई नहीं देता है, तो इसे अनचेक करने का प्रयास करें';

  @override
  String get manualUefiDriversHfs =>
      'यूईएफआई-ड्राइवर (एचएफएस ड्राइवर के कारण ओपनकोर बूट यूआई नहीं दिखने को ठीक करें)';

  @override
  String get manualUefiOutputBootUI =>
      'यूईएफआई - आउटपुट (ओपनकोर बूट यूआई नहीं दिखने को ठीक करें)';

  @override
  String get manualSpecialMotherboardTip =>
      'वैकल्पिक - जांचें कि क्या आपका मदरबोर्ड विवरण से मेल खाता है';

  @override
  String get manualCsrSettingTip =>
      'वैकल्पिक - आवश्यकताओं के अनुसार सेट, एसआईपी डिफ़ॉल्ट रूप से अक्षम है';

  @override
  String get manualRenameCpuNameTip => 'वैकल्पिक - सीपीयू नाम अनुकूलित करें';

  @override
  String get manualRenameCpuNameLabel =>
      'इनपुट सीपीयू नाम (विंडोज सीपीयू नाम दिखाने के लिए खाली छोड़ें):';

  @override
  String get manualRenameCpuNameHint => 'यहां सीपीयू नाम इनपुट करें';

  @override
  String get manualBrandTip =>
      'वैकल्पिक - जांचें कि क्या ब्रांड विवरण से मेल खाता है';

  @override
  String get manualBooterPlan1 => 'योजना 1';

  @override
  String get manualBooterPlan2 => 'योजना 2';

  @override
  String get manualBooterPlan3 => 'योजना 3';

  @override
  String get manualBooterPlan4 => 'योजना 4';

  @override
  String get manualBooterEbFix =>
      'ईबी फिक्स पर अटका हुआ (वैकल्पिक - आमतौर पर डिफ़ॉल्ट ठीक है):';

  @override
  String get manualAcpiPatch => 'एसीपीआई - पैच';

  @override
  String get manualAcpiSsdt => 'एसीपीआई - एसएसडीटी';

  @override
  String get manualBluetoothNvram => 'ब्लूटूथ एनवीआरएएम पैरामीटर्स:';

  @override
  String get manualUsbWifiGithub => 'लेखक क्रिस1111 के रेपो पर जाएँ';

  @override
  String get manualUsbWifiKexts =>
      'USB वाईफ़ाई के लिए आवश्यक Kexts जोड़ें (नोट: आपको macOS पर वायरलेस USB बिग सुर एडाप्टर क्लाइंट भी इंस्टॉल करना होगा। यदि यह प्रभावी नहीं होता है तो रीबूट करें)';

  @override
  String get manualWifiCardSupport =>
      'प्रदान किए गए ड्राइवर macOS Mojave 10.14 ~ macOS Sequoia 15 का समर्थन करते हैं! ध्यान दें कि मोंटेरे 12 और उससे ऊपर के संस्करणों को ठीक से काम करने के लिए ओसीएलपी पैच की आवश्यकता होती है!!!';

  @override
  String get manualWifiAtheros => 'एथेरोस';

  @override
  String get manualWifiIntel => 'इंटेल';

  @override
  String get manualWifiBrcm => 'ब्रॉडकॉम (बीआरसीएम)';

  @override
  String get manualWifiBluetoothDriver => 'ब्लूटूथ ड्राइवर';

  @override
  String get manualWifiItlwmPlan =>
      'योजना 2, आईटीएलडब्लूएम (हेलीपोर्ट की आवश्यकता है), इंटेल वाईफाई ड्राइवर का उपयोग करें। योजना 1 के साथ टकराव, एक साथ प्रयोग न करें!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'योजना 1, एयरपोर्टआईटीएलडब्ल्यूएम, इंटेल वाईफाई ड्राइवर का उपयोग करें, सभी वाईफाई कुंजी जोड़ता है (बड़ा आकार, ध्यान से चुनें)। योजना 2 के साथ टकराव, एक साथ प्रयोग न करें!!!';

  @override
  String get manualWifiAddAllDrivers =>
      'सभी वाईफाई ड्राइवर जोड़ें (बड़ा आकार, ध्यान से चुनें)';

  @override
  String get manualLaptopMainly => '(मुख्यतः लैपटॉप के लिए)';

  @override
  String get manualLaptopRelatedDrivers => 'लैपटॉप से ​​संबंधित ड्राइवर:';

  @override
  String get manualLaptopOtherFixes => 'अन्य सुधार';

  @override
  String get manualLaptopOtherFixesTip =>
      'अन्य सुधार (जब तक आवश्यक न हो अनुशंसित नहीं)';

  @override
  String get manualMotherboardSelectAll => 'सभी/कोई नहीं चुनें';

  @override
  String get manualMotherboardDetails => 'विवरण';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total चयनित)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return '$model से लागू $count कॉन्फ़िगरेशन';
  }

  @override
  String get manualMotherboardFromMbconfs => 'एमबीकॉन्फ़्स से';

  @override
  String get manualIgpuRemark => '⚠️ टिप्पणी';

  @override
  String get manualIgpuSelectCpu => 'सीपीयू का चयन करें';

  @override
  String get manualIgpuLoadConfig => 'सीपीयू मॉडल से iGPU कॉन्फिगरेशन लोड करें';

  @override
  String get manualIgpuSelectProperties => 'लागू करने के लिए गुण चुनें';

  @override
  String get manualIgpuPresetScheme => 'पूर्व निर्धारित योजना';

  @override
  String get manualIgpuSelectGen => 'जनरेशन का चयन करें';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'चयनित: $model $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'सीपीयू मॉडल';

  @override
  String get manualIgpuMatchOrNot => 'जांचें कि क्या मिलान हुआ है';

  @override
  String get manualIgpuCpuGen => 'सीपीयू जनरल';

  @override
  String get manualIgpuByCpuModel => 'सीपीयू मॉडल द्वारा';

  @override
  String get manualIgpuName => 'आईजीपीयू';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return '$model से $igpu आईजीपीयू कॉन्फिगरेशन लोड किया गया, $count गुण लिखे गए';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return '$model से ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'सीपीयू जेन और मॉडल का चयन करें, फिर लागू करने के लिए गुणों की जांच करें';

  @override
  String get manualIgpuModel => 'नमूना';

  @override
  String get manualFakeGpuSelect => 'स्पूफ़ करने के लिए GPU का चयन करें';

  @override
  String get settingsThemeColors => 'रंग थीम';

  @override
  String get settingsThemeDefault => 'गलती करना';

  @override
  String get sharedInvalidInput => 'अमान्य निवेश';

  @override
  String sharedRequiresHexChars(String length) {
    return '$length हेक्साडेसिमल वर्णों की आवश्यकता है';
  }

  @override
  String get sharedExample73BF => 'उदाहरण: 73बीएफ';

  @override
  String get sharedTipsLengthMustMatch =>
      'युक्तियों की लंबाई विकल्पों से मेल खानी चाहिए';

  @override
  String sharedCpuInfo(String description) {
    return '[सीपीयू जानकारी]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'अंतिम macOS संस्करण मूल रूप से समर्थित: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[BIOS को अक्षम करने के लिए अनुशंसित]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'पैच द्वारा समर्थित macOS संस्करण: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[BIOS सक्षम करने के लिए अनुशंसित]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'प्रारंभिक macOS संस्करण मूल रूप से समर्थित: $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'अमान्य ACPI पथ';

  @override
  String get sharedFillAcpiPath => 'ACPI पथ भरें';

  @override
  String get sharedFillPciPath => 'पीसीआई पथ भरें';

  @override
  String get sharedInvalidPciPath => 'अमान्य पीसीआई पथ';

  @override
  String get sharedGetModifiedOclp => 'संशोधित ओसीएलपी प्राप्त करें';

  @override
  String hwConfigModelGenerated(String details) {
    return 'कॉन्फ़िगमॉडल उत्पन्न: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'हार्डवेयर जानकारी प्राप्त करने में विफल: $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'व्यवस्थापक पासवर्ड ग़लत है, ACPI तालिकाएँ निर्यात नहीं की जा सकतीं';

  @override
  String get hwNoNativeInfoExportable =>
      'निर्यात के लिए कोई मूल हार्डवेयर जानकारी उपलब्ध नहीं है';

  @override
  String get hwOutputtingOpencore => 'ओपनकोर ईएफआई आउटपुट...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'मूल एसीपीआई तालिकाओं का निर्यात विफल: $error';
  }

  @override
  String get hwSsdtProcessFailed => 'SSDT अनुकूलन प्रक्रिया विफल रही.';

  @override
  String get hwConfigRuleRefactoring =>
      'हार्डवेयर कॉन्फिगमॉडल जेनरेशन नियम रीफैक्टरिंग';

  @override
  String get hwQueryUnsupported =>
      'वर्तमान प्लेटफ़ॉर्म हार्डवेयर जानकारी क्वेरी का समर्थन नहीं करता है';

  @override
  String hwPreparingSsdt(String items) {
    return 'SSDT को अनुकूलित करने की तैयारी: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'यह एक आयातित बाहरी हार्डवेयर रिपोर्ट है, कृपया निर्यात करने से पहले मूल हार्डवेयर जानकारी ताज़ा करें';

  @override
  String get hwRefreshingInfo => 'ताज़ा हो रही हार्डवेयर जानकारी';

  @override
  String get hwSsdtProcessEnded => 'SSDT अनुकूलन प्रक्रिया समाप्त हो गई।';

  @override
  String get hwInfoUnsupported => 'हार्डवेयर जानकारी वर्तमान में असमर्थित है';

  @override
  String get hwEfiWrittenExtracting =>
      'ईएफआई लिखा गया, एसीपीआई निकालना और एसएसडीटी को अनुकूलित करना शुरू हो रहा है...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'EFI कॉन्फ़िगर करने में विफल: $error';
  }

  @override
  String get hwReportFolderCleanFailed =>
      'हार्डवेयर रिपोर्ट फ़ोल्डर साफ़ करने में विफल';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'हार्डवेयर रिपोर्ट फ़ोल्डर साफ़ करने में विफल: $error';
  }

  @override
  String get hwExportingNativeReport =>
      'मूल हार्डवेयर रिपोर्ट निर्यात किया जा रहा है...';

  @override
  String get hwAdminAuthCanceled =>
      'व्यवस्थापक प्राधिकरण रद्द कर दिया गया, एसीपीआई तालिकाएँ निर्यात नहीं की गईं';

  @override
  String get hwImportedNoAcpiDir =>
      'बाहरी हार्डवेयर रिपोर्ट आयात की गई लेकिन कोई एसीपीआई टेबल निर्देशिका प्रदान नहीं की गई, एसएसडीटी अनुकूलन अक्षम किया गया।';

  @override
  String get hwExportAcpiUnsupported =>
      'वर्तमान प्लेटफ़ॉर्म ACPI तालिकाओं को निर्यात करने का समर्थन नहीं करता है';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'हार्डवेयर रिपोर्ट $reportDirectory, $msg को निर्यात की गई';
  }

  @override
  String get hwInfoNotJson => 'हार्डवेयर जानकारी फ़ाइल JSON ऑब्जेक्ट नहीं है';

  @override
  String get hwUnsupported => 'असमर्थित';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'ACPI तालिकाओं की अस्थायी निर्देशिका साफ़ करने में विफल: $error';
  }

  @override
  String get hwEfiConfigDone => 'ईएफआई कॉन्फ़िगरेशन पूर्ण.';

  @override
  String hwEfiConfigError(String error) {
    return 'ईएफआई को कॉन्फ़िगर करने में त्रुटि: $error';
  }

  @override
  String get hwNativeAcpiExportFailed =>
      'मूल एसीपीआई तालिकाओं का निर्यात विफल रहा';

  @override
  String get hwAcpiToolNotReady => 'ACPI निर्यात उपकरण तैयार नहीं है';

  @override
  String get hwFailed => 'असफल';

  @override
  String hwImportReportFailed(String e) {
    return 'हार्डवेयर रिपोर्ट आयात करने में विफल: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'मूल एसीपीआई तालिकाओं का निर्यात पूर्ण: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'ACPI तालिकाएँ निर्यात विफल: कोई मान्य ACPI तालिकाएँ नहीं मिलीं';

  @override
  String get hwUsingOriginalSsdt =>
      'SSDT अनुकूलन को छोड़कर, मूल EFI SSDT का उपयोग करना।';

  @override
  String get hwWaitingRefresh =>
      'हार्डवेयर जानकारी ताज़ा होने की प्रतीक्षा की जा रही है';

  @override
  String get hwInfoLoaded => 'हार्डवेयर जानकारी सफलतापूर्वक लोड की गई';

  @override
  String hwAcpiExportedTo(String path) {
    return 'ACPI तालिकाएँ $path को निर्यात की गईं';
  }

  @override
  String get hwStartConfigEfi => 'ईएफआई कॉन्फ़िगरेशन प्रारंभ हो रहा है...';

  @override
  String get hwInfoLoadFailed => 'हार्डवेयर जानकारी लोड करने में विफल';

  @override
  String get hwCache => 'कैश';

  @override
  String get hwInfoImportDone => 'हार्डवेयर जानकारी आयात पूर्ण';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'हार्डवेयर रिपोर्ट और एसीपीआई तालिकाएँ $reportDirectory को निर्यात की गईं';
  }

  @override
  String get hwAcpiDirInvalid =>
      'एसीपीआई टेबल निर्देशिका अमान्य है, एसएसडीटी अनुकूलन अनुपलब्ध है';

  @override
  String get hwExportingNativeAcpi =>
      'मूल ACPI तालिकाओं का निर्यात किया जा रहा है...';

  @override
  String get hwGeneratingConfigModel =>
      'हार्डवेयर जानकारी के आधार पर कॉन्फिगमॉडल तैयार किया जा रहा है...';

  @override
  String get hwInfoImported => 'हार्डवेयर जानकारी आयात की गई';

  @override
  String get hwAcpiExportFailedOrUnsup =>
      'एसीपीआई तालिकाओं का निर्यात विफल या असमर्थित';

  @override
  String get hwReportFolderCreateFailed =>
      'हार्डवेयर रिपोर्ट फ़ोल्डर बनाने में विफल';

  @override
  String get hwNoAdminPwd =>
      'व्यवस्थापक पासवर्ड दर्ज नहीं किया गया, ACPI तालिकाएँ निर्यात नहीं की जा सकतीं';

  @override
  String get hwEfiConfigFailedCheck =>
      'ईएफआई कॉन्फ़िगरेशन विफल रहा, कृपया आउटपुट पथ या लॉग की जांच करें।';

  @override
  String get hwLoadingInfo => 'हार्डवेयर जानकारी लोड हो रही है';

  @override
  String get hwDone => 'हो गया';

  @override
  String get hwAcpiExportFailedProcess =>
      'एसीपीआई तालिकाओं का निर्यात विफल: निर्यात प्रक्रिया का निष्पादन विफल';

  @override
  String get hwIgpuType => 'आईजीपीयू';

  @override
  String get hwGpuCompatible => 'अनुकूल';

  @override
  String get hwGpuIncompatibleNoDisplay =>
      'असंगत, कोई सीधा प्रदर्शन कनेक्शन नहीं';

  @override
  String get hwGpuIncompatible => 'असंगत';

  @override
  String get hwLaptop => 'लैपटॉप';

  @override
  String get hwGpuLoadingCompat => 'अनुकूलता लोड हो रही है';

  @override
  String get hwGpuLimitedCompat => 'सीमित अनुकूलता';

  @override
  String get hwClickToCopy => 'कॉपी करने के लिए क्लिक करें';

  @override
  String get hwCopiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get linkCantOpen => 'लिंक नहीं खुल सकता';

  @override
  String get clickToCopy => 'कॉपी करने के लिए क्लिक करें';

  @override
  String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get gpuCard => 'जीपीयू';

  @override
  String gpuDeviceId(String id) {
    return 'डिवाइस आईडी: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'कोर: $codename';
  }

  @override
  String get gpuCompatible => 'अनुकूल';

  @override
  String get gpuIncompatible => 'असंगत';

  @override
  String get gpuIncompatibleNoDisplay => 'असंगत, कोई प्रत्यक्ष प्रदर्शन नहीं';

  @override
  String get gpuLimitedCompat => 'सीमित अनुकूलता';

  @override
  String get gpuLoadingCompat => 'अनुकूलता लोड हो रही है';

  @override
  String gpuSpoofId(String id) {
    return 'स्पूफ आईडी आवश्यक: $id';
  }

  @override
  String get bootArgVerbose =>
      '-v वर्बोज़ मोड सक्षम करें (बूट के दौरान डिबग आउटपुट दिखाता है, स्टार्टअप समस्याओं को डीबग करने के लिए उपयोगी)';

  @override
  String get bootArgKeepsyms =>
      'समस्याओं के निदान में सहायता के लिए कर्नेल क्रैश प्रतीकों को प्रिंट करें। आमतौर पर डिबग=0x100 के साथ प्रयोग किया जाता है। आरंभिक बूट डिबगिंग के दौरान पुरजोर अनुशंसा की जाती है।';

  @override
  String get bootArgDebug0x100 =>
      'कर्नेल पैनिक पर स्वचालित पुनरारंभ को रोकें, जिससे आप क्रैश लॉग देख सकें। आरंभिक बूट डिबगिंग के दौरान पुरजोर अनुशंसा की जाती है।';

  @override
  String get bootArgWatchdog0 =>
      'बूट डिबगिंग के दौरान आकस्मिक पैनिक-ट्रिगर पुनरारंभ को रोकने के लिए वॉचडॉग को अक्षम करें।';

  @override
  String get bootArgSlide0 =>
      'शुरुआती बूट कर्नेल पैनिक के कारण होने वाले मेमोरी विरोध को ठीक करने के लिए KASLR को अक्षम करें। डिबगिंग के लिए उपयोग किया जाता है।';

  @override
  String get bootArgNoCompatCheck =>
      'निषिद्ध प्रतीक से बचने के लिए बूट के दौरान मॉडल संगतता जांच छोड़ें। नोट: इंस्टॉलर मॉडल जांच को बायपास नहीं करता है।';

  @override
  String get bootArgCpus1 =>
      'केवल 1 सीपीयू कोर सक्षम करें (प्रारंभिक इंस्टॉलेशन डिबगिंग के दौरान कर्नेल पैनिक समस्याओं वाले X58/X79/X99/X299 मल्टी-कोर सर्वर सीपीयू के लिए)।';

  @override
  String get bootArgBetaFix =>
      'उन समस्याओं को ठीक करें जो नवीनतम macOS (मुख्य रूप से बीटा) में दिखाई दे सकती हैं, जैसे ऑडियो, ब्लूटूथ, सीपीयू आवृत्ति विसंगतियाँ। बीटा संस्करणों पर पुरजोर अनुशंसा की गई।';

  @override
  String get bootArgAmfi0x80 =>
      'नए GPU (HD4000+, GT710+ केप्लर) के लिए या वाई-फ़ाई ड्राइवरों को पैच करते समय AMFI अक्षम करें। Amfi_get_out_of_my_way=0x1 के साथ प्रयोग न करें। केवल एसआईपी अक्षम होने पर प्रभावी।';

  @override
  String get bootArgAmfiGetOut =>
      'पुराने GPU (उदाहरण के लिए, GT240) या वाई-फाई ड्राइवरों को पैच करते समय AMFI को अक्षम करें। Amfi=0x80 के साथ प्रयोग न करें। केवल एसआईपी अक्षम होने पर प्रभावी।';

  @override
  String get bootArgIpcControl =>
      'AMFI को अक्षम करने के बाद ऐप क्रैश (उदाहरण के लिए, Baidu नेटडिस्क) को ठीक करें। केवल एसआईपी अक्षम होने पर प्रभावी।';

  @override
  String get bootArgAmfiPassBeta =>
      'सुनिश्चित करें कि AMFI सुरक्षा जांच को बायपास करना जारी रखने के लिए AMFIPass.kext नवीनतम macOS Tahoe 26 में काम करता है।';

  @override
  String get bootArgRevpatch =>
      'SIP या सिक्योरबूटमॉडल को अक्षम करने के बाद macOS OTA अपडेट समस्याओं को ठीक करें, और कस्टम CPU नाम डिस्प्ले को ठीक करें।';

  @override
  String get bootArgDisableGfxFirmware =>
      'फ़र्मवेयर लोड विफलता (केवल Intel iGPU) के कारण स्टार्टअप के दौरान हैंग होने से बचने के लिए Apple ग्राफ़िक्स फ़र्मवेयर लोडिंग को अक्षम करें।';

  @override
  String get bootArgWegNoIgpu =>
      'Intel iGPU को अक्षम करें (अनुशंसित जब iGPU चलाया नहीं जा सकता या हार्डवेयर त्वरण का समर्थन नहीं करता)।';

  @override
  String get bootArgIgfxVesa =>
      'Intel iGPU एक्सेलेरेशन को अक्षम करें (जब OCLP iGPU पैच लगाने के बाद सिस्टम प्रारंभ न हो तो इसका उपयोग करें, केवल डीबग करें)।';

  @override
  String get bootArgIgfxRpsc =>
      'Intel iGPU प्रदर्शन को ठीक करें और सुधारें (उदाहरण के लिए, 4K HEVC एन्कोडिंग, रिज़ॉल्यूशन और FPS समस्याओं को ठीक करें)।';

  @override
  String get bootArgIgfxMpc =>
      'अधिकतम पिक्सेल क्लॉक ओवरराइड को बाध्य करके, macOS डिफ़ॉल्ट रिज़ॉल्यूशन/रीफ्रेश दर सीमाओं को हटाकर iGPU रिज़ॉल्यूशन समस्याओं को ठीक करें।';

  @override
  String get bootArgGfxfw2 =>
      'उपयोग और प्रदर्शन को बेहतर बनाने के लिए पूर्ण iGPU फ़र्मवेयर लोडिंग सक्षम करें। बूट विफलता का कारण हो सकता है - सावधानी के साथ उपयोग करें।';

  @override
  String get bootArgCdclk =>
      'कोर डिस्प्ले क्लॉक (सीडीसीएलके) आवृत्ति बहुत कम होने के कारण 10वीं पीढ़ी के आइस लेक पर कर्नेल पैनिक को ठीक करें।';

  @override
  String get bootArgIgfxdbeo =>
      '10वीं पीढ़ी के आइस लेक पर कर्नेल पैनिक को ठीक करें जहां ड्राइवर DVMT पूर्व-आवंटित मेमोरी आकार की गलत गणना करता है।';

  @override
  String get bootArgIceLakeDisplay =>
      '10वीं पीढ़ी के आइस लेक लैपटॉप पर बूट के समय 7-15 सेकंड तक चलने वाले डिस्प्ले भ्रष्टाचार को ठीक करें।';

  @override
  String get bootArgIgfxNoTelemetry =>
      'बूट के दौरान iGPU टेलीमेट्री मॉड्यूल लोडिंग अक्षम करें। इस मॉड्यूल के लोड होने पर कुछ लैपटॉप (विशेषकर Chromebook) बूट पर रुक सकते हैं।';

  @override
  String get bootArgWegNoEgpu =>
      'असतत GPU को अक्षम करें (अनुशंसित जब Intel डुअल-GPU लैपटॉप पर dGPU - आमतौर पर NVIDIA - संचालित नहीं किया जा सकता है)।';

  @override
  String get bootArgNvDisable =>
      'NVIDIA ड्राइवर को अक्षम करें (केवल असंगत NVIDIA GPU को डीबग करने के लिए)।';

  @override
  String get bootArgUnfairGva =>
      'AMD GPU पर हार्डवेयर DRM समर्थन ठीक करें (समर्थित AMD GPU पर स्ट्रीमिंग जैसी DRM-संरक्षित सामग्री सक्षम करता है)।';

  @override
  String get bootArgRadpg15 =>
      'पुराने AMD GPU (HD7750, HD7850 के साथ GCN कोर जैसे HD77XX/HD78XX/HD79XX) पर डिस्प्ले करप्शन (स्क्रैम्बल/पीली स्क्रीन) को ठीक करें।';

  @override
  String get bootArgAmdNoAccel =>
      'एटीआई/एएमडी जीपीयू त्वरण अक्षम करें (जब ओसीएलपी जीपीयू पैच, डीबग के बाद सिस्टम शुरू नहीं होगा तब उपयोग करें)।';

  @override
  String get bootArgRaddvi =>
      'पुराने AMD GPU (290X, 370, आदि) पर DVI आउटपुट डिस्प्ले ठीक करें।';

  @override
  String get bootArgRadcodec =>
      'आधिकारिक तौर पर असमर्थित एएमडी जीपीयू (उदाहरण के लिए, आरएक्स550 लेक्सा कोर) के लिए वीडीए हार्डवेयर वीडियो एन्कोडिंग समर्थन को ठीक करें।';

  @override
  String get bootArgNgfxFermi =>
      'MacOS बिग सुर 11+ पर पुराने NVIDIA फर्मी/मैक्सवेल/पास्कल कार्ड (GT610, GTX750, GTX960, GTX1050) के लिए GPU ड्राइवर समस्याओं को ठीक करें। सिस्टम में प्रवेश करने के बाद OCLP GPU पैच अवश्य लगाएं! केप्लर को इसकी आवश्यकता नहीं है।';

  @override
  String get bootArgApplbkl3 =>
      'AMD Radeon RX 5000 श्रृंखला GPU के लिए PWM बैकलाइट नियंत्रण सक्षम करें।';

  @override
  String get bootArgAgdpmodIgnore =>
      'AppleGraphicsDevicePolicy.kext प्रतिबंधों को पूरी तरह से अनदेखा करके कुछ GPU पर काली स्क्रीन या डिस्प्ले समस्याओं को ठीक करें। EveryGreen.kext के साथ प्रयोग करें।';

  @override
  String get bootArgAgdpmodPikera =>
      'AMD Navi RX5XXX/RX6XXX GPU (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, आदि) के लिए बोर्ड-आईडी को बोर्ड-ix से बदलकर काली स्क्रीन को बूट पर ठीक करें। EveryGreen.kext के साथ प्रयोग करें।';

  @override
  String get bootArgAgdpmodVit9696 =>
      'AppleGraphicsDevicePolicy में बोर्ड-आईडी चेक को अक्षम करके RX470/RX570 GPU पर सोने/जागने के बाद काली स्क्रीन को ठीक करें। EveryGreen.kext के साथ प्रयोग करें।';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Intel 3rd Gen या इससे पुराने AMD RX5XX/RX5XXX/RX6XXX के लिए मूल रूप से समर्थित GPU के लिए वेंचुरा+ पर काली स्क्रीन को ठीक करें। बूटिंग के बाद OCLP GPU पैच लागू करें, फिर इस तर्क को हटा दें।';

  @override
  String get bootArgBrcmfx =>
      'देश कोड को HK में बदलकर कुछ ब्रॉडकॉम वाई-फाई कार्ड पर धीमी गति को ठीक करें। आप राउटर चैनल को बदलकर भी सुधार कर सकते हैं।';

  @override
  String get bootArgVsmcgen =>
      'रैमरोड कोड हैंग और एसएमसी एमुलेटर भ्रष्टाचार की समस्याओं को ठीक करें।';

  @override
  String get bootArgSwdPanic =>
      'कर्नेल क्रैश लॉग एकत्र करने और स्लीप समस्याओं को डीबग करने में सहायता के लिए स्लीप के बाद डिवाइस को पुनरारंभ होने से रोकें।';

  @override
  String get bootArgCtrsmt =>
      'इंटेल 12वीं पीढ़ी+ हाइब्रिड (पी+ई) सीपीयू के लिए टोपोलॉजी पहचान और शेड्यूलिंग में सुधार करें। प्रदर्शन लाभ की गारंटी नहीं - सक्षम करने से पहले परीक्षण करें। CpuTopologyRebuild.kext की आवश्यकता है।';

  @override
  String get bootArgDarkwake0 =>
      'डार्कवेक मोड को पूरी तरह से अक्षम करें और पारंपरिक स्लीप मोड का उपयोग करें। मुख्य रूप से वेक ब्लैक स्क्रीन और स्वचालित वेक समस्याओं को ठीक करता है।';

  @override
  String get bootArgForceRenderStandby =>
      'नींद के दौरान iGPU RC6 के कारण होने वाली NVMe कर्नेल घबराहट को ठीक करने के लिए iGPU RC6 रेंडर स्टैंडबाय को अक्षम करें।';

  @override
  String get bootArgI2cForcePolling =>
      'I2C ट्रैकपैड को इंटरप्ट-संचालित मोड के बजाय पोलिंग मोड का उपयोग करने के लिए बाध्य करें (इंटरप्ट मोड को आमतौर पर SSDT अनुकूलन की आवश्यकता होती है)।';

  @override
  String get kextLiluDesc =>
      'macOS के लिए विस्तारशीलता और अनुकूलता प्रदान करने वाला आवश्यक बेस ड्राइवर। सभी प्लगइन-प्रकार केक्स्ट इस पर निर्भर करते हैं।';

  @override
  String get kextVirtualSMCDesc =>
      'आवश्यक एसएमसी एमुलेटर। गैर-एप्पल हार्डवेयर पर Apple SMC का अनुकरण करता है, सेंसर, पंखा नियंत्रण और पावर प्रबंधन प्रदान करता है। इसके बिना macOS नहीं चल सकता।';

  @override
  String get kextWhateverGreenDesc =>
      'GPU ग्राफ़िक्स ड्राइवर समर्थन. अधिकांश उपयोगकर्ताओं के लिए पुरजोर अनुशंसा की जाती है। AMD dGPUs (RX460, RX560+) के साथ MacPro7,1 अनचेक हो सकता है। आमतौर पर NootRX/NootedRed के साथ टकराव होता है - इंस्टॉलेशन के दौरान एक साथ चयन न करें।';

  @override
  String get kextAppleALCDesc =>
      'अंतर्निहित ऑडियो कोडेक को खराब करने के लिए AppleALC का उपयोग करें (अधिक संपूर्ण समाधान, पसंदीदा विकल्प)।';

  @override
  String get kextVoodooHDADesc =>
      'यूनिवर्सल ऑडियो ड्राइवर वूडूएचडीए (बूट के दौरान लोड किया गया, केवल मैकओएस बिग सुर 11.2.3 और उससे नीचे का समर्थन करता है; उच्च संस्करणों को सिस्टम कर्नेल एक्सटेंशन फ़ोल्डर में इंजेक्ट करने की आवश्यकता होती है)।';

  @override
  String get kextUSBInjectAllDesc =>
      'जेनेरिक यूएसबी इंजेक्शन समाधान, यूएसबी अनुकूलन नहीं होने पर डिफ़ॉल्ट विकल्प।';

  @override
  String get kextUSBToolBoxDesc =>
      'USBToolBox समाधान, आमतौर पर अनुकूलित UTBMap.kext के साथ उपयोग किया जाता है।';

  @override
  String get kextBatteryV1Desc =>
      'बैटरी ड्राइवर समाधान 1 (तीसरी पीढ़ी के इंटेल या पुराने प्लेटफॉर्म वाले लैपटॉप के लिए)।';

  @override
  String get kextBatteryV2Desc =>
      'बैटरी ड्राइवर समाधान 2 (तीसरी पीढ़ी के इंटेल या नए प्लेटफॉर्म वाले लैपटॉप के लिए)।';

  @override
  String get kextAmbientLightDesc =>
      'परिवेश प्रकाश सेंसर (स्वचालित स्क्रीन चमक)। यदि आपके पास कोई परिवेश प्रकाश सेंसर नहीं है तो इसका उपयोग न करें, क्योंकि इससे समस्याएँ हो सकती हैं।';

  @override
  String get kextAsusNBFnKeysDesc =>
      'ASUS लैपटॉप प्रशंसक नियंत्रण, पावर प्रबंधन और अन्य सिस्टम सेंसर अनुकूलन। गैर-ASUS मशीनों के लिए अनुशंसित नहीं।';

  @override
  String get kextLenovoDesc =>
      'लेनोवो लैपटॉप प्रशंसक नियंत्रण, पावर प्रबंधन और अन्य सिस्टम सेंसर अनुकूलन। गैर-लेनोवो मशीनों के लिए अनुशंसित नहीं।';

  @override
  String get kextDellDesc =>
      'अधिक सटीक प्रशंसक निगरानी और नियंत्रण के लिए डेल लैपटॉप समर्पित सेंसर। गैर-डेल मशीनों के लिए अनुशंसित नहीं।';

  @override
  String get kextNootRXDesc =>
      'आधिकारिक तौर पर असमर्थित RX6XXX dGPUs (RX6700, RX6750XT, RX6750GRE, आदि) का समर्थन करें। व्हेयरग्रीन के साथ विरोध - स्थापना के दौरान एक साथ चयन न करें।';

  @override
  String get kextBatteryFixDesc =>
      'बैटरी रीडिंग फिक्स, कुछ बैटरी डिस्प्ले समस्याओं को ठीक करता है।';

  @override
  String get kextNVMeFixDesc =>
      'गैर-Apple NVMe SSDs के लिए अनुकूलता में सुधार करें और निष्क्रिय बिजली की खपत को कम करें। असंगत NVMe ड्राइव अभी भी क्रैश हो सकती हैं। संगत NVMe ड्राइव इस ड्राइवर के साथ कर्नेल पैनिक हो सकती है - सावधानी के साथ उपयोग करें।';

  @override
  String get kextFeatureUnlockDesc =>
      'असमर्थित मैक मॉडल पर यूनिवर्सल कंट्रोल, साइडकार और अन्य सुविधाओं को अनलॉक करें।';

  @override
  String get kextHibernationFixDesc =>
      'सामान्य हाइबरनेशन और नींद से संबंधित समस्याओं को ठीक करें।';

  @override
  String get kextHoRNDIS =>
      'MacOS को USB के माध्यम से Android डिवाइस नेटवर्क टेदरिंग का उपयोग करने की अनुमति दें।';

  @override
  String get kextCPUFriendDesc =>
      'सीपीयू फ़्रीक्वेंसी स्केलिंग ड्राइवर, मुख्य रूप से 11वीं पीढ़ी और नए प्लेटफ़ॉर्म पर MacPro7,1 के लिए फ़्रीक्वेंसी स्केलिंग समर्थन प्रदान करता है।';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'सीपीयूफ्रेंड साथी डेटा ड्राइवर, विशिष्ट मशीन मॉडल के लिए सीपीयू आवृत्ति स्केलिंग डेटा प्रदान करता है।';

  @override
  String get kextAppleIGHDA =>
      'कुछ सिस्टम पर Intel iGPU HDMI ऑडियो समस्याओं को ठीक करें।';

  @override
  String get kextNoTouchID =>
      'Apple ID और iCloud में लॉग इन करने में असमर्थता को ठीक करें, आमतौर पर बिना स्थानीय वायर्ड नेटवर्क कार्ड वाले लैपटॉप के लिए।';

  @override
  String get kextAppleRTCDesc =>
      'नए प्लेटफ़ॉर्म पर macOS AppleRTC और PC BIOS के बीच टकराव को ठीक करें, उदाहरण के लिए, RTC के कारण हैंग होना, अचानक पुनरारंभ होना, या नींद से तुरंत जागना।';

  @override
  String get kextPS2KBMouseDesc =>
      'PS/2 कीबोर्ड और माउस ड्राइवर (PS/2 राउंड पोर्ट वाले डेस्कटॉप मदरबोर्ड के लिए)।';

  @override
  String get kextPS2KeyboardDesc =>
      'PS/2 कीबोर्ड ड्राइवर (PS/2 राउंड कीबोर्ड पोर्ट वाले डेस्कटॉप मदरबोर्ड के लिए)।';

  @override
  String get kextPS2MouseDesc =>
      'PS/2 माउस ड्राइवर (PS/2 राउंड माउस पोर्ट वाले डेस्कटॉप मदरबोर्ड के लिए)।';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Microsoft Surface समर्पित कीबोर्ड और ट्रैकपैड ड्राइवर।';

  @override
  String get kextBrightnessKeysDesc => 'चमक शॉर्टकट कुंजी ठीक करें।';

  @override
  String get kextGenericUSBXHCIDesc =>
      'पुराने या AMD प्लेटफ़ॉर्म के लिए USB 3.0 नियंत्रक संगतता समाधान।';

  @override
  String get kextXLNCUSBFixDesc =>
      'पुराने AMD प्लेटफ़ॉर्म (FM1/FM2/AM3) पर USB नियंत्रक संगतता समस्याओं को ठीक करें।';

  @override
  String get kextRealtekCardReaderDesc =>
      'रीयलटेक एसडी कार्ड रीडर ड्राइवर (RealtekCardReaderFriend के साथ प्रयोग करें)।';

  @override
  String get kextRadeonSensorDesc =>
      'AMD Radeon GPU प्रदर्शन को अनुकूलित करें, लेकिन कुछ परिदृश्यों में सिस्टम क्रैश या बूट विफलता हो सकती है - सावधानी के साथ उपयोग करें।';

  @override
  String get hwStatusIdle =>
      'हार्डवेयर जानकारी ताज़ा करने की प्रतीक्षा की जा रही है';

  @override
  String get hwStatusLoading => 'हार्डवेयर जानकारी लोड हो रही है';

  @override
  String get hwStatusRefreshing => 'ताज़ा हो रही हार्डवेयर जानकारी';

  @override
  String get hwStatusComplete => 'हार्डवेयर जानकारी लोड की गई';

  @override
  String get hwStatusFailed => 'हार्डवेयर जानकारी लोड करने में विफल';

  @override
  String get hwStatusUnsupported => 'हार्डवेयर जानकारी समर्थित नहीं है';

  @override
  String get hwStatusImported => 'हार्डवेयर जानकारी आयात की गई';

  @override
  String get hwPlatformUnsupported =>
      'वर्तमान प्लेटफ़ॉर्म हार्डवेयर जानकारी क्वेरी का समर्थन नहीं करता है';

  @override
  String hwFetchFailed(String error) {
    return 'हार्डवेयर जानकारी लाने में विफल: $error';
  }

  @override
  String get hwExportWarning =>
      'यह एक आयातित रिपोर्ट है. कृपया निर्यात करने से पहले स्थानीय हार्डवेयर जानकारी ताज़ा करें।';

  @override
  String get hwNoLocalInfo =>
      'निर्यात के लिए कोई स्थानीय हार्डवेयर जानकारी उपलब्ध नहीं है';

  @override
  String get hwFolderCleanFailed =>
      'हार्डवेयर रिपोर्ट फ़ोल्डर साफ़ करने में विफल';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'हार्डवेयर रिपोर्ट फ़ोल्डर साफ़ करने में विफल: $error';
  }

  @override
  String get hwFolderCreateFailed => 'हार्डवेयर रिपोर्ट फ़ोल्डर बनाने में विफल';

  @override
  String get hwExporting =>
      'स्थानीय हार्डवेयर रिपोर्ट निर्यात किया जा रहा है...';

  @override
  String hwExportSuccess(String path) {
    return 'हार्डवेयर रिपोर्ट और एसीपीआई तालिकाएँ $path को निर्यात की गईं';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'हार्डवेयर रिपोर्ट $path, $error को निर्यात की गई';
  }

  @override
  String get hwAcpiExporting =>
      'स्थानीय ACPI तालिकाएँ निर्यात की जा रही हैं...';

  @override
  String get hwAcpiExportFailed =>
      'स्थानीय ACPI तालिकाएँ निर्यात करने में विफल';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'स्थानीय एसीपीआई तालिकाएँ निर्यात की गईं: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'स्थानीय ACPI तालिकाएँ निर्यात करने में विफल: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'वर्तमान प्लेटफ़ॉर्म ACPI तालिकाओं को निर्यात करने का समर्थन नहीं करता है';

  @override
  String get hwAcpiAuthCancelled =>
      'व्यवस्थापक प्राधिकरण रद्द कर दिया गया. ACPI तालिकाएँ निर्यात नहीं की गईं.';

  @override
  String get hwAcpiNoPassword =>
      'कोई व्यवस्थापक पासवर्ड प्रदान नहीं किया गया. ACPI तालिकाएँ निर्यात नहीं की जा सकतीं.';

  @override
  String get hwAcpiWrongPassword =>
      'ग़लत व्यवस्थापक पासवर्ड. ACPI तालिकाएँ निर्यात नहीं की जा सकतीं.';

  @override
  String get hwImportNotJson => 'हार्डवेयर जानकारी फ़ाइल JSON ऑब्जेक्ट नहीं है';

  @override
  String get hwImportSuccess => 'हार्डवेयर जानकारी आयात की गई';

  @override
  String get hwImportAcpiInvalid =>
      'अमान्य ACPI तालिका निर्देशिका. कस्टम SSDT अनुपलब्ध है.';

  @override
  String hwImportFailed(String error) {
    return 'हार्डवेयर रिपोर्ट आयात करने में विफल: $error';
  }

  @override
  String get hwConfigStart => 'ईएफआई कॉन्फ़िगरेशन प्रारंभ हो रहा है...';

  @override
  String get hwConfigGenerating =>
      'हार्डवेयर जानकारी से कॉन्फ़िगमॉडल जेनरेट किया जा रहा है...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'कस्टम SSDT तैयार करना: $items';
  }

  @override
  String get hwConfigSsdtSkip =>
      'मूल EFI SSDT का उपयोग करना। कस्टम SSDT को छोड़ा जा रहा है।';

  @override
  String get hwConfigSsdtDisabled =>
      'एसीपीआई टेबल निर्देशिका के बिना आयातित बाहरी हार्डवेयर रिपोर्ट। कस्टम SSDT अक्षम किया गया.';

  @override
  String get hwConfigExporting => 'ओपनकोर ईएफआई निर्यात कर रहा है...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'ईएफआई कॉन्फ़िगरेशन विफल: $error';
  }

  @override
  String get hwConfigRebuilding =>
      'हार्डवेयर ऑटो-जेनरेशन कॉन्फिगमॉडल नियमों को दोबारा तैयार किया जा रहा है';

  @override
  String get cpuUnknown => 'अज्ञात';

  @override
  String get platDesktop => 'डेस्कटॉप';

  @override
  String get platLaptop => 'लैपटॉप';

  @override
  String get platMini => 'मिनी पीसी';

  @override
  String get platServer => 'सर्वर';

  @override
  String get csrEnabled =>
      'सिस्टम सुरक्षा बढ़ाने के लिए SIP सक्षम करें। यदि GPU/WiFi पैच के लिए OCLP का उपयोग नहीं कर रहे हैं तो अनुशंसित।';

  @override
  String get csrPartial => 'एसआईपी विकल्प 1 अक्षम करें';

  @override
  String get csrPartialDesc =>
      'एसआईपी को आंशिक रूप से अक्षम करें। GPU/WiFi पैच के लिए OCLP का उपयोग करते समय बिग सुर या नए के लिए अनुशंसित।';

  @override
  String get csrFully => 'एसआईपी विकल्प 2 अक्षम करें';

  @override
  String get csrFullyDesc =>
      'एसआईपी को पूरी तरह से अक्षम करें। GPU/WiFi पैच के लिए OCLP का उपयोग करते समय बिग सुर या नए के लिए पसंदीदा।';

  @override
  String get uiScaleAuto =>
      'ऑटो-अनुकूलन: डिस्प्ले रिज़ॉल्यूशन के आधार पर ओपनकोर बूट यूआई स्केल को स्वचालित रूप से समायोजित करें।';

  @override
  String get uiScaleStandard =>
      'मानक रिज़ॉल्यूशन: 720p, 1080p, 1440p डिस्प्ले के लिए उपयुक्त।';

  @override
  String get uiScaleHigh =>
      'उच्च रिज़ॉल्यूशन: 4K/5K डिस्प्ले के लिए उपयुक्त (ओपनकोर बूट मेनू में छोटे यूआई तत्वों को ठीक करता है)।';

  @override
  String get procDefault => 'प्रोसेसर प्रकार को संशोधित न करें';

  @override
  String get procKeep => 'सिस्टम डिफॉल्ट सीपीयू टाइप डिस्प्ले रखें';

  @override
  String get brandAsus => 'Asus';

  @override
  String get brandGigabyte => 'गीगाबाइट';

  @override
  String get brandAsrock => 'एएसआरॉक';

  @override
  String get brandMsi => 'एमएसआई';

  @override
  String get brandDell => 'गड्ढा';

  @override
  String get brandLenovo => 'Lenovo';

  @override
  String get brandSony => 'वायो';

  @override
  String get brandHp => 'हिमाचल प्रदेश';

  @override
  String get brandGoogle => 'Chrome बुक';

  @override
  String get brandMicrosoft => 'माइक्रोसॉफ्ट सरफेस';

  @override
  String get mbNormal => 'मानक मदरबोर्ड';

  @override
  String get mbOemUsb =>
      'कुछ OEM मदरबोर्ड में USB स्वामित्व रिलीज़ समस्याएँ हैं: EHCI हैंड-ऑफ़ विफलता';

  @override
  String get navAppGuide => 'ऐप गाइड';

  @override
  String get appGuideTitle => 'रैपिडईएफआई उपयोगकर्ता गाइड';

  @override
  String get logMsg001 => '=> एलपीसी(बी) ढूंढने में विफल! ऑपरेशन समाप्त!';

  @override
  String get logMsg002 =>
      'कोई वैध डीएसडीटी नहीं मिला! कृपया पहले एक डीएसडीटी फ़ाइल या डीएसडीटी युक्त फ़ाइल निर्देशिका चुनें!';

  @override
  String get logMsg003 =>
      'आईएएसएल उपकरण की तैयारी विफल रही! कृपया पहले अंतर्निहित आईएएसएल टूल को अपडेट करें या उसका उपयोग करें!';

  @override
  String get logMsg004 => 'कोई मान्य .aml फ़ाइल नहीं मिली!\\n';

  @override
  String get logMsg005 =>
      'कोई वैध डीएसडीटी नहीं मिला! कृपया पहले एक डीएसडीटी फ़ाइल या डीएसडीटी युक्त फ़ाइल निर्देशिका चुनें!';

  @override
  String get logMsg006 =>
      'वर्तमान में एकाधिक डीएसडीटी फ़ाइलों का पता लगाया गया है और एक समय में केवल एक को संसाधित करने की अनुमति है। कृपया एक डीएसडीटी फ़ाइल रखें और अन्य हटा दें और पुनः प्रयास करें।\\n';

  @override
  String get logMsg007 =>
      'अमान्य डीएसडीटी फ़ाइल! कृपया वैध डीएसडीटी फ़ाइल का पुनः चयन करें!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 विसंकलन विफल!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'संकलन परिणाम: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'IntObj प्रकार को संसाधित करते समय त्रुटि उत्पन्न हुई: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'विधिओब्जे प्रकार को संसाधित करने में त्रुटि: $arg0';
  }

  @override
  String get logMsg012 => 'कोई IRQ जानकारी नहीं मिली!';

  @override
  String get logMsg013 =>
      'मौजूदा विकल्प या कस्टम आईआरक्यू खाली हैं! IRQ पैच जनरेट करने में असमर्थ!';

  @override
  String get logMsg014 => '=> कोई आईआरक्यू जानकारी नहीं मिली!';

  @override
  String get logMsg015 =>
      'कस्टम आईआरक्यू सूची प्रारूप गलत! ! ! डिवाइसों को रिक्त स्थान और आईआरक्यू को अल्पविराम से अलग करें! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> _HID पार्सिंग त्रुटि: $arg0';
  }

  @override
  String get logMsg017 =>
      'कोई वैध उपकरण नहीं मिला, एचपीईटी ऑपरेशन छोड़ दिया गया!';

  @override
  String get logMsg018 =>
      'कोई वैध आईआरक्यू प्रदान नहीं किया गया या आईआरक्यू खाली हैं! संचालन बंद किया गया!';

  @override
  String logMsg019(String arg0) {
    return '=> $arg0._सीआरएस का पता लगाने में असमर्थ! ऑपरेशन समाप्त!';
  }

  @override
  String logMsg020(String arg0) {
    return '=> $arg0._सीआरएस का पता लगाने में असमर्थ!';
  }

  @override
  String get logMsg021 =>
      '=> ऐसा प्रतीत होता है कि _CRS का नाम XCRS रखा गया है!';

  @override
  String get logMsg022 =>
      '=> कृपया डीएसडीटी में डिवाइस का नाम _CRS से XCRS करने को अक्षम करें और पुनरारंभ करने के बाद पुनः प्रयास करें!\\n';

  @override
  String get logMsg023 => '=> मेमोरी एक्सेस प्रकार निर्धारित करने में असमर्थ!';

  @override
  String get logMsg024 =>
      '=> आधार या लंबाई को पूर्णांक में परिवर्तित नहीं कर सकता!';

  @override
  String get logMsg025 => '=> नहीं मिला!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> डिफ़ॉल्ट मान का उपयोग करें $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> नहीं मिला!';

  @override
  String get logMsg028 => '=> पैच करने के लिए कुछ भी नहीं!';

  @override
  String logMsg029(String arg0, String arg1) {
    return '$arg0 के लिए गुम आईआरक्यू पैच एंडिंग ($arg1)! छोड़ दिया गया...';
  }

  @override
  String get logMsg030 =>
      'निम्नलिखित अद्वितीय नहीं हो सकते हैं और डिफ़ॉल्ट रूप से अक्षम हैं! \\एन';

  @override
  String get logMsg031 =>
      'कोई वैध यूआईडी प्रदान नहीं किया गया, कार्रवाई निरस्त करें!';

  @override
  String logMsg032(String arg0) {
    return '$arg0 एक कस्टम यूआईडी है जिसके लिए मैन्युअल अनुकूलन की आवश्यकता हो सकती है या यह बिल्कुल भी समर्थित नहीं हो सकता है!';
  }

  @override
  String get logMsg033 =>
      'उत्तीर्ण ACPI तालिका में कोई मान्य iGPU पथ नहीं मिला!\\n';

  @override
  String logMsg034(String arg0) {
    return 'ध्यान दें: iGPU पथ का अनुमान $arg0\\n उपयोग से पहले सत्यापित करें!';
  }

  @override
  String logMsg035(String arg0) {
    return 'नोट: iGPU पथ को मैन्युअल रूप से $arg0 पर सेट किया गया है। कृपया उपयोग से पहले यह सुनिश्चित कर लें कि पथ सही है या नहीं!';
  }

  @override
  String get logMsg036 =>
      '=> नामित ईसी डिवाइस मिला, नकली बनाने की कोई जरूरत नहीं!\\n';

  @override
  String get logMsg037 => 'USBX विशेषता पैच खाली नहीं हो सकता! ऑपरेशन समाप्त!';

  @override
  String get logMsg038 => 'कोई वैध प्रोसेसर डिवाइस नहीं मिला!';

  @override
  String get logMsg039 =>
      '=> एक वैध PNP0B00 (RTC) डिवाइस मिल गया है और सत्यापित कर लिया गया है, किसी पैच या SSDT की आवश्यकता नहीं है! ऑपरेशन समाप्त!';

  @override
  String get logMsg040 =>
      '=> ACPI000E (AWAC) डिवाइस नहीं मिला, किसी पैच या SSDT की आवश्यकता नहीं है! ऑपरेशन समाप्त!';

  @override
  String get logMsg041 => '=> कोई उपकरण नहीं मिला! ऑपरेशन समाप्त!';

  @override
  String get logMsg042 => 'निम्नलिखित पथ के लिए कोई मिलान नहीं मिला:';

  @override
  String get logMsg043 => 'कोई मेल नहीं मिले!';

  @override
  String get logMsg044 =>
      'ध्यान दें कि वर्तमान ACPI तालिका से मेल खाने के लिए डिवाइस पथ को निम्नलिखित PciRoot() से प्रारंभ होना चाहिए:';

  @override
  String logMsg045(String arg0) {
    return '=> नहीं मिला, वैध $arg0 तालिका प्रतीत नहीं होती!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 मान नहीं मिला! संचालन बंद किया गया!';
  }

  @override
  String get logMsg047 =>
      'रीसेट रजिस्टर पता मान नहीं मिला! संचालन बंद किया गया!';

  @override
  String logMsg048(String arg0) {
    return '$arg0 में प्रोसेसर आईडी का समाधान करने में असमर्थ, पैचिंग निरस्त की जा रही है';
  }

  @override
  String logMsg049(String arg0) {
    return '$arg0 में पहला सीपीयू पहले से ही मेल खाता है, एपीआईसी तालिका को पैच करने की कोई आवश्यकता नहीं है!';
  }

  @override
  String get logMsg050 =>
      '=> प्रोसेसर का कोई मिलान नहीं मिला! संचालन बंद किया गया!';

  @override
  String get logMsg051 => 'कृपया IMEI पैच चुनें!';

  @override
  String logMsg052(String arg0) {
    return '=> IMEI डिवाइस $arg0 पर मिला, स्पूफिंग के लिए ब्रिज करने की कोई आवश्यकता नहीं है! संचालन बंद किया गया!';
  }

  @override
  String get logMsg053 =>
      '=> पीसीआई रूट डिवाइस नहीं मिला! संचालन बंद किया गया!';

  @override
  String get logMsg054 =>
      '=> SSDT स्पूफ़िंग IMEI सक्षम नहीं है, डिवाइस-आईडी को डिवाइसप्रॉपर्टीज़ के माध्यम से सेट किया जाना चाहिए!';

  @override
  String get logMsg055 =>
      'यूएनसी (पीएनपी0ए03) डिवाइस नहीं मिला! कोई SSDT-UNC पैच की आवश्यकता नहीं! संचालन बंद किया गया! \\एन';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: _STA विधि मौजूद नहीं है!';
  }

  @override
  String get logMsg057 =>
      '=> DMA (PNP0200) डिवाइस उपरोक्त किसी भी ACPI तालिका में नहीं मिला! संचालन बंद किया गया! \\एन';

  @override
  String get logMsg058 =>
      '=> _PTS विधि नहीं मिली, _PTS शेड्यूलिंग प्रविष्टि और नाम बदलें पैच उत्पन्न नहीं होगा!';

  @override
  String get logMsg059 =>
      '=> _WAK विधि नहीं मिली, _WAK शेड्यूलिंग प्रविष्टि और नाम बदलें पैच उत्पन्न नहीं होगा!';

  @override
  String get logMsg060 =>
      '=> शेड्यूल करने योग्य _PTS/_WAK विधि नहीं मिली, SSDT-स्लीपहुक छोड़ दिया गया!\\n';

  @override
  String get logMsg061 =>
      '=> _SST विधि उपरोक्त किसी भी ACPI तालिका में नहीं मिली! संचालन बंद किया गया! \\एन';

  @override
  String get logMsg062 =>
      '=> PNP0C0D डिवाइस उपरोक्त किसी भी ACPI तालिका में नहीं मिला! संचालन बंद किया गया! \\एन';

  @override
  String get logMsg063 =>
      '=> सिस्टम स्थिति समर्थित नहीं है: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> नोट: वर्तमान फर्मवेयर _S3 स्थिति का समर्थन नहीं करता है। यदि BIOS सेटिंग S3 फ़ंक्शन को अक्षम नहीं करती है, तो मशीन S3 स्लीप का समर्थन नहीं करती है!';

  @override
  String get logMsg065 =>
      '=> नोट: यह एक AOAC मशीन है, और macOS S3 स्लीप का समर्थन नहीं करता है!';

  @override
  String get logMsg066 =>
      '=> फिलहाल यह पता नहीं चल पाया है कि यह एओएसी मशीन है या नहीं, कृपया स्वयं पुष्टि करें!';

  @override
  String get logMsg067 => 'लो पावर S0 आइडल (V5) मान नहीं मिला!';

  @override
  String get logMsg068 =>
      'वर्तमान में एक AOAC मशीन, macOS S3 स्लीप का समर्थन नहीं करता है!';

  @override
  String get logMsg069 =>
      '=> नाम या विधि _S3 नहीं मिला, वर्तमान कॉन्फ़िगरेशन S3 स्लीप का समर्थन नहीं करता है! ऑपरेशन समाप्त कर दिया गया है!';

  @override
  String logMsg070(String arg0) {
    return '=> विधि $arg0 मिल गई!';
  }

  @override
  String get logMsg071 =>
      '=> वर्तमान विधि का नाम बदल दिया गया है और यह मूल ACPI तालिका नहीं हो सकती है! कृपया मूल ACPI तालिका पुनः प्राप्त करें और पुनः प्रयास करें!\\n';

  @override
  String get logMsg072 =>
      '=> LID (PNP0C0D) डिवाइस उपरोक्त किसी भी ACPI तालिका में नहीं मिला! कार्रवाई समाप्त!\\n';

  @override
  String get logMsg073 =>
      '=> उपरोक्त ACPI तालिकाओं में से किसी में भी विधि _LID नहीं मिली! कार्रवाई समाप्त!\\n';

  @override
  String get logMsg074 =>
      '=> PWRB (PNP0C0C) डिवाइस उपरोक्त ACPI तालिका में नहीं मिला! बिल्कुल नकली! \\एन';

  @override
  String logMsg075(String arg0) {
    return '=> नकली SLPB डिवाइस की कोई आवश्यकता नहीं, PNP0C0E डिवाइस $arg0 पर पाया गया है!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> PNP0C0E डिवाइस $arg0 में _STA विधि है!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E डिवाइस $arg0 मौजूद नहीं है _STA विधि!';
  }

  @override
  String get logMsg078 =>
      '=> कोई मेल खाता XHC/XHCI/XDCI/CNVW डिवाइस नहीं मिला! ऑपरेशन समाप्त! \\एन';

  @override
  String get logMsg079 => '=> GPRW विधि नहीं मिली!';

  @override
  String get logMsg080 =>
      '=> XPRW विधि मिली! वर्तमान विधि का नाम बदल दिया गया है और यह मूल ACPI तालिका नहीं हो सकती है! कृपया मूल ACPI तालिका पुनः प्राप्त करें और पुनः प्रयास करें!\\n';

  @override
  String get logMsg081 => '=> XPRW विधि नहीं मिली! ऑपरेशन समाप्त!';

  @override
  String get logMsg082 => '=> UPRW विधि नहीं मिली!';

  @override
  String get logMsg083 =>
      '=> XPRW विधि मिली! वर्तमान विधि का नाम बदल दिया गया है और यह मूल ACPI तालिका नहीं हो सकती है! कृपया मूल ACPI तालिका पुनः प्राप्त करें और पुनः प्रयास करें!\\n';

  @override
  String get logMsg084 => '=> XPRW विधि नहीं मिली! ऑपरेशन समाप्त!';

  @override
  String get logMsg085 => '=> GPI0 डिवाइस नहीं मिला! ऑपरेशन समाप्त! \\एन';

  @override
  String get logMsg086 => '=> _STA विधि नहीं मिली! ऑपरेशन समाप्त! \\एन';

  @override
  String get logMsg087 =>
      '=> वर्तमान प्रोसेसर प्रोसेसर नामकरण योजना सीपीयू नामकरण विनिर्देश का अनुपालन करती है! इस SSDT की कोई आवश्यकता नहीं! ऑपरेशन समाप्त कर दिया गया है!';

  @override
  String get logMsg088 =>
      '=> कोई पीएलटीएफ डिवाइस नहीं है, वर्तमान इंटेल प्लेटफॉर्म को इस एसएसडीटी की आवश्यकता नहीं है! ऑपरेशन समाप्त कर दिया गया है...';

  @override
  String get logMsg089 =>
      '=> आवश्यकताओं को पूरा करने वाला कोई सीपीयू उपकरण नहीं मिला, किसी एसएसडीटी-सीपीयूआर पैच की आवश्यकता नहीं है! ऑपरेशन समाप्त!';

  @override
  String get logMsg090 =>
      '=> SSDT स्पूफ़िंग IMEI सक्षम नहीं है, डिवाइस-आईडी को डिवाइसप्रॉपर्टीज़ के माध्यम से सेट किया जाना चाहिए!';

  @override
  String get logMsg091 =>
      'कोई मान्य ACPI डिवाइस पथ प्रदान नहीं किया गया! संचालन बंद किया गया!';

  @override
  String logMsg092(String arg0) {
    return '$arg0 के लिए संबंधित _ON या _OFF विधि DSDT या SSDT में नहीं मिली! संचालन बंद किया गया!';
  }

  @override
  String logMsg093(String arg0) {
    return '$arg0 के अनुरूप _PS3 या _DSM विधि DSDT या SSDT में नहीं मिली! संचालन बंद किया गया!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> डिवाइस $arg0 के लिए एक _PRT विधि है, जो वास्तविक डिवाइस को छिपा सकती है और BRG0 ब्रिज डिवाइस को इंजेक्ट करेगी!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> डिवाइस $arg0 मौजूद नहीं है!';
  }

  @override
  String logMsg096(String arg0) {
    return 'वर्तमान डिवाइस पथ $arg0 वास्तविक डिवाइस को छिपा सकता है!';
  }

  @override
  String logMsg097(String arg0) {
    return '=> ग्राफ़िक्स कार्ड डिवाइस के _ADR पते में अतिप्रवाह है $arg0!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> मूल डिवाइस पथ पर वापस जाएँ: $arg0 और एक BRG0 ब्रिज डिवाइस इंजेक्ट करें!';
  }

  @override
  String logMsg099(String arg0) {
    return 'अज्ञात मास्किंग विधि: $arg0, ऑपरेशन निरस्त कर दिया गया।';
  }

  @override
  String logMsg100(String arg0) {
    return 'कुछ विधियाँ नहीं मिलीं: $arg0';
  }

  @override
  String get logMsg101 =>
      '=> वैध बस उपकरण नहीं मिल पाने के कारण परिचालन समाप्त कर दिया गया है!';

  @override
  String get logMsg102 =>
      'कोई वैध ग्राफ़िक्स कार्ड ACPI पथ प्रदान नहीं किया गया! ऑपरेशन समाप्त!';

  @override
  String get logMsg103 =>
      'कोई वैध नकली ग्राफिक्स कार्ड आईडी प्रदान नहीं की गई! ऑपरेशन समाप्त!';

  @override
  String get logMsg104 =>
      'कोई वैध नकली ग्राफ़िक्स कार्ड नाम प्रदान नहीं किया गया! कोई नकली नाम नहीं डाला जाएगा!';

  @override
  String logMsg105(String arg0) {
    return 'वर्तमान ग्राफ़िक्स कार्ड पथ $arg0 वास्तविक डिवाइस को छिपा सकता है!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> डिवाइस $arg0 में एक _PRT विधि है, जो वास्तविक डिवाइस को छिपा सकती है और एक GFX0 डिवाइस को इंजेक्ट करेगी!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> डिवाइस $arg0 डीएसडीटी या एसएसडीटी में नहीं मिला! संचालन बंद किया गया!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> ग्राफ़िक्स कार्ड डिवाइस के _ADR पते में अतिप्रवाह है $arg0!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> मूल डिवाइस पथ पर वापस जाएँ: $arg0 और एक GFX0 डिवाइस इंजेक्ट करें!';
  }

  @override
  String get logMsg110 => 'डिवाइस पथ में एक पता _ADR ओवरफ़्लो है!';

  @override
  String get logMsg111 =>
      'निम्नलिखित उपकरण संपत्ति इंजेक्शन को प्रभावित कर सकते हैं:';

  @override
  String get logMsg112 => 'एलपीसी(बी)/एसबीआरजी का पता लगाया जा रहा है...';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 $arg0 में पाया गया';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 $arg0 में पाया गया';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 $arg0 में पाया गया';
  }

  @override
  String logMsg116(String arg0) {
    return 'डीएसडीटी पथ प्रदान किया गया: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'प्रदत्त डीएसडीटी पथ अमान्य है: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'निर्देशिका $arg0 से मान्य एसीपीआई तालिकाएँ एकत्रित की जा रही हैं...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'कुल $arg0 एसीपीआई तालिकाएँ मिलीं, जिनमें से $arg1 मान्य हैं:';
  }

  @override
  String get logMsg120 => 'DSDT हस्ताक्षर वाली कई फ़ाइलें सत्यापित की गईं:';

  @override
  String logMsg121(String arg0) {
    return 'यह सत्यापित करने के लिए कि पूर्व-निर्मित पैच को लागू करने की आवश्यकता है या नहीं, इसे डिकंपाइल करने के बारे में $arg0...';
  }

  @override
  String get logMsg122 => '=> पूर्व-निर्मित पैच लगाने की कोई आवश्यकता नहीं!\\n';

  @override
  String logMsg123(String arg0) {
    return 'लोड हो रहा है $arg0...';
  }

  @override
  String get logMsg124 => 'प्रोसेसिंग पूरी हो गई!\\n';

  @override
  String get logMsg125 => 'पास की गई फ़ाइल या फ़ोल्डर मौजूद नहीं है!\\n';

  @override
  String get logMsg126 => 'समस्याग्रस्त डीएसडीटी फ़ाइलों को संभालना...';

  @override
  String get logMsg127 => 'उपलब्ध पूर्व-निर्मित पैच की जाँच करें...';

  @override
  String logMsg128(String arg0) {
    return '$arg0 फ़ाइल को मेमोरी में लोड किया जा रहा है...';
  }

  @override
  String get logMsg129 => 'पैच को एक-एक करके संसाधित किया जा रहा है...\\n';

  @override
  String get logMsg130 => '=> स्थिति, लागू करना…';

  @override
  String get logMsg131 =>
      '=> पिछले प्रश्न की डीएसडीटी फ़ाइल सफलतापूर्वक विघटित हो गई थी!';

  @override
  String logMsg132(String arg0) {
    return '=> पैच को संशोधित फ़ाइल पर लागू किया गया है और फ़ाइल परिणाम फ़ोल्डर में सहेजी गई है:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return '$arg0 में मान्य एसीपीआई तालिकाएँ लोड हो रही हैं...';
  }

  @override
  String get logMsg134 => 'सभी वैध एसीपीआई तालिकाओं का विसंकलन पूरा हो गया!';

  @override
  String logMsg135(String arg0) {
    return 'कुल लिया गया समय: $arg0 सेकंड\\n';
  }

  @override
  String logMsg136(String arg0) {
    return '$arg0.एएमएल का सफलतापूर्वक संकलन!';
  }

  @override
  String logMsg137(String arg0) {
    return '$arg0.dsl स्रोत फ़ाइल हटाएँ';
  }

  @override
  String logMsg138(String arg0) {
    return '=> डिवाइस के लिए स्कोप नहीं मिला $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> पता लगाने में असमर्थ $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return '$arg0 ($arg1) डिवाइस का पता लगाया जा रहा है...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> किसी भी $arg0 डिवाइस को लक्षित करने में असमर्थ';
  }

  @override
  String logMsg142(String arg0) {
    return '=> पाया गया $arg0';
  }

  @override
  String get logMsg143 => '=> सत्यापन की तलाश में _STA...';

  @override
  String get logMsg144 =>
      '=> _STA का नाम बदलकर XSTA कर दिया गया है! अन्य जाँचें छोड़ें...';

  @override
  String get logMsg145 =>
      '=> कृपया डीएसडीटी में डिवाइस का नाम _STA से XSTA करने को अक्षम करें और पुनरारंभ करने के बाद पुनः प्रयास करें!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 चर $arg1';
  }

  @override
  String get logMsg147 => '=> _STA विधि/नाम नहीं मिला';

  @override
  String logMsg148(String arg0) {
    return '=> सूचकांक $arg0 पर _STA विधि मिली!';
  }

  @override
  String get logMsg149 => '=> _STA से XSTA नाम बदलना उत्पन्न करना';

  @override
  String get logMsg150 =>
      '=> एकाधिक रिटर्न स्टेटमेंट हैं, या रिटर्न मान रिटर्न नहीं है (0x0F)';

  @override
  String get logMsg151 => 'ACPI डिवाइस जानकारी एकत्रित की जा रही है...';

  @override
  String get logMsg152 => 'ACPI डिवाइस पथ एकत्रित किए जा रहे हैं...';

  @override
  String get logMsg153 => 'अनाथ डिवाइसों की पुनः जाँच की जा रही है...';

  @override
  String logMsg154(String arg0) {
    return 'वर्तमान कस्टम आईआरक्यू: $arg0';
  }

  @override
  String get logMsg155 => '=> उदाहरण: आरटीसी:0 आईपीसी:2 टीएमआर:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> मिला _HID: $arg0';
  }

  @override
  String get logMsg157 => 'PNP0103 (HPET) डिवाइस का पता लगाया जा रहा है...';

  @override
  String logMsg158(String arg0) {
    return '=> $arg0 पर स्थित';
  }

  @override
  String get logMsg159 => 'HPET के लिए _CRS विधि/नाम का पता लगाया जा रहा है...';

  @override
  String logMsg160(String arg0) {
    return '=> $arg0._सीआरएस पर स्थित है';
  }

  @override
  String logMsg161(String arg0) {
    return '=> सूचकांक पर पाया गया: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> प्रकार: $arg0';
  }

  @override
  String get logMsg163 => '=> Memory32Fixed की जाँच हो रही है...';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> प्राप्त करें $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'IRQ पैच बनाया जा रहा है...';

  @override
  String get logMsg166 => 'IRQ की जाँच हो रही है...';

  @override
  String get logMsg167 => 'आईआरक्यू खाली है! छोड़ें...\\n';

  @override
  String get logMsg168 => 'कोई मेल नहीं मिला.';

  @override
  String logMsg169(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg170 => 'नकली एचपीईटी डिवाइस बनाया जा रहा है...';

  @override
  String logMsg171(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> यूआईडी का उपयोग किया गया: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> लागू प्लेटफ़ॉर्म: $arg0';
  }

  @override
  String get logMsg174 =>
      'कोई मान्य iGPU पथ प्रदान नहीं किया गया, स्वचालित रूप से ढूंढने का प्रयास किया जा रहा है...';

  @override
  String get logMsg175 => '0x00020000 पर iGPU डिवाइस खोज रहे हैं...';

  @override
  String logMsg176(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> iGPU डिवाइस $arg0 पर मिला!';
  }

  @override
  String get logMsg178 => 'iGPU डिवाइस पते से नहीं मिला!';

  @override
  String get logMsg179 => 'सामान्य iGPU नाम खोज रहे हैं...';

  @override
  String logMsg180(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=>संभावित iGPU डिवाइस $arg0 पर पाया गया';
  }

  @override
  String logMsg182(String arg0) {
    return 'संभावित iGPU डिवाइस $arg0\\n पर मिला';
  }

  @override
  String logMsg183(String arg0) {
    return 'इसे दिए गए iGPU पथ \\n के अनुसार मैन्युअल रूप से $arg0 पर सेट किया गया है';
  }

  @override
  String logMsg184(String arg0) {
    return 'अमान्य iGPU पथ: $arg0';
  }

  @override
  String get logMsg185 =>
      'मूल पीएनएलएफ डिवाइस के लिए एसीपीआई तालिका की जाँच की जा रही है...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> मूल पीएनएलएफ डिवाइस $arg0 पर पाया गया: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> मूल पीएनएलएफ का नाम बदलकर एक्सएनएलएफ करने की जरूरत है, नाम बदलने का पैच तैयार किया जा रहा है...';

  @override
  String get logMsg188 => '=> मूल पीएनएलएफ डिवाइस नहीं मिला!';

  @override
  String get logMsg189 =>
      '=> पीएनएलएफ से एक्सएनएलएफ नाम बदलें पैच उत्पन्न करने की कोई आवश्यकता नहीं है!';

  @override
  String logMsg190(String arg0) {
    return '$arg0 में नाम (एनबीसीएफ, 0x00) का पता चला, पैच उत्पन्न हो रहा है...';
  }

  @override
  String logMsg191(String arg0) {
    return '$arg0 में नाम (एनबीसीएफ, शून्य) का पता चला, पैच उत्पन्न हो रहा है...';
  }

  @override
  String get logMsg192 => 'PNP0C09(EC) डिवाइस का पता लगाया जा रहा है...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 पीएनपी0सी09 (ईसी) उपकरण $arg0 पर पाए गए';
  }

  @override
  String get logMsg194 => '=> सत्यापन किया जा रहा है...';

  @override
  String logMsg195(String arg0) {
    return '=> पाया गया $arg0';
  }

  @override
  String get logMsg196 =>
      '=> PNP0C09 (EC) डिवाइस का नाम EC रखा गया है, जिसका नाम बदलने का कार्य प्रगति पर है';

  @override
  String get logMsg197 => '=> वैध PNP0C09 (EC) डिवाइस';

  @override
  String get logMsg198 =>
      '=> _STA सही ढंग से सक्षम है, नाम बदलना छोड़ दिया गया है';

  @override
  String get logMsg199 => '=> अमान्य PNP0C09 (EC) डिवाइस';

  @override
  String get logMsg200 =>
      '=> कोई वैध PNP0C09 (EC) उपकरण नहीं मिला, बस एक नकली EC उपकरण है';

  @override
  String logMsg201(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg202(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg203 => 'सीपीयू नामकरण योजना का निर्धारण...';

  @override
  String logMsg204(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> प्रोसेसर मिला: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg207 => '=> कोई प्रोसेसर ऑब्जेक्ट नहीं मिला...';

  @override
  String get logMsg208 => '=> ACPI0007 डिवाइस नहीं मिला...';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 ACPI0007 डिवाइस मिले';
  }

  @override
  String logMsg210(String arg0) {
    return '=> $arg0 पर मूल डिवाइस मिला, प्रसंस्करण...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> जाँच हो रही है $arg0…';
  }

  @override
  String get logMsg212 => '=> नहीं मिला! इस पर से कूद जाओ…';

  @override
  String get logMsg213 => '=> नहीं मिला! इस पर से कूद जाओ…';

  @override
  String logMsg214(String arg0) {
    return 'प्रसंस्करण $arg0 वैध प्रोसेसर डिवाइस...';
  }

  @override
  String get logMsg215 => 'एलपीसी नाम प्राप्त करने में विफल...';

  @override
  String logMsg216(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg217 => '=> नकली आरटीसी की आवश्यकता!';

  @override
  String get logMsg218 => '=> _CRS की जाँच हो रही है...';

  @override
  String get logMsg219 => '=> _CRS एक बफ़र है, RTC रेंज की जाँच कर रहा है...';

  @override
  String get logMsg220 =>
      '=> मान समायोजित करने में असमर्थ, आरटीसी रेंज सत्यापित करने में असमर्थ।';

  @override
  String get logMsg221 =>
      '=> मूल्य एकत्र करने में विफल, आरटीसी रेंज सत्यापित करने में असमर्थ।';

  @override
  String get logMsg222 =>
      '=> _CRS एक विधि है और RTC रेंज को सत्यापित नहीं कर सकता!';

  @override
  String get logMsg223 => '=> _CRS से XCRS नाम परिवर्तित किया जा रहा है...';

  @override
  String logMsg224(String arg0) {
    return '=> सूचकांक पर पाया गया $arg0';
  }

  @override
  String get logMsg225 => '=> नहीं मिला';

  @override
  String logMsg226(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg227(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg228 => 'RHUB/HUBN/URTH डिवाइस एकत्रित किए जा रहे हैं...';

  @override
  String logMsg229(String arg0) {
    return '=> $arg0 उपकरण मिले';
  }

  @override
  String get logMsg230 => '=> नाम बदलने की आवश्यकता है!';

  @override
  String logMsg231(String arg0) {
    return '=> जांचें $arg0: क्या _STA विधि मौजूद है';
  }

  @override
  String logMsg232(String arg0) {
    return '=> सूचकांक $arg0 पर _STA विधि मिली!';
  }

  @override
  String get logMsg233 => '=> _STA से XSTA तक पैच जेनरेट करें';

  @override
  String get logMsg234 => '=> _STA विधि नहीं मिली!';

  @override
  String logMsg235(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg236 => '=> डिवाइस पथ में _ADR एड्रेस ओवरफ़्लो है!';

  @override
  String get logMsg237 =>
      '=> निम्नलिखित उपकरणों को ठीक से काम करने के लिए ब्रिजिंग समायोजन की आवश्यकता हो सकती है:';

  @override
  String get logMsg238 => 'पीसीआई ब्रिज डिवाइस एकत्रित किए जा रहे हैं...';

  @override
  String get logMsg239 =>
      'पीसीआई ब्रिज डिवाइस खाली है! ऑपरेशन समाप्त कर दिया गया है!';

  @override
  String get logMsg240 => 'बिल्डिंग ब्रिज डिवाइस...';

  @override
  String get logMsg241 => 'पीसीआई ब्रिज डिवाइस खाली है! इस पर से कूद जाओ…';

  @override
  String get logMsg242 => 'मिलान डिवाइस पथ…';

  @override
  String get logMsg243 => 'कोई मेल नहीं मिला!';

  @override
  String logMsg244(String arg0) {
    return '=> मेल खाता है $arg0, ब्रिजिंग की आवश्यकता नहीं है';
  }

  @override
  String get logMsg245 => 'कोई मिलान नहीं मिला!\\n';

  @override
  String get logMsg246 => 'किसी ब्रिजिंग की आवश्यकता नहीं!\\n';

  @override
  String get logMsg247 => 'ब्रिज डिवाइस का समाधान किया जा रहा है...';

  @override
  String get logMsg248 => '=> पार्स करने में असमर्थ!';

  @override
  String get logMsg249 => 'ब्रिज डिवाइस को पार्स करते समय त्रुटि!\\n';

  @override
  String logMsg250(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg251 => 'ACPI0008 (ALS) डिवाइस का पता लगाया जा रहा है...';

  @override
  String logMsg252(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> $arg0 टेबल पर एएलएस डिवाइस मिला: $arg1!';
  }

  @override
  String get logMsg254 => '=> नकली बनाने की कोई ज़रूरत नहीं!\\n';

  @override
  String logMsg255(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg256 =>
      '_STA सही ढंग से सक्षम है, किसी पैच की आवश्यकता नहीं है! \\एन';

  @override
  String get logMsg257 => 'नहीं मिला, किसी पैच की आवश्यकता नहीं!\\n';

  @override
  String get logMsg258 =>
      'ACPI0008 (ALS) डिवाइस नहीं मिला, नकली डिवाइस आवश्यक है...';

  @override
  String logMsg259(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg260 => 'XOSI योजना का पता लगाया जा रहा है...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> स्वचालित रूप से पता लगाया गया: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'OSID विधि की जाँच हो रही है...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> ऑफ़सेट पर विधि मिली $arg1 $arg0';
  }

  @override
  String get logMsg264 =>
      '=> नहीं मिला, OSID का नाम बदलकर XSID करने की आवश्यकता नहीं है';

  @override
  String get logMsg265 => '_OSI से XOSI नाम बदला जा रहा है...';

  @override
  String logMsg266(String arg0) {
    return '$arg0 तालिका खोज रहे हैं...';
  }

  @override
  String logMsg267(String arg0) {
    return '$arg0 तालिका मिली, हस्ताक्षर की पुष्टि हो रही है...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 तालिका हस्ताक्षर सत्यापन पारित!';
  }

  @override
  String logMsg269(String arg0) {
    return '$arg0 मान की जाँच की जा रही है...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'प्राप्त $arg0 मान: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'प्राप्त रीसेट रजिस्टर पता मान: $arg0';
  }

  @override
  String get logMsg272 =>
      'एसीपीआई पैच जिन्हें पैच करने की आवश्यकता है वे इस प्रकार हैं:';

  @override
  String get logMsg273 => 'एपीआईसी तालिका को पैच किया जा रहा है...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> संशोधित एपीआईसी प्रोसेसर आईडी: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> एपीआईसी टेबल पैचिंग पूरी हो गई!';

  @override
  String logMsg276(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg277 =>
      'DMAR तालिका आरक्षित स्मृति क्षेत्र की जाँच की जा रही है...';

  @override
  String get logMsg278 =>
      '=> कोई आरक्षित मेमोरी क्षेत्र नहीं मिला, DMAR को पैच करने की कोई आवश्यकता नहीं है!\\n';

  @override
  String logMsg279(String arg0) {
    return '$arg0 आरक्षित स्मृति क्षेत्र मिले, नई तालिका उत्पन्न हो रही है...';
  }

  @override
  String get logMsg280 => '0x00160000 पते पर IMEI डिवाइस ढूंढ रहे हैं...';

  @override
  String get logMsg281 =>
      'IMEI डिवाइस नहीं मिला, डिवाइस की नकली नकल बनाने की जरूरत है...';

  @override
  String get logMsg282 => 'मूल डिवाइस का सत्यापन किया जा रहा है...';

  @override
  String get logMsg283 => '0x00020000 पर iGPU डिवाइस खोज रहे हैं...';

  @override
  String get logMsg284 => '=> iGPU डिवाइस नहीं मिला!';

  @override
  String get logMsg285 =>
      'PCI रूट डिवाइस का पता लगाने का प्रयास किया जा रहा है...';

  @override
  String logMsg286(String arg0) {
    return '=> पीसीआई रूट डिवाइस मिला: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> iGPU डिवाइस मिला: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> मूल डिवाइस का उपयोग करें: $arg0';
  }

  @override
  String get logMsg289 => 'नकली डिवाइस-आईडी योजनाएं एकत्रित की जा रही हैं...';

  @override
  String logMsg290(String arg0) {
    return '=> तीसरी पीढ़ी के आइवी ब्रिज प्रोसेसर से मेल खाने के लिए 7 सीरीज मदरबोर्ड IMEI (डिवाइस-आईडी: $arg0) के रूप में नकली';
  }

  @override
  String logMsg291(String arg0) {
    return '=> दूसरी पीढ़ी के सैंडी ब्रिज प्रोसेसर से मेल खाने के लिए 6 सीरीज मदरबोर्ड IMEI (डिवाइस-आईडी: $arg0) के रूप में नकली';
  }

  @override
  String logMsg292(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String get logMsg293 => 'UNC (PNP0A03) डिवाइस की तलाश है...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 यूएनसी डिवाइस मिले';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> यूएनसी डिवाइस $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> जांचें कि क्या $arg0: _STA विधि मौजूद है';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> पाया गया $arg1: सूचकांक पर _STA विधि $arg0!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> $arg0 उत्पन्न करें: _STA से XSTA पैच';
  }

  @override
  String logMsg299(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg300(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg301 => 'जाँच की जा रही है कि क्या DTGP विधि मौजूद है...';

  @override
  String get logMsg302 => '=> DTGP विधि नहीं मिली!';

  @override
  String get logMsg303 =>
      '=> उपरोक्त किसी भी ACPI तालिका में DTGP विधि नहीं मिली! \\एन';

  @override
  String logMsg304(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg305(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg306 => 'डीएमए (पीएनपी0200) डिवाइस की तलाश है...';

  @override
  String get logMsg307 => '=> डीएमए (पीएनपी0200) डिवाइस नहीं मिला!';

  @override
  String logMsg308(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg309(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg310 => '_PTS पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg311(String arg0) {
    return '=> विधि $arg0 मिल गई!';
  }

  @override
  String get logMsg312 => '=> _PTS विधि नहीं मिली!';

  @override
  String get logMsg313 => '_WAK पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg314(String arg0) {
    return '=> विधि $arg0 मिल गई!';
  }

  @override
  String get logMsg315 => '=> _WAK विधि नहीं मिली!';

  @override
  String logMsg316(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg317(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg318 => '_SST पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg319(String arg0) {
    return '=> $arg0 पर _SST विधि मिली!';
  }

  @override
  String get logMsg320 => '=> _एसएसटी विधि नहीं मिली!';

  @override
  String logMsg321(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg322(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg323 => 'PNP0C0D डिवाइस की उपस्थिति की जाँच की जा रही है...';

  @override
  String logMsg324(String arg0) {
    return '=> PNP0C0D डिवाइस $arg0 पर मिला!';
  }

  @override
  String get logMsg325 => '=> PNP0C0D डिवाइस नहीं मिला!';

  @override
  String logMsg326(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg327(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return '$arg0 के अस्तित्व की जाँच की जा रही है...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> $arg1 को $arg0 पर पाया गया';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> $arg1 को $arg0 पर पाया गया';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 नहीं मिला';
  }

  @override
  String get logMsg332 => 'सभी एसीपीआई तालिकाओं की जाँच की गई!';

  @override
  String get logMsg333 => '=> समर्थन प्रणाली स्थिति: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> वर्तमान फ़र्मवेयर सामान्य सिस्टम स्थितियों का समर्थन करता है! नींद की समस्या को ठीक करने के बाद, macOS S3 नींद का समर्थन कर सकता है!';

  @override
  String get logMsg335 => 'लो पावर S0 आइडल (V5) मान की जाँच की जा रही है...';

  @override
  String logMsg336(String arg0) {
    return 'लो पावर S0 आइडल (V5) प्राप्त करें: $arg0';
  }

  @override
  String get logMsg337 =>
      'यह वर्तमान में AOAC मशीन नहीं है और macOS सिस्टम S3 स्लीप को प्रभावित नहीं करता है!';

  @override
  String get logMsg338 => '_S3 के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg339(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> नाम _S3 $arg0 पर मिला!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> $arg0 पर विधि _S3 मिली!';
  }

  @override
  String get logMsg342 => '=> नाम या विधि _S3 नहीं मिला';

  @override
  String logMsg343(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg344(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg345(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg346 => 'LID (PNP0C0D) डिवाइस की तलाश है...';

  @override
  String logMsg347(String arg0) {
    return '=> PNP0C0D डिवाइस $arg0 पर मिला!';
  }

  @override
  String get logMsg348 => '=> LID (PNP0C0D) डिवाइस नहीं मिला!';

  @override
  String logMsg349(String arg0) {
    return '=> $arg0 पर विधि _LID मिली!';
  }

  @override
  String get logMsg350 => '=> विधि _LID नहीं मिली!';

  @override
  String get logMsg351 => '_TTS पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg352(String arg0) {
    return '=> विधि $arg0 मिल गई!';
  }

  @override
  String get logMsg353 => '=> _TTS विधि नहीं मिली!';

  @override
  String get logMsg354 => 'ZTTS पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String get logMsg355 => '=> ZTTS विधि नहीं मिली!';

  @override
  String logMsg356(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg357(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg358 => 'PWRB (PNP0C0C) डिवाइस की तलाश है...';

  @override
  String get logMsg359 => '=> PWRB (PNP0C0C) डिवाइस नहीं मिला!';

  @override
  String logMsg360(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg361(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg362 => 'SLPB (PNP0C0E) डिवाइस की तलाश है...';

  @override
  String get logMsg363 => '=> SLPB (PNP0C0E) डिवाइस नहीं मिला!';

  @override
  String get logMsg364 =>
      '=> SLPB (PNP0C0E) डिवाइस उपरोक्त ACPI तालिका में नहीं मिला! बिल्कुल नकली! \\एन';

  @override
  String logMsg365(String arg0) {
    return '$arg0.एसडीएल बनाया जा रहा है...';
  }

  @override
  String logMsg366(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg367(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg368(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String get logMsg369 => 'PNP0C01 डिवाइस की तलाश है...';

  @override
  String get logMsg370 => '=> PNP0C01 डिवाइस नहीं मिला!';

  @override
  String get logMsg371 =>
      '=> PNP0C01 डिवाइस उपरोक्त किसी भी ACPI तालिका में नहीं मिला!\\n';

  @override
  String logMsg372(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg373 => 'XHC/XHCI/XDCI/CNVW डिवाइस एकत्रित किए जा रहे हैं...';

  @override
  String logMsg374(String arg0) {
    return '=> जाँच की जा रही है कि क्या $arg0 डिवाइस पीएमईई का समर्थन करता है...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 पीएमईई का समर्थन नहीं करता, छोड़ दिया गया';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 पीएमईई का समर्थन करता है';
  }

  @override
  String logMsg377(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg378 => 'GPRW पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String get logMsg379 => 'XPRW पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg380(String arg0) {
    return '=> GPRW विधि $arg0 पर मिली!';
  }

  @override
  String logMsg381(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg382 =>
      'यूपीआरडब्ल्यू पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String get logMsg383 => 'XPRW पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg384(String arg0) {
    return '=> UPRW विधि $arg0 पर मिली!';
  }

  @override
  String logMsg385(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg386 => 'GPI0 डिवाइस की उपस्थिति की जाँच की जा रही है...';

  @override
  String logMsg387(String arg0) {
    return '=> GPI0 डिवाइस $arg0 पर मिला!';
  }

  @override
  String get logMsg388 => '_STA पद्धति के अस्तित्व की जाँच की जा रही है...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> पाया गया $arg1: सूचकांक पर _STA विधि $arg0!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> $arg0 उत्पन्न करें: _STA से XSTA पैच';
  }

  @override
  String logMsg391(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg392 => 'सीपीयू नामकरण योजना का निर्धारण...';

  @override
  String logMsg393(String arg0) {
    return 'जाँच की जा रही है $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> प्रोसेसर मिला: $arg0';
  }

  @override
  String get logMsg395 => '=> कोई प्रोसेसर ऑब्जेक्ट नहीं मिला...';

  @override
  String get logMsg396 => '=> ACPI0007 डिवाइस नहीं मिला...';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 ACPI0007 डिवाइस मिले';
  }

  @override
  String logMsg398(String arg0) {
    return '=> $arg0 पर मूल डिवाइस मिला, प्रसंस्करण...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> जाँच हो रही है $arg0…';
  }

  @override
  String get logMsg400 => '=> नहीं मिला! इस पर से कूद जाओ…';

  @override
  String get logMsg401 => '=> नहीं मिला! इस पर से कूद जाओ…';

  @override
  String logMsg402(String arg0) {
    return 'प्रसंस्करण $arg0 वैध प्रोसेसर डिवाइस...';
  }

  @override
  String logMsg403(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg404(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg405(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg406(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg407(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg408(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg409(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg410(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg411 => 'नकली डिवाइस-आईडी योजनाएं एकत्रित की जा रही हैं...';

  @override
  String logMsg412(String arg0) {
    return '=> तीसरी पीढ़ी के आइवी ब्रिज प्रोसेसर से मेल खाने के लिए 7 सीरीज मदरबोर्ड IMEI (डिवाइस-आईडी: $arg0) के रूप में नकली';
  }

  @override
  String logMsg413(String arg0) {
    return '=> दूसरी पीढ़ी के सैंडी ब्रिज प्रोसेसर से मेल खाने के लिए 6 सीरीज मदरबोर्ड IMEI (डिवाइस-आईडी: $arg0) के रूप में नकली';
  }

  @override
  String logMsg414(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg415(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg416(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg417(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg418(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg419(String arg0) {
    return '_ON या _OFF विधि के लिए डिवाइस $arg0 की जाँच की जा रही है...';
  }

  @override
  String logMsg420(String arg0) {
    return '_PS3 या _DSM विधियों के लिए डिवाइस $arg0 की जाँच की जा रही है...';
  }

  @override
  String logMsg421(String arg0) {
    return 'डिवाइस की जाँच हो रही है $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> $arg0 के अनुरूप _पीआरटी विधि डीएसडीटी या एसएसडीटी में नहीं मिली!';
  }

  @override
  String logMsg423(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 डिवाइस पथ जिसे अवरुद्ध करने की आवश्यकता है: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> परिरक्षण विधि: $arg0 विधि';
  }

  @override
  String logMsg426(String arg0) {
    return '=> डिवाइस सापेक्ष पथ को निरपेक्ष पथ में बदल दिया गया है: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> $arg1 खोजें।$arg2 $arg0 में विधि';
  }

  @override
  String logMsg428(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String get logMsg429 => 'संभावित बस उपकरण एकत्रित किए जा रहे हैं...';

  @override
  String logMsg430(String arg0) {
    return 'पूर्वसंकलित बनाया जा रहा है $arg0.dsl...';
  }

  @override
  String logMsg431(String arg0) {
    return 'ग्राफ़िक्स डिवाइस की जाँच हो रही है $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> $arg0 के अनुरूप _पीआरटी विधि डीएसडीटी या एसएसडीटी में नहीं मिली!';
  }

  @override
  String logMsg433(String arg0) {
    return '$arg0.dsl बनाया जा रहा है...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> ग्राफ़िक्स कार्ड डिवाइस पथ: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> नकली ग्राफ़िक्स कार्ड आईडी: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> नकली ग्राफ़िक्स कार्ड का नाम: $arg0';
  }

  @override
  String get logMsg437 => '=> नहीं मिला!';

  @override
  String logMsg438(String arg0) {
    return '=> पीसीआई पथ मिलान: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> अद्यतन करें $arg0 \"$arg1\" से $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" पहले से ही $arg2 में मौजूद है, छोड़ें...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" को $arg2 में जोड़ें';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> $arg2 में कुंजी \"$arg0\" का मान \"$arg1\" में अपडेट करें';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> कुंजी \"$arg0\" का मान पहले से ही अद्यतित है, $arg1 को छोड़कर';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> कुंजी \"$arg0\" मान \"$arg1\" को $arg2 में जोड़ें';
  }

  @override
  String logMsg445(String arg0) {
    return 'हार्डवेयर रिपोर्टिंग फ़ोल्डर क्लीनअप विफल: $arg0';
  }

  @override
  String get logMsg446 => 'मूल ACPI तालिका निर्यात विफल रहा';

  @override
  String logMsg447(String arg0) {
    return 'मूल एसीपीआई तालिका निर्यात विफल: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'मूल एसीपीआई तालिका निर्यात विफल: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'एसीपीआई तालिका अस्थायी निर्देशिका क्लीनअप विफल: $arg0';
  }

  @override
  String get logMsg450 => 'मूल हार्डवेयर रिपोर्ट निर्यात किया जा रहा है...';

  @override
  String get logMsg451 => 'मूल ACPI तालिकाओं का निर्यात किया जा रहा है...';

  @override
  String logMsg452(String arg0) {
    return 'मूल एसीपीआई तालिका निर्यात पूरा हुआ: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'स्रोत फ़ाइल मौजूद नहीं है: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'फ़ाइल सहेजने में त्रुटि: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'वर्तमान ओसी संस्करण: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'ज़िप फ़ाइल मौजूद नहीं है: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 फ़ाइल सफलतापूर्वक विघटित हो गई';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'फ़ाइल को डीकंप्रेस करते समय त्रुटि $arg0: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'फ़ाइल या निर्देशिका मौजूद नहीं है: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'संपीड़न पूरा हुआ: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'संपीड़न त्रुटि: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'निर्देशिका हटाएँ: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'फ़ाइल हटाएँ: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'हटाना विफल: $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'फ़ाइल सफलतापूर्वक यहां सहेजी गई: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'स्रोत निर्देशिका मौजूद नहीं है: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'फ़ोल्डर तैयार: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'फ़ोल्डर बनाने में त्रुटि: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'निर्देशिका खोलने में विफल, पथ मौजूद नहीं है: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'निर्देशिका खोलने में विफल: $arg0, $arg1';
  }

  @override
  String get autoGen5000 => 'अनुकूल';

  @override
  String get autoGen5001 => 'सीमित अनुकूलता';

  @override
  String get autoGen5002 => 'संगत नहीं';

  @override
  String get autoGen5003 => 'सक्रिय';

  @override
  String get autoGen5004 => 'चालू करो';

  @override
  String get autoGen5005 => 'अज्ञात';

  @override
  String get autoGen5006 => 'वायर्ड नेटवर्क कार्ड';

  @override
  String get autoGen5007 =>
      'सीमित अनुकूलता\nMacOS Tahoe 26 तक सपोर्ट करता है\nAVX2 गुम है';

  @override
  String get autoGen5008 =>
      'संगत नहीं\nMacOS El Capitan 10.11 तक सपोर्ट करता है\nSSE4 गुम है';

  @override
  String get autoGen5009 => 'डिवाइस आईडी गुम है';

  @override
  String get autoGen5010 => 'नोटेडरेड समर्थन';

  @override
  String get autoGen5011 => 'अनुकूलता लोड हो रही है';

  @override
  String get autoGen5012 =>
      'लो-एंड इंटेल सीपीयू कोर ग्राफिक्स समर्थित नहीं हैं';

  @override
  String get autoGen5013 => 'वीजीए आउटपुट समर्थित नहीं है';

  @override
  String get autoGen5014 => 'नकली समर्थन';

  @override
  String get autoGen5015 => 'मूल समर्थन';

  @override
  String get autoGen5016 => 'AVX2 निर्देश सेट गुम है';

  @override
  String get autoGen5017 => 'मुख्य';

  @override
  String get autoGen5018 => 'स्वतंत्र';

  @override
  String get autoGen5019 => 'परमाणु प्रदर्शन';

  @override
  String get autoGen5020 => 'Asus';

  @override
  String get autoGen5021 => 'गीगाबाइट';

  @override
  String get autoGen5022 => 'एएसआरॉक';

  @override
  String get autoGen5023 => 'एमएसआई';

  @override
  String get autoGen5024 => 'गड्ढा';

  @override
  String get autoGen5025 => 'Lenovo';

  @override
  String get autoGen5026 => 'सोनी';

  @override
  String get autoGen5027 => 'हिमाचल प्रदेश';

  @override
  String get autoGen5028 => 'गूगल';

  @override
  String get autoGen5029 => 'माइक्रोसॉफ्ट';

  @override
  String get autoGen5030 =>
      'सीपीयू जानकारी के आधार पर प्लेटफ़ॉर्म प्रकार की पहचान करने में असमर्थ';

  @override
  String get autoGen5031 => 'नोटबुक';

  @override
  String get autoGen5032 => 'मिनी होस्ट';

  @override
  String get autoGen5033 => 'कार्य केंद्र';

  @override
  String get autoGen5034 =>
      'सीपीयू, मदरबोर्ड और कोर डिस्प्ले के आधार पर प्लेटफ़ॉर्म कोड निर्धारित नहीं किया जा सकता है।';

  @override
  String get autoGen5035 => 'डिवाइस अवरोधन छोड़ें:';

  @override
  String get autoGen5036 => 'वैध ACPI पथ गुम है';

  @override
  String get autoGen5037 =>
      'Error 500 (Server Error)!!1500.That’s an error.There was an error. Please try again later.That’s all we know.';

  @override
  String get autoGen5038 => 'ACPI तालिका निष्कर्षण विफल रहा';

  @override
  String get autoGen5039 => 'ACPI तालिका लोड विफल रहा';

  @override
  String get autoGen5040 => 'कस्टम SSDT परिणाम अधूरे हैं';

  @override
  String get autoGen5041 => 'कस्टम SSDT में अपवाद उत्पन्न हुआ';

  @override
  String get autoGen5042 => 'कस्टम SSDT अस्थायी निर्देशिका क्लीनअप विफल:';

  @override
  String get autoGen5043 =>
      'ग्राफिक्स कार्ड डिवाइस आईडी एसएसडीटी को धोखा दे रही है';

  @override
  String get autoGen5044 => 'उत्पन्न करने में विफल:';

  @override
  String get autoGen5045 => 'एसीपीआई डिवाइस शील्ड एसएसडीटी';

  @override
  String get autoGen5046 => 'कस्टम SSDT मर्ज छोड़ दिया गया,';

  @override
  String get autoGen5047 =>
      'फ़ॉलबैक के रूप में वर्तमान ईएफआई में मूल एसएसडीटी का उपयोग जारी रखें।';

  @override
  String get autoGen5048 => 'ग्राफ़िक्स कार्ड डिवाइस आईडी स्पूफिंग छोड़ दी गई:';

  @override
  String get autoGen5049 => 'हार्डवेयर सूचना कैश एक JSON ऑब्जेक्ट नहीं है';

  @override
  String get autoGen5050 => 'हार्डवेयर जानकारी कैश से लोड की गई है';

  @override
  String get autoGen5051 => 'हार्डवेयर जानकारी स्थानीय कैश से लोड की गई है';

  @override
  String get autoGen5052 => 'हार्डवेयर जानकारी आयात फ़ाइल से लोड की गई है';

  @override
  String get autoGen5053 => 'हार्डवेयर जानकारी प्रारंभ करें';

  @override
  String get autoGen5054 =>
      'वर्तमान सिस्टम समर्थित नहीं है, केवल विंडोज़ समर्थित है';

  @override
  String get autoGen5055 => 'हार्डवेयर जानकारी क्वेरी करना';

  @override
  String get autoGen5056 => 'हार्डवेयर जानकारी क्वेरी पूरी हुई';

  @override
  String get autoGen5057 => 'sysInfo.exe ने हार्डवेयर जानकारी नहीं लौटाई';

  @override
  String get autoGen5058 =>
      'sysInfo.exe द्वारा लौटाई गई सामग्री JSON ऑब्जेक्ट नहीं है';

  @override
  String get autoGen5059 => 'sysInfo.exe क्वेरी पूरी हुई';

  @override
  String get autoGen5060 => 'कोर ग्राफ़िक्स कार्ड';

  @override
  String get autoGen5061 => 'असतत ग्राफ़िक्स कार्ड';

  @override
  String get autoGen5062 => 'पहले से ही चालू है';

  @override
  String get autoGen5063 => 'अज्ञात ग्राफ़िक्स कार्ड';

  @override
  String get autoGen5064 => 'एकीकृत';

  @override
  String get autoGen5065 => 'ब्रॉडकॉम';

  @override
  String get autoGen5066 => 'क्वालकॉम';

  @override
  String get autoGen5067 => 'इंटेल';

  @override
  String get autoGen5068 => 'सेब';

  @override
  String get autoGen5069 => 'शून्य क्षण';

  @override
  String get autoGen5070 => 'Matsushita';

  @override
  String get autoGen5071 => 'मेरे ख़याल से';

  @override
  String get autoGen5072 => 'बायोस्टार';

  @override
  String get autoGen5073 => 'रंगीन';

  @override
  String get autoGen5074 => 'ज़ोटैक';

  @override
  String get autoGen5075 => 'गेंगशेंग';

  @override
  String get autoGen5076 => 'यिंगज़ोंग';

  @override
  String get autoGen5077 => 'सुपर माइक्रो';

  @override
  String get autoGen5078 => 'तब';

  @override
  String get autoGen5079 => 'स्पार्टाकस';

  @override
  String get autoGen5080 => 'पैंझेंग';

  @override
  String get autoGen5081 => 'दक्षिण चीन';

  @override
  String get autoGen5082 => 'जिंग्यू';

  @override
  String get autoGen5083 => 'मन';

  @override
  String get autoGen5084 => 'गुओशुओ';

  @override
  String get autoGen5085 => 'जेटवे';

  @override
  String get autoGen5086 => 'डायमंड';

  @override
  String get autoGen5087 => 'टॉप स्टार';

  @override
  String get autoGen5088 => 'मिंगज़ुआन';

  @override
  String get autoGen5089 => 'मीजी';

  @override
  String get autoGen5090 => 'अभिजात वर्ग';

  @override
  String get autoGen5091 => 'Foxconn';

  @override
  String get autoGen5092 => 'एक सा';

  @override
  String get autoGen5093 => 'शुआंगमिन';

  @override
  String get autoGen5094 => 'यून्जी';

  @override
  String get autoGen5095 => 'GALAXY';

  @override
  String get autoGen5096 => 'पवित्र ध्वज';

  @override
  String get autoGen5097 => 'शार्क';

  @override
  String get autoGen5098 => 'इसकी जांच - पड़ताल करें';

  @override
  String get autoGen5099 => 'एडवांटेक';

  @override
  String get autoGen5100 => 'एडीलिंक';

  @override
  String get autoGen5101 => 'महान मैकेनिक';

  @override
  String get autoGen5102 => 'देश-भक्त';

  @override
  String get autoGen5103 => 'एएसएल';

  @override
  String get autoGen5104 => 'एरींग';

  @override
  String get autoGen5105 => 'नीलम';

  @override
  String get autoGen5106 => 'कॉन्टेक';

  @override
  String get autoGen5107 => 'क़िंगयुन';

  @override
  String get autoGen5108 => 'हुआवेई';

  @override
  String get autoGen5109 => 'बाजरा';

  @override
  String get autoGen5110 => 'लाल चावल';

  @override
  String get autoGen5111 => 'वैभव';

  @override
  String get autoGen5112 => 'SAMSUNG';

  @override
  String get autoGen5113 => 'यांत्रिक क्रांति';

  @override
  String get autoGen5114 => 'मैकेनिक';

  @override
  String get autoGen5115 => 'थोर';

  @override
  String get autoGen5116 => 'Razer';

  @override
  String get autoGen5117 => 'एसर';

  @override
  String get autoGen5118 => 'तोशिबा';

  @override
  String get autoGen5119 => 'Fujitsu';

  @override
  String get autoGen5120 => 'नीला आकाश';

  @override
  String get autoGen5121 => 'विदेशी';

  @override
  String get autoGen5122 => 'शेनझोउ';

  @override
  String get autoGen5123 => 'Haier';

  @override
  String get autoGen5124 => 'झोंगबाई';

  @override
  String get autoGen5125 => 'जुआनलोंग';

  @override
  String get autoGen5126 => 'भविष्य के मनुष्य';

  @override
  String get autoGen5127 => 'घनक्षेत्र';

  @override
  String get autoGen5128 => 'ज़ुआनपाई ज़ुआनजी स्टार';

  @override
  String get autoGen5129 =>
      'अपडेट की जांच की जा रही है, कृपया प्रतीक्षा करें...';

  @override
  String get autoGen5130 =>
      'अभी अपडेट के लिए जाँच की गई है, कृपया बाद में पुनः प्रयास करें';

  @override
  String get autoGen5131 =>
      'अपडेट की जांच करने में विफल, कृपया बाद में पुनः प्रयास करें';

  @override
  String get autoGen5132 =>
      'रिलीज़ संस्करण सूची प्राप्त करने में विफल, कृपया बाद में पुनः प्रयास करें';

  @override
  String get autoGen5133 => 'रिलीज़ संस्करण सूची खाली है';

  @override
  String get autoGen5134 => 'डेस्कटॉप';

  @override
  String get autoGen5135 => 'सर्वर';

  @override
  String get autoGen5136 =>
      'सिस्टम सुरक्षा बढ़ाने के लिए SIP चालू करें। जब आपको आमतौर पर ग्राफिक्स कार्ड, वाईफाई और अन्य ड्राइवरों को चलाने के लिए ओसीएलपी का उपयोग करने की आवश्यकता नहीं होती है, तो इस बॉक्स को चेक करने की अनुशंसा की जाती है।';

  @override
  String get autoGen5137 => 'एसआईपी समाधान एक को अक्षम करें';

  @override
  String get autoGen5138 =>
      'जब तक एसआईपी पूरी तरह से अक्षम न हो, आमतौर पर बॉक्स को चेक करने की सिफारिश की जाती है जब बिगसुर और उससे ऊपर के सिस्टम को ग्राफिक्स कार्ड, वाईफाई आदि को चलाने के लिए ओसीएलपी का उपयोग करने की आवश्यकता होती है।';

  @override
  String get autoGen5139 => 'एसआईपी समाधान दो अक्षम करें';

  @override
  String get autoGen5140 =>
      'एसआईपी को पूरी तरह से अक्षम करें। आमतौर पर जब बिगसुर और उससे ऊपर के सिस्टम को ग्राफिक्स कार्ड, वाईफाई आदि चलाने के लिए ओसीएलपी का उपयोग करने की आवश्यकता होती है, तो इस विकल्प को प्राथमिकता दी जाती है।';

  @override
  String get autoGen5141 =>
      'अनुकूली डिस्प्ले, डिस्प्ले रिज़ॉल्यूशन के अनुसार ओपनकोर बूट इंटरफ़ेस के डिस्प्ले अनुपात को स्वचालित रूप से समायोजित करता है';

  @override
  String get autoGen5142 =>
      'मानक रिज़ॉल्यूशन मॉनिटर, 720p, 1080p, 1440p और अन्य मानक रिज़ॉल्यूशन मॉनिटर के लिए उपयुक्त';

  @override
  String get autoGen5143 =>
      'उच्च-रिज़ॉल्यूशन डिस्प्ले, 4K और 5K जैसे उच्च-रिज़ॉल्यूशन डिस्प्ले के लिए उपयुक्त (उच्च-रिज़ॉल्यूशन स्क्रीन के लिए ओपनकोर बूट पेज पर बहुत छोटे यूआई तत्वों की समस्या को प्रभावी ढंग से सुधार सकता है)';

  @override
  String get autoGen5144 => 'प्रोसेसर प्रकार को संशोधित न करें';

  @override
  String get autoGen5145 => 'सिस्टम डिफॉल्ट सीपीयू टाइप डिस्प्ले रखें';

  @override
  String get autoGen5146 =>
      'इंटेल और एएमडी प्लेटफ़ॉर्म सीपीयू नाम संशोधन विकल्प 1 (आमतौर पर 6 कोर और उससे कम वाले सीपीयू पर लागू होता है)';

  @override
  String get autoGen5147 =>
      'इंटेल और एएमडी प्लेटफ़ॉर्म सीपीयू नाम संशोधन विकल्प 2 (आमतौर पर 8-कोर और उससे ऊपर के सीपीयू पर लागू)';

  @override
  String get autoGen5148 =>
      'इंटेल और एएमडी प्लेटफ़ॉर्म सीपीयू नाम संशोधन विकल्प (आमतौर पर 8 कोर और उससे अधिक के साथ i7 और i9 श्रृंखला सीपीयू पर लागू)';

  @override
  String get autoGen5149 => 'Asus';

  @override
  String get autoGen5150 => 'गीगाबाइट';

  @override
  String get autoGen5151 => 'एएसआरॉक';

  @override
  String get autoGen5152 => 'एमएसआई';

  @override
  String get autoGen5153 => 'गड्ढा';

  @override
  String get autoGen5154 => 'Lenovo';

  @override
  String get autoGen5155 => 'सोनी वायो)';

  @override
  String get autoGen5156 => 'हिमाचल प्रदेश';

  @override
  String get autoGen5157 => 'गूगल(क्रोमबुक)';

  @override
  String get autoGen5158 => 'माइक्रोसॉफ्ट सरफेस';

  @override
  String get autoGen5159 => 'नियमित मदरबोर्ड';

  @override
  String get autoGen5160 =>
      'B850, B650, B550 और A520 मदरबोर्ड, 550 श्रृंखला चिपसेट नोटबुक';

  @override
  String get autoGen5161 => 'TRx40 मदरबोर्ड';

  @override
  String get autoGen5162 => 'X570 मदरबोर्ड';

  @override
  String get autoGen5163 =>
      '2020 के अंत में X470 या B450 मदरबोर्ड या अद्यतन BIOS';

  @override
  String get autoGen5164 => '6 सीरीज चिपसेट';

  @override
  String get autoGen5165 =>
      'इंटेल तीसरी पीढ़ी के सीपीयू और 6 सीरीज चिपसेट को मिलाते समय जांचें (उदाहरण के लिए: H61, HM65)';

  @override
  String get autoGen5166 => '7 सीरीज चिपसेट';

  @override
  String get autoGen5167 =>
      'Intel 2nd जनरेशन CPU और 7 सीरीज चिपसेट को मिलाते समय जांचें (उदाहरण के लिए: B75, HM76)';

  @override
  String get autoGen5168 => 'H110,B150,B250,Q270, आदि।';

  @override
  String get autoGen5169 =>
      'कुछ OEM मदरबोर्ड में USB स्वामित्व रिलीज़ समस्याएँ हैं: EHCI हैंड-ऑफ़ विफल';

  @override
  String get autoGen5170 => '2020 में Z490 और अन्य BIOS अपडेट';

  @override
  String get autoGen5171 =>
      '6 सीरीज चिपसेट (इंटेल तीसरी पीढ़ी के सीपीयू और 6 सीरीज चिपसेट को मिलाते समय जांचें (उदाहरण के लिए: H61, HM65))';

  @override
  String get autoGen5172 =>
      '7 श्रृंखला चिपसेट (इंटेल दूसरी पीढ़ी के सीपीयू और 7 श्रृंखला चिपसेट को मिलाते समय जांचें (उदाहरण के लिए: B75, HM76))';

  @override
  String get autoGen5173 =>
      'H110, B150, B250, Q270, आदि (कुछ OEM मदरबोर्ड में USB स्वामित्व रिलीज़ समस्याएँ हैं: EHCI हैंड-ऑफ़ विफलता)';

  @override
  String get autoGen5174 => 'mbconfs से';

  @override
  String get autoGen5175 => 'डीवीआई डबल चेन';

  @override
  String get autoGen5176 => 'डीवीआई एकल श्रृंखला';

  @override
  String get autoGen5177 =>
      'OS X स्नो लेपर्ड 10.6 ~ macOS हाई सिएरा 10.13 को सपोर्ट करता है';

  @override
  String get autoGen5178 => 'OS';

  @override
  String get autoGen5179 => 'OS';

  @override
  String get autoGen5180 => 'OS';

  @override
  String get autoGen5181 => 'OS';

  @override
  String get autoGen5182 => 'OS';

  @override
  String get autoGen5183 => 'OS';

  @override
  String get autoGen5184 =>
      'MacOS El Capitan 10.11 ~ macOS मोंटेरे 12 का समर्थन करता है, जो कोर ग्राफिक्स (या स्वतंत्र ग्राफिक्स) वाले मॉडल के लिए उपयुक्त है।';

  @override
  String get autoGen5185 =>
      'MacOS El Capitan 10.11 ~ macOS मोंटेरे 12 का समर्थन करता है, जो ब्रॉडवेल आर्किटेक्चर कोर डिस्प्ले (या स्वतंत्र डिस्प्ले के साथ) के लिए उपयुक्त है।';

  @override
  String get autoGen5186 =>
      'MacOS Sierra 10.12 ~ macOS Ventura 13 को सपोर्ट करता है। कोर डिस्प्ले + स्वतंत्र डिस्प्ले मॉडल के लिए उपयुक्त। यह ध्यान दिया जाना चाहिए कि इस मॉडल का उपयोग करते समय, केवल अधिकांश कोर डिस्प्ले उपयोगकर्ताओं को असामान्य स्क्रीन रंग का अनुभव होगा। यह मॉडल केवल कोर डिस्प्ले उपयोगकर्ताओं के लिए अनुशंसित नहीं है।';

  @override
  String get autoGen5187 =>
      'मैकओएस सिएरा 10.12 ~ मैकओएस वेंचुरा 13 का समर्थन करता है, कोर डिस्प्ले डिकोडिंग + स्वतंत्र डिस्प्ले आउटपुट मॉडल के लिए उपयुक्त है';

  @override
  String get autoGen5188 =>
      'MacOS 10.14 ~ macOS Sequoia 15 का समर्थन करता है, जो कोर ग्राफिक्स (या स्वतंत्र ग्राफिक्स) वाले मॉडल के लिए उपयुक्त है।';

  @override
  String get autoGen5189 =>
      'MacOS 10.15 ~ macOS Tahoe 26 को सपोर्ट करता है, i7-10700K और प्रोसेसर कोर डिस्प्ले से नीचे (या स्वतंत्र डिस्प्ले के साथ) मॉडल के लिए उपयुक्त';

  @override
  String get autoGen5190 =>
      'MacOS 10.15 ~ macOS Tahoe 26 का समर्थन करता है, i9-10850K उच्च प्रोसेसर कोर डिस्प्ले (या स्वतंत्र डिस्प्ले के साथ) मॉडल के लिए उपयुक्त';

  @override
  String get autoGen5191 => 'समर्थन macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 => 'समर्थन macOS 10.6 ~ macOS हाई सिएरा 10.13';

  @override
  String get autoGen5193 => 'समर्थन macOS 10.7 ~ macOS हाई सिएरा 10.13';

  @override
  String get autoGen5194 => 'समर्थन macOS 10.8 ~ macOS कैटालिना 10.15';

  @override
  String get autoGen5195 => 'समर्थन macOS 10.9 ~ macOS बिग सुर 11';

  @override
  String get autoGen5196 => 'समर्थन macOS हाई सिएरा 10.13 ~ macOS मोंटेरे 12';

  @override
  String get autoGen5197 => 'समर्थन macOS Mojave 10.14 ~ macOS मोंटेरे 12';

  @override
  String get autoGen5198 =>
      'OS X El Capitan 10.11 ~ macOS Big Sur 11 को सपोर्ट करें';

  @override
  String get autoGen5199 => 'समर्थन OS X El Capitan 10.11 ~ macOS मोंटेरे 12';

  @override
  String get autoGen5200 => 'समर्थन macOS Sierra 10.12 ~ macOS मोंटेरे 12';

  @override
  String get autoGen5201 =>
      'MacOS Sierra 10.12 ~ macOS मोंटेरे 12 को सपोर्ट करता है (कोर डिस्प्ले HD 515 आधिकारिक तौर पर केवल macOS मोंटेरे 12 को सपोर्ट करता है, नकली नवीनतम macOS Sequoia 15 को सपोर्ट करता है)';

  @override
  String get autoGen5202 =>
      'MacOS Sierra 10.12 ~ macOS मोंटेरे 12 को सपोर्ट करता है (कोर डिस्प्ले Iris 540 आधिकारिक तौर पर केवल macOS मोंटेरे 12 को सपोर्ट करता है, और नकली संस्करण नवीनतम macOS Sequoia 15 को सपोर्ट करता है)';

  @override
  String get autoGen5203 =>
      'MacOS Sierra 10.12 ~ macOS मोंटेरे 12 को सपोर्ट करता है (कोर डिस्प्ले Iris 550 आधिकारिक तौर पर केवल macOS मोंटेरे 12 को सपोर्ट करता है, और नकली संस्करण नवीनतम macOS Sequoia 15 को सपोर्ट करता है)';

  @override
  String get autoGen5204 =>
      'MacOS Sierra 10.12 ~ macOS मोंटेरे 12 को सपोर्ट करता है (कोर डिस्प्ले HD530 आधिकारिक तौर पर केवल macOS मोंटेरे 12 को सपोर्ट करता है, नकली नवीनतम macOS Sequoia 15 को सपोर्ट करता है)';

  @override
  String get autoGen5205 => 'समर्थन macOS हाई सिएरा 10.13 ~ macOS वेंचुरा 13';

  @override
  String get autoGen5206 => 'समर्थन macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 => 'समर्थन macOS कैटालिना 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 => 'समर्थन macOS कैटालिना 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'MacOS 10.9 ~ macOS मोंटेरे 12 का समर्थन करता है, जो केवल स्टैंडअलोन ग्राफिक्स मॉडल के लिए उपयुक्त है';

  @override
  String get autoGen5210 =>
      'MacOS 10.13 ~ macOS Sequoia 15 को सपोर्ट करता है। केवल स्टैंडअलोन ग्राफिक्स मॉडल पर लागू। इंटेल 11वीं पीढ़ी और उससे ऊपर के लिए, इस मॉडल का आमतौर पर उपयोग किया जाता है। सीपीयू फ़्रीक्वेंसी रूपांतरण और टर्बो फ़्रीक्वेंसी सामान्य है, और किसी अतिरिक्त केक्स्ट पैच की आवश्यकता नहीं है (यदि macOS सिस्टम टर्बो फ़्रीक्वेंसी सामान्य नहीं है, तो कृपया मूल SSDT-PLUG निकालें और उपयोग करें)';

  @override
  String get autoGen5211 =>
      'macOS 10.15 ~ macOS Tahoe 26 को सपोर्ट करता है, जो A-कार्ड स्वतंत्र ग्राफ़िक्स मॉडल के लिए उपयुक्त है। समर्थित ड्राइवर-मुक्त ए-कार्ड (जैसे RX560, RX570, RX5500, RX6600) पूरी तरह से VDA हार्ड डिकोडिंग का समर्थन करेंगे। इंटेल 11वीं पीढ़ी और उससे ऊपर के लिए, इस मॉडल का आमतौर पर उपयोग किया जाता है, सीपीयू टर्बो आवृत्ति सामान्य नहीं है, और एक अतिरिक्त केक्स्ट पैच की आवश्यकता होती है। आप इस विकल्प को जांचने के लिए [वैकल्पिक केक्स ड्राइवर] -> [सीपीयू संबंधित] -> [सीपीयू वैरिएबल फ़्रीक्वेंसी ड्राइवर, मुख्य रूप से 11वीं पीढ़ी और उससे ऊपर के प्लेटफ़ॉर्म MacPro7,1 फ़्रीक्वेंसी रूपांतरण समर्थन प्रदान करता है] पर जा सकते हैं।';

  @override
  String get autoGen5212 => 'macOS संगतता रेंज कॉन्फ़िगर नहीं की गई है';

  @override
  String get autoGen5213 => 'डिवाइस-आईडी 4 अक्षर की होनी चाहिए';

  @override
  String get autoGen5214 =>
      'कोर डिस्प्ले फ़्रेम बफ़र (फ़्रेमबफ़र) पैच मास्टर स्विच सक्षम करें';

  @override
  String get autoGen5215 =>
      'वीडियो मेमोरी को 1536एम तक संशोधित करें (1.5जी वीडियो मेमोरी, ऐप्पल का आधिकारिक डिफ़ॉल्ट मान, तीसरी से 10वीं पीढ़ी के इंटेल कोर डिस्प्ले प्लेटफॉर्म के लिए उपयुक्त)';

  @override
  String get autoGen5216 =>
      'वीडियो मेमोरी को 2048M तक संशोधित करें (2G वीडियो मेमोरी, टूल डिफ़ॉल्ट मान, तीसरी से 10वीं पीढ़ी के इंटेल कोर डिस्प्ले प्लेटफॉर्म के लिए उपयुक्त)';

  @override
  String get autoGen5217 =>
      'वीडियो मेमोरी को 3072M तक संशोधित करें (3जी वीडियो मेमोरी, तीसरी से 10वीं पीढ़ी के इंटेल कोर डिस्प्ले प्लेटफॉर्म के लिए उपयुक्त)';

  @override
  String get autoGen5218 =>
      'वीडियो मेमोरी को 4095M तक संशोधित करें (4G वीडियो मेमोरी, तीसरी से 10वीं पीढ़ी के इंटेल कोर डिस्प्ले प्लेटफॉर्म के लिए उपयुक्त)';

  @override
  String get autoGen5219 =>
      'चौथी पीढ़ी के हैसवेल प्लेटफ़ॉर्म पर 1080पी उच्च-रिज़ॉल्यूशन स्क्रीन धुंधली समस्या को ठीक करें (उदाहरण के लिए, उच्च-रिज़ॉल्यूशन स्क्रीन धुंधली हो सकती है क्योंकि मान पर्याप्त बड़ा नहीं है। यह पैच हैसवेल कोर डिस्प्ले के लिए एक समर्पित पैच है। 1080पी और उससे नीचे की स्क्रीन के लिए इस कॉन्फ़िगरेशन का उपयोग करने की अनुशंसा की जाती है)';

  @override
  String get autoGen5220 =>
      'चौथी पीढ़ी के हैसवेल प्लेटफॉर्म पर 2K और 4K जैसी उच्च-रिज़ॉल्यूशन स्क्रीन की समस्या को ठीक करें (उदाहरण के लिए, उच्च-रिज़ॉल्यूशन स्क्रीन धुंधली हो सकती है क्योंकि मान पर्याप्त बड़ा नहीं है। यह पैच हैसवेल कोर डिस्प्ले के लिए एक समर्पित पैच है। 2K और 4k स्क्रीन के लिए इस कॉन्फ़िगरेशन का उपयोग करने की अनुशंसा की जाती है)';

  @override
  String get autoGen5221 => 'आइवी ब्रिज उच्च-रिज़ॉल्यूशन स्क्रीन उम्मीदवार पैच';

  @override
  String get autoGen5222 => 'con0 इंटरफ़ेस पैच सक्षम करें';

  @override
  String get autoGen5223 => 'con1 इंटरफ़ेस पैच सक्षम करें';

  @override
  String get autoGen5224 => 'con2 इंटरफ़ेस पैचिंग सक्षम करें';

  @override
  String get autoGen5225 => 'Con3 इंटरफ़ेस पैच सक्षम करें';

  @override
  String get autoGen5226 =>
      'आइवी ब्रिज उच्च-रिज़ॉल्यूशन स्क्रीन उम्मीदवार इंटरफ़ेस पैच';

  @override
  String get autoGen5227 =>
      'सैंडी ब्रिज नोटबुक उच्च-रिज़ॉल्यूशन स्क्रीन (1600x900 और ऊपर रिज़ॉल्यूशन) पैच';

  @override
  String get autoGen5228 => 'आयरनलेक/अरेंडेल नोटबुक के लिए वैकल्पिक पैच';

  @override
  String get autoGen5229 =>
      'एचडीएमआई उच्च-रिज़ॉल्यूशन स्क्रीन 60 एफपीएस समाधान को ठीक करें (कुछ मामलों में, इंटेल कोर डिस्प्ले डिफ़ॉल्ट रूप से एचडीएमआई 1.4 मानक का उपयोग कर सकता है। एचडीएमआई 2.0 को उच्च रिज़ॉल्यूशन और ताज़ा दर का समर्थन करने के लिए मजबूर करने के लिए इस पैरामीटर को सक्षम करें, जैसे कि 4K@60HZ का समर्थन)';

  @override
  String get autoGen5230 =>
      'एचडीएमआई ऑडियो आउटपुट की मरम्मत करें (आमतौर पर केवल उपयुक्त एल्सिड की आवश्यकता होती है, यह पैरामीटर कभी-कभी सही एचडीएमआई ऑडियो आउटपुट की समस्या को ठीक कर सकता है)';

  @override
  String get autoGen5231 =>
      'डिजिटल ध्वनि के लिए डीपी से एचडीएमआई रूपांतरण पैच को अक्षम करें (जब डिस्प्लेपोर्ट इंटरफ़ेस एक कनवर्टर के माध्यम से एचडीएमआई इंटरफ़ेस से जुड़ा होता है तो एचडीएमआई कनेक्शन की स्थिरता और विश्वसनीयता सुनिश्चित करता है)';

  @override
  String get autoGen5232 =>
      'सभी मॉनिटरों पर ऑनलाइन स्थिति लागू करें, जो कोर डिस्प्ले मल्टी-स्क्रीन आउटपुट के लिए सहायक है। कुछ मामलों में, यह नींद से जागने के बाद काली स्क्रीन जैसी समस्याओं से बच सकता है या स्टार्ट होने पर स्क्रीन को रोशन करने के लिए मॉनिटर केबल को प्लग और अनप्लग करने की आवश्यकता होती है (आमतौर पर 8वीं पीढ़ी के कॉफी लेक और उससे ऊपर के कोर डिस्प्ले पर लागू होता है)';

  @override
  String get autoGen5233 =>
      'कोर डिस्प्ले प्रदर्शन में सुधार करें (उदाहरण के लिए: कोर डिस्प्ले 4K hevc एन्कोडिंग, रिज़ॉल्यूशन और एफपीएस के आदर्श मूल्यों तक नहीं पहुंचने की समस्या को ठीक करें)';

  @override
  String get autoGen5234 =>
      'कोर डिस्प्ले की पूर्ण फर्मवेयर लोडिंग सक्षम करें, कोर डिस्प्ले के उपयोग में सुधार करें और कोर डिस्प्ले के प्रदर्शन में सुधार करें। इस पैरामीटर को जोड़ने से सिस्टम प्रवेश करने में असमर्थ हो सकता है, इसलिए सावधानी से उपयोग करें';

  @override
  String get autoGen5235 =>
      'बाहरी एचडीएमआई उच्च-रिज़ॉल्यूशन डिस्प्ले को रोशन करने का प्रयास करते समय 6वीं पीढ़ी के स्काईलेक कोर डिस्प्ले, 7वीं पीढ़ी केबी लेक कोर डिस्प्ले और 8वीं पीढ़ी के कॉफ़ी लेक कोर डिस्प्ले ड्राइवर के कारण होने वाली अंतहीन लूप समस्या को ठीक किया गया (विशिष्ट लक्षण यह हैं कि एचडीएमआई केबल में प्लग करने के बाद, नोटबुक की आंतरिक स्क्रीन काली हो जाती है लेकिन इसमें बैकलाइट होती है, सिस्टम अनुत्तरदायी हो जाता है, और बाहरी स्क्रीन पर कोई आउटपुट नहीं होता है)';

  @override
  String get autoGen5236 =>
      '10वीं पीढ़ी के आइस लेक प्लेटफॉर्म पर कम कोर डिस्प्ले क्लॉक (सीडीसीएलके) आवृत्ति के कारण होने वाली कर्नेल क्रैश समस्या को ठीक करें';

  @override
  String get autoGen5237 =>
      'ड्राइवर द्वारा DVMT पूर्व-आवंटित मेमोरी आकार की गलत गणना के कारण 10वीं पीढ़ी के आइस लेक प्लेटफ़ॉर्म पर कर्नेल क्रैश को ठीक किया गया';

  @override
  String get autoGen5238 =>
      'उपयोगकर्ता अनुभव को बेहतर बनाने के लिए ट्रांज़िशन को आसान और अधिक प्राकृतिक बनाने के लिए ब्राइटनेस स्लाइडर (ब्राइटनेस स्लाइडर) सेटिंग्स को समायोजित करें';

  @override
  String get autoGen5239 =>
      '7वीं पीढ़ी के कैबी लेक, 8वीं पीढ़ी और 9वीं पीढ़ी के कॉफी लेक प्लेटफॉर्म पर macOS 13.4 या उससे ऊपर चलने वाले नोटबुक पर स्टार्टअप के बाद 3 मिनट तक चलने वाली डार्क स्क्रीन की समस्या को ठीक किया गया।';

  @override
  String get autoGen5240 =>
      'उस समस्या को ठीक किया गया जहां 7वीं पीढ़ी के कैबी लेक, 8वीं पीढ़ी और 9वीं पीढ़ी के कॉफी लेक प्लेटफॉर्म पर macOS 13.3 और उससे नीचे चलने वाले नोटबुक में बूटिंग के बाद 3 मिनट के लिए डार्क स्क्रीन होगी।';

  @override
  String get autoGen5241 =>
      'उस समस्या को ठीक किया गया जहां 10वीं पीढ़ी के आइस लेक प्लेटफॉर्म पर नोटबुक चालू होने पर स्क्रीन 7 से 15 सेकंड तक बनी रहती है।';

  @override
  String get autoGen5242 =>
      'इस समस्या को ठीक कर दिया गया है कि 10वीं पीढ़ी के आइस लेक कोर डिस्प्ले HDMI उच्च-रिज़ॉल्यूशन डिस्प्ले में काली स्क्रीन होगी, कोई सिग्नल नहीं होगा, और रिज़ॉल्यूशन 4K@60Hz और कुछ 2K/4K उच्च ताज़ा परिदृश्यों में सही ढंग से आउटपुट नहीं हो सकता है (कोर डिस्प्ले (IGPU) के \"अधिकतम पिक्सेल क्लॉक ओवरराइड\" को सक्षम करने के लिए मजबूर)';

  @override
  String get autoGen5243 =>
      'न्यूक्लियर डिस्प्ले गड़बड़ी प्रभाव या फ़्लिकरिंग स्क्रीन समस्याओं (जैसे न्यूक्लियर डिस्प्ले HD530) को ठीक करने के लिए उपयोग किया जाता है';

  @override
  String get autoGen5244 =>
      'स्वतंत्र डिस्प्ले को अक्षम करें (आमतौर पर जब दोहरे ग्राफिक्स वाले लैपटॉप का स्वतंत्र डिस्प्ले नहीं चलाया जा सकता है, तो स्वतंत्र डिस्प्ले को अक्षम करना पड़ता है)';

  @override
  String get autoGen5245 => 'लैपटॉप (जैसे कि Dell';

  @override
  String get autoGen5246 =>
      'इंटरफ़ेस की ब्लैक स्क्रीन समस्या को ठीक करने के लिए मॉनिटर EDID को AAPL00 इंटरफ़ेस (आमतौर पर नोटबुक की आंतरिक स्क्रीन) में इंजेक्ट करें (ध्यान दें: आपको पहले EDID कॉन्फ़िगरेशन पृष्ठ पर मॉनिटर EDID को इंजेक्ट करना होगा! आप टूल \"डिस्प्ले कॉन्फ़िगरेशन\" -> \"डिस्प्ले EDID\" में EDID भर सकते हैं। B560 जैसे 500 श्रृंखला के मदरबोर्ड के लिए, एचडीएमआई आउटपुट की मरम्मत करते समय, आपको मॉनिटर EDID को इंजेक्ट करना होगा, अन्यथा एक है काली स्क्रीन की उच्च संभावना कभी-कभी, अन्य इंटेल प्लेटफ़ॉर्म के लिए, धुंधली स्क्रीन, बैंगनी स्क्रीन या काली स्क्रीन की समस्या को ठीक किया जा सकता है।';

  @override
  String get autoGen5247 =>
      'काली स्क्रीन और इंटरफ़ेस की कोई डिस्प्ले समस्या को ठीक करने के लिए मॉनिटर EDID को AAPL01 इंटरफ़ेस में इंजेक्ट करें (नोट: आपको पहले EDID कॉन्फ़िगरेशन पृष्ठ पर मॉनिटर EDID को इंजेक्ट करना होगा! आप टूल \"डिस्प्ले कॉन्फ़िगरेशन\" -> \"डिस्प्ले EDID\" में EDID भर सकते हैं। B560 जैसे 500 श्रृंखला के मदरबोर्ड को एचडीएमआई आउटपुट की मरम्मत करते समय मॉनिटर EDID को इंजेक्ट करना होगा, अन्यथा ब्लैक स्क्रीन की उच्च संभावना है। कभी-कभी, अन्य के लिए इंटेल प्लेटफ़ॉर्म, कोर डिस्प्ले धुंधली स्क्रीन, बैंगनी स्क्रीन या काली स्क्रीन की समस्या को ठीक किया जा सकता है)';

  @override
  String get autoGen5248 =>
      'काली स्क्रीन और इंटरफ़ेस की कोई डिस्प्ले समस्या को ठीक करने के लिए मॉनिटर EDID को AAPL02 इंटरफ़ेस में इंजेक्ट करें (नोट: आपको पहले EDID कॉन्फ़िगरेशन पेज पर मॉनिटर EDID को इंजेक्ट करना होगा! आप EDID को \"डिस्प्ले कॉन्फ़िगरेशन\" -> \"डिस्प्ले EDID\" टूल में भर सकते हैं। B560 जैसे 500 श्रृंखला के मदरबोर्ड को एचडीएमआई आउटपुट की मरम्मत करते समय मॉनिटर EDID को इंजेक्ट करना होगा, अन्यथा ब्लैक स्क्रीन की उच्च संभावना है। कभी-कभी, अन्य के लिए इंटेल प्लेटफ़ॉर्म, कोर डिस्प्ले धुंधली स्क्रीन, बैंगनी स्क्रीन या काली स्क्रीन की समस्या को ठीक किया जा सकता है)';

  @override
  String get autoGen5249 =>
      'एलएसपीसीओएन समर्थन सक्षम करें और डिस्प्लेपोर्ट को एचडीएमआई 2.0 आउटपुट में परिवर्तित करें (पोर्ट 0 ~ 3 एलएसपीसीओएन सिग्नल कनवर्टर की आवश्यकता है, 6 वीं पीढ़ी के स्काईलेक ~ 10 वीं पीढ़ी के कॉमेट लेक, आइस लेक इंटेल प्लेटफॉर्म के लिए उपयुक्त)';

  @override
  String get autoGen5250 =>
      'पोर्ट 0 LSPCON सिग्नल कनवर्टर (LSPCON समर्थन सक्षम करने की आवश्यकता है)';

  @override
  String get autoGen5251 =>
      'पोर्ट 1 LSPCON सिग्नल कनवर्टर (LSPCON समर्थन सक्षम करने की आवश्यकता है)';

  @override
  String get autoGen5252 =>
      'पोर्ट 2 LSPCON सिग्नल कनवर्टर (LSPCON समर्थन सक्षम करने की आवश्यकता है)';

  @override
  String get autoGen5253 =>
      'पोर्ट 3 LSPCON सिग्नल कनवर्टर (LSPCON समर्थन सक्षम करने की आवश्यकता है)';

  @override
  String get autoGen5254 =>
      'फ़्रेमबफ़र मेमोरी को 9M तक संशोधित करें (फ़्रेमबफ़र मेमोरी का आकार उच्च-रिज़ॉल्यूशन स्क्रीन को प्रभावित करेगा, आमतौर पर फ़्रेमबफ़र-स्टोलनमेम के साथ संयोजन में उपयोग किया जाता है)';

  @override
  String get autoGen5255 =>
      'चुराई गई मेमोरी को 19M में संशोधित करें (1080P स्क्रीन पर लागू, टूल डिफ़ॉल्ट मान, जाँच करने की आवश्यकता नहीं है। यदि BIOS में DVMT पैरामीटर है, तो इसे 64M में संशोधित करने की अनुशंसा की जाती है। यदि DVMT पैरामीटर BIOS में बदला जाता है, तो यह पैरामीटर हटाया जा सकता है)';

  @override
  String get autoGen5256 =>
      'चोरी हुई मेमोरी को 64M में संशोधित करें (2k या 4k स्क्रीन पर लागू। यदि BIOS में DVMT पैरामीटर है, तो इसे 64M या इससे ऊपर संशोधित करने की अनुशंसा की जाती है। यदि DVMT पैरामीटर BIOS में बदला जाता है, तो इस पैरामीटर को हटाया जा सकता है)';

  @override
  String get autoGen5257 =>
      'चुराई गई मेमोरी को 128M में संशोधित करें (4k स्क्रीन पर लागू। यदि BIOS में DVMT पैरामीटर है, तो इसे उच्च-रिज़ॉल्यूशन स्क्रीन के लिए 128M या 256M या इससे ऊपर संशोधित करने की अनुशंसा की जाती है। यदि DVMT पैरामीटर BIOS में बदले जाते हैं, तो यह पैरामीटर हटाया जा सकता है)';

  @override
  String get autoGen5258 =>
      'Con0 HDMI पोर्ट सक्षम करें (HDMI इंटरफ़ेस नंबर 0 की आवश्यकता है)';

  @override
  String get autoGen5259 =>
      'नंबर 0 HDMI इंटरफ़ेस, 6वीं से 10वीं पीढ़ी के HDMI की ब्लैक स्क्रीन समस्या को ठीक करने के लिए उपयोग किया जाता है (con0 HDMI पोर्ट को सक्षम करने की आवश्यकता है)';

  @override
  String get autoGen5260 =>
      'con1 HDMI पोर्ट सक्षम करें (HDMI इंटरफ़ेस नंबर 1 की आवश्यकता है)';

  @override
  String get autoGen5261 =>
      'नंबर 1 एचडीएमआई इंटरफ़ेस, 6वीं से 10वीं पीढ़ी के एचडीएमआई की ब्लैक स्क्रीन समस्या को ठीक करने के लिए उपयोग किया जाता है (कॉन1 एचडीएमआई पोर्ट को सक्षम करने की आवश्यकता है)';

  @override
  String get autoGen5262 =>
      'con2 HDMI पोर्ट सक्षम करें (HDMI इंटरफ़ेस नंबर 2 की आवश्यकता है)';

  @override
  String get autoGen5263 =>
      'एचडीएमआई इंटरफ़ेस नंबर 2, 6वीं से 10वीं पीढ़ी के एचडीएमआई की ब्लैक स्क्रीन समस्या को ठीक करने के लिए उपयोग किया जाता है (कॉन2 एचडीएमआई पोर्ट को सक्षम करने की आवश्यकता है)';

  @override
  String get autoGen5264 => 'वीडियो मेमोरी/डीवीएमटी पैरामीटर';

  @override
  String get autoGen5265 => 'चौथी पीढ़ी के हैसवेल विशिष्ट पैरामीटर';

  @override
  String get autoGen5266 =>
      'तीसरी पीढ़ी के आइवी ब्रिज उच्च-रिज़ॉल्यूशन स्क्रीन उम्मीदवार पैच';

  @override
  String get autoGen5267 =>
      'दूसरी पीढ़ी के सैंडी ब्रिज उच्च-रिज़ॉल्यूशन स्क्रीन उम्मीदवार पैच';

  @override
  String get autoGen5268 => 'पहली पीढ़ी के अरंडेल नोटबुक के लिए उम्मीदवार पैच';

  @override
  String get autoGen5269 => 'एचडीएमआई/इंटरफ़ेस मरम्मत';

  @override
  String get autoGen5270 => '10वीं पीढ़ी का आइस लेक फिक्स';

  @override
  String get autoGen5271 => 'यूनिवर्सल फिक्स';

  @override
  String get autoGen5272 =>
      'आइवी ब्रिज नोटबुक उच्च-रिज़ॉल्यूशन स्क्रीन (1600x900 और अधिक रिज़ॉल्यूशन) पैच';

  @override
  String get autoGen5273 =>
      '6वीं से 10वीं पीढ़ी की HDMI काली स्क्रीन, बैंगनी स्क्रीन और ऑडियो समस्याओं को ठीक करने के लिए con0 इंटरफ़ेस HDMI प्रकार सुधार पैच सक्षम करें';

  @override
  String get autoGen5274 =>
      'छठी से दसवीं पीढ़ी की HDMI काली स्क्रीन, बैंगनी स्क्रीन और ऑडियो समस्याओं को ठीक करने के लिए con1 इंटरफ़ेस HDMI प्रकार सुधार पैच सक्षम करें';

  @override
  String get autoGen5275 =>
      '6वीं से 10वीं पीढ़ी की HDMI काली स्क्रीन, बैंगनी स्क्रीन और ऑडियो समस्याओं को ठीक करने के लिए con2 इंटरफ़ेस HDMI प्रकार सुधार पैच सक्षम करें';

  @override
  String get autoGen5276 =>
      'alc_codec.json प्रारूप त्रुटि: रूट नोड मैप<स्ट्रिंग, डायनामिक> होना चाहिए';

  @override
  String get autoGen5277 =>
      'कोड को चलाने के लिए -v सक्षम करें (कोड फंसने पर त्रुटियों का पता लगाने के लिए सुविधाजनक, डिबगिंग और बूटिंग चरण के लिए उपयुक्त)';

  @override
  String get autoGen5278 =>
      'कर्नेल क्रैश होने पर मैक सिस्टम के लिए अधिक प्रतीक जानकारी प्रिंट करना सुविधाजनक होता है, जो समस्याओं के निवारण के लिए सहायक होता है। यह पैरामीटर आमतौर पर डिबग = 0x100 के साथ प्रयोग किया जाता है (पहली बार डिबगिंग और बूटिंग करते समय इसे जांचने की दृढ़ता से अनुशंसा की जाती है)';

  @override
  String get autoGen5279 =>
      'कर्नेल क्रैश होने पर स्वचालित पुनरारंभ को रोकें, जिससे पैनिक क्रैश लॉग देखना आसान हो जाता है (पहली बार डिबगिंग और बूट करते समय इसे जांचने की दृढ़ता से अनुशंसा की जाती है)';

  @override
  String get autoGen5280 =>
      'पैनिक क्रैश रीस्टार्ट की आकस्मिक ट्रिगरिंग को रोकने के लिए वॉचडॉग फ़ंक्शन को अक्षम करें (डीबगिंग बूट पर लागू)';

  @override
  String get autoGen5281 =>
      'यह सुनिश्चित करने के लिए कि कर्नेल और केक्स्ट (कर्नेल एक्सटेंशन) को एक ही निश्चित मेमोरी मैप में लोड किया गया है, कर्नेल एड्रेस स्पेस रैंडमाइजेशन (KASLR) को अक्षम करें ताकि यादृच्छिक स्लाइड मानों (डिबगिंग बूट पर लागू) के कारण होने वाले मेमोरी टकराव के कारण शुरुआती स्टार्टअप कर्नेल क्रैश से बचा जा सके।';

  @override
  String get autoGen5282 =>
      'बहुत कम या बहुत अधिक SMBIOS के कारण निषेध प्रतीकों से बचने के लिए macOS के पहले स्टार्टअप के दौरान मॉडल जांच को छोड़ दें, और सुनिश्चित करें कि सिस्टम को सामान्य रूप से बूट किया जा सकता है (ध्यान दें कि यह पैरामीटर इंस्टॉलेशन के दौरान मॉडल जांच को छोड़ नहीं सकता है। इंस्टॉलेशन के दौरान \"macOS समर्थित नहीं है\" जैसा एक संदेश दिखाई देगा। इस समय, आप नए या पुराने सिस्टम का समर्थन करने के लिए SMBIOS को उच्च या निम्न स्तर पर बदल सकते हैं)';

  @override
  String get autoGen5283 =>
      'यह पैरामीटर AMFI, अपेक्षाकृत नए ग्राफिक्स कार्ड (जैसे HD4000 और ऊपर, GT710 और अन्य केप्लर कोर और ऊपर) या वाईफाई ड्राइवरों को अक्षम करने पर लागू होता है। ध्यान दें कि इसे एक ही समय में amfi_get_out_of_my_way=0x1 पैरामीटर के साथ उपयोग न करें! (यह पैरामीटर केवल तभी प्रभावी होगा जब एसआईपी अक्षम हो, और एसआईपी सक्षम होने के बाद यह पैरामीटर स्वचालित रूप से हटा दिया जाएगा)';

  @override
  String get autoGen5284 =>
      'सुनिश्चित करें कि AMFI (AMFI अक्षम) सुरक्षा जांच को बायपास करना जारी रखने के लिए AMFIPass.kext को नवीनतम macOS Tahoe 26 सिस्टम में ठीक से सक्षम और सक्रिय किया जा सकता है। (नोट: 1. इस पैरामीटर का उपयोग अक्षम AMFI पैरामीटर के साथ एक ही समय में नहीं किया जा सकता है, और इस पैरामीटर को AMFIPass.kext के साथ उपयोग करने की आवश्यकता है। 2. यह पैरामीटर आमतौर पर केवल नवीनतम सिस्टम में उपयोग किया जाता है, इसे तब तक न जोड़ें जब तक आवश्यक न हो)';

  @override
  String get autoGen5285 =>
      'यह पैरामीटर तब लागू होता है जब AMFI अक्षम होता है, पुराने प्लेटफ़ॉर्म, पुराने ग्राफ़िक्स कार्ड (जैसे GT240) या वाईफाई ड्राइवर का उपयोग किया जाता है। ध्यान दें कि एक ही समय में amfi=0x80 पैरामीटर का उपयोग न करें! (यह केवल तभी प्रभावी होता है जब एसआईपी अक्षम हो, और एसआईपी सक्षम होने के बाद यह पैरामीटर स्वचालित रूप से हटा दिया जाता है)';

  @override
  String get autoGen5286 =>
      'AMFI को अक्षम करने के बाद कुछ एप्लिकेशन (उदाहरण के लिए: Baidu नेटडिस्क) की क्रैश समस्या को ठीक किया गया (यह केवल तभी प्रभावी होगा जब SIP अक्षम हो, और SIP सक्षम होने के बाद यह पैरामीटर स्वचालित रूप से हटा दिया जाएगा)';

  @override
  String get autoGen5287 =>
      'नवीनतम सिस्टम (मुख्य रूप से बीटा संस्करण) में होने वाली समस्याओं को ठीक करें (सिस्टम ड्राइवर अपवाद, जैसे: साउंड कार्ड, ब्लूटूथ, सीपीयू आवृत्ति आदि में अचानक असामान्यता। नवीनतम बीटा संस्करण सिस्टम का प्रयास करते समय इसे जांचने की दृढ़ता से अनुशंसा की जाती है)';

  @override
  String get autoGen5288 =>
      'केवल 1 सीपीयू कोर सक्षम करें (X58, X79, X99, X299 और अन्य मल्टी-कोर सर्वर सीपीयू कोर क्रैश, प्रारंभिक इंस्टॉलेशन और डिबगिंग चरणों पर लागू)';

  @override
  String get autoGen5289 =>
      'सिस्टम शुरू करने या प्रवेश करने के बाद कुछ मदरबोर्ड के अटक जाने की समस्या को हल करने के लिए VT-d को बंद करें (IOMMU को अक्षम करें, आप इसे तब जांच सकते हैं जब BIOS VT-d को बंद नहीं करता है)।';

  @override
  String get autoGen5290 =>
      'फर्मवेयर लोडिंग विफलता या स्टार्टअप के दौरान पुनः प्रयास लूप के कारण अटकने से बचने के लिए ऐप्पल ग्राफिक्स फर्मवेयर लोडिंग को अक्षम करें (केवल इंटेल ग्राफिक्स पर लागू)';

  @override
  String get autoGen5291 =>
      'इंटेल कोर डिस्प्ले को अक्षम करें (यह जांचने की अनुशंसा की जाती है कि कोर डिस्प्ले को संचालित नहीं किया जा सकता है और त्वरित हार्ड डिकोडिंग समर्थित नहीं है)';

  @override
  String get autoGen5292 =>
      'स्वतंत्र ग्राफ़िक्स को अक्षम करें (आमतौर पर जब इंटेल डुअल ग्राफ़िक्स नोटबुक स्वतंत्र ग्राफ़िक्स कार्ड [आमतौर पर एन कार्ड में उपयोग किया जाता है] चलाया नहीं जा सकता है, तो इसे जांचने की अनुशंसा की जाती है)';

  @override
  String get autoGen5293 =>
      'NVIDIA ड्राइवर अक्षम करें (केवल असंगत एन कार्ड डीबग करते समय लागू होता है)';

  @override
  String get autoGen5294 =>
      'इंटेल कोर ग्राफिक्स त्वरण को अक्षम करें (उदाहरण के लिए: ओसीएलपी का उपयोग करते समय और कोर ग्राफिक्स पैच को पैच करने के बाद सामान्य रूप से शुरू करने में असमर्थ, आप इसे जांच सकते हैं, कोई त्वरण नहीं, केवल डिबगिंग के लिए)';

  @override
  String get autoGen5295 =>
      'इंटेल कोर डिस्प्ले प्रदर्शन की मरम्मत और सुधार करें (उदाहरण के लिए: कोर डिस्प्ले 4K hevc एन्कोडिंग, रिज़ॉल्यूशन और एफपीएस के आदर्श मूल्यों तक नहीं पहुंचने की समस्या को ठीक करें)';

  @override
  String get autoGen5296 =>
      'इंटेल कोर डिस्प्ले के अधिकतम लिंक दर मूल्य के साथ समस्या को ठीक किया गया, जिसके कारण स्क्रीन चालू होने पर सीधे क्रैश हो जाता था (विशेष रूप से स्काईलेक, कैबी लेक, कॉफी लेक, कॉमेट लेक पर, काली स्क्रीन और कोई सिग्नल नहीं, अपेक्षित 4K रिज़ॉल्यूशन तक नहीं पहुंचना, आदि)';

  @override
  String get autoGen5297 =>
      'कोर डिस्प्ले की रिज़ॉल्यूशन समस्या को ठीक करें, IGPU के \"मैक्स पिक्सेल क्लॉक ओवरराइड\" को सक्षम करने के लिए बाध्य करें, और macOS के डिफ़ॉल्ट रिज़ॉल्यूशन, रिफ्रेश रेट और अन्य प्रतिबंधों को हटा दें।';

  @override
  String get autoGen5298 =>
      'कुछ लैपटॉप के एचडीएमआई आउटपुट में 4K ब्लैक स्क्रीन की समस्या को ठीक करें (आमतौर पर लैपटॉप पर लागू होता है, जैसे थिंकपैड P71/7700HQ/HD630/4K `gIOScreenLockState3` में अटका हुआ)';

  @override
  String get autoGen5299 =>
      '10वीं पीढ़ी के आइस लेक प्लेटफॉर्म पर कम कोर डिस्प्ले क्लॉक (सीडीसीएलके) आवृत्ति के कारण होने वाली कर्नेल क्रैश समस्या को ठीक करें';

  @override
  String get autoGen5300 =>
      'ड्राइवर द्वारा DVMT पूर्व-आवंटित मेमोरी आकार की गलत गणना के कारण 10वीं पीढ़ी के आइस लेक प्लेटफ़ॉर्म पर कर्नेल क्रैश समस्या को ठीक किया गया।';

  @override
  String get autoGen5301 =>
      'उस समस्या को ठीक किया गया जहां 10वीं पीढ़ी के आइस लेक प्लेटफॉर्म पर नोटबुक चालू होने पर स्क्रीन 7 से 15 सेकंड तक बनी रहती है।';

  @override
  String get autoGen5302 =>
      'स्टार्टअप प्रक्रिया के दौरान टेलीमेट्री मॉड्यूल को लोड करने के लिए iGPU (कोर ग्राफिक्स) को अक्षम करें। कुछ नोटबुक (विशेष रूप से क्रोमबुक) इस मॉड्यूल को लोड करते समय स्टार्टअप चरण के दौरान सिस्टम को फ्रीज या फ्रीज कर सकते हैं (इंटेल स्काईलेक 6 वीं पीढ़ी और उससे ऊपर के नोटबुक पर लागू)';

  @override
  String get autoGen5303 =>
      'MacOS वेंचुरा 13.4 और उससे नीचे, 7वीं पीढ़ी केबीएल, 8वीं और 9वीं पीढ़ी के सीएफएल नोटबुक प्लेटफार्मों पर बैकलाइट रजिस्टर को ठीक करें, और 3 मिनट तक चलने वाली काली स्क्रीन या डार्क स्क्रीन की समस्या को ठीक करें (नोटबुक पर लागू)';

  @override
  String get autoGen5304 =>
      'MacOS वेंचुरा 13.4 और उससे ऊपर, 7वीं पीढ़ी केबीएल, 8वीं और 9वीं पीढ़ी के सीएफएल नोटबुक प्लेटफार्मों पर बैकलाइट रजिस्टर को ठीक करें, और 3 मिनट तक चलने वाली काली स्क्रीन या डार्क स्क्रीन की समस्या को ठीक करें (नोटबुक पर लागू)';

  @override
  String get autoGen5305 =>
      'उपयोगकर्ता अनुभव को बेहतर बनाने के लिए बदलाव को आसान और अधिक प्राकृतिक बनाने के लिए चमक स्लाइडर (चमक स्लाइडर) सेटिंग्स को समायोजित करें (नोटबुक पर लागू)';

  @override
  String get autoGen5306 =>
      'फ़्रेम बफ़र की प्रतिलिपि बनाने के बजाय दूसरे स्टार्टअप चरण में Apple लोगो बनाएं। बाहरी मॉनिटर कनेक्ट करते समय, प्रगति पट्टी से लॉगिन डेस्कटॉप पर आसानी से संक्रमण करें। कुछ मामलों में, यह सिस्टम में प्रवेश करते समय काली स्क्रीन की समस्या को ठीक कर सकता है। साथ ही, स्क्रीन चालू करने के लिए मॉनिटर केबल को प्लग और अनप्लग करना सहायक होता है।';

  @override
  String get autoGen5307 =>
      'X58 जैसे प्लेटफ़ॉर्म कार्ड की ACPI कॉन्फ़िगरेशन प्रारंभ समस्या को ठीक करें,';

  @override
  String get autoGen5308 =>
      'X58 जैसे प्लेटफ़ॉर्म कार्ड की ACPI कॉन्फ़िगरेशन प्रारंभ समस्या को ठीक करें,';

  @override
  String get autoGen5309 =>
      'एएमडी जीपीयू पर हार्डवेयर डिजिटल अधिकार प्रबंधन (डीआरएम) समर्थन समस्या को ठीक किया गया (डीआरएम-संरक्षित डिजिटल सामग्री, जैसे स्ट्रीमिंग सेवाओं द्वारा प्रदान किए गए उच्च गुणवत्ता वाले वीडियो, समर्थित एएमडी जीपीयू पर अनुभव करने में सक्षम बनाता है)';

  @override
  String get autoGen5310 =>
      'एटीआई और एएमडी ग्राफिक्स कार्ड त्वरण को अक्षम करें (उदाहरण के लिए: जब ओसीएलपी का उपयोग किया जाता है और ग्राफिक्स कार्ड पैचिंग के बाद सामान्य रूप से शुरू नहीं हो सकता है, तो आप इसे जांच सकते हैं, कोई त्वरण नहीं, केवल डिबगिंग के लिए)';

  @override
  String get autoGen5311 =>
      'HD7750, HD7850 (मुख्य कोर GCN श्रृंखला HD77XX, HD78XX, HD79XX है) और अन्य पुराने ए-कार्ड स्क्रीन विरूपण, पीली स्क्रीन और अन्य असामान्य डिस्प्ले समस्याओं की मरम्मत करें';

  @override
  String get autoGen5312 =>
      'ग्राफ़िक्स कार्ड पर AppleGraphicsDevicePolicy.kext के प्रतिबंधों या सेटिंग्स को पूरी तरह से अनदेखा करते हुए, कुछ ग्राफ़िक्स कार्ड के कारण होने वाली काली स्क्रीन या असामान्य डिस्प्ले समस्याओं को ठीक करें। जब आप विशिष्ट प्रतिबंधों के बारे में सुनिश्चित नहीं हैं, तो असंगत हार्डवेयर कॉन्फ़िगरेशन (जैसे विशिष्ट बोर्ड-आईडी) के कारण होने वाली डिस्प्ले समस्याओं या ब्लैक स्क्रीन घटनाओं से बचें। इस पैरामीटर पर ध्यान दें, जो केवल तभी प्रभावी होगा जब WhichGreen.kext के साथ उपयोग किया जाएगा। नेटिव ड्राइवर-मुक्त ए कार्ड के लिए, आप WhichGreen.kext ड्राइवर को हटा सकते हैं, इसलिए इस पैरामीटर को जोड़ने की आवश्यकता नहीं है।';

  @override
  String get autoGen5313 =>
      'जब AMD नवी कोर RX5XXX, RX6XXX श्रृंखला ग्राफिक्स कार्ड शुरू होते हैं (उदाहरण के लिए: RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, आदि), तो बोर्ड-आईडी को बोर्ड-ix से बदलें, और AppleGraphicsDevicePolicy के कुछ प्रतिबंधों को बायपास करें, तो काली स्क्रीन की समस्या को ठीक करें। नोट: 1. यह केवल तभी प्रभावी होगा जब WhichGreen.kext के साथ प्रयोग किया जाएगा। 2. BIOS SuperIO सेटिंग्स में सीरियल/COM पोर्ट को बंद करें। नेटिव ड्राइवर-मुक्त ए कार्ड के लिए, आप WhichGreen.kext ड्राइवर को हटा सकते हैं, इसलिए इस पैरामीटर को जोड़ने की आवश्यकता नहीं है।';

  @override
  String get autoGen5314 =>
      'RX470 और RX570 जैसे कुछ ग्राफ़िक्स कार्ड के लिए नींद से जागने के बाद काली स्क्रीन की समस्या को ठीक करें, AppleGraphicsDevicePolicy में बोर्ड-आईडी जांच को अक्षम करें, और कुछ ग्राफ़िक्स कार्ड के कारण होने वाली काली स्क्रीन या असामान्य डिस्प्ले समस्याओं को ठीक करें। ध्यान दें कि यह पैरामीटर केवल तभी प्रभावी होगा जब WhichGreen.kext के साथ उपयोग किया जाएगा। मूल ड्राइवर-मुक्त ए कार्ड के लिए, WhichGreen.kext ड्राइवर को हटाया जा सकता है, इसलिए इस पैरामीटर को जोड़ने की आवश्यकता नहीं है।';

  @override
  String get autoGen5315 =>
      'इंटेल तीसरी पीढ़ी और नीचे के प्लेटफॉर्म AMD RX5XX (उदाहरण के लिए: RX560, RX570, RX580) श्रृंखला, AMD RX5XXX, RX6XXX (उदाहरण के लिए: RX5500, RX6600) श्रृंखला के ड्राइवर-मुक्त ग्राफिक्स कार्ड की मरम्मत करें, वेंचुरा और इसके बाद के सिस्टम में ब्लैक स्क्रीन की समस्या है (नोट: आपको सिस्टम में प्रवेश करने के बाद ग्राफिक्स कार्ड को पैच करने के लिए OCLP का उपयोग करने की आवश्यकता है! ग्राफिक्स कार्ड को पैच करने के बाद, हटा दें बूट पैरामीटर या कॉन्फिग का नाम बदलने के लिए ईएफआई निर्देशिका में वैकल्पिक कॉन्फिग-आफ्टर-पोस्ट का उपयोग करें, और ग्राफिक्स कार्ड को चलाने के लिए पुनरारंभ करें!)';

  @override
  String get autoGen5316 =>
      'वीडीए हार्डवेयर वीडियो एन्कोडिंग का समर्थन करने के लिए आधिकारिक तौर पर असमर्थित एएमडी ग्राफिक्स कार्ड (उदाहरण के लिए: आरएक्स550 लेक्सा कोर) को ठीक करें';

  @override
  String get autoGen5317 =>
      'फर्मी, मैक्सवेल, पास्कल आर्किटेक्चर पुराने एन कार्ड की मरम्मत करें (उदाहरण के लिए: GT610, GTX750, GTX960, GTX1050) बिगसर 11 या उससे ऊपर के सिस्टम ग्राफिक्स कार्ड ड्राइवर की समस्या (नोट: सिस्टम में प्रवेश करने के बाद ग्राफिक्स कार्ड को पैच करने के लिए आपको OCLP का उपयोग करने की आवश्यकता है!!! केप्लर कोर के लिए यह पैरामीटर आवश्यक नहीं है!!!)';

  @override
  String get autoGen5318 =>
      'कुछ ब्रॉडकॉम वायरलेस नेटवर्क कार्डों की धीमी गति की समस्या को ठीक किया गया (ब्रॉडकॉम वाईफाई देश कोड को हांगकांग में बदलें, आप इसे बेहतर बनाने के लिए राउटर चैनल भी बदल सकते हैं)';

  @override
  String get autoGen5319 =>
      'रैमरोड कोड, एसएमसी सिम्युलेटर क्षति की समस्या को ठीक करें';

  @override
  String get autoGen5320 =>
      'SIP (सिस्टम इंटीग्रिटी प्रोटेक्शन) या सिक्योरबूटमॉडल (सुरक्षा मॉडल) को अक्षम करने के बाद macOS सिस्टम OTA अपडेट समस्या को ठीक करें, और कस्टम CPU नाम डिस्प्ले समस्या को ठीक करें';

  @override
  String get autoGen5321 =>
      'स्लीप मोड में प्रवेश करने के बाद डिवाइस को पुनरारंभ करने की समस्या से बचें, जिससे कर्नेल क्रैश लॉग प्राप्त करना और नींद की समस्याओं का निवारण करना आसान हो जाता है।';

  @override
  String get autoGen5322 =>
      'इंटेल 12वीं पीढ़ी और बाद के बड़े और छोटे कोर सीपीयू की टोपोलॉजी पहचान और शेड्यूलिंग में सुधार करें। प्रदर्शन में सुधार की गारंटी नहीं है. वास्तविक परीक्षण के बाद इसे सक्षम करने की अनुशंसा की जाती है (ध्यान दें कि प्रभावी होने के लिए इसे CpuTopologyRebuild.kext के साथ उपयोग करने की आवश्यकता है)';

  @override
  String get autoGen5323 =>
      'डार्कवेक मोड को पूरी तरह से अक्षम करें और सिस्टम को पारंपरिक स्लीप मोड में प्रवेश करने दें। इसका उपयोग मुख्य रूप से ब्लैक स्क्रीन वेक-अप और स्वचालित वेक-अप जैसी समस्याओं को ठीक करने के लिए किया जाता है।';

  @override
  String get autoGen5324 =>
      'iGPU RC6 रेंडरिंग स्टैंडबाय को अक्षम करें और स्लीप के दौरान RC6 कोर डिस्प्ले के कारण होने वाली NVMe कर्नेल पैनिक की समस्या को ठीक करें';

  @override
  String get autoGen5325 =>
      'AMD Radeon RX 5000 श्रृंखला ग्राफिक्स कार्ड के लिए PWM बैकलाइट नियंत्रण सक्षम करें';

  @override
  String get autoGen5326 =>
      'पुराने A कार्ड (290X, 370, आदि) के DVI इंटरफ़ेस आउटपुट डिस्प्ले की मरम्मत और सुधार करें।';

  @override
  String get autoGen5327 =>
      'I2C प्रकार के टच पैनल को इंटरप्ट-संचालित मोड के बजाय पोलिंग मोड में काम करने के लिए बाध्य करें (इंटरप्ट मोड के लिए आमतौर पर अनुकूलित SSDT की आवश्यकता होती है, जो अपेक्षाकृत जटिल है। कभी-कभी I2C टच पैनल के अनुपयोगी होने की समस्या को ठीक किया जा सकता है (इसे VoodooI2C ड्राइवर के साथ उपयोग करने की आवश्यकता है)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (MMIO क्षेत्र को संभालते समय कुछ मदरबोर्ड और फ़र्मवेयर में टकराव या असंगतता के मुद्दे हो सकते हैं। इस विकल्प को सक्षम करने से इन टकरावों को हल करने और सिस्टम संगतता और स्थिरता में सुधार करने में मदद मिल सकती है। कुछ मदरबोर्ड (उदाहरण के लिए: कुछ X58, X79, X99, और AMD 7000 श्रृंखला प्रोसेसर मदरबोर्ड) पर मेमोरी समस्याओं के कारण कार्ड EB को हल करने के लिए MMIO को अनुकूलित करने के लिए इस विकल्प को आमतौर पर ओपनकोर डीबग संस्करण के साथ जोड़ा जाता है)';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (इसे ऐसे फ़र्मवेयर पर जाँचने की अनुशंसा की जाती है जो मेमोरी एट्रिब्यूट टेबल (MAT), विशेष रूप से OEM फ़र्मवेयर का समर्थन नहीं करता है। इसे चालू करने के बाद, NVRAM की सामान्य लेखन सुनिश्चित करने के लिए निष्पादन के दौरान CR0 रजिस्टर में लेखन सुरक्षा हटा दी जाएगी। आमतौर पर 7वीं पीढ़ी से पहले के प्लेटफ़ॉर्म पर लागू होता है)';

  @override
  String get autoGen5330 =>
      'प्रोटेक्टयूईएफआईसर्विसेज (यूईएफआई सेवाओं को फर्मवेयर द्वारा अधिलेखित होने से बचाता है, आमतौर पर इसका उपयोग देवीवर्चुअलाइज़ममियो आदि के कारण होने वाली कार्ड ईबी समस्याओं को ठीक करने के लिए किया जाता है। इसे Z390, Z490 मदरबोर्ड और 10वीं पीढ़ी के आइस लेक के लिए जांचने की अनुशंसा की जाती है)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (OC उपयोग के लिए निरंतर वर्चुअल मेमोरी स्थापित करता है और इसे बिखरी हुई भौतिक मेमोरी में मैप करता है। नोट: 10वीं पीढ़ी के कॉमेट लेक ASUS, गीगाबाइट और AsRock मदरबोर्ड के लिए इस विकल्प की जांच करने की अनुशंसा नहीं की जाती है।';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (फर्मवेयर पर जो मेमोरी एट्रिब्यूट टेबल (MAT) का समर्थन करता है, इसे जांचने की अनुशंसा की जाती है। इसे आमतौर पर SyncRuntimePermissions के साथ संयोजन में उपयोग किया जाता है। यह आइटम EnableWriteUnprotector के साथ संघर्ष कर सकता है। दोनों में से एक को चुनने की सिफारिश की जाती है। यह आमतौर पर 8 वीं पीढ़ी के बाद के प्लेटफार्मों पर लागू होता है, और कुछ पुराने प्लेटफार्मों पर भी लागू होता है)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (इस समस्या को ठीक करता है कि मेमोरी इंजेक्ट करते समय हार्डवेयर अनुमतियाँ इंजेक्ट नहीं कर सकता है। आम तौर पर, यह समस्या 2018 के बाद मदरबोर्ड में मौजूद होती है। यदि आप इस विकल्प के कारण विंडोज में प्रवेश नहीं कर सकते हैं, तो कृपया इसे चालू करें। यह आइटम आमतौर पर RebuildAppleMemoryMap के संयोजन में उपयोग किया जाता है)';

  @override
  String get autoGen5334 =>
      'दूसरी पीढ़ी का सीपीयू - तीसरी पीढ़ी का मदरबोर्ड हाइब्रिड';

  @override
  String get autoGen5335 =>
      'तीसरी पीढ़ी का सीपीयू - दूसरी पीढ़ी का मदरबोर्ड हाइब्रिड';

  @override
  String get autoGen5336 =>
      'कुछ समय के लिए कोर डिस्प्ले को चलाए बिना इंस्टॉलेशन पूरा करें (इससे कोर डिस्प्ले बफर फ्रेम समस्या के कारण होने वाली काली स्क्रीन और कर्नेल क्रैश समस्याओं से बचा जा सकता है)';

  @override
  String get autoGen5337 => 'नकली डिवाइस आईडी';

  @override
  String get autoGen5338 =>
      'कोर डिस्प्ले का उपयोग केवल त्वरण और गणना कार्यों के लिए किया जाता है, आउटपुट डिस्प्ले के रूप में नहीं (स्वतंत्र ग्राफिक्स कार्ड आउटपुट डिस्प्ले)';

  @override
  String get autoGen5339 => 'HD3000, HD P3000 और अन्य कोर डिस्प्ले';

  @override
  String get autoGen5340 => 'HD4000, HD P4000 और अन्य कोर डिस्प्ले';

  @override
  String get autoGen5341 => 'HD4400, HD4600, HD P4600 और अन्य कोर डिस्प्ले';

  @override
  String get autoGen5342 => 'आइरिस प्रो 6200/6300 और अन्य कोर डिस्प्ले';

  @override
  String get autoGen5343 =>
      'HD5600 कोर डिस्प्ले (P6200, P6300 नकली हो सकता है)';

  @override
  String get autoGen5344 => 'HD6000, आइरिस 6100 और अन्य कोर डिस्प्ले';

  @override
  String get autoGen5345 =>
      'HD520, HD530 और अन्य नकली HD620 कोर डिस्प्ले (वेंचुरा और उससे ऊपर के सिस्टम पर लागू)';

  @override
  String get autoGen5346 =>
      'HD520, HD530 और अन्य नकली HD620 कोर डिस्प्ले (वेंचुरा और इसके बाद के सिस्टम पर लागू, वैकल्पिक)';

  @override
  String get autoGen5347 =>
      'HD530, HD P530 और अन्य 500 श्रृंखला कोर डिस्प्ले (मोंटेरे और उससे नीचे के सिस्टम पर लागू)';

  @override
  String get autoGen5348 => 'एचडी 630, एचडी पी630 और अन्य कोर डिस्प्ले';

  @override
  String get autoGen5349 =>
      'HD 630, P630 और अन्य नकली UHD630 कोर डिस्प्ले (विकल्प 1)';

  @override
  String get autoGen5350 =>
      'HD 630, P630 और अन्य नकली UHD630 कोर डिस्प्ले (विकल्प 2)';

  @override
  String get autoGen5351 => 'UHD 630 न्यूक्लियर डिस्प्ले आउटपुट समाधान एक';

  @override
  String get autoGen5352 => 'यूएचडी 630 कोर डिस्प्ले आउटपुट केस 2';

  @override
  String get autoGen5353 =>
      'इंटेल एचडी ग्राफिक्स (उदाहरण के लिए: i3 380M, i5 480M बिल्ट-इन कोर डिस्प्ले के साथ आता है)';

  @override
  String get autoGen5354 =>
      'HD3000 कोर डिस्प्ले आउटपुट डिस्प्ले, 1366x768 और नीचे के रिज़ॉल्यूशन के लिए उपयुक्त)';

  @override
  String get autoGen5355 =>
      '1600X900 से ऊपर के रिज़ॉल्यूशन के लिए समर्थन सक्षम करें';

  @override
  String get autoGen5356 =>
      'HD3000 न्यूक्लियर डिस्प्ले आउटपुट डिस्प्ले, 1600x900 और उससे ऊपर के रिज़ॉल्यूशन के लिए उपयुक्त)';

  @override
  String get autoGen5357 =>
      'HD4000 कोर डिस्प्ले ड्राइवर समाधान एक, 1366x768 और उससे नीचे के रिज़ॉल्यूशन के लिए उपयुक्त, LVDS लिंक विधि';

  @override
  String get autoGen5358 =>
      'HD4000 कोर डिस्प्ले ड्राइवर समाधान दो, 1600x900 और उससे अधिक रिज़ॉल्यूशन वाले LVDS लिंक मोड के लिए उपयुक्त, मल्टी-स्क्रीन आउटपुट के लिए अधिक पैच कॉन्फ़िगरेशन की आवश्यकता हो सकती है)';

  @override
  String get autoGen5359 =>
      'एचडी4000 कोर डिस्प्ले ड्राइवर समाधान तीन, ईडीपी कनेक्शन वाले मॉनिटर के लिए उपयुक्त)';

  @override
  String get autoGen5360 => 'HD4200, HD4400, HD4600 कोर डिस्प्ले';

  @override
  String get autoGen5361 => 'HD5000, HD5100, HD5200 कोर डिस्प्ले';

  @override
  String get autoGen5362 => 'HD5500 कोर डिस्प्ले';

  @override
  String get autoGen5363 => 'HD5600 कोर डिस्प्ले';

  @override
  String get autoGen5364 => 'HD6000 कोर डिस्प्ले';

  @override
  String get autoGen5365 =>
      'HD520, HD530 और अन्य नकली HD620 कोर डिस्प्ले (वेंचुरा और उससे ऊपर के सिस्टम के लिए)';

  @override
  String get autoGen5366 =>
      'एचडी 515, एचडी 520, एचडी 530, एचडी 540, एचडी 550, पी530 कोर डिस्प्ले (मोंटेरे और उससे नीचे के सिस्टम पर लागू)';

  @override
  String get autoGen5367 => 'एचडी 515 न्यूक्लियर डिस्प्ले विकल्प';

  @override
  String get autoGen5368 => 'एचडी 510 कोर डिस्प्ले';

  @override
  String get autoGen5369 =>
      'एचडी 615, एचडी 620, एचडी 630, एचडी 640, एचडी 650 कोर डिस्प्ले';

  @override
  String get autoGen5370 => 'एचडी/यूएचडी 620 कोर डिस्प्ले विकल्प';

  @override
  String get autoGen5371 => 'यूएचडी 617, यूएचडी 620 कोर डिस्प्ले';

  @override
  String get autoGen5372 => 'यूएचडी 630 कोर डिस्प्ले';

  @override
  String get autoGen5373 => 'यूएचडी 620 कोर डिस्प्ले';

  @override
  String get autoGen5374 => 'इंटेल एलरिस प्लस 655 कोर डिस्प्ले';

  @override
  String get autoGen5375 => 'G4/G7 श्रृंखला कोर डिस्प्ले';

  @override
  String get autoGen5376 => 'HD3000 न्यूक्लियर डिस्प्ले आउटपुट डिस्प्ले';

  @override
  String get autoGen5377 => 'HD4000 न्यूक्लियर डिस्प्ले आउटपुट डिस्प्ले';

  @override
  String get autoGen5378 =>
      'HD4200, HD4400, HD4600, HD P4600 और अन्य कोर डिस्प्ले (कोर डिस्प्ले के उन्नत कॉन्फ़िगरेशन में चौथी पीढ़ी के कोर डिस्प्ले समर्पित पैच की जांच करने की अनुशंसा की जाती है, और जो छोटी समस्याएं हो सकती हैं उन्हें ठीक कर दिया गया है)';

  @override
  String get autoGen5379 => 'एचडी 515 कोर डिस्प्ले';

  @override
  String get autoGen5380 => 'एचडी 520/530 कोर डिस्प्ले';

  @override
  String get autoGen5381 => 'एचडी 540/550 कोर डिस्प्ले';

  @override
  String get autoGen5382 => 'एचडी 580 कोर डिस्प्ले';

  @override
  String get autoGen5383 =>
      'HD P530 कोर डिस्प्ले (जैसे e3 1245v5 बिल्ट-इन कोर डिस्प्ले के साथ आता है)';

  @override
  String get autoGen5384 => 'एचडी 615 कोर डिस्प्ले';

  @override
  String get autoGen5385 => 'एचडी 630, एचडी पी630 कोर डिस्प्ले';

  @override
  String get autoGen5386 => 'एचडी 640/650 कोर डिस्प्ले';

  @override
  String get autoGen5387 => 'एचडी/यूएचडी 620 कोर डिस्प्ले';

  @override
  String get autoGen5388 => 'यूएचडी 620/630 कोर डिस्प्ले';

  @override
  String get autoGen5389 => 'यूएचडी 655 कोर डिस्प्ले';

  @override
  String get autoGen5390 =>
      'तत्काल वेक-अप समस्या को ठीक करने के लिए GPRW का नाम बदलकर XPRW कर दें (ध्यान दें: इसके कारण USB कीबोर्ड डिवाइस को जगाने में असमर्थ हो सकता है, आप इसे पावर कुंजी के माध्यम से जगा सकते हैं)';

  @override
  String get autoGen5391 =>
      'तत्काल वेक-अप समस्या को ठीक करने के लिए UPRW का नाम बदलकर XPRW कर दें (ध्यान दें: इसके कारण USB कीबोर्ड डिवाइस को जगाने में असमर्थ हो सकता है, आप इसे पावर कुंजी के माध्यम से जगा सकते हैं)';

  @override
  String get autoGen5392 =>
      'I2C ट्रैकपैड का समर्थन करने के लिए GPI0 डिवाइस सक्षम करें';

  @override
  String get autoGen5393 =>
      'macOS कर्नेल एक्सटेंशन के लिए एक आवश्यक ड्राइवर, जो मुख्य रूप से macOS के लिए स्केलेबिलिटी और अनुकूलता प्रदान करता है, जो अन्य डेवलपर्स को macOS को विस्तारित करने के लिए कर्नेल एक्सटेंशन लिखने की अनुमति देता है।';

  @override
  String get autoGen5394 =>
      'उदाहरण के लिए, जो भी हो, AppleALC, VirtualSMC, आदि Lilu.kext के माध्यम से macOS में विभिन्न संशोधन और संवर्द्धन लागू कर सकते हैं, जैसे विभिन्न ग्राफिक्स कार्ड, साउंड कार्ड, वर्चुअल मशीन प्रबंधन आदि का समर्थन करना।';

  @override
  String get autoGen5395 =>
      'Lilu.kext आमतौर पर लोड किया गया पहला macOS कर्नेल एक्सटेंशन है, क्योंकि अन्य प्लगइन्स को इसकी कार्यक्षमता पर भरोसा करने की आवश्यकता हो सकती है। यह सुनिश्चित करता है कि macOS प्रारंभ होने पर प्लगइन सही ढंग से लोड हो';

  @override
  String get autoGen5396 => 'आवश्यक बुनियादी ड्राइवर';

  @override
  String get autoGen5397 =>
      'वास्तविक Apple हार्डवेयर पर, SMC हार्डवेयर सेंसर, पंखे नियंत्रण, पावर प्रबंधन, तापमान सेंसर और बैटरी स्थिति जैसे सिस्टम प्रबंधन कार्यों के प्रबंधन के लिए जिम्मेदार है। वर्चुअलSMC गैर-Apple हार्डवेयर पर ये सुविधाएँ प्रदान करता है ताकि यह सुनिश्चित किया जा सके कि macOS इन सिस्टमों पर ठीक से चल सके';

  @override
  String get autoGen5398 =>
      'गैर-एप्पल हार्डवेयर पर लगभग वास्तविक मैक वातावरण बनाने के लिए अक्सर अन्य कर्नेल एक्सटेंशन जैसे लिलू.केक्स्ट, व्हेवरग्रीन आदि के साथ संयोजन में उपयोग किया जाता है।';

  @override
  String get autoGen5399 => 'ड्राइवर गायब है और macOS ठीक से नहीं चल सकता।';

  @override
  String get autoGen5400 =>
      'यह मुख्य रूप से GPU ग्राफिक्स ड्राइवर सपोर्ट प्रदान करता है। उनमें से अधिकांश को जाँचने की पुरजोर अनुशंसा की जाती है (MacPro7, 1 मॉडल और RX460, RX560 और उससे ऊपर के AMD स्वतंत्र ग्राफ़िक्स उपयोगकर्ता जाँच हटा सकते हैं)। यह आमतौर पर NootRX और NootedRed ड्राइवरों के साथ टकराव करता है। इंस्टालेशन चरण के दौरान एक ही समय में उनका चयन न करें।';

  @override
  String get autoGen5401 =>
      'NVIDIA, AMD और Intel ग्राफ़िक्स कार्ड सहित विभिन्न प्रकार के ग्राफ़िक्स कार्ड का समर्थन करता है। यह एक्सटेंशन सही फ़्रेमबफ़र को ठीक और कॉन्फ़िगर कर सकता है ताकि डिस्प्ले और रिज़ॉल्यूशन ठीक से काम करें';

  @override
  String get autoGen5402 =>
      'ऑडियो और वीडियो आउटपुट ठीक से काम करें यह सुनिश्चित करने के लिए एचडीएमआई और डिस्प्लेपोर्ट (डीपी) कनेक्शन के लिए समर्थन प्रदान करता है';

  @override
  String get autoGen5403 =>
      'अंतर्निर्मित साउंड कार्ड की नकल करने के लिए AppleALC का उपयोग करें (अपेक्षाकृत उत्तम, पसंदीदा विकल्प)';

  @override
  String get autoGen5404 =>
      'वूडूएचडीए यूनिवर्सल साउंड कार्ड का उपयोग करें (बूट के दौरान लोड किया गया, केवल macOS BigSur 11.2.3 और उससे नीचे का समर्थन करता है। उच्चतर macOS संस्करणों को प्रभावी होने के लिए इस ड्राइवर को सिस्टम कर्नेल एक्सटेंशन में जोड़ने की आवश्यकता है। लेखक के परीक्षण के अनुसार, उच्चतम समर्थन macOS Tahoe 26.x आधिकारिक संस्करण है)';

  @override
  String get autoGen5405 =>
      'पुराने प्लेटफ़ॉर्म या AMD प्लेटफ़ॉर्म के लिए USB 3.0 नियंत्रक संगतता ठीक करें';

  @override
  String get autoGen5406 =>
      'इंटेल तीसरी पीढ़ी से पहले पुराने प्लेटफार्मों के सीपीयू पावर प्रबंधन के कारण होने वाली पुनरारंभ समस्या को ठीक करें (AppleIntelCPUPowerManagement कर्नेल क्रैश लॉग, या अटके हुए बूट लोगो, या सिस्टम में प्रवेश करने के तुरंत बाद पुनरारंभ करना आदि के रूप में दिखाया गया है)';

  @override
  String get autoGen5407 =>
      'AMD Ryzen श्रृंखला CPU पावर प्रबंधन को ठीक करें (केवल AMD Ryzen श्रृंखला पर लागू, यदि पावर प्रबंधन के कारण पुनरारंभ समस्याएं हैं, तो आप चेक बॉक्स को हटाने पर विचार कर सकते हैं)';

  @override
  String get autoGen5408 =>
      'बैटरी ड्राइव समाधान 1 (तीसरी पीढ़ी और पुराने प्लेटफ़ॉर्म की नोटबुक पर लागू)';

  @override
  String get autoGen5409 =>
      'बैटरी ड्राइव समाधान 2 (तीसरी पीढ़ी और नए प्लेटफ़ॉर्म की नोटबुक पर लागू)';

  @override
  String get autoGen5410 =>
      'एंबियंट लाइट सेंसर (ऑटोमैटिक स्क्रीन ब्राइटनेस) अगर आपके पास एंबियंट लाइट सेंसर नहीं है तो इसका इस्तेमाल न करें, नहीं तो दिक्कत हो सकती है';

  @override
  String get autoGen5411 =>
      'Asus नोटबुक प्रशंसक नियंत्रण, पावर प्रबंधन और अन्य सिस्टम सेंसर अनुकूलन, आदि को गैर-Asus द्वारा उपयोग के लिए अनुशंसित नहीं किया गया है';

  @override
  String get autoGen5412 =>
      'गैर-लेनोवो मशीनों के लिए लेनोवो नोटबुक फैन नियंत्रण, पावर प्रबंधन और अन्य सिस्टम सेंसर अनुकूलन आदि की अनुशंसा नहीं की जाती है।';

  @override
  String get autoGen5413 =>
      'प्रशंसकों की अधिक सटीक निगरानी और नियंत्रण के लिए डेल लैपटॉप के लिए विशेष सेंसर। गैर-डेल मशीनों के लिए अनुशंसित नहीं।';

  @override
  String get autoGen5414 =>
      'AMD प्रोसेसर की सेंसर जानकारी (जैसे तापमान, बिजली की खपत, आवृत्ति, आदि) को macOS मॉनिटरिंग टूल के सामने लाने की अनुमति देता है। यह ड्राइवर AMD Ryzen सीरीज प्रोसेसर और कुछ AMD FX सीरीज प्रोसेसर को सपोर्ट करता है। अन्य AMD प्रोसेसर अप्रत्याशित समस्याएँ पैदा कर सकते हैं। साथ ही, Sequoia 15 और उससे ऊपर के सिस्टम के कुछ प्लेटफार्मों में संगतता समस्याएं हो सकती हैं, इसलिए सावधानी से चुनें।';

  @override
  String get autoGen5415 =>
      'RX6700, RX6750XT, RX6750GRE और अन्य आधिकारिक तौर पर असमर्थित RX6XXX श्रृंखला के स्वतंत्र ग्राफिक्स का समर्थन करने के लिए उपयोग किया जाता है। व्हेयरग्रीन ड्राइवर के साथ विवाद है। इंस्टालेशन चरण में दोनों का चयन न करें.';

  @override
  String get autoGen5416 =>
      'नवी 21 (बिग सुर और ऊपर), नवी 22/23 (मोंटेरे और ऊपर) का समर्थन करता है, और RX6650, RX6950 और अन्य ग्राफिक्स कार्ड का भी समर्थन करता है';

  @override
  String get autoGen5417 =>
      'पहली बार macOS इंस्टॉल करते समय इस ड्राइवर को जोड़ने से सिस्टम में प्रवेश करने में असमर्थता हो सकती है। स्थापना पूर्ण होने के बाद इसे जोड़ने की अनुशंसा की जाती है।';

  @override
  String get autoGen5418 =>
      'AMD Ryzen 2000~5000 श्रृंखला कोर डिस्प्ले एज और क्रोम ब्राउज़र द्वारा हार्डवेयर त्वरण को बंद नहीं करने के कारण होने वाली धीमी समस्या को ठीक करें (केवल AMD Ryzen श्रृंखला पर लागू, मुख्य रूप से OpenGL रेंडरिंग के उपयोग को कम करना, QQ, क्रोम ब्राउज़र का सामान्य उपयोग। इस ड्राइवर का उपयोग करने से अन्य एप्लिकेशन ठीक से काम नहीं कर सकते हैं, अपना निर्णय स्वयं लें)';

  @override
  String get autoGen5419 =>
      'बैटरी रीडिंग की मरम्मत, कुछ बैटरी डिस्प्ले समस्याओं को ठीक करें';

  @override
  String get autoGen5420 =>
      'गैर-Apple NVMe SSDs के साथ बेहतर अनुकूलता और निष्क्रिय ऊर्जा खपत कम हुई';

  @override
  String get autoGen5421 =>
      'सैमसंग और अन्य की असंगत ब्लैकलिस्टेड NVMe डिस्क टाइमआउट क्रैश समस्या को प्रभावी ढंग से ठीक नहीं कर सकती है';

  @override
  String get autoGen5422 =>
      'अच्छी अनुकूलता वाले NVMe SSD के साथ इस ड्राइवर का उपयोग करने से कर्नेल क्रैश हो सकता है, इसलिए अधिकांश समय सावधानी के साथ इसका उपयोग करें।';

  @override
  String get autoGen5423 =>
      'AMFI को बायपास या अक्षम करने की क्षमता बढ़ाएँ। नोट: इस ड्राइवर को जोड़ने से कुछ एप्लिकेशन खुलने या क्रैश होने में विफल हो सकते हैं। इस समय, आप ड्राइवर को हटाने का प्रयास कर सकते हैं और केवल अक्षम AMFI स्टार्टअप पैरामीटर (जैसे amfi=0x80) का उपयोग कर सकते हैं';

  @override
  String get autoGen5424 =>
      'उस समस्या को ठीक किया गया जहां NVMe सॉलिड स्टेट ड्राइव को बाहरी डिस्क के रूप में पहचाना गया था';

  @override
  String get autoGen5425 =>
      'असमर्थित Mac पर सार्वभौमिक नियंत्रण, नेविगेशन और अन्य फ़ंक्शन अनलॉक करें';

  @override
  String get autoGen5426 =>
      'सामान्य हाइबरनेशन और नींद संबंधी समस्याओं को ठीक करें';

  @override
  String get autoGen5427 =>
      'MacOS को USB कनेक्शन पर Android डिवाइस की टेदरिंग सुविधा का उपयोग करने की अनुमति दें';

  @override
  String get autoGen5428 =>
      'सीपीयू वेरिएबल फ़्रीक्वेंसी ड्राइवर, मुख्य रूप से 11वीं पीढ़ी और उससे ऊपर के प्लेटफ़ॉर्म के लिए MacPro7,1 फ़्रीक्वेंसी रूपांतरण समर्थन प्रदान करता है';

  @override
  String get autoGen5429 =>
      'विशिष्ट मॉडलों के लिए सीपीयू आवृत्ति रूपांतरण डेटा प्रदान करने के लिए सीपीयूफ्रेंड एक डेटा ड्राइवर से लैस है।';

  @override
  String get autoGen5430 =>
      'इंटेल 12वीं पीढ़ी और बाद के सीपीयू आकार और कोर कॉन्फ़िगरेशन को अनुकूलित करें';

  @override
  String get autoGen5431 =>
      'यह सिंगल-कोर प्रदर्शन में सुधार कर सकता है, लेकिन मल्टी-कोर प्रदर्शन में कमी ला सकता है। यह केवल 12वीं पीढ़ी और उससे ऊपर के प्लेटफॉर्म पर लागू है।';

  @override
  String get autoGen5432 =>
      'सीपीयू टीएससी सिंक्रोनाइज़ेशन समाधान एक, आमतौर पर पसंदीदा';

  @override
  String get autoGen5433 =>
      'आमतौर पर मल्टी-कोर X79, X99, X299 और AMD प्लेटफ़ॉर्म में उपयोग किया जाता है';

  @override
  String get autoGen5434 =>
      'अटके हुए ऑपरेशन, अटके हुए बूट लोगो, असामान्य ऑडियो और वीडियो सिंक्रनाइज़ेशन, नींद से जागने में विफलता आदि जैसी समस्याओं को ठीक करने के लिए उपयोग किया जाता है।';

  @override
  String get autoGen5435 =>
      'सीपीयू टीएससी सिंक्रनाइज़ेशन समाधान 2, आमतौर पर एएमडी रायज़ेन और कुछ इंटेल प्लेटफॉर्म पर उपयोग किया जाता है';

  @override
  String get autoGen5436 =>
      'ऑपरेशन लैग, कभी-कभी क्रैश, ऑडियो और वीडियो सिंक्रोनाइज़ेशन असामान्यताएं, स्लीप वेक-अप विफलता आदि जैसी समस्याओं को ठीक करने के लिए उपयोग किया जाता है।';

  @override
  String get autoGen5437 =>
      'AMD Ryzen प्लेटफ़ॉर्म CPU की मल्टी-कोर क्लॉक सिंक्रोनाइज़ेशन समस्या को ठीक करें (केवल AMD Ryzen श्रृंखला पर लागू, ऑपरेशन लैग, अटके हुए बूट लोगो आदि जैसी समस्याओं को ठीक करने के लिए उपयोग किया जाता है। इस ड्राइवर को जोड़ने से अप्रत्याशित समस्याएं हो सकती हैं, ध्यान से चुनें)';

  @override
  String get autoGen5438 =>
      'सीपीयू टीएससी सिंक्रनाइज़ेशन समाधान तीन, आमतौर पर पुराने इंटेल प्लेटफॉर्म और पुराने मैकओएस सिस्टम पर उपयोग किया जाता है';

  @override
  String get autoGen5439 =>
      'मल्टी-कोर X79, X99, X299 और अन्य प्लेटफ़ॉर्म के लिए उपयुक्त, ऑपरेशन लैग और बूट लोगो अटकने जैसी समस्याओं को ठीक करने के लिए उपयोग किया जाता है';

  @override
  String get autoGen5440 =>
      'कुछ इंटेल कोर डिस्प्ले HDMI ऑडियो समस्याओं को ठीक किया गया';

  @override
  String get autoGen5441 =>
      'Apple ID और iCloud में लॉग इन करने में असमर्थ होने की समस्या को ठीक करें, आमतौर पर स्थानीय वायर्ड नेटवर्क कार्ड के बिना नोटबुक के लिए उपयोग किया जाता है';

  @override
  String get autoGen5442 =>
      'नए प्लेटफ़ॉर्म macOS AppleRTC और PC BIOS के बीच टकराव को ठीक करें, जैसे कि RTC के कारण फ़्रीज़, अचानक पुनरारंभ होना, या हाइबरनेशन से अचानक जागना।';

  @override
  String get autoGen5443 =>
      'पीएस इंटरफ़ेस प्रकार कीबोर्ड और माउस ड्राइवर (डेस्कटॉप मदरबोर्ड पीएस राउंड पोर्ट कीबोर्ड और माउस ड्राइवर)';

  @override
  String get autoGen5444 =>
      'पीएस इंटरफ़ेस प्रकार कीबोर्ड ड्राइवर (डेस्कटॉप मदरबोर्ड पीएस राउंड पोर्ट कीबोर्ड ड्राइवर)';

  @override
  String get autoGen5445 =>
      'पीएस इंटरफ़ेस प्रकार माउस ड्राइवर (डेस्कटॉप मदरबोर्ड पीएस राउंड पोर्ट माउस ड्राइवर)';

  @override
  String get autoGen5446 => 'माइक्रोसॉफ्ट सर्फेस समर्पित कीबोर्ड टचपैड ड्राइवर';

  @override
  String get autoGen5447 => 'चमक शॉर्टकट कुंजी ठीक करें';

  @override
  String get autoGen5448 =>
      'AMD Radeon ग्राफ़िक्स कार्ड के प्रदर्शन को अनुकूलित करें, लेकिन कुछ परिदृश्यों के कारण सिस्टम क्रैश हो सकता है या प्रारंभ होने में विफल हो सकता है, इसलिए सावधानीपूर्वक जांच करें';

  @override
  String get autoGen5449 =>
      'RadeonGadget.app को AMD ग्राफ़िक्स कार्ड GPU तापमान और अन्य जानकारी पढ़ने की अनुमति दें';

  @override
  String get autoGen5450 =>
      'मॉनिटरिंग टूल को पढ़ने के लिए AMD GPU तापमान और अन्य जानकारी को वर्चुअलSMC में निर्यात करें';

  @override
  String get autoGen5451 =>
      'पुराने प्लेटफ़ॉर्म जैसे AMD FM1/FM2/AM3 पर USB नियंत्रक संगतता समस्याएँ ठीक की गईं';

  @override
  String get autoGen5452 =>
      'यूनिवर्सल यूएसबी इंजेक्शन समाधान, यूएसबी अनुकूलित नहीं होने पर डिफ़ॉल्ट विकल्प';

  @override
  String get autoGen5453 =>
      'USBToolBox समाधान, आमतौर पर अनुकूलित UTBMap.kext के साथ उपयोग किया जाता है';

  @override
  String get autoGen5454 =>
      'Intel तीसरी पीढ़ी और बाद में अपडेट किए गए प्लेटफ़ॉर्म पर USB3.0 समस्या को ठीक करें (300 श्रृंखला चिपसेट के लिए आवश्यक (H370, B360, H310, Z390 [10.14 और उससे ऊपर के सिस्टम के लिए आवश्यक नहीं], X79, X99, ASRock Intel मदरबोर्ड [B460/Z490+ को छोड़कर])';

  @override
  String get autoGen5455 =>
      'AMD FM1, FM2, AM3 और अन्य पुराने प्लेटफ़ॉर्म पर EHCI USB2.0 संगतता समस्याओं को ठीक करें';

  @override
  String get autoGen5456 =>
      'AMD FM1, FM2, AM3 और अन्य पुराने प्लेटफ़ॉर्म पर XHCI USB3.0 संगतता समस्याओं को ठीक करें';

  @override
  String get autoGen5457 =>
      'इंटेल तीसरी पीढ़ी और पुराने प्लेटफॉर्म वेंचुरा 13 और उससे ऊपर के सिस्टम के सीपीयू पावर प्रबंधन को ठीक करें';

  @override
  String get autoGen5458 =>
      'रीयलटेक श्रृंखला एसडी कार्ड रीडर ड्राइवर (RealtekCardReaderFriend के साथ प्रयुक्त)';

  @override
  String get autoGen5459 =>
      'Realtek कार्ड रीडर अनुकूलता को बेहतर बनाने के लिए RealtekCardReader ड्राइवर का समर्थन करता है';

  @override
  String get autoGen5460 =>
      'SDHC मेमोरी कार्ड डिवाइस ड्राइवर, eMMC और MMC मेमोरी कार्ड का समर्थन करता है';

  @override
  String get autoGen5461 => '100M वायर्ड नेटवर्क कार्ड ड्राइवर';

  @override
  String get autoGen5462 =>
      'RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139 नेटवर्क कार्ड का समर्थन करें';

  @override
  String get autoGen5463 =>
      'आमतौर पर पारंपरिक पुराने प्लेटफार्मों के लिए उपयोग किया जाता है';

  @override
  String get autoGen5464 => 'गीगाबिट नेटवर्क कार्ड ड्राइवर';

  @override
  String get autoGen5465 =>
      'Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V और अन्य नेटवर्क कार्ड का समर्थन करें';

  @override
  String get autoGen5466 => 'गीगाबिट वायर्ड नेटवर्क कार्ड ड्राइवर';

  @override
  String get autoGen5467 =>
      'BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M और अन्य नेटवर्क कार्ड का समर्थन करता है';

  @override
  String get autoGen5468 =>
      'AR8131, AR8132, AR8151, AR8152 और अन्य नेटवर्क कार्ड का समर्थन करता है';

  @override
  String get autoGen5469 =>
      'Realtek RTL8111/8168 B/C/D/E/F/G/H को सपोर्ट करता है, किलर E2500 और उससे ऊपर के नेटवर्क कार्ड को सपोर्ट करता है';

  @override
  String get autoGen5470 =>
      'RealtekRTL8111 नया संस्करण ड्राइवर केवल 10.13.x और उससे ऊपर के सिस्टम का समर्थन कर सकता है';

  @override
  String get autoGen5471 =>
      'AR816x, AR817x, किलर E220x, किलर E2400 और अन्य नेटवर्क कार्ड का समर्थन करता है';

  @override
  String get autoGen5472 =>
      'गीगाबिट (समर्थन 2.5G) वायर्ड नेटवर्क कार्ड ड्राइवर';

  @override
  String get autoGen5473 =>
      'सभी आईजीसी-संगत उपकरणों (i225, i226, i226-V और अन्य वायर्ड नेटवर्क कार्ड) का समर्थन करता है। कुछ उपकरणों की PCI ID IOPCIMatch सूची में नहीं हो सकती है। परीक्षण के लिए इसे स्वयं जोड़ें.';

  @override
  String get autoGen5474 =>
      'AppleEthernetE1000 ड्राइवर की तुलना में, इसमें बेहतर प्रदर्शन और स्थिरता है (मोंटेरे सिस्टम में AppleEthernetE1000 का उपयोग करते समय i226-V कर्नेल घबराहट का कारण बन सकता है)';

  @override
  String get autoGen5475 =>
      'Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 और i211 नेटवर्क कार्ड का समर्थन करें';

  @override
  String get autoGen5476 =>
      'अस्थिरता के मुद्दे हो सकते हैं, बिग सुर संस्करण में बने रहने और स्मॉलट्री का उपयोग करने की अनुशंसा की जाती है';

  @override
  String get autoGen5477 =>
      'आमतौर पर macOS मोंटेरे 12 और उससे ऊपर के सिस्टम पर लागू होता है';

  @override
  String get autoGen5478 =>
      'समर्थन इंटेल 5 सीरीज: 82578LM, 82578LC, 82578DM, 82578DC';

  @override
  String get autoGen5479 => 'समर्थन इंटेल 6 और 7 सीरीज: 82579LM, 82579V';

  @override
  String get autoGen5480 =>
      'समर्थन इंटेल 8 और 9 श्रृंखला: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3';

  @override
  String get autoGen5481 =>
      'इंटेल 100 श्रृंखला का समर्थन करें: I219V, I219LM, I219V2, I219LM2, I219LM3';

  @override
  String get autoGen5482 => 'समर्थन इंटेल 200 श्रृंखला: I219LM, I219V';

  @override
  String get autoGen5483 => 'समर्थन इंटेल 300 श्रृंखला: I219LM, I219V';

  @override
  String get autoGen5484 =>
      'ड्राइवर का रखरखाव एसिडेंथेरा द्वारा किया जाता है। OS X 10.6 ~ 10.8 IntelSnowMausi का उपयोग करता है';

  @override
  String get autoGen5485 =>
      'यह ड्राइवर लौरा मुलर द्वारा प्रदान किया गया है। OS X 10.6 ~ 10.8 IntelSnowMausi का उपयोग करता है';

  @override
  String get autoGen5486 =>
      'RTL8125 पुराना ड्राइवर, Realtek RTL8125 श्रृंखला ईथरनेट कार्ड का समर्थन करता है';

  @override
  String get autoGen5487 =>
      'गीगाबिट (2.5G, 5G को सपोर्ट करता है) वायर्ड नेटवर्क कार्ड ड्राइवर';

  @override
  String get autoGen5488 =>
      'RTL812x के लिए नया ड्राइवर, Realtek RTL8125, RTL8126 श्रृंखला ईथरनेट कार्ड का समर्थन करता है';

  @override
  String get autoGen5489 =>
      'समर्थित मॉडल: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A';

  @override
  String get autoGen5490 =>
      'Intel i211 वायर्ड नेटवर्क कार्ड का समर्थन करता है, यह मॉडल AMD मदरबोर्ड पर आम है';

  @override
  String get autoGen5491 =>
      'आम तौर पर macOS बिग सुर और उससे नीचे के संस्करण पर लागू, macOS मोंटेरी अस्थिर हो सकता है';

  @override
  String get autoGen5492 => 'अनुकूलता: ओएस';

  @override
  String get autoGen5493 => '10G (समर्थन 10G) वायर्ड नेटवर्क कार्ड ड्राइवर';

  @override
  String get autoGen5494 => 'इंटेल X520 का समर्थन करता है,';

  @override
  String get autoGen5495 =>
      'केवल macOS 10.13 और उससे ऊपर के सिस्टम को सपोर्ट करता है';

  @override
  String get autoGen5496 =>
      'BIOS UEFI सेटिंग्स में WoL को बंद करने की अनुशंसा की जाती है';

  @override
  String get autoGen5497 =>
      'उस समस्या को ठीक किया गया जहां डिस्क उपयोगिता कैटालिना 10.15 और उससे नीचे के सिस्टम की स्थापना के दौरान SATA डिस्क को नहीं पहचानती है';

  @override
  String get autoGen5498 =>
      'उस समस्या को ठीक किया गया जहां डिस्क उपयोगिता बिग सुर 11 और उससे ऊपर के सिस्टम की स्थापना प्रक्रिया के दौरान SATA डिस्क को नहीं पहचानती है';

  @override
  String get autoGen5499 =>
      'AMD प्लेटफ़ॉर्म एडोब फ़ैमिली बकेट से संबंधित संगतता समस्याओं को ठीक करें';

  @override
  String get autoGen5500 =>
      'MacOS हाई सिएरा 10.13 ~ macOS Tathoe 26.x को सपोर्ट करता है (आमतौर पर हेलीपोर्ट क्लाइंट के साथ उपयोग किया जाता है)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (नोट: Sequoia 15 सिस्टम को सामान्य रूप से उपयोग करने से पहले OCLP इंटेल-विशिष्ट संशोधित संस्करण के साथ पैच करने की आवश्यकता है!!!)';

  @override
  String get autoGen5502 => 'macOS सोनोमा 14.4 और उससे ऊपर';

  @override
  String get autoGen5503 =>
      'मुख्य रूप से कुछ ब्लूटूथ डिवाइस समस्याओं को ठीक करता है (कुछ ब्रॉडकॉम और अन्य यूएसबी ब्लूटूथ डिवाइस पर लागू)';

  @override
  String get autoGen5504 =>
      'क्वालकॉम वाईफाई, macOS बिग सुर 11.x और उससे नीचे के वर्जन को सपोर्ट करता है';

  @override
  String get autoGen5505 => 'क्वालकॉम (एथेरोस)-एआर9285';

  @override
  String get autoGen5506 => 'क्वालकॉम (एथेरोस)-एआर9380';

  @override
  String get autoGen5507 => 'क्वालकॉम (एथेरोस)-एआर9485';

  @override
  String get autoGen5508 => 'क्वालकॉम (एथेरोस)-एआर9565';

  @override
  String get autoGen5509 => 'क्वालकॉम (एथेरोस)-एआर9463';

  @override
  String get autoGen5510 => 'क्वालकॉम (एथेरोस)-एआर9462';

  @override
  String get autoGen5511 =>
      'सिस्टम संसाधन बर्बादी को कम करने और स्थिरता में सुधार के लिए टच आईडी को अक्षम करें';

  @override
  String get autoGen5512 =>
      'आमतौर पर फ़िंगरप्रिंट पहचान और macOS Big Sur 11 से नीचे वाले नोटबुक के लिए उपयुक्त है';

  @override
  String get autoGen5513 =>
      'TRIM नीति डिफ़ॉल्ट रूप से कॉन्फ़िगर की गई है (अर्थात, SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1. APFS प्रणाली macOS के डिफ़ॉल्ट TRIM टाइमआउट के आधार पर TRIM संचालन करती है, जो TRIM का समर्थन करने वाले अधिकांश SSD पर लागू होता है।';

  @override
  String get autoGen5515 =>
      '2. TRIM का समर्थन करने वाले SSDs पर, macOS स्वचालित रूप से TRIM के निष्पादन का प्रबंधन करता है, जो हटाए गए डेटा ब्लॉक को साफ करने में मदद करता है, SSD लेखन को अधिक कुशल बनाता है, बार-बार लिखने के प्रवर्धन से बचाता है, और लेखन की गति में सुधार करता है।';

  @override
  String get autoGen5516 =>
      '3.TRIM SSD की टूट-फूट को कम करने के लिए अप्रयुक्त ब्लॉकों को नियमित रूप से साफ करेगा, जिससे SSD सेवा जीवन का विस्तार होगा।';

  @override
  String get autoGen5517 =>
      '4. कुछ तृतीय-पक्ष SSD जो TRIM को पूरी तरह से समर्थन नहीं करते हैं, उन्हें TRIM निष्पादित करते समय देरी या यहां तक ​​​​कि फ्रीज का अनुभव हो सकता है, जिससे बूट प्रक्रिया बहुत धीमी हो जाती है।';

  @override
  String get autoGen5518 =>
      'TRIM कार्यक्षमता को पूरी तरह से अक्षम करें (अर्थात SetApfsTrimTimeout = 0 सेट करें)';

  @override
  String get autoGen5519 => 'TRIM को अक्षम करने के लाभ:';

  @override
  String get autoGen5520 =>
      '1. बूट गति में सुधार करें। तृतीय-पक्ष SSDs के लिए जो TRIM का समर्थन नहीं करते हैं या आंशिक रूप से समर्थन करते हैं, स्टार्टअप के दौरान TRIM संचालन का प्रयास करने के कारण macOS देरी का कारण बन सकता है। TRIM को अक्षम करने से यह विलंब समाप्त हो सकता है और बूट गति में सुधार हो सकता है।';

  @override
  String get autoGen5521 =>
      '2. अनुकूलता में सुधार. खराब अनुकूलता वाले कुछ SSD असामान्य क्रैश के जोखिम को कम कर सकते हैं।';

  @override
  String get autoGen5522 =>
      '3. गैर-टीआरआईएम एसएसडी का जीवन बढ़ाएं। उन SSDs पर जो TRIM का समर्थन नहीं करते हैं, TRIM को जबरन सक्षम करने से घिसाव तेज हो सकता है और जीवन प्रभावित हो सकता है। TRIM को अक्षम करने से ऐसे SSD का जीवन बढ़ सकता है।';

  @override
  String get autoGen5523 => 'TRIM को अक्षम करने के नुकसान:';

  @override
  String get autoGen5524 =>
      '1. SSD प्रदर्शन में गिरावट। कुछ SSD में TRIM कचरा संग्रहण तंत्र नहीं होता है। डेटा हटाने के बाद एसएसडी समय पर मुक्त ब्लॉकों को साफ और चिह्नित नहीं कर सकता है, जिससे लेखन की गति धीमी हो सकती है।';

  @override
  String get autoGen5525 =>
      '2. डिस्क स्थान प्रबंधन दक्षता कम हो जाती है। इसे अक्षम करने के बाद, SSD नियंत्रक को कचरा संग्रहण के लिए अधिक समय और संसाधनों की आवश्यकता होती है, जिससे विखंडन बढ़ सकता है और स्थान प्रबंधन दक्षता कम हो सकती है।';

  @override
  String get autoGen5526 =>
      '3. SSD का जीवन छोटा करें। टीआरआईएम का समर्थन करने वाले एसएसडी के लिए, टीआरआईएम को अक्षम करने के बाद, एसएसडी लेखन प्रक्रिया को अनुकूलित नहीं कर सकता है, जिससे स्टोरेज ब्लॉक का घिसाव बढ़ जाएगा, इस प्रकार टीआरआईएम का समर्थन करने वाले एसएसडी का जीवन छोटा हो जाएगा।';

  @override
  String get autoGen5527 =>
      'हालाँकि TRIM को अक्षम करने से बूट गति में कुछ सुधार आ सकते हैं, TRIM का समर्थन करने वाले आधुनिक SSDs के लिए, दीर्घकालिक प्रदर्शन और स्थिरता के लिए TRIM को चालू रखने की अनुशंसा की जाती है। यह गति वृद्धि आम तौर पर छोटी होती है और इसका केवल कुछ असंगत एसएसडी पर महत्वपूर्ण प्रभाव पड़ेगा।';

  @override
  String get autoGen5528 =>
      'सीपीयू वेरिएबल फ़्रीक्वेंसी ड्राइवर, यहां मुख्य रूप से 11वीं से 14वीं पीढ़ी का MacPro7,1 वेरिएबल फ़्रीक्वेंसी सपोर्ट प्रदान करता है';

  @override
  String get autoGen5529 => 'रियलटेक एसडी कार्ड रीडर और इसका सहायक ड्राइवर';

  @override
  String get autoGen5530 =>
      'तीसरी पीढ़ी और पुराने प्लेटफार्मों से नीचे के लिए उपयुक्त, पीएस/2 बस प्रोटोकॉल के आधार पर जुड़े इनपुट डिवाइस, जैसे कि कीबोर्ड, माउस, टचपैड इत्यादि। यह कुछ हद तक मल्टी-टच फ़ंक्शन का एहसास कर सकता है, लेकिन समर्थन सीमित है।';

  @override
  String get autoGen5531 =>
      'तीसरी पीढ़ी और उससे ऊपर के प्लेटफार्मों के लिए उपयुक्त, PS/2 बस प्रोटोकॉल के आधार पर जुड़े इनपुट डिवाइस, जैसे कि कीबोर्ड, माउस, टचपैड, आदि। सब-ड्राइवर के माध्यम से PS/2 टचपैड के लिए समर्थन प्रदान करें, और मल्टी-टच फ़ंक्शन की एक निश्चित डिग्री प्राप्त कर सकते हैं, लेकिन समर्थन सीमित है।';

  @override
  String get autoGen5532 =>
      'PS2 कीबोर्ड I2C बस प्रोटोकॉल के आधार पर टचपैड, टच स्क्रीन, सेंसर और जुड़े अन्य इनपुट डिवाइस के लिए उपयुक्त है। MacOS के मूल स्पर्श अनुभव को अनुकरण करने के लिए मल्टी-टच जेस्चर समर्थन प्रदान करता है।';

  @override
  String get autoGen5533 =>
      'PS2 कीबोर्ड, RMI4 प्रोटोकॉल बस प्रोटोकॉल के आधार पर कनेक्टेड सिनैप्टिक्स टचपैड के लिए उपयुक्त। मैकओएस के मूल टचपैड के समान मल्टी-टच और जेस्चर क्षमताएं प्रदान करने वाले सिनैप्टिक्स उपकरणों को बेहतर समर्थन देने पर ध्यान केंद्रित करें।';

  @override
  String get autoGen5534 =>
      'PS2 कीबोर्ड, RMI4 प्रोटोकॉल का उपयोग करके I2C बस-आधारित टच डिवाइस और सिनैप्टिक्स टचपैड के लिए उपयुक्त है। RMII2C VoodooI2C और VoodooRMI के फायदों को जोड़ता है।';

  @override
  String get autoGen5535 =>
      'PS/2 बस प्रोटोकॉल कनेक्शन पर आधारित गोल कीबोर्ड और माउस ड्राइवर';

  @override
  String get autoGen5536 =>
      'Microsoft Surface समर्पित कीबोर्ड, टचपैड और टच स्क्रीन ड्राइवर संयोजन।';

  @override
  String get autoGen5537 => 'ब्रॉडकॉम बीसीएम94360 ड्राइवर-मुक्त श्रृंखला';

  @override
  String get autoGen5538 =>
      'ऐप्पल एयरपोर्ट और फेनवी ड्राइवर-मुक्त कार्ड, वेंचुरा और नीचे ड्राइवर-मुक्त हैं, और पैच सोनोमा 14 और सिकोइया 15 का समर्थन करता है! नोट: सोनोमा 14 और उससे ऊपर के सिस्टम को सामान्य रूप से उपयोग करने से पहले ओसीएलपी के साथ पैच करने की आवश्यकता है! ! !';

  @override
  String get autoGen5539 => 'ब्रॉडकॉम BCM943XX गैर-ड्राइवर-मुक्त श्रृंखला';

  @override
  String get autoGen5540 =>
      'Apple AirPort और Fenvi, Catalina और नीचे के कार्ड के अलावा अन्य कार्ड ड्राइवर-मुक्त हैं, और पैच Sonoma 14 और Sequoia 15 को सपोर्ट करता है! नोट: सोनोमा 14 और उससे ऊपर के सिस्टम को सामान्य रूप से उपयोग करने से पहले ओसीएलपी के साथ पैच करने की आवश्यकता है! ! !';

  @override
  String get autoGen5541 => 'पुराना ब्रॉडकॉम BCM4331';

  @override
  String get autoGen5542 =>
      'ध्यान दें कि मोंटेरी 12 या उससे ऊपर के सिस्टम को सामान्य रूप से उपयोग करने से पहले ओसीएलपी पैच का उपयोग करना होगा! ! !';

  @override
  String get autoGen5543 => 'पुराना ब्रॉडकॉम BCM43224';

  @override
  String get autoGen5544 => 'क्वालकॉम (एथेरोस) वाईफाई मॉडल ड्राइवर';

  @override
  String get autoGen5545 => 'क्वालकॉम वाईफाई मैनुअल विकल्प';

  @override
  String get autoGen5546 =>
      'क्वालकॉम (एथेरोस) वाईफाई बिग सुर और निम्नलिखित निर्भरताएँ';

  @override
  String get autoGen5547 =>
      'macOS बिग सुर 11 और उससे नीचे के सिस्टम विशिष्ट मॉडल ड्राइवरों से मिलान करने के लिए HS80211Family का उपयोग करते हैं';

  @override
  String get autoGen5548 =>
      'क्वालकॉम (एथेरोस) वाईफाई मोंटेरे और उससे ऊपर की निर्भरता';

  @override
  String get autoGen5549 =>
      'macOS मोंटेरे 12 और उससे ऊपर के सिस्टम IO80211ElCap संयोजन का उपयोग करते हैं';

  @override
  String get autoGen5550 =>
      'सरफेस प्रो 7 और बुक 3 श्रृंखला के लिए \"सिस्टम प्राथमिकताएं\" में बैटरी पहचान समस्या को ठीक किया गया';

  @override
  String get autoGen5551 =>
      'कुछ HP ब्रांड कंप्यूटरों की रीयल-टाइम घड़ी प्रारंभ करते समय POST त्रुटि की समस्या को ठीक किया गया।';

  @override
  String get autoGen5552 =>
      'आरटीसी वेक-अप योजना को अक्षम करें और नींद के बाद स्वचालित वेक-अप की समस्या को ठीक करें';

  @override
  String get autoGen5553 => 'जनरेशन 0-पेन्रीन-775 प्लेटफार्म';

  @override
  String get autoGen5554 => 'जनरेशन 1-लिनफ़ील्ड-1156 प्लेटफ़ॉर्म';

  @override
  String get autoGen5555 => 'दूसरी पीढ़ी-सैंडी ब्रिज-1155 प्लेटफार्म';

  @override
  String get autoGen5556 => 'तीसरी पीढ़ी-आइवी ब्रिज-1155 प्लेटफार्म';

  @override
  String get autoGen5557 => 'चौथी पीढ़ी-हैसवेल-1150 प्लेटफार्म';

  @override
  String get autoGen5558 => '5वीं पीढ़ी-ब्रॉडवेल-1150 प्लेटफॉर्म';

  @override
  String get autoGen5559 => 'छठी पीढ़ी-स्काईलेक-1151 प्लेटफार्म';

  @override
  String get autoGen5560 => '7वीं पीढ़ी-केबी झील-1151 प्लेटफार्म';

  @override
  String get autoGen5561 => '8वीं पीढ़ी-कॉफ़ी लेक-1151 प्लेटफार्म';

  @override
  String get autoGen5562 => '9वीं पीढ़ी-कॉफी लेक-1151 प्लेटफार्म';

  @override
  String get autoGen5563 => '10वीं पीढ़ी-धूमकेतु झील-1200 प्लेटफार्म';

  @override
  String get autoGen5564 => '11वीं पीढ़ी-रॉकेट लेक-1200 प्लेटफार्म';

  @override
  String get autoGen5565 => '12वीं पीढ़ी-एल्डर लेक-1700 प्लेटफार्म';

  @override
  String get autoGen5566 => '13वीं पीढ़ी-रैप्टर लेक-1700 प्लेटफार्म';

  @override
  String get autoGen5567 => '14वीं पीढ़ी-रैप्टर लेक रिफ्रेश-1700 प्लेटफॉर्म';

  @override
  String get autoGen5568 => '15वीं पीढ़ी-एरो लेक-1851 प्लेटफार्म';

  @override
  String get autoGen5569 => 'जनरेशन 0-पेन्रीन-नोटबुक';

  @override
  String get autoGen5570 => 'पहली पीढ़ी-क्लार्क्सफील्ड और अरंडेल-नोटबुक';

  @override
  String get autoGen5571 => 'दूसरी पीढ़ी-सैंडी ब्रिज-नोटबुक';

  @override
  String get autoGen5572 => 'तीसरी पीढ़ी-आइवी ब्रिज-नोटबुक';

  @override
  String get autoGen5573 => 'चौथी पीढ़ी-हैसवेल-लैपटॉप';

  @override
  String get autoGen5574 => '5वीं पीढ़ी-ब्रॉडवेल-नोटबुक';

  @override
  String get autoGen5575 => 'छठी पीढ़ी-स्काईलेक-नोटबुक';

  @override
  String get autoGen5576 => '7वीं पीढ़ी-कैबी लेक-नोटबुक';

  @override
  String get autoGen5577 => '8वीं पीढ़ी-कॉफी लेक-नोटबुक';

  @override
  String get autoGen5578 => '9वीं पीढ़ी-कॉफी लेक-नोटबुक';

  @override
  String get autoGen5579 => '10वीं पीढ़ी-धूमकेतु झील-लैपटॉप';

  @override
  String get autoGen5580 => '10वीं पीढ़ी-आइस लेक-लैपटॉप';

  @override
  String get autoGen5581 => '11वीं पीढ़ी-टाइगर लेक-नोटबुक';

  @override
  String get autoGen5582 => '12वीं पीढ़ी-एल्डर लेक-नोटबुक';

  @override
  String get autoGen5583 => '13वीं पीढ़ी-रैप्टर लेक-नोटबुक';

  @override
  String get autoGen5584 => '14वीं पीढ़ी-रैप्टर लेक रिफ्रेश-नोटबुक';

  @override
  String get autoGen5585 => 'जनरेशन 0-पेन्रीन-मिनी होस्ट';

  @override
  String get autoGen5586 => 'पहली पीढ़ी-क्लार्क्सफ़ील्ड और अरंडेल-मिनी होस्ट';

  @override
  String get autoGen5587 => 'दूसरी पीढ़ी-सैंडी ब्रिज-मिनी होस्ट';

  @override
  String get autoGen5588 => 'तीसरी पीढ़ी-आइवी ब्रिज-मिनी होस्ट';

  @override
  String get autoGen5589 => 'चौथी पीढ़ी-हैसवेल-मिनी होस्ट';

  @override
  String get autoGen5590 => '5वीं पीढ़ी-ब्रॉडवेल-मिनी होस्ट';

  @override
  String get autoGen5591 => 'छठी पीढ़ी-स्काइलेक-मिनी होस्ट';

  @override
  String get autoGen5592 => '7वीं पीढ़ी-कैबी लेक-मिनी होस्ट';

  @override
  String get autoGen5593 => '8वीं पीढ़ी-कॉफ़ी लेक-मिनी होस्ट';

  @override
  String get autoGen5594 => '9वीं पीढ़ी-कॉफ़ी लेक-मिनी होस्ट';

  @override
  String get autoGen5595 => '10वीं पीढ़ी-धूमकेतु झील-मिनी मेजबान';

  @override
  String get autoGen5596 => '10वीं पीढ़ी-आइस लेक-मिनी होस्ट';

  @override
  String get autoGen5597 => '11वीं पीढ़ी-टाइगर लेक-मिनी होस्ट';

  @override
  String get autoGen5598 => '12वीं पीढ़ी-एल्डर लेक-मिनी होस्ट';

  @override
  String get autoGen5599 => '13वीं पीढ़ी-रैप्टर लेक-मिनी होस्ट';

  @override
  String get autoGen5600 => '14वीं पीढ़ी-रैप्टर लेक रिफ्रेश-मिनी होस्ट';

  @override
  String get autoGen5601 => 'जनरेशन 1-नेहलेम और वेस्टमेरे-एक्स58 प्लेटफॉर्म';

  @override
  String get autoGen5602 => 'दूसरी पीढ़ी-सैंडी ब्रिज-ई-एक्स79 प्लेटफार्म';

  @override
  String get autoGen5603 => 'तीसरी पीढ़ी-आइवी ब्रिज-ई-एक्स79 प्लेटफॉर्म';

  @override
  String get autoGen5604 => 'चौथी पीढ़ी-हैसवेल-ई-एक्स99 प्लेटफॉर्म';

  @override
  String get autoGen5605 => '5वीं पीढ़ी-ब्रॉडवेल-ई-एक्स99 प्लेटफॉर्म';

  @override
  String get autoGen5606 => 'छठी पीढ़ी-स्काईलेक-X&W-X299 प्लेटफॉर्म';

  @override
  String get autoGen5607 => '10वीं पीढ़ी-कैस्केड लेक-एक्स&डब्ल्यू प्लेटफार्म';

  @override
  String get autoGen5608 => 'बुलडोजर(15 घंटे) और जगुआर(16 घंटे)-नोटबुक';

  @override
  String get autoGen5609 => 'Ryzen-नोटबुक';

  @override
  String get autoGen5610 => 'बुलडोजर(15 घंटे) और जगुआर(16 घंटे)-मिनी होस्ट';

  @override
  String get autoGen5611 => 'राइज़ेन-मिनी होस्ट';

  @override
  String get autoGen5612 => 'राइजेन और थ्रेडिपर(17 घंटे और 19 घंटे)-सर्वर';

  @override
  String get autoGen5613 => 'परीक्षा';

  @override
  String get autoGen5614 => 'एनवीआरएएम परीक्षण';

  @override
  String get autoGen5615 => 'होम निर्देशिका प्राप्त करने में असमर्थ';

  @override
  String get autoGen5616 => 'स्रोत निर्देशिका मौजूद नहीं है';

  @override
  String get autoGen5617 => 'डेस्कटॉप निर्देशिका प्राप्त करने में असमर्थ';

  @override
  String get autoGen5618 => 'पथ जाँच विफल हो जाती है और खाली पथ लौटाता है';

  @override
  String get autoGen5619 =>
      'प्लिस्ट फ़ाइल जानकारी प्राप्त करने में विफल रहा और लौटाया गया परिणाम अधूरा था।';

  @override
  String get autoGen5620 =>
      'नोट: नॉर्मलाइज़हेडर्स सक्षम है और तालिका आईडी में गैर-मुद्रण योग्य वर्ण हैं!';

  @override
  String get autoGen5621 =>
      'नोट: नॉर्मलाइज़हेडर्स सक्षम नहीं है और तालिका आईडी में \'\'?\'\' वर्ण है!';

  @override
  String get autoGen5622 => 'कोई लक्ष्य config.plist फ़ाइल चयनित नहीं!';

  @override
  String get autoGen5623 => '=> config.plist प्रकार निर्धारित करने में असमर्थ!';

  @override
  String get autoGen5624 => '=> SSDT तालिका नहीं मिली! इस पर से कूद जाओ...';

  @override
  String get autoGen5625 => '=> डुप्लिकेट SSDT तालिका नहीं मिली!';

  @override
  String get autoGen5626 => '=> पैच नहीं मिला! इस पर से कूद जाओ...';

  @override
  String get autoGen5627 => '=> डुप्लिकेट पैच नहीं मिला!';

  @override
  String get autoGen5628 => '=> ड्रॉप पैच नहीं मिला! इस पर से कूद जाओ...';

  @override
  String get autoGen5629 => '=> डुप्लिकेट ड्रॉप पैच नहीं मिला!';

  @override
  String get autoGen5630 =>
      '=> कोई क्विर्क कॉन्फ़िगरेशन नहीं मिला जिसे अद्यतन करने की आवश्यकता हो! इस पर से कूद जाओ...';

  @override
  String get autoGen5631 =>
      '=> लक्ष्य क्विर्क कॉन्फ़िगरेशन की जाँच की जा रही है...';

  @override
  String get autoGen5632 =>
      'वर्तमान कॉन्फ़िगरेशन कॉन्फ़िगरेशन फ़ाइल का बैकअप लिया जा रहा है...';

  @override
  String get autoGen5633 =>
      'SSDT फ़ाइलों की प्रतिलिपि बनाने की तैयारी की जा रही है...';

  @override
  String get autoGen5634 => 'कॉन्फ़िगरेशन सफलतापूर्वक सहेजा गया!';

  @override
  String get autoGen5635 => 'मर्ज पूरा हो गया है!';

  @override
  String get autoGen5636 => 'विलय विफल!';

  @override
  String get autoGen5637 =>
      'नोट: मर्ज प्रक्रिया के दौरान संभावित त्रुटियां पाई जाती हैं, कृपया जांचें और उन्हें ठीक करें!';

  @override
  String get autoGen5638 =>
      'नोट: वर्तमान कॉन्फ़िगरेशन लक्ष्य EFI मोड को ओवरराइड करने के लिए सेट नहीं किया गया है!';

  @override
  String get autoGen5639 => 'आपको निम्नलिखित कार्य मैन्युअल रूप से करने होंगे:';

  @override
  String get autoGen5640 => 'मूल शब्दकोश तत्व नहीं मिला';

  @override
  String get autoGen5641 =>
      'IRQ विवादों को दूर करें, जिसका उपयोग अक्सर साउंड कार्ड की मरम्मत के लिए किया जाता है';

  @override
  String get autoGen5642 =>
      '• एचपीईटी (उच्च परिशुद्धता इवेंट टाइमर) एक हार्डवेयर मॉड्यूल है जिसका उपयोग सिस्टम टाइमिंग के लिए किया जाता है।\n• MacOS के तहत, कुछ मदरबोर्ड HPET डिवाइस IRQ (इंटरप्ट रिक्वेस्ट) टकराव का कारण बन सकते हैं, जो ऑडियो डिवाइस के सामान्य संचालन को प्रभावित करेगा, जिससे सिस्टम अस्थिर हो जाएगा या शुरू करने में भी असमर्थ हो जाएगा।\n• यह पैच आईआरक्यू विवादों से बचने के लिए एचपीईटी-संबंधित एसीपीआई डिवाइस परिभाषाओं को समायोजित करता है, यह सुनिश्चित करता है कि मैकओएस एचपीईटी टाइमर का सही ढंग से उपयोग कर सकता है, साउंड कार्ड की समस्याओं को ठीक कर सकता है और सिस्टम स्थिरता में सुधार कर सकता है।';

  @override
  String get autoGen5643 =>
      'नकली ईसी और इंजेक्ट यूएसबी पावर विशेषताएँ (इंटेल 6वीं पीढ़ी और उससे ऊपर के डेस्कटॉप कंप्यूटरों पर लागू)';

  @override
  String get autoGen5644 =>
      '• इंटेल छठी पीढ़ी और उससे ऊपर के डेस्कटॉप कंप्यूटरों पर लागू\n• यह पैच सिस्टम के मूल EC डिवाइस को अक्षम कर देगा और फिर macOS को यह सोचने के लिए \"ट्रिक\" करने के लिए एक वर्चुअल EC डिवाइस बनाएगा कि एक संगत EC मौजूद है, इस प्रकार लापता EC डिवाइस के कारण होने वाली स्टार्टअप समस्याओं का समाधान हो जाएगा। \n• संभावित समस्याओं को ठीक करने के लिए आवश्यक USB पावर गुण जोड़े गए। विलय के समतुल्य: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'केवल नकली ईसी, मौजूदा ईसी को प्रभावित नहीं करता है, और एक ही समय में यूएसबी पावर विशेषताओं को इंजेक्ट करता है (इंटेल 6वीं पीढ़ी और उससे ऊपर के नोटबुक पर लागू)';

  @override
  String get autoGen5646 =>
      '• इंटेल छठी पीढ़ी और उससे ऊपर की नोटबुक पर लागू\n• नोटबुक के लिए उपयुक्त, यह मौजूदा ईसी को हटाता या संशोधित नहीं करता है, लेकिन मूल ईसी डिवाइस को नुकसान पहुंचाने से बचने और नोटबुक पावर प्रबंधन और कीबोर्ड बैकलाइट जैसी कार्यात्मक असामान्यताओं को रोकने के लिए अलग से एक नया वर्चुअल ईसी बनाता है।\n• संभावित समस्याओं को ठीक करने के लिए आवश्यक USB पावर गुण जोड़े गए। विलय के समतुल्य: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 =>
      'नकली ईसी (इंटेल 5वीं पीढ़ी और उससे नीचे के डेस्कटॉप कंप्यूटरों पर लागू)';

  @override
  String get autoGen5648 =>
      '• इंटेल 5वीं पीढ़ी और उससे नीचे के डेस्कटॉप के लिए उपयुक्त\n• यह पैच सिस्टम के मूल EC डिवाइस को अक्षम कर देगा और फिर macOS को यह सोचने के लिए \"ट्रिक\" करने के लिए एक वर्चुअल EC डिवाइस बनाएगा कि एक संगत EC मौजूद है, इस प्रकार लापता EC डिवाइस के कारण होने वाली स्टार्टअप समस्याओं का समाधान हो जाएगा।';

  @override
  String get autoGen5649 =>
      'केवल नकली ईसी, मौजूदा ईसी को प्रभावित नहीं करता (इंटेल 5वीं पीढ़ी और उससे नीचे की नोटबुक पर लागू)';

  @override
  String get autoGen5650 =>
      '• इंटेल 5वीं पीढ़ी और उससे नीचे की नोटबुक पर लागू\n• यह मौजूदा ईसी को हटाता या संशोधित नहीं करता है, लेकिन मूल ईसी डिवाइस को नुकसान पहुंचाने और नोटबुक पावर प्रबंधन और कीबोर्ड बैकलाइट जैसी कार्यात्मक असामान्यताओं को रोकने के लिए अलग से एक नया वर्चुअल ईसी बनाता है।';

  @override
  String get autoGen5651 =>
      'यूएसबी पावर विशेषता सुधार (इंटेल 6वीं पीढ़ी और नए प्लेटफॉर्म पर लागू)';

  @override
  String get autoGen5652 =>
      '• Intel स्काईलेक छठी पीढ़ी और उससे ऊपर, सर्वर हैसवेल-ई चौथी पीढ़ी और उससे ऊपर, AMD Ryzen और अन्य प्लेटफ़ॉर्म पर लागू\n• इंटेल स्काईलेक और नए प्रोसेसर से शुरू करके, मैकओएस को यह सुनिश्चित करने के लिए विशिष्ट यूएसबी पावर गुणों की आवश्यकता होती है कि यूएसबी डिवाइस ठीक से संचालित और पहचाने जाते हैं।\n• यह पैच macOS आवश्यकताओं का अनुपालन करने के लिए USB पोर्ट के पावर प्रबंधन को सही करता है और असामान्य USB डिवाइस पहचान, अपर्याप्त बिजली आपूर्ति और हॉट-प्लग में असमर्थता जैसी समस्याओं का समाधान करता है।\n• नोटबुक के लिए: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml दोनों का संयोजन SSDT-EC-USBX-LAPTOP.aml के बराबर है\n• डेस्कटॉप के लिए: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml दोनों का संयोजन SSDT-EC-USBX-DESKTOP.aml के बराबर है';

  @override
  String get autoGen5653 =>
      'सीपीयू कोर पहचान, आवृत्ति समायोजन और ऊर्जा बचत सुधार को सक्षम करना';

  @override
  String get autoGen5654 =>
      '• एसएसडीटी-प्लग इंटेल हैसवेल चौथी पीढ़ी ~ 11वीं पीढ़ी, सर्वर हैसवेल-ई चौथी पीढ़ी और उससे ऊपर के प्लेटफार्मों के लिए उपयुक्त है (एसएसडीटी-प्लग को अनुकूलित करते समय, टूल स्वचालित रूप से इसका पता लगाता है और उत्पन्न करता है!)\n• SSDT-PLUG-ALT इंटेल एल्डर लेक 12वीं पीढ़ी और उससे ऊपर और AMD Ryzen प्लेटफ़ॉर्म के लिए उपयुक्त है (SSDT-PLUG को अनुकूलित करते समय, टूल स्वचालित रूप से इसका पता लगाता है और उत्पन्न करता है और इसे SSDT-PLUG-ALT में बदल देता है!)\n• सीपीयू आवृत्ति को समायोजित करने और ऊर्जा दक्षता और बैटरी जीवन में सुधार करने के लिए मैकओएस सीपीयू पावर प्रबंधन प्लग-इन (प्लगइनटाइप) पर निर्भर करता है।\n• यह पैच सीपीयू परिभाषा को संशोधित करेगा ताकि मैकओएस को लगे कि यह ऐप्पल उपकरणों के लिए आवश्यक प्लगइन-प्रकार = 1 प्रोसेसर है, जिससे सीपीयू आवृत्ति प्रबंधन सही ढंग से लोड हो रहा है और प्रदर्शन और बिजली खपत नियंत्रण में सुधार होगा।';

  @override
  String get autoGen5655 =>
      'एनवीआरएएम समर्थन सक्षम करें (आमतौर पर इंटेल मूल 300 श्रृंखला मदरबोर्ड के लिए)';

  @override
  String get autoGen5656 =>
      '• इंटेल कॉफ़ी लेक 8वीं पीढ़ी ~ 9वीं पीढ़ी के प्लेटफ़ॉर्म पर लागू\n• मूल 300 श्रृंखला मदरबोर्ड (जैसे Z370, B360) macOS के तहत NVRAM का सही ढंग से उपयोग नहीं कर सकते हैं, जिससे कुछ फ़ंक्शन (जैसे iMessage, वॉल्यूम मेमोरी, बूट पैरामीटर, आदि) सहेजे नहीं जा सकेंगे।\n• यह पैच मदरबोर्ड के PMC (पावर मैनेजमेंट कंट्रोलर) को सक्षम बनाता है, जिससे macOS को अतिरिक्त EmuVariableUEFI ड्राइवर की आवश्यकता के बिना सामान्य रूप से मूल NVRAM का उपयोग करने की अनुमति मिलती है।';

  @override
  String get autoGen5657 =>
      'बैकलाइट समर्थन के लिए पीएनएलएफ डिवाइस जोड़ें (केवल नोटबुक और ऑल-इन-वन)';

  @override
  String get autoGen5658 =>
      '• नोटबुक स्क्रीन की चमक को सही ढंग से नियंत्रित करने के लिए macOS को एक PNLF डिवाइस (पैनल ब्राइटनेस) की आवश्यकता होती है।\n• यह पैच ACPI में एक PNLF डिवाइस बनाएगा, जो macOS को स्क्रीन की चमक को समायोजित करने और सिस्टम प्राथमिकताओं में चमक नियंत्रण विकल्प प्रदर्शित करने की अनुमति देगा।\n• अनुपलब्ध चमक समायोजन की समस्या को हल करने के लिए नोटबुक और कुछ ऑल-इन-वन कंप्यूटरों के लिए उपयुक्त।\n• यूआईडी = 14, इन पर लागू: इंटेल पहली पीढ़ी अरंडेल, दूसरी पीढ़ी सैंडी ब्रिज, तीसरी पीढ़ी आइवी ब्रिज\n  नोट: यूआईडी:14 का उपयोग करने वाली कुछ मशीनें सीमित अधिकतम चमक या अन्य समस्याओं का सामना करेंगी। इन समस्याओं को हल करने के लिए, iGPU (एकीकृत ग्राफिक्स कार्ड) का सही डिवाइस पथ सेट किया जाना चाहिए, और IGPU रजिस्टर जानकारी को पूरक करने की आवश्यकता हो सकती है।\n• यूआईडी = 15, इन पर लागू: इंटेल चौथी पीढ़ी हैसवेल, पांचवीं पीढ़ी ब्रॉडवेल\n• यूआईडी = 16, इन पर लागू: इंटेल 6वीं पीढ़ी स्काईलेक, 7वीं पीढ़ी कैबी लेक, कुछ चौथी पीढ़ी हैसवेल\n• यूआईडी = 17, इन पर लागू: कस्टम चमक, आमतौर पर कुछ गैर-मानक उपकरणों या विशेष आवश्यकताओं वाले हैकिंटोश सेटिंग्स के लिए उपयोग किया जाता है\n• यूआईडी = 18, इसके लिए उपयुक्त: कस्टम चमक, आमतौर पर कुछ गैर-मानक उपकरणों या विशेष आवश्यकताओं वाले हैकिंटोश सेटिंग्स के लिए उपयोग किया जाता है\n• यूआईडी = 19, इन पर लागू: इंटेल 8वीं पीढ़ी कॉफ़ीलेक और उससे ऊपर, 10वीं पीढ़ी से नीचे, और एएमडी नोटबुक\n• यूआईडी = 99, इस पर लागू होता है: अन्य (कस्टम एपएलबीकेएल-नाम / एपएलबीकेएल-डेटा डिवाइस गुणों की आवश्यकता है), बिल्कुल भी काम नहीं कर सकते हैं';

  @override
  String get autoGen5659 =>
      'स्क्रीन बैकलाइट समायोजन के लिए आवश्यक सेंसर समर्थन प्रदान करता है (केवल नोटबुक और ऑल-इन-वन कंप्यूटर पर लागू)';

  @override
  String get autoGen5660 =>
      '• स्क्रीन की चमक को स्वचालित रूप से समायोजित करने के लिए Apple के मूल सेंसर (परिवेश प्रकाश सेंसर, ALS) फ़ंक्शन को अनुकरण और सक्षम करने के लिए उपयोग किया जाता है\n• यदि आपके डिवाइस में वास्तव में ALS है (जैसे कि कुछ हाई-एंड नोटबुक) और समस्याएं हैं, तो आप स्वचालित चमक समायोजन फ़ंक्शन को सही करने के लिए SSDT-ALS0 जोड़ने का प्रयास कर सकते हैं, अन्यथा इसे जोड़ने की अनुशंसा नहीं की जाती है\n• केवल ऑल-इन-वन पीसी (एआईओ) और लैपटॉप पर लागू';

  @override
  String get autoGen5661 =>
      'macOS स्वयं को विंडोज़ के रूप में प्रच्छन्न करता है और अवरुद्ध डिवाइसों (जैसे I2C टचपैड) को अनलॉक करता है';

  @override
  String get autoGen5662 =>
      '• _OSI (ऑपरेटिंग सिस्टम इंटरफ़ेस) ACPI की एक विधि है जो ऑपरेटिंग सिस्टम को यह रिपोर्ट करने की अनुमति देती है कि वह किन सुविधाओं का समर्थन करता है।\n• कुछ मदरबोर्ड फ़र्मवेयर यह तय कर सकते हैं कि _OSI रिटर्न वैल्यू के आधार पर कुछ डिवाइस को सक्षम किया जाए या नहीं, जिसे macOS द्वारा पहचाना नहीं जा सकता है, जिसके परिणामस्वरूप कार्यक्षमता का नुकसान हो सकता है।\n• पैच फ़र्मवेयर को यह सोचकर \"धोखा\" देता है कि macOS भी विंडोज़ है, इस प्रकार छिपी हुई सुविधाओं को सक्रिय करता है जैसे: I2C टचपैड, बैटरी प्रबंधन, आदि।';

  @override
  String get autoGen5663 => 'यूएसबी पोर्ट रीसेट करें और ठीक करें';

  @override
  String get autoGen5664 =>
      '• कुछ OEM ACPI विनिर्देश का उल्लंघन करते हैं, जो macOS को बूट करते समय समस्याएँ पैदा करता है। इस समस्या को हल करने के लिए, RHUB डिवाइस को बंद करना होगा और macOS को पोर्ट को मैन्युअल रूप से पुनर्निर्माण करने के लिए बाध्य करना होगा।\n• यह पैच macOS प्रारंभ होने पर USB नियंत्रक (EHC1, EHC2 और अन्य USB डिवाइस परिरक्षण और नाम बदलने सहित) को रीसेट करता है, ताकि सभी USB पोर्ट को सही ढंग से पहचाना जा सके, और यह सुनिश्चित करने के लिए USB मैपिंग (जैसे: UTBMap.kext) के साथ उपयोग किया जाता है कि USB डिवाइस ठीक से काम करें।\n• आमतौर पर डेस्कटॉप 400 सीरीज मदरबोर्ड (आसुस, आदि) और मोबाइल आइसलेक प्लेटफॉर्म (डेल, लेनोवो, आदि) के लिए उपयुक्त है।';

  @override
  String get autoGen5665 => 'गुम पीसीआई डिवाइस पथ के लिए ब्रिज बनाएं';

  @override
  String get autoGen5666 =>
      '• कुछ मदरबोर्ड या डिवाइस के PCI डिवाइस पथ को macOS के तहत सही ढंग से पहचाना नहीं जा सकता है, जिससे डिवाइस ठीक से काम नहीं कर पाता है, जैसे ग्राफिक्स कार्ड, साउंड कार्ड, वायरलेस नेटवर्क कार्ड, आदि।\n• यह पैच इन डिवाइसों के लिए सही PCI ब्रिज बनाएगा, यह सुनिश्चित करेगा कि macOS इन PCI डिवाइसों को सही ढंग से पहचान सके और उनका उपयोग कर सके।';

  @override
  String get autoGen5667 =>
      'सीपीयू कर्नेल पैनिक समस्या को हल करने के लिए एपीआईसी तालिका को ठीक करें (एचईडीटी सर्वर प्लेटफॉर्म पर लागू)';

  @override
  String get autoGen5668 =>
      '• एपीआईसी तालिका में प्रोसेसर आईडी को सुधारें या फिर से लिखें ताकि यह सुनिश्चित हो सके कि मैकओएस सीपीयू कोर की संख्या और संख्या की सही पहचान कर सके और कर्नेल पैनिक या कोर पहचान त्रुटियों से बच सके।\n• पैच की गई तालिका को लोड करने से पहले मूल एपीआईसी तालिका को फ़र्मवेयर में छोड़ना होगा।\n• X58, X79, X99, X299 और अन्य Intel सर्वर (HEDT) प्लेटफ़ॉर्म पर लागू।';

  @override
  String get autoGen5669 =>
      'DMAR आरक्षित मेमोरी क्षेत्र को हटाएं, सिस्टम स्टार्टअप समस्याओं और नेटवर्क कार्ड संगतता समस्याओं को ठीक करें';

  @override
  String get autoGen5670 =>
      '• डीएमएआर (डीएमए रीमैपिंग टेबल) आईओएमएमयू (इनपुट-आउटपुट मेमोरी मैनेजमेंट यूनिट) समर्थन के लिए इंटेल वीटी-डी वर्चुअलाइजेशन तकनीक का हिस्सा है।\n• यह पैच DMAR तालिका में आरक्षित मेमोरी क्षेत्र को हटा देगा जो समस्या का कारण बन रहा है, इस प्रकार macOS को DMAR को गलत तरीके से पढ़ने और सिस्टम को बूट करने में विफल होने से रोकेगा।\n• वीटी-डी संगतता के लिए समर्थन प्रदान करें ताकि वीटी-डी मैकओएस बिग सुर और नए में ठीक से काम करे, विशेष रूप से ड्राइवरकिट द्वारा संचालित हार्डवेयर को शामिल करते हुए।\n• macOS VT-d का समर्थन करता है, लेकिन कुछ मदरबोर्ड या BIOS द्वारा प्रदान की गई DMAR तालिका के साथ संगतता समस्याएं हैं, जिसके कारण macOS ACPI DMAR तालिका को पार्स करते समय कर्नेल क्रैश, स्टार्टअप लैग, सिस्टम अस्थिरता और अन्य समस्याओं का कारण बन सकता है (AppleACPICPU, IOPCI, AppleVTD संबंधित लॉग स्थानों में अटका हुआ)।\n• समर्थित हार्डवेयर रेंज: I225 नेटवर्क कार्ड, एक्वांटिया नेटवर्क कार्ड, कुछ वाईफाई डिवाइस आदि।\n• पैच की गई तालिका को लोड करने से पहले मूल DMAR तालिका को फ़र्मवेयर में छोड़ना होगा।\n• लागू सीपीयू: कोई भी प्रोसेसर जो वीटी-डी तकनीक का समर्थन करता है।';

  @override
  String get autoGen5671 => 'सिस्टम बस SMBus समर्थन जोड़ें';

  @override
  String get autoGen5672 =>
      '• macOS को कुछ सेवाओं को ठीक से चलाने के लिए एक SMBus (सिस्टम मैनेजमेंट बस) डिवाइस की आवश्यकता होती है, जैसे:\n  I2C टचपैड, बैटरी प्रबंधन, प्रकाश-संवेदन स्वचालित चमक समायोजन, कुछ वाई-फाई/ब्लूटूथ डिवाइस\n• SSDT-SBUS-MCHC ACPI में SBUS (सिस्टम मैनेजमेंट बस) और MCHC (मेमोरी कंट्रोलर) डिवाइस जोड़कर macOS को यह सोचने पर मजबूर करता है कि यह एक देशी Apple डिवाइस है, जिससे यह सुनिश्चित होता है कि संबंधित फ़ंक्शन ठीक से काम करते हैं।\n• यदि डिवाइस I2C टचपैड, बैटरी जानकारी और स्वचालित चमक समायोजन का उपयोग नहीं किया जा सकता है, तो आप इस पैच को सक्षम करने का प्रयास कर सकते हैं।';

  @override
  String get autoGen5673 =>
      'कोर ग्राफ़िक्स त्वरण विफलता की समस्या को ठीक करें (आमतौर पर आइवी ब्रिज और सैंडी ब्रिज पर लागू)';

  @override
  String get autoGen5674 =>
      '• इंटेल मैनेजमेंट इंजन (संक्षेप में IMEI) एक हार्डवेयर इंटरफ़ेस है जिसका उपयोग प्रबंधन इंजन से कनेक्ट करने के लिए किया जाता है। इसकी आवश्यकता केवल तभी होती है जब पुराने प्लेटफ़ॉर्म (सैंडी/आइवी) और कुछ मदरबोर्ड में MEI/IMEI/HECI डिवाइस की कमी होती है।\n• मिश्रित होने पर इंटेल तीसरी पीढ़ी के आइवी ब्रिज प्रोसेसर और 6 श्रृंखला मदरबोर्ड पर लागू होता है (उदाहरण के लिए: i3 3225 प्रोसेसर, H61 मदरबोर्ड), कोर ग्राफिक्स त्वरण समस्या\n• मिश्रित होने पर इंटेल दूसरी पीढ़ी के सैंडी ब्रिज प्रोसेसर और 7 श्रृंखला मदरबोर्ड पर लागू होता है (उदाहरण के लिए: i5 2500k प्रोसेसर, B75 मदरबोर्ड), कोर ग्राफिक्स त्वरण समस्या\n• इंटेल तीसरी पीढ़ी के आइवी ब्रिज प्रोसेसर को 7 सीरीज मदरबोर्ड के साथ जोड़ा गया है, और इंटेल दूसरी पीढ़ी के सैंडी ब्रिज प्रोसेसर को 6 सीरीज मदरबोर्ड के साथ जोड़ा गया है, उन्हें इस SSDT की आवश्यकता नहीं है!\n• इंटेल चौथी पीढ़ी के हैसवेल और नए प्लेटफॉर्म आमतौर पर एमईआई/आईएमईआई/एचईसीआई उपकरणों को सही ढंग से लागू कर सकते हैं और उन्हें इस एसएसडीटी की आवश्यकता नहीं है!';

  @override
  String get autoGen5675 =>
      'बिजली आपूर्ति के बिना बंद करने और फिर से शुरू करने या बंद करने की समस्या को ठीक करें';

  @override
  String get autoGen5676 =>
      '• इस समस्या को ठीक कर दिया गया है कि जब macOS (S5) बंद हो रहा होता है तो कुछ मदरबोर्ड कभी-कभी USB नियंत्रक की बिजली को पूरी तरह से बंद नहीं करते हैं, जिसके परिणामस्वरूप सामान्य रूप से शटडाउन विफल हो जाता है (शटडाउन फिर से चालू हो जाता है या बिजली के बिना बंद हो जाता है)\n• एसीपीआई नाम बदलने वाले पैच की आवश्यकता है: _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      'वर्तमान सिस्टम स्थिति की जाँच करें, मुख्य रूप से यह जाँचने के लिए कि क्या S3 स्लीप समर्थित है (गैर-अनुकूलित SSDT)';

  @override
  String get autoGen5678 =>
      '• जांचें कि क्या वर्तमान मशीन एओएसी मशीन (गैर-अनुकूलित एसएसडीटी) है\n• वर्तमान BIOS सेटिंग्स में सिस्टम स्थिति की जांच करें, मुख्य रूप से यह जांचने के लिए कि क्या S3 स्लीप समर्थित है (गैर-अनुकूलित SSDT)\n• नोट: केवल गैर-एओएसी मशीनें ही एस3 स्लीप के साथ संगत हैं। AOAC मशीनें S3 स्लीप के साथ संघर्ष करती हैं और S3 स्लीप का समर्थन नहीं करती हैं!\n• यदि जाँच परिणाम से पता चलता है कि गैर-एओएसी मशीन (एओएसी मशीन एस3 स्लीप का समर्थन नहीं करती है, नीचे न पढ़ें) की सिस्टम स्थिति एस3 स्लीप का समर्थन नहीं करती है, तो निम्नलिखित स्थितियाँ हो सकती हैं:\n  1. मदरबोर्ड फर्मवेयर S3 स्लीप को सपोर्ट करता है, लेकिन BIOS सेटिंग्स में S3 स्लीप सक्षम नहीं है। इसके सक्षम होने के बाद, S3 स्लीप को सपोर्ट किया जा सकता है।\n  2. मदरबोर्ड फ़र्मवेयर S3 को भौतिक रूप से कैस्ट्रेट नहीं करता है, लेकिन DSDT _S3 विधि को परिभाषित नहीं करता है। _S3 विधि को पूरा करने से S3 नींद की समस्या ठीक होने की संभावना है।\n  3. मदरबोर्ड फ़र्मवेयर भौतिक रूप से S3 को कैस्ट्रेट करता है और S3 स्लीप का बिल्कुल भी समर्थन नहीं करता है। भले ही _S3 विधि पूरी हो जाए, S3 नींद की समस्या को ठीक नहीं किया जा सकता है।';

  @override
  String get autoGen5679 =>
      'जांचें कि क्या यह एओएसी मशीन (गैर-अनुकूलित एसएसडीटी) है';

  @override
  String get autoGen5680 =>
      '• जांचें कि क्या यह FACP.aml पर आधारित AOAC मशीन (गैर-अनुकूलित SSDT) है\n• नोट: केवल गैर-एओएसी मशीनें ही एस3 स्लीप के साथ संगत हैं। AOAC मशीनें S3 स्लीप के साथ संघर्ष करती हैं और S3 स्लीप का समर्थन नहीं करती हैं! एओएसी मशीनें नोटबुक में आम हैं।\n• एक बार जब AOAC मशीन S3 स्लीप में प्रवेश कर जाती है, तो ऐसा प्रतीत हो सकता है कि इसे सोने के बाद जगाया नहीं जा सकता है और यह क्रैश स्थिति में दिखाई देती है, और केवल इसे बंद करने के लिए मजबूर किया जा सकता है। S3 स्लीप को अक्षम करने की अनुशंसा की जाती है.\n• एओएसी मशीनें निम्नलिखित समाधानों पर विचार करने की सलाह देती हैं:\n  1. BIOS अनलॉक करें और AOAC अक्षम करें (आमतौर पर ऐसा करना कठिन है, लेकिन सबसे स्थिर)\n  2. S3 स्लीप को अक्षम करें (BIOS में S3 स्लीप को अक्षम करें, या S3 स्लीप को अक्षम करने के लिए SSDT-S3-DISABLE)\n  3. स्वतंत्र ग्राफ़िक्स बिजली आपूर्ति बंद करें\n  4. SSD के APST को सक्षम करने के लिए NVMeFix.kext का उपयोग करें\n  5. एएसपीएम सक्षम करें (बीआईओएस उन्नत विकल्प एएसपीएम सक्षम करते हैं, एसएसडीटी पैच एल1 सक्षम करता है)';

  @override
  String get autoGen5681 =>
      'USB नियंत्रक के कारण नींद से जागने की समस्या को ठीक करें';

  @override
  String get autoGen5682 =>
      '• तत्काल वेक-अप समस्या को ठीक करने के लिए GPRW का नाम बदलकर XPRW कर दें (ध्यान दें: इसके कारण USB कीबोर्ड डिवाइस को जगाने में असमर्थ हो सकता है, आप इसे पावर कुंजी के माध्यम से जगा सकते हैं)\n• SSDT-GPRW का उपयोग आमतौर पर अधिक किया जाता है क्योंकि अधिकांश प्लेटफ़ॉर्म GPRW पद्धति का उपयोग करते हैं और बहुत कम प्लेटफ़ॉर्म UPRW पद्धति प्रदान करते हैं और उसका उपयोग करते हैं।\n• स्काईलेक और नए प्लेटफार्मों के लिए उपलब्ध है';

  @override
  String get autoGen5683 =>
      '• तत्काल वेक-अप समस्या को ठीक करने के लिए GPRW का नाम बदलकर XPRW कर दें (ध्यान दें: इसके कारण USB कीबोर्ड डिवाइस को जगाने में असमर्थ हो सकता है, आप इसे पावर कुंजी के माध्यम से जगा सकते हैं)\n• SSDT-UPRW का उपयोग शायद ही कभी किया जाता है क्योंकि अधिकांश प्लेटफ़ॉर्म GPRW पद्धति का उपयोग करते हैं और बहुत कम प्लेटफ़ॉर्म UPRW पद्धति प्रदान करते हैं और उसका उपयोग करते हैं।\n• स्काईलेक और नए प्लेटफार्मों के लिए उपलब्ध है';

  @override
  String get autoGen5684 =>
      'स्लीप बटन स्लीप समस्या को ठीक करें (नोटबुक पर लागू)';

  @override
  String get autoGen5685 =>
      '• जब कुछ कंप्यूटर स्लीप बटन SLPB (PNP0C0E) के माध्यम से स्लीप में प्रवेश करते हैं, तो ACPI गलत पैरामीटर प्रसारित करता है, जिससे macOS गलती से सोचता है कि यह शटडाउन है। इसका परिणाम यह हो सकता है: सीधे पुनरारंभ, नींद के बाद क्रैश, या सफल नींद लेकिन क्षतिग्रस्त सिस्टम स्थिति।\n• स्लीप बटन दबाते समय \"ढक्कन बंद है\" का नाटक करें, जिससे खतरनाक PNP0C0E नींद सुरक्षित और स्थिर PNP0C0D नींद में चली जाती है\n• आमतौर पर लैपटॉप के लिए उपयुक्त';

  @override
  String get autoGen5686 =>
      'उस समस्या को ठीक कर दिया गया जहां आपको जागने के बाद स्क्रीन चालू करने के लिए कोई भी कुंजी दबाने की आवश्यकता होती है';

  @override
  String get autoGen5687 =>
      '• उस समस्या को ठीक कर दिया गया जहां कुछ मशीनों को जागने के बाद स्क्रीन चालू करने के लिए किसी भी कुंजी को दबाने की आवश्यकता होती है';

  @override
  String get autoGen5688 =>
      'जागने के बाद पावर बटन की असामान्य श्वास प्रकाश समस्या को ठीक करें (लेनोवो नोटबुक पर लागू)';

  @override
  String get autoGen5689 =>
      '• उस समस्या को ठीक किया गया जहां कुछ लेनोवो नोटबुक पर जागने के बाद साइड ए पर सांस लेने वाली रोशनी और पावर बटन पर सांस लेने वाली रोशनी सामान्य नहीं हुई।\n• उस समस्या को ठीक कर दिया गया है जहां कुछ लेनोवो लैपटॉप पर जागने के बाद F4 माइक्रोफोन संकेतक प्रकाश की स्थिति असामान्य है\n• मुख्य रूप से लेनोवो श्रृंखला नोटबुक पर लागू होता है, नोटबुक के अन्य ब्रांड आमतौर पर लागू नहीं होते हैं';

  @override
  String get autoGen5690 =>
      'सिस्टम S3 स्लीप स्थिति को अक्षम करें (S3 स्लीप वेक-अप क्रैश, पुनरारंभ या शटडाउन समस्याओं को ठीक करें)';

  @override
  String get autoGen5691 =>
      '• MacOS सिस्टम के सक्रिय होने पर सिस्टम क्रैश, रीस्टार्ट या शटडाउन से बचने के लिए केवल macOS सिस्टम के अंतर्गत S3 स्लीप स्थिति को अक्षम करें\n• अक्षम होने पर, केवल macOS S3 स्लीप का समर्थन नहीं करता है (स्लीप बटन या मॉनिटर पर क्लिक करने से पावर-सेविंग मोड में प्रवेश होता है, स्क्रीन बंद हो जाती है, लेकिन होस्ट अभी भी चलेगा और पंखा चलना बंद नहीं होगा)\n• MacOS में S3 स्लीप स्थिति को अक्षम करने के बाद, आपको अब macOS की किसी भी सिस्टम सेटिंग्स को संशोधित करने की आवश्यकता नहीं है, और आपको ऊर्जा-बचत मोड को बंद करने की आवश्यकता नहीं है (इससे पहले, आपको सिस्टम सेटिंग्स को संशोधित करने की आवश्यकता हो सकती है -> निष्क्रिय होने पर डिस्प्ले बंद करें -> कभी नहीं)\n• लागू परिदृश्य: जब नींद की समस्या को ठीक नहीं किया जाता है, तो macOS सिस्टम सेटिंग्स में ऊर्जा-बचत मोड चालू हो जाता है (\"निष्क्रिय होने पर डिस्प्ले बंद करें -> 10 मिनट\")। सिस्टम के निष्क्रिय अवस्था में प्रवेश करने के बाद, जब macOS सिस्टम जागृत होता है, तो सिस्टम क्रैश हो सकता है, पुनरारंभ हो सकता है या बंद हो सकता है। इस समय, आप समस्या को ठीक करने के लिए S3 स्लीप स्थिति को अक्षम कर सकते हैं।\n• ACPI नाम बदलें पैच की आवश्यकता है: _S3 -> XS3';

  @override
  String get autoGen5692 =>
      'कुछ हार्डवेयर के अनुपलब्ध होने की समस्या को ठीक करने के लिए हॉट रीस्टार्ट को कोल्ड रीस्टार्ट में बदल दिया जाता है।';

  @override
  String get autoGen5693 =>
      '• हॉट रीस्टार्ट को कोल्ड रीस्टार्ट में बदल दिया गया है, जो इस समस्या को ठीक करता है कि कुछ प्लेटफ़ॉर्म पर विंडोज़ से मैकओएस पर रीस्टार्ट करने के बाद कुछ हार्डवेयर अनुपलब्ध हो जाते हैं। (उदाहरण के लिए: साउंड कार्ड, वाईफाई, ब्लूटूथ)\n• नोट: कोई SSDT-FACP.aml उत्पन्न नहीं होता है! केवल एसीपीआई-पैच उत्पन्न होता है!';

  @override
  String get autoGen5694 => 'ग्राफ़िक्स डिवाइस आईडी मैपिंग';

  @override
  String get autoGen5695 =>
      '• एएमडी ग्राफिक्स कार्ड डिवाइस आईडी मैपिंग परिदृश्यों के लिए उपयोग किया जाता है, सिस्टम को संबंधित ग्राफिक्स ड्राइवर को लोड करने की अनुमति देने के लिए एसीपीआई के माध्यम से संगत डिवाइस आईडी इंजेक्ट करता है।\n• केवल रैपिडईएफआई संगतता डेटा में डिवाइस आईडी मैपिंग की आवश्यकता के रूप में स्पष्ट रूप से चिह्नित मॉडलों के लिए अनुशंसित।';

  @override
  String get autoGen5696 => 'एसीपीआई डिवाइस परिरक्षण';

  @override
  String get autoGen5697 =>
      '• एसीपीआई परत पर पीसीआई उपकरणों को संभालने के लिए उपयोग किया जाता है जो मैकओएस ड्राइवर को सौंपने के लिए उपयुक्त नहीं हैं, जैसे असंगत ग्राफिक्स कार्ड, एनवीएमई नियंत्रक, या अन्य विस्तार डिवाइस।\n• लैपटॉप पहले पावर-स्तर निष्क्रियकरण का प्रयास करते हैं; यदि फ़र्मवेयर बिजली आपूर्ति पद्धति का समर्थन नहीं करता है, तो यह बचने के लिए ड्राइवर परत पर डाउनग्रेड हो जाता है।\n• डेस्कटॉप, एनयूसी और एचईडीटी स्वतंत्र ग्राफिक्स पावर विधियों पर भरोसा करने से बचने के लिए डिफ़ॉल्ट रूप से सार्वभौमिक परिधि विधियों का उपयोग करते हैं जो आमतौर पर मशीन फर्मवेयर में मौजूद नहीं होते हैं।\n• सभी परिदृश्यों के लिए एक वैध ACPI पथ की आवश्यकता होती है; यदि हार्डवेयर गुम एसीपीआई पथ की रिपोर्ट करता है, तो डिवाइस स्वचालित रूप से छोड़ दिया जाता है।';

  @override
  String get autoGen5698 =>
      'नकली वायर्ड नेटवर्क कार्ड उपकरण (वायर्ड नेटवर्क कार्ड के बिना नोटबुक पर लागू)';

  @override
  String get autoGen5699 =>
      '• अंतर्निहित नेटवर्क उपकरण पर iMessage, Facetime, iCloud और अन्य Apple सेवाओं की निर्भरता को हल करने के लिए Hackintush सिस्टम के लिए NullEthernet नकली वर्चुअल नेटवर्क कार्ड प्रदान करता है।';

  @override
  String get autoGen5700 =>
      'लैपटॉप I2C टचपैड समस्या को ठीक करें (लैपटॉप पर लागू)';

  @override
  String get autoGen5701 =>
      '• ACPI हार्डवेयर नोड माउंटिंग की मरम्मत करके, यह सुनिश्चित करना कि डिवाइस macOS सिस्टम में सक्षम है, और इस समस्या को ठीक करना कि कुछ I2C टचपैड को सामान्य रूप से पहचाना नहीं जा सकता है।\n• SSDT-GPI0 ड्राइवर माउंटिंग हार्डवेयर डिवाइस की समस्या को हल करता है। SSDT-XOSI का उपयोग मुख्य रूप से BIOS/ACPI आरंभीकरण तर्क और ऑपरेटिंग सिस्टम पहचान के बीच असंगतता की समस्या को ठीक करने के लिए किया जाता है (कभी-कभी यह टचपैड समस्या को ठीक कर सकता है)';

  @override
  String get autoGen5702 =>
      'B850, B650, B550, A520 चिपसेट के लिए CPU का नाम बदलना (केवल Ryzen प्लेटफ़ॉर्म के लिए)';

  @override
  String get autoGen5703 =>
      '• एएमडी प्लेटफ़ॉर्म द्वारा सीपीयू को पहचानने में सक्षम नहीं होने के कारण होने वाली क्रैश समस्या को ठीक करने के लिए B850, B650, B550 और A520 चिपसेट के CPU नाम बदलने पर लागू (केवल पूर्व-निर्मित SSDT पैच का उपयोग करते समय अनुशंसित)\n• SSDT पैच को अनुकूलित करते समय, अनुकूलित SSDT-PLUG का उपयोग करने की अनुशंसा की जाती है! (SSDT को अनुकूलित करते समय AMD Ryzen प्लेटफ़ॉर्म स्वचालित रूप से अपना नाम SSDT-PLUG-ALT में बदल देता है)';

  @override
  String get autoGen5704 =>
      'पावर प्रबंधन को ठीक करें (इंटेल 12वीं पीढ़ी और उससे ऊपर, कुछ एएमडी रायज़ेन और अन्य प्लेटफार्मों पर लागू)';

  @override
  String get autoGen5705 =>
      '• सीपीयू आवृत्ति को समायोजित करने और ऊर्जा दक्षता और बैटरी जीवन में सुधार करने के लिए मैकओएस सीपीयू पावर प्रबंधन प्लग-इन (प्लगइनटाइप) पर निर्भर करता है।\n• यह पैच सीपीयू परिभाषा को संशोधित करेगा ताकि मैकओएस को लगे कि यह ऐप्पल उपकरणों के लिए आवश्यक प्लगइन-प्रकार = 1 प्रोसेसर है, जिससे सीपीयू आवृत्ति प्रबंधन सही ढंग से लोड हो रहा है और प्रदर्शन और बिजली खपत नियंत्रण में सुधार होगा।\n• Intel Alder Lake 12वीं पीढ़ी और उससे ऊपर, और कुछ AMD Ryzen प्लेटफ़ॉर्म पर लागू';

  @override
  String get autoGen5706 =>
      'AWAC (आधुनिक टाइमर) अक्षम करें (इंटेल कॉफी लेक 8वीं पीढ़ी और उससे ऊपर के लिए उपलब्ध)';

  @override
  String get autoGen5707 =>
      '• लीगेसी आरटीसी को सक्षम या खराब करते समय AWAC (आधुनिक टाइमर) को अक्षम करें\n• इंटेल कॉफी लेक 8वीं पीढ़ी और उससे ऊपर के साथ संगत';

  @override
  String get autoGen5708 =>
      'सभी देशी X99 (C612) मदरबोर्ड और अधिकांश देशी X79 (C602) मदरबोर्ड के लिए आवश्यक';

  @override
  String get autoGen5709 =>
      '• यह SSDT सभी X99 मदरबोर्ड और अधिकांश X79 मदरबोर्ड पर लागू है। इसका मुख्य कार्य IOPCIFamily को कर्नेल घबराहट पैदा करने से रोकने के लिए ACPI में अप्रयुक्त उपकरणों को अक्षम करना है।\n• लागू मदरबोर्ड: सभी देशी X99 (C612) मदरबोर्ड और अधिकांश देशी X79 (C602) मदरबोर्ड।';

  @override
  String get autoGen5710 =>
      'लीगेसी आरटीसी टाइमर को सक्षम या नकली करें, और आरटीसी रेंज को ठीक करें (सभी मूल X99 (C612) और X299 मदरबोर्ड पर लागू होता है)';

  @override
  String get autoGen5711 =>
      '• लीगेसी आरटीसी टाइमर को सक्षम या नकली करें और आरटीसी रेंज को ठीक करें।\n• गलत बूट समय, आरटीसी संबंधी त्रुटियां, नींद में जागने की समस्या आदि का समाधान करें।\n• यह SSDT सभी X99(C612) मदरबोर्ड के साथ-साथ X299 मदरबोर्ड पर भी लागू है';

  @override
  String get autoGen5712 => 'DTGP समर्थन जोड़ें';

  @override
  String get autoGen5713 =>
      '• ग्राफिक्स कार्ड, साउंड कार्ड, थंडरबोल्ट कार्ड आदि के साथ कुछ एसीपीआई मुद्दों को ठीक करने के लिए हार्डवेयर डिवाइस विशेषताओं को इंजेक्ट करें (जब कोई डीटीजीपी विधि समर्थन नहीं है, तो ये विशेषता इंजेक्शन विफल हो सकते हैं या काम नहीं कर सकते हैं!)';

  @override
  String get autoGen5714 => 'एक मानक डीएमए नियंत्रक का जालसाजी करना';

  @override
  String get autoGen5715 =>
      '• एक वर्चुअल डिवाइस कंट्रोलर (PNP0200) जो एक मानक DMA कंट्रोलर (डायरेक्ट मेमोरी एक्सेस कंट्रोलर) की नकल करता है, ACPI संसाधन तालिका को पूरा करता है, और macOS को LPC बस डिवाइस और DMA फ़ंक्शंस को ठीक से पहचानने की अनुमति देता है।\n• आमतौर पर HEDT/सर्वर प्लेटफ़ॉर्म के लिए आवश्यक नहीं है\n• छूटे हुए हिस्सों को जोड़ें, यह बिल्कुल सही समाधान है, आवश्यक नहीं!';

  @override
  String get autoGen5716 => 'एक मानक पीडब्लूआरबी नियंत्रक का जालसाजी करना';

  @override
  String get autoGen5717 =>
      '• मैकओएस को सिस्टम पावर बटन को सामान्य रूप से पहचानने और नींद और जागने का समर्थन करने की अनुमति देने के लिए एक मानक पावर बटन (PNP0C0C) डिवाइस का नकली उपयोग करें\n• कुछ BIOS/मदरबोर्ड ACPI ट्री में कोई PNP0C0C नहीं है, और macOS पावर बटन को सही ढंग से संभाल नहीं सकता है, जिसके परिणामस्वरूप सोने में असमर्थता, जागने में असमर्थता और मेनू बार पावर बटन की अनुपलब्धता हो सकती है।\n• छूटे हुए हिस्सों को जोड़ें, यह बिल्कुल सही समाधान है, आवश्यक नहीं!';

  @override
  String get autoGen5718 => 'एक मानक एसएलपीबी नियंत्रक का जालसाजी करना';

  @override
  String get autoGen5719 =>
      '• मैकओएस को सिस्टम स्लीप बटन को सही ढंग से पहचानने और स्लीप और वेक फ़ंक्शन को लागू करने की अनुमति देने के लिए एक मानक स्लीप बटन (PNP0C0E) डिवाइस का नकली उपयोग करें\n• कुछ BIOS/मदरबोर्ड ACPI ट्री में कोई PNP0C0E नहीं है, और macOS स्लीप बटन को सही ढंग से संभाल नहीं सकता है, जिसके परिणामस्वरूप सोने में असमर्थता, जागने में असमर्थता और मेनू बार में स्लीप बटन की अनुपलब्धता हो सकती है।\n• यह भाग PNP0C0E नींद सुधार विधि के लिए आवश्यक है!\n• छूटे हुए हिस्सों को जोड़ें, यह बिल्कुल सही समाधान है, आवश्यक नहीं!';

  @override
  String get autoGen5720 =>
      'IGPU की नकल करने के लिए MEM2 डिवाइस की आवश्यकता है';

  @override
  String get autoGen5721 =>
      '• IGPU के लिए आवश्यक MEM2 ACPI डिवाइस जोड़ें और IGPU से संबंधित समस्याओं को ठीक करें\n• ड्राइवर आरंभीकरण विफलता से बचने के लिए पूरक कोर डिस्प्ले मेमोरी मैपिंग\n• लागू दायरा: हैसवेल ~ कैबी लेक, केवल कोर ग्राफिक्स सिस्टम। आमतौर पर केवल असतत ग्राफ़िक्स को ही इस SSDT की आवश्यकता नहीं होती है!';

  @override
  String get autoGen5722 => 'अवैध्य मार्ग';

  @override
  String get autoGen5723 => 'कोई वैध .aml या .dat फ़ाइल नहीं मिली';

  @override
  String get autoGen5724 =>
      'SSDT.aml फ़ाइलों को बैचों में विघटित किया जा रहा है...';

  @override
  String get autoGen5725 =>
      'DSDT.aml और SSDT.aml फ़ाइलों को बैचों में विघटित किया जा रहा है...';

  @override
  String get autoGen5726 =>
      '.aml फ़ाइलों को अलग-अलग डिकम्पाइल करना विफल रहा...';

  @override
  String get autoGen5727 => 'अन्य .aml फ़ाइलों को विघटित किया जा रहा है...';

  @override
  String get autoGen5728 =>
      'ध्यान दें: पथ या फ़ाइल नाम में चीनी या विशेष वर्ण शामिल न करने का प्रयास करें, अन्यथा यह अप्रत्याशित समस्याएं पैदा कर सकता है!';

  @override
  String get autoGen5729 => 'ACPI निर्यात उपकरण तैयार नहीं है';

  @override
  String get autoGen5730 => 'ACPI तालिकाएँ निर्यात की जा रही हैं...';

  @override
  String get autoGen5731 =>
      'वर्तमान प्लेटफ़ॉर्म ACPI तालिकाओं को निर्यात करने का समर्थन नहीं करता है';

  @override
  String get autoGen5732 =>
      'सुडो पासवर्ड प्राधिकरण की प्रतीक्षा की जा रही है...';

  @override
  String get autoGen5733 => 'प्रशासक प्राधिकरण रद्द कर दिया गया है';

  @override
  String get autoGen5734 => 'व्यवस्थापक पासवर्ड दर्ज नहीं किया गया';

  @override
  String get autoGen5735 => 'व्यवस्थापक पासवर्ड ग़लत है';

  @override
  String get autoGen5736 => 'ACPI तालिका निर्यात प्रक्रिया विफल रही';

  @override
  String get autoGen5737 =>
      'वर्तमान प्लेटफ़ॉर्म द्वारा निकाली गई ACPI तालिका खाली है या ACPI तालिका को निर्यात करने का समर्थन नहीं करती है।';

  @override
  String get autoGen5738 =>
      '=> डीएसडीटी नहीं मिला, हस्ताक्षर द्वारा निर्यात किया जा रहा है...';

  @override
  String get autoGen5739 => 'डीएसडीटी तालिका निर्यात विफल रहा';

  @override
  String get autoGen5740 => 'तालिका का नाम अपडेट किया जा रहा है...';

  @override
  String get autoGen5741 => 'ACPI तालिका सफलतापूर्वक निर्यात करें!';

  @override
  String get autoGen5742 => 'कोई वैध ACPI तालिका प्रदान नहीं की गई!';

  @override
  String get autoGen5743 => 'स्थित किया जाने वाला हेक्साडेसिमल डेटा नहीं मिला!';

  @override
  String get autoGen5744 => 'अद्वितीय भरण आईडी नहीं मिली!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: अमान्य तालिका पैरामीटर';

  @override
  String get autoGen5746 => 'सबसे ढीला';

  @override
  String get autoGen5747 => 'केवल लंबाई';

  @override
  String get autoGen5748 => 'तालिका आईडी और लंबाई, सामान्यीकृत हेडर अक्षम करें';

  @override
  String get autoGen5749 => 'तालिका आईडी और लंबाई, सामान्यीकृत हेडर सक्षम करें';

  @override
  String get autoGen5750 =>
      'इंटेल पहली पीढ़ी अरनडेल, दूसरी पीढ़ी सैंडी ब्रिज, तीसरी पीढ़ी आइवी ब्रिज';

  @override
  String get autoGen5751 => 'इंटेल चौथी पीढ़ी हैसवेल, पांचवीं पीढ़ी ब्रॉडवेल';

  @override
  String get autoGen5752 =>
      'इंटेल 6वीं पीढ़ी स्काईलेक, 7वीं पीढ़ी कैबी लेक, कुछ चौथी पीढ़ी हैसवेल';

  @override
  String get autoGen5753 =>
      'कस्टम चमक, आमतौर पर कुछ गैर-मानक उपकरण या विशेष आवश्यकताओं की सेटिंग्स के लिए उपयोग की जाती है';

  @override
  String get autoGen5754 =>
      'इंटेल 8वीं पीढ़ी कॉफ़ीलेक ~ 10वीं पीढ़ी, और एएमडी नोटबुक';

  @override
  String get autoGen5755 =>
      'अन्य (कस्टम एपीएलबीकेएल-नाम / एपीएलबीकेएल-डेटा डिवाइस गुणों की आवश्यकता है), समर्थित नहीं हो सकते हैं';

  @override
  String get autoGen5756 =>
      'ACPI उपकरण वर्तमान में केवल Windows/macOS/Linux प्लेटफ़ॉर्म का समर्थन करते हैं';

  @override
  String get autoGen5757 =>
      'ध्यान दें: iasl-legacy का पुराना संस्करण केवल macOS 10.6 और पुराने संस्करणों का समर्थन करता है। वर्तमान मुख्यधारा प्रणालियों के साथ संगतता संबंधी समस्याएं हो सकती हैं, इसलिए सावधानी के साथ उपयोग करें!!!';

  @override
  String get autoGen5758 =>
      '[आईएएसएल-विरासत पुराने संस्करण कंपाइलर] का उपयोग करें';

  @override
  String get autoGen5759 => 'संकलन विफल!';

  @override
  String get autoGen5760 =>
      'इसे आईएएसएल के नए संस्करण में बदलने या जबरन संकलन सक्षम करने और पुनः प्रयास करने की अनुशंसा की जाती है!';

  @override
  String get autoGen5761 => 'अस्तित्व';

  @override
  String get autoGen5762 => 'मौजूद नहीं';

  @override
  String get autoGen5763 =>
      'नोट: इंटेल पहली पीढ़ी के अरंडेल, दूसरी पीढ़ी के सैंडी ब्रिज, तीसरी पीढ़ी के आइवी ब्रिज डिफ़ॉल्ट रूप से यूआईडी: 14 ​​का उपयोग करते हैं, लेकिन यूआईडी: 14 ​​का उपयोग करने वाली कुछ मशीनें सीमित अधिकतम चमक या अन्य समस्याओं का सामना करेंगी। इन समस्याओं को हल करने के लिए, iGPU (एकीकृत ग्राफिक्स कार्ड) का सही डिवाइस पथ सेट किया जाना चाहिए, और IGPU रजिस्टर जानकारी को पूरक करने की आवश्यकता हो सकती है।';

  @override
  String get autoGen5764 =>
      'कृपया उपयोग करने के लिए iGPU ACPI पथ दर्ज करें। प्रत्येक पथ तत्व के लिए वर्ण सीमा 4 अल्फ़ान्यूमेरिक वर्ण (एक अक्षर या अंडरस्कोर से शुरू) है, जो रिक्त स्थान से अलग होती है। उदाहरण के लिए: SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      'ध्यान दें: NBCF पैच जेनरेट किया गया है (BrightnessKeys.kext ड्राइवर पर निर्भर करता है), डिफ़ॉल्ट रूप से सक्षम! यदि आपको उपयोग के दौरान कोई समस्या आती है, तो कृपया इस पैच को अक्षम कर दें!';

  @override
  String get autoGen5766 => 'निम्नलिखित पुल का समाधान नहीं किया जा सकता:';

  @override
  String get autoGen5767 =>
      '=> वर्तमान फ़र्मवेयर सामान्य सिस्टम स्थितियों का समर्थन करता है! यदि यह AOAC मशीन नहीं है, तो नींद की समस्या को ठीक करने के बाद, macOS S3 नींद का समर्थन कर सकता है, अन्यथा यह S3 नींद का समर्थन नहीं करता है!';

  @override
  String get autoGen5768 => 'पैबंद';

  @override
  String get autoGen5769 => 'सर्वर से संपर्क का समय समाप्त';

  @override
  String get autoGen5770 => 'डाउनलोड रद्द कर दिया गया';

  @override
  String get autoGen5771 => 'प्रतिक्रिया समयबाह्य पढ़ें';

  @override
  String get autoGen5772 => 'Kext सफलतापूर्वक कॉपी किया गया';

  @override
  String get autoGen5773 =>
      'वेब प्लेटफ़ॉर्म डिफ़ॉल्ट रूप से सीधे डाउनलोड होता है, और वर्तमान में डिफ़ॉल्ट पथ का चयन करने का समर्थन नहीं करता है।';

  @override
  String get autoGen5774 => 'कॉन्फ़िगरेशन फ़ाइल रूट नोड JSON ऑब्जेक्ट नहीं है';

  @override
  String get autoGen5775 => 'सिस्टम का पालन करें';

  @override
  String get autoGen5776 => 'बंद';

  @override
  String get autoGen5777 => 'माइक्रोसॉफ्ट याहेई';

  @override
  String get autoGen5778 => 'काले शरीर को अद्यतन करें';

  @override
  String get autoGen5779 => 'सियुआन सोंगती';

  @override
  String get autoGen5780 =>
      'हार्डवेयर जानकारी ताज़ा करने की प्रतीक्षा की जा रही है';

  @override
  String get autoGen5781 => 'हार्डवेयर जानकारी लोड हो रही है';

  @override
  String get autoGen5782 => 'हार्डवेयर जानकारी ताज़ा करना';

  @override
  String get autoGen5783 => 'हार्डवेयर जानकारी लोडिंग पूर्ण हुई';

  @override
  String get autoGen5784 => 'हार्डवेयर जानकारी लोड करना विफल रहा';

  @override
  String get autoGen5785 => 'हार्डवेयर जानकारी अभी समर्थित नहीं है';

  @override
  String get autoGen5786 => 'हार्डवेयर जानकारी आयात पूरा हुआ';

  @override
  String get autoGen5787 => 'असफल';

  @override
  String get autoGen5788 => 'समर्थित नहीं';

  @override
  String get autoGen5789 => 'खत्म करना';

  @override
  String get autoGen5790 => 'कैश';

  @override
  String get autoGen5791 =>
      'वर्तमान प्लेटफ़ॉर्म हार्डवेयर सूचना क्वेरी का समर्थन नहीं करता है';

  @override
  String get autoGen5792 =>
      'वर्तमान रिपोर्ट एक आयातित बाहरी हार्डवेयर रिपोर्ट है। कृपया निर्यात करने से पहले स्थानीय हार्डवेयर जानकारी ताज़ा करें।';

  @override
  String get autoGen5793 =>
      'वर्तमान में कोई निर्यात योग्य स्थानीय हार्डवेयर जानकारी नहीं है।';

  @override
  String get autoGen5794 => 'हार्डवेयर रिपोर्ट फ़ोल्डर क्लीनअप विफल रहा';

  @override
  String get autoGen5795 => 'हार्डवेयर रिपोर्टिंग फ़ोल्डर निर्माण विफल रहा';

  @override
  String get autoGen5796 => 'ACPI तालिका निर्यात विफल या समर्थित नहीं';

  @override
  String get autoGen5797 =>
      'प्रशासक प्राधिकरण रद्द कर दिया गया है और एसीपीआई तालिका निर्यात नहीं की गई है';

  @override
  String get autoGen5798 =>
      'व्यवस्थापक पासवर्ड दर्ज किए बिना एसीपीआई तालिका निर्यात करने में असमर्थ';

  @override
  String get autoGen5799 =>
      'व्यवस्थापक पासवर्ड ग़लत है और ACPI तालिका निर्यात नहीं की जा सकती.';

  @override
  String get autoGen5800 =>
      'एसीपीआई तालिका निर्यात विफल: कोई वैध एसीपीआई तालिका नहीं मिली';

  @override
  String get autoGen5801 =>
      'एसीपीआई तालिका निर्यात विफल: निर्यात प्रक्रिया विफल रही।';

  @override
  String get autoGen5802 => 'हार्डवेयर सूचना फ़ाइल JSON ऑब्जेक्ट नहीं है';

  @override
  String get autoGen5803 => 'हार्डवेयर जानकारी आयात की गई है';

  @override
  String get autoGen5804 =>
      'ACPI तालिका कैटलॉग अमान्य है, कस्टम SSDT उपलब्ध नहीं है';

  @override
  String get autoGen5805 => 'ईएफआई को कॉन्फ़िगर करना प्रारंभ करें...';

  @override
  String get autoGen5806 =>
      'हार्डवेयर जानकारी के आधार पर कॉन्फिगमॉडल तैयार किया जा रहा है...';

  @override
  String get autoGen5807 =>
      'EFI रॉ SSDT का उपयोग करें, SSDT अनुकूलन को छोड़ें।';

  @override
  String get autoGen5808 =>
      'बाहरी हार्डवेयर रिपोर्ट आयात की गई लेकिन कोई एसीपीआई तालिका कैटलॉग प्रदान नहीं किया गया, कस्टम एसएसडीटी अक्षम किया गया।';

  @override
  String get autoGen5809 => 'ओपनकोर ईएफआई निर्यात कर रहा है...';

  @override
  String get autoGen5810 =>
      'EFI लिखा है, ACPI निकालना और SSDT को अनुकूलित करना प्रारंभ करें...';

  @override
  String get autoGen5811 => 'SSDT अनुकूलन प्रक्रिया समाप्त होती है।';

  @override
  String get autoGen5812 => 'SSDT अनुकूलन प्रक्रिया विफल रही.';

  @override
  String get autoGen5813 => 'ईएफआई कॉन्फ़िगरेशन पूरा हुआ।';

  @override
  String get autoGen5814 =>
      'ईएफआई कॉन्फ़िगरेशन विफल रहा, कृपया आउटपुट पथ या लॉग की जांच करें।';

  @override
  String get autoGen5815 =>
      'हार्डवेयर स्वचालित रूप से कॉन्फिगमॉडल नियम उत्पन्न करता है और इसका पुनर्निर्माण किया जा रहा है।';

  @override
  String get autoGen5816 => 'युक्तियों की लंबाई विकल्पों के समान होनी चाहिए';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Storys.md';

  @override
  String get autoGen5818 => 'संपत्ति/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'संपत्ति/एसएसडीटी/साउंड कार्ड पैच.एमडी';

  @override
  String get autoGen5820 => 'संपत्ति/एसएसडीटी/ग्राफिक्स कार्ड नकली.एमडी';

  @override
  String get autoGen5821 => 'संपत्ति/एसएसडीटी/परिरक्षण उपकरण.एमडी';

  @override
  String get autoGen5822 => 'संपत्ति/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'ब्लूटूथ ड्राइवर निर्देश:\n  1. जब इंटेल वाईफाई की जांच की जाती है, तो इंटेल ब्लूटूथ ड्राइवर मैकओएस संस्करण के अनुसार स्वचालित रूप से जोड़ा जाएगा, इसे मैन्युअल रूप से जांचने की आवश्यकता नहीं है! ! !\n  2. जब ब्रॉडकॉम वाईफाई की जांच की जाती है, तो ब्रॉडकॉम ब्लूटूथ ड्राइवर मैकओएस संस्करण के अनुसार स्वचालित रूप से जोड़ा जाएगा, इसे मैन्युअल रूप से जांचने की कोई आवश्यकता नहीं है! ! !\n  3. जब एथेरोस वाईफाई की जांच की जाती है, तो एथेरोस ब्लूटूथ ड्राइवर स्वचालित रूप से जुड़ जाएगा, इसे मैन्युअल रूप से जांचने की आवश्यकता नहीं है! ! !\n  4. यदि वाईफाई मॉडल की जांच नहीं की गई है या ब्लूटूथ मॉडल की व्याख्या नहीं की गई है, तो आपको इसे मैन्युअल रूप से जांचना होगा! ! !\n  5. चूंकि ब्लूटूथ यूएसबी चैनल का उपयोग करता है, अगर ड्राइवर और पैच जोड़ने के बाद भी यह ठीक से काम नहीं करता है, तो कृपया सुनिश्चित करें कि यूएसबी अच्छी तरह से अनुकूलित है! ! !';

  @override
  String get autoGen5824 =>
      'सामान्य एचपीईटी पथ:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  इस विकल्प का उपयोग कुछ साउंड कार्ड IRQ समस्याओं को ठीक करने के लिए किया जाता है! नोट: यदि आपके साउंड कार्ड में IRQ समस्या नहीं है, तो कृपया इस फ़ंक्शन का उपयोग न करें!!!';

  @override
  String get autoGen5825 =>
      'समर्थित macOS संस्करण:\n    • वायरलेस USB बिग सुर एडाप्टर-V18 संस्करण macOS Catalina 10.15.x ~ macOS Tahoe 26.x को सपोर्ट करता है (OCLP USB पैच की आवश्यकता है)\n    • वायरलेस यूएसबी बिग सुर एडाप्टर-वी15 संस्करण ओएस एक्स मावेरिक्स 10.9 ~ मैकओएस कैटालिना 10.15.x का समर्थन करता है\n  समर्थित USB वाईफ़ाई इस प्रकार है:\n    • मुख्य चिप Realtek 802.11n और 802.11ac USB वाई-फाई एडाप्टर है। अधिक विशिष्ट मॉडलों के लिए, कृपया लेखक के निर्देश देखें।';

  @override
  String get autoGen5826 =>
      'AMD असतत ग्राफिक्स नकली (डिवाइस गुण):\n   1. आपको ग्राफ़िक्स कार्ड का PCI पथ भरना होगा, उदाहरण के लिए: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. आपको ग्राफ़िक्स कार्ड की नकली डिवाइस आईडी (हेक्साडेसिमल में 4 अंक) भरनी होगी, उदाहरण के लिए: 73BF\n   3. ग्राफ़िक्स कार्ड के नकली होने के बाद, आपको अभी भी AMD ग्राफ़िक्स कार्ड के लिए आवश्यक स्टार्टअप मापदंडों पर विचार करने की आवश्यकता है (आप इंडिपेंडेंट ग्राफ़िक्स कॉन्फ़िगरेशन -> AMD इंडिपेंडेंट ग्राफ़िक्स -> आवश्यकतानुसार जांच कर सकते हैं)\n   4. टूल ने कुछ ग्राफ़िक्स कार्ड डिवाइस आईडी पहले से तैयार की हैं। यदि नहीं, तो कृपया इसे स्वयं ढूंढें या पूरक जानकारी के लिए लेखक से संपर्क करें।';

  @override
  String get autoGen5827 => 'पुष्टि करना';

  @override
  String get autoGen5828 => 'रद्द करना';

  @override
  String get autoGen5829 => 'ज़रूर';
}
