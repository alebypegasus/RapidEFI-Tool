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
  String get btnExportEfi => 'EFI निर्यात करें';

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

  @override
  String get initialSupportMacOs =>
      'प्रारंभिक मूल रूप से समर्थित macOS संस्करण:';

  @override
  String get lastSupportMacOs => 'नवीनतम मूल रूप से समर्थित macOS संस्करण:';

  @override
  String get oclpSupportMacOs => 'OCLP पैच समर्थित macOS संस्करण:';

  @override
  String get cpuInfoTitle => '[सीपीयू जानकारी]:';

  @override
  String get biosRecommendedEnabled => '[BIOS अनुशंसित सेटिंग्स - सक्षम]:';

  @override
  String get biosRecommendedDisabled => '[BIOS अनुशंसित सेटिंग्स - अक्षम]:';

  @override
  String get historyExpanderDesc =>
      'RapidEFI के साथ जनरेट किए गए EFI स्वचालित रूप से इतिहास में बैकअप हो जाते हैं।\nआप किसी भी समय पहले जनरेट किए गए EFI को पुनः लोड और समायोजित कर सकते हैं।\n\nयह सुविधा RapidEFI V3.0.0 और उससे ऊपर समर्थित है।';

  @override
  String get gpuPresets => 'प्रीसेट';

  @override
  String get gpuByCpuModel => 'सीपीयू मॉडल द्वारा';

  @override
  String get selectCpuGeneration => 'पीढ़ी चुनें';

  @override
  String get selectCpuModel => 'सीपीयू चुनें';

  @override
  String get cpuGenerationLabel => 'सीपीयू पीढ़ी';

  @override
  String get cpuModelLabel => 'सीपीयू मॉडल';

  @override
  String get matchingIgpuTip =>
      'यदि मेल खाता है तो जांचें, अन्यथा अनियंत्रित छोड़ दें';

  @override
  String get selectPropertiesToApply => 'लागू करने के लिए गुण चुनें';

  @override
  String get motherboardConfigTitle => 'मदरबोर्ड मॉडल कॉन्फ़िगरेशन:';

  @override
  String get motherboardConfigItems =>
      'लागू करने के लिए कॉन्फ़िगरेशन आइटम चुनें';

  @override
  String get selectModelToConfigure => '(कॉन्फ़िगर करने के लिए मॉडल चुनें)';

  @override
  String get pleaseSelect => 'कृपया चुनें';

  @override
  String get selectAllDeselectAll => 'सभी चुनें / सभी अचयनित करें';

  @override
  String get deselectAll => 'सभी अचयनित करें';

  @override
  String get stuckOnEbFix =>
      '[EB] पर अटके रहने का समाधान (वैकल्पिक - डिफ़ॉल्ट अनुशंसित):';

  @override
  String get renameCurrentEfi => 'वर्तमान EFI का नाम बदलें';

  @override
  String get enterNewName => 'नया नाम दर्ज करें';

  @override
  String get renameEfiTooltip => 'EFI का नाम बदलें';

  @override
  String get adminPrivilegesRequired => 'व्यवस्थापक विशेषाधिकार आवश्यक हैं';

  @override
  String get enterLoginPassword =>
      'कृपया अपना कंप्यूटर लॉगिन पासवर्ड दर्ज करें';

  @override
  String get importHardwareMaterials => 'हार्डवेयर सामग्री आयात करें';

  @override
  String get currentBiosSettings => 'वर्तमान BIOS सेटिंग्स';

  @override
  String get colorTheme => 'रंग थीम';

  @override
  String get noValidHardwareReport =>
      'कोई मान्य हार्डवेयर रिपोर्ट फ़ाइल नहीं मिली';

  @override
  String get viewOnGitHub => 'GitHub पर देखें';

  @override
  String get downloadNow => 'अब डाउनलोड करें';

  @override
  String get btnConfirm => 'पुष्टि करें';

  @override
  String get btnDeleteRecord => 'यह रिकॉर्ड हटाएं';

  @override
  String get currentEfiNamePrefix => 'वर्तमान EFI नाम: ';

  @override
  String get close => 'बंद करें';

  @override
  String get applySelected => 'चयनित लागू करें';

  @override
  String get connectedGpuPrefix => 'कनेक्टेड GPU: ';

  @override
  String get requiresSpoofIdPrefix => 'स्पूफ़ ID आवश्यक: ';

  @override
  String get selectPlatform => 'प्लेटफ़ॉर्म पीढ़ी';

  @override
  String get selectVendor => 'ब्रांड';

  @override
  String get selectModel => 'मदरबोर्ड मॉडल';

  @override
  String get btnImport => 'आयात करें';

  @override
  String get defaultLabel => 'डिफ़ॉल्ट';

  @override
  String get wifiBluetoothDrivers => 'वाई-फ़ाई और ब्लूटूथ ड्राइवर:';

  @override
  String get noWifiDriversByDefault =>
      '(डिफ़ॉल्ट रूप से कोई वाई-फ़ाई ड्राइवर कॉन्फ़िगर नहीं)';

  @override
  String get getIntelModifiedOclp => 'इंटेल संशोधित OCLP प्राप्त करें';

  @override
  String get forLaptopSystems => '(लैपटॉप सिस्टम के लिए)';

  @override
  String get basicConfig => 'बुनियादी विन्यास';

  @override
  String get advancedConfig => 'उन्नत कॉन्फिग';

  @override
  String get portCustomization => 'पोर्ट अनुकूलन';

  @override
  String get displayEdid => 'ईडीआईडी ​​प्रदर्शित करें';

  @override
  String get nvidiaDgpu => 'एनवीडिया dGPU';

  @override
  String get amdDgpu => 'एएमडी dGPU';

  @override
  String get amdDgpuSpoof => 'एएमडी dGPU स्पूफ';

  @override
  String get intelWifi => 'इंटेल वाई-फाई';

  @override
  String get broadcomBrcm => 'ब्रॉडकॉम (बीआरसीएम)';

  @override
  String get atherosWifi => 'एथेरोस';

  @override
  String get usbWifi => 'यूएसबी वाई-फाई';

  @override
  String get bluetoothDrivers => 'ब्लूटूथ ड्राइवर्स';

  @override
  String get debuggingTab => 'डिबगिंग';

  @override
  String get amfiSipTab => 'एएमएफआई / एसआईपी';

  @override
  String get igpuFixesTab => 'आईजीपीयू ठीक करता है';

  @override
  String get dgpuFixesTab => 'dGPU ठीक करता है';

  @override
  String get blackScreenFixesTab => 'ब्लैक स्क्रीन ठीक करता है';

  @override
  String get above4gTab => '4जी डिकोडिंग से ऊपर';

  @override
  String get trackpadFixesTab => 'ट्रैकपैड ठीक करता है';

  @override
  String get othersTab => 'अन्य';

  @override
  String get powerManagementTab => 'बिजली प्रबंधन';

  @override
  String get sleepHibernationTab => 'निद्रा/शीतनिद्रा';

  @override
  String get storageDiskTab => 'भंडारण/डिस्क';

  @override
  String get cpuFixesTab => 'सीपीयू ठीक करता है';

  @override
  String get amdPlatformTab => 'एएमडी प्लेटफार्म';

  @override
  String get usbFixesTab => 'यूएसबी फिक्स';

  @override
  String get sdCardTab => 'एसडी कार्ड';

  @override
  String get brandTab => 'ब्रांड';

  @override
  String get specialMotherboardTab => 'विशेष मदरबोर्ड';

  @override
  String get sipSettingsTab => 'एसआईपी सेटिंग्स';

  @override
  String get renameCpuTab => 'सीपीयू का नाम बदलें';

  @override
  String get uiScaleTab => 'यूआई स्केल';

  @override
  String get acpiConfigTab => 'एसीपीआई कॉन्फिग';

  @override
  String get booterConfigTab => 'बूटर कॉन्फिग';

  @override
  String get kernelConfigTab => 'कर्नेल कॉन्फ़िग';

  @override
  String get uefiConfigTab => 'यूईएफआई कॉन्फ़िगरेशन';

  @override
  String get lookupLayoutId => 'लुकअप लेआउट आईडी';

  @override
  String get visitChris1111Repo => 'क्रिस1111 रिपॉजिटरी पर जाएँ';

  @override
  String get supportedMacOsVersions => 'समर्थित macOS संस्करण:';

  @override
  String get supportedUsbWifiChipsets => 'समर्थित यूएसबी वाई-फाई चिपसेट:';

  @override
  String get selectUtbMap => 'UTBMap का चयन करें';

  @override
  String get selectUtbMapHint =>
      'USBToolBox के साथ बनाए गए मैप किए गए UTBMap.kext का चयन करें';

  @override
  String get reprocessEfiSubtitle =>
      '(रैपिडईएफआई द्वारा उत्पन्न ईएफआई को पुन: संसाधित करें)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI स्वचालित रूप से EFI फ़ोल्डर के अंदर एक configModel फ़ाइल आउटपुट करता है। अपने ईएफआई कॉन्फ़िगरेशन को पुनः लोड और अनुकूलित करने के लिए नीचे इस फ़ाइल को आयात करें।';

  @override
  String get reprocessEfiVersionNote =>
      'यह सुविधा RapidEFI V3.0.0 और इसके बाद के संस्करण पर समर्थित है।';

  @override
  String get dropConfigModelHint =>
      'configModel फ़ाइल को यहां छोड़ें या ब्राउज़ करने के लिए क्लिक करें';

  @override
  String get offLabel => 'बंद';

  @override
  String get onLabel => 'पर';

  @override
  String get githubRepository => 'गिटहब रिपॉजिटरी';

  @override
  String get releasesAndUpdates => 'रिलीज़ और अपडेट';

  @override
  String get projectDocumentation => 'परियोजना दस्तावेज़ीकरण';

  @override
  String get aboutSupportDetails =>
      'रैपिडईएफआई एक ओपन-सोर्स, स्वचालित ओपनकोर ईएफआई जनरेटर, एसीपीआई/एसएसडीटी पैचर और हार्डवेयर विश्लेषण टूल है जो हैकिंटोश और मैकओएस उत्साही लोगों के लिए बनाया गया है।\n\nप्यार से बनाया और बनाए रखा। चल रहे विकास का समर्थन करने के लिए GitHub पर प्रोजेक्ट को स्टार और फोर्क करें!';

  @override
  String get checkApplicableOptions => '(लागू विकल्पों की जाँच करें)';

  @override
  String get optionalCheckApplicableOptions =>
      '(वैकल्पिक - लागू विकल्पों की जांच करें)';

  @override
  String get appleAlcUsedByDefault =>
      '(AppleALC ड्राइवर डिफ़ॉल्ट रूप से उपयोग किया जाता है)';

  @override
  String get noEthernetDriverByDefault =>
      '(डिफ़ॉल्ट रूप से कोई ईथरनेट ड्राइवर नहीं जोड़ा गया)';

  @override
  String get usbInjectAllByDefault =>
      '(USBInjectAll डिफ़ॉल्ट रूप से उपयोग किया जाता है)';

  @override
  String get verboseModeByDefault =>
      '(-v वर्बोज़ मोड डिफ़ॉल्ट रूप से सक्षम है; अक्षम करने के लिए अनचेक करें)';

  @override
  String get optionalDriversSubtitle =>
      '(वैकल्पिक ड्राइवर - जब तक आवश्यक न हो, इसकी आवश्यकता नहीं है)';

  @override
  String get keepDefaultsSubtitle =>
      '(जब तक विशिष्ट अनुकूलन की आवश्यकता न हो, डिफ़ॉल्ट रखें)';

  @override
  String get optionalCheckDeviceBrand =>
      'वैकल्पिक - जांचें कि क्या आपके डिवाइस का ब्रांड मेल खाता है';

  @override
  String get optionalCheckMotherboardModel =>
      'वैकल्पिक - जांचें कि क्या मदरबोर्ड मॉडल मेल खाता है';

  @override
  String get optionalConfigureSip =>
      'वैकल्पिक - आवश्यकतानुसार एसआईपी कॉन्फ़िगर करें (डिफ़ॉल्ट रूप से अक्षम)';

  @override
  String get optionalCustomCpuName => 'वैकल्पिक - कस्टम सीपीयू नाम';

  @override
  String get optionalAdjustUiScale =>
      'वैकल्पिक - ओपनकोर बूट यूआई स्केल समायोजित करें';

  @override
  String get acpiSsdtPatches => 'एसीपीआई - एसएसडीटी पैच';

  @override
  String get acpiPatches => 'एसीपीआई - पैच';

  @override
  String get kernelPatches => 'कर्नेल - पैच';

  @override
  String get powerManagement => 'बिजली प्रबंधन';

  @override
  String get ssdApfsTrimPolicy => 'एनवीएमई/एसएटीए एसएसडी एपीएफएस ट्रिम नीति';

  @override
  String get kernelQuirksSubtitle =>
      'कर्नेल - विचित्रता (डिफ़ॉल्ट सेटिंग्स की अनुशंसा की जाती है जब तक कि विशिष्ट सुधारों की आवश्यकता न हो)';

  @override
  String get uefiDriversSubtitle =>
      'यूईएफआई - ड्राइवर (जब तक विशिष्ट आवश्यकता न हो, डिफ़ॉल्ट कॉन्फ़िगरेशन रखें)';

  @override
  String get uefiOutputSubtitle =>
      'यूईएफआई - आउटपुट (डिफ़ॉल्ट सेटिंग्स अनुशंसित)';

  @override
  String get method1Title =>
      'विधि 1: \'GPRW का नाम बदलकर XPRW\' करें (इंस्टेंट वेक फिक्स)';

  @override
  String get method2Title =>
      'विधि 2: \'UPRW का नाम बदलकर XPRW\' करें (इंस्टेंट वेक फिक्स)';

  @override
  String get method3Title =>
      'विधि 3: \'आरटीसी फिक्स\' का नाम बदलें (आरटीसी पावर ऑफ/सीएमओएस रीसेट ठीक करें)';

  @override
  String get method4Title =>
      'विधि 4: \'बैटरी फिक्स\' का नाम बदलें (16-बिट से 8-बिट बैटरी पैच का समर्थन करें)';

  @override
  String get pciPathLabel => 'dGPU पीसीआई पथ:';

  @override
  String get pciPathPlaceholder => 'पीसीआई पथ दर्ज करें';

  @override
  String get spoofedDeviceIdLabel => 'नकली डिवाइस आईडी:';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'स्पूफ करने के लिए GPU डिवाइस का चयन करें';

  @override
  String get injectDisplayEdidLabel =>
      'डिस्प्ले ईडीआईडी ​​इंजेक्ट करें (आमतौर पर 256 या 512 हेक्स अक्षर):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'प्रदर्शन ईडीआईडी ​​दर्ज करें (आमतौर पर 256 या 512 हेक्स वर्ण; रिक्त स्थान और न्यूलाइन की अनुमति)';

  @override
  String get failed => 'विफल';

  @override
  String get method1 => 'विधि 1';

  @override
  String get method2 => 'विधि 2';

  @override
  String get method3 => 'विधि 3';

  @override
  String get method4 => 'विधि 4';

  @override
  String get optionalKextDrivers => 'वैकल्पिक Kext ड्राइवर्स';

  @override
  String get optionalKextSubTitle =>
      'अपने हार्डवेयर के अनुसार वैकल्पिक kext ड्राइवर चुनें';

  @override
  String get brandConfigTab => 'ब्रांड';

  @override
  String get optionalSettings => 'वैकल्पिक सेटिंग्स';

  @override
  String get optionalSettingsSubTitle => 'अतिरिक्त वैकल्पिक कॉन्फ़िगरेशन चुनें';

  @override
  String get optionalCheckMotherboard => 'विशेष मदरबोर्ड विकल्प';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI स्वचालित रूप से EFI फ़ोल्डर के अंदर एक configModel फ़ाइल आउटपुट करता है।\nअपने EFI कॉन्फ़िगरेशन को पुनः लोड और अनुकूलित करने के लिए नीचे इस फ़ाइल को आयात करें।\n\nयह सुविधा RapidEFI V3.0.0 और इसके बाद के संस्करणों पर समर्थित है।';

  @override
  String get releaseToReimportConfigModel =>
      'configModel को पुनः आयात करने के लिए छोड़ें';

  @override
  String get invalidConfigFileMessage =>
      'अमान्य कॉन्फ़िगरेशन फ़ाइल। कृपया एक मान्य configModel फ़ाइल चुनें।';

  @override
  String get ethernetTitle => 'ईथरनेट ड्राइवर्स:';

  @override
  String get usbTitle => 'USB ड्राइवर्स:';

  @override
  String get ssdtCoreOfficial => '* कोर (आधिकारिक)';

  @override
  String get ssdtRecommendedFixes => '* अनुशंसित (सुधार)';

  @override
  String get ssdtOptionalEnhancements => '* वैकल्पिक (सुधार)';

  @override
  String get platformDesktop => 'डेस्कटॉप';

  @override
  String get platformLaptop => 'लैपटॉप';

  @override
  String get platformNucMini => 'NUC / मिनी पीसी';

  @override
  String get platformHedtServer => 'HEDT / सर्वर';
}
