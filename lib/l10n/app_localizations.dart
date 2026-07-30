import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('pt'),
    Locale('ru'),
    Locale('zh')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'RapidEFI'**
  String get appName;

  /// No description provided for @recent.
  ///
  /// In en, this message translates to:
  /// **'Recent'**
  String get recent;

  /// No description provided for @efiRelated.
  ///
  /// In en, this message translates to:
  /// **'EFI Related'**
  String get efiRelated;

  /// No description provided for @toolsAndGuides.
  ///
  /// In en, this message translates to:
  /// **'Tools & Guides'**
  String get toolsAndGuides;

  /// No description provided for @navHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get navHistory;

  /// No description provided for @navConfigureEFI.
  ///
  /// In en, this message translates to:
  /// **'Configure EFI'**
  String get navConfigureEFI;

  /// No description provided for @navProcessEFI.
  ///
  /// In en, this message translates to:
  /// **'Process EFI'**
  String get navProcessEFI;

  /// No description provided for @navCustomSSDT.
  ///
  /// In en, this message translates to:
  /// **'Custom SSDT'**
  String get navCustomSSDT;

  /// No description provided for @navOCLPPatch.
  ///
  /// In en, this message translates to:
  /// **'OCLP-X Patch'**
  String get navOCLPPatch;

  /// No description provided for @navTahoeGuide.
  ///
  /// In en, this message translates to:
  /// **'macOS Tahoe 26'**
  String get navTahoeGuide;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @navSponsor.
  ///
  /// In en, this message translates to:
  /// **'Sponsor Developer'**
  String get navSponsor;

  /// No description provided for @searchPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get searchPlaceholder;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @clickAgainToExit.
  ///
  /// In en, this message translates to:
  /// **'Click again to exit'**
  String get clickAgainToExit;

  /// No description provided for @currentOpenCoreVersion.
  ///
  /// In en, this message translates to:
  /// **'Current OpenCore Version: {version}'**
  String currentOpenCoreVersion(Object version);

  /// No description provided for @copyrightTitle.
  ///
  /// In en, this message translates to:
  /// **'Copyright Statement'**
  String get copyrightTitle;

  /// No description provided for @copyrightText.
  ///
  /// In en, this message translates to:
  /// **'Copyright (C) 2024 JeoJay\n\nLicense:\nAllowed for individual or organization use under the following conditions:\n\n1. Non-commercial use:\nThis software is completely free and open source, strictly for non-commercial use. Selling this software is prohibited.\n\n2. Attribution:\nAny form of republication, quotation, or use on third-party websites must explicitly state the source and include the following information:\nDeveloped by JeoJay. Copyright (C) 2024 JeoJay. All rights reserved.\n\n3. Do not modify copyright declarations:\nWhen reposting or using any content of this software, the original copyright notice and attribution information must not be modified or deleted.\n\nDisclaimer:\nThis software is provided \'as is\', without warranty of any kind, express or implied. The copyright owner shall not be liable for any direct or indirect damages arising from the use of this software.'**
  String get copyrightText;

  /// No description provided for @themeModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode:'**
  String get themeModeTitle;

  /// No description provided for @themeModeSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow System'**
  String get themeModeSystem;

  /// No description provided for @themeModeLight.
  ///
  /// In en, this message translates to:
  /// **'Off'**
  String get themeModeLight;

  /// No description provided for @themeModeDark.
  ///
  /// In en, this message translates to:
  /// **'On'**
  String get themeModeDark;

  /// No description provided for @themeColorTitle.
  ///
  /// In en, this message translates to:
  /// **'Theme Color:'**
  String get themeColorTitle;

  /// No description provided for @appFontTitle.
  ///
  /// In en, this message translates to:
  /// **'Application Font:'**
  String get appFontTitle;

  /// No description provided for @efiSettingsTitle.
  ///
  /// In en, this message translates to:
  /// **'EFI Output Options:'**
  String get efiSettingsTitle;

  /// No description provided for @addOpenCoreTheme.
  ///
  /// In en, this message translates to:
  /// **'Add OpenCore boot theme when configuring EFI'**
  String get addOpenCoreTheme;

  /// No description provided for @generateConfigModel.
  ///
  /// In en, this message translates to:
  /// **'Generate configModel file in EFI folder'**
  String get generateConfigModel;

  /// No description provided for @zipEFI.
  ///
  /// In en, this message translates to:
  /// **'Compress EFI into Zip file'**
  String get zipEFI;

  /// No description provided for @languageTitle.
  ///
  /// In en, this message translates to:
  /// **'Language:'**
  String get languageTitle;

  /// No description provided for @languageSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow System'**
  String get languageSystem;

  /// No description provided for @languageEn.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEn;

  /// No description provided for @languagePtBR.
  ///
  /// In en, this message translates to:
  /// **'Português (Brasil)'**
  String get languagePtBR;

  /// No description provided for @languagePtPT.
  ///
  /// In en, this message translates to:
  /// **'Português (Portugal)'**
  String get languagePtPT;

  /// No description provided for @languageZhCN.
  ///
  /// In en, this message translates to:
  /// **'中文 (简体)'**
  String get languageZhCN;

  /// No description provided for @languageZhTW.
  ///
  /// In en, this message translates to:
  /// **'中文 (繁體)'**
  String get languageZhTW;

  /// No description provided for @languageJa.
  ///
  /// In en, this message translates to:
  /// **'日本語'**
  String get languageJa;

  /// No description provided for @languageEs.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get languageEs;

  /// No description provided for @languageFr.
  ///
  /// In en, this message translates to:
  /// **'Français'**
  String get languageFr;

  /// No description provided for @languageAr.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get languageAr;

  /// No description provided for @languageHi.
  ///
  /// In en, this message translates to:
  /// **'हिन्दी'**
  String get languageHi;

  /// No description provided for @languageRu.
  ///
  /// In en, this message translates to:
  /// **'Русский'**
  String get languageRu;

  /// No description provided for @languageIt.
  ///
  /// In en, this message translates to:
  /// **'Italiano'**
  String get languageIt;

  /// No description provided for @versionUpdateTitle.
  ///
  /// In en, this message translates to:
  /// **'Version Update:'**
  String get versionUpdateTitle;

  /// No description provided for @currentVersion.
  ///
  /// In en, this message translates to:
  /// **'Current Version: {version}'**
  String currentVersion(Object version);

  /// No description provided for @checkUpdate.
  ///
  /// In en, this message translates to:
  /// **'Check for Updates'**
  String get checkUpdate;

  /// No description provided for @checkingUpdate.
  ///
  /// In en, this message translates to:
  /// **'Checking...'**
  String get checkingUpdate;

  /// No description provided for @settingSnippet.
  ///
  /// In en, this message translates to:
  /// **'1. Option \'Add OpenCore boot theme when configuring EFI\' is enabled by default. A boot theme will be included in the output EFI folder. Uncheck if not needed.\n\n2. Option \'Generate configModel file in EFI folder\' is enabled by default. This file can be used to re-edit and adjust the current EFI in the \'Process EFI\' section.\n\n3. Option \'Compress EFI into Zip file\' compresses the output EFI into a Zip file. Note that compressing Zip files may affect overall EFI output progress, especially on lower performance hardware.'**
  String get settingSnippet;

  /// No description provided for @fontMicrosoftYaHei.
  ///
  /// In en, this message translates to:
  /// **'Microsoft YaHei'**
  String get fontMicrosoftYaHei;

  /// No description provided for @fontSarasaGothic.
  ///
  /// In en, this message translates to:
  /// **'Sarasa Gothic'**
  String get fontSarasaGothic;

  /// No description provided for @fontSourceHanSerif.
  ///
  /// In en, this message translates to:
  /// **'Source Han Serif'**
  String get fontSourceHanSerif;

  /// No description provided for @cpuArchitecture.
  ///
  /// In en, this message translates to:
  /// **'CPU Architecture'**
  String get cpuArchitecture;

  /// No description provided for @desktop.
  ///
  /// In en, this message translates to:
  /// **'Desktop'**
  String get desktop;

  /// No description provided for @laptop.
  ///
  /// In en, this message translates to:
  /// **'Laptop'**
  String get laptop;

  /// No description provided for @hedt.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get hedt;

  /// No description provided for @nuc.
  ///
  /// In en, this message translates to:
  /// **'Mini PC'**
  String get nuc;

  /// No description provided for @amd.
  ///
  /// In en, this message translates to:
  /// **'AMD Processor'**
  String get amd;

  /// No description provided for @smbios.
  ///
  /// In en, this message translates to:
  /// **'SMBIOS Model'**
  String get smbios;

  /// No description provided for @generateEFI.
  ///
  /// In en, this message translates to:
  /// **'Generate EFI'**
  String get generateEFI;

  /// No description provided for @clearSelection.
  ///
  /// In en, this message translates to:
  /// **'Clear Selection'**
  String get clearSelection;

  /// No description provided for @exportConfig.
  ///
  /// In en, this message translates to:
  /// **'Export Config'**
  String get exportConfig;

  /// No description provided for @selectTargetFolder.
  ///
  /// In en, this message translates to:
  /// **'Select Target Directory'**
  String get selectTargetFolder;

  /// No description provided for @efiGenerateSuccess.
  ///
  /// In en, this message translates to:
  /// **'EFI generated successfully!'**
  String get efiGenerateSuccess;

  /// No description provided for @efiGenerateFailed.
  ///
  /// In en, this message translates to:
  /// **'EFI generation failed: {error}'**
  String efiGenerateFailed(Object error);

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @openFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Folder'**
  String get openFolder;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get date;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @historyTitle.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get historyTitle;

  /// No description provided for @historyDescription.
  ///
  /// In en, this message translates to:
  /// **'EFIs generated by RapidEFI are automatically backed up after each successful build. You can re-edit and adjust the output based on these records whenever needed.'**
  String get historyDescription;

  /// No description provided for @clearAllHistory.
  ///
  /// In en, this message translates to:
  /// **'Clear All History'**
  String get clearAllHistory;

  /// No description provided for @clearingHistory.
  ///
  /// In en, this message translates to:
  /// **'Clearing history...'**
  String get clearingHistory;

  /// No description provided for @noHistory.
  ///
  /// In en, this message translates to:
  /// **'No history records'**
  String get noHistory;

  /// No description provided for @editEFI.
  ///
  /// In en, this message translates to:
  /// **'Edit EFI'**
  String get editEFI;

  /// No description provided for @configuringEFI.
  ///
  /// In en, this message translates to:
  /// **'Configuring EFI, please wait...'**
  String get configuringEFI;

  /// No description provided for @configureEFISuccess.
  ///
  /// In en, this message translates to:
  /// **'EFI configured successfully'**
  String get configureEFISuccess;

  /// No description provided for @configureEFIFailed.
  ///
  /// In en, this message translates to:
  /// **'Error configuring EFI!\nPlease change the EFI output directory.'**
  String get configureEFIFailed;

  /// No description provided for @sponsorTitle.
  ///
  /// In en, this message translates to:
  /// **'Sponsor Developer'**
  String get sponsorTitle;

  /// No description provided for @visitBilibili.
  ///
  /// In en, this message translates to:
  /// **'Author\'s Bilibili'**
  String get visitBilibili;

  /// No description provided for @visitGithub.
  ///
  /// In en, this message translates to:
  /// **'Visit GitHub'**
  String get visitGithub;

  /// No description provided for @buyCoffeeTitle.
  ///
  /// In en, this message translates to:
  /// **'Buy the Developer a Coffee'**
  String get buyCoffeeTitle;

  /// No description provided for @buyCoffeeText.
  ///
  /// In en, this message translates to:
  /// **'If this tool helped you, feel free to sponsor the developer! Thank you for your support!\n\nAuthor contact: QQ 766264141 or WX: JeoJay127. No other private contact methods exist, beware of scams!'**
  String get buyCoffeeText;

  /// No description provided for @successCasesTitle.
  ///
  /// In en, this message translates to:
  /// **'RapidEFI Success Cases'**
  String get successCasesTitle;

  /// No description provided for @tahoeGuideTitle.
  ///
  /// In en, this message translates to:
  /// **'macOS Tahoe 26 Guide'**
  String get tahoeGuideTitle;

  /// No description provided for @oclpIntro.
  ///
  /// In en, this message translates to:
  /// **'Introduction'**
  String get oclpIntro;

  /// No description provided for @oclpGpu.
  ///
  /// In en, this message translates to:
  /// **'GPU Patch'**
  String get oclpGpu;

  /// No description provided for @oclpWifi.
  ///
  /// In en, this message translates to:
  /// **'WiFi Patch'**
  String get oclpWifi;

  /// No description provided for @ssdtPlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform Patch'**
  String get ssdtPlatform;

  /// No description provided for @ssdtAudio.
  ///
  /// In en, this message translates to:
  /// **'Audio Patch'**
  String get ssdtAudio;

  /// No description provided for @ssdtGpuSpoof.
  ///
  /// In en, this message translates to:
  /// **'GPU Spoofing'**
  String get ssdtGpuSpoof;

  /// No description provided for @ssdtDisableDevice.
  ///
  /// In en, this message translates to:
  /// **'Disable Device'**
  String get ssdtDisableDevice;

  /// No description provided for @ssdtBrightness.
  ///
  /// In en, this message translates to:
  /// **'Brightness Patch'**
  String get ssdtBrightness;

  /// No description provided for @manualEFIConfig.
  ///
  /// In en, this message translates to:
  /// **'Manual EFI Configuration'**
  String get manualEFIConfig;

  /// No description provided for @autoEFIConfig.
  ///
  /// In en, this message translates to:
  /// **'Auto EFI Configuration'**
  String get autoEFIConfig;

  /// No description provided for @cpuSelection.
  ///
  /// In en, this message translates to:
  /// **'CPU Selection:'**
  String get cpuSelection;

  /// No description provided for @platformSelection.
  ///
  /// In en, this message translates to:
  /// **'Platform Selection:'**
  String get platformSelection;

  /// No description provided for @platformInfo.
  ///
  /// In en, this message translates to:
  /// **'Platform Info:'**
  String get platformInfo;

  /// No description provided for @targetMacOSVersion.
  ///
  /// In en, this message translates to:
  /// **'Target macOS Version:'**
  String get targetMacOSVersion;

  /// No description provided for @smbiosModelSetup.
  ///
  /// In en, this message translates to:
  /// **'SMBIOS Model Setup:'**
  String get smbiosModelSetup;

  /// No description provided for @motherboardModelConfig.
  ///
  /// In en, this message translates to:
  /// **'Motherboard Model Config:'**
  String get motherboardModelConfig;

  /// No description provided for @selectMotherboardModelTip.
  ///
  /// In en, this message translates to:
  /// **'(Select motherboard model to apply configuration)'**
  String get selectMotherboardModelTip;

  /// No description provided for @platformGen.
  ///
  /// In en, this message translates to:
  /// **'Platform Generation'**
  String get platformGen;

  /// No description provided for @vendor.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get vendor;

  /// No description provided for @motherboardModel.
  ///
  /// In en, this message translates to:
  /// **'Motherboard Model'**
  String get motherboardModel;

  /// No description provided for @pleaseSelect.
  ///
  /// In en, this message translates to:
  /// **'Please Select'**
  String get pleaseSelect;

  /// No description provided for @selected.
  ///
  /// In en, this message translates to:
  /// **'Selected: '**
  String get selected;

  /// No description provided for @applySelectedConfig.
  ///
  /// In en, this message translates to:
  /// **'Apply Selected Config'**
  String get applySelectedConfig;

  /// No description provided for @noMatchingConfigEntries.
  ///
  /// In en, this message translates to:
  /// **'No matching config entries'**
  String get noMatchingConfigEntries;

  /// No description provided for @pentiumCeleron.
  ///
  /// In en, this message translates to:
  /// **'Pentium / Celeron'**
  String get pentiumCeleron;

  /// No description provided for @pentiumCeleronTip.
  ///
  /// In en, this message translates to:
  /// **'Pentium or Celeron processors require CPU spoofing! Please enable.\nNote: Pentium/Celeron iGPUs are usually not supported!'**
  String get pentiumCeleronTip;

  /// No description provided for @u62CpuTitle.
  ///
  /// In en, this message translates to:
  /// **'U62 Type CPU'**
  String get u62CpuTitle;

  /// No description provided for @u62CpuTip.
  ///
  /// In en, this message translates to:
  /// **'10th Gen Comet Lake U62 CPU (e.g. i3-10110U, i5-10210U, i7-10510U, etc.) - please enable!'**
  String get u62CpuTip;

  /// No description provided for @macOSVersionSnippet.
  ///
  /// In en, this message translates to:
  /// **'The generated EFI is backward compatible with selected macOS version down to OS X El Capitan 10.11.'**
  String get macOSVersionSnippet;

  /// No description provided for @amdCores.
  ///
  /// In en, this message translates to:
  /// **'AMD Core Count:'**
  String get amdCores;

  /// No description provided for @ryzen7000to9000.
  ///
  /// In en, this message translates to:
  /// **'7000~9000 Series CPUs'**
  String get ryzen7000to9000;

  /// No description provided for @useAmdIgpuOutput.
  ///
  /// In en, this message translates to:
  /// **'Use AMD iGPU for Display Output'**
  String get useAmdIgpuOutput;

  /// No description provided for @igpuConfigTitle.
  ///
  /// In en, this message translates to:
  /// **'iGPU Config'**
  String get igpuConfigTitle;

  /// No description provided for @dgpuConfigTitle.
  ///
  /// In en, this message translates to:
  /// **'dGPU Config'**
  String get dgpuConfigTitle;

  /// No description provided for @audioDriver.
  ///
  /// In en, this message translates to:
  /// **'Audio Driver:'**
  String get audioDriver;

  /// No description provided for @defaultAppleALCDriver.
  ///
  /// In en, this message translates to:
  /// **'(Default: uses AppleALC driver)'**
  String get defaultAppleALCDriver;

  /// No description provided for @alcLayoutId.
  ///
  /// In en, this message translates to:
  /// **'ALC Layout ID:'**
  String get alcLayoutId;

  /// No description provided for @queryLayoutId.
  ///
  /// In en, this message translates to:
  /// **'Query Layout ID'**
  String get queryLayoutId;

  /// No description provided for @hpetAcpiPath.
  ///
  /// In en, this message translates to:
  /// **'HPET ACPI Path (fix audio IRQ):'**
  String get hpetAcpiPath;

  /// No description provided for @fixIrq.
  ///
  /// In en, this message translates to:
  /// **'Fix IRQ'**
  String get fixIrq;

  /// No description provided for @selectAudioLayoutIdTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Audio Layout ID'**
  String get selectAudioLayoutIdTitle;

  /// No description provided for @selectAudioLayoutIdTip.
  ///
  /// In en, this message translates to:
  /// **'(Use scroll wheel to select, then click confirm)'**
  String get selectAudioLayoutIdTip;

  /// No description provided for @ethernetDriver.
  ///
  /// In en, this message translates to:
  /// **'Ethernet Driver:'**
  String get ethernetDriver;

  /// No description provided for @defaultNoEthernetDriver.
  ///
  /// In en, this message translates to:
  /// **'(Default: no ethernet driver added)'**
  String get defaultNoEthernetDriver;

  /// No description provided for @loadingData.
  ///
  /// In en, this message translates to:
  /// **'Loading data...'**
  String get loadingData;

  /// No description provided for @refreshHardwareInfo.
  ///
  /// In en, this message translates to:
  /// **'Refresh Hardware Info'**
  String get refreshHardwareInfo;

  /// No description provided for @importHardwareInfo.
  ///
  /// In en, this message translates to:
  /// **'Import Hardware Data'**
  String get importHardwareInfo;

  /// No description provided for @exportHardwareReport.
  ///
  /// In en, this message translates to:
  /// **'Export Hardware Report'**
  String get exportHardwareReport;

  /// No description provided for @exportAcpiTables.
  ///
  /// In en, this message translates to:
  /// **'Export ACPI Tables'**
  String get exportAcpiTables;

  /// No description provided for @efiSettings.
  ///
  /// In en, this message translates to:
  /// **'EFI Settings'**
  String get efiSettings;

  /// No description provided for @outputEFI.
  ///
  /// In en, this message translates to:
  /// **'Export EFI'**
  String get outputEFI;

  /// No description provided for @summaryView.
  ///
  /// In en, this message translates to:
  /// **'Summary'**
  String get summaryView;

  /// No description provided for @detailedView.
  ///
  /// In en, this message translates to:
  /// **'Detailed'**
  String get detailedView;

  /// No description provided for @legendGreen.
  ///
  /// In en, this message translates to:
  /// **'Green: Supports latest OS (macOS Tahoe 26)'**
  String get legendGreen;

  /// No description provided for @legendYellow.
  ///
  /// In en, this message translates to:
  /// **'Yellow: Supports some OS versions'**
  String get legendYellow;

  /// No description provided for @legendRed.
  ///
  /// In en, this message translates to:
  /// **'Red: Completely incompatible'**
  String get legendRed;

  /// No description provided for @noAcpiImported.
  ///
  /// In en, this message translates to:
  /// **'No ACPI Imported'**
  String get noAcpiImported;

  /// No description provided for @personalizedEfiTitle.
  ///
  /// In en, this message translates to:
  /// **'Personalized EFI Settings'**
  String get personalizedEfiTitle;

  /// No description provided for @applySettings.
  ///
  /// In en, this message translates to:
  /// **'Apply Settings'**
  String get applySettings;

  /// No description provided for @configureEFIError.
  ///
  /// In en, this message translates to:
  /// **'Error configuring EFI!\nPlease change the output path'**
  String get configureEFIError;

  /// No description provided for @selectConfigItems.
  ///
  /// In en, this message translates to:
  /// **'Select Configuration Items to Apply'**
  String get selectConfigItems;

  /// No description provided for @newVersionFound.
  ///
  /// In en, this message translates to:
  /// **'New Version Available'**
  String get newVersionFound;

  /// No description provided for @versionTag.
  ///
  /// In en, this message translates to:
  /// **'Version: {tag}'**
  String versionTag(Object tag);

  /// No description provided for @publishedAtDate.
  ///
  /// In en, this message translates to:
  /// **'Release Date: {date}'**
  String publishedAtDate(Object date);

  /// No description provided for @downloadNow.
  ///
  /// In en, this message translates to:
  /// **'Download Now'**
  String get downloadNow;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @generatingEfiAndSsdt.
  ///
  /// In en, this message translates to:
  /// **'Generating EFI & Custom SSDT, please wait...'**
  String get generatingEfiAndSsdt;

  /// No description provided for @configuringEfiTitle.
  ///
  /// In en, this message translates to:
  /// **'Configuring EFI'**
  String get configuringEfiTitle;

  /// No description provided for @configureEfiSuccessTitle.
  ///
  /// In en, this message translates to:
  /// **'EFI Configured Successfully'**
  String get configureEfiSuccessTitle;

  /// No description provided for @configureEfiErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'EFI Configuration Failed'**
  String get configureEfiErrorTitle;

  /// No description provided for @outputDirectory.
  ///
  /// In en, this message translates to:
  /// **'Output Directory:'**
  String get outputDirectory;

  /// No description provided for @openEfiDirectory.
  ///
  /// In en, this message translates to:
  /// **'Open EFI Directory'**
  String get openEfiDirectory;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'Select'**
  String get select;

  /// No description provided for @selectFile.
  ///
  /// In en, this message translates to:
  /// **'Select File'**
  String get selectFile;

  /// No description provided for @selectDirectory.
  ///
  /// In en, this message translates to:
  /// **'Select Directory'**
  String get selectDirectory;

  /// No description provided for @hardwareReport.
  ///
  /// In en, this message translates to:
  /// **'Hardware Report'**
  String get hardwareReport;

  /// No description provided for @acpiTablesDirectory.
  ///
  /// In en, this message translates to:
  /// **'ACPI Tables Directory'**
  String get acpiTablesDirectory;

  /// No description provided for @noAcpiFolderTip.
  ///
  /// In en, this message translates to:
  /// **'Without ACPI tables directory, custom SSDT cannot be generated from imported report.'**
  String get noAcpiFolderTip;

  /// No description provided for @hasAcpiFolderTip.
  ///
  /// In en, this message translates to:
  /// **'Selected ACPI tables directory will be used for custom SSDT.'**
  String get hasAcpiFolderTip;

  /// No description provided for @adminRightsRequired.
  ///
  /// In en, this message translates to:
  /// **'Administrator Rights Required'**
  String get adminRightsRequired;

  /// No description provided for @enterSystemPassword.
  ///
  /// In en, this message translates to:
  /// **'Please enter your system password'**
  String get enterSystemPassword;

  /// No description provided for @import.
  ///
  /// In en, this message translates to:
  /// **'Import'**
  String get import;

  /// No description provided for @optionalSelectIfMatching.
  ///
  /// In en, this message translates to:
  /// **'(Optional - check if matching)'**
  String get optionalSelectIfMatching;

  /// No description provided for @selectIfMatching.
  ///
  /// In en, this message translates to:
  /// **'(Check if matching)'**
  String get selectIfMatching;

  /// No description provided for @baseConfig.
  ///
  /// In en, this message translates to:
  /// **'Base Config'**
  String get baseConfig;

  /// No description provided for @advanceConfig.
  ///
  /// In en, this message translates to:
  /// **'Advanced Config'**
  String get advanceConfig;

  /// No description provided for @connectorCustomization.
  ///
  /// In en, this message translates to:
  /// **'Connector Customization'**
  String get connectorCustomization;

  /// No description provided for @displayEdid.
  ///
  /// In en, this message translates to:
  /// **'Display EDID'**
  String get displayEdid;

  /// No description provided for @nvidiaDgpu.
  ///
  /// In en, this message translates to:
  /// **'Nvidia dGPU'**
  String get nvidiaDgpu;

  /// No description provided for @amdDgpu.
  ///
  /// In en, this message translates to:
  /// **'AMD dGPU'**
  String get amdDgpu;

  /// No description provided for @amdDgpuSpoof.
  ///
  /// In en, this message translates to:
  /// **'AMD dGPU Spoof'**
  String get amdDgpuSpoof;

  /// No description provided for @above4gTitle.
  ///
  /// In en, this message translates to:
  /// **'Above 4G Decoding Settings'**
  String get above4gTitle;

  /// No description provided for @addNpciBootArg.
  ///
  /// In en, this message translates to:
  /// **'Add npci=0x2000 boot argument'**
  String get addNpciBootArg;

  /// No description provided for @above4gTip.
  ///
  /// In en, this message translates to:
  /// **'Recommended if Above 4G Decoding is disabled in BIOS. Uncheck if enabled.'**
  String get above4gTip;

  /// No description provided for @personalizedEfiIntroTip.
  ///
  /// In en, this message translates to:
  /// **'All fields are optional. Output EFI will generate corresponding files based on these settings.'**
  String get personalizedEfiIntroTip;

  /// No description provided for @ssdtType.
  ///
  /// In en, this message translates to:
  /// **'SSDT Type:'**
  String get ssdtType;

  /// No description provided for @customSsdt.
  ///
  /// In en, this message translates to:
  /// **'Custom SSDT'**
  String get customSsdt;

  /// No description provided for @presetSsdt.
  ///
  /// In en, this message translates to:
  /// **'Preset SSDT'**
  String get presetSsdt;

  /// No description provided for @cpuTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'CPU Type:'**
  String get cpuTypeLabel;

  /// No description provided for @platformTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Platform Type:'**
  String get platformTypeLabel;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get selectAll;

  /// No description provided for @basicOfficialRecommend.
  ///
  /// In en, this message translates to:
  /// **'* Basic (Official Recommend)'**
  String get basicOfficialRecommend;

  /// No description provided for @recommendFixes.
  ///
  /// In en, this message translates to:
  /// **'* Recommend (Feature Fixes)'**
  String get recommendFixes;

  /// No description provided for @optionalEnhancements.
  ///
  /// In en, this message translates to:
  /// **'* Optional (Enhancements)'**
  String get optionalEnhancements;

  /// No description provided for @personalizedPlatformTip.
  ///
  /// In en, this message translates to:
  /// **'CPU type, platform type, and info are detected from hardware; adjust manually below if incorrect.'**
  String get personalizedPlatformTip;

  /// No description provided for @pciPathLabel.
  ///
  /// In en, this message translates to:
  /// **'GPU PCI Path:'**
  String get pciPathLabel;

  /// No description provided for @pciPathHint.
  ///
  /// In en, this message translates to:
  /// **'Enter PCI Path'**
  String get pciPathHint;

  /// No description provided for @spoofGpuIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Spoof GPU ID:'**
  String get spoofGpuIdLabel;

  /// No description provided for @bluetoothNvramDefaultTitle.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth NVRAM 1 (Default. Automatically added with the Bluetooth driver)'**
  String get bluetoothNvramDefaultTitle;

  /// No description provided for @bluetoothNvramAxTitle.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth NVRAM 2 (Only for Intel AX200/AX201 cards)'**
  String get bluetoothNvramAxTitle;

  /// No description provided for @uefiHfsPlusLegacyTip.
  ///
  /// In en, this message translates to:
  /// **'Uses HfsPlusLegacy. Suitable for old systems (3rd gen or earlier), especially Celeron/Pentium. If OpenCore menu does not appear, try HfsPlus or OpenHfsPlus.'**
  String get uefiHfsPlusLegacyTip;

  /// No description provided for @uefiHfsPlusTip.
  ///
  /// In en, this message translates to:
  /// **'Uses HfsPlus. Suitable for 3rd gen and newer systems. Recommended by default. If the menu does not appear, try HfsPlusLegacy or OpenHfsPlus.'**
  String get uefiHfsPlusTip;

  /// No description provided for @uefiOpenHfsPlusTip.
  ///
  /// In en, this message translates to:
  /// **'Uses OpenHfsPlus. Suitable for 3rd gen and newer, recommended for newer Celeron/Pentium. Avoid if not necessary. If the menu does not appear, try HfsPlusLegacy or HfsPlus.'**
  String get uefiOpenHfsPlusTip;

  /// No description provided for @selectSpoofGpuPlaceholder.
  ///
  /// In en, this message translates to:
  /// **'Select GPU to spoof'**
  String get selectSpoofGpuPlaceholder;

  /// No description provided for @gpuSpoofDataLoadError.
  ///
  /// In en, this message translates to:
  /// **'Failed to load GPU spoof data'**
  String get gpuSpoofDataLoadError;

  /// No description provided for @injectEdidTitle.
  ///
  /// In en, this message translates to:
  /// **'Inject Display EDID (256 or 512 hex chars):'**
  String get injectEdidTitle;

  /// No description provided for @injectEdidHint.
  ///
  /// In en, this message translates to:
  /// **'Enter Display EDID (hex format, spaces allowed)'**
  String get injectEdidHint;

  /// No description provided for @edidHexError.
  ///
  /// In en, this message translates to:
  /// **'EDID data contains non-hexadecimal characters!'**
  String get edidHexError;

  /// No description provided for @edidLengthError.
  ///
  /// In en, this message translates to:
  /// **'EDID length is not a multiple of 256!'**
  String get edidLengthError;

  /// No description provided for @edidInvalidToast.
  ///
  /// In en, this message translates to:
  /// **'EDID data is invalid, please verify before entering!'**
  String get edidInvalidToast;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @clearAllSelection.
  ///
  /// In en, this message translates to:
  /// **'Clear All Selection'**
  String get clearAllSelection;

  /// No description provided for @applySelected.
  ///
  /// In en, this message translates to:
  /// **'Apply Selected ({count} items)'**
  String applySelected(Object count);

  /// No description provided for @getModdedOclp.
  ///
  /// In en, this message translates to:
  /// **'Get Modded OCLP'**
  String get getModdedOclp;

  /// No description provided for @getIntelModdedOclp.
  ///
  /// In en, this message translates to:
  /// **'Get Intel Modded OCLP'**
  String get getIntelModdedOclp;

  /// No description provided for @soundDriverCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Audio Driver:'**
  String get soundDriverCardTitle;

  /// No description provided for @soundDriverDefaultTip.
  ///
  /// In en, this message translates to:
  /// **'(Default uses AppleALC driver)'**
  String get soundDriverDefaultTip;

  /// No description provided for @hpetAcpiPathTitle.
  ///
  /// In en, this message translates to:
  /// **'HPET ACPI Path (Fix Audio IRQ):'**
  String get hpetAcpiPathTitle;

  /// No description provided for @selectAudioLayoutTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Audio Layout ID (DB: {published} v{version})'**
  String selectAudioLayoutTitle(Object published, Object version);

  /// No description provided for @pickerScrollConfirmTip.
  ///
  /// In en, this message translates to:
  /// **'(Scroll with wheel, then click confirm)'**
  String get pickerScrollConfirmTip;

  /// No description provided for @nicDriverCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Network Card Driver:'**
  String get nicDriverCardTitle;

  /// No description provided for @nicDriverDefaultTip.
  ///
  /// In en, this message translates to:
  /// **'(Default no network card driver added)'**
  String get nicDriverDefaultTip;

  /// No description provided for @wifiBtCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi & Bluetooth Driver:'**
  String get wifiBtCardTitle;

  /// No description provided for @wifiBtDefaultTip.
  ///
  /// In en, this message translates to:
  /// **'(Default no Wi-Fi driver, configure manually if needed)'**
  String get wifiBtDefaultTip;

  /// No description provided for @usbCardTitle.
  ///
  /// In en, this message translates to:
  /// **'USB Driver:'**
  String get usbCardTitle;

  /// No description provided for @usbDefaultTip.
  ///
  /// In en, this message translates to:
  /// **'(Default uses USBInjectAll)'**
  String get usbDefaultTip;

  /// No description provided for @selectUtbMap.
  ///
  /// In en, this message translates to:
  /// **'Select UTBMap'**
  String get selectUtbMap;

  /// No description provided for @selectUtbMapHint.
  ///
  /// In en, this message translates to:
  /// **'Select UTBMap.kext created by USBToolBox'**
  String get selectUtbMapHint;

  /// No description provided for @releaseUsbOwnershipText.
  ///
  /// In en, this message translates to:
  /// **'Enable \'UEFI->Quirks->ReleaseUsbOwnership\' quirk to release USB controller ownership from firmware...'**
  String get releaseUsbOwnershipText;

  /// No description provided for @bootArgsCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Boot Arguments:'**
  String get bootArgsCardTitle;

  /// No description provided for @bootArgsDefaultTip.
  ///
  /// In en, this message translates to:
  /// **'(Default enables -v verbose mode, uncheck if not needed)'**
  String get bootArgsDefaultTip;

  /// No description provided for @debugCategory.
  ///
  /// In en, this message translates to:
  /// **'Debug'**
  String get debugCategory;

  /// No description provided for @amfiSipCategory.
  ///
  /// In en, this message translates to:
  /// **'AMFI/SIP'**
  String get amfiSipCategory;

  /// No description provided for @igpuCategory.
  ///
  /// In en, this message translates to:
  /// **'iGPU'**
  String get igpuCategory;

  /// No description provided for @dgpuCategory.
  ///
  /// In en, this message translates to:
  /// **'dGPU'**
  String get dgpuCategory;

  /// No description provided for @blackScreenFixCategory.
  ///
  /// In en, this message translates to:
  /// **'Black Screen Fixes'**
  String get blackScreenFixCategory;

  /// No description provided for @above4gCategory.
  ///
  /// In en, this message translates to:
  /// **'Above 4G Decoding'**
  String get above4gCategory;

  /// No description provided for @touchpadFixCategory.
  ///
  /// In en, this message translates to:
  /// **'Touchpad Fixes'**
  String get touchpadFixCategory;

  /// No description provided for @othersCategory.
  ///
  /// In en, this message translates to:
  /// **'Others'**
  String get othersCategory;

  /// No description provided for @optionalKextsCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Optional Kexts:'**
  String get optionalKextsCardTitle;

  /// No description provided for @optionalKextsDefaultTip.
  ///
  /// In en, this message translates to:
  /// **'(Optional drivers, do not add unless needed)'**
  String get optionalKextsDefaultTip;

  /// No description provided for @graphicsCategory.
  ///
  /// In en, this message translates to:
  /// **'Graphics'**
  String get graphicsCategory;

  /// No description provided for @powerManagementCategory.
  ///
  /// In en, this message translates to:
  /// **'Power Management'**
  String get powerManagementCategory;

  /// No description provided for @sleepCategory.
  ///
  /// In en, this message translates to:
  /// **'Sleep'**
  String get sleepCategory;

  /// No description provided for @diskCategory.
  ///
  /// In en, this message translates to:
  /// **'Disk'**
  String get diskCategory;

  /// No description provided for @cpuCategory.
  ///
  /// In en, this message translates to:
  /// **'CPU'**
  String get cpuCategory;

  /// No description provided for @amdPlatformCategory.
  ///
  /// In en, this message translates to:
  /// **'AMD Platform'**
  String get amdPlatformCategory;

  /// No description provided for @usbCategory.
  ///
  /// In en, this message translates to:
  /// **'USB'**
  String get usbCategory;

  /// No description provided for @sdCardCategory.
  ///
  /// In en, this message translates to:
  /// **'SD Card'**
  String get sdCardCategory;

  /// No description provided for @optionalSettingsCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Optional Settings:'**
  String get optionalSettingsCardTitle;

  /// No description provided for @optionalSettingsDefaultTip.
  ///
  /// In en, this message translates to:
  /// **'(Usually keep defaults unless needed)'**
  String get optionalSettingsDefaultTip;

  /// No description provided for @tabBrand.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get tabBrand;

  /// No description provided for @tabSpecialMotherboard.
  ///
  /// In en, this message translates to:
  /// **'Special Motherboard'**
  String get tabSpecialMotherboard;

  /// No description provided for @tabSipSetting.
  ///
  /// In en, this message translates to:
  /// **'SIP Settings'**
  String get tabSipSetting;

  /// No description provided for @tabCpuRename.
  ///
  /// In en, this message translates to:
  /// **'CPU Rename'**
  String get tabCpuRename;

  /// No description provided for @tabUiScale.
  ///
  /// In en, this message translates to:
  /// **'OpenCore UI Scale'**
  String get tabUiScale;

  /// No description provided for @tabAcpiConfig.
  ///
  /// In en, this message translates to:
  /// **'ACPI Config'**
  String get tabAcpiConfig;

  /// No description provided for @tabBooterConfig.
  ///
  /// In en, this message translates to:
  /// **'Booter Config'**
  String get tabBooterConfig;

  /// No description provided for @tabKernelConfig.
  ///
  /// In en, this message translates to:
  /// **'Kernel Config'**
  String get tabKernelConfig;

  /// No description provided for @tabUefiConfig.
  ///
  /// In en, this message translates to:
  /// **'UEFI Config'**
  String get tabUefiConfig;

  /// No description provided for @processEfiTitle.
  ///
  /// In en, this message translates to:
  /// **'Process EFI'**
  String get processEfiTitle;

  /// No description provided for @processEfiSubTitle.
  ///
  /// In en, this message translates to:
  /// **'(Reprocess EFI configured by RapidEFI)'**
  String get processEfiSubTitle;

  /// No description provided for @processEfiExpanderText.
  ///
  /// In en, this message translates to:
  /// **'EFI configured by RapidEFI tool will generate a file named configModel in the EFI output folder. Import this file here to edit the current EFI again.\n\nThis feature only supports RapidEFI V3.0.0 and above.'**
  String get processEfiExpanderText;

  /// No description provided for @clearCurrentConfig.
  ///
  /// In en, this message translates to:
  /// **'Clear Current Config'**
  String get clearCurrentConfig;

  /// No description provided for @importConfigModelFile.
  ///
  /// In en, this message translates to:
  /// **'Import configModel File'**
  String get importConfigModelFile;

  /// No description provided for @importingConfigModel.
  ///
  /// In en, this message translates to:
  /// **'Importing configModel...'**
  String get importingConfigModel;

  /// No description provided for @releaseToReimport.
  ///
  /// In en, this message translates to:
  /// **'Release mouse to re-import configModel'**
  String get releaseToReimport;

  /// No description provided for @dragConfigModelArea.
  ///
  /// In en, this message translates to:
  /// **'Drag configModel file here\nor click to select file'**
  String get dragConfigModelArea;

  /// No description provided for @importFailedToast.
  ///
  /// In en, this message translates to:
  /// **'Imported config data is invalid, please re-import a valid configModel file.'**
  String get importFailedToast;

  /// No description provided for @changeEfiTitle.
  ///
  /// In en, this message translates to:
  /// **'Change EFI Title'**
  String get changeEfiTitle;

  /// No description provided for @modifyCurrentEfiName.
  ///
  /// In en, this message translates to:
  /// **'Modify Current EFI Name'**
  String get modifyCurrentEfiName;

  /// No description provided for @originalEfiName.
  ///
  /// In en, this message translates to:
  /// **'Original EFI Name: {name}'**
  String originalEfiName(String name);

  /// No description provided for @enterModifiedName.
  ///
  /// In en, this message translates to:
  /// **'Please enter modified name'**
  String get enterModifiedName;

  /// No description provided for @deleteRecord.
  ///
  /// In en, this message translates to:
  /// **'Delete this record'**
  String get deleteRecord;

  /// No description provided for @exportThisEfi.
  ///
  /// In en, this message translates to:
  /// **'Export this EFI'**
  String get exportThisEfi;

  /// No description provided for @releaseToIdentifyHardware.
  ///
  /// In en, this message translates to:
  /// **'Release to automatically identify hardware report and ACPI tables'**
  String get releaseToIdentifyHardware;

  /// No description provided for @dragHardwareReportHere.
  ///
  /// In en, this message translates to:
  /// **'Drag in the hardware report folder exported by this tool\n(automatically identifies sysInfo.txt and ACPI directory)'**
  String get dragHardwareReportHere;

  /// No description provided for @invalidHardwareReportToast.
  ///
  /// In en, this message translates to:
  /// **'Valid hardware report file not recognized'**
  String get invalidHardwareReportToast;

  /// No description provided for @optionalSuffix.
  ///
  /// In en, this message translates to:
  /// **'{title} (Optional)'**
  String optionalSuffix(String title);

  /// No description provided for @notSelected.
  ///
  /// In en, this message translates to:
  /// **'Not selected'**
  String get notSelected;

  /// No description provided for @verifyingAdminPassword.
  ///
  /// In en, this message translates to:
  /// **'Verifying administrator password...'**
  String get verifyingAdminPassword;

  /// No description provided for @hardwareReportAcpiMissing.
  ///
  /// In en, this message translates to:
  /// **'External hardware report imported, but ACPI table directory not provided, SSDT cannot be customized.'**
  String get hardwareReportAcpiMissing;

  /// No description provided for @hwMemory.
  ///
  /// In en, this message translates to:
  /// **'Memory'**
  String get hwMemory;

  /// No description provided for @hwCompatible.
  ///
  /// In en, this message translates to:
  /// **'Compatible'**
  String get hwCompatible;

  /// No description provided for @hwDeviceID.
  ///
  /// In en, this message translates to:
  /// **'Device ID: {id}'**
  String hwDeviceID(String id);

  /// No description provided for @hwType.
  ///
  /// In en, this message translates to:
  /// **'Type: {type}'**
  String hwType(String type);

  /// No description provided for @hwCapacity.
  ///
  /// In en, this message translates to:
  /// **'Capacity: {cap}'**
  String hwCapacity(String cap);

  /// No description provided for @hwInterface.
  ///
  /// In en, this message translates to:
  /// **'Interface: {bus}'**
  String hwInterface(String bus);

  /// No description provided for @hwModel.
  ///
  /// In en, this message translates to:
  /// **'Model: {model}'**
  String hwModel(String model);

  /// No description provided for @hwStorage.
  ///
  /// In en, this message translates to:
  /// **'Storage'**
  String get hwStorage;

  /// No description provided for @hwStorageController.
  ///
  /// In en, this message translates to:
  /// **'Storage\nController'**
  String get hwStorageController;

  /// No description provided for @hwBluetooth.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth'**
  String get hwBluetooth;

  /// No description provided for @hwAudioCard.
  ///
  /// In en, this message translates to:
  /// **'Audio Card'**
  String get hwAudioCard;

  /// No description provided for @hwAudioLayoutId.
  ///
  /// In en, this message translates to:
  /// **'Layout ID:'**
  String get hwAudioLayoutId;

  /// No description provided for @hwNetworkCard.
  ///
  /// In en, this message translates to:
  /// **'Network Card'**
  String get hwNetworkCard;

  /// No description provided for @hwMonitor.
  ///
  /// In en, this message translates to:
  /// **'Monitor'**
  String get hwMonitor;

  /// No description provided for @hwResolution.
  ///
  /// In en, this message translates to:
  /// **'Resolution: {res} @ {hz} Hz'**
  String hwResolution(String res, String hz);

  /// No description provided for @hwMonitorSize.
  ///
  /// In en, this message translates to:
  /// **'({size}\")'**
  String hwMonitorSize(String size);

  /// No description provided for @hwConnectedGpu.
  ///
  /// In en, this message translates to:
  /// **'Connected GPU: {gpu}'**
  String hwConnectedGpu(String gpu);

  /// No description provided for @hwInput.
  ///
  /// In en, this message translates to:
  /// **'Input'**
  String get hwInput;

  /// No description provided for @hwSDCard.
  ///
  /// In en, this message translates to:
  /// **'SD Card'**
  String get hwSDCard;

  /// No description provided for @hwDevice.
  ///
  /// In en, this message translates to:
  /// **'Device: {dev}'**
  String hwDevice(String dev);

  /// No description provided for @hwSerialNumber.
  ///
  /// In en, this message translates to:
  /// **'Serial Number: {sn}'**
  String hwSerialNumber(String sn);

  /// No description provided for @hwBuiltIn.
  ///
  /// In en, this message translates to:
  /// **'Built-in: {builtin}'**
  String hwBuiltIn(String builtin);

  /// No description provided for @hwSecureBoot.
  ///
  /// In en, this message translates to:
  /// **'Secure Boot: {status}'**
  String hwSecureBoot(String status);

  /// No description provided for @hwCSM.
  ///
  /// In en, this message translates to:
  /// **'CSM: {status}'**
  String hwCSM(String status);

  /// No description provided for @hwResizableBar.
  ///
  /// In en, this message translates to:
  /// **'Resizable BAR: {status}'**
  String hwResizableBar(String status);

  /// No description provided for @hwAbove4G.
  ///
  /// In en, this message translates to:
  /// **'Above 4G Decoding: {status}'**
  String hwAbove4G(String status);

  /// No description provided for @hwAHCI.
  ///
  /// In en, this message translates to:
  /// **'AHCI: {status}'**
  String hwAHCI(String status);

  /// No description provided for @hwAHCIUnknown.
  ///
  /// In en, this message translates to:
  /// **'AHCI: Unknown'**
  String get hwAHCIUnknown;

  /// No description provided for @hwEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get hwEnabled;

  /// No description provided for @hwDisabled.
  ///
  /// In en, this message translates to:
  /// **'Disabled'**
  String get hwDisabled;

  /// No description provided for @hwCurrentBiosSettings.
  ///
  /// In en, this message translates to:
  /// **'Current BIOS Settings'**
  String get hwCurrentBiosSettings;

  /// No description provided for @hwBiosNote.
  ///
  /// In en, this message translates to:
  /// **'Hackintosh Notes:\n1. For all red text, please make sure to turn it on or off in BIOS to keep it blue.\n2. Blue text indicates appropriate settings in most cases.\nSecure Boot: Must be disabled (otherwise unsigned firmware like OC bootloader cannot start normally).\nCSM (Compatibility Support Module): Recommended to disable in most cases (Intel 4th/5th gen mobile IGPU, X99 platforms, and some RX460 graphics cards may need CSM enabled, otherwise screen tearing or boot failure occurs).\nResizable BAR: Recommended to disable in BIOS (if not disabled, make sure ResizeAppleGpuBars is set to 0 in Booter->Quirks to avoid boot issues).\nAbove 4G Decoding: Recommended to enable in BIOS, and remove the automatically checked npci=0x2000 parameter. If this option is not in BIOS, recommend checking npci=0x2000 or npci=0x3000. Note: BIOS Above 4G Decoding and npci parameters are mutually exclusive!\nAHCI (SATA Disk Mode): Must be enabled (if not, disks may not be recognized or a prohibitory symbol appears).'**
  String get hwBiosNote;

  /// No description provided for @hwBit.
  ///
  /// In en, this message translates to:
  /// **'{arch} Bit'**
  String hwBit(String arch);

  /// No description provided for @hwVirtualizationEnabled.
  ///
  /// In en, this message translates to:
  /// **'Virtualization: Enabled'**
  String get hwVirtualizationEnabled;

  /// No description provided for @hwVirtualizationDisabled.
  ///
  /// In en, this message translates to:
  /// **'Virtualization: Disabled'**
  String get hwVirtualizationDisabled;

  /// No description provided for @hwCoresThreads.
  ///
  /// In en, this message translates to:
  /// **'{cores} Cores {threads} Threads'**
  String hwCoresThreads(String cores, String threads);

  /// No description provided for @hwInstructionSet.
  ///
  /// In en, this message translates to:
  /// **'Instruction Set: {simd}'**
  String hwInstructionSet(String simd);

  /// No description provided for @hwCore.
  ///
  /// In en, this message translates to:
  /// **'Core: {core}'**
  String hwCore(String core);

  /// No description provided for @hwSpoofIDRequired.
  ///
  /// In en, this message translates to:
  /// **'Spoof ID Required: {id}'**
  String hwSpoofIDRequired(String id);

  /// No description provided for @hwGPU.
  ///
  /// In en, this message translates to:
  /// **'GPU'**
  String get hwGPU;

  /// No description provided for @hwIncompatible.
  ///
  /// In en, this message translates to:
  /// **'Incompatible'**
  String get hwIncompatible;

  /// No description provided for @hwDeviceType.
  ///
  /// In en, this message translates to:
  /// **'{type}'**
  String hwDeviceType(String type);

  /// No description provided for @hwMotherboard.
  ///
  /// In en, this message translates to:
  /// **'Motherboard'**
  String get hwMotherboard;

  /// No description provided for @hwBrand.
  ///
  /// In en, this message translates to:
  /// **'Brand: {brand}'**
  String hwBrand(String brand);

  /// No description provided for @hwChipset.
  ///
  /// In en, this message translates to:
  /// **'Chipset: {chipset}'**
  String hwChipset(String chipset);

  /// No description provided for @hwAppleALCSnippet.
  ///
  /// In en, this message translates to:
  /// **'AppleALC supports multiple layout IDs. Different IDs may affect audio interface availability.'**
  String get hwAppleALCSnippet;

  /// No description provided for @manualNvidiaInfoText.
  ///
  /// In en, this message translates to:
  /// **'Supported Nvidia GPU series are as follows:\n• Tesla series (8000 - 300 series): Natively supported up to macOS High Sierra 10.13.x (may need NVCAP fix), higher versions require OCLP patch (no Metal support)\nExamples: 8600GT, 9600GT, GT210, GT220, GT240, etc. Too old, not recommended!\n• Kepler series (600 - 800 series): Natively supported up to macOS Big Sur 11.x, higher versions require OCLP patch (supports Metal, true driver)\nKepler core: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black, etc.\nKepler core professional cards: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000, etc.\n• Fermi, Maxwell, Pascal series: Webdriver supported up to macOS High Sierra 10.13.x. For macOS Big Sur 11.x and above, check the boot arguments below and apply OCLP patch (no Metal support, fake driver)\nFermi series: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740, etc.\nMaxwell series: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980, etc.\nPascal series: GTX1050, GTX1060, GTX1070, GTX1080, etc.\nUnsupported Nvidia GPU series (11 series and above are NOT supported):\n• 16 ~ 50 series: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070, etc.'**
  String get manualNvidiaInfoText;

  /// No description provided for @manualEdidInfoText.
  ///
  /// In en, this message translates to:
  /// **'1. Usually used to fix the black screen/no signal issue of Intel 6th-10th Gen iGPU (dGPU EDID is not handled here). (Typical symptom: Keyboard Caps Lock light works, but monitor shows black screen with no signal)\n2. For 500-series desktop motherboards (H510/B560/H570/Q570/Z590/W580) using iGPU HDMI output, injecting real monitor EDID is mandatory, otherwise a black screen is highly likely.\n3. How to get monitor EDID:\nIn Windows, use the RapidEFI tool or hdinfo tool to get the EDID (you can use third-party tools, but you must format the EDID yourself):\n1). Open RapidEFI v4.x or above, click \"Configure EFI\" -> \"Auto Configure EFI\" -> \"Detailed Configuration\" (or click \"Detailed Configuration\" if using hdinfo).\n2). Wait for hardware info auto-detection to finish, then click the EDID code next to the Monitor section to get it (it will prompt successfully copied to clipboard).\n3). Return to this page and paste the EDID into the input box.\n4. Before injecting EDID, please check the target AAPL0X interface in \"Advanced Configuration\"; if unsure, choose based on the actual HDMI fix plan.\n5. EDID data is usually 128 bytes (256 hex chars) or 256 bytes (512 hex chars). If it\'s not, please double-check before inputting!'**
  String get manualEdidInfoText;

  /// No description provided for @manualIgpuConnectorSupported.
  ///
  /// In en, this message translates to:
  /// **'Current Framebuffer: {fb}. Generating framebuffer-conX-alldata per WhateverGreen docs.'**
  String manualIgpuConnectorSupported(String fb);

  /// No description provided for @manualIgpuConnectorUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Current Framebuffer doesn\'t support structured recommendations; delete existing raw values and reselect a supported iGPU base config.'**
  String get manualIgpuConnectorUnsupported;

  /// No description provided for @manualAddConnectorTooltip.
  ///
  /// In en, this message translates to:
  /// **'Add Connector Patch'**
  String get manualAddConnectorTooltip;

  /// No description provided for @manualConnectorLabel.
  ///
  /// In en, this message translates to:
  /// **'Connector'**
  String get manualConnectorLabel;

  /// No description provided for @manualIndexLabel.
  ///
  /// In en, this message translates to:
  /// **'Index'**
  String get manualIndexLabel;

  /// No description provided for @manualBusIdLabel.
  ///
  /// In en, this message translates to:
  /// **'Bus ID'**
  String get manualBusIdLabel;

  /// No description provided for @manualConnectorTypeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get manualConnectorTypeLabel;

  /// No description provided for @manualOldConnector.
  ///
  /// In en, this message translates to:
  /// **'{label} (Legacy)'**
  String manualOldConnector(String label);

  /// No description provided for @manualDeleteConnectorTooltip.
  ///
  /// In en, this message translates to:
  /// **'Delete con{index} patch'**
  String manualDeleteConnectorTooltip(String index);

  /// No description provided for @manualUnparseableValue.
  ///
  /// In en, this message translates to:
  /// **'Raw value unparseable'**
  String get manualUnparseableValue;

  /// No description provided for @manualDeleteAndReadd.
  ///
  /// In en, this message translates to:
  /// **'Please delete and re-add structured connector patches'**
  String get manualDeleteAndReadd;

  /// No description provided for @manualDeleteUnparseableTooltip.
  ///
  /// In en, this message translates to:
  /// **'Delete unparseable connector patch'**
  String get manualDeleteUnparseableTooltip;

  /// No description provided for @manualBatteryDriver.
  ///
  /// In en, this message translates to:
  /// **'Battery Driver'**
  String get manualBatteryDriver;

  /// No description provided for @manualKeyboardTouchpadDriver.
  ///
  /// In en, this message translates to:
  /// **'Keyboard & Touchpad Driver'**
  String get manualKeyboardTouchpadDriver;

  /// No description provided for @manualSensorDriver.
  ///
  /// In en, this message translates to:
  /// **'Sensor Driver (Not recommended unless necessary)'**
  String get manualSensorDriver;

  /// No description provided for @manualKernelTrimStrategy.
  ///
  /// In en, this message translates to:
  /// **'SSD Trim Strategy'**
  String get manualKernelTrimStrategy;

  /// No description provided for @manualKernelPowerManagement.
  ///
  /// In en, this message translates to:
  /// **'Power Management'**
  String get manualKernelPowerManagement;

  /// No description provided for @manualKernelDummyPowerManagement.
  ///
  /// In en, this message translates to:
  /// **'Disable Power Management (DummyPowerManagement), fixes reboot issues caused by CPU power management (e.g. AppleIntelCPUPowerManagement kernel panic, stuck at boot logo, or rebooting right after entering system). For 4th Gen and above, this is the preferred alternative to NullCpuPowerManagement.kext'**
  String get manualKernelDummyPowerManagement;

  /// No description provided for @manualKernelQuirksDefault.
  ///
  /// In en, this message translates to:
  /// **'Kernel - Quirks is recommended to keep default, unless necessary or you know what each item means'**
  String get manualKernelQuirksDefault;

  /// No description provided for @manualUefiProvideConsoleGop.
  ///
  /// In en, this message translates to:
  /// **'ProvideConsoleGop quirk is enabled by default to fix OpenCore boot UI not showing. If it still doesn\'t show, try unchecking this'**
  String get manualUefiProvideConsoleGop;

  /// No description provided for @manualUefiDriversHfs.
  ///
  /// In en, this message translates to:
  /// **'UEFI-Drivers (Fix OpenCore boot UI not showing due to HFS driver)'**
  String get manualUefiDriversHfs;

  /// No description provided for @manualUefiOutputBootUI.
  ///
  /// In en, this message translates to:
  /// **'UEFI - Output (Fix OpenCore boot UI not showing)'**
  String get manualUefiOutputBootUI;

  /// No description provided for @manualSpecialMotherboardTip.
  ///
  /// In en, this message translates to:
  /// **'Optional - check if your motherboard matches the description'**
  String get manualSpecialMotherboardTip;

  /// No description provided for @manualCsrSettingTip.
  ///
  /// In en, this message translates to:
  /// **'Optional - set according to needs, SIP is disabled by default'**
  String get manualCsrSettingTip;

  /// No description provided for @manualRenameCpuNameTip.
  ///
  /// In en, this message translates to:
  /// **'Optional - customize CPU name'**
  String get manualRenameCpuNameTip;

  /// No description provided for @manualRenameCpuNameLabel.
  ///
  /// In en, this message translates to:
  /// **'Input CPU name (leave blank to show Windows CPU name):'**
  String get manualRenameCpuNameLabel;

  /// No description provided for @manualRenameCpuNameHint.
  ///
  /// In en, this message translates to:
  /// **'Input CPU name here'**
  String get manualRenameCpuNameHint;

  /// No description provided for @manualBrandTip.
  ///
  /// In en, this message translates to:
  /// **'Optional - check if the brand matches the description'**
  String get manualBrandTip;

  /// No description provided for @manualBooterPlan1.
  ///
  /// In en, this message translates to:
  /// **'Plan 1'**
  String get manualBooterPlan1;

  /// No description provided for @manualBooterPlan2.
  ///
  /// In en, this message translates to:
  /// **'Plan 2'**
  String get manualBooterPlan2;

  /// No description provided for @manualBooterPlan3.
  ///
  /// In en, this message translates to:
  /// **'Plan 3'**
  String get manualBooterPlan3;

  /// No description provided for @manualBooterPlan4.
  ///
  /// In en, this message translates to:
  /// **'Plan 4'**
  String get manualBooterPlan4;

  /// No description provided for @manualBooterEbFix.
  ///
  /// In en, this message translates to:
  /// **'Stuck on EB fix (Optional - usually default is fine):'**
  String get manualBooterEbFix;

  /// No description provided for @manualAcpiPatch.
  ///
  /// In en, this message translates to:
  /// **'ACPI - Patch'**
  String get manualAcpiPatch;

  /// No description provided for @manualAcpiSsdt.
  ///
  /// In en, this message translates to:
  /// **'ACPI - SSDT'**
  String get manualAcpiSsdt;

  /// No description provided for @manualBluetoothNvram.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth NVRAM params:'**
  String get manualBluetoothNvram;

  /// No description provided for @manualUsbWifiGithub.
  ///
  /// In en, this message translates to:
  /// **'Visit author chris1111\'s repo'**
  String get manualUsbWifiGithub;

  /// No description provided for @manualUsbWifiKexts.
  ///
  /// In en, this message translates to:
  /// **'Add required Kexts for USB WiFi (Note: you also need to install the Wireless USB Big Sur Adapter client on macOS. Reboot if it doesn\'t take effect)'**
  String get manualUsbWifiKexts;

  /// No description provided for @manualWifiCardSupport.
  ///
  /// In en, this message translates to:
  /// **'The provided drivers support macOS Mojave 10.14 ~ macOS Sequoia 15! Note that Monterey 12 and above require OCLP patch to work properly!!!'**
  String get manualWifiCardSupport;

  /// No description provided for @manualWifiAtheros.
  ///
  /// In en, this message translates to:
  /// **'Atheros'**
  String get manualWifiAtheros;

  /// No description provided for @manualWifiIntel.
  ///
  /// In en, this message translates to:
  /// **'Intel'**
  String get manualWifiIntel;

  /// No description provided for @manualWifiBrcm.
  ///
  /// In en, this message translates to:
  /// **'Broadcom (Brcm)'**
  String get manualWifiBrcm;

  /// No description provided for @manualWifiBluetoothDriver.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth Driver'**
  String get manualWifiBluetoothDriver;

  /// No description provided for @manualWifiItlwmPlan.
  ///
  /// In en, this message translates to:
  /// **'Plan 2, use itlwm (requires HeliPort), Intel WiFi driver. Conflicts with Plan 1, DO NOT use together!!!'**
  String get manualWifiItlwmPlan;

  /// No description provided for @manualWifiAirportItlwmPlan.
  ///
  /// In en, this message translates to:
  /// **'Plan 1, use AirportItlwm, Intel WiFi driver, adds all WiFi kexts (large size, choose carefully). Conflicts with Plan 2, DO NOT use together!!!'**
  String get manualWifiAirportItlwmPlan;

  /// No description provided for @manualWifiAddAllDrivers.
  ///
  /// In en, this message translates to:
  /// **'Add all WiFi drivers (large size, choose carefully)'**
  String get manualWifiAddAllDrivers;

  /// No description provided for @manualLaptopMainly.
  ///
  /// In en, this message translates to:
  /// **'(Mainly for laptops)'**
  String get manualLaptopMainly;

  /// No description provided for @manualLaptopRelatedDrivers.
  ///
  /// In en, this message translates to:
  /// **'Laptop related drivers:'**
  String get manualLaptopRelatedDrivers;

  /// No description provided for @manualLaptopOtherFixes.
  ///
  /// In en, this message translates to:
  /// **'Other fixes'**
  String get manualLaptopOtherFixes;

  /// No description provided for @manualLaptopOtherFixesTip.
  ///
  /// In en, this message translates to:
  /// **'Other fixes (Not recommended unless necessary)'**
  String get manualLaptopOtherFixesTip;

  /// No description provided for @manualMotherboardSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All / None'**
  String get manualMotherboardSelectAll;

  /// No description provided for @manualMotherboardDetails.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get manualMotherboardDetails;

  /// No description provided for @manualMotherboardSelectedCount.
  ///
  /// In en, this message translates to:
  /// **'({selected}/{total} Selected)'**
  String manualMotherboardSelectedCount(String selected, String total);

  /// No description provided for @manualMotherboardAppliedCount.
  ///
  /// In en, this message translates to:
  /// **'Applied {count} configs from {model}'**
  String manualMotherboardAppliedCount(String model, String count);

  /// No description provided for @manualMotherboardFromMbconfs.
  ///
  /// In en, this message translates to:
  /// **'From mbconfs'**
  String get manualMotherboardFromMbconfs;

  /// No description provided for @manualIgpuRemark.
  ///
  /// In en, this message translates to:
  /// **'⚠️ Remark'**
  String get manualIgpuRemark;

  /// No description provided for @manualIgpuSelectCpu.
  ///
  /// In en, this message translates to:
  /// **'Select CPU'**
  String get manualIgpuSelectCpu;

  /// No description provided for @manualIgpuLoadConfig.
  ///
  /// In en, this message translates to:
  /// **'Load iGPU config from CPU model'**
  String get manualIgpuLoadConfig;

  /// No description provided for @manualIgpuSelectProperties.
  ///
  /// In en, this message translates to:
  /// **'Select properties to apply'**
  String get manualIgpuSelectProperties;

  /// No description provided for @manualIgpuPresetScheme.
  ///
  /// In en, this message translates to:
  /// **'Preset Scheme'**
  String get manualIgpuPresetScheme;

  /// No description provided for @manualIgpuSelectGen.
  ///
  /// In en, this message translates to:
  /// **'Select Generation'**
  String get manualIgpuSelectGen;

  /// No description provided for @manualIgpuSelectedCpu.
  ///
  /// In en, this message translates to:
  /// **'Selected: {model}  {igpu}'**
  String manualIgpuSelectedCpu(String model, String igpu);

  /// No description provided for @manualIgpuCpuModel.
  ///
  /// In en, this message translates to:
  /// **'CPU Model'**
  String get manualIgpuCpuModel;

  /// No description provided for @manualIgpuMatchOrNot.
  ///
  /// In en, this message translates to:
  /// **'Check if matched'**
  String get manualIgpuMatchOrNot;

  /// No description provided for @manualIgpuCpuGen.
  ///
  /// In en, this message translates to:
  /// **'CPU Gen'**
  String get manualIgpuCpuGen;

  /// No description provided for @manualIgpuByCpuModel.
  ///
  /// In en, this message translates to:
  /// **'By CPU Model'**
  String get manualIgpuByCpuModel;

  /// No description provided for @manualIgpuName.
  ///
  /// In en, this message translates to:
  /// **'iGPU'**
  String get manualIgpuName;

  /// No description provided for @manualIgpuLoadedConfig.
  ///
  /// In en, this message translates to:
  /// **'Loaded {igpu} iGPU config from {model}, writing {count} properties'**
  String manualIgpuLoadedConfig(String model, String igpu, String count);

  /// No description provided for @manualIgpuFromModel.
  ///
  /// In en, this message translates to:
  /// **'From {model} ({igpu})'**
  String manualIgpuFromModel(String model, String igpu);

  /// No description provided for @manualIgpuSelectInstruction.
  ///
  /// In en, this message translates to:
  /// **'Select CPU gen and model, then check properties to apply'**
  String get manualIgpuSelectInstruction;

  /// No description provided for @manualIgpuModel.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get manualIgpuModel;

  /// No description provided for @manualFakeGpuSelect.
  ///
  /// In en, this message translates to:
  /// **'Select GPU to spoof'**
  String get manualFakeGpuSelect;

  /// No description provided for @settingsThemeColors.
  ///
  /// In en, this message translates to:
  /// **'Color Theme'**
  String get settingsThemeColors;

  /// No description provided for @settingsThemeDefault.
  ///
  /// In en, this message translates to:
  /// **'Default'**
  String get settingsThemeDefault;

  /// No description provided for @sharedInvalidInput.
  ///
  /// In en, this message translates to:
  /// **'Invalid input'**
  String get sharedInvalidInput;

  /// No description provided for @sharedRequiresHexChars.
  ///
  /// In en, this message translates to:
  /// **'Requires {length} hexadecimal characters'**
  String sharedRequiresHexChars(String length);

  /// No description provided for @sharedExample73BF.
  ///
  /// In en, this message translates to:
  /// **'Example: 73BF'**
  String get sharedExample73BF;

  /// No description provided for @sharedTipsLengthMustMatch.
  ///
  /// In en, this message translates to:
  /// **'Tips length must match choices'**
  String get sharedTipsLengthMustMatch;

  /// No description provided for @sharedCpuInfo.
  ///
  /// In en, this message translates to:
  /// **'[CPU Info]: \n{description}'**
  String sharedCpuInfo(String description);

  /// No description provided for @sharedMacosLastSupported.
  ///
  /// In en, this message translates to:
  /// **'Last macOS Version Supported Natively: {version}'**
  String sharedMacosLastSupported(String version);

  /// No description provided for @sharedBiosDisable.
  ///
  /// In en, this message translates to:
  /// **'[BIOS Recommended to Disable]: \n{description}'**
  String sharedBiosDisable(String description);

  /// No description provided for @sharedOclpSupported.
  ///
  /// In en, this message translates to:
  /// **'macOS Version Supported by Patch: {version}'**
  String sharedOclpSupported(String version);

  /// No description provided for @sharedBiosEnable.
  ///
  /// In en, this message translates to:
  /// **'[BIOS Recommended to Enable]: \n{description}'**
  String sharedBiosEnable(String description);

  /// No description provided for @sharedMacosInitialSupport.
  ///
  /// In en, this message translates to:
  /// **'Initial macOS Version Supported Natively: {version}'**
  String sharedMacosInitialSupport(String version);

  /// No description provided for @sharedInvalidAcpiPath.
  ///
  /// In en, this message translates to:
  /// **'Invalid ACPI path'**
  String get sharedInvalidAcpiPath;

  /// No description provided for @sharedFillAcpiPath.
  ///
  /// In en, this message translates to:
  /// **'Fill in ACPI path'**
  String get sharedFillAcpiPath;

  /// No description provided for @sharedFillPciPath.
  ///
  /// In en, this message translates to:
  /// **'Fill in PCI path'**
  String get sharedFillPciPath;

  /// No description provided for @sharedInvalidPciPath.
  ///
  /// In en, this message translates to:
  /// **'Invalid PCI path'**
  String get sharedInvalidPciPath;

  /// No description provided for @sharedGetModifiedOclp.
  ///
  /// In en, this message translates to:
  /// **'Get modified OCLP'**
  String get sharedGetModifiedOclp;

  /// No description provided for @hwConfigModelGenerated.
  ///
  /// In en, this message translates to:
  /// **'ConfigModel generated: {details}'**
  String hwConfigModelGenerated(String details);

  /// No description provided for @hwGetInfoFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to get hardware info: {e}'**
  String hwGetInfoFailed(String e);

  /// No description provided for @hwAdminPwdIncorrect.
  ///
  /// In en, this message translates to:
  /// **'Admin password incorrect, cannot export ACPI tables'**
  String get hwAdminPwdIncorrect;

  /// No description provided for @hwNoNativeInfoExportable.
  ///
  /// In en, this message translates to:
  /// **'No native hardware info available to export'**
  String get hwNoNativeInfoExportable;

  /// No description provided for @hwOutputtingOpencore.
  ///
  /// In en, this message translates to:
  /// **'Outputting OpenCore EFI...'**
  String get hwOutputtingOpencore;

  /// No description provided for @hwAcpiExportFailedErr.
  ///
  /// In en, this message translates to:
  /// **'Native ACPI tables export failed: {error}'**
  String hwAcpiExportFailedErr(String error);

  /// No description provided for @hwSsdtProcessFailed.
  ///
  /// In en, this message translates to:
  /// **'SSDT customization process failed.'**
  String get hwSsdtProcessFailed;

  /// No description provided for @hwConfigRuleRefactoring.
  ///
  /// In en, this message translates to:
  /// **'Hardware ConfigModel generation rules refactoring'**
  String get hwConfigRuleRefactoring;

  /// No description provided for @hwQueryUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Current platform does not support hardware info query'**
  String get hwQueryUnsupported;

  /// No description provided for @hwPreparingSsdt.
  ///
  /// In en, this message translates to:
  /// **'Preparing to customize SSDT: {items}'**
  String hwPreparingSsdt(String items);

  /// No description provided for @hwImportedExtReportHint.
  ///
  /// In en, this message translates to:
  /// **'This is an imported external hardware report, please refresh native hardware info first before exporting'**
  String get hwImportedExtReportHint;

  /// No description provided for @hwRefreshingInfo.
  ///
  /// In en, this message translates to:
  /// **'Refreshing hardware info'**
  String get hwRefreshingInfo;

  /// No description provided for @hwSsdtProcessEnded.
  ///
  /// In en, this message translates to:
  /// **'SSDT customization process ended.'**
  String get hwSsdtProcessEnded;

  /// No description provided for @hwInfoUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Hardware info currently unsupported'**
  String get hwInfoUnsupported;

  /// No description provided for @hwEfiWrittenExtracting.
  ///
  /// In en, this message translates to:
  /// **'EFI written, starting to extract ACPI and customize SSDT...'**
  String get hwEfiWrittenExtracting;

  /// No description provided for @hwConfigEfiFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to configure EFI: {error}'**
  String hwConfigEfiFailed(String error);

  /// No description provided for @hwReportFolderCleanFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to clean hardware report folder'**
  String get hwReportFolderCleanFailed;

  /// No description provided for @hwReportFolderCleanFailedErr.
  ///
  /// In en, this message translates to:
  /// **'Failed to clean hardware report folder: {error}'**
  String hwReportFolderCleanFailedErr(String error);

  /// No description provided for @hwExportingNativeReport.
  ///
  /// In en, this message translates to:
  /// **'Exporting native hardware report...'**
  String get hwExportingNativeReport;

  /// No description provided for @hwAdminAuthCanceled.
  ///
  /// In en, this message translates to:
  /// **'Admin authorization canceled, ACPI tables not exported'**
  String get hwAdminAuthCanceled;

  /// No description provided for @hwImportedNoAcpiDir.
  ///
  /// In en, this message translates to:
  /// **'External hardware report imported but no ACPI tables directory provided, SSDT customization disabled.'**
  String get hwImportedNoAcpiDir;

  /// No description provided for @hwExportAcpiUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Current platform does not support exporting ACPI tables'**
  String get hwExportAcpiUnsupported;

  /// No description provided for @hwReportExportedTo.
  ///
  /// In en, this message translates to:
  /// **'Hardware report exported to {reportDirectory}, {msg}'**
  String hwReportExportedTo(String reportDirectory, String msg);

  /// No description provided for @hwInfoNotJson.
  ///
  /// In en, this message translates to:
  /// **'Hardware info file is not a JSON object'**
  String get hwInfoNotJson;

  /// No description provided for @hwUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Unsupported'**
  String get hwUnsupported;

  /// No description provided for @hwAcpiTempCleanFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to clean ACPI tables temp directory: {error}'**
  String hwAcpiTempCleanFailed(String error);

  /// No description provided for @hwEfiConfigDone.
  ///
  /// In en, this message translates to:
  /// **'EFI configuration complete.'**
  String get hwEfiConfigDone;

  /// No description provided for @hwEfiConfigError.
  ///
  /// In en, this message translates to:
  /// **'Error configuring EFI: {error}'**
  String hwEfiConfigError(String error);

  /// No description provided for @hwNativeAcpiExportFailed.
  ///
  /// In en, this message translates to:
  /// **'Native ACPI tables export failed'**
  String get hwNativeAcpiExportFailed;

  /// No description provided for @hwAcpiToolNotReady.
  ///
  /// In en, this message translates to:
  /// **'ACPI export tool is not ready'**
  String get hwAcpiToolNotReady;

  /// No description provided for @hwFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get hwFailed;

  /// No description provided for @hwImportReportFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to import hardware report: {e}'**
  String hwImportReportFailed(String e);

  /// No description provided for @hwNativeAcpiExportDone.
  ///
  /// In en, this message translates to:
  /// **'Native ACPI tables export complete: {dir}'**
  String hwNativeAcpiExportDone(String dir);

  /// No description provided for @hwAcpiExportFailedNoValid.
  ///
  /// In en, this message translates to:
  /// **'ACPI tables export failed: No valid ACPI tables found'**
  String get hwAcpiExportFailedNoValid;

  /// No description provided for @hwUsingOriginalSsdt.
  ///
  /// In en, this message translates to:
  /// **'Using original EFI SSDT, skipping SSDT customization.'**
  String get hwUsingOriginalSsdt;

  /// No description provided for @hwWaitingRefresh.
  ///
  /// In en, this message translates to:
  /// **'Waiting for hardware info refresh'**
  String get hwWaitingRefresh;

  /// No description provided for @hwInfoLoaded.
  ///
  /// In en, this message translates to:
  /// **'Hardware info loaded successfully'**
  String get hwInfoLoaded;

  /// No description provided for @hwAcpiExportedTo.
  ///
  /// In en, this message translates to:
  /// **'ACPI tables exported to {path}'**
  String hwAcpiExportedTo(String path);

  /// No description provided for @hwStartConfigEfi.
  ///
  /// In en, this message translates to:
  /// **'Starting EFI configuration...'**
  String get hwStartConfigEfi;

  /// No description provided for @hwInfoLoadFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load hardware info'**
  String get hwInfoLoadFailed;

  /// No description provided for @hwCache.
  ///
  /// In en, this message translates to:
  /// **'Cache'**
  String get hwCache;

  /// No description provided for @hwInfoImportDone.
  ///
  /// In en, this message translates to:
  /// **'Hardware info import complete'**
  String get hwInfoImportDone;

  /// No description provided for @hwReportAndAcpiExported.
  ///
  /// In en, this message translates to:
  /// **'Hardware report and ACPI tables exported to {reportDirectory}'**
  String hwReportAndAcpiExported(String reportDirectory);

  /// No description provided for @hwAcpiDirInvalid.
  ///
  /// In en, this message translates to:
  /// **'ACPI tables directory is invalid, SSDT customization unavailable'**
  String get hwAcpiDirInvalid;

  /// No description provided for @hwExportingNativeAcpi.
  ///
  /// In en, this message translates to:
  /// **'Exporting native ACPI tables...'**
  String get hwExportingNativeAcpi;

  /// No description provided for @hwGeneratingConfigModel.
  ///
  /// In en, this message translates to:
  /// **'Generating ConfigModel based on hardware info...'**
  String get hwGeneratingConfigModel;

  /// No description provided for @hwInfoImported.
  ///
  /// In en, this message translates to:
  /// **'Hardware info imported'**
  String get hwInfoImported;

  /// No description provided for @hwAcpiExportFailedOrUnsup.
  ///
  /// In en, this message translates to:
  /// **'ACPI tables export failed or unsupported'**
  String get hwAcpiExportFailedOrUnsup;

  /// No description provided for @hwReportFolderCreateFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to create hardware report folder'**
  String get hwReportFolderCreateFailed;

  /// No description provided for @hwNoAdminPwd.
  ///
  /// In en, this message translates to:
  /// **'Admin password not entered, cannot export ACPI tables'**
  String get hwNoAdminPwd;

  /// No description provided for @hwEfiConfigFailedCheck.
  ///
  /// In en, this message translates to:
  /// **'EFI configuration failed, please check output path or logs.'**
  String get hwEfiConfigFailedCheck;

  /// No description provided for @hwLoadingInfo.
  ///
  /// In en, this message translates to:
  /// **'Loading hardware info'**
  String get hwLoadingInfo;

  /// No description provided for @hwDone.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get hwDone;

  /// No description provided for @hwAcpiExportFailedProcess.
  ///
  /// In en, this message translates to:
  /// **'ACPI tables export failed: Export process execution failed'**
  String get hwAcpiExportFailedProcess;

  /// No description provided for @hwIgpuType.
  ///
  /// In en, this message translates to:
  /// **'iGPU'**
  String get hwIgpuType;

  /// No description provided for @hwGpuCompatible.
  ///
  /// In en, this message translates to:
  /// **'Compatible'**
  String get hwGpuCompatible;

  /// No description provided for @hwGpuIncompatibleNoDisplay.
  ///
  /// In en, this message translates to:
  /// **'Incompatible, no direct display connection'**
  String get hwGpuIncompatibleNoDisplay;

  /// No description provided for @hwGpuIncompatible.
  ///
  /// In en, this message translates to:
  /// **'Incompatible'**
  String get hwGpuIncompatible;

  /// No description provided for @hwLaptop.
  ///
  /// In en, this message translates to:
  /// **'Laptop'**
  String get hwLaptop;

  /// No description provided for @hwGpuLoadingCompat.
  ///
  /// In en, this message translates to:
  /// **'Loading compatibility'**
  String get hwGpuLoadingCompat;

  /// No description provided for @hwGpuLimitedCompat.
  ///
  /// In en, this message translates to:
  /// **'Limited compatibility'**
  String get hwGpuLimitedCompat;

  /// No description provided for @hwClickToCopy.
  ///
  /// In en, this message translates to:
  /// **'Click to copy'**
  String get hwClickToCopy;

  /// No description provided for @hwCopiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get hwCopiedToClipboard;

  /// No description provided for @linkCantOpen.
  ///
  /// In en, this message translates to:
  /// **'Cannot open link'**
  String get linkCantOpen;

  /// No description provided for @clickToCopy.
  ///
  /// In en, this message translates to:
  /// **'Click to copy'**
  String get clickToCopy;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @gpuCard.
  ///
  /// In en, this message translates to:
  /// **'GPU'**
  String get gpuCard;

  /// No description provided for @gpuDeviceId.
  ///
  /// In en, this message translates to:
  /// **'Device ID: {id}'**
  String gpuDeviceId(String id);

  /// No description provided for @gpuCoreCodename.
  ///
  /// In en, this message translates to:
  /// **'Core: {codename}'**
  String gpuCoreCodename(String codename);

  /// No description provided for @gpuCompatible.
  ///
  /// In en, this message translates to:
  /// **'Compatible'**
  String get gpuCompatible;

  /// No description provided for @gpuIncompatible.
  ///
  /// In en, this message translates to:
  /// **'Incompatible'**
  String get gpuIncompatible;

  /// No description provided for @gpuIncompatibleNoDisplay.
  ///
  /// In en, this message translates to:
  /// **'Incompatible, no direct display'**
  String get gpuIncompatibleNoDisplay;

  /// No description provided for @gpuLimitedCompat.
  ///
  /// In en, this message translates to:
  /// **'Limited compatibility'**
  String get gpuLimitedCompat;

  /// No description provided for @gpuLoadingCompat.
  ///
  /// In en, this message translates to:
  /// **'Loading compatibility'**
  String get gpuLoadingCompat;

  /// No description provided for @gpuSpoofId.
  ///
  /// In en, this message translates to:
  /// **'Spoof ID required: {id}'**
  String gpuSpoofId(String id);

  /// No description provided for @bootArgVerbose.
  ///
  /// In en, this message translates to:
  /// **'Enable -v verbose mode (shows debug output during boot, useful for debugging startup issues)'**
  String get bootArgVerbose;

  /// No description provided for @bootArgKeepsyms.
  ///
  /// In en, this message translates to:
  /// **'Print kernel crash symbols to help diagnose issues. Usually used with debug=0x100. Strongly recommended during initial boot debugging.'**
  String get bootArgKeepsyms;

  /// No description provided for @bootArgDebug0x100.
  ///
  /// In en, this message translates to:
  /// **'Prevent automatic restart on kernel panic, allowing you to view crash logs. Strongly recommended during initial boot debugging.'**
  String get bootArgDebug0x100;

  /// No description provided for @bootArgWatchdog0.
  ///
  /// In en, this message translates to:
  /// **'Disable watchdog to prevent accidental panic-triggered restarts during boot debugging.'**
  String get bootArgWatchdog0;

  /// No description provided for @bootArgSlide0.
  ///
  /// In en, this message translates to:
  /// **'Disable KASLR to fix memory conflicts causing early boot kernel panics. Used for debugging.'**
  String get bootArgSlide0;

  /// No description provided for @bootArgNoCompatCheck.
  ///
  /// In en, this message translates to:
  /// **'Skip model compatibility check during boot to avoid the prohibited symbol. Note: does not bypass installer model check.'**
  String get bootArgNoCompatCheck;

  /// No description provided for @bootArgCpus1.
  ///
  /// In en, this message translates to:
  /// **'Enable only 1 CPU core (for X58/X79/X99/X299 multi-core server CPUs with kernel panic issues during early installation debugging).'**
  String get bootArgCpus1;

  /// No description provided for @bootArgBetaFix.
  ///
  /// In en, this message translates to:
  /// **'Fix issues that may appear in the latest macOS (mainly Beta), such as audio, Bluetooth, CPU frequency anomalies. Strongly recommended on Beta versions.'**
  String get bootArgBetaFix;

  /// No description provided for @bootArgAmfi0x80.
  ///
  /// In en, this message translates to:
  /// **'Disable AMFI for newer GPUs (HD4000+, GT710+ Kepler) or when patching Wi-Fi drivers. Do NOT use with amfi_get_out_of_my_way=0x1. Only effective with SIP disabled.'**
  String get bootArgAmfi0x80;

  /// No description provided for @bootArgAmfiGetOut.
  ///
  /// In en, this message translates to:
  /// **'Disable AMFI for older GPUs (e.g., GT240) or when patching Wi-Fi drivers. Do NOT use with amfi=0x80. Only effective with SIP disabled.'**
  String get bootArgAmfiGetOut;

  /// No description provided for @bootArgIpcControl.
  ///
  /// In en, this message translates to:
  /// **'Fix app crashes (e.g., Baidu Netdisk) after disabling AMFI. Only effective with SIP disabled.'**
  String get bootArgIpcControl;

  /// No description provided for @bootArgAmfiPassBeta.
  ///
  /// In en, this message translates to:
  /// **'Ensure AMFIPass.kext works in the latest macOS Tahoe 26 to continue bypassing AMFI security checks.'**
  String get bootArgAmfiPassBeta;

  /// No description provided for @bootArgRevpatch.
  ///
  /// In en, this message translates to:
  /// **'Fix macOS OTA update issues after disabling SIP or SecureBootModel, and fix custom CPU name display.'**
  String get bootArgRevpatch;

  /// No description provided for @bootArgDisableGfxFirmware.
  ///
  /// In en, this message translates to:
  /// **'Disable Apple Graphics Firmware loading to avoid hangs during startup due to firmware load failure (Intel iGPU only).'**
  String get bootArgDisableGfxFirmware;

  /// No description provided for @bootArgWegNoIgpu.
  ///
  /// In en, this message translates to:
  /// **'Disable Intel iGPU (recommended when iGPU cannot be driven or doesn\'t support hardware acceleration).'**
  String get bootArgWegNoIgpu;

  /// No description provided for @bootArgIgfxVesa.
  ///
  /// In en, this message translates to:
  /// **'Disable Intel iGPU acceleration (use when system won\'t start after applying OCLP iGPU patch, debug only).'**
  String get bootArgIgfxVesa;

  /// No description provided for @bootArgIgfxRpsc.
  ///
  /// In en, this message translates to:
  /// **'Fix and improve Intel iGPU performance (e.g., fix 4K HEVC encoding, resolution and FPS issues).'**
  String get bootArgIgfxRpsc;

  /// No description provided for @bootArgIgfxMpc.
  ///
  /// In en, this message translates to:
  /// **'Fix iGPU resolution issues by forcing maximum pixel clock override, removing macOS default resolution/refresh rate limits.'**
  String get bootArgIgfxMpc;

  /// No description provided for @bootArgGfxfw2.
  ///
  /// In en, this message translates to:
  /// **'Enable full iGPU firmware loading to improve utilization and performance. May cause boot failure — use with caution.'**
  String get bootArgGfxfw2;

  /// No description provided for @bootArgCdclk.
  ///
  /// In en, this message translates to:
  /// **'Fix kernel panic on 10th gen Ice Lake due to Core Display Clock (CDCLK) frequency being too low.'**
  String get bootArgCdclk;

  /// No description provided for @bootArgIgfxdbeo.
  ///
  /// In en, this message translates to:
  /// **'Fix kernel panic on 10th gen Ice Lake where the driver incorrectly calculates DVMT pre-allocated memory size.'**
  String get bootArgIgfxdbeo;

  /// No description provided for @bootArgIceLakeDisplay.
  ///
  /// In en, this message translates to:
  /// **'Fix display corruption lasting 7–15 seconds on 10th gen Ice Lake laptops at boot.'**
  String get bootArgIceLakeDisplay;

  /// No description provided for @bootArgIgfxNoTelemetry.
  ///
  /// In en, this message translates to:
  /// **'Disable iGPU telemetry module loading during boot. Some laptops (especially Chromebooks) may hang at boot when this module loads.'**
  String get bootArgIgfxNoTelemetry;

  /// No description provided for @bootArgWegNoEgpu.
  ///
  /// In en, this message translates to:
  /// **'Disable discrete GPU (recommended when the dGPU on Intel dual-GPU laptops — typically NVIDIA — cannot be driven).'**
  String get bootArgWegNoEgpu;

  /// No description provided for @bootArgNvDisable.
  ///
  /// In en, this message translates to:
  /// **'Disable NVIDIA driver (only for debugging incompatible NVIDIA GPUs).'**
  String get bootArgNvDisable;

  /// No description provided for @bootArgUnfairGva.
  ///
  /// In en, this message translates to:
  /// **'Fix hardware DRM support on AMD GPUs (enables DRM-protected content like streaming on supported AMD GPUs).'**
  String get bootArgUnfairGva;

  /// No description provided for @bootArgRadpg15.
  ///
  /// In en, this message translates to:
  /// **'Fix display corruption (scrambled/yellow screen) on older AMD GPUs (HD7750, HD7850 with GCN cores like HD77XX/HD78XX/HD79XX).'**
  String get bootArgRadpg15;

  /// No description provided for @bootArgAmdNoAccel.
  ///
  /// In en, this message translates to:
  /// **'Disable ATI/AMD GPU acceleration (use when system won\'t start after OCLP GPU patch, debug only).'**
  String get bootArgAmdNoAccel;

  /// No description provided for @bootArgRaddvi.
  ///
  /// In en, this message translates to:
  /// **'Fix DVI output display on older AMD GPUs (290X, 370, etc.).'**
  String get bootArgRaddvi;

  /// No description provided for @bootArgRadcodec.
  ///
  /// In en, this message translates to:
  /// **'Fix VDA hardware video encoding support for officially unsupported AMD GPUs (e.g., RX550 Lexa core).'**
  String get bootArgRadcodec;

  /// No description provided for @bootArgNgfxFermi.
  ///
  /// In en, this message translates to:
  /// **'Fix GPU driver issues for older NVIDIA Fermi/Maxwell/Pascal cards (GT610, GTX750, GTX960, GTX1050) on macOS Big Sur 11+. Must apply OCLP GPU patch after entering system! Kepler does NOT need this.'**
  String get bootArgNgfxFermi;

  /// No description provided for @bootArgApplbkl3.
  ///
  /// In en, this message translates to:
  /// **'Enable PWM backlight control for AMD Radeon RX 5000 series GPUs.'**
  String get bootArgApplbkl3;

  /// No description provided for @bootArgAgdpmodIgnore.
  ///
  /// In en, this message translates to:
  /// **'Fix black screen or display issues on some GPUs by completely ignoring AppleGraphicsDevicePolicy.kext restrictions. Use with WhateverGreen.kext.'**
  String get bootArgAgdpmodIgnore;

  /// No description provided for @bootArgAgdpmodPikera.
  ///
  /// In en, this message translates to:
  /// **'Fix black screen at boot for AMD Navi RX5XXX/RX6XXX GPUs (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.) by replacing board-id with board-ix. Use with WhateverGreen.kext.'**
  String get bootArgAgdpmodPikera;

  /// No description provided for @bootArgAgdpmodVit9696.
  ///
  /// In en, this message translates to:
  /// **'Fix black screen after sleep/wake on RX470/RX570 GPUs by disabling board-id check in AppleGraphicsDevicePolicy. Use with WhateverGreen.kext.'**
  String get bootArgAgdpmodVit9696;

  /// No description provided for @bootArgAmdNoDgpuAccel.
  ///
  /// In en, this message translates to:
  /// **'Fix black screen on Ventura+ for AMD RX5XX/RX5XXX/RX6XXX natively-supported GPUs on Intel 3rd gen or older. Apply OCLP GPU patch after booting, then remove this argument.'**
  String get bootArgAmdNoDgpuAccel;

  /// No description provided for @bootArgBrcmfx.
  ///
  /// In en, this message translates to:
  /// **'Fix slow speed on some Broadcom Wi-Fi cards by changing the country code to HK. You can also improve by changing the router channel.'**
  String get bootArgBrcmfx;

  /// No description provided for @bootArgVsmcgen.
  ///
  /// In en, this message translates to:
  /// **'Fix ramrod code hang and SMC emulator corruption issues.'**
  String get bootArgVsmcgen;

  /// No description provided for @bootArgSwdPanic.
  ///
  /// In en, this message translates to:
  /// **'Prevent device restart after sleep to help collect kernel crash logs and debug sleep issues.'**
  String get bootArgSwdPanic;

  /// No description provided for @bootArgCtrsmt.
  ///
  /// In en, this message translates to:
  /// **'Improve topology detection and scheduling for Intel 12th gen+ hybrid (P+E) CPUs. Performance gain not guaranteed — test before enabling. Requires CpuTopologyRebuild.kext.'**
  String get bootArgCtrsmt;

  /// No description provided for @bootArgDarkwake0.
  ///
  /// In en, this message translates to:
  /// **'Completely disable Darkwake mode and use traditional sleep mode. Primarily fixes wake black screen and automatic wake issues.'**
  String get bootArgDarkwake0;

  /// No description provided for @bootArgForceRenderStandby.
  ///
  /// In en, this message translates to:
  /// **'Disable iGPU RC6 render standby to fix NVMe kernel panic caused by iGPU RC6 during sleep.'**
  String get bootArgForceRenderStandby;

  /// No description provided for @bootArgI2cForcePolling.
  ///
  /// In en, this message translates to:
  /// **'Force I2C trackpad to use polling mode instead of interrupt-driven mode (interrupt mode usually requires SSDT customization).'**
  String get bootArgI2cForcePolling;

  /// No description provided for @kextLiluDesc.
  ///
  /// In en, this message translates to:
  /// **'Required base driver providing extensibility and compatibility for macOS. All plugin-type kexts depend on it.'**
  String get kextLiluDesc;

  /// No description provided for @kextVirtualSMCDesc.
  ///
  /// In en, this message translates to:
  /// **'Required SMC emulator. Simulates Apple SMC on non-Apple hardware, providing sensors, fan control, and power management. macOS cannot run without this.'**
  String get kextVirtualSMCDesc;

  /// No description provided for @kextWhateverGreenDesc.
  ///
  /// In en, this message translates to:
  /// **'GPU graphics driver support. Strongly recommended for most users. MacPro7,1 with AMD dGPUs (RX460, RX560+) may uncheck. Usually conflicts with NootRX/NootedRed — do not select together during installation.'**
  String get kextWhateverGreenDesc;

  /// No description provided for @kextAppleALCDesc.
  ///
  /// In en, this message translates to:
  /// **'Use AppleALC to spoof the built-in audio codec (more complete solution, preferred choice).'**
  String get kextAppleALCDesc;

  /// No description provided for @kextVoodooHDADesc.
  ///
  /// In en, this message translates to:
  /// **'Universal audio driver VoodooHDA (loaded during boot, only supports macOS Big Sur 11.2.3 and below; higher versions require injecting into the system kernel extension folder).'**
  String get kextVoodooHDADesc;

  /// No description provided for @kextUSBInjectAllDesc.
  ///
  /// In en, this message translates to:
  /// **'Generic USB injection solution, the default choice when USB customization has not been done.'**
  String get kextUSBInjectAllDesc;

  /// No description provided for @kextUSBToolBoxDesc.
  ///
  /// In en, this message translates to:
  /// **'USBToolBox solution, typically used together with a customized UTBMap.kext.'**
  String get kextUSBToolBoxDesc;

  /// No description provided for @kextBatteryV1Desc.
  ///
  /// In en, this message translates to:
  /// **'Battery driver solution 1 (for laptops with 3rd gen Intel or older platforms).'**
  String get kextBatteryV1Desc;

  /// No description provided for @kextBatteryV2Desc.
  ///
  /// In en, this message translates to:
  /// **'Battery driver solution 2 (for laptops with 3rd gen Intel or newer platforms).'**
  String get kextBatteryV2Desc;

  /// No description provided for @kextAmbientLightDesc.
  ///
  /// In en, this message translates to:
  /// **'Ambient light sensor (automatic screen brightness). Do not use if you have no ambient light sensor, as it may cause issues.'**
  String get kextAmbientLightDesc;

  /// No description provided for @kextAsusNBFnKeysDesc.
  ///
  /// In en, this message translates to:
  /// **'ASUS laptop fan control, power management and other system sensor optimizations. Not recommended for non-ASUS machines.'**
  String get kextAsusNBFnKeysDesc;

  /// No description provided for @kextLenovoDesc.
  ///
  /// In en, this message translates to:
  /// **'Lenovo laptop fan control, power management and other system sensor optimizations. Not recommended for non-Lenovo machines.'**
  String get kextLenovoDesc;

  /// No description provided for @kextDellDesc.
  ///
  /// In en, this message translates to:
  /// **'Dell laptop dedicated sensor for more accurate fan monitoring and control. Not recommended for non-Dell machines.'**
  String get kextDellDesc;

  /// No description provided for @kextNootRXDesc.
  ///
  /// In en, this message translates to:
  /// **'Support officially unsupported RX6XXX dGPUs (RX6700, RX6750XT, RX6750GRE, etc.). Conflicts with WhateverGreen — do not select together during installation.'**
  String get kextNootRXDesc;

  /// No description provided for @kextBatteryFixDesc.
  ///
  /// In en, this message translates to:
  /// **'Battery reading fix, repairs certain battery display issues.'**
  String get kextBatteryFixDesc;

  /// No description provided for @kextNVMeFixDesc.
  ///
  /// In en, this message translates to:
  /// **'Improve compatibility for non-Apple NVMe SSDs and reduce idle power consumption. Incompatible NVMe drives may still crash. Compatible NVMe drives may kernel panic with this driver — use with caution.'**
  String get kextNVMeFixDesc;

  /// No description provided for @kextFeatureUnlockDesc.
  ///
  /// In en, this message translates to:
  /// **'Unlock Universal Control, Sidecar, and other features on unsupported Mac models.'**
  String get kextFeatureUnlockDesc;

  /// No description provided for @kextHibernationFixDesc.
  ///
  /// In en, this message translates to:
  /// **'Fix common hibernation and sleep-related issues.'**
  String get kextHibernationFixDesc;

  /// No description provided for @kextHoRNDIS.
  ///
  /// In en, this message translates to:
  /// **'Allow macOS to use Android device network tethering via USB.'**
  String get kextHoRNDIS;

  /// No description provided for @kextCPUFriendDesc.
  ///
  /// In en, this message translates to:
  /// **'CPU frequency scaling driver, primarily providing frequency scaling support for MacPro7,1 on 11th gen and newer platforms.'**
  String get kextCPUFriendDesc;

  /// No description provided for @kextCPUFriendDataProviderDesc.
  ///
  /// In en, this message translates to:
  /// **'CPUFriend companion data driver, providing CPU frequency scaling data for specific machine models.'**
  String get kextCPUFriendDataProviderDesc;

  /// No description provided for @kextAppleIGHDA.
  ///
  /// In en, this message translates to:
  /// **'Fix Intel iGPU HDMI audio issues on some systems.'**
  String get kextAppleIGHDA;

  /// No description provided for @kextNoTouchID.
  ///
  /// In en, this message translates to:
  /// **'Fix inability to log in to Apple ID and iCloud, usually for laptops without a local wired network card.'**
  String get kextNoTouchID;

  /// No description provided for @kextAppleRTCDesc.
  ///
  /// In en, this message translates to:
  /// **'Fix conflicts between macOS AppleRTC and PC BIOS on newer platforms, e.g., RTC causing hangs, sudden restarts, or immediate wake from sleep.'**
  String get kextAppleRTCDesc;

  /// No description provided for @kextPS2KBMouseDesc.
  ///
  /// In en, this message translates to:
  /// **'PS/2 keyboard and mouse driver (for desktop motherboards with PS/2 round ports).'**
  String get kextPS2KBMouseDesc;

  /// No description provided for @kextPS2KeyboardDesc.
  ///
  /// In en, this message translates to:
  /// **'PS/2 keyboard driver (for desktop motherboards with PS/2 round keyboard ports).'**
  String get kextPS2KeyboardDesc;

  /// No description provided for @kextPS2MouseDesc.
  ///
  /// In en, this message translates to:
  /// **'PS/2 mouse driver (for desktop motherboards with PS/2 round mouse ports).'**
  String get kextPS2MouseDesc;

  /// No description provided for @kextMicrosoftSurfaceDesc.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Surface dedicated keyboard and trackpad driver.'**
  String get kextMicrosoftSurfaceDesc;

  /// No description provided for @kextBrightnessKeysDesc.
  ///
  /// In en, this message translates to:
  /// **'Brightness shortcut key fix.'**
  String get kextBrightnessKeysDesc;

  /// No description provided for @kextGenericUSBXHCIDesc.
  ///
  /// In en, this message translates to:
  /// **'USB 3.0 controller compatibility fix for older or AMD platforms.'**
  String get kextGenericUSBXHCIDesc;

  /// No description provided for @kextXLNCUSBFixDesc.
  ///
  /// In en, this message translates to:
  /// **'Fix USB controller compatibility issues on older AMD platforms (FM1/FM2/AM3).'**
  String get kextXLNCUSBFixDesc;

  /// No description provided for @kextRealtekCardReaderDesc.
  ///
  /// In en, this message translates to:
  /// **'Realtek SD card reader driver (use with RealtekCardReaderFriend).'**
  String get kextRealtekCardReaderDesc;

  /// No description provided for @kextRadeonSensorDesc.
  ///
  /// In en, this message translates to:
  /// **'Optimize AMD Radeon GPU performance, but may cause system crashes or boot failure in some scenarios — use with caution.'**
  String get kextRadeonSensorDesc;

  /// No description provided for @hwStatusIdle.
  ///
  /// In en, this message translates to:
  /// **'Waiting to refresh hardware info'**
  String get hwStatusIdle;

  /// No description provided for @hwStatusLoading.
  ///
  /// In en, this message translates to:
  /// **'Loading hardware info'**
  String get hwStatusLoading;

  /// No description provided for @hwStatusRefreshing.
  ///
  /// In en, this message translates to:
  /// **'Refreshing hardware info'**
  String get hwStatusRefreshing;

  /// No description provided for @hwStatusComplete.
  ///
  /// In en, this message translates to:
  /// **'Hardware info loaded'**
  String get hwStatusComplete;

  /// No description provided for @hwStatusFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to load hardware info'**
  String get hwStatusFailed;

  /// No description provided for @hwStatusUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Hardware info not supported'**
  String get hwStatusUnsupported;

  /// No description provided for @hwStatusImported.
  ///
  /// In en, this message translates to:
  /// **'Hardware info imported'**
  String get hwStatusImported;

  /// No description provided for @hwPlatformUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Current platform does not support hardware info query'**
  String get hwPlatformUnsupported;

  /// No description provided for @hwFetchFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch hardware info: {error}'**
  String hwFetchFailed(String error);

  /// No description provided for @hwExportWarning.
  ///
  /// In en, this message translates to:
  /// **'This is an imported report. Please refresh local hardware info before exporting.'**
  String get hwExportWarning;

  /// No description provided for @hwNoLocalInfo.
  ///
  /// In en, this message translates to:
  /// **'No local hardware info available to export'**
  String get hwNoLocalInfo;

  /// No description provided for @hwFolderCleanFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to clean hardware report folder'**
  String get hwFolderCleanFailed;

  /// No description provided for @hwFolderCleanFailedWithErr.
  ///
  /// In en, this message translates to:
  /// **'Failed to clean hardware report folder: {error}'**
  String hwFolderCleanFailedWithErr(String error);

  /// No description provided for @hwFolderCreateFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to create hardware report folder'**
  String get hwFolderCreateFailed;

  /// No description provided for @hwExporting.
  ///
  /// In en, this message translates to:
  /// **'Exporting local hardware report...'**
  String get hwExporting;

  /// No description provided for @hwExportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Hardware report and ACPI tables exported to {path}'**
  String hwExportSuccess(String path);

  /// No description provided for @hwExportSuccessWithErr.
  ///
  /// In en, this message translates to:
  /// **'Hardware report exported to {path}, {error}'**
  String hwExportSuccessWithErr(String path, String error);

  /// No description provided for @hwAcpiExporting.
  ///
  /// In en, this message translates to:
  /// **'Exporting local ACPI tables...'**
  String get hwAcpiExporting;

  /// No description provided for @hwAcpiExportFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to export local ACPI tables'**
  String get hwAcpiExportFailed;

  /// No description provided for @hwAcpiExportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Local ACPI tables exported: {path}'**
  String hwAcpiExportSuccess(String path);

  /// No description provided for @hwAcpiExportFailedWithErr.
  ///
  /// In en, this message translates to:
  /// **'Failed to export local ACPI tables: {error}'**
  String hwAcpiExportFailedWithErr(String error);

  /// No description provided for @hwAcpiPlatformUnsupported.
  ///
  /// In en, this message translates to:
  /// **'Current platform does not support exporting ACPI tables'**
  String get hwAcpiPlatformUnsupported;

  /// No description provided for @hwAcpiAuthCancelled.
  ///
  /// In en, this message translates to:
  /// **'Admin authorization cancelled. ACPI tables not exported.'**
  String get hwAcpiAuthCancelled;

  /// No description provided for @hwAcpiNoPassword.
  ///
  /// In en, this message translates to:
  /// **'No admin password provided. Cannot export ACPI tables.'**
  String get hwAcpiNoPassword;

  /// No description provided for @hwAcpiWrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Incorrect admin password. Cannot export ACPI tables.'**
  String get hwAcpiWrongPassword;

  /// No description provided for @hwImportNotJson.
  ///
  /// In en, this message translates to:
  /// **'Hardware info file is not a JSON object'**
  String get hwImportNotJson;

  /// No description provided for @hwImportSuccess.
  ///
  /// In en, this message translates to:
  /// **'Hardware info imported'**
  String get hwImportSuccess;

  /// No description provided for @hwImportAcpiInvalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid ACPI tables directory. Custom SSDT unavailable.'**
  String get hwImportAcpiInvalid;

  /// No description provided for @hwImportFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to import hardware report: {error}'**
  String hwImportFailed(String error);

  /// No description provided for @hwConfigStart.
  ///
  /// In en, this message translates to:
  /// **'Starting EFI configuration...'**
  String get hwConfigStart;

  /// No description provided for @hwConfigGenerating.
  ///
  /// In en, this message translates to:
  /// **'Generating ConfigModel from hardware info...'**
  String get hwConfigGenerating;

  /// No description provided for @hwConfigSsdtPrep.
  ///
  /// In en, this message translates to:
  /// **'Preparing custom SSDT: {items}'**
  String hwConfigSsdtPrep(String items);

  /// No description provided for @hwConfigSsdtSkip.
  ///
  /// In en, this message translates to:
  /// **'Using original EFI SSDT. Skipping custom SSDT.'**
  String get hwConfigSsdtSkip;

  /// No description provided for @hwConfigSsdtDisabled.
  ///
  /// In en, this message translates to:
  /// **'Imported external hardware report without ACPI tables directory. Custom SSDT disabled.'**
  String get hwConfigSsdtDisabled;

  /// No description provided for @hwConfigExporting.
  ///
  /// In en, this message translates to:
  /// **'Exporting OpenCore EFI...'**
  String get hwConfigExporting;

  /// No description provided for @hwConfigFailedMsg.
  ///
  /// In en, this message translates to:
  /// **'EFI configuration failed: {error}'**
  String hwConfigFailedMsg(String error);

  /// No description provided for @hwConfigRebuilding.
  ///
  /// In en, this message translates to:
  /// **'Hardware auto-generation ConfigModel rules are being refactored'**
  String get hwConfigRebuilding;

  /// No description provided for @cpuUnknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get cpuUnknown;

  /// No description provided for @platDesktop.
  ///
  /// In en, this message translates to:
  /// **'Desktop'**
  String get platDesktop;

  /// No description provided for @platLaptop.
  ///
  /// In en, this message translates to:
  /// **'Laptop'**
  String get platLaptop;

  /// No description provided for @platMini.
  ///
  /// In en, this message translates to:
  /// **'Mini PC'**
  String get platMini;

  /// No description provided for @platServer.
  ///
  /// In en, this message translates to:
  /// **'Server'**
  String get platServer;

  /// No description provided for @csrEnabled.
  ///
  /// In en, this message translates to:
  /// **'Enable SIP to enhance system security. Recommended if not using OCLP for GPU/WiFi patches.'**
  String get csrEnabled;

  /// No description provided for @csrPartial.
  ///
  /// In en, this message translates to:
  /// **'Disable SIP Option 1'**
  String get csrPartial;

  /// No description provided for @csrPartialDesc.
  ///
  /// In en, this message translates to:
  /// **'Partially disable SIP. Recommended for Big Sur or newer when using OCLP for GPU/WiFi patches.'**
  String get csrPartialDesc;

  /// No description provided for @csrFully.
  ///
  /// In en, this message translates to:
  /// **'Disable SIP Option 2'**
  String get csrFully;

  /// No description provided for @csrFullyDesc.
  ///
  /// In en, this message translates to:
  /// **'Fully disable SIP. Preferred for Big Sur or newer when using OCLP for GPU/WiFi patches.'**
  String get csrFullyDesc;

  /// No description provided for @uiScaleAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto-adapt: Automatically adjust OpenCore boot UI scale based on display resolution.'**
  String get uiScaleAuto;

  /// No description provided for @uiScaleStandard.
  ///
  /// In en, this message translates to:
  /// **'Standard resolution: Suitable for 720p, 1080p, 1440p displays.'**
  String get uiScaleStandard;

  /// No description provided for @uiScaleHigh.
  ///
  /// In en, this message translates to:
  /// **'High resolution: Suitable for 4K/5K displays (fixes small UI elements in OpenCore boot menu).'**
  String get uiScaleHigh;

  /// No description provided for @procDefault.
  ///
  /// In en, this message translates to:
  /// **'Do not modify ProcessorType'**
  String get procDefault;

  /// No description provided for @procKeep.
  ///
  /// In en, this message translates to:
  /// **'Keep system default CPU type display'**
  String get procKeep;

  /// No description provided for @brandAsus.
  ///
  /// In en, this message translates to:
  /// **'ASUS'**
  String get brandAsus;

  /// No description provided for @brandGigabyte.
  ///
  /// In en, this message translates to:
  /// **'GIGABYTE'**
  String get brandGigabyte;

  /// No description provided for @brandAsrock.
  ///
  /// In en, this message translates to:
  /// **'ASRock'**
  String get brandAsrock;

  /// No description provided for @brandMsi.
  ///
  /// In en, this message translates to:
  /// **'MSI'**
  String get brandMsi;

  /// No description provided for @brandDell.
  ///
  /// In en, this message translates to:
  /// **'Dell'**
  String get brandDell;

  /// No description provided for @brandLenovo.
  ///
  /// In en, this message translates to:
  /// **'Lenovo'**
  String get brandLenovo;

  /// No description provided for @brandSony.
  ///
  /// In en, this message translates to:
  /// **'VAIO'**
  String get brandSony;

  /// No description provided for @brandHp.
  ///
  /// In en, this message translates to:
  /// **'HP'**
  String get brandHp;

  /// No description provided for @brandGoogle.
  ///
  /// In en, this message translates to:
  /// **'Chromebook'**
  String get brandGoogle;

  /// No description provided for @brandMicrosoft.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Surface'**
  String get brandMicrosoft;

  /// No description provided for @mbNormal.
  ///
  /// In en, this message translates to:
  /// **'Standard Motherboard'**
  String get mbNormal;

  /// No description provided for @mbOemUsb.
  ///
  /// In en, this message translates to:
  /// **'Some OEM motherboards have USB ownership release issues: EHCI Hand-off failure'**
  String get mbOemUsb;

  /// No description provided for @navAppGuide.
  ///
  /// In en, this message translates to:
  /// **'App Guide'**
  String get navAppGuide;

  /// No description provided for @appGuideTitle.
  ///
  /// In en, this message translates to:
  /// **'RapidEFI User Guide'**
  String get appGuideTitle;

  /// No description provided for @logMsg001.
  ///
  /// In en, this message translates to:
  /// **'=> Failed to find LPC(B)! Operation terminated!'**
  String get logMsg001;

  /// No description provided for @logMsg002.
  ///
  /// In en, this message translates to:
  /// **'No valid DSDT found! Please select a DSDT file or a file directory containing DSDT first!'**
  String get logMsg002;

  /// No description provided for @logMsg003.
  ///
  /// In en, this message translates to:
  /// **'The iasl tool preparation failed! Please update or use the built-in iasl tool first!'**
  String get logMsg003;

  /// No description provided for @logMsg004.
  ///
  /// In en, this message translates to:
  /// **'No valid .aml file found!\\n'**
  String get logMsg004;

  /// No description provided for @logMsg005.
  ///
  /// In en, this message translates to:
  /// **'No valid DSDT found! Please select a DSDT file or a file directory containing DSDT first!'**
  String get logMsg005;

  /// No description provided for @logMsg006.
  ///
  /// In en, this message translates to:
  /// **'Multiple DSDT files are currently detected and only one is allowed to be processed at a time. Please keep one DSDT file and remove the others and try again.\\n'**
  String get logMsg006;

  /// No description provided for @logMsg007.
  ///
  /// In en, this message translates to:
  /// **'Invalid DSDT file! Please reselect a valid DSDT file!'**
  String get logMsg007;

  /// No description provided for @logMsg008.
  ///
  /// In en, this message translates to:
  /// **'{arg0} Decompilation failed!\\n'**
  String logMsg008(String arg0);

  /// No description provided for @logMsg009.
  ///
  /// In en, this message translates to:
  /// **'Compilation result: {arg0}'**
  String logMsg009(String arg0);

  /// No description provided for @logMsg010.
  ///
  /// In en, this message translates to:
  /// **'Error occurred while processing IntObj type: {arg0}'**
  String logMsg010(String arg0);

  /// No description provided for @logMsg011.
  ///
  /// In en, this message translates to:
  /// **'Error processing MethodObj type: {arg0}'**
  String logMsg011(String arg0);

  /// No description provided for @logMsg012.
  ///
  /// In en, this message translates to:
  /// **'No IRQ information found!'**
  String get logMsg012;

  /// No description provided for @logMsg013.
  ///
  /// In en, this message translates to:
  /// **'The current options or custom IRQs are empty! Unable to generate IRQ patch!'**
  String get logMsg013;

  /// No description provided for @logMsg014.
  ///
  /// In en, this message translates to:
  /// **'=> No IRQ information found!'**
  String get logMsg014;

  /// No description provided for @logMsg015.
  ///
  /// In en, this message translates to:
  /// **'Custom IRQ list format wrong! ! ! Separate devices with spaces and IRQs with commas! ! !'**
  String get logMsg015;

  /// No description provided for @logMsg016.
  ///
  /// In en, this message translates to:
  /// **'=> _HID parsing error: {arg0}'**
  String logMsg016(String arg0);

  /// No description provided for @logMsg017.
  ///
  /// In en, this message translates to:
  /// **'No valid device found, skipping HPET operation!'**
  String get logMsg017;

  /// No description provided for @logMsg018.
  ///
  /// In en, this message translates to:
  /// **'No valid IRQs were provided or the IRQs are empty! Operation aborted!'**
  String get logMsg018;

  /// No description provided for @logMsg019.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to locate {arg0}._CRS! Operation terminated!'**
  String logMsg019(String arg0);

  /// No description provided for @logMsg020.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to locate {arg0}._CRS!'**
  String logMsg020(String arg0);

  /// No description provided for @logMsg021.
  ///
  /// In en, this message translates to:
  /// **'=> _CRS appears to have been named XCRS!'**
  String get logMsg021;

  /// No description provided for @logMsg022.
  ///
  /// In en, this message translates to:
  /// **'=> Please disable the renaming of the device from _CRS to XCRS in DSDT and try again after restarting!\\n'**
  String get logMsg022;

  /// No description provided for @logMsg023.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to determine memory access type!'**
  String get logMsg023;

  /// No description provided for @logMsg024.
  ///
  /// In en, this message translates to:
  /// **'=> Cannot convert Base or Length to integer!'**
  String get logMsg024;

  /// No description provided for @logMsg025.
  ///
  /// In en, this message translates to:
  /// **'=> Not found!'**
  String get logMsg025;

  /// No description provided for @logMsg026.
  ///
  /// In en, this message translates to:
  /// **'=> Use default value {arg0} => {arg1}'**
  String logMsg026(String arg0, String arg1);

  /// No description provided for @logMsg027.
  ///
  /// In en, this message translates to:
  /// **'=> Not found!'**
  String get logMsg027;

  /// No description provided for @logMsg028.
  ///
  /// In en, this message translates to:
  /// **'=> Nothing to patch!'**
  String get logMsg028;

  /// No description provided for @logMsg029.
  ///
  /// In en, this message translates to:
  /// **'Missing IRQ patch ending ({arg1}) for {arg0}! Skipped…'**
  String logMsg029(String arg0, String arg1);

  /// No description provided for @logMsg030.
  ///
  /// In en, this message translates to:
  /// **'The following may not be unique and are disabled by default! \\n'**
  String get logMsg030;

  /// No description provided for @logMsg031.
  ///
  /// In en, this message translates to:
  /// **'No valid UID provided, abort operation!'**
  String get logMsg031;

  /// No description provided for @logMsg032.
  ///
  /// In en, this message translates to:
  /// **'{arg0} is a custom UID that may require manual customization or may not be supported at all!'**
  String logMsg032(String arg0);

  /// No description provided for @logMsg033.
  ///
  /// In en, this message translates to:
  /// **'No valid iGPU path found in passed ACPI table!\\n'**
  String get logMsg033;

  /// No description provided for @logMsg034.
  ///
  /// In en, this message translates to:
  /// **'Note: iGPU path is guessed as {arg0}\\n Please verify before use!'**
  String logMsg034(String arg0);

  /// No description provided for @logMsg035.
  ///
  /// In en, this message translates to:
  /// **'Note: The iGPU path has been manually set to {arg0}. Please be sure to confirm whether the path is correct before use!'**
  String logMsg035(String arg0);

  /// No description provided for @logMsg036.
  ///
  /// In en, this message translates to:
  /// **'=> Named EC device found, no need to counterfeit!\\n'**
  String get logMsg036;

  /// No description provided for @logMsg037.
  ///
  /// In en, this message translates to:
  /// **'USBX attribute patch cannot be empty! Operation terminated!'**
  String get logMsg037;

  /// No description provided for @logMsg038.
  ///
  /// In en, this message translates to:
  /// **'No valid processor device found!'**
  String get logMsg038;

  /// No description provided for @logMsg039.
  ///
  /// In en, this message translates to:
  /// **'=> A valid PNP0B00 (RTC) device has been found and verified, no patch or SSDT required! Operation terminated!'**
  String get logMsg039;

  /// No description provided for @logMsg040.
  ///
  /// In en, this message translates to:
  /// **'=> ACPI000E (AWAC) device not found, no patch or SSDT required! Operation terminated!'**
  String get logMsg040;

  /// No description provided for @logMsg041.
  ///
  /// In en, this message translates to:
  /// **'=> No device found! Operation terminated!'**
  String get logMsg041;

  /// No description provided for @logMsg042.
  ///
  /// In en, this message translates to:
  /// **'No match found for the following path:'**
  String get logMsg042;

  /// No description provided for @logMsg043.
  ///
  /// In en, this message translates to:
  /// **'No matches found!'**
  String get logMsg043;

  /// No description provided for @logMsg044.
  ///
  /// In en, this message translates to:
  /// **'Note that the device path must start with the following PciRoot() to match the current ACPI table:'**
  String get logMsg044;

  /// No description provided for @logMsg045.
  ///
  /// In en, this message translates to:
  /// **'=> Not found, does not appear to be a valid {arg0} table!\\n'**
  String logMsg045(String arg0);

  /// No description provided for @logMsg046.
  ///
  /// In en, this message translates to:
  /// **'{arg0} value not found! Operation aborted!'**
  String logMsg046(String arg0);

  /// No description provided for @logMsg047.
  ///
  /// In en, this message translates to:
  /// **'Reset Register Address value not found! Operation aborted!'**
  String get logMsg047;

  /// No description provided for @logMsg048.
  ///
  /// In en, this message translates to:
  /// **'Unable to resolve Processor ID in {arg0}, aborting patching'**
  String logMsg048(String arg0);

  /// No description provided for @logMsg049.
  ///
  /// In en, this message translates to:
  /// **'First CPU in {arg0} already matched, no need to patch the APIC table!'**
  String logMsg049(String arg0);

  /// No description provided for @logMsg050.
  ///
  /// In en, this message translates to:
  /// **'=> No match for Processor found! Operation aborted!'**
  String get logMsg050;

  /// No description provided for @logMsg051.
  ///
  /// In en, this message translates to:
  /// **'Please select IMEI patch!'**
  String get logMsg051;

  /// No description provided for @logMsg052.
  ///
  /// In en, this message translates to:
  /// **'=> IMEI device found at {arg0}, no need to bridge for spoofing! Operation aborted!'**
  String logMsg052(String arg0);

  /// No description provided for @logMsg053.
  ///
  /// In en, this message translates to:
  /// **'=> PCI root device not found! Operation aborted!'**
  String get logMsg053;

  /// No description provided for @logMsg054.
  ///
  /// In en, this message translates to:
  /// **'=> SSDT spoofing IMEI is not enabled, device-id must be set via DeviceProperties!'**
  String get logMsg054;

  /// No description provided for @logMsg055.
  ///
  /// In en, this message translates to:
  /// **'UNC (PNP0A03) device not found! No SSDT-UNC patch required! Operation aborted! \\n'**
  String get logMsg055;

  /// No description provided for @logMsg056.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0}: _STA method does not exist!'**
  String logMsg056(String arg0);

  /// No description provided for @logMsg057.
  ///
  /// In en, this message translates to:
  /// **'=> DMA (PNP0200) device not found in any of the above ACPI tables! Operation aborted! \\n'**
  String get logMsg057;

  /// No description provided for @logMsg058.
  ///
  /// In en, this message translates to:
  /// **'=> The _PTS method is not found, the _PTS scheduling entry and rename patch will not be generated!'**
  String get logMsg058;

  /// No description provided for @logMsg059.
  ///
  /// In en, this message translates to:
  /// **'=> The _WAK method is not found, the _WAK scheduling entry and rename patch will not be generated!'**
  String get logMsg059;

  /// No description provided for @logMsg060.
  ///
  /// In en, this message translates to:
  /// **'=> Scheduleable _PTS/_WAK method not found, SSDT-SleepHook skipped!\\n'**
  String get logMsg060;

  /// No description provided for @logMsg061.
  ///
  /// In en, this message translates to:
  /// **'=> _SST method not found in any of the above ACPI tables! Operation aborted! \\n'**
  String get logMsg061;

  /// No description provided for @logMsg062.
  ///
  /// In en, this message translates to:
  /// **'=> The PNP0C0D device was not found in any of the above ACPI tables! Operation aborted! \\n'**
  String get logMsg062;

  /// No description provided for @logMsg063.
  ///
  /// In en, this message translates to:
  /// **'=> System state is not supported: [systemStatesNotSupported]'**
  String get logMsg063;

  /// No description provided for @logMsg064.
  ///
  /// In en, this message translates to:
  /// **'=> Note: The current firmware does not support the _S3 state. If the BIOS setting does not disable the S3 function, then the machine does not support S3 sleep!'**
  String get logMsg064;

  /// No description provided for @logMsg065.
  ///
  /// In en, this message translates to:
  /// **'=> Note: This is an AOAC machine, and macOS does not support S3 sleep!'**
  String get logMsg065;

  /// No description provided for @logMsg066.
  ///
  /// In en, this message translates to:
  /// **'=> It is currently not detected whether it is an AOAC machine, please confirm by yourself!'**
  String get logMsg066;

  /// No description provided for @logMsg067.
  ///
  /// In en, this message translates to:
  /// **'Low Power S0 Idle (V5) value not found!'**
  String get logMsg067;

  /// No description provided for @logMsg068.
  ///
  /// In en, this message translates to:
  /// **'Currently an AOAC machine, macOS does not support S3 sleep!'**
  String get logMsg068;

  /// No description provided for @logMsg069.
  ///
  /// In en, this message translates to:
  /// **'=> Name or Method _S3 not found, the current configuration does not support S3 sleep! The operation has been terminated!'**
  String get logMsg069;

  /// No description provided for @logMsg070.
  ///
  /// In en, this message translates to:
  /// **'=> Method {arg0} found!'**
  String logMsg070(String arg0);

  /// No description provided for @logMsg071.
  ///
  /// In en, this message translates to:
  /// **'=> The current method has been renamed and may not be the original ACPI table! Please re-obtain the original ACPI table and try again!\\n'**
  String get logMsg071;

  /// No description provided for @logMsg072.
  ///
  /// In en, this message translates to:
  /// **'=> The LID (PNP0C0D) device was not found in any of the above ACPI tables! Operation terminated!\\n'**
  String get logMsg072;

  /// No description provided for @logMsg073.
  ///
  /// In en, this message translates to:
  /// **'=> Method _LID was not found in any of the above ACPI tables! Operation terminated!\\n'**
  String get logMsg073;

  /// No description provided for @logMsg074.
  ///
  /// In en, this message translates to:
  /// **'=> The PWRB (PNP0C0C) device was not found in the above ACPI table! Just fake one! \\n'**
  String get logMsg074;

  /// No description provided for @logMsg075.
  ///
  /// In en, this message translates to:
  /// **'=> No need to counterfeit SLPB device, PNP0C0E device has been found at {arg0}!'**
  String logMsg075(String arg0);

  /// No description provided for @logMsg076.
  ///
  /// In en, this message translates to:
  /// **'=> PNP0C0E Device {arg0} has _STA method!'**
  String logMsg076(String arg0);

  /// No description provided for @logMsg077.
  ///
  /// In en, this message translates to:
  /// **'=> PNP0C0E Device {arg0} does not exist _STA method!'**
  String logMsg077(String arg0);

  /// No description provided for @logMsg078.
  ///
  /// In en, this message translates to:
  /// **'=> No matching XHC/XHCI/XDCI/CNVW devices found! Operation terminated! \\n'**
  String get logMsg078;

  /// No description provided for @logMsg079.
  ///
  /// In en, this message translates to:
  /// **'=> GPRW method not found!'**
  String get logMsg079;

  /// No description provided for @logMsg080.
  ///
  /// In en, this message translates to:
  /// **'=> XPRW method found! The current method has been renamed and may not be the original ACPI table! Please re-obtain the original ACPI table and try again!\\n'**
  String get logMsg080;

  /// No description provided for @logMsg081.
  ///
  /// In en, this message translates to:
  /// **'=> XPRW method not found! Operation terminated!'**
  String get logMsg081;

  /// No description provided for @logMsg082.
  ///
  /// In en, this message translates to:
  /// **'=> UPRW method not found!'**
  String get logMsg082;

  /// No description provided for @logMsg083.
  ///
  /// In en, this message translates to:
  /// **'=> XPRW method found! The current method has been renamed and may not be the original ACPI table! Please re-obtain the original ACPI table and try again!\\n'**
  String get logMsg083;

  /// No description provided for @logMsg084.
  ///
  /// In en, this message translates to:
  /// **'=> XPRW method not found! Operation terminated!'**
  String get logMsg084;

  /// No description provided for @logMsg085.
  ///
  /// In en, this message translates to:
  /// **'=> GPI0 device not found! Operation terminated! \\n'**
  String get logMsg085;

  /// No description provided for @logMsg086.
  ///
  /// In en, this message translates to:
  /// **'=> _STA method not found! Operation terminated! \\n'**
  String get logMsg086;

  /// No description provided for @logMsg087.
  ///
  /// In en, this message translates to:
  /// **'=> The current Processor processor naming scheme complies with the CPU naming specification! No need for this SSDT! The operation has been terminated!'**
  String get logMsg087;

  /// No description provided for @logMsg088.
  ///
  /// In en, this message translates to:
  /// **'=> There is no PLTF device, the current Intel platform does not require this SSDT! The operation has been terminated...'**
  String get logMsg088;

  /// No description provided for @logMsg089.
  ///
  /// In en, this message translates to:
  /// **'=> No CPU device meeting the requirements was found, no SSDT-CPUR patch required! Operation terminated!'**
  String get logMsg089;

  /// No description provided for @logMsg090.
  ///
  /// In en, this message translates to:
  /// **'=> SSDT spoofing IMEI is not enabled, device-id must be set via DeviceProperties!'**
  String get logMsg090;

  /// No description provided for @logMsg091.
  ///
  /// In en, this message translates to:
  /// **'No valid ACPI device path provided! Operation aborted!'**
  String get logMsg091;

  /// No description provided for @logMsg092.
  ///
  /// In en, this message translates to:
  /// **'The corresponding _ON or _OFF method for {arg0} was not found in DSDT or SSDT! Operation aborted!'**
  String logMsg092(String arg0);

  /// No description provided for @logMsg093.
  ///
  /// In en, this message translates to:
  /// **'The _PS3 or _DSM method corresponding to {arg0} was not found in the DSDT or SSDT! Operation aborted!'**
  String logMsg093(String arg0);

  /// No description provided for @logMsg094.
  ///
  /// In en, this message translates to:
  /// **'=> There is a _PRT method for device {arg0}, which may have hidden the real device and will inject a BRG0 bridge device!'**
  String logMsg094(String arg0);

  /// No description provided for @logMsg095.
  ///
  /// In en, this message translates to:
  /// **'=> Device {arg0} does not exist!'**
  String logMsg095(String arg0);

  /// No description provided for @logMsg096.
  ///
  /// In en, this message translates to:
  /// **'Current device path {arg0} may hide the real device!'**
  String logMsg096(String arg0);

  /// No description provided for @logMsg097.
  ///
  /// In en, this message translates to:
  /// **'=> There is an overflow in the _ADR address of the graphics card device {arg0}!'**
  String logMsg097(String arg0);

  /// No description provided for @logMsg098.
  ///
  /// In en, this message translates to:
  /// **'=> Backtrack to the parent device path: {arg0} and inject a BRG0 bridge device!'**
  String logMsg098(String arg0);

  /// No description provided for @logMsg099.
  ///
  /// In en, this message translates to:
  /// **'Unknown masking method: {arg0}, operation aborted.'**
  String logMsg099(String arg0);

  /// No description provided for @logMsg100.
  ///
  /// In en, this message translates to:
  /// **'Some methods not found: {arg0}'**
  String logMsg100(String arg0);

  /// No description provided for @logMsg101.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to find a valid bus device, the operation has been terminated!'**
  String get logMsg101;

  /// No description provided for @logMsg102.
  ///
  /// In en, this message translates to:
  /// **'No valid graphics card ACPI path provided! Operation terminated!'**
  String get logMsg102;

  /// No description provided for @logMsg103.
  ///
  /// In en, this message translates to:
  /// **'No valid counterfeit graphics card ID provided! Operation terminated!'**
  String get logMsg103;

  /// No description provided for @logMsg104.
  ///
  /// In en, this message translates to:
  /// **'No valid counterfeit graphics card name provided! No counterfeit names will be injected!'**
  String get logMsg104;

  /// No description provided for @logMsg105.
  ///
  /// In en, this message translates to:
  /// **'Current graphics card path {arg0} may hide the real device!'**
  String logMsg105(String arg0);

  /// No description provided for @logMsg106.
  ///
  /// In en, this message translates to:
  /// **'=> Device {arg0} has a _PRT method, which may have hidden the real device and will inject a GFX0 device!'**
  String logMsg106(String arg0);

  /// No description provided for @logMsg107.
  ///
  /// In en, this message translates to:
  /// **'=> Device {arg0} not found in DSDT or SSDT! Operation aborted!'**
  String logMsg107(String arg0);

  /// No description provided for @logMsg108.
  ///
  /// In en, this message translates to:
  /// **'=> There is an overflow in the _ADR address of the graphics card device {arg0}!'**
  String logMsg108(String arg0);

  /// No description provided for @logMsg109.
  ///
  /// In en, this message translates to:
  /// **'=> Backtrack to the parent device path: {arg0} and inject a GFX0 device!'**
  String logMsg109(String arg0);

  /// No description provided for @logMsg110.
  ///
  /// In en, this message translates to:
  /// **'There is an address _ADR overflow in the device path!'**
  String get logMsg110;

  /// No description provided for @logMsg111.
  ///
  /// In en, this message translates to:
  /// **'The following devices may affect property injection:'**
  String get logMsg111;

  /// No description provided for @logMsg112.
  ///
  /// In en, this message translates to:
  /// **'Locating LPC(B)/SBRG…'**
  String get logMsg112;

  /// No description provided for @logMsg113.
  ///
  /// In en, this message translates to:
  /// **'=> {arg1} found in {arg0}'**
  String logMsg113(String arg0, String arg1);

  /// No description provided for @logMsg114.
  ///
  /// In en, this message translates to:
  /// **'=> {arg1} found in {arg0}'**
  String logMsg114(String arg0, String arg1);

  /// No description provided for @logMsg115.
  ///
  /// In en, this message translates to:
  /// **'=> {arg1} found in {arg0}'**
  String logMsg115(String arg0, String arg1);

  /// No description provided for @logMsg116.
  ///
  /// In en, this message translates to:
  /// **'DSDT path provided: {arg0}'**
  String logMsg116(String arg0);

  /// No description provided for @logMsg117.
  ///
  /// In en, this message translates to:
  /// **'The supplied DSDT path is invalid: {arg0}'**
  String logMsg117(String arg0);

  /// No description provided for @logMsg118.
  ///
  /// In en, this message translates to:
  /// **'Collecting valid ACPI tables from directory {arg0}...'**
  String logMsg118(String arg0);

  /// No description provided for @logMsg119.
  ///
  /// In en, this message translates to:
  /// **'A total of {arg0} ACPI tables were found, of which {arg1} are valid:'**
  String logMsg119(String arg0, String arg1);

  /// No description provided for @logMsg120.
  ///
  /// In en, this message translates to:
  /// **'Several files with DSDT signatures were verified:'**
  String get logMsg120;

  /// No description provided for @logMsg121.
  ///
  /// In en, this message translates to:
  /// **'About to decompile {arg0} to verify if pre-made patches need to be applied...'**
  String logMsg121(String arg0);

  /// No description provided for @logMsg122.
  ///
  /// In en, this message translates to:
  /// **'=> No need to apply pre-made patches!\\n'**
  String get logMsg122;

  /// No description provided for @logMsg123.
  ///
  /// In en, this message translates to:
  /// **'Loading {arg0}...'**
  String logMsg123(String arg0);

  /// No description provided for @logMsg124.
  ///
  /// In en, this message translates to:
  /// **'Processing completed!\\n'**
  String get logMsg124;

  /// No description provided for @logMsg125.
  ///
  /// In en, this message translates to:
  /// **'The file or folder passed in does not exist!\\n'**
  String get logMsg125;

  /// No description provided for @logMsg126.
  ///
  /// In en, this message translates to:
  /// **'Handling problematic DSDT files...'**
  String get logMsg126;

  /// No description provided for @logMsg127.
  ///
  /// In en, this message translates to:
  /// **'Check available pre-made patches…'**
  String get logMsg127;

  /// No description provided for @logMsg128.
  ///
  /// In en, this message translates to:
  /// **'Loading {arg0} file into memory...'**
  String logMsg128(String arg0);

  /// No description provided for @logMsg129.
  ///
  /// In en, this message translates to:
  /// **'Processing patches one by one...\\n'**
  String get logMsg129;

  /// No description provided for @logMsg130.
  ///
  /// In en, this message translates to:
  /// **'=> Positioned, applying…'**
  String get logMsg130;

  /// No description provided for @logMsg131.
  ///
  /// In en, this message translates to:
  /// **'=> The DSDT file from the previous question was decompiled successfully!'**
  String get logMsg131;

  /// No description provided for @logMsg132.
  ///
  /// In en, this message translates to:
  /// **'=> The patch has been applied to the modified file and the file is saved in the Results folder:\\n {arg0}'**
  String logMsg132(String arg0);

  /// No description provided for @logMsg133.
  ///
  /// In en, this message translates to:
  /// **'Loading valid ACPI tables in {arg0}...'**
  String logMsg133(String arg0);

  /// No description provided for @logMsg134.
  ///
  /// In en, this message translates to:
  /// **'Decompilation of all valid ACPI tables completed!'**
  String get logMsg134;

  /// No description provided for @logMsg135.
  ///
  /// In en, this message translates to:
  /// **'Total time taken: {arg0} seconds\\n'**
  String logMsg135(String arg0);

  /// No description provided for @logMsg136.
  ///
  /// In en, this message translates to:
  /// **'Compiling {arg0}.aml successfully!'**
  String logMsg136(String arg0);

  /// No description provided for @logMsg137.
  ///
  /// In en, this message translates to:
  /// **'Delete {arg0}.dsl source file'**
  String logMsg137(String arg0);

  /// No description provided for @logMsg138.
  ///
  /// In en, this message translates to:
  /// **'=> Scope not found for device {arg0}'**
  String logMsg138(String arg0);

  /// No description provided for @logMsg139.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to locate {arg0}'**
  String logMsg139(String arg0);

  /// No description provided for @logMsg140.
  ///
  /// In en, this message translates to:
  /// **'Locating {arg0} ({arg1}) device...'**
  String logMsg140(String arg0, String arg1);

  /// No description provided for @logMsg141.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to target any {arg0} devices'**
  String logMsg141(String arg0);

  /// No description provided for @logMsg142.
  ///
  /// In en, this message translates to:
  /// **'=> found {arg0}'**
  String logMsg142(String arg0);

  /// No description provided for @logMsg143.
  ///
  /// In en, this message translates to:
  /// **'=> Looking for verification _STA…'**
  String get logMsg143;

  /// No description provided for @logMsg144.
  ///
  /// In en, this message translates to:
  /// **'=> _STA has been renamed to XSTA! Skip other checks…'**
  String get logMsg144;

  /// No description provided for @logMsg145.
  ///
  /// In en, this message translates to:
  /// **'=> Please disable the renaming of the device from _STA to XSTA in DSDT and try again after restarting!\\n'**
  String get logMsg145;

  /// No description provided for @logMsg146.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} variable {arg1}'**
  String logMsg146(String arg0, String arg1);

  /// No description provided for @logMsg147.
  ///
  /// In en, this message translates to:
  /// **'=> _STA method/name not found'**
  String get logMsg147;

  /// No description provided for @logMsg148.
  ///
  /// In en, this message translates to:
  /// **'=> Found _STA method at index {arg0}!'**
  String logMsg148(String arg0);

  /// No description provided for @logMsg149.
  ///
  /// In en, this message translates to:
  /// **'=> Generating _STA to XSTA rename'**
  String get logMsg149;

  /// No description provided for @logMsg150.
  ///
  /// In en, this message translates to:
  /// **'=> There are multiple return statements, or the return value is not Return (0x0F)'**
  String get logMsg150;

  /// No description provided for @logMsg151.
  ///
  /// In en, this message translates to:
  /// **'Gathering ACPI device information...'**
  String get logMsg151;

  /// No description provided for @logMsg152.
  ///
  /// In en, this message translates to:
  /// **'Gathering ACPI device paths...'**
  String get logMsg152;

  /// No description provided for @logMsg153.
  ///
  /// In en, this message translates to:
  /// **'Rechecking orphaned devices...'**
  String get logMsg153;

  /// No description provided for @logMsg154.
  ///
  /// In en, this message translates to:
  /// **'Current custom IRQs: {arg0}'**
  String logMsg154(String arg0);

  /// No description provided for @logMsg155.
  ///
  /// In en, this message translates to:
  /// **'=> Example: RTC:0 IPIC:2 TMR:8,11 \\n'**
  String get logMsg155;

  /// No description provided for @logMsg156.
  ///
  /// In en, this message translates to:
  /// **'=> Found _HID: {arg0}'**
  String logMsg156(String arg0);

  /// No description provided for @logMsg157.
  ///
  /// In en, this message translates to:
  /// **'Locating PNP0103 (HPET) device…'**
  String get logMsg157;

  /// No description provided for @logMsg158.
  ///
  /// In en, this message translates to:
  /// **'=> positioned at {arg0}'**
  String logMsg158(String arg0);

  /// No description provided for @logMsg159.
  ///
  /// In en, this message translates to:
  /// **'Locating _CRS method/name for HPET...'**
  String get logMsg159;

  /// No description provided for @logMsg160.
  ///
  /// In en, this message translates to:
  /// **'=> Located at {arg0}._CRS'**
  String logMsg160(String arg0);

  /// No description provided for @logMsg161.
  ///
  /// In en, this message translates to:
  /// **'=> Found at index: {arg0}'**
  String logMsg161(String arg0);

  /// No description provided for @logMsg162.
  ///
  /// In en, this message translates to:
  /// **'=> Type: {arg0}'**
  String logMsg162(String arg0);

  /// No description provided for @logMsg163.
  ///
  /// In en, this message translates to:
  /// **'=> Checking Memory32Fixed…'**
  String get logMsg163;

  /// No description provided for @logMsg164.
  ///
  /// In en, this message translates to:
  /// **'=> Get {arg0} {arg1} => {arg2}'**
  String logMsg164(String arg0, String arg1, String arg2);

  /// No description provided for @logMsg165.
  ///
  /// In en, this message translates to:
  /// **'Creating IRQ patch...'**
  String get logMsg165;

  /// No description provided for @logMsg166.
  ///
  /// In en, this message translates to:
  /// **'Checking IRQ…'**
  String get logMsg166;

  /// No description provided for @logMsg167.
  ///
  /// In en, this message translates to:
  /// **'IRQ is empty! Skip...\\n'**
  String get logMsg167;

  /// No description provided for @logMsg168.
  ///
  /// In en, this message translates to:
  /// **'No match found.'**
  String get logMsg168;

  /// No description provided for @logMsg169.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg169(String arg0);

  /// No description provided for @logMsg170.
  ///
  /// In en, this message translates to:
  /// **'Creating a fake HPET device...'**
  String get logMsg170;

  /// No description provided for @logMsg171.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg171(String arg0);

  /// No description provided for @logMsg172.
  ///
  /// In en, this message translates to:
  /// **'=> UID used: {arg0}'**
  String logMsg172(String arg0);

  /// No description provided for @logMsg173.
  ///
  /// In en, this message translates to:
  /// **'=> Applicable platforms: {arg0}'**
  String logMsg173(String arg0);

  /// No description provided for @logMsg174.
  ///
  /// In en, this message translates to:
  /// **'No valid iGPU path provided, trying to find automatically...'**
  String get logMsg174;

  /// No description provided for @logMsg175.
  ///
  /// In en, this message translates to:
  /// **'Looking for iGPU device at 0x00020000…'**
  String get logMsg175;

  /// No description provided for @logMsg176.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg176(String arg0);

  /// No description provided for @logMsg177.
  ///
  /// In en, this message translates to:
  /// **'=> iGPU device found at {arg0}!'**
  String logMsg177(String arg0);

  /// No description provided for @logMsg178.
  ///
  /// In en, this message translates to:
  /// **'iGPU device not found by address!'**
  String get logMsg178;

  /// No description provided for @logMsg179.
  ///
  /// In en, this message translates to:
  /// **'Searching for common iGPU names…'**
  String get logMsg179;

  /// No description provided for @logMsg180.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg180(String arg0);

  /// No description provided for @logMsg181.
  ///
  /// In en, this message translates to:
  /// **'=> Possible iGPU device found at {arg0}'**
  String logMsg181(String arg0);

  /// No description provided for @logMsg182.
  ///
  /// In en, this message translates to:
  /// **'Possible iGPU device found at {arg0}\\n'**
  String logMsg182(String arg0);

  /// No description provided for @logMsg183.
  ///
  /// In en, this message translates to:
  /// **'It has been manually set to {arg0} according to the given iGPU path \\n'**
  String logMsg183(String arg0);

  /// No description provided for @logMsg184.
  ///
  /// In en, this message translates to:
  /// **'Invalid iGPU path: {arg0}'**
  String logMsg184(String arg0);

  /// No description provided for @logMsg185.
  ///
  /// In en, this message translates to:
  /// **'Checking ACPI table for native PNLF device...'**
  String get logMsg185;

  /// No description provided for @logMsg186.
  ///
  /// In en, this message translates to:
  /// **'=> Native PNLF device found at {arg0}: {arg1}'**
  String logMsg186(String arg0, String arg1);

  /// No description provided for @logMsg187.
  ///
  /// In en, this message translates to:
  /// **'=> Native PNLF needs to be renamed to XNLF, renaming patch is being generated...'**
  String get logMsg187;

  /// No description provided for @logMsg188.
  ///
  /// In en, this message translates to:
  /// **'=> Native PNLF device not found!'**
  String get logMsg188;

  /// No description provided for @logMsg189.
  ///
  /// In en, this message translates to:
  /// **'=> No need to generate PNLF to XNLF rename patch!'**
  String get logMsg189;

  /// No description provided for @logMsg190.
  ///
  /// In en, this message translates to:
  /// **'Name (NBCF, 0x00) detected in {arg0}, generating patch...'**
  String logMsg190(String arg0);

  /// No description provided for @logMsg191.
  ///
  /// In en, this message translates to:
  /// **'Name (NBCF, Zero) detected in {arg0}, generating patch...'**
  String logMsg191(String arg0);

  /// No description provided for @logMsg192.
  ///
  /// In en, this message translates to:
  /// **'Locating PNP0C09(EC) device...'**
  String get logMsg192;

  /// No description provided for @logMsg193.
  ///
  /// In en, this message translates to:
  /// **'=> {arg1} PNP0C09 (EC) devices found at {arg0}'**
  String logMsg193(String arg0, String arg1);

  /// No description provided for @logMsg194.
  ///
  /// In en, this message translates to:
  /// **'=> Verifying...'**
  String get logMsg194;

  /// No description provided for @logMsg195.
  ///
  /// In en, this message translates to:
  /// **'=> found {arg0}'**
  String logMsg195(String arg0);

  /// No description provided for @logMsg196.
  ///
  /// In en, this message translates to:
  /// **'=> PNP0C09 (EC) device named EC, renaming in progress'**
  String get logMsg196;

  /// No description provided for @logMsg197.
  ///
  /// In en, this message translates to:
  /// **'=> Valid PNP0C09 (EC) device'**
  String get logMsg197;

  /// No description provided for @logMsg198.
  ///
  /// In en, this message translates to:
  /// **'=> _STA is correctly enabled, skipping rename'**
  String get logMsg198;

  /// No description provided for @logMsg199.
  ///
  /// In en, this message translates to:
  /// **'=> Invalid PNP0C09 (EC) device'**
  String get logMsg199;

  /// No description provided for @logMsg200.
  ///
  /// In en, this message translates to:
  /// **'=> No valid PNP0C09 (EC) device found, just fake an EC device'**
  String get logMsg200;

  /// No description provided for @logMsg201.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl…'**
  String logMsg201(String arg0);

  /// No description provided for @logMsg202.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg202(String arg0);

  /// No description provided for @logMsg203.
  ///
  /// In en, this message translates to:
  /// **'Determining CPU naming scheme...'**
  String get logMsg203;

  /// No description provided for @logMsg204.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg204(String arg0);

  /// No description provided for @logMsg205.
  ///
  /// In en, this message translates to:
  /// **'=> Processor found: {arg0}'**
  String logMsg205(String arg0);

  /// No description provided for @logMsg206.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg206(String arg0);

  /// No description provided for @logMsg207.
  ///
  /// In en, this message translates to:
  /// **'=> No Processor object found...'**
  String get logMsg207;

  /// No description provided for @logMsg208.
  ///
  /// In en, this message translates to:
  /// **'=> ACPI0007 device not found…'**
  String get logMsg208;

  /// No description provided for @logMsg209.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} ACPI0007 devices found'**
  String logMsg209(String arg0);

  /// No description provided for @logMsg210.
  ///
  /// In en, this message translates to:
  /// **'=> Found parent device at {arg0}, processing...'**
  String logMsg210(String arg0);

  /// No description provided for @logMsg211.
  ///
  /// In en, this message translates to:
  /// **'=> Checking {arg0}…'**
  String logMsg211(String arg0);

  /// No description provided for @logMsg212.
  ///
  /// In en, this message translates to:
  /// **'=> Not found! jump over…'**
  String get logMsg212;

  /// No description provided for @logMsg213.
  ///
  /// In en, this message translates to:
  /// **'=> Not found! jump over…'**
  String get logMsg213;

  /// No description provided for @logMsg214.
  ///
  /// In en, this message translates to:
  /// **'Processing {arg0} valid processor devices...'**
  String logMsg214(String arg0);

  /// No description provided for @logMsg215.
  ///
  /// In en, this message translates to:
  /// **'Failed to obtain LPC Name...'**
  String get logMsg215;

  /// No description provided for @logMsg216.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg216(String arg0);

  /// No description provided for @logMsg217.
  ///
  /// In en, this message translates to:
  /// **'=> Need to counterfeit RTC!'**
  String get logMsg217;

  /// No description provided for @logMsg218.
  ///
  /// In en, this message translates to:
  /// **'=> Checking _CRS…'**
  String get logMsg218;

  /// No description provided for @logMsg219.
  ///
  /// In en, this message translates to:
  /// **'=> _CRS is a buffer, checking RTC range...'**
  String get logMsg219;

  /// No description provided for @logMsg220.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to adjust value, unable to verify RTC range.'**
  String get logMsg220;

  /// No description provided for @logMsg221.
  ///
  /// In en, this message translates to:
  /// **'=> 收集值失败, 无法验证 RTC 范围.'**
  String get logMsg221;

  /// No description provided for @logMsg222.
  ///
  /// In en, this message translates to:
  /// **'=> _CRS is a method and cannot verify RTC range!'**
  String get logMsg222;

  /// No description provided for @logMsg223.
  ///
  /// In en, this message translates to:
  /// **'=> Generating _CRS to XCRS rename…'**
  String get logMsg223;

  /// No description provided for @logMsg224.
  ///
  /// In en, this message translates to:
  /// **'=> Found at index {arg0}'**
  String logMsg224(String arg0);

  /// No description provided for @logMsg225.
  ///
  /// In en, this message translates to:
  /// **'=> not found'**
  String get logMsg225;

  /// No description provided for @logMsg226.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg226(String arg0);

  /// No description provided for @logMsg227.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg227(String arg0);

  /// No description provided for @logMsg228.
  ///
  /// In en, this message translates to:
  /// **'Collecting RHUB/HUBN/URTH devices...'**
  String get logMsg228;

  /// No description provided for @logMsg229.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} devices found'**
  String logMsg229(String arg0);

  /// No description provided for @logMsg230.
  ///
  /// In en, this message translates to:
  /// **'=> Need to be renamed!'**
  String get logMsg230;

  /// No description provided for @logMsg231.
  ///
  /// In en, this message translates to:
  /// **'=> Check {arg0}: whether the _STA method exists'**
  String logMsg231(String arg0);

  /// No description provided for @logMsg232.
  ///
  /// In en, this message translates to:
  /// **'=> Found _STA method at index {arg0}!'**
  String logMsg232(String arg0);

  /// No description provided for @logMsg233.
  ///
  /// In en, this message translates to:
  /// **'=> Generate patch from _STA to XSTA'**
  String get logMsg233;

  /// No description provided for @logMsg234.
  ///
  /// In en, this message translates to:
  /// **'=> _STA method not found!'**
  String get logMsg234;

  /// No description provided for @logMsg235.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg235(String arg0);

  /// No description provided for @logMsg236.
  ///
  /// In en, this message translates to:
  /// **'=> There is an _ADR address overflow in the device path!'**
  String get logMsg236;

  /// No description provided for @logMsg237.
  ///
  /// In en, this message translates to:
  /// **'=> The following devices may require bridging adjustments to function properly:'**
  String get logMsg237;

  /// No description provided for @logMsg238.
  ///
  /// In en, this message translates to:
  /// **'Collecting PCI bridge devices...'**
  String get logMsg238;

  /// No description provided for @logMsg239.
  ///
  /// In en, this message translates to:
  /// **'PCI bridge device is empty! The operation has been terminated!'**
  String get logMsg239;

  /// No description provided for @logMsg240.
  ///
  /// In en, this message translates to:
  /// **'Building bridge device...'**
  String get logMsg240;

  /// No description provided for @logMsg241.
  ///
  /// In en, this message translates to:
  /// **'PCI bridge device is empty! jump over…'**
  String get logMsg241;

  /// No description provided for @logMsg242.
  ///
  /// In en, this message translates to:
  /// **'Matching device paths…'**
  String get logMsg242;

  /// No description provided for @logMsg243.
  ///
  /// In en, this message translates to:
  /// **'No match found!'**
  String get logMsg243;

  /// No description provided for @logMsg244.
  ///
  /// In en, this message translates to:
  /// **'=> matches {arg0}, no bridging required'**
  String logMsg244(String arg0);

  /// No description provided for @logMsg245.
  ///
  /// In en, this message translates to:
  /// **'No match found!\\n'**
  String get logMsg245;

  /// No description provided for @logMsg246.
  ///
  /// In en, this message translates to:
  /// **'No bridging required!\\n'**
  String get logMsg246;

  /// No description provided for @logMsg247.
  ///
  /// In en, this message translates to:
  /// **'Resolving bridge device...'**
  String get logMsg247;

  /// No description provided for @logMsg248.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to parse!'**
  String get logMsg248;

  /// No description provided for @logMsg249.
  ///
  /// In en, this message translates to:
  /// **'Error while parsing bridge device!\\n'**
  String get logMsg249;

  /// No description provided for @logMsg250.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg250(String arg0);

  /// No description provided for @logMsg251.
  ///
  /// In en, this message translates to:
  /// **'Locating ACPI0008 (ALS) device...'**
  String get logMsg251;

  /// No description provided for @logMsg252.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg252(String arg0);

  /// No description provided for @logMsg253.
  ///
  /// In en, this message translates to:
  /// **'=> Found ALS device at {arg0} table: {arg1}!'**
  String logMsg253(String arg0, String arg1);

  /// No description provided for @logMsg254.
  ///
  /// In en, this message translates to:
  /// **'=> No need to counterfeit!\\n'**
  String get logMsg254;

  /// No description provided for @logMsg255.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg255(String arg0);

  /// No description provided for @logMsg256.
  ///
  /// In en, this message translates to:
  /// **'_STA is correctly enabled, no patch required! \\n'**
  String get logMsg256;

  /// No description provided for @logMsg257.
  ///
  /// In en, this message translates to:
  /// **'Not found, no patch required!\\n'**
  String get logMsg257;

  /// No description provided for @logMsg258.
  ///
  /// In en, this message translates to:
  /// **'ACPI0008 (ALS) device not found, counterfeit device required…'**
  String get logMsg258;

  /// No description provided for @logMsg259.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg259(String arg0);

  /// No description provided for @logMsg260.
  ///
  /// In en, this message translates to:
  /// **'Detecting XOSI scheme...'**
  String get logMsg260;

  /// No description provided for @logMsg261.
  ///
  /// In en, this message translates to:
  /// **'=> Automatically detected: {arg0} ({arg1})'**
  String logMsg261(String arg0, String arg1);

  /// No description provided for @logMsg262.
  ///
  /// In en, this message translates to:
  /// **'Checking OSID method...'**
  String get logMsg262;

  /// No description provided for @logMsg263.
  ///
  /// In en, this message translates to:
  /// **'=> Found method {arg1} at offset {arg0}'**
  String logMsg263(String arg0, String arg1);

  /// No description provided for @logMsg264.
  ///
  /// In en, this message translates to:
  /// **'=> Not found, no need to rename OSID to XSID'**
  String get logMsg264;

  /// No description provided for @logMsg265.
  ///
  /// In en, this message translates to:
  /// **'Creating _OSI to XOSI rename…'**
  String get logMsg265;

  /// No description provided for @logMsg266.
  ///
  /// In en, this message translates to:
  /// **'Looking for {arg0} table…'**
  String logMsg266(String arg0);

  /// No description provided for @logMsg267.
  ///
  /// In en, this message translates to:
  /// **'Found {arg0} table, verifying signature...'**
  String logMsg267(String arg0);

  /// No description provided for @logMsg268.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} table signature verification passed!'**
  String logMsg268(String arg0);

  /// No description provided for @logMsg269.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0} value...'**
  String logMsg269(String arg0);

  /// No description provided for @logMsg270.
  ///
  /// In en, this message translates to:
  /// **'Obtained {arg0} value: {arg1}'**
  String logMsg270(String arg0, String arg1);

  /// No description provided for @logMsg271.
  ///
  /// In en, this message translates to:
  /// **'Obtained Reset Register Address value: {arg0}'**
  String logMsg271(String arg0);

  /// No description provided for @logMsg272.
  ///
  /// In en, this message translates to:
  /// **'The ACPI patches that need to be patched are as follows:'**
  String get logMsg272;

  /// No description provided for @logMsg273.
  ///
  /// In en, this message translates to:
  /// **'Patching APIC table...'**
  String get logMsg273;

  /// No description provided for @logMsg274.
  ///
  /// In en, this message translates to:
  /// **'=> Corrected APIC Processor ID: {arg0} → {arg1}'**
  String logMsg274(String arg0, String arg1);

  /// No description provided for @logMsg275.
  ///
  /// In en, this message translates to:
  /// **'=> APIC table patching completed!'**
  String get logMsg275;

  /// No description provided for @logMsg276.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl…'**
  String logMsg276(String arg0);

  /// No description provided for @logMsg277.
  ///
  /// In en, this message translates to:
  /// **'Checking DMAR table reserved memory area...'**
  String get logMsg277;

  /// No description provided for @logMsg278.
  ///
  /// In en, this message translates to:
  /// **'=> No reserved memory area found, no need to patch DMAR!\\n'**
  String get logMsg278;

  /// No description provided for @logMsg279.
  ///
  /// In en, this message translates to:
  /// **'Found {arg0} reserved memory areas, generating new table...'**
  String logMsg279(String arg0);

  /// No description provided for @logMsg280.
  ///
  /// In en, this message translates to:
  /// **'Looking for IMEI device at address 0x00160000...'**
  String get logMsg280;

  /// No description provided for @logMsg281.
  ///
  /// In en, this message translates to:
  /// **'IMEI device not found, need to counterfeit the device…'**
  String get logMsg281;

  /// No description provided for @logMsg282.
  ///
  /// In en, this message translates to:
  /// **'Verifying parent device...'**
  String get logMsg282;

  /// No description provided for @logMsg283.
  ///
  /// In en, this message translates to:
  /// **'Looking for iGPU device at 0x00020000…'**
  String get logMsg283;

  /// No description provided for @logMsg284.
  ///
  /// In en, this message translates to:
  /// **'=> iGPU device not found!'**
  String get logMsg284;

  /// No description provided for @logMsg285.
  ///
  /// In en, this message translates to:
  /// **'Trying to locate PCI root device...'**
  String get logMsg285;

  /// No description provided for @logMsg286.
  ///
  /// In en, this message translates to:
  /// **'=> PCI root device found: {arg0}'**
  String logMsg286(String arg0);

  /// No description provided for @logMsg287.
  ///
  /// In en, this message translates to:
  /// **'=> Found iGPU device: {arg0}'**
  String logMsg287(String arg0);

  /// No description provided for @logMsg288.
  ///
  /// In en, this message translates to:
  /// **'=> Use parent device: {arg0}'**
  String logMsg288(String arg0);

  /// No description provided for @logMsg289.
  ///
  /// In en, this message translates to:
  /// **'Collecting fake device-id schemes...'**
  String get logMsg289;

  /// No description provided for @logMsg290.
  ///
  /// In en, this message translates to:
  /// **'=> Counterfeit as 7 series motherboard IMEI (device-id: {arg0}) to match the 3rd generation Ivy Bridge processor'**
  String logMsg290(String arg0);

  /// No description provided for @logMsg291.
  ///
  /// In en, this message translates to:
  /// **'=> Counterfeit as 6 series motherboard IMEI (device-id: {arg0}) to match the 2nd generation Sandy Bridge processor'**
  String logMsg291(String arg0);

  /// No description provided for @logMsg292.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg292(String arg0);

  /// No description provided for @logMsg293.
  ///
  /// In en, this message translates to:
  /// **'Looking for UNC (PNP0A03) device...'**
  String get logMsg293;

  /// No description provided for @logMsg294.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} UNC devices found'**
  String logMsg294(String arg0);

  /// No description provided for @logMsg295.
  ///
  /// In en, this message translates to:
  /// **'=> UNC device {arg0}: {arg1}'**
  String logMsg295(String arg0, String arg1);

  /// No description provided for @logMsg296.
  ///
  /// In en, this message translates to:
  /// **'=> Check whether {arg0}: _STA method exists'**
  String logMsg296(String arg0);

  /// No description provided for @logMsg297.
  ///
  /// In en, this message translates to:
  /// **'=> Found {arg1}: _STA method at index {arg0}!'**
  String logMsg297(String arg0, String arg1);

  /// No description provided for @logMsg298.
  ///
  /// In en, this message translates to:
  /// **'=> Generate {arg0}: _STA to XSTA patch'**
  String logMsg298(String arg0);

  /// No description provided for @logMsg299.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg299(String arg0);

  /// No description provided for @logMsg300.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg300(String arg0);

  /// No description provided for @logMsg301.
  ///
  /// In en, this message translates to:
  /// **'Checking if DTGP method exists...'**
  String get logMsg301;

  /// No description provided for @logMsg302.
  ///
  /// In en, this message translates to:
  /// **'=> DTGP method not found!'**
  String get logMsg302;

  /// No description provided for @logMsg303.
  ///
  /// In en, this message translates to:
  /// **'=> DTGP method not found in any of the above ACPI tables! \\n'**
  String get logMsg303;

  /// No description provided for @logMsg304.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg304(String arg0);

  /// No description provided for @logMsg305.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg305(String arg0);

  /// No description provided for @logMsg306.
  ///
  /// In en, this message translates to:
  /// **'Looking for DMA (PNP0200) device...'**
  String get logMsg306;

  /// No description provided for @logMsg307.
  ///
  /// In en, this message translates to:
  /// **'=> DMA (PNP0200) device not found!'**
  String get logMsg307;

  /// No description provided for @logMsg308.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg308(String arg0);

  /// No description provided for @logMsg309.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg309(String arg0);

  /// No description provided for @logMsg310.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of _PTS method...'**
  String get logMsg310;

  /// No description provided for @logMsg311.
  ///
  /// In en, this message translates to:
  /// **'=> Method {arg0} found!'**
  String logMsg311(String arg0);

  /// No description provided for @logMsg312.
  ///
  /// In en, this message translates to:
  /// **'=> _PTS method not found!'**
  String get logMsg312;

  /// No description provided for @logMsg313.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of _WAK method...'**
  String get logMsg313;

  /// No description provided for @logMsg314.
  ///
  /// In en, this message translates to:
  /// **'=> Method {arg0} found!'**
  String logMsg314(String arg0);

  /// No description provided for @logMsg315.
  ///
  /// In en, this message translates to:
  /// **'=> _WAK method not found!'**
  String get logMsg315;

  /// No description provided for @logMsg316.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg316(String arg0);

  /// No description provided for @logMsg317.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg317(String arg0);

  /// No description provided for @logMsg318.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of _SST method...'**
  String get logMsg318;

  /// No description provided for @logMsg319.
  ///
  /// In en, this message translates to:
  /// **'=> Found _SST method at {arg0}!'**
  String logMsg319(String arg0);

  /// No description provided for @logMsg320.
  ///
  /// In en, this message translates to:
  /// **'=> _SST method not found!'**
  String get logMsg320;

  /// No description provided for @logMsg321.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg321(String arg0);

  /// No description provided for @logMsg322.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg322(String arg0);

  /// No description provided for @logMsg323.
  ///
  /// In en, this message translates to:
  /// **'Checking for presence of PNP0C0D device...'**
  String get logMsg323;

  /// No description provided for @logMsg324.
  ///
  /// In en, this message translates to:
  /// **'=> PNP0C0D device found at {arg0}!'**
  String logMsg324(String arg0);

  /// No description provided for @logMsg325.
  ///
  /// In en, this message translates to:
  /// **'=> PNP0C0D device not found!'**
  String get logMsg325;

  /// No description provided for @logMsg326.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg326(String arg0);

  /// No description provided for @logMsg327.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg327(String arg0);

  /// No description provided for @logMsg328.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of {arg0}...'**
  String logMsg328(String arg0);

  /// No description provided for @logMsg329.
  ///
  /// In en, this message translates to:
  /// **'=> Found {arg1} at {arg0}'**
  String logMsg329(String arg0, String arg1);

  /// No description provided for @logMsg330.
  ///
  /// In en, this message translates to:
  /// **'=> Found {arg1} at {arg0}'**
  String logMsg330(String arg0, String arg1);

  /// No description provided for @logMsg331.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} not found'**
  String logMsg331(String arg0);

  /// No description provided for @logMsg332.
  ///
  /// In en, this message translates to:
  /// **'All ACPI tables checked!'**
  String get logMsg332;

  /// No description provided for @logMsg333.
  ///
  /// In en, this message translates to:
  /// **'=> Support system state: [systemStatesFound]'**
  String get logMsg333;

  /// No description provided for @logMsg334.
  ///
  /// In en, this message translates to:
  /// **'=> The current firmware supports common system states! After fixing the sleep problem, macOS can support S3 sleep!'**
  String get logMsg334;

  /// No description provided for @logMsg335.
  ///
  /// In en, this message translates to:
  /// **'Checking Low Power S0 Idle (V5) value...'**
  String get logMsg335;

  /// No description provided for @logMsg336.
  ///
  /// In en, this message translates to:
  /// **'Get Low Power S0 Idle (V5): {arg0}'**
  String logMsg336(String arg0);

  /// No description provided for @logMsg337.
  ///
  /// In en, this message translates to:
  /// **'It is not currently an AOAC machine and does not affect macOS system S3 sleep!'**
  String get logMsg337;

  /// No description provided for @logMsg338.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of _S3...'**
  String get logMsg338;

  /// No description provided for @logMsg339.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg339(String arg0);

  /// No description provided for @logMsg340.
  ///
  /// In en, this message translates to:
  /// **'=> Name _S3 found at {arg0}!'**
  String logMsg340(String arg0);

  /// No description provided for @logMsg341.
  ///
  /// In en, this message translates to:
  /// **'=> Found Method _S3 at {arg0}!'**
  String logMsg341(String arg0);

  /// No description provided for @logMsg342.
  ///
  /// In en, this message translates to:
  /// **'=> Name or Method _S3 not found'**
  String get logMsg342;

  /// No description provided for @logMsg343.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg343(String arg0);

  /// No description provided for @logMsg344.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg344(String arg0);

  /// No description provided for @logMsg345.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg345(String arg0);

  /// No description provided for @logMsg346.
  ///
  /// In en, this message translates to:
  /// **'Looking for LID (PNP0C0D) device...'**
  String get logMsg346;

  /// No description provided for @logMsg347.
  ///
  /// In en, this message translates to:
  /// **'=> PNP0C0D device found at {arg0}!'**
  String logMsg347(String arg0);

  /// No description provided for @logMsg348.
  ///
  /// In en, this message translates to:
  /// **'=> LID (PNP0C0D) device not found!'**
  String get logMsg348;

  /// No description provided for @logMsg349.
  ///
  /// In en, this message translates to:
  /// **'=> Found Method _LID at {arg0}!'**
  String logMsg349(String arg0);

  /// No description provided for @logMsg350.
  ///
  /// In en, this message translates to:
  /// **'=> Method _LID not found!'**
  String get logMsg350;

  /// No description provided for @logMsg351.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of _TTS method...'**
  String get logMsg351;

  /// No description provided for @logMsg352.
  ///
  /// In en, this message translates to:
  /// **'=> Method {arg0} found!'**
  String logMsg352(String arg0);

  /// No description provided for @logMsg353.
  ///
  /// In en, this message translates to:
  /// **'=> _TTS method not found!'**
  String get logMsg353;

  /// No description provided for @logMsg354.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of ZTTS method...'**
  String get logMsg354;

  /// No description provided for @logMsg355.
  ///
  /// In en, this message translates to:
  /// **'=> ZTTS method not found!'**
  String get logMsg355;

  /// No description provided for @logMsg356.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg356(String arg0);

  /// No description provided for @logMsg357.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg357(String arg0);

  /// No description provided for @logMsg358.
  ///
  /// In en, this message translates to:
  /// **'Looking for PWRB (PNP0C0C) device...'**
  String get logMsg358;

  /// No description provided for @logMsg359.
  ///
  /// In en, this message translates to:
  /// **'=> PWRB (PNP0C0C) device not found!'**
  String get logMsg359;

  /// No description provided for @logMsg360.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg360(String arg0);

  /// No description provided for @logMsg361.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg361(String arg0);

  /// No description provided for @logMsg362.
  ///
  /// In en, this message translates to:
  /// **'Looking for SLPB (PNP0C0E) device...'**
  String get logMsg362;

  /// No description provided for @logMsg363.
  ///
  /// In en, this message translates to:
  /// **'=> SLPB (PNP0C0E) device not found!'**
  String get logMsg363;

  /// No description provided for @logMsg364.
  ///
  /// In en, this message translates to:
  /// **'=> The SLPB (PNP0C0E) device was not found in the above ACPI table! Just fake one! \\n'**
  String get logMsg364;

  /// No description provided for @logMsg365.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.sdl...'**
  String logMsg365(String arg0);

  /// No description provided for @logMsg366.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg366(String arg0);

  /// No description provided for @logMsg367.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg367(String arg0);

  /// No description provided for @logMsg368.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg368(String arg0);

  /// No description provided for @logMsg369.
  ///
  /// In en, this message translates to:
  /// **'Looking for PNP0C01 device...'**
  String get logMsg369;

  /// No description provided for @logMsg370.
  ///
  /// In en, this message translates to:
  /// **'=> PNP0C01 device not found!'**
  String get logMsg370;

  /// No description provided for @logMsg371.
  ///
  /// In en, this message translates to:
  /// **'=> The PNP0C01 device was not found in any of the above ACPI tables!\\n'**
  String get logMsg371;

  /// No description provided for @logMsg372.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg372(String arg0);

  /// No description provided for @logMsg373.
  ///
  /// In en, this message translates to:
  /// **'Collecting XHC/XHCI/XDCI/CNVW devices...'**
  String get logMsg373;

  /// No description provided for @logMsg374.
  ///
  /// In en, this message translates to:
  /// **'=> Checking if {arg0} device supports PMEE...'**
  String logMsg374(String arg0);

  /// No description provided for @logMsg375.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} does not support PMEE, skipped'**
  String logMsg375(String arg0);

  /// No description provided for @logMsg376.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} supports PMEE'**
  String logMsg376(String arg0);

  /// No description provided for @logMsg377.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg377(String arg0);

  /// No description provided for @logMsg378.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of GPRW method...'**
  String get logMsg378;

  /// No description provided for @logMsg379.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of XPRW method...'**
  String get logMsg379;

  /// No description provided for @logMsg380.
  ///
  /// In en, this message translates to:
  /// **'=> GPRW method found at {arg0}!'**
  String logMsg380(String arg0);

  /// No description provided for @logMsg381.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg381(String arg0);

  /// No description provided for @logMsg382.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of UPRW method...'**
  String get logMsg382;

  /// No description provided for @logMsg383.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of XPRW method...'**
  String get logMsg383;

  /// No description provided for @logMsg384.
  ///
  /// In en, this message translates to:
  /// **'=> UPRW method found at {arg0}!'**
  String logMsg384(String arg0);

  /// No description provided for @logMsg385.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg385(String arg0);

  /// No description provided for @logMsg386.
  ///
  /// In en, this message translates to:
  /// **'Checking for presence of GPI0 device...'**
  String get logMsg386;

  /// No description provided for @logMsg387.
  ///
  /// In en, this message translates to:
  /// **'=> GPI0 device found at {arg0}!'**
  String logMsg387(String arg0);

  /// No description provided for @logMsg388.
  ///
  /// In en, this message translates to:
  /// **'Checking for existence of _STA method...'**
  String get logMsg388;

  /// No description provided for @logMsg389.
  ///
  /// In en, this message translates to:
  /// **'=> Found {arg1}: _STA method at index {arg0}!'**
  String logMsg389(String arg0, String arg1);

  /// No description provided for @logMsg390.
  ///
  /// In en, this message translates to:
  /// **'=> Generate {arg0}: _STA to XSTA patch'**
  String logMsg390(String arg0);

  /// No description provided for @logMsg391.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg391(String arg0);

  /// No description provided for @logMsg392.
  ///
  /// In en, this message translates to:
  /// **'Determining CPU naming scheme...'**
  String get logMsg392;

  /// No description provided for @logMsg393.
  ///
  /// In en, this message translates to:
  /// **'Checking {arg0}…'**
  String logMsg393(String arg0);

  /// No description provided for @logMsg394.
  ///
  /// In en, this message translates to:
  /// **'=> Processor found: {arg0}'**
  String logMsg394(String arg0);

  /// No description provided for @logMsg395.
  ///
  /// In en, this message translates to:
  /// **'=> No Processor object found...'**
  String get logMsg395;

  /// No description provided for @logMsg396.
  ///
  /// In en, this message translates to:
  /// **'=> ACPI0007 device not found…'**
  String get logMsg396;

  /// No description provided for @logMsg397.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} ACPI0007 devices found'**
  String logMsg397(String arg0);

  /// No description provided for @logMsg398.
  ///
  /// In en, this message translates to:
  /// **'=> Found parent device at {arg0}, processing...'**
  String logMsg398(String arg0);

  /// No description provided for @logMsg399.
  ///
  /// In en, this message translates to:
  /// **'=> Checking {arg0}…'**
  String logMsg399(String arg0);

  /// No description provided for @logMsg400.
  ///
  /// In en, this message translates to:
  /// **'=> Not found! jump over…'**
  String get logMsg400;

  /// No description provided for @logMsg401.
  ///
  /// In en, this message translates to:
  /// **'=> Not found! jump over…'**
  String get logMsg401;

  /// No description provided for @logMsg402.
  ///
  /// In en, this message translates to:
  /// **'Processing {arg0} valid processor devices...'**
  String logMsg402(String arg0);

  /// No description provided for @logMsg403.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg403(String arg0);

  /// No description provided for @logMsg404.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg404(String arg0);

  /// No description provided for @logMsg405.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg405(String arg0);

  /// No description provided for @logMsg406.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg406(String arg0);

  /// No description provided for @logMsg407.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg407(String arg0);

  /// No description provided for @logMsg408.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg408(String arg0);

  /// No description provided for @logMsg409.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg409(String arg0);

  /// No description provided for @logMsg410.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg410(String arg0);

  /// No description provided for @logMsg411.
  ///
  /// In en, this message translates to:
  /// **'Collecting fake device-id schemes...'**
  String get logMsg411;

  /// No description provided for @logMsg412.
  ///
  /// In en, this message translates to:
  /// **'=> Counterfeit as 7 series motherboard IMEI (device-id: {arg0}) to match the 3rd generation Ivy Bridge processor'**
  String logMsg412(String arg0);

  /// No description provided for @logMsg413.
  ///
  /// In en, this message translates to:
  /// **'=> Counterfeit as 6 series motherboard IMEI (device-id: {arg0}) to match the 2nd generation Sandy Bridge processor'**
  String logMsg413(String arg0);

  /// No description provided for @logMsg414.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg414(String arg0);

  /// No description provided for @logMsg415.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg415(String arg0);

  /// No description provided for @logMsg416.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg416(String arg0);

  /// No description provided for @logMsg417.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg417(String arg0);

  /// No description provided for @logMsg418.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg418(String arg0);

  /// No description provided for @logMsg419.
  ///
  /// In en, this message translates to:
  /// **'Checking device {arg0} for an _ON or _OFF method...'**
  String logMsg419(String arg0);

  /// No description provided for @logMsg420.
  ///
  /// In en, this message translates to:
  /// **'Checking device {arg0} for _PS3 or _DSM methods...'**
  String logMsg420(String arg0);

  /// No description provided for @logMsg421.
  ///
  /// In en, this message translates to:
  /// **'Checking device {arg0}...'**
  String logMsg421(String arg0);

  /// No description provided for @logMsg422.
  ///
  /// In en, this message translates to:
  /// **'=> The _PRT method corresponding to {arg0} was not found in DSDT or SSDT!'**
  String logMsg422(String arg0);

  /// No description provided for @logMsg423.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg423(String arg0);

  /// No description provided for @logMsg424.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} device path that needs to be blocked: {arg1}'**
  String logMsg424(String arg0, String arg1);

  /// No description provided for @logMsg425.
  ///
  /// In en, this message translates to:
  /// **'=> Shielding method: {arg0} method'**
  String logMsg425(String arg0);

  /// No description provided for @logMsg426.
  ///
  /// In en, this message translates to:
  /// **'=> Device relative path has been converted to absolute path: {arg0}'**
  String logMsg426(String arg0);

  /// No description provided for @logMsg427.
  ///
  /// In en, this message translates to:
  /// **'=> Find {arg1}.{arg2} method in {arg0}'**
  String logMsg427(String arg0, String arg1, String arg2);

  /// No description provided for @logMsg428.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg428(String arg0);

  /// No description provided for @logMsg429.
  ///
  /// In en, this message translates to:
  /// **'Collecting possible bus devices...'**
  String get logMsg429;

  /// No description provided for @logMsg430.
  ///
  /// In en, this message translates to:
  /// **'Creating precompiled {arg0}.dsl...'**
  String logMsg430(String arg0);

  /// No description provided for @logMsg431.
  ///
  /// In en, this message translates to:
  /// **'Checking graphics device {arg0}...'**
  String logMsg431(String arg0);

  /// No description provided for @logMsg432.
  ///
  /// In en, this message translates to:
  /// **'=> The _PRT method corresponding to {arg0} was not found in DSDT or SSDT!'**
  String logMsg432(String arg0);

  /// No description provided for @logMsg433.
  ///
  /// In en, this message translates to:
  /// **'Creating {arg0}.dsl...'**
  String logMsg433(String arg0);

  /// No description provided for @logMsg434.
  ///
  /// In en, this message translates to:
  /// **'=> Graphics card device path: {arg0}'**
  String logMsg434(String arg0);

  /// No description provided for @logMsg435.
  ///
  /// In en, this message translates to:
  /// **'=> Counterfeit graphics card ID: {arg0}'**
  String logMsg435(String arg0);

  /// No description provided for @logMsg436.
  ///
  /// In en, this message translates to:
  /// **'=> Counterfeit graphics card name: {arg0}'**
  String logMsg436(String arg0);

  /// No description provided for @logMsg437.
  ///
  /// In en, this message translates to:
  /// **'=> Not found!'**
  String get logMsg437;

  /// No description provided for @logMsg438.
  ///
  /// In en, this message translates to:
  /// **'=> PCI path matched: {arg0}'**
  String logMsg438(String arg0);

  /// No description provided for @logMsg439.
  ///
  /// In en, this message translates to:
  /// **'=> Update {arg0} \"{arg1}\" to {arg2}'**
  String logMsg439(String arg0, String arg1, String arg2);

  /// No description provided for @logMsg440.
  ///
  /// In en, this message translates to:
  /// **'=> {arg0} \"{arg1}\" already exists in {arg2}, skip...'**
  String logMsg440(String arg0, String arg1, String arg2);

  /// No description provided for @logMsg441.
  ///
  /// In en, this message translates to:
  /// **'=> Add {arg0} \"{arg1}\" to {arg2}'**
  String logMsg441(String arg0, String arg1, String arg2);

  /// No description provided for @logMsg442.
  ///
  /// In en, this message translates to:
  /// **'=> Update the value of key \"{arg0}\" to \"{arg1}\" in {arg2}'**
  String logMsg442(String arg0, String arg1, String arg2);

  /// No description provided for @logMsg443.
  ///
  /// In en, this message translates to:
  /// **'=> The value of key \"{arg0}\" is already up to date, skipping {arg1}'**
  String logMsg443(String arg0, String arg1);

  /// No description provided for @logMsg444.
  ///
  /// In en, this message translates to:
  /// **'=> Add key \"{arg0}\" value \"{arg1}\" to {arg2}'**
  String logMsg444(String arg0, String arg1, String arg2);

  /// No description provided for @logMsg445.
  ///
  /// In en, this message translates to:
  /// **'Hardware reporting folder cleanup failed: {arg0}'**
  String logMsg445(String arg0);

  /// No description provided for @logMsg446.
  ///
  /// In en, this message translates to:
  /// **'Native ACPI table export failed'**
  String get logMsg446;

  /// No description provided for @logMsg447.
  ///
  /// In en, this message translates to:
  /// **'Native ACPI table export failed: {arg0}'**
  String logMsg447(String arg0);

  /// No description provided for @logMsg448.
  ///
  /// In en, this message translates to:
  /// **'Native ACPI table export failed: {arg0}'**
  String logMsg448(String arg0);

  /// No description provided for @logMsg449.
  ///
  /// In en, this message translates to:
  /// **'ACPI table temporary directory cleanup failed: {arg0}'**
  String logMsg449(String arg0);

  /// No description provided for @logMsg450.
  ///
  /// In en, this message translates to:
  /// **'Exporting native hardware report...'**
  String get logMsg450;

  /// No description provided for @logMsg451.
  ///
  /// In en, this message translates to:
  /// **'Exporting native ACPI tables...'**
  String get logMsg451;

  /// No description provided for @logMsg452.
  ///
  /// In en, this message translates to:
  /// **'Native ACPI table export completed: {arg0}'**
  String logMsg452(String arg0);

  /// No description provided for @logMsg453.
  ///
  /// In en, this message translates to:
  /// **'Source file does not exist: {arg0}'**
  String logMsg453(String arg0);

  /// No description provided for @logMsg454.
  ///
  /// In en, this message translates to:
  /// **'Error saving file: {arg0}'**
  String logMsg454(String arg0);

  /// No description provided for @logMsg455.
  ///
  /// In en, this message translates to:
  /// **'Current OC version: {arg0}'**
  String logMsg455(String arg0);

  /// No description provided for @logMsg456.
  ///
  /// In en, this message translates to:
  /// **'ZIP file does not exist: {arg0}'**
  String logMsg456(String arg0);

  /// No description provided for @logMsg457.
  ///
  /// In en, this message translates to:
  /// **'{arg0} file successfully decompressed'**
  String logMsg457(String arg0);

  /// No description provided for @logMsg458.
  ///
  /// In en, this message translates to:
  /// **'Error while decompressing file {arg0}: {arg1}'**
  String logMsg458(String arg0, String arg1);

  /// No description provided for @logMsg459.
  ///
  /// In en, this message translates to:
  /// **'File or directory does not exist: {arg0}'**
  String logMsg459(String arg0);

  /// No description provided for @logMsg460.
  ///
  /// In en, this message translates to:
  /// **'Compression completed: {arg0}'**
  String logMsg460(String arg0);

  /// No description provided for @logMsg461.
  ///
  /// In en, this message translates to:
  /// **'Compression error: {arg0}'**
  String logMsg461(String arg0);

  /// No description provided for @logMsg462.
  ///
  /// In en, this message translates to:
  /// **'Delete directory: {arg0}'**
  String logMsg462(String arg0);

  /// No description provided for @logMsg463.
  ///
  /// In en, this message translates to:
  /// **'Delete file: {arg0}'**
  String logMsg463(String arg0);

  /// No description provided for @logMsg464.
  ///
  /// In en, this message translates to:
  /// **'Delete failed: {arg0}, {arg1}'**
  String logMsg464(String arg0, String arg1);

  /// No description provided for @logMsg465.
  ///
  /// In en, this message translates to:
  /// **'File successfully saved to: {arg0}'**
  String logMsg465(String arg0);

  /// No description provided for @logMsg466.
  ///
  /// In en, this message translates to:
  /// **'Source directory does not exist: {arg0}'**
  String logMsg466(String arg0);

  /// No description provided for @logMsg467.
  ///
  /// In en, this message translates to:
  /// **'Folder prepared: {arg0}'**
  String logMsg467(String arg0);

  /// No description provided for @logMsg468.
  ///
  /// In en, this message translates to:
  /// **'Error creating folder: {arg0}'**
  String logMsg468(String arg0);

  /// No description provided for @logMsg469.
  ///
  /// In en, this message translates to:
  /// **'Failed to open directory, path does not exist: {arg0}'**
  String logMsg469(String arg0);

  /// No description provided for @logMsg470.
  ///
  /// In en, this message translates to:
  /// **'Failed to open directory: {arg0}, {arg1}'**
  String logMsg470(String arg0, String arg1);

  /// No description provided for @autoGen5000.
  ///
  /// In en, this message translates to:
  /// **'compatible'**
  String get autoGen5000;

  /// No description provided for @autoGen5001.
  ///
  /// In en, this message translates to:
  /// **'Limited compatibility'**
  String get autoGen5001;

  /// No description provided for @autoGen5002.
  ///
  /// In en, this message translates to:
  /// **'Not compatible'**
  String get autoGen5002;

  /// No description provided for @autoGen5003.
  ///
  /// In en, this message translates to:
  /// **'Enabled'**
  String get autoGen5003;

  /// No description provided for @autoGen5004.
  ///
  /// In en, this message translates to:
  /// **'turn on'**
  String get autoGen5004;

  /// No description provided for @autoGen5005.
  ///
  /// In en, this message translates to:
  /// **'unknown'**
  String get autoGen5005;

  /// No description provided for @autoGen5006.
  ///
  /// In en, this message translates to:
  /// **'Wired network card'**
  String get autoGen5006;

  /// No description provided for @autoGen5007.
  ///
  /// In en, this message translates to:
  /// **'Limited compatibility\nSupports up to macOS Tahoe 26\nMissing AVX2'**
  String get autoGen5007;

  /// No description provided for @autoGen5008.
  ///
  /// In en, this message translates to:
  /// **'Not compatible\nSupports up to macOS El Capitan 10.11\nMissing SSE4'**
  String get autoGen5008;

  /// No description provided for @autoGen5009.
  ///
  /// In en, this message translates to:
  /// **'Missing device ID'**
  String get autoGen5009;

  /// No description provided for @autoGen5010.
  ///
  /// In en, this message translates to:
  /// **'NootedRed support'**
  String get autoGen5010;

  /// No description provided for @autoGen5011.
  ///
  /// In en, this message translates to:
  /// **'Compatibility loading'**
  String get autoGen5011;

  /// No description provided for @autoGen5012.
  ///
  /// In en, this message translates to:
  /// **'Low-end Intel CPU core graphics are not supported'**
  String get autoGen5012;

  /// No description provided for @autoGen5013.
  ///
  /// In en, this message translates to:
  /// **'VGA output is not supported'**
  String get autoGen5013;

  /// No description provided for @autoGen5014.
  ///
  /// In en, this message translates to:
  /// **'Counterfeit support'**
  String get autoGen5014;

  /// No description provided for @autoGen5015.
  ///
  /// In en, this message translates to:
  /// **'Native support'**
  String get autoGen5015;

  /// No description provided for @autoGen5016.
  ///
  /// In en, this message translates to:
  /// **'Missing AVX2 instruction set'**
  String get autoGen5016;

  /// No description provided for @autoGen5017.
  ///
  /// In en, this message translates to:
  /// **'core'**
  String get autoGen5017;

  /// No description provided for @autoGen5018.
  ///
  /// In en, this message translates to:
  /// **'independent'**
  String get autoGen5018;

  /// No description provided for @autoGen5019.
  ///
  /// In en, this message translates to:
  /// **'Nuclear display'**
  String get autoGen5019;

  /// No description provided for @autoGen5020.
  ///
  /// In en, this message translates to:
  /// **'ASUS'**
  String get autoGen5020;

  /// No description provided for @autoGen5021.
  ///
  /// In en, this message translates to:
  /// **'Gigabyte'**
  String get autoGen5021;

  /// No description provided for @autoGen5022.
  ///
  /// In en, this message translates to:
  /// **'ASRock'**
  String get autoGen5022;

  /// No description provided for @autoGen5023.
  ///
  /// In en, this message translates to:
  /// **'MSI'**
  String get autoGen5023;

  /// No description provided for @autoGen5024.
  ///
  /// In en, this message translates to:
  /// **'Dell'**
  String get autoGen5024;

  /// No description provided for @autoGen5025.
  ///
  /// In en, this message translates to:
  /// **'Lenovo'**
  String get autoGen5025;

  /// No description provided for @autoGen5026.
  ///
  /// In en, this message translates to:
  /// **'sony'**
  String get autoGen5026;

  /// No description provided for @autoGen5027.
  ///
  /// In en, this message translates to:
  /// **'HP'**
  String get autoGen5027;

  /// No description provided for @autoGen5028.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get autoGen5028;

  /// No description provided for @autoGen5029.
  ///
  /// In en, this message translates to:
  /// **'Microsoft'**
  String get autoGen5029;

  /// No description provided for @autoGen5030.
  ///
  /// In en, this message translates to:
  /// **'Unable to identify platform type based on CPU information'**
  String get autoGen5030;

  /// No description provided for @autoGen5031.
  ///
  /// In en, this message translates to:
  /// **'notebook'**
  String get autoGen5031;

  /// No description provided for @autoGen5032.
  ///
  /// In en, this message translates to:
  /// **'Mini host'**
  String get autoGen5032;

  /// No description provided for @autoGen5033.
  ///
  /// In en, this message translates to:
  /// **'workstation'**
  String get autoGen5033;

  /// No description provided for @autoGen5034.
  ///
  /// In en, this message translates to:
  /// **'The platform code cannot be determined based on the CPU, motherboard, and core display.'**
  String get autoGen5034;

  /// No description provided for @autoGen5035.
  ///
  /// In en, this message translates to:
  /// **'Device blocking skip:'**
  String get autoGen5035;

  /// No description provided for @autoGen5036.
  ///
  /// In en, this message translates to:
  /// **'Missing valid ACPI Path'**
  String get autoGen5036;

  /// No description provided for @autoGen5037.
  ///
  /// In en, this message translates to:
  /// **'SSDT list to be customized:'**
  String get autoGen5037;

  /// No description provided for @autoGen5038.
  ///
  /// In en, this message translates to:
  /// **'ACPI table extraction failed'**
  String get autoGen5038;

  /// No description provided for @autoGen5039.
  ///
  /// In en, this message translates to:
  /// **'ACPI table load failed'**
  String get autoGen5039;

  /// No description provided for @autoGen5040.
  ///
  /// In en, this message translates to:
  /// **'Custom SSDT results are incomplete'**
  String get autoGen5040;

  /// No description provided for @autoGen5041.
  ///
  /// In en, this message translates to:
  /// **'Exception occurred in custom SSDT'**
  String get autoGen5041;

  /// No description provided for @autoGen5042.
  ///
  /// In en, this message translates to:
  /// **'Custom SSDT temporary directory cleanup failed:'**
  String get autoGen5042;

  /// No description provided for @autoGen5043.
  ///
  /// In en, this message translates to:
  /// **'Graphics card device ID spoofing SSDT'**
  String get autoGen5043;

  /// No description provided for @autoGen5044.
  ///
  /// In en, this message translates to:
  /// **'Failed to generate:'**
  String get autoGen5044;

  /// No description provided for @autoGen5045.
  ///
  /// In en, this message translates to:
  /// **'ACPI Device Shield SSDT'**
  String get autoGen5045;

  /// No description provided for @autoGen5046.
  ///
  /// In en, this message translates to:
  /// **'Custom SSDT merge skipped,'**
  String get autoGen5046;

  /// No description provided for @autoGen5047.
  ///
  /// In en, this message translates to:
  /// **'Continue to use the original SSDT in current EFI as a fallback.'**
  String get autoGen5047;

  /// No description provided for @autoGen5048.
  ///
  /// In en, this message translates to:
  /// **'Graphics card device ID spoofing skipped:'**
  String get autoGen5048;

  /// No description provided for @autoGen5049.
  ///
  /// In en, this message translates to:
  /// **'Hardware information cache is not a JSON object'**
  String get autoGen5049;

  /// No description provided for @autoGen5050.
  ///
  /// In en, this message translates to:
  /// **'Hardware information has been loaded from cache'**
  String get autoGen5050;

  /// No description provided for @autoGen5051.
  ///
  /// In en, this message translates to:
  /// **'Hardware information has been loaded from local cache'**
  String get autoGen5051;

  /// No description provided for @autoGen5052.
  ///
  /// In en, this message translates to:
  /// **'Hardware information has been loaded from the import file'**
  String get autoGen5052;

  /// No description provided for @autoGen5053.
  ///
  /// In en, this message translates to:
  /// **'Initialize hardware information'**
  String get autoGen5053;

  /// No description provided for @autoGen5054.
  ///
  /// In en, this message translates to:
  /// **'Current system is not supported, only Windows is supported'**
  String get autoGen5054;

  /// No description provided for @autoGen5055.
  ///
  /// In en, this message translates to:
  /// **'Querying hardware information'**
  String get autoGen5055;

  /// No description provided for @autoGen5056.
  ///
  /// In en, this message translates to:
  /// **'Hardware information query completed'**
  String get autoGen5056;

  /// No description provided for @autoGen5057.
  ///
  /// In en, this message translates to:
  /// **'sysInfo.exe did not return hardware information'**
  String get autoGen5057;

  /// No description provided for @autoGen5058.
  ///
  /// In en, this message translates to:
  /// **'The content returned by sysInfo.exe is not a JSON object'**
  String get autoGen5058;

  /// No description provided for @autoGen5059.
  ///
  /// In en, this message translates to:
  /// **'sysInfo.exe query completed'**
  String get autoGen5059;

  /// No description provided for @autoGen5060.
  ///
  /// In en, this message translates to:
  /// **'core graphics card'**
  String get autoGen5060;

  /// No description provided for @autoGen5061.
  ///
  /// In en, this message translates to:
  /// **'Discrete graphics card'**
  String get autoGen5061;

  /// No description provided for @autoGen5062.
  ///
  /// In en, this message translates to:
  /// **'Already turned on'**
  String get autoGen5062;

  /// No description provided for @autoGen5063.
  ///
  /// In en, this message translates to:
  /// **'Unknown graphics card'**
  String get autoGen5063;

  /// No description provided for @autoGen5064.
  ///
  /// In en, this message translates to:
  /// **'integrated'**
  String get autoGen5064;

  /// No description provided for @autoGen5065.
  ///
  /// In en, this message translates to:
  /// **'Broadcom'**
  String get autoGen5065;

  /// No description provided for @autoGen5066.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm'**
  String get autoGen5066;

  /// No description provided for @autoGen5067.
  ///
  /// In en, this message translates to:
  /// **'Intel'**
  String get autoGen5067;

  /// No description provided for @autoGen5068.
  ///
  /// In en, this message translates to:
  /// **'apple'**
  String get autoGen5068;

  /// No description provided for @autoGen5069.
  ///
  /// In en, this message translates to:
  /// **'Zero moment'**
  String get autoGen5069;

  /// No description provided for @autoGen5070.
  ///
  /// In en, this message translates to:
  /// **'Matsushita'**
  String get autoGen5070;

  /// No description provided for @autoGen5071.
  ///
  /// In en, this message translates to:
  /// **'Taian'**
  String get autoGen5071;

  /// No description provided for @autoGen5072.
  ///
  /// In en, this message translates to:
  /// **'Biostar'**
  String get autoGen5072;

  /// No description provided for @autoGen5073.
  ///
  /// In en, this message translates to:
  /// **'Colorful'**
  String get autoGen5073;

  /// No description provided for @autoGen5074.
  ///
  /// In en, this message translates to:
  /// **'Zotac'**
  String get autoGen5074;

  /// No description provided for @autoGen5075.
  ///
  /// In en, this message translates to:
  /// **'Gengsheng'**
  String get autoGen5075;

  /// No description provided for @autoGen5076.
  ///
  /// In en, this message translates to:
  /// **'Yingzhong'**
  String get autoGen5076;

  /// No description provided for @autoGen5077.
  ///
  /// In en, this message translates to:
  /// **'Super Micro'**
  String get autoGen5077;

  /// No description provided for @autoGen5078.
  ///
  /// In en, this message translates to:
  /// **'Onda'**
  String get autoGen5078;

  /// No description provided for @autoGen5079.
  ///
  /// In en, this message translates to:
  /// **'Spartacus'**
  String get autoGen5079;

  /// No description provided for @autoGen5080.
  ///
  /// In en, this message translates to:
  /// **'Panzheng'**
  String get autoGen5080;

  /// No description provided for @autoGen5081.
  ///
  /// In en, this message translates to:
  /// **'South China'**
  String get autoGen5081;

  /// No description provided for @autoGen5082.
  ///
  /// In en, this message translates to:
  /// **'Jingyue'**
  String get autoGen5082;

  /// No description provided for @autoGen5083.
  ///
  /// In en, this message translates to:
  /// **'Ke Nao'**
  String get autoGen5083;

  /// No description provided for @autoGen5084.
  ///
  /// In en, this message translates to:
  /// **'Guoshuo'**
  String get autoGen5084;

  /// No description provided for @autoGen5085.
  ///
  /// In en, this message translates to:
  /// **'Jetway'**
  String get autoGen5085;

  /// No description provided for @autoGen5086.
  ///
  /// In en, this message translates to:
  /// **'diamond'**
  String get autoGen5086;

  /// No description provided for @autoGen5087.
  ///
  /// In en, this message translates to:
  /// **'top star'**
  String get autoGen5087;

  /// No description provided for @autoGen5088.
  ///
  /// In en, this message translates to:
  /// **'Mingxuan'**
  String get autoGen5088;

  /// No description provided for @autoGen5089.
  ///
  /// In en, this message translates to:
  /// **'Meijie'**
  String get autoGen5089;

  /// No description provided for @autoGen5090.
  ///
  /// In en, this message translates to:
  /// **'Elite'**
  String get autoGen5090;

  /// No description provided for @autoGen5091.
  ///
  /// In en, this message translates to:
  /// **'Foxconn'**
  String get autoGen5091;

  /// No description provided for @autoGen5092.
  ///
  /// In en, this message translates to:
  /// **'abit'**
  String get autoGen5092;

  /// No description provided for @autoGen5093.
  ///
  /// In en, this message translates to:
  /// **'Shuangmin'**
  String get autoGen5093;

  /// No description provided for @autoGen5094.
  ///
  /// In en, this message translates to:
  /// **'Eunjie'**
  String get autoGen5094;

  /// No description provided for @autoGen5095.
  ///
  /// In en, this message translates to:
  /// **'GALAXY'**
  String get autoGen5095;

  /// No description provided for @autoGen5096.
  ///
  /// In en, this message translates to:
  /// **'holy flag'**
  String get autoGen5096;

  /// No description provided for @autoGen5097.
  ///
  /// In en, this message translates to:
  /// **'Shark'**
  String get autoGen5097;

  /// No description provided for @autoGen5098.
  ///
  /// In en, this message translates to:
  /// **'Seewo'**
  String get autoGen5098;

  /// No description provided for @autoGen5099.
  ///
  /// In en, this message translates to:
  /// **'Advantech'**
  String get autoGen5099;

  /// No description provided for @autoGen5100.
  ///
  /// In en, this message translates to:
  /// **'ADLINK'**
  String get autoGen5100;

  /// No description provided for @autoGen5101.
  ///
  /// In en, this message translates to:
  /// **'Great Mechanic'**
  String get autoGen5101;

  /// No description provided for @autoGen5102.
  ///
  /// In en, this message translates to:
  /// **'patriot'**
  String get autoGen5102;

  /// No description provided for @autoGen5103.
  ///
  /// In en, this message translates to:
  /// **'ASL'**
  String get autoGen5103;

  /// No description provided for @autoGen5104.
  ///
  /// In en, this message translates to:
  /// **'Erying'**
  String get autoGen5104;

  /// No description provided for @autoGen5105.
  ///
  /// In en, this message translates to:
  /// **'sapphire'**
  String get autoGen5105;

  /// No description provided for @autoGen5106.
  ///
  /// In en, this message translates to:
  /// **'Contech'**
  String get autoGen5106;

  /// No description provided for @autoGen5107.
  ///
  /// In en, this message translates to:
  /// **'Qingyun'**
  String get autoGen5107;

  /// No description provided for @autoGen5108.
  ///
  /// In en, this message translates to:
  /// **'Huawei'**
  String get autoGen5108;

  /// No description provided for @autoGen5109.
  ///
  /// In en, this message translates to:
  /// **'Millet'**
  String get autoGen5109;

  /// No description provided for @autoGen5110.
  ///
  /// In en, this message translates to:
  /// **'red rice'**
  String get autoGen5110;

  /// No description provided for @autoGen5111.
  ///
  /// In en, this message translates to:
  /// **'glory'**
  String get autoGen5111;

  /// No description provided for @autoGen5112.
  ///
  /// In en, this message translates to:
  /// **'Samsung'**
  String get autoGen5112;

  /// No description provided for @autoGen5113.
  ///
  /// In en, this message translates to:
  /// **'mechanical revolution'**
  String get autoGen5113;

  /// No description provided for @autoGen5114.
  ///
  /// In en, this message translates to:
  /// **'mechanic'**
  String get autoGen5114;

  /// No description provided for @autoGen5115.
  ///
  /// In en, this message translates to:
  /// **'Thor'**
  String get autoGen5115;

  /// No description provided for @autoGen5116.
  ///
  /// In en, this message translates to:
  /// **'Razer'**
  String get autoGen5116;

  /// No description provided for @autoGen5117.
  ///
  /// In en, this message translates to:
  /// **'Acer'**
  String get autoGen5117;

  /// No description provided for @autoGen5118.
  ///
  /// In en, this message translates to:
  /// **'Toshiba'**
  String get autoGen5118;

  /// No description provided for @autoGen5119.
  ///
  /// In en, this message translates to:
  /// **'Fujitsu'**
  String get autoGen5119;

  /// No description provided for @autoGen5120.
  ///
  /// In en, this message translates to:
  /// **'blue sky'**
  String get autoGen5120;

  /// No description provided for @autoGen5121.
  ///
  /// In en, this message translates to:
  /// **'alien'**
  String get autoGen5121;

  /// No description provided for @autoGen5122.
  ///
  /// In en, this message translates to:
  /// **'Shenzhou'**
  String get autoGen5122;

  /// No description provided for @autoGen5123.
  ///
  /// In en, this message translates to:
  /// **'Haier'**
  String get autoGen5123;

  /// No description provided for @autoGen5124.
  ///
  /// In en, this message translates to:
  /// **'Zhongbai'**
  String get autoGen5124;

  /// No description provided for @autoGen5125.
  ///
  /// In en, this message translates to:
  /// **'Xuanlong'**
  String get autoGen5125;

  /// No description provided for @autoGen5126.
  ///
  /// In en, this message translates to:
  /// **'future humans'**
  String get autoGen5126;

  /// No description provided for @autoGen5127.
  ///
  /// In en, this message translates to:
  /// **'Cube'**
  String get autoGen5127;

  /// No description provided for @autoGen5128.
  ///
  /// In en, this message translates to:
  /// **'Xuanpai Xuanji Star'**
  String get autoGen5128;

  /// No description provided for @autoGen5129.
  ///
  /// In en, this message translates to:
  /// **'Checking for updates, please wait...'**
  String get autoGen5129;

  /// No description provided for @autoGen5130.
  ///
  /// In en, this message translates to:
  /// **'Just checked for updates, please try again later'**
  String get autoGen5130;

  /// No description provided for @autoGen5131.
  ///
  /// In en, this message translates to:
  /// **'Failed to check for updates, please try again later'**
  String get autoGen5131;

  /// No description provided for @autoGen5132.
  ///
  /// In en, this message translates to:
  /// **'Failed to obtain release version list, please try again later'**
  String get autoGen5132;

  /// No description provided for @autoGen5133.
  ///
  /// In en, this message translates to:
  /// **'Release version list is empty'**
  String get autoGen5133;

  /// No description provided for @autoGen5134.
  ///
  /// In en, this message translates to:
  /// **'Desktop'**
  String get autoGen5134;

  /// No description provided for @autoGen5135.
  ///
  /// In en, this message translates to:
  /// **'server'**
  String get autoGen5135;

  /// No description provided for @autoGen5136.
  ///
  /// In en, this message translates to:
  /// **'Turn on SIP to enhance system security. It is recommended to check this box when you usually do not need to use OCLP to drive graphics cards, WiFi and other drivers.'**
  String get autoGen5136;

  /// No description provided for @autoGen5137.
  ///
  /// In en, this message translates to:
  /// **'Disable SIP solution one'**
  String get autoGen5137;

  /// No description provided for @autoGen5138.
  ///
  /// In en, this message translates to:
  /// **'Unless SIP is completely disabled, it is usually recommended to check the box when systems such as BigSur and above need to use OCLP to drive graphics cards, WiFi, etc.'**
  String get autoGen5138;

  /// No description provided for @autoGen5139.
  ///
  /// In en, this message translates to:
  /// **'Disable SIP solution two'**
  String get autoGen5139;

  /// No description provided for @autoGen5140.
  ///
  /// In en, this message translates to:
  /// **'Completely disable SIP. Usually when systems such as BigSur and above need to use OCLP to drive graphics cards, WiFi, etc., this option is preferred.'**
  String get autoGen5140;

  /// No description provided for @autoGen5141.
  ///
  /// In en, this message translates to:
  /// **'Adaptive display, automatically adjusts the display ratio of the OpenCore boot interface according to the display resolution'**
  String get autoGen5141;

  /// No description provided for @autoGen5142.
  ///
  /// In en, this message translates to:
  /// **'Standard resolution monitor, suitable for 720p, 1080p, 1440p and other standard resolution monitors'**
  String get autoGen5142;

  /// No description provided for @autoGen5143.
  ///
  /// In en, this message translates to:
  /// **'High-resolution display, suitable for high-resolution displays such as 4K and 5K (can effectively improve the problem of too small UI elements on the OpenCore boot page for high-resolution screens)'**
  String get autoGen5143;

  /// No description provided for @autoGen5144.
  ///
  /// In en, this message translates to:
  /// **'Do not modify ProcessorType'**
  String get autoGen5144;

  /// No description provided for @autoGen5145.
  ///
  /// In en, this message translates to:
  /// **'Keep system default CPU type display'**
  String get autoGen5145;

  /// No description provided for @autoGen5146.
  ///
  /// In en, this message translates to:
  /// **'Intel and AMD platform CPU name modification option 1 (usually applicable to CPUs with 6 cores and below)'**
  String get autoGen5146;

  /// No description provided for @autoGen5147.
  ///
  /// In en, this message translates to:
  /// **'Intel and AMD platform CPU name modification option 2 (usually applicable to 8-core and above CPUs)'**
  String get autoGen5147;

  /// No description provided for @autoGen5148.
  ///
  /// In en, this message translates to:
  /// **'Intel and AMD platform CPU name modification alternatives (usually applicable to i7 and i9 series CPUs with 8 cores and above)'**
  String get autoGen5148;

  /// No description provided for @autoGen5149.
  ///
  /// In en, this message translates to:
  /// **'ASUS'**
  String get autoGen5149;

  /// No description provided for @autoGen5150.
  ///
  /// In en, this message translates to:
  /// **'GIGABYTE'**
  String get autoGen5150;

  /// No description provided for @autoGen5151.
  ///
  /// In en, this message translates to:
  /// **'ASRock'**
  String get autoGen5151;

  /// No description provided for @autoGen5152.
  ///
  /// In en, this message translates to:
  /// **'MSI'**
  String get autoGen5152;

  /// No description provided for @autoGen5153.
  ///
  /// In en, this message translates to:
  /// **'Dell'**
  String get autoGen5153;

  /// No description provided for @autoGen5154.
  ///
  /// In en, this message translates to:
  /// **'Lenovo'**
  String get autoGen5154;

  /// No description provided for @autoGen5155.
  ///
  /// In en, this message translates to:
  /// **'Sony(VAIO)'**
  String get autoGen5155;

  /// No description provided for @autoGen5156.
  ///
  /// In en, this message translates to:
  /// **'HP'**
  String get autoGen5156;

  /// No description provided for @autoGen5157.
  ///
  /// In en, this message translates to:
  /// **'Google(Chromebook)'**
  String get autoGen5157;

  /// No description provided for @autoGen5158.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Surface'**
  String get autoGen5158;

  /// No description provided for @autoGen5159.
  ///
  /// In en, this message translates to:
  /// **'Regular motherboard'**
  String get autoGen5159;

  /// No description provided for @autoGen5160.
  ///
  /// In en, this message translates to:
  /// **'B850, B650, B550 and A520 motherboards, 550 series chipset notebooks'**
  String get autoGen5160;

  /// No description provided for @autoGen5161.
  ///
  /// In en, this message translates to:
  /// **'TRx40 motherboard'**
  String get autoGen5161;

  /// No description provided for @autoGen5162.
  ///
  /// In en, this message translates to:
  /// **'X570 motherboard'**
  String get autoGen5162;

  /// No description provided for @autoGen5163.
  ///
  /// In en, this message translates to:
  /// **'X470 or B450 motherboard late 2020 or updated BIOS'**
  String get autoGen5163;

  /// No description provided for @autoGen5164.
  ///
  /// In en, this message translates to:
  /// **'6 series chipset'**
  String get autoGen5164;

  /// No description provided for @autoGen5165.
  ///
  /// In en, this message translates to:
  /// **'Check when mixing Intel 3rd generation CPU and 6 series chipset (for example: H61, HM65)'**
  String get autoGen5165;

  /// No description provided for @autoGen5166.
  ///
  /// In en, this message translates to:
  /// **'7 series chipset'**
  String get autoGen5166;

  /// No description provided for @autoGen5167.
  ///
  /// In en, this message translates to:
  /// **'Check when mixing Intel 2nd generation CPU and 7 series chipsets (for example: B75, HM76)'**
  String get autoGen5167;

  /// No description provided for @autoGen5168.
  ///
  /// In en, this message translates to:
  /// **'H110,B150,B250,Q270, etc.'**
  String get autoGen5168;

  /// No description provided for @autoGen5169.
  ///
  /// In en, this message translates to:
  /// **'Some OEM motherboards have USB ownership release issues: EHCI Hand-off fails'**
  String get autoGen5169;

  /// No description provided for @autoGen5170.
  ///
  /// In en, this message translates to:
  /// **'Z490 and other BIOS updates in 2020'**
  String get autoGen5170;

  /// No description provided for @autoGen5171.
  ///
  /// In en, this message translates to:
  /// **'6 series chipset (check when mixing Intel 3rd generation CPU and 6 series chipsets (for example: H61, HM65))'**
  String get autoGen5171;

  /// No description provided for @autoGen5172.
  ///
  /// In en, this message translates to:
  /// **'7 series chipset (check when mixing Intel 2nd generation CPU and 7 series chipsets (for example: B75, HM76))'**
  String get autoGen5172;

  /// No description provided for @autoGen5173.
  ///
  /// In en, this message translates to:
  /// **'H110, B150, B250, Q270, etc. (Some OEM motherboards have USB ownership release issues: EHCI Hand-off failure)'**
  String get autoGen5173;

  /// No description provided for @autoGen5174.
  ///
  /// In en, this message translates to:
  /// **'from mbconfs'**
  String get autoGen5174;

  /// No description provided for @autoGen5175.
  ///
  /// In en, this message translates to:
  /// **'DVI double chain'**
  String get autoGen5175;

  /// No description provided for @autoGen5176.
  ///
  /// In en, this message translates to:
  /// **'DVI single chain'**
  String get autoGen5176;

  /// No description provided for @autoGen5177.
  ///
  /// In en, this message translates to:
  /// **'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13'**
  String get autoGen5177;

  /// No description provided for @autoGen5178.
  ///
  /// In en, this message translates to:
  /// **'Supports OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, suitable for core graphics + independent graphics models'**
  String get autoGen5178;

  /// No description provided for @autoGen5179.
  ///
  /// In en, this message translates to:
  /// **'Supports OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, suitable for Ivy Bridge architecture, only core graphics models'**
  String get autoGen5179;

  /// No description provided for @autoGen5180.
  ///
  /// In en, this message translates to:
  /// **'Supports OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, suitable for Ivy Bridge architecture, core display decoding + independent display output models'**
  String get autoGen5180;

  /// No description provided for @autoGen5181.
  ///
  /// In en, this message translates to:
  /// **'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture NVIDIA Maxwell and Pascal independent graphics'**
  String get autoGen5181;

  /// No description provided for @autoGen5182.
  ///
  /// In en, this message translates to:
  /// **'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture only core display models'**
  String get autoGen5182;

  /// No description provided for @autoGen5183.
  ///
  /// In en, this message translates to:
  /// **'Supports OS X Mavericks 10.9 ~ macOS Big Sur 11, suitable for Haswell architecture core graphics + independent graphics models'**
  String get autoGen5183;

  /// No description provided for @autoGen5184.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS El Capitan 10.11 ~ macOS Monterey 12, suitable for models with core graphics (or independent graphics)'**
  String get autoGen5184;

  /// No description provided for @autoGen5185.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS El Capitan 10.11 ~ macOS Monterey 12, suitable for Broadwell architecture core display (or with independent display)'**
  String get autoGen5185;

  /// No description provided for @autoGen5186.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS Sierra 10.12 ~ macOS Ventura 13. Suitable for core display + independent display models. It should be noted that when using this model, most core display only users will experience abnormal screen color. This model is not recommended for core display only users.'**
  String get autoGen5186;

  /// No description provided for @autoGen5187.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS Sierra 10.12 ~ macOS Ventura 13, suitable for core display decoding + independent display output models'**
  String get autoGen5187;

  /// No description provided for @autoGen5188.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS 10.14 ~ macOS Sequoia 15, suitable for models with core graphics (or independent graphics)'**
  String get autoGen5188;

  /// No description provided for @autoGen5189.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for i7-10700K and below processor core display (or with independent display) models'**
  String get autoGen5189;

  /// No description provided for @autoGen5190.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for i9-10850K higher processor core display (or with independent display) models'**
  String get autoGen5190;

  /// No description provided for @autoGen5191.
  ///
  /// In en, this message translates to:
  /// **'Support macOS 10.5 ~ macOS El Capitan 10.11'**
  String get autoGen5191;

  /// No description provided for @autoGen5192.
  ///
  /// In en, this message translates to:
  /// **'Support macOS 10.6 ~ macOS High Sierra 10.13'**
  String get autoGen5192;

  /// No description provided for @autoGen5193.
  ///
  /// In en, this message translates to:
  /// **'Support macOS 10.7 ~ macOS High Sierra 10.13'**
  String get autoGen5193;

  /// No description provided for @autoGen5194.
  ///
  /// In en, this message translates to:
  /// **'Support macOS 10.8 ~ macOS Catalina 10.15'**
  String get autoGen5194;

  /// No description provided for @autoGen5195.
  ///
  /// In en, this message translates to:
  /// **'Support macOS 10.9 ~ macOS Big Sur 11'**
  String get autoGen5195;

  /// No description provided for @autoGen5196.
  ///
  /// In en, this message translates to:
  /// **'Support macOS High Sierra 10.13 ~ macOS Monterey 12'**
  String get autoGen5196;

  /// No description provided for @autoGen5197.
  ///
  /// In en, this message translates to:
  /// **'Support macOS Mojave 10.14 ~ macOS Monterey 12'**
  String get autoGen5197;

  /// No description provided for @autoGen5198.
  ///
  /// In en, this message translates to:
  /// **'Support OS X El Capitan 10.11 ~ macOS Big Sur 11'**
  String get autoGen5198;

  /// No description provided for @autoGen5199.
  ///
  /// In en, this message translates to:
  /// **'Support OS X El Capitan 10.11 ~ macOS Monterey 12'**
  String get autoGen5199;

  /// No description provided for @autoGen5200.
  ///
  /// In en, this message translates to:
  /// **'Support macOS Sierra 10.12 ~ macOS Monterey 12'**
  String get autoGen5200;

  /// No description provided for @autoGen5201.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (core display HD 515 officially only supports macOS Monterey 12, counterfeit supports the latest macOS Sequoia 15)'**
  String get autoGen5201;

  /// No description provided for @autoGen5202.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (the core display Iris 540 officially only supports macOS Monterey 12, and the counterfeit version supports the latest macOS Sequoia 15)'**
  String get autoGen5202;

  /// No description provided for @autoGen5203.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (the core display Iris 550 officially only supports macOS Monterey 12, and the counterfeit version supports the latest macOS Sequoia 15)'**
  String get autoGen5203;

  /// No description provided for @autoGen5204.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS Sierra 10.12 ~ macOS Monterey 12 (core display HD530 officially only supports macOS Monterey 12, counterfeit supports the latest macOS Sequoia 15)'**
  String get autoGen5204;

  /// No description provided for @autoGen5205.
  ///
  /// In en, this message translates to:
  /// **'Support macOS High Sierra 10.13 ~ macOS Ventura 13'**
  String get autoGen5205;

  /// No description provided for @autoGen5206.
  ///
  /// In en, this message translates to:
  /// **'Support macOS Mojave 10.14 ~ macOS Sequoia 15'**
  String get autoGen5206;

  /// No description provided for @autoGen5207.
  ///
  /// In en, this message translates to:
  /// **'Support macOS Catalina 10.15 ~ macOS Tahoe 26'**
  String get autoGen5207;

  /// No description provided for @autoGen5208.
  ///
  /// In en, this message translates to:
  /// **'Support macOS Catalina 10.15 ~ macOS Sequoia 15'**
  String get autoGen5208;

  /// No description provided for @autoGen5209.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS 10.9 ~ macOS Monterey 12, suitable for standalone graphics only models'**
  String get autoGen5209;

  /// No description provided for @autoGen5210.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS 10.13 ~ macOS Sequoia 15. Applicable to standalone graphics only models. For Intel 11th generation and above, this model is usually used. The CPU frequency conversion and turbo frequency are normal, and no additional Kext patch is needed (if the macOS system turbo frequency is not normal, please extract and use the native SSDT-PLUG)'**
  String get autoGen5210;

  /// No description provided for @autoGen5211.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS 10.15 ~ macOS Tahoe 26, suitable for A-card independent graphics models. Supported driver-free A-cards (such as RX560, RX570, RX5500, RX6600) will perfectly support VDA hard decoding. For Intel 11th generation and above, this model is usually used, the CPU turbo frequency is not normal, and an additional Kext patch is required. You can go to [Optional Kexts driver]->[CPU related]->[CPU variable frequency driver, mainly provides 11th generation and above platforms MacPro7,1 frequency conversion support] to check this option.'**
  String get autoGen5211;

  /// No description provided for @autoGen5212.
  ///
  /// In en, this message translates to:
  /// **'macOS compatibility range not configured'**
  String get autoGen5212;

  /// No description provided for @autoGen5213.
  ///
  /// In en, this message translates to:
  /// **'device-id must be 4 characters'**
  String get autoGen5213;

  /// No description provided for @autoGen5214.
  ///
  /// In en, this message translates to:
  /// **'Enable core display frame buffer (Framebuffer) patch master switch'**
  String get autoGen5214;

  /// No description provided for @autoGen5215.
  ///
  /// In en, this message translates to:
  /// **'Modify the video memory to 1536M (1.5G video memory, Apple’s official default value, suitable for 3rd to 10th generation Intel core display platforms)'**
  String get autoGen5215;

  /// No description provided for @autoGen5216.
  ///
  /// In en, this message translates to:
  /// **'Modify the video memory to 2048M (2G video memory, tool default value, suitable for 3rd to 10th generation Intel core display platforms)'**
  String get autoGen5216;

  /// No description provided for @autoGen5217.
  ///
  /// In en, this message translates to:
  /// **'Modify the video memory to 3072M (3G video memory, suitable for 3rd to 10th generation Intel core display platforms)'**
  String get autoGen5217;

  /// No description provided for @autoGen5218.
  ///
  /// In en, this message translates to:
  /// **'Modify the video memory to 4095M (4G video memory, suitable for 3rd to 10th generation Intel core display platforms)'**
  String get autoGen5218;

  /// No description provided for @autoGen5219.
  ///
  /// In en, this message translates to:
  /// **'Fix the 1080P high-resolution screen blur problem on the 4th generation Haswell platform (for example, the high-resolution screen blur may be because the value is not large enough. This patch is a dedicated patch for Haswell core display. It is recommended to use this configuration for 1080P and below screens)'**
  String get autoGen5219;

  /// No description provided for @autoGen5220.
  ///
  /// In en, this message translates to:
  /// **'Fix the problem of high-resolution screens such as 2K and 4K on the 4th generation Haswell platform (for example, the high-resolution screen may be blurred because the value is not large enough. This patch is a dedicated patch for Haswell core display. It is recommended to use this configuration for 2K and 4k screens)'**
  String get autoGen5220;

  /// No description provided for @autoGen5221.
  ///
  /// In en, this message translates to:
  /// **'Ivy Bridge high-resolution screen candidate patch'**
  String get autoGen5221;

  /// No description provided for @autoGen5222.
  ///
  /// In en, this message translates to:
  /// **'Enable con0 interface patch'**
  String get autoGen5222;

  /// No description provided for @autoGen5223.
  ///
  /// In en, this message translates to:
  /// **'Enable con1 interface patch'**
  String get autoGen5223;

  /// No description provided for @autoGen5224.
  ///
  /// In en, this message translates to:
  /// **'Enable con2 interface patching'**
  String get autoGen5224;

  /// No description provided for @autoGen5225.
  ///
  /// In en, this message translates to:
  /// **'Enable con3 interface patch'**
  String get autoGen5225;

  /// No description provided for @autoGen5226.
  ///
  /// In en, this message translates to:
  /// **'Ivy Bridge high-resolution screen candidate interface patch'**
  String get autoGen5226;

  /// No description provided for @autoGen5227.
  ///
  /// In en, this message translates to:
  /// **'Sandy Bridge notebook high-resolution screen (1600x900 and above resolution) patch'**
  String get autoGen5227;

  /// No description provided for @autoGen5228.
  ///
  /// In en, this message translates to:
  /// **'Optional patches for Ironlake/Arrandale notebooks'**
  String get autoGen5228;

  /// No description provided for @autoGen5229.
  ///
  /// In en, this message translates to:
  /// **'Fix HDMI high-resolution screen 60 fps solution (In some cases, Intel core display may use HDMI 1.4 standard by default. Enable this parameter to force HDMI 2.0 to support higher resolution and refresh rate, such as supporting 4K@60HZ)'**
  String get autoGen5229;

  /// No description provided for @autoGen5230.
  ///
  /// In en, this message translates to:
  /// **'Repair HDMI audio output (usually only the appropriate alcid is needed, this parameter can sometimes fix the problem of correct HDMI audio output)'**
  String get autoGen5230;

  /// No description provided for @autoGen5231.
  ///
  /// In en, this message translates to:
  /// **'Disable DP to HDMI conversion patch for digital sound (ensures the stability and reliability of the HDMI connection when the DisplayPort interface is connected to the HDMI interface through a converter)'**
  String get autoGen5231;

  /// No description provided for @autoGen5232.
  ///
  /// In en, this message translates to:
  /// **'Force online status on all monitors, which is helpful for core display multi-screen output. In some cases, it can avoid problems such as a black screen after waking up from sleep or the need to plug and unplug the monitor cable to light up the screen when starting up (usually applicable to 8th generation Coffee Lake and above core displays)'**
  String get autoGen5232;

  /// No description provided for @autoGen5233.
  ///
  /// In en, this message translates to:
  /// **'Improve core display performance (for example: fix the problem of core display 4K hevc encoding, resolution and fps not reaching ideal values)'**
  String get autoGen5233;

  /// No description provided for @autoGen5234.
  ///
  /// In en, this message translates to:
  /// **'Enable the full firmware loading of the core display, improve the utilization of the core display, and improve the performance of the core display. Adding this parameter may cause the system to be unable to enter, so use with caution'**
  String get autoGen5234;

  /// No description provided for @autoGen5235.
  ///
  /// In en, this message translates to:
  /// **'Fixed the endless loop problem caused by the 6th generation Skylake core display, the 7th generation Kaby Lake core display and the 8th generation Coffee Lake core display driver when trying to light up an external HDMI high-resolution display (specific symptoms are that after plugging in the HDMI cable, the notebook\'\'s internal screen turns black but has a backlight, the system becomes unresponsive, and there is no output on the external screen)'**
  String get autoGen5235;

  /// No description provided for @autoGen5236.
  ///
  /// In en, this message translates to:
  /// **'Fix the kernel crash issue caused by low Core Display Clock (CDCLK) frequency on the 10th generation Ice Lake platform'**
  String get autoGen5236;

  /// No description provided for @autoGen5237.
  ///
  /// In en, this message translates to:
  /// **'Fixed a kernel crash on the 10th generation Ice Lake platform caused by the driver incorrectly calculating the DVMT pre-allocated memory size'**
  String get autoGen5237;

  /// No description provided for @autoGen5238.
  ///
  /// In en, this message translates to:
  /// **'Adjust the Brightness Slider (Brightness Slider) settings to make transitions smoother and more natural to improve user experience'**
  String get autoGen5238;

  /// No description provided for @autoGen5239.
  ///
  /// In en, this message translates to:
  /// **'Fixed the problem of a dark screen lasting 3 minutes after startup on notebooks running macOS 13.4 or above on the 7th generation Kaby Lake, 8th generation, and 9th generation Coffee Lake platforms.'**
  String get autoGen5239;

  /// No description provided for @autoGen5240.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue where notebooks running macOS 13.3 and below on 7th generation Kaby Lake, 8th generation, and 9th generation Coffee Lake platforms would have a dark screen for 3 minutes after booting.'**
  String get autoGen5240;

  /// No description provided for @autoGen5241.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue where the screen on the 10th generation Ice Lake platform persists for 7 to 15 seconds when the notebook is turned on'**
  String get autoGen5241;

  /// No description provided for @autoGen5242.
  ///
  /// In en, this message translates to:
  /// **'Fixed the problem that the 10th generation Ice Lake core display HDMI high-resolution display would have a black screen, no signal, and the resolution could not be output correctly in 4K@60Hz and some 2K/4K high refresh scenarios (forced to enable the \"max pixel clock override\" of the core display (IGPU))'**
  String get autoGen5242;

  /// No description provided for @autoGen5243.
  ///
  /// In en, this message translates to:
  /// **'Used to repair nuclear display glitch effects or flickering screen problems (such as nuclear display HD530)'**
  String get autoGen5243;

  /// No description provided for @autoGen5244.
  ///
  /// In en, this message translates to:
  /// **'Disable the independent display (usually when the independent display of a dual-graphics laptop cannot be driven, the independent display needs to be disabled)'**
  String get autoGen5244;

  /// No description provided for @autoGen5245.
  ///
  /// In en, this message translates to:
  /// **'Fixed the problem of laptops (such as Dell XPS 15 9570 and other high-resolution screen notebooks) that the high-resolution screen internal screen returns the wrong maximum link rate value, resulting in a direct crash when the internal screen is lit (it is recommended to check this box for high-resolution screen notebooks)'**
  String get autoGen5245;

  /// No description provided for @autoGen5246.
  ///
  /// In en, this message translates to:
  /// **'Inject the monitor EDID into the AAPL00 interface (usually the internal screen of a notebook) to fix the black screen problem of the interface (note: you need to inject the monitor EDID on the EDID configuration page first! You can fill in the EDID in the tool \"Display Configuration\" -> \"Display EDID\". For 500 series motherboards such as B560, when repairing the HDMI output, you must inject the monitor EDID, otherwise there is a high probability of a black screen. Sometimes, for other Intel platforms, the problem of blurred screen, purple screen or black screen may be repaired)'**
  String get autoGen5246;

  /// No description provided for @autoGen5247.
  ///
  /// In en, this message translates to:
  /// **'Inject the monitor EDID into the AAPL01 interface to fix the black screen and no display problem of the interface (Note: You need to inject the monitor EDID on the EDID configuration page first! You can fill in the EDID in the tool \"Display Configuration\" -> \"Display EDID\". 500 series motherboards such as B560 must inject the monitor EDID when repairing the HDMI output, otherwise there is a high probability of a black screen. Sometimes, for other Intel platforms, the core display blurred screen, purple screen or black screen problem may be repaired)'**
  String get autoGen5247;

  /// No description provided for @autoGen5248.
  ///
  /// In en, this message translates to:
  /// **'Inject the monitor EDID into the AAPL02 interface to fix the black screen and no display problem of the interface (Note: You need to inject the monitor EDID on the EDID configuration page first! You can fill in the EDID in the tool \"Display Configuration\" -> \"Display EDID\". 500 series motherboards such as B560 must inject the monitor EDID when repairing the HDMI output, otherwise there is a high probability of a black screen. Sometimes, for other Intel platforms, the core display blurred screen, purple screen or black screen problem may be repaired)'**
  String get autoGen5248;

  /// No description provided for @autoGen5249.
  ///
  /// In en, this message translates to:
  /// **'Enable LSPCON support and convert DisplayPort to HDMI 2.0 output (requires port 0~3 LSPCON signal converter, suitable for 6th generation Skylake ~ 10th generation Comet Lake, Ice Lake Intel platforms)'**
  String get autoGen5249;

  /// No description provided for @autoGen5250.
  ///
  /// In en, this message translates to:
  /// **'Port 0 LSPCON signal converter (LSPCON support needs to be enabled)'**
  String get autoGen5250;

  /// No description provided for @autoGen5251.
  ///
  /// In en, this message translates to:
  /// **'Port 1 LSPCON signal converter (LSPCON support needs to be enabled)'**
  String get autoGen5251;

  /// No description provided for @autoGen5252.
  ///
  /// In en, this message translates to:
  /// **'Port 2 LSPCON signal converter (LSPCON support needs to be enabled)'**
  String get autoGen5252;

  /// No description provided for @autoGen5253.
  ///
  /// In en, this message translates to:
  /// **'Port 3 LSPCON signal converter (LSPCON support needs to be enabled)'**
  String get autoGen5253;

  /// No description provided for @autoGen5254.
  ///
  /// In en, this message translates to:
  /// **'Modify framebuffer memory to 9M (framebuffer memory size will affect high-resolution screens, usually used in conjunction with framebuffer-stolenmem)'**
  String get autoGen5254;

  /// No description provided for @autoGen5255.
  ///
  /// In en, this message translates to:
  /// **'Modify the stolen memory to 19M (applicable to 1080P screen, tool default value, no need to check. If there is a DVMT parameter in the BIOS, it is recommended to modify it to 64M. If the DVMT parameter is changed in the BIOS, this parameter can be removed)'**
  String get autoGen5255;

  /// No description provided for @autoGen5256.
  ///
  /// In en, this message translates to:
  /// **'Modify the stolen memory to 64M (applicable to 2k or 4k screens. If there is a DVMT parameter in the BIOS, it is recommended to modify it to 64M or above. If the DVMT parameter is changed in the BIOS, this parameter can be removed)'**
  String get autoGen5256;

  /// No description provided for @autoGen5257.
  ///
  /// In en, this message translates to:
  /// **'Modify the stolen memory to 128M (applicable to 4k screens. If there is a DVMT parameter in the BIOS, it is recommended to modify it to 128M or 256M or above for high-resolution screens. If the DVMT parameters are changed in the BIOS, this parameter can be removed)'**
  String get autoGen5257;

  /// No description provided for @autoGen5258.
  ///
  /// In en, this message translates to:
  /// **'Enable con0 HDMI port (requires HDMI interface No. 0)'**
  String get autoGen5258;

  /// No description provided for @autoGen5259.
  ///
  /// In en, this message translates to:
  /// **'No. 0 HDMI interface, used to fix the black screen problem of 6th to 10th generation HDMI (need to enable the con0 HDMI port)'**
  String get autoGen5259;

  /// No description provided for @autoGen5260.
  ///
  /// In en, this message translates to:
  /// **'Enable con1 HDMI port (requires HDMI interface No. 1)'**
  String get autoGen5260;

  /// No description provided for @autoGen5261.
  ///
  /// In en, this message translates to:
  /// **'No. 1 HDMI interface, used to fix the black screen problem of 6th to 10th generation HDMI (need to enable the con1 HDMI port)'**
  String get autoGen5261;

  /// No description provided for @autoGen5262.
  ///
  /// In en, this message translates to:
  /// **'Enable con2 HDMI port (requires HDMI interface No. 2)'**
  String get autoGen5262;

  /// No description provided for @autoGen5263.
  ///
  /// In en, this message translates to:
  /// **'HDMI interface No. 2, used to fix the black screen problem of 6th to 10th generation HDMI (need to enable the con2 HDMI port)'**
  String get autoGen5263;

  /// No description provided for @autoGen5264.
  ///
  /// In en, this message translates to:
  /// **'Video memory/DVMT parameters'**
  String get autoGen5264;

  /// No description provided for @autoGen5265.
  ///
  /// In en, this message translates to:
  /// **'4th generation Haswell specific parameters'**
  String get autoGen5265;

  /// No description provided for @autoGen5266.
  ///
  /// In en, this message translates to:
  /// **'3rd generation Ivy Bridge high-resolution screen candidate patch'**
  String get autoGen5266;

  /// No description provided for @autoGen5267.
  ///
  /// In en, this message translates to:
  /// **'2nd generation Sandy Bridge high-resolution screen candidate patch'**
  String get autoGen5267;

  /// No description provided for @autoGen5268.
  ///
  /// In en, this message translates to:
  /// **'Candidate patch for 1st generation Arrandale notebooks'**
  String get autoGen5268;

  /// No description provided for @autoGen5269.
  ///
  /// In en, this message translates to:
  /// **'HDMI/interface repair'**
  String get autoGen5269;

  /// No description provided for @autoGen5270.
  ///
  /// In en, this message translates to:
  /// **'10th generation Ice Lake fix'**
  String get autoGen5270;

  /// No description provided for @autoGen5271.
  ///
  /// In en, this message translates to:
  /// **'Universal fix'**
  String get autoGen5271;

  /// No description provided for @autoGen5272.
  ///
  /// In en, this message translates to:
  /// **'Ivy Bridge notebook high-resolution screen (1600x900 and above resolution) patch'**
  String get autoGen5272;

  /// No description provided for @autoGen5273.
  ///
  /// In en, this message translates to:
  /// **'Enable con0 interface HDMI type correction patch to fix 6th to 10th generation HDMI black screen, purple screen, and audio problems'**
  String get autoGen5273;

  /// No description provided for @autoGen5274.
  ///
  /// In en, this message translates to:
  /// **'Enable con1 interface HDMI type correction patch to fix 6th to 10th generation HDMI black screen, purple screen, and audio problems'**
  String get autoGen5274;

  /// No description provided for @autoGen5275.
  ///
  /// In en, this message translates to:
  /// **'Enable con2 interface HDMI type correction patch to fix 6th to 10th generation HDMI black screen, purple screen, and audio problems'**
  String get autoGen5275;

  /// No description provided for @autoGen5276.
  ///
  /// In en, this message translates to:
  /// **'alc_codec.json format error: root node must be Map<String, dynamic>'**
  String get autoGen5276;

  /// No description provided for @autoGen5277.
  ///
  /// In en, this message translates to:
  /// **'Enable -v to run the code (convenient to locate errors when the code is stuck, suitable for debugging and booting stage)'**
  String get autoGen5277;

  /// No description provided for @autoGen5278.
  ///
  /// In en, this message translates to:
  /// **'It is convenient for the mac system to print more symbol information when a kernel crash occurs, which is helpful for troubleshooting problems. This parameter is usually used with debug=0x100 (it is strongly recommended to check it when debugging and booting for the first time)'**
  String get autoGen5278;

  /// No description provided for @autoGen5279.
  ///
  /// In en, this message translates to:
  /// **'Prevent automatic restart when the kernel crashes, making it easier to view Panic crash logs (it is strongly recommended to check this when debugging and booting for the first time)'**
  String get autoGen5279;

  /// No description provided for @autoGen5280.
  ///
  /// In en, this message translates to:
  /// **'Disable the watchdog function to prevent accidental triggering of Panic crash restart (applicable to debugging boot)'**
  String get autoGen5280;

  /// No description provided for @autoGen5281.
  ///
  /// In en, this message translates to:
  /// **'Disable kernel address space randomization (KASLR) to ensure that the kernel and kext (kernel extension) are loaded in the same fixed memory map to avoid early startup kernel crashes caused by memory conflicts caused by random slide values ​​(applicable to debugging boot)'**
  String get autoGen5281;

  /// No description provided for @autoGen5282.
  ///
  /// In en, this message translates to:
  /// **'Skip the model check during the first startup of macOS to avoid prohibition symbols due to too low or too high SMBIOS, and ensure that the system can be booted normally (note that this parameter cannot skip the model check during installation. A message similar to \"macOS is not supported\" will appear during installation. At this time, you can change the SMBIOS to a higher or lower level to support the new or old system)'**
  String get autoGen5282;

  /// No description provided for @autoGen5283.
  ///
  /// In en, this message translates to:
  /// **'This parameter is applicable to disabling AMFI, relatively new graphics cards (such as HD4000 and above, GT710 and other Kepler cores and above) or WiFi drivers. Note not to use it with the amfi_get_out_of_my_way=0x1 parameter at the same time! (This parameter will only take effect if SIP is disabled, and this parameter will be automatically removed after SIP is enabled)'**
  String get autoGen5283;

  /// No description provided for @autoGen5284.
  ///
  /// In en, this message translates to:
  /// **'Make sure AMFIPass.kext can be properly enabled and activated in the latest macOS Tahoe 26 system in order to continue bypassing AMFI (AMFI Disabled) security checks. (Note: 1. This parameter cannot be used at the same time as the disable AMFI parameter, and this parameter needs to be used with AMFIPass.kext. 2. This parameter is usually only used in the latest systems, do not add it unless necessary)'**
  String get autoGen5284;

  /// No description provided for @autoGen5285.
  ///
  /// In en, this message translates to:
  /// **'This parameter is applicable when AMFI is disabled, old platforms, old graphics cards (such as GT240) or WiFi drivers are used. Note not to use the amfi=0x80 parameter at the same time! (It only takes effect when SIP is disabled, and this parameter is automatically removed after SIP is enabled)'**
  String get autoGen5285;

  /// No description provided for @autoGen5286.
  ///
  /// In en, this message translates to:
  /// **'Fixed the crash problem of some applications (for example: Baidu Netdisk) after disabling AMFI (it will only take effect if SIP is disabled, and this parameter will be automatically removed after SIP is enabled)'**
  String get autoGen5286;

  /// No description provided for @autoGen5287.
  ///
  /// In en, this message translates to:
  /// **'Fix problems that may occur in the latest system (mainly Beta version) (system driver exception, such as: sudden abnormality in sound card, Bluetooth, CPU frequency, etc. It is strongly recommended to check this when trying the latest Beta version system)'**
  String get autoGen5287;

  /// No description provided for @autoGen5288.
  ///
  /// In en, this message translates to:
  /// **'Only enable 1 CPU core (applicable to X58, X79, X99, X299 and other multi-core server CPU core crashes, early installation and debugging stages)'**
  String get autoGen5288;

  /// No description provided for @autoGen5289.
  ///
  /// In en, this message translates to:
  /// **'Turn off VT-d (disable IOMMU, you can check it when the BIOS does not turn off VT-d) to solve the problem of some motherboards getting stuck after starting or entering the system.'**
  String get autoGen5289;

  /// No description provided for @autoGen5290.
  ///
  /// In en, this message translates to:
  /// **'Disable Apple Graphics Firmware loading to avoid getting stuck due to firmware loading failure or retry loop during startup (only applicable to Intel graphics)'**
  String get autoGen5290;

  /// No description provided for @autoGen5291.
  ///
  /// In en, this message translates to:
  /// **'Disable Intel core display (it is recommended to check when the core display cannot be driven and accelerated hard decoding is not supported)'**
  String get autoGen5291;

  /// No description provided for @autoGen5292.
  ///
  /// In en, this message translates to:
  /// **'Disable independent graphics (usually when Intel dual graphics notebook independent graphics card [commonly used in N cards] cannot be driven, it is recommended to check it)'**
  String get autoGen5292;

  /// No description provided for @autoGen5293.
  ///
  /// In en, this message translates to:
  /// **'Disable NVIDIA driver (only applicable when debugging incompatible N cards)'**
  String get autoGen5293;

  /// No description provided for @autoGen5294.
  ///
  /// In en, this message translates to:
  /// **'Disable Intel core graphics acceleration (for example: when using OCLP and unable to start normally after patching the core graphics patch, you can check it, no acceleration, only for debugging)'**
  String get autoGen5294;

  /// No description provided for @autoGen5295.
  ///
  /// In en, this message translates to:
  /// **'Repair and improve Intel core display performance (for example: fix the problem of core display 4K hevc encoding, resolution and fps not reaching ideal values)'**
  String get autoGen5295;

  /// No description provided for @autoGen5296.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue with the maximum link rate value of Intel core display, which caused a direct crash when the screen was turned on ((especially on Skylake, Kaby Lake, Coffee Lake, Comet Lake, black screen and no signal, not reaching the expected 4K resolution, etc.)'**
  String get autoGen5296;

  /// No description provided for @autoGen5297.
  ///
  /// In en, this message translates to:
  /// **'Fix the resolution problem of the core display, force the \"max pixel clock override\" of the IGPU to be enabled, and lift the default resolution, refresh rate and other restrictions of macOS'**
  String get autoGen5297;

  /// No description provided for @autoGen5298.
  ///
  /// In en, this message translates to:
  /// **'Fix the problem of 4K black screen in HDMI output of some laptops (usually applicable to laptops, such as ThinkPad P71/7700HQ/HD630/4K stuck in `gIOScreenLockState3`)'**
  String get autoGen5298;

  /// No description provided for @autoGen5299.
  ///
  /// In en, this message translates to:
  /// **'Fix the kernel crash issue caused by low Core Display Clock (CDCLK) frequency on the 10th generation Ice Lake platform'**
  String get autoGen5299;

  /// No description provided for @autoGen5300.
  ///
  /// In en, this message translates to:
  /// **'Fixed a kernel crash issue on the 10th generation Ice Lake platform caused by the driver incorrectly calculating the DVMT pre-allocated memory size.'**
  String get autoGen5300;

  /// No description provided for @autoGen5301.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue where the screen on the 10th generation Ice Lake platform persists for 7 to 15 seconds when the notebook is turned on'**
  String get autoGen5301;

  /// No description provided for @autoGen5302.
  ///
  /// In en, this message translates to:
  /// **'Disable iGPU (core graphics) to load the telemetry module during the startup process. Some notebooks (especially Chromebooks) may cause the system to freeze or freeze during the startup phase when loading this module (applicable to Intel Skylake 6th generation and above notebooks)'**
  String get autoGen5302;

  /// No description provided for @autoGen5303.
  ///
  /// In en, this message translates to:
  /// **'Fix the backlight register on macOS Ventura 13.4 and below, 7th generation KBL, 8th & 9th generation CFL notebook platforms, and fix the problem of black screen or dark screen lasting for 3 minutes (applicable to notebooks)'**
  String get autoGen5303;

  /// No description provided for @autoGen5304.
  ///
  /// In en, this message translates to:
  /// **'Fix the backlight register on macOS Ventura 13.4 and above, 7th generation KBL, 8th & 9th generation CFL notebook platforms, and fix the problem of black screen or dark screen lasting for 3 minutes (applicable to notebooks)'**
  String get autoGen5304;

  /// No description provided for @autoGen5305.
  ///
  /// In en, this message translates to:
  /// **'Adjust the brightness slider (brightness slider) settings to make transitions smoother and more natural to improve user experience (applicable to notebooks)'**
  String get autoGen5305;

  /// No description provided for @autoGen5306.
  ///
  /// In en, this message translates to:
  /// **'Draw the Apple logo in the second startup phase instead of copying the frame buffer. When connecting an external monitor, smoothly transition from the progress bar to the login desktop. In some cases, it can fix the black screen problem when entering the system. At the same time, it is helpful to plug and unplug the monitor cable to turn on the screen.'**
  String get autoGen5306;

  /// No description provided for @autoGen5307.
  ///
  /// In en, this message translates to:
  /// **'Fix the ACPI Configuration begin problem of platform cards such as X58,'**
  String get autoGen5307;

  /// No description provided for @autoGen5308.
  ///
  /// In en, this message translates to:
  /// **'Fix the ACPI Configuration begin problem of platform cards such as X58,'**
  String get autoGen5308;

  /// No description provided for @autoGen5309.
  ///
  /// In en, this message translates to:
  /// **'Fixed hardware digital rights management (DRM) support issue on AMD GPUs (enables DRM-protected digital content, such as high-quality videos provided by streaming services, to be experienced on supported AMD GPUs)'**
  String get autoGen5309;

  /// No description provided for @autoGen5310.
  ///
  /// In en, this message translates to:
  /// **'Disable ATI and AMD graphics card acceleration (for example: when using OCLP and the graphics card cannot start normally after patching, you can check it, no acceleration, only for debugging)'**
  String get autoGen5310;

  /// No description provided for @autoGen5311.
  ///
  /// In en, this message translates to:
  /// **'Repair HD7750, HD7850 (the main core is GCN series HD77XX, HD78XX, HD79XX) and other old A-card screen distortion, yellow screen and other abnormal display problems'**
  String get autoGen5311;

  /// No description provided for @autoGen5312.
  ///
  /// In en, this message translates to:
  /// **'Fix the black screen or abnormal display problems that may be caused by some graphics cards, completely ignoring the restrictions or settings of AppleGraphicsDevicePolicy.kext on the graphics card. When you are not sure of the specific restrictions, avoid display problems or black screen phenomena caused by incompatible hardware configurations (such as specific board-id). Pay attention to this parameter, which will only take effect when used with WhateverGreen.kext. For native driver-free A cards, you can remove the WhateverGreen.kext driver, so this parameter does not need to be added.'**
  String get autoGen5312;

  /// No description provided for @autoGen5313.
  ///
  /// In en, this message translates to:
  /// **'Fix the black screen problem when AMD Navi core RX5XXX, RX6XXX series graphics cards start up (for example: RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.), replace board-id with board-ix, and bypass some restrictions of AppleGraphicsDevicePolicy. Note: 1. It will only take effect when used with WhateverGreen.kext. 2. BIOS Turn off the Serial/COM Port in SuperIO settings. For native driver-free A cards, you can remove the WhateverGreen.kext driver, so this parameter does not need to be added.'**
  String get autoGen5313;

  /// No description provided for @autoGen5314.
  ///
  /// In en, this message translates to:
  /// **'Fix the black screen problem after waking up from sleep for some graphics cards such as RX470 and RX570, disable the board-id check in AppleGraphicsDevicePolicy, and fix the black screen or abnormal display problems that may be caused by some graphics cards. Note that this parameter will only take effect when used with WhateverGreen.kext. For native driver-free A cards, the WhateverGreen.kext driver can be removed, so this parameter does not need to be added.'**
  String get autoGen5314;

  /// No description provided for @autoGen5315.
  ///
  /// In en, this message translates to:
  /// **'Repair Intel 3rd generation and below platforms AMD RX5XX (for example: RX560, RX570, RX580) series, AMD RX5XXX, RX6XXX (for example: RX5500, RX6600) series driver-free graphics cards have a black screen problem in Ventura and above systems (Note: You need to use OCLP to patch the graphics card after entering the system! After patching the graphics card, remove the boot parameter or use the alternative config-after-post in the EFI directory to rename the config, and restart to drive the graphics card!)'**
  String get autoGen5315;

  /// No description provided for @autoGen5316.
  ///
  /// In en, this message translates to:
  /// **'Fix officially unsupported AMD graphics cards (for example: RX550 Lexa core) to support VDA hardware video encoding'**
  String get autoGen5316;

  /// No description provided for @autoGen5317.
  ///
  /// In en, this message translates to:
  /// **'Repair Fermi, Maxwell, Pascal architecture old N card (for example: GT610, GTX750, GTX960, GTX1050) BigSur 11 or above system graphics card driver problem (Note: You need to use OCLP to patch the graphics card after entering the system!!! This parameter is not required for Kepler core!!!)'**
  String get autoGen5317;

  /// No description provided for @autoGen5318.
  ///
  /// In en, this message translates to:
  /// **'Fixed the problem of slow speed of some Broadcom wireless network cards (change the Broadcom WiFi country code to Hong Kong, you can also change the router channel to improve it)'**
  String get autoGen5318;

  /// No description provided for @autoGen5319.
  ///
  /// In en, this message translates to:
  /// **'Fix ramrod code, SMC simulator damage problem'**
  String get autoGen5319;

  /// No description provided for @autoGen5320.
  ///
  /// In en, this message translates to:
  /// **'Fix the macOS system OTA update problem after disabling SIP (System Integrity Protection) or SecureBootModel (security model), and fix the custom CPU name display problem'**
  String get autoGen5320;

  /// No description provided for @autoGen5321.
  ///
  /// In en, this message translates to:
  /// **'Avoid the problem of restarting the device after entering sleep mode, making it easier to obtain kernel crash logs and troubleshoot sleep problems.'**
  String get autoGen5321;

  /// No description provided for @autoGen5322.
  ///
  /// In en, this message translates to:
  /// **'Improve the topology identification and scheduling of Intel 12th generation and later large and small core CPUs. Performance improvement is not guaranteed. It is recommended to enable it after actual testing (note that it needs to be used with CpuTopologyRebuild.kext to take effect)'**
  String get autoGen5322;

  /// No description provided for @autoGen5323.
  ///
  /// In en, this message translates to:
  /// **'Completely disable Darkwake mode and let the system enter traditional sleep mode. It is mainly used to repair problems such as black screen wake-up and automatic wake-up.'**
  String get autoGen5323;

  /// No description provided for @autoGen5324.
  ///
  /// In en, this message translates to:
  /// **'Disable iGPU RC6 rendering standby and fix the problem of NVMe kernel panic caused by RC6 core display during sleep'**
  String get autoGen5324;

  /// No description provided for @autoGen5325.
  ///
  /// In en, this message translates to:
  /// **'Enable PWM backlight control for AMD Radeon RX 5000 series graphics cards'**
  String get autoGen5325;

  /// No description provided for @autoGen5326.
  ///
  /// In en, this message translates to:
  /// **'Repair and correct the DVI interface output display of old A cards (290X, 370, etc.)'**
  String get autoGen5326;

  /// No description provided for @autoGen5327.
  ///
  /// In en, this message translates to:
  /// **'Force the I2C type touch panel to work in polling mode instead of interrupt-driven mode (interrupt mode usually requires customized SSDT, which is relatively complicated. Sometimes the problem of the I2C touch panel being unusable can be fixed (it needs to be used with the VoodooI2C driver)'**
  String get autoGen5327;

  /// No description provided for @autoGen5328.
  ///
  /// In en, this message translates to:
  /// **'DevirtualiseMmio (Some motherboards and firmware may have conflicts or incompatibility issues when handling the MMIO area. Enabling this option can help resolve these conflicts and improve system compatibility and stability. This option is usually combined with the OpenCore Debug version to customize MMIO to solve card EB caused by memory problems on some motherboards (for example: some X58, X79, X99, and AMD 7000 series processor motherboards))'**
  String get autoGen5328;

  /// No description provided for @autoGen5329.
  ///
  /// In en, this message translates to:
  /// **'EnableWriteUnprotector (It is recommended to check it on firmware that does not support memory attribute table (MAT), especially OEM firmware. After turning it on, the write protection in the CR0 register will be deleted during execution to ensure normal writing of NVRAM. Usually applicable to platforms before the 7th generation)'**
  String get autoGen5329;

  /// No description provided for @autoGen5330.
  ///
  /// In en, this message translates to:
  /// **'ProtectUefiServices (protects UEFI services from being overwritten by firmware, usually used to repair card EB problems caused by DevirtualiseMmio, etc. It is recommended to check it for Z390, Z490 motherboards, and 10th generation Ice Lake)'**
  String get autoGen5330;

  /// No description provided for @autoGen5331.
  ///
  /// In en, this message translates to:
  /// **'SetupVirtualMap (Establishes continuous virtual memory for OC use and maps it to dispersed physical memory. Note: It is not recommended to check this option for 10th generation Comet Lake ASUS, Gigabyte, and AsRock motherboards.'**
  String get autoGen5331;

  /// No description provided for @autoGen5332.
  ///
  /// In en, this message translates to:
  /// **'RebuildAppleMemoryMap (On firmware that supports memory attribute table (MAT), it is recommended to check it. It is usually used in conjunction with SyncRuntimePermissions. This item may conflict with EnableWriteUnprotector. It is recommended to choose one of the two. It is usually applicable to platforms after the 8th generation, and is also applicable to some old platforms)'**
  String get autoGen5332;

  /// No description provided for @autoGen5333.
  ///
  /// In en, this message translates to:
  /// **'SyncRuntimePermissions (Fixes the problem that hardware cannot inject permissions when injecting memory. Generally, this problem exists in motherboards after 2018. If you cannot enter Windows because of this option, please turn it on. This item is usually used in conjunction with RebuildAppleMemoryMap)'**
  String get autoGen5333;

  /// No description provided for @autoGen5334.
  ///
  /// In en, this message translates to:
  /// **'2nd generation CPU - 3rd generation motherboard hybrid'**
  String get autoGen5334;

  /// No description provided for @autoGen5335.
  ///
  /// In en, this message translates to:
  /// **'3rd generation CPU - 2nd generation motherboard hybrid'**
  String get autoGen5335;

  /// No description provided for @autoGen5336.
  ///
  /// In en, this message translates to:
  /// **'Complete the installation without driving the core display for the time being (this can avoid black screen and kernel crash problems caused by the core display buffer frame problem)'**
  String get autoGen5336;

  /// No description provided for @autoGen5337.
  ///
  /// In en, this message translates to:
  /// **'Counterfeit device ID'**
  String get autoGen5337;

  /// No description provided for @autoGen5338.
  ///
  /// In en, this message translates to:
  /// **'Core display is only used for acceleration and calculation tasks, not as output display (independent graphics card output display)'**
  String get autoGen5338;

  /// No description provided for @autoGen5339.
  ///
  /// In en, this message translates to:
  /// **'HD3000, HD P3000 and other core displays'**
  String get autoGen5339;

  /// No description provided for @autoGen5340.
  ///
  /// In en, this message translates to:
  /// **'HD4000, HD P4000 and other core displays'**
  String get autoGen5340;

  /// No description provided for @autoGen5341.
  ///
  /// In en, this message translates to:
  /// **'HD4400, HD4600, HD P4600 and other core displays'**
  String get autoGen5341;

  /// No description provided for @autoGen5342.
  ///
  /// In en, this message translates to:
  /// **'Iris Pro 6200/6300 and other core displays'**
  String get autoGen5342;

  /// No description provided for @autoGen5343.
  ///
  /// In en, this message translates to:
  /// **'HD5600 core display (P6200, P6300 can be counterfeited)'**
  String get autoGen5343;

  /// No description provided for @autoGen5344.
  ///
  /// In en, this message translates to:
  /// **'HD6000, Iris 6100 and other core displays'**
  String get autoGen5344;

  /// No description provided for @autoGen5345.
  ///
  /// In en, this message translates to:
  /// **'HD520, HD530 and other counterfeit HD620 core displays (applicable to Ventura and above systems)'**
  String get autoGen5345;

  /// No description provided for @autoGen5346.
  ///
  /// In en, this message translates to:
  /// **'HD520, HD530 and other counterfeit HD620 core displays (applicable to Ventura and above systems, alternative)'**
  String get autoGen5346;

  /// No description provided for @autoGen5347.
  ///
  /// In en, this message translates to:
  /// **'HD530, HD P530 and other 500 series core displays (applicable to Monterey and below systems)'**
  String get autoGen5347;

  /// No description provided for @autoGen5348.
  ///
  /// In en, this message translates to:
  /// **'HD 630, HD P630 and other core displays'**
  String get autoGen5348;

  /// No description provided for @autoGen5349.
  ///
  /// In en, this message translates to:
  /// **'HD 630, P630 and other counterfeit UHD630 core displays (Option 1)'**
  String get autoGen5349;

  /// No description provided for @autoGen5350.
  ///
  /// In en, this message translates to:
  /// **'HD 630, P630 and other counterfeit UHD630 core displays (Option 2)'**
  String get autoGen5350;

  /// No description provided for @autoGen5351.
  ///
  /// In en, this message translates to:
  /// **'UHD 630 nuclear display output solution one'**
  String get autoGen5351;

  /// No description provided for @autoGen5352.
  ///
  /// In en, this message translates to:
  /// **'UHD 630 core display output case 2'**
  String get autoGen5352;

  /// No description provided for @autoGen5353.
  ///
  /// In en, this message translates to:
  /// **'Intel HD Graphics (for example: i3 380M, i5 480M comes with built-in core display)'**
  String get autoGen5353;

  /// No description provided for @autoGen5354.
  ///
  /// In en, this message translates to:
  /// **'HD3000 core display output display, suitable for resolutions of 1366x768 and below)'**
  String get autoGen5354;

  /// No description provided for @autoGen5355.
  ///
  /// In en, this message translates to:
  /// **'Enable support for resolutions above 1600X900'**
  String get autoGen5355;

  /// No description provided for @autoGen5356.
  ///
  /// In en, this message translates to:
  /// **'HD3000 nuclear display output display, suitable for resolutions of 1600x900 and above)'**
  String get autoGen5356;

  /// No description provided for @autoGen5357.
  ///
  /// In en, this message translates to:
  /// **'HD4000 core display driver solution one, suitable for 1366x768 and below resolution, LVDS link method'**
  String get autoGen5357;

  /// No description provided for @autoGen5358.
  ///
  /// In en, this message translates to:
  /// **'HD4000 core display driver solution two, suitable for 1600x900 and above resolution LVDS link mode, multi-screen output may require more patch configurations)'**
  String get autoGen5358;

  /// No description provided for @autoGen5359.
  ///
  /// In en, this message translates to:
  /// **'HD4000 core display driver solution three, suitable for monitors with eDP connection)'**
  String get autoGen5359;

  /// No description provided for @autoGen5360.
  ///
  /// In en, this message translates to:
  /// **'HD4200, HD4400, HD4600 core display'**
  String get autoGen5360;

  /// No description provided for @autoGen5361.
  ///
  /// In en, this message translates to:
  /// **'HD5000, HD5100, HD5200 core display'**
  String get autoGen5361;

  /// No description provided for @autoGen5362.
  ///
  /// In en, this message translates to:
  /// **'HD5500 core display'**
  String get autoGen5362;

  /// No description provided for @autoGen5363.
  ///
  /// In en, this message translates to:
  /// **'HD5600 core display'**
  String get autoGen5363;

  /// No description provided for @autoGen5364.
  ///
  /// In en, this message translates to:
  /// **'HD6000 core display'**
  String get autoGen5364;

  /// No description provided for @autoGen5365.
  ///
  /// In en, this message translates to:
  /// **'HD520, HD530 and other counterfeit HD620 core displays (for Ventura and above systems)'**
  String get autoGen5365;

  /// No description provided for @autoGen5366.
  ///
  /// In en, this message translates to:
  /// **'HD 515, HD 520, HD 530, HD 540, HD 550, P530 core display (applicable to Monterey and below systems)'**
  String get autoGen5366;

  /// No description provided for @autoGen5367.
  ///
  /// In en, this message translates to:
  /// **'HD 515 nuclear display alternative'**
  String get autoGen5367;

  /// No description provided for @autoGen5368.
  ///
  /// In en, this message translates to:
  /// **'HD 510 core display'**
  String get autoGen5368;

  /// No description provided for @autoGen5369.
  ///
  /// In en, this message translates to:
  /// **'HD 615, HD 620, HD 630, HD 640, HD 650 core display'**
  String get autoGen5369;

  /// No description provided for @autoGen5370.
  ///
  /// In en, this message translates to:
  /// **'HD/UHD 620 core display alternative'**
  String get autoGen5370;

  /// No description provided for @autoGen5371.
  ///
  /// In en, this message translates to:
  /// **'UHD 617, UHD 620 core display'**
  String get autoGen5371;

  /// No description provided for @autoGen5372.
  ///
  /// In en, this message translates to:
  /// **'UHD 630 core display'**
  String get autoGen5372;

  /// No description provided for @autoGen5373.
  ///
  /// In en, this message translates to:
  /// **'UHD 620 core display'**
  String get autoGen5373;

  /// No description provided for @autoGen5374.
  ///
  /// In en, this message translates to:
  /// **'Intel lris Plus 655 core display'**
  String get autoGen5374;

  /// No description provided for @autoGen5375.
  ///
  /// In en, this message translates to:
  /// **'G4/G7 series core display'**
  String get autoGen5375;

  /// No description provided for @autoGen5376.
  ///
  /// In en, this message translates to:
  /// **'HD3000 nuclear display output display'**
  String get autoGen5376;

  /// No description provided for @autoGen5377.
  ///
  /// In en, this message translates to:
  /// **'HD4000 nuclear display output display'**
  String get autoGen5377;

  /// No description provided for @autoGen5378.
  ///
  /// In en, this message translates to:
  /// **'HD4200, HD4400, HD4600, HD P4600 and other core displays (it is recommended to check the 4th generation core display dedicated patch in the advanced configuration of the core display, and minor problems that may occur have been fixed)'**
  String get autoGen5378;

  /// No description provided for @autoGen5379.
  ///
  /// In en, this message translates to:
  /// **'HD 515 core display'**
  String get autoGen5379;

  /// No description provided for @autoGen5380.
  ///
  /// In en, this message translates to:
  /// **'HD 520/530 core display'**
  String get autoGen5380;

  /// No description provided for @autoGen5381.
  ///
  /// In en, this message translates to:
  /// **'HD 540/550 core display'**
  String get autoGen5381;

  /// No description provided for @autoGen5382.
  ///
  /// In en, this message translates to:
  /// **'HD 580 core display'**
  String get autoGen5382;

  /// No description provided for @autoGen5383.
  ///
  /// In en, this message translates to:
  /// **'HD P530 core display (such as e3 1245v5 comes with built-in core display)'**
  String get autoGen5383;

  /// No description provided for @autoGen5384.
  ///
  /// In en, this message translates to:
  /// **'HD 615 core display'**
  String get autoGen5384;

  /// No description provided for @autoGen5385.
  ///
  /// In en, this message translates to:
  /// **'HD 630, HD P630 core display'**
  String get autoGen5385;

  /// No description provided for @autoGen5386.
  ///
  /// In en, this message translates to:
  /// **'HD 640/650 core display'**
  String get autoGen5386;

  /// No description provided for @autoGen5387.
  ///
  /// In en, this message translates to:
  /// **'HD/UHD 620 core display'**
  String get autoGen5387;

  /// No description provided for @autoGen5388.
  ///
  /// In en, this message translates to:
  /// **'UHD 620/630 core display'**
  String get autoGen5388;

  /// No description provided for @autoGen5389.
  ///
  /// In en, this message translates to:
  /// **'UHD 655 core display'**
  String get autoGen5389;

  /// No description provided for @autoGen5390.
  ///
  /// In en, this message translates to:
  /// **'Rename GPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)'**
  String get autoGen5390;

  /// No description provided for @autoGen5391.
  ///
  /// In en, this message translates to:
  /// **'Rename UPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)'**
  String get autoGen5391;

  /// No description provided for @autoGen5392.
  ///
  /// In en, this message translates to:
  /// **'Enable GPI0 devices to support I2C trackpads'**
  String get autoGen5392;

  /// No description provided for @autoGen5393.
  ///
  /// In en, this message translates to:
  /// **'A necessary driver for macOS kernel extensions, which mainly provides scalability and compatibility for macOS, which allows other developers to write kernel extensions for extending macOS.'**
  String get autoGen5393;

  /// No description provided for @autoGen5394.
  ///
  /// In en, this message translates to:
  /// **'For example, WhateverGreen, AppleALC, VirtualSMC, etc. can implement various modifications and enhancements to macOS through Lilu.kext, such as supporting different graphics cards, sound cards, virtual machine management, etc.'**
  String get autoGen5394;

  /// No description provided for @autoGen5395.
  ///
  /// In en, this message translates to:
  /// **'Lilu.kext is usually the first macOS kernel extension loaded, as other plugins may need to rely on its functionality. This ensures that the plugin loads correctly when macOS starts'**
  String get autoGen5395;

  /// No description provided for @autoGen5396.
  ///
  /// In en, this message translates to:
  /// **'Essential basic drivers'**
  String get autoGen5396;

  /// No description provided for @autoGen5397.
  ///
  /// In en, this message translates to:
  /// **'On real Apple hardware, SMC is responsible for managing system management functions such as hardware sensors, fan control, power management, temperature sensors, and battery status. VirtualSMC provides these features on non-Apple hardware to ensure macOS can run properly on these systems'**
  String get autoGen5397;

  /// No description provided for @autoGen5398.
  ///
  /// In en, this message translates to:
  /// **'Often used in conjunction with other kernel extensions such as Lilu.kext, WhateverGreen, etc. to create a near-real Mac environment on non-Apple hardware'**
  String get autoGen5398;

  /// No description provided for @autoGen5399.
  ///
  /// In en, this message translates to:
  /// **'The driver is missing and macOS cannot run properly.'**
  String get autoGen5399;

  /// No description provided for @autoGen5400.
  ///
  /// In en, this message translates to:
  /// **'It mainly provides GPU graphics driver support. Most of them are strongly recommended to check (MacPro7, 1 models and RX460, RX560 and above AMD independent graphics users can remove the check). It usually conflicts with the NootRX and NootedRed drivers. Do not select them at the same time during the installation stage.'**
  String get autoGen5400;

  /// No description provided for @autoGen5401.
  ///
  /// In en, this message translates to:
  /// **'Supports a variety of graphics cards, including NVIDIA, AMD, and Intel graphics cards. This extension can fix and configure the correct Framebuffer so that the display and resolution work properly'**
  String get autoGen5401;

  /// No description provided for @autoGen5402.
  ///
  /// In en, this message translates to:
  /// **'Provides support for HDMI and DisplayPort (DP) connections to ensure audio and video outputs work properly'**
  String get autoGen5402;

  /// No description provided for @autoGen5403.
  ///
  /// In en, this message translates to:
  /// **'Use AppleALC to imitate the built-in sound card (relatively perfect, preferred choice)'**
  String get autoGen5403;

  /// No description provided for @autoGen5404.
  ///
  /// In en, this message translates to:
  /// **'Use VoodooHDA universal sound card (loaded during boot, only supports macOS BigSur 11.2.3 and below. Higher macOS versions need to add this driver into the system kernel extension to take effect. According to the author\'\'s test, the highest support is macOS Tahoe 26.x official version)'**
  String get autoGen5404;

  /// No description provided for @autoGen5405.
  ///
  /// In en, this message translates to:
  /// **'USB 3.0 controller compatibility fix for old platforms or AMD platforms'**
  String get autoGen5405;

  /// No description provided for @autoGen5406.
  ///
  /// In en, this message translates to:
  /// **'Fix the restart problem caused by CPU power management of old platforms before Intel 3rd generation (shown as AppleIntelCPUPowerManagement kernel crash log, or stuck boot logo, or restarting just after entering the system, etc.)'**
  String get autoGen5406;

  /// No description provided for @autoGen5407.
  ///
  /// In en, this message translates to:
  /// **'Fix AMD Ryzen series CPU power management (only applicable to AMD Ryzen series, if there are restart problems caused by power management, you can consider removing the check box)'**
  String get autoGen5407;

  /// No description provided for @autoGen5408.
  ///
  /// In en, this message translates to:
  /// **'Battery drive solution 1 (applicable to notebooks of 3rd generation and older platforms)'**
  String get autoGen5408;

  /// No description provided for @autoGen5409.
  ///
  /// In en, this message translates to:
  /// **'Battery drive solution 2 (applicable to notebooks of 3rd generation and newer platforms)'**
  String get autoGen5409;

  /// No description provided for @autoGen5410.
  ///
  /// In en, this message translates to:
  /// **'Ambient light sensor (automatic screen brightness), if you do not have an ambient light sensor, do not use it, otherwise it may cause problems'**
  String get autoGen5410;

  /// No description provided for @autoGen5411.
  ///
  /// In en, this message translates to:
  /// **'Asus notebook fan control, power management and other system sensor optimization, etc. are not recommended for use by non-Asus'**
  String get autoGen5411;

  /// No description provided for @autoGen5412.
  ///
  /// In en, this message translates to:
  /// **'Lenovo notebook fan control, power management and other system sensor optimization, etc. are not recommended for non-Lenovo machines.'**
  String get autoGen5412;

  /// No description provided for @autoGen5413.
  ///
  /// In en, this message translates to:
  /// **'Special sensor for Dell laptops to more accurately monitor and control fans. Not recommended for non-Dell machines.'**
  String get autoGen5413;

  /// No description provided for @autoGen5414.
  ///
  /// In en, this message translates to:
  /// **'Allows the sensor information of AMD processors (such as temperature, power consumption, frequency, etc.) to be exposed to macOS monitoring tools. This driver supports AMD Ryzen series processors and some AMD FX series processors. Other AMD processors may cause unexpected problems. At the same time, some platforms of Sequoia 15 and above systems may have compatibility issues, so choose carefully.'**
  String get autoGen5414;

  /// No description provided for @autoGen5415.
  ///
  /// In en, this message translates to:
  /// **'Used to support RX6700, RX6750XT, RX6750GRE and other officially unsupported RX6XXX series independent graphics. There is a conflict with the WhateverGreen driver. Do not select both at the installation stage.'**
  String get autoGen5415;

  /// No description provided for @autoGen5416.
  ///
  /// In en, this message translates to:
  /// **'Supports Navi 21 (Big Sur and above), Navi 22/23 (Monterey and above), and also supports RX6650, RX6950 and other graphics cards'**
  String get autoGen5416;

  /// No description provided for @autoGen5417.
  ///
  /// In en, this message translates to:
  /// **'Adding this driver when installing macOS for the first time may result in the inability to enter the system. It is recommended to add it after completing the installation.'**
  String get autoGen5417;

  /// No description provided for @autoGen5418.
  ///
  /// In en, this message translates to:
  /// **'Fix the slowness problem caused by AMD Ryzen 2000~5000 series core display Edge and Chrome browser not turning off hardware acceleration (only applicable to AMD Ryzen series, mainly reducing the use of OpenGL rendering, normal use of QQ, Chrome browser. Using this driver may cause other applications to not work properly, make your own decision)'**
  String get autoGen5418;

  /// No description provided for @autoGen5419.
  ///
  /// In en, this message translates to:
  /// **'Battery reading repair, fix some battery display problems'**
  String get autoGen5419;

  /// No description provided for @autoGen5420.
  ///
  /// In en, this message translates to:
  /// **'Improved compatibility with non-Apple NVMe SSDs and reduced idle energy consumption'**
  String get autoGen5420;

  /// No description provided for @autoGen5421.
  ///
  /// In en, this message translates to:
  /// **'Incompatible blacklisted NVMe disks from Samsung and others cannot effectively fix the timeout crash problem'**
  String get autoGen5421;

  /// No description provided for @autoGen5422.
  ///
  /// In en, this message translates to:
  /// **'Using this driver with an NVMe SSD with good compatibility may cause a kernel crash, so use it with caution most of the time.'**
  String get autoGen5422;

  /// No description provided for @autoGen5423.
  ///
  /// In en, this message translates to:
  /// **'Enhance the ability to bypass or disable AMFI. Note: Adding this driver may cause some applications to fail to open or crash. At this time, you can try to remove the driver and only use disable AMFI startup parameters (such as amfi=0x80)'**
  String get autoGen5423;

  /// No description provided for @autoGen5424.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue where NVMe solid state drives were recognized as external disks'**
  String get autoGen5424;

  /// No description provided for @autoGen5425.
  ///
  /// In en, this message translates to:
  /// **'Unlock universal controls, navigation and other functions on unsupported Macs'**
  String get autoGen5425;

  /// No description provided for @autoGen5426.
  ///
  /// In en, this message translates to:
  /// **'Fix common hibernation and sleep related issues'**
  String get autoGen5426;

  /// No description provided for @autoGen5427.
  ///
  /// In en, this message translates to:
  /// **'Allow macOS to use the tethering feature of an Android device over a USB connection'**
  String get autoGen5427;

  /// No description provided for @autoGen5428.
  ///
  /// In en, this message translates to:
  /// **'CPU variable frequency driver, mainly provides MacPro7,1 frequency conversion support for 11th generation and above platforms'**
  String get autoGen5428;

  /// No description provided for @autoGen5429.
  ///
  /// In en, this message translates to:
  /// **'CPUFriend is equipped with a data driver to provide CPU frequency conversion data for specific models.'**
  String get autoGen5429;

  /// No description provided for @autoGen5430.
  ///
  /// In en, this message translates to:
  /// **'Optimize Intel 12th generation and later CPU size and core configurations'**
  String get autoGen5430;

  /// No description provided for @autoGen5431.
  ///
  /// In en, this message translates to:
  /// **'It can improve single-core performance, but may lead to a decrease in multi-core performance. It is only applicable to 12th generation and above platforms.'**
  String get autoGen5431;

  /// No description provided for @autoGen5432.
  ///
  /// In en, this message translates to:
  /// **'CPU TSC synchronization solution one, usually preferred'**
  String get autoGen5432;

  /// No description provided for @autoGen5433.
  ///
  /// In en, this message translates to:
  /// **'Commonly used in multi-core X79, X99, X299 and AMD platforms'**
  String get autoGen5433;

  /// No description provided for @autoGen5434.
  ///
  /// In en, this message translates to:
  /// **'Used to fix problems such as stuck operation, stuck boot logo, abnormal audio and video synchronization, failure to wake up from sleep, etc.'**
  String get autoGen5434;

  /// No description provided for @autoGen5435.
  ///
  /// In en, this message translates to:
  /// **'CPU TSC synchronization solution 2, usually used on AMD Ryzen and some Intel platforms'**
  String get autoGen5435;

  /// No description provided for @autoGen5436.
  ///
  /// In en, this message translates to:
  /// **'Used to fix problems such as operation lags, occasional crashes, audio and video synchronization abnormalities, sleep wake-up failures, etc.'**
  String get autoGen5436;

  /// No description provided for @autoGen5437.
  ///
  /// In en, this message translates to:
  /// **'Fix the multi-core clock synchronization problem of AMD Ryzen platform CPU (only applicable to AMD Ryzen series, used to fix problems such as operation lag, stuck boot logo, etc. Adding this driver may cause unexpected problems, choose carefully)'**
  String get autoGen5437;

  /// No description provided for @autoGen5438.
  ///
  /// In en, this message translates to:
  /// **'CPU TSC synchronization solution three, usually used on older Intel platforms and older macOS systems'**
  String get autoGen5438;

  /// No description provided for @autoGen5439.
  ///
  /// In en, this message translates to:
  /// **'Suitable for multi-core X79, X99, X299 and other platforms, used to fix problems such as operation lag and boot logo stuck'**
  String get autoGen5439;

  /// No description provided for @autoGen5440.
  ///
  /// In en, this message translates to:
  /// **'Fixed some Intel Core Display HDMI audio issues'**
  String get autoGen5440;

  /// No description provided for @autoGen5441.
  ///
  /// In en, this message translates to:
  /// **'Fix the problem of being unable to log in to Apple ID and iCloud, usually used for notebooks without local wired network cards'**
  String get autoGen5441;

  /// No description provided for @autoGen5442.
  ///
  /// In en, this message translates to:
  /// **'Fix conflicts between the new platform macOS AppleRTC and PC BIOS, such as RTC causing freezes, sudden restarts, or sudden wake-ups from hibernation.'**
  String get autoGen5442;

  /// No description provided for @autoGen5443.
  ///
  /// In en, this message translates to:
  /// **'PS interface type keyboard and mouse driver (desktop motherboard PS round port keyboard and mouse driver)'**
  String get autoGen5443;

  /// No description provided for @autoGen5444.
  ///
  /// In en, this message translates to:
  /// **'PS interface type keyboard driver (desktop motherboard PS round port keyboard driver)'**
  String get autoGen5444;

  /// No description provided for @autoGen5445.
  ///
  /// In en, this message translates to:
  /// **'PS interface type mouse driver (desktop motherboard PS round port mouse driver)'**
  String get autoGen5445;

  /// No description provided for @autoGen5446.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Surface dedicated keyboard touchpad driver'**
  String get autoGen5446;

  /// No description provided for @autoGen5447.
  ///
  /// In en, this message translates to:
  /// **'Brightness shortcut key fix'**
  String get autoGen5447;

  /// No description provided for @autoGen5448.
  ///
  /// In en, this message translates to:
  /// **'Optimize AMD Radeon graphics card performance, but certain scenarios may cause the system to crash or fail to start, so check carefully'**
  String get autoGen5448;

  /// No description provided for @autoGen5449.
  ///
  /// In en, this message translates to:
  /// **'Allow RadeonGadget.app to read AMD graphics card GPU temperature and other information'**
  String get autoGen5449;

  /// No description provided for @autoGen5450.
  ///
  /// In en, this message translates to:
  /// **'Export AMD GPU temperature and other information to VirtualSMC for monitoring tools to read'**
  String get autoGen5450;

  /// No description provided for @autoGen5451.
  ///
  /// In en, this message translates to:
  /// **'Fixed USB controller compatibility issues on older platforms such as AMD FM1/FM2/AM3'**
  String get autoGen5451;

  /// No description provided for @autoGen5452.
  ///
  /// In en, this message translates to:
  /// **'Universal USB injection solution, the default choice when USB is not customized'**
  String get autoGen5452;

  /// No description provided for @autoGen5453.
  ///
  /// In en, this message translates to:
  /// **'USBToolBox solution, usually used with customized UTBMap.kext'**
  String get autoGen5453;

  /// No description provided for @autoGen5454.
  ///
  /// In en, this message translates to:
  /// **'Fix the USB3.0 problem on Intel 3rd generation and later updated platforms (required for 300 series chipsets (H370, B360, H310, Z390 [not required for 10.14 and above systems], X79, X99, ASRock Intel motherboards [except B460/Z490+])'**
  String get autoGen5454;

  /// No description provided for @autoGen5455.
  ///
  /// In en, this message translates to:
  /// **'Fix EHCI USB2.0 compatibility issues on AMD FM1, FM2, AM3 and other old platforms'**
  String get autoGen5455;

  /// No description provided for @autoGen5456.
  ///
  /// In en, this message translates to:
  /// **'Fix XHCI USB3.0 compatibility issues on AMD FM1, FM2, AM3 and other old platforms'**
  String get autoGen5456;

  /// No description provided for @autoGen5457.
  ///
  /// In en, this message translates to:
  /// **'Fix CPU power management of Intel 3rd generation and older platforms Ventura 13 and above systems'**
  String get autoGen5457;

  /// No description provided for @autoGen5458.
  ///
  /// In en, this message translates to:
  /// **'Realtek series SD card reader driver (used with RealtekCardReaderFriend)'**
  String get autoGen5458;

  /// No description provided for @autoGen5459.
  ///
  /// In en, this message translates to:
  /// **'RealtekCardReader supporting driver to improve Realtek card reader compatibility'**
  String get autoGen5459;

  /// No description provided for @autoGen5460.
  ///
  /// In en, this message translates to:
  /// **'SDHC memory card device driver, supports eMMC and MMC memory cards'**
  String get autoGen5460;

  /// No description provided for @autoGen5461.
  ///
  /// In en, this message translates to:
  /// **'100M wired network card driver'**
  String get autoGen5461;

  /// No description provided for @autoGen5462.
  ///
  /// In en, this message translates to:
  /// **'Support RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139 network cards'**
  String get autoGen5462;

  /// No description provided for @autoGen5463.
  ///
  /// In en, this message translates to:
  /// **'Usually used for traditional old platforms'**
  String get autoGen5463;

  /// No description provided for @autoGen5464.
  ///
  /// In en, this message translates to:
  /// **'Gigabit network card driver'**
  String get autoGen5464;

  /// No description provided for @autoGen5465.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V and other network cards'**
  String get autoGen5465;

  /// No description provided for @autoGen5466.
  ///
  /// In en, this message translates to:
  /// **'Gigabit wired network card driver'**
  String get autoGen5466;

  /// No description provided for @autoGen5467.
  ///
  /// In en, this message translates to:
  /// **'Supports BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M and other network cards'**
  String get autoGen5467;

  /// No description provided for @autoGen5468.
  ///
  /// In en, this message translates to:
  /// **'Supports AR8131, AR8132, AR8151, AR8152 and other network cards'**
  String get autoGen5468;

  /// No description provided for @autoGen5469.
  ///
  /// In en, this message translates to:
  /// **'Supports Realtek RTL8111 / 8168 B / C / D / E / F / G / H, supports Killer E2500 and above network cards'**
  String get autoGen5469;

  /// No description provided for @autoGen5470.
  ///
  /// In en, this message translates to:
  /// **'RealtekRTL8111 new version driver may only support 10.13.x and above systems'**
  String get autoGen5470;

  /// No description provided for @autoGen5471.
  ///
  /// In en, this message translates to:
  /// **'Supports AR816x, AR817x, Killer E220x, Killer E2400 and other network cards'**
  String get autoGen5471;

  /// No description provided for @autoGen5472.
  ///
  /// In en, this message translates to:
  /// **'Gigabit (support 2.5G) wired network card driver'**
  String get autoGen5472;

  /// No description provided for @autoGen5473.
  ///
  /// In en, this message translates to:
  /// **'Supports all IGC-compliant devices (i225, i226, i226-V and other wired network cards). The PCI ID of some devices may not be in the IOPCIMatch list. Add it yourself for testing.'**
  String get autoGen5473;

  /// No description provided for @autoGen5474.
  ///
  /// In en, this message translates to:
  /// **'Compared with the AppleEthernetE1000 driver, it has better performance and stability (i226-V may cause kernel panic when using AppleEthernetE1000 in Monterey system)'**
  String get autoGen5474;

  /// No description provided for @autoGen5475.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 and i211 network cards'**
  String get autoGen5475;

  /// No description provided for @autoGen5476.
  ///
  /// In en, this message translates to:
  /// **'There may be instability issues, it is recommended to stay in the Big Sur version and use SmallTree'**
  String get autoGen5476;

  /// No description provided for @autoGen5477.
  ///
  /// In en, this message translates to:
  /// **'Typically applicable to macOS Monterey 12 and above systems'**
  String get autoGen5477;

  /// No description provided for @autoGen5478.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 5 Series: 82578LM, 82578LC, 82578DM, 82578DC'**
  String get autoGen5478;

  /// No description provided for @autoGen5479.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 6 and 7 Series: 82579LM, 82579V'**
  String get autoGen5479;

  /// No description provided for @autoGen5480.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 8 and 9 Series: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3'**
  String get autoGen5480;

  /// No description provided for @autoGen5481.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 100 Series: I219V, I219LM, I219V2, I219LM2, I219LM3'**
  String get autoGen5481;

  /// No description provided for @autoGen5482.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 200 Series: I219LM, I219V'**
  String get autoGen5482;

  /// No description provided for @autoGen5483.
  ///
  /// In en, this message translates to:
  /// **'Support Intel 300 Series: I219LM, I219V'**
  String get autoGen5483;

  /// No description provided for @autoGen5484.
  ///
  /// In en, this message translates to:
  /// **'The driver is maintained by acidanthera. OS X 10.6 ~ 10.8 uses IntelSnowMausi'**
  String get autoGen5484;

  /// No description provided for @autoGen5485.
  ///
  /// In en, this message translates to:
  /// **'This driver is provided by Laura Müller. OS X 10.6 ~ 10.8 uses IntelSnowMausi'**
  String get autoGen5485;

  /// No description provided for @autoGen5486.
  ///
  /// In en, this message translates to:
  /// **'RTL8125 old driver, supports Realtek RTL8125 series Ethernet cards'**
  String get autoGen5486;

  /// No description provided for @autoGen5487.
  ///
  /// In en, this message translates to:
  /// **'Gigabit (supports 2.5G, 5G) wired network card driver'**
  String get autoGen5487;

  /// No description provided for @autoGen5488.
  ///
  /// In en, this message translates to:
  /// **'New driver for RTL812x, supports Realtek RTL8125, RTL8126 series Ethernet cards'**
  String get autoGen5488;

  /// No description provided for @autoGen5489.
  ///
  /// In en, this message translates to:
  /// **'Supported models: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A'**
  String get autoGen5489;

  /// No description provided for @autoGen5490.
  ///
  /// In en, this message translates to:
  /// **'Supports Intel i211 wired network card, this model is common on AMD motherboards'**
  String get autoGen5490;

  /// No description provided for @autoGen5491.
  ///
  /// In en, this message translates to:
  /// **'Generally applicable to macOS Big Sur and below, macOS Monterey may be unstable'**
  String get autoGen5491;

  /// No description provided for @autoGen5492.
  ///
  /// In en, this message translates to:
  /// **'Compatibility: OS'**
  String get autoGen5492;

  /// No description provided for @autoGen5493.
  ///
  /// In en, this message translates to:
  /// **'10G (support 10G) wired network card driver'**
  String get autoGen5493;

  /// No description provided for @autoGen5494.
  ///
  /// In en, this message translates to:
  /// **'Supports Intel X520,'**
  String get autoGen5494;

  /// No description provided for @autoGen5495.
  ///
  /// In en, this message translates to:
  /// **'Only supports macOS 10.13 and above systems'**
  String get autoGen5495;

  /// No description provided for @autoGen5496.
  ///
  /// In en, this message translates to:
  /// **'It is recommended to turn off WoL in BIOS UEFI settings'**
  String get autoGen5496;

  /// No description provided for @autoGen5497.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue where disk utility does not recognize SATA disks during installation of Catalina 10.15 and below systems'**
  String get autoGen5497;

  /// No description provided for @autoGen5498.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue where Disk Utility does not recognize SATA disks during the installation process of Big Sur 11 and above systems'**
  String get autoGen5498;

  /// No description provided for @autoGen5499.
  ///
  /// In en, this message translates to:
  /// **'Fix compatibility issues related to AMD platform Adobe Family Bucket'**
  String get autoGen5499;

  /// No description provided for @autoGen5500.
  ///
  /// In en, this message translates to:
  /// **'Supports macOS High Sierra 10.13 ~ macOS Tathoe 26.x (usually used with HeliPort client)'**
  String get autoGen5500;

  /// No description provided for @autoGen5501.
  ///
  /// In en, this message translates to:
  /// **'macOS Sequoia 15.x (Note: The Sequoia 15 system needs to be patched with the OCLP Intel-specific modified version before it can be used normally!!!)'**
  String get autoGen5501;

  /// No description provided for @autoGen5502.
  ///
  /// In en, this message translates to:
  /// **'macOS Sonoma 14.4 and above'**
  String get autoGen5502;

  /// No description provided for @autoGen5503.
  ///
  /// In en, this message translates to:
  /// **'Mainly fixes some Bluetooth device problems (applicable to some Broadcom and other USB Bluetooth devices)'**
  String get autoGen5503;

  /// No description provided for @autoGen5504.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm WiFi, supports macOS Big Sur 11.x and below'**
  String get autoGen5504;

  /// No description provided for @autoGen5505.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros)-AR9285'**
  String get autoGen5505;

  /// No description provided for @autoGen5506.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros)-AR9380'**
  String get autoGen5506;

  /// No description provided for @autoGen5507.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros)-AR9485'**
  String get autoGen5507;

  /// No description provided for @autoGen5508.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros)-AR9565'**
  String get autoGen5508;

  /// No description provided for @autoGen5509.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros)-AR9463'**
  String get autoGen5509;

  /// No description provided for @autoGen5510.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros)-AR9462'**
  String get autoGen5510;

  /// No description provided for @autoGen5511.
  ///
  /// In en, this message translates to:
  /// **'Disable Touch ID to reduce system resource waste and improve stability'**
  String get autoGen5511;

  /// No description provided for @autoGen5512.
  ///
  /// In en, this message translates to:
  /// **'Usually suitable for notebooks with fingerprint recognition and below macOS Big Sur 11'**
  String get autoGen5512;

  /// No description provided for @autoGen5513.
  ///
  /// In en, this message translates to:
  /// **'The TRIM policy is configured by default (that is, SetApfsTrimTimeout = -1)'**
  String get autoGen5513;

  /// No description provided for @autoGen5514.
  ///
  /// In en, this message translates to:
  /// **'1. The APFS system performs TRIM operations based on the default TRIM timeout of macOS, which is applicable to most SSDs that support TRIM.'**
  String get autoGen5514;

  /// No description provided for @autoGen5515.
  ///
  /// In en, this message translates to:
  /// **'2. On SSDs that support TRIM, macOS automatically manages the execution of TRIM, which helps clean up deleted data blocks, making SSD writing more efficient, avoiding frequent write amplification, and improving writing speed.'**
  String get autoGen5515;

  /// No description provided for @autoGen5516.
  ///
  /// In en, this message translates to:
  /// **'3.TRIM will regularly clean up unused blocks to reduce SSD wear and tear, thus extending SSD service life.'**
  String get autoGen5516;

  /// No description provided for @autoGen5517.
  ///
  /// In en, this message translates to:
  /// **'4. Some third-party SSDs that do not fully support TRIM may experience delays or even freezes when executing TRIM, causing the boot process to become very slow.'**
  String get autoGen5517;

  /// No description provided for @autoGen5518.
  ///
  /// In en, this message translates to:
  /// **'Completely disable TRIM functionality (i.e. set SetApfsTrimTimeout = 0)'**
  String get autoGen5518;

  /// No description provided for @autoGen5519.
  ///
  /// In en, this message translates to:
  /// **'Benefits of disabling TRIM:'**
  String get autoGen5519;

  /// No description provided for @autoGen5520.
  ///
  /// In en, this message translates to:
  /// **'1. Improve boot speed. For third-party SSDs that do not support or partially support TRIM, macOS may cause delays due to trying TRIM operations during startup. Disabling TRIM can eliminate this delay and improve boot speed.'**
  String get autoGen5520;

  /// No description provided for @autoGen5521.
  ///
  /// In en, this message translates to:
  /// **'2. Improve compatibility. Some SSDs with poor compatibility can reduce the risk of abnormal crashes.'**
  String get autoGen5521;

  /// No description provided for @autoGen5522.
  ///
  /// In en, this message translates to:
  /// **'3. Extend the life of non-TRIM SSDs. On SSDs that do not support TRIM, forcibly enabling TRIM may accelerate wear and affect life. Disabling TRIM can extend the life of such SSDs.'**
  String get autoGen5522;

  /// No description provided for @autoGen5523.
  ///
  /// In en, this message translates to:
  /// **'Disadvantages of disabling TRIM:'**
  String get autoGen5523;

  /// No description provided for @autoGen5524.
  ///
  /// In en, this message translates to:
  /// **'1. SSD performance declines. Some SSDs do not have the TRIM garbage collection mechanism. The SSD cannot clean and mark free blocks in time after deleting data, which may cause the writing speed to slow down.'**
  String get autoGen5524;

  /// No description provided for @autoGen5525.
  ///
  /// In en, this message translates to:
  /// **'2. Disk space management efficiency is reduced. After disabling it, the SSD controller requires more time and resources for garbage collection, which may lead to increased fragmentation and reduced space management efficiency.'**
  String get autoGen5525;

  /// No description provided for @autoGen5526.
  ///
  /// In en, this message translates to:
  /// **'3. Shorten the life of the SSD. For SSDs that support TRIM, after disabling TRIM, the SSD cannot optimize the writing process, which will increase the wear of the storage blocks, thus shortening the life of the SSD that supports TRIM.'**
  String get autoGen5526;

  /// No description provided for @autoGen5527.
  ///
  /// In en, this message translates to:
  /// **'Although disabling TRIM can bring some boot speed improvements, for modern SSDs that support TRIM, it is recommended to keep TRIM turned on for long-term performance and stability. This speed increase is usually small and will only have a significant effect on some incompatible SSDs.'**
  String get autoGen5527;

  /// No description provided for @autoGen5528.
  ///
  /// In en, this message translates to:
  /// **'CPU variable frequency driver, here mainly provides 11th to 14th generation MacPro7,1 variable frequency support'**
  String get autoGen5528;

  /// No description provided for @autoGen5529.
  ///
  /// In en, this message translates to:
  /// **'Realtek SD card reader and its supporting driver'**
  String get autoGen5529;

  /// No description provided for @autoGen5530.
  ///
  /// In en, this message translates to:
  /// **'Suitable for 3rd generation and below old platforms, input devices connected based on PS/2 bus protocol, such as keyboard, mouse, touchpad, etc. It can realize a certain degree of multi-touch function, but the support is limited.'**
  String get autoGen5530;

  /// No description provided for @autoGen5531.
  ///
  /// In en, this message translates to:
  /// **'Suitable for 3rd generation and above platforms, input devices connected based on PS/2 bus protocol, such as keyboard, mouse, touchpad, etc. Provide support for PS/2 touchpad through sub-driver, and can achieve a certain degree of multi-touch function, but the support is limited.'**
  String get autoGen5531;

  /// No description provided for @autoGen5532.
  ///
  /// In en, this message translates to:
  /// **'PS2 keyboard is suitable for touchpads, touch screens, sensors and other input devices connected based on I2C bus protocol. Provides multi-touch gesture support to simulate the native touch experience of macOS.'**
  String get autoGen5532;

  /// No description provided for @autoGen5533.
  ///
  /// In en, this message translates to:
  /// **'PS2 keyboard, suitable for Synaptics touchpad connected based on RMI4 protocol bus protocol. Focus on better supporting Synaptics devices, providing multi-touch and gesture capabilities similar to macOS\'\'s native touchpad.'**
  String get autoGen5533;

  /// No description provided for @autoGen5534.
  ///
  /// In en, this message translates to:
  /// **'PS2 keyboard, suitable for I2C bus-based touch devices and Synaptics touchpads using RMI4 protocol. RMII2C combines the advantages of VoodooI2C and VoodooRMI.'**
  String get autoGen5534;

  /// No description provided for @autoGen5535.
  ///
  /// In en, this message translates to:
  /// **'Round keyboard and mouse driver based on PS/2 bus protocol connection'**
  String get autoGen5535;

  /// No description provided for @autoGen5536.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Surface dedicated keyboard, touchpad, and touch screen driver combination.'**
  String get autoGen5536;

  /// No description provided for @autoGen5537.
  ///
  /// In en, this message translates to:
  /// **'Broadcom BCM94360 driver-free series'**
  String get autoGen5537;

  /// No description provided for @autoGen5538.
  ///
  /// In en, this message translates to:
  /// **'Apple AirPort and Fenvi driver-free cards, Ventura and below are driver-free, and the patch supports Sonoma 14 and Sequoia 15! Note: Sonoma 14 and above systems need to be patched with OCLP before they can be used normally! ! !'**
  String get autoGen5538;

  /// No description provided for @autoGen5539.
  ///
  /// In en, this message translates to:
  /// **'Broadcom BCM943XX non-driver-free series'**
  String get autoGen5539;

  /// No description provided for @autoGen5540.
  ///
  /// In en, this message translates to:
  /// **'Cards other than Apple AirPort and Fenvi, Catalina and below are driver-free, and the patch supports Sonoma 14 and Sequoia 15! Note: Sonoma 14 and above systems need to be patched with OCLP before they can be used normally! ! !'**
  String get autoGen5540;

  /// No description provided for @autoGen5541.
  ///
  /// In en, this message translates to:
  /// **'Old Broadcom BCM4331'**
  String get autoGen5541;

  /// No description provided for @autoGen5542.
  ///
  /// In en, this message translates to:
  /// **'Note that Monterey 12 or above systems need to use the OCLP patch before they can be used normally! ! !'**
  String get autoGen5542;

  /// No description provided for @autoGen5543.
  ///
  /// In en, this message translates to:
  /// **'Old Broadcom BCM43224'**
  String get autoGen5543;

  /// No description provided for @autoGen5544.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros) WiFi model driver'**
  String get autoGen5544;

  /// No description provided for @autoGen5545.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm WiFi manual option'**
  String get autoGen5545;

  /// No description provided for @autoGen5546.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros) WiFi Big Sur and following dependencies'**
  String get autoGen5546;

  /// No description provided for @autoGen5547.
  ///
  /// In en, this message translates to:
  /// **'macOS Big Sur 11 and below systems use HS80211Family to match specific model drivers'**
  String get autoGen5547;

  /// No description provided for @autoGen5548.
  ///
  /// In en, this message translates to:
  /// **'Qualcomm (Atheros) WiFi Monterey and above dependencies'**
  String get autoGen5548;

  /// No description provided for @autoGen5549.
  ///
  /// In en, this message translates to:
  /// **'macOS Monterey 12 and above systems use IO80211ElCap combination'**
  String get autoGen5549;

  /// No description provided for @autoGen5550.
  ///
  /// In en, this message translates to:
  /// **'Fixed battery recognition issue in \"System Preferences\" for Surface Pro 7 and Book 3 series'**
  String get autoGen5550;

  /// No description provided for @autoGen5551.
  ///
  /// In en, this message translates to:
  /// **'Fixed the problem of POST error when starting the real-time clock of some HP brand computers.'**
  String get autoGen5551;

  /// No description provided for @autoGen5552.
  ///
  /// In en, this message translates to:
  /// **'Disable RTC wake-up plan and fix the problem of automatic wake-up after sleep'**
  String get autoGen5552;

  /// No description provided for @autoGen5553.
  ///
  /// In en, this message translates to:
  /// **'Generation 0-Penryn-775 platform'**
  String get autoGen5553;

  /// No description provided for @autoGen5554.
  ///
  /// In en, this message translates to:
  /// **'Generation 1-Lynnfield-1156 platform'**
  String get autoGen5554;

  /// No description provided for @autoGen5555.
  ///
  /// In en, this message translates to:
  /// **'2nd generation-Sandy Bridge-1155 platform'**
  String get autoGen5555;

  /// No description provided for @autoGen5556.
  ///
  /// In en, this message translates to:
  /// **'3rd generation-Ivy Bridge-1155 platform'**
  String get autoGen5556;

  /// No description provided for @autoGen5557.
  ///
  /// In en, this message translates to:
  /// **'4th generation-Haswell-1150 platform'**
  String get autoGen5557;

  /// No description provided for @autoGen5558.
  ///
  /// In en, this message translates to:
  /// **'5th generation-Broadwell-1150 platform'**
  String get autoGen5558;

  /// No description provided for @autoGen5559.
  ///
  /// In en, this message translates to:
  /// **'6th generation-Skylake-1151 platform'**
  String get autoGen5559;

  /// No description provided for @autoGen5560.
  ///
  /// In en, this message translates to:
  /// **'7th Generation-Kaby Lake-1151 Platform'**
  String get autoGen5560;

  /// No description provided for @autoGen5561.
  ///
  /// In en, this message translates to:
  /// **'8th generation-Coffee Lake-1151 platform'**
  String get autoGen5561;

  /// No description provided for @autoGen5562.
  ///
  /// In en, this message translates to:
  /// **'9th generation-Coffee Lake-1151 platform'**
  String get autoGen5562;

  /// No description provided for @autoGen5563.
  ///
  /// In en, this message translates to:
  /// **'10th Generation-Comet Lake-1200 Platform'**
  String get autoGen5563;

  /// No description provided for @autoGen5564.
  ///
  /// In en, this message translates to:
  /// **'11th Generation-Rocket Lake-1200 Platform'**
  String get autoGen5564;

  /// No description provided for @autoGen5565.
  ///
  /// In en, this message translates to:
  /// **'12th generation-Alder Lake-1700 platform'**
  String get autoGen5565;

  /// No description provided for @autoGen5566.
  ///
  /// In en, this message translates to:
  /// **'13th generation-Raptor Lake-1700 platform'**
  String get autoGen5566;

  /// No description provided for @autoGen5567.
  ///
  /// In en, this message translates to:
  /// **'14th generation-Raptor Lake Refresh-1700 platform'**
  String get autoGen5567;

  /// No description provided for @autoGen5568.
  ///
  /// In en, this message translates to:
  /// **'15th Generation-Arrow Lake-1851 Platform'**
  String get autoGen5568;

  /// No description provided for @autoGen5569.
  ///
  /// In en, this message translates to:
  /// **'Generation 0-Penryn-Notebook'**
  String get autoGen5569;

  /// No description provided for @autoGen5570.
  ///
  /// In en, this message translates to:
  /// **'1st Generation-Clarksfield&Arrandale-Notebook'**
  String get autoGen5570;

  /// No description provided for @autoGen5571.
  ///
  /// In en, this message translates to:
  /// **'2nd generation-Sandy Bridge-notebook'**
  String get autoGen5571;

  /// No description provided for @autoGen5572.
  ///
  /// In en, this message translates to:
  /// **'3rd generation-Ivy Bridge-notebook'**
  String get autoGen5572;

  /// No description provided for @autoGen5573.
  ///
  /// In en, this message translates to:
  /// **'4th Generation-Haswell-Laptop'**
  String get autoGen5573;

  /// No description provided for @autoGen5574.
  ///
  /// In en, this message translates to:
  /// **'5th generation-Broadwell-notebook'**
  String get autoGen5574;

  /// No description provided for @autoGen5575.
  ///
  /// In en, this message translates to:
  /// **'6th generation-Skylake-notebook'**
  String get autoGen5575;

  /// No description provided for @autoGen5576.
  ///
  /// In en, this message translates to:
  /// **'7th generation-Kaby Lake-notebook'**
  String get autoGen5576;

  /// No description provided for @autoGen5577.
  ///
  /// In en, this message translates to:
  /// **'8th Generation-Coffee Lake-Notebook'**
  String get autoGen5577;

  /// No description provided for @autoGen5578.
  ///
  /// In en, this message translates to:
  /// **'9th Generation-Coffee Lake-Notebook'**
  String get autoGen5578;

  /// No description provided for @autoGen5579.
  ///
  /// In en, this message translates to:
  /// **'10th Generation-Comet Lake-Laptop'**
  String get autoGen5579;

  /// No description provided for @autoGen5580.
  ///
  /// In en, this message translates to:
  /// **'10th Generation-Ice Lake-Laptop'**
  String get autoGen5580;

  /// No description provided for @autoGen5581.
  ///
  /// In en, this message translates to:
  /// **'11th generation-Tiger Lake-notebook'**
  String get autoGen5581;

  /// No description provided for @autoGen5582.
  ///
  /// In en, this message translates to:
  /// **'12th generation-Alder Lake-notebook'**
  String get autoGen5582;

  /// No description provided for @autoGen5583.
  ///
  /// In en, this message translates to:
  /// **'13th generation-Raptor Lake-notebook'**
  String get autoGen5583;

  /// No description provided for @autoGen5584.
  ///
  /// In en, this message translates to:
  /// **'14th generation-Raptor Lake Refresh-notebook'**
  String get autoGen5584;

  /// No description provided for @autoGen5585.
  ///
  /// In en, this message translates to:
  /// **'Generation 0-Penryn-mini host'**
  String get autoGen5585;

  /// No description provided for @autoGen5586.
  ///
  /// In en, this message translates to:
  /// **'1st generation-Clarksfield&Arrandale-mini host'**
  String get autoGen5586;

  /// No description provided for @autoGen5587.
  ///
  /// In en, this message translates to:
  /// **'2nd generation-Sandy Bridge-mini host'**
  String get autoGen5587;

  /// No description provided for @autoGen5588.
  ///
  /// In en, this message translates to:
  /// **'3rd generation-Ivy Bridge-mini host'**
  String get autoGen5588;

  /// No description provided for @autoGen5589.
  ///
  /// In en, this message translates to:
  /// **'4th generation-Haswell-mini host'**
  String get autoGen5589;

  /// No description provided for @autoGen5590.
  ///
  /// In en, this message translates to:
  /// **'5th generation-Broadwell-mini host'**
  String get autoGen5590;

  /// No description provided for @autoGen5591.
  ///
  /// In en, this message translates to:
  /// **'6th generation-Skylake-mini host'**
  String get autoGen5591;

  /// No description provided for @autoGen5592.
  ///
  /// In en, this message translates to:
  /// **'7th generation-Kaby Lake-mini host'**
  String get autoGen5592;

  /// No description provided for @autoGen5593.
  ///
  /// In en, this message translates to:
  /// **'8th generation-Coffee Lake-mini host'**
  String get autoGen5593;

  /// No description provided for @autoGen5594.
  ///
  /// In en, this message translates to:
  /// **'9th generation-Coffee Lake-mini host'**
  String get autoGen5594;

  /// No description provided for @autoGen5595.
  ///
  /// In en, this message translates to:
  /// **'10th generation-Comet Lake-mini host'**
  String get autoGen5595;

  /// No description provided for @autoGen5596.
  ///
  /// In en, this message translates to:
  /// **'10th generation-Ice Lake-mini host'**
  String get autoGen5596;

  /// No description provided for @autoGen5597.
  ///
  /// In en, this message translates to:
  /// **'11th generation-Tiger Lake-mini host'**
  String get autoGen5597;

  /// No description provided for @autoGen5598.
  ///
  /// In en, this message translates to:
  /// **'12th generation-Alder Lake-mini host'**
  String get autoGen5598;

  /// No description provided for @autoGen5599.
  ///
  /// In en, this message translates to:
  /// **'13th generation-Raptor Lake-mini host'**
  String get autoGen5599;

  /// No description provided for @autoGen5600.
  ///
  /// In en, this message translates to:
  /// **'14th generation-Raptor Lake Refresh-mini host'**
  String get autoGen5600;

  /// No description provided for @autoGen5601.
  ///
  /// In en, this message translates to:
  /// **'Generation 1-Nehalem&Westmere-X58 platform'**
  String get autoGen5601;

  /// No description provided for @autoGen5602.
  ///
  /// In en, this message translates to:
  /// **'2nd generation-Sandy Bridge-E-X79 platform'**
  String get autoGen5602;

  /// No description provided for @autoGen5603.
  ///
  /// In en, this message translates to:
  /// **'3rd generation-Ivy Bridge-E-X79 platform'**
  String get autoGen5603;

  /// No description provided for @autoGen5604.
  ///
  /// In en, this message translates to:
  /// **'4th generation-Haswell-E-X99 platform'**
  String get autoGen5604;

  /// No description provided for @autoGen5605.
  ///
  /// In en, this message translates to:
  /// **'5th generation-Broadwell-E-X99 platform'**
  String get autoGen5605;

  /// No description provided for @autoGen5606.
  ///
  /// In en, this message translates to:
  /// **'6th generation-Skylake-X&W-X299 platform'**
  String get autoGen5606;

  /// No description provided for @autoGen5607.
  ///
  /// In en, this message translates to:
  /// **'10th Generation-Cascade Lake-X&W Platform'**
  String get autoGen5607;

  /// No description provided for @autoGen5608.
  ///
  /// In en, this message translates to:
  /// **'Bulldozer(15h) and Jaguar(16h)-Notebook'**
  String get autoGen5608;

  /// No description provided for @autoGen5609.
  ///
  /// In en, this message translates to:
  /// **'Ryzen-notebook'**
  String get autoGen5609;

  /// No description provided for @autoGen5610.
  ///
  /// In en, this message translates to:
  /// **'Bulldozer(15h) and Jaguar(16h)-mini host'**
  String get autoGen5610;

  /// No description provided for @autoGen5611.
  ///
  /// In en, this message translates to:
  /// **'Ryzen-mini host'**
  String get autoGen5611;

  /// No description provided for @autoGen5612.
  ///
  /// In en, this message translates to:
  /// **'Ryzen and Threadripper(17h and 19h)-Server'**
  String get autoGen5612;

  /// No description provided for @autoGen5613.
  ///
  /// In en, this message translates to:
  /// **'test'**
  String get autoGen5613;

  /// No description provided for @autoGen5614.
  ///
  /// In en, this message translates to:
  /// **'nvram test'**
  String get autoGen5614;

  /// No description provided for @autoGen5615.
  ///
  /// In en, this message translates to:
  /// **'Unable to get home directory'**
  String get autoGen5615;

  /// No description provided for @autoGen5616.
  ///
  /// In en, this message translates to:
  /// **'Source directory does not exist'**
  String get autoGen5616;

  /// No description provided for @autoGen5617.
  ///
  /// In en, this message translates to:
  /// **'Unable to get desktop directory'**
  String get autoGen5617;

  /// No description provided for @autoGen5618.
  ///
  /// In en, this message translates to:
  /// **'Path check fails and returns empty path'**
  String get autoGen5618;

  /// No description provided for @autoGen5619.
  ///
  /// In en, this message translates to:
  /// **'Failed to obtain plist file information and the returned result was incomplete.'**
  String get autoGen5619;

  /// No description provided for @autoGen5620.
  ///
  /// In en, this message translates to:
  /// **'NOTE: NormalizeHeaders is enabled and the table ID contains non-printable characters!'**
  String get autoGen5620;

  /// No description provided for @autoGen5621.
  ///
  /// In en, this message translates to:
  /// **'Note: NormalizeHeaders is not enabled and the table ID contains the \'\'?\'\' character!'**
  String get autoGen5621;

  /// No description provided for @autoGen5622.
  ///
  /// In en, this message translates to:
  /// **'No target config.plist file selected!'**
  String get autoGen5622;

  /// No description provided for @autoGen5623.
  ///
  /// In en, this message translates to:
  /// **'=> Unable to determine config.plist type!'**
  String get autoGen5623;

  /// No description provided for @autoGen5624.
  ///
  /// In en, this message translates to:
  /// **'=> SSDT table not found! jump over...'**
  String get autoGen5624;

  /// No description provided for @autoGen5625.
  ///
  /// In en, this message translates to:
  /// **'=> Duplicate SSDT table not found!'**
  String get autoGen5625;

  /// No description provided for @autoGen5626.
  ///
  /// In en, this message translates to:
  /// **'=> Patch not found! jump over...'**
  String get autoGen5626;

  /// No description provided for @autoGen5627.
  ///
  /// In en, this message translates to:
  /// **'=> Duplicate Patch not found!'**
  String get autoGen5627;

  /// No description provided for @autoGen5628.
  ///
  /// In en, this message translates to:
  /// **'=> Drop patch not found! jump over...'**
  String get autoGen5628;

  /// No description provided for @autoGen5629.
  ///
  /// In en, this message translates to:
  /// **'=> Duplicate Drop patch not found!'**
  String get autoGen5629;

  /// No description provided for @autoGen5630.
  ///
  /// In en, this message translates to:
  /// **'=> No Quirks configuration found that needs to be updated! jump over...'**
  String get autoGen5630;

  /// No description provided for @autoGen5631.
  ///
  /// In en, this message translates to:
  /// **'=> Checking target Quirks configuration...'**
  String get autoGen5631;

  /// No description provided for @autoGen5632.
  ///
  /// In en, this message translates to:
  /// **'Backing up current config configuration file...'**
  String get autoGen5632;

  /// No description provided for @autoGen5633.
  ///
  /// In en, this message translates to:
  /// **'Preparing to copy SSDT files...'**
  String get autoGen5633;

  /// No description provided for @autoGen5634.
  ///
  /// In en, this message translates to:
  /// **'Configuration saved successfully!'**
  String get autoGen5634;

  /// No description provided for @autoGen5635.
  ///
  /// In en, this message translates to:
  /// **'The merge is complete!'**
  String get autoGen5635;

  /// No description provided for @autoGen5636.
  ///
  /// In en, this message translates to:
  /// **'Merge failed!'**
  String get autoGen5636;

  /// No description provided for @autoGen5637.
  ///
  /// In en, this message translates to:
  /// **'Note: Potential errors are found during the merge process, please check and fix them!'**
  String get autoGen5637;

  /// No description provided for @autoGen5638.
  ///
  /// In en, this message translates to:
  /// **'Note: The current configuration is not set up to override the target EFI mode!'**
  String get autoGen5638;

  /// No description provided for @autoGen5639.
  ///
  /// In en, this message translates to:
  /// **'You need to do the following manually:'**
  String get autoGen5639;

  /// No description provided for @autoGen5640.
  ///
  /// In en, this message translates to:
  /// **'Root dictionary element not found'**
  String get autoGen5640;

  /// No description provided for @autoGen5641.
  ///
  /// In en, this message translates to:
  /// **'Eliminate IRQ conflicts, often used for sound card repairs'**
  String get autoGen5641;

  /// No description provided for @autoGen5642.
  ///
  /// In en, this message translates to:
  /// **'• HPET (High Precision Event Timer) is a hardware module used for system timing.\n• Under macOS, some motherboard HPET devices may cause IRQ (interrupt request) conflicts, which will affect the normal operation of the audio device, causing the system to be unstable or even unable to start.\n• This patch adjusts HPET-related ACPI device definitions to avoid IRQ conflicts, ensure that macOS can correctly use HPET timers, fix sound card issues, and improve system stability.'**
  String get autoGen5642;

  /// No description provided for @autoGen5643.
  ///
  /// In en, this message translates to:
  /// **'Counterfeit EC and inject USB power attributes (applicable to Intel 6th generation and above desktop computers)'**
  String get autoGen5643;

  /// No description provided for @autoGen5644.
  ///
  /// In en, this message translates to:
  /// **'• Applicable to Intel 6th generation and above desktop computers\n• This patch will disable the system\'\'s original EC device and then create a virtual EC device to \"trick\" macOS into thinking that a compatible EC exists, thus solving startup problems caused by missing EC devices. \n• Added necessary USB power properties to fix potential issues. Equivalent to merge: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml'**
  String get autoGen5644;

  /// No description provided for @autoGen5645.
  ///
  /// In en, this message translates to:
  /// **'Only counterfeits EC, does not affect existing EC, and injects USB power attributes at the same time (applicable to Intel 6th generation and above notebooks)'**
  String get autoGen5645;

  /// No description provided for @autoGen5646.
  ///
  /// In en, this message translates to:
  /// **'• Applicable to Intel 6th generation and above notebooks\n• Suitable for notebooks, it does not delete or modify the existing EC, but creates a new virtual EC separately to avoid damaging the original EC device and preventing functional abnormalities such as notebook power management and keyboard backlight.\n• Added necessary USB power properties to fix potential issues. Equivalent to merge: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml'**
  String get autoGen5646;

  /// No description provided for @autoGen5647.
  ///
  /// In en, this message translates to:
  /// **'Counterfeit EC (applicable to Intel 5th generation and below desktop computers)'**
  String get autoGen5647;

  /// No description provided for @autoGen5648.
  ///
  /// In en, this message translates to:
  /// **'• Suitable for Intel 5th generation and below desktops\n• This patch will disable the system\'\'s original EC device and then create a virtual EC device to \"trick\" macOS into thinking that a compatible EC exists, thus solving startup problems caused by missing EC devices.'**
  String get autoGen5648;

  /// No description provided for @autoGen5649.
  ///
  /// In en, this message translates to:
  /// **'Only counterfeit EC, does not affect existing EC (applicable to Intel 5th generation and below notebooks)'**
  String get autoGen5649;

  /// No description provided for @autoGen5650.
  ///
  /// In en, this message translates to:
  /// **'• Applicable to Intel 5th generation and below notebooks\n• It does not delete or modify the existing EC, but creates a new virtual EC separately to avoid damaging the original EC device and preventing functional abnormalities such as notebook power management and keyboard backlight.'**
  String get autoGen5650;

  /// No description provided for @autoGen5651.
  ///
  /// In en, this message translates to:
  /// **'USB power attribute correction (applicable to Intel 6th generation and newer platforms)'**
  String get autoGen5651;

  /// No description provided for @autoGen5652.
  ///
  /// In en, this message translates to:
  /// **'• Applicable to Intel Skylake 6th generation and above, server Haswell-E 4th generation and above, AMD Ryzen and other platforms\n• Starting with Intel Skylake and newer processors, macOS requires specific USB power properties to ensure that USB devices are properly powered and recognized.\n• This patch corrects the power management of USB ports to comply with macOS requirements and solves problems such as abnormal USB device recognition, insufficient power supply, and inability to hot-plug.\n• For notebooks: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml The combination of the two is equivalent to SSDT-EC-USBX-LAPTOP.aml\n• For desktop: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml The combination of the two is equivalent to SSDT-EC-USBX-DESKTOP.aml'**
  String get autoGen5652;

  /// No description provided for @autoGen5653.
  ///
  /// In en, this message translates to:
  /// **'CPU core identification, enabling frequency adjustment and energy saving correction'**
  String get autoGen5653;

  /// No description provided for @autoGen5654.
  ///
  /// In en, this message translates to:
  /// **'• SSDT-PLUG is suitable for Intel Haswell 4th generation ~ 11th generation, server Haswell-E 4th generation and above platforms (when customizing SSDT-PLUG, the tool automatically detects and generates it!)\n• SSDT-PLUG-ALT is suitable for Intel Alder Lake 12th generation and above, and AMD Ryzen platform (when customizing SSDT-PLUG, the tool automatically detects and generates it and renames it to SSDT-PLUG-ALT!)\n• macOS relies on the CPU power management plug-in (PluginType) to adjust the CPU frequency and improve energy efficiency and battery life.\n• This patch will modify the CPU definition so that macOS thinks it is a plugin-type = 1 processor required by Apple devices, thereby correctly loading CPU frequency management and improving performance and power consumption control.'**
  String get autoGen5654;

  /// No description provided for @autoGen5655.
  ///
  /// In en, this message translates to:
  /// **'Enable NVRAM support (usually for Intel native 300 series motherboards)'**
  String get autoGen5655;

  /// No description provided for @autoGen5656.
  ///
  /// In en, this message translates to:
  /// **'• Applicable to Intel Coffee Lake 8th generation ~ 9th generation platforms\n• Native 300 series motherboards (such as Z370, B360) may not use NVRAM correctly under macOS, causing some functions (such as iMessage, volume memory, boot parameters, etc.) to not be saved.\n• This patch enables the motherboard\'\'s PMC (Power Management Controller), allowing macOS to use native NVRAM normally without the need for an additional EmuVariableUEFI driver.'**
  String get autoGen5656;

  /// No description provided for @autoGen5657.
  ///
  /// In en, this message translates to:
  /// **'Add PNLF device for backlight support (notebooks and all-in-ones only)'**
  String get autoGen5657;

  /// No description provided for @autoGen5658.
  ///
  /// In en, this message translates to:
  /// **'• macOS requires a PNLF device (Panel Brightness) to correctly control notebook screen brightness.\n• This patch will create a PNLF device in ACPI, allowing macOS to adjust screen brightness and display brightness control options in System Preferences.\n• Suitable for notebooks and some all-in-one computers to solve the problem of unavailable brightness adjustment.\n• UID = 14, applicable to: Intel 1st generation Arrandale, 2nd generation Sandy Bridge, 3rd generation Ivy Bridge\n  Note: Some machines using UID: 14 will encounter limited maximum brightness or other problems. In order to solve these problems, the correct device path of the iGPU (integrated graphics card) must be set, and the IGPU register information may need to be supplemented.\n• UID = 15, applicable to: Intel 4th generation Haswell, 5th generation Broadwell\n• UID = 16, applicable to: Intel 6th generation Skylake, 7th generation Kaby Lake, some 4th generation Haswell\n• UID = 17, applicable to: Custom brightness, usually used for some non-standard devices or Hackintosh settings with special needs\n• UID = 18, suitable for: Custom brightness, usually used for some non-standard devices or Hackintosh settings with special needs\n• UID = 19, applicable to: Intel 8th generation CoffeeLake and above, below 10th generation, and AMD notebooks\n• UID = 99, applies to: Others (requires custom applbkl-name / applbkl-data device properties), may not work at all'**
  String get autoGen5658;

  /// No description provided for @autoGen5659.
  ///
  /// In en, this message translates to:
  /// **'Provides sensor support required for screen backlight adjustment (only applicable to notebooks and all-in-one computers)'**
  String get autoGen5659;

  /// No description provided for @autoGen5660.
  ///
  /// In en, this message translates to:
  /// **'• Used to simulate and enable Apple\'\'s native sensor (Ambient Light Sensor, ALS) function to automatically adjust screen brightness\n• If your device really has ALS (such as some high-end notebooks) and there are problems, you can try to add SSDT-ALS0 to correct the automatic brightness adjustment function, otherwise it is not recommended to add\n• Applicable to: All-in-one PCs (AIOs) and laptops only'**
  String get autoGen5660;

  /// No description provided for @autoGen5661.
  ///
  /// In en, this message translates to:
  /// **'macOS disguises itself as Windows and unlocks blocked devices (such as I2C touchpads)'**
  String get autoGen5661;

  /// No description provided for @autoGen5662.
  ///
  /// In en, this message translates to:
  /// **'• _OSI (Operating System Interface) is a method of ACPI that allows the operating system to report which features it supports.\n• Some motherboard firmware may decide whether to enable certain devices based on the _OSI return value, which may not be recognized by macOS, resulting in loss of functionality.\n• The patch \"tricks\" the firmware into thinking that macOS is also Windows, thus activating hidden features such as: I2C touchpad, battery management, etc.'**
  String get autoGen5662;

  /// No description provided for @autoGen5663.
  ///
  /// In en, this message translates to:
  /// **'USB port reset and fix'**
  String get autoGen5663;

  /// No description provided for @autoGen5664.
  ///
  /// In en, this message translates to:
  /// **'• Some OEMs violate the ACPI specification, which causes problems when booting macOS. To resolve this issue, the RHUB device needs to be shut down and force macOS to rebuild the port manually.\n• This patch resets the USB controller (including EHC1, EHC2 and other USB device shielding and renaming) when macOS starts, so that all USB ports can be correctly identified, and is used with USB mapping (such as: UTBMap.kext) to ensure that USB devices work properly.\n• Usually suitable for desktop 400 series motherboards (Asus, etc.) and mobile IceLake platforms (Dell, Lenovo, etc.).'**
  String get autoGen5664;

  /// No description provided for @autoGen5665.
  ///
  /// In en, this message translates to:
  /// **'Create bridge for missing PCI device path'**
  String get autoGen5665;

  /// No description provided for @autoGen5666.
  ///
  /// In en, this message translates to:
  /// **'• The PCI device paths of some motherboards or devices may not be recognized correctly under macOS, causing the device to not work properly, such as graphics cards, sound cards, wireless network cards, etc.\n• This patch will create the correct PCI bridges for these devices, ensuring that macOS can correctly recognize and use these PCI devices.'**
  String get autoGen5666;

  /// No description provided for @autoGen5667.
  ///
  /// In en, this message translates to:
  /// **'Correct the APIC table to solve the CPU kernel panic problem (applicable to HEDT server platform)'**
  String get autoGen5667;

  /// No description provided for @autoGen5668.
  ///
  /// In en, this message translates to:
  /// **'• Repair or rewrite the Processor ID in the APIC table to ensure that macOS can correctly identify the number and number of CPU cores and avoid kernel panic or core identification errors.\n• The original APIC table needs to be dropped in the firmware before the patched table can be loaded.\n• Applicable to X58, X79, X99, X299 and other Intel server (HEDT) platforms.'**
  String get autoGen5668;

  /// No description provided for @autoGen5669.
  ///
  /// In en, this message translates to:
  /// **'Remove DMAR reserved memory area, fix system startup problems and network card compatibility issues'**
  String get autoGen5669;

  /// No description provided for @autoGen5670.
  ///
  /// In en, this message translates to:
  /// **'• DMAR (DMA Remapping Table) is part of Intel VT-d virtualization technology for IOMMU (Input-Output Memory Management Unit) support.\n• This patch will remove the reserved memory area in the DMAR table that is causing the problem, thus preventing macOS from misreading the DMAR and causing the system to fail to boot.\n• Provide support for VT-d compatibility so that VT-d works properly in macOS Big Sur and newer, especially involving hardware driven by DriverKit.\n• macOS supports VT-d, but there are compatibility issues with the DMAR table provided by some motherboards or BIOS, which may cause macOS to cause kernel crashes, startup lags, system instability and other issues when parsing the ACPI DMAR table (stuck in AppleACPICPU, IOPCI, AppleVTD related log locations).\n• Supported hardware range: I225 network card, Aquantia network card, some WiFi devices, etc.\n• The original DMAR table needs to be dropped in the firmware before the patched table can be loaded.\n• Applicable CPU: Any processor that supports VT-d technology.'**
  String get autoGen5670;

  /// No description provided for @autoGen5671.
  ///
  /// In en, this message translates to:
  /// **'Add system bus SMBus support'**
  String get autoGen5671;

  /// No description provided for @autoGen5672.
  ///
  /// In en, this message translates to:
  /// **'• macOS requires an SMBus (System Management Bus) device to properly run certain services, such as:\n  I2C touchpad, battery management, light-sensing automatic brightness adjustment, some Wi-Fi/Bluetooth devices\n• SSDT-SBUS-MCHC makes macOS think this is a native Apple device by adding SBUS (System Management Bus) and MCHC (Memory Controller) devices to ACPI, ensuring that related functions work properly.\n• If the device I2C touchpad, battery information, and automatic brightness adjustment cannot be used, you can try to enable this patch.'**
  String get autoGen5672;

  /// No description provided for @autoGen5673.
  ///
  /// In en, this message translates to:
  /// **'Fix the problem of core graphics acceleration failure (usually applicable to Ivy Bridge and Sandy Bridge)'**
  String get autoGen5673;

  /// No description provided for @autoGen5674.
  ///
  /// In en, this message translates to:
  /// **'• Intel Management Engine (IMEI for short) is a hardware interface used to connect to the management engine. It is only needed when old platforms (Sandy/Ivy) and some motherboards lack MEI/IMEI/HECI devices.\n• Applicable to Intel 3rd generation Ivy Bridge processor and 6 series motherboard when mixed (for example: i3 3225 processor, H61 motherboard), core graphics acceleration problem\n• Applicable to Intel 2nd generation Sandy Bridge processor and 7 series motherboard when mixed (for example: i5 2500k processor, B75 motherboard), core graphics acceleration problem\n• Intel 3rd generation Ivy Bridge processors paired with 7 series motherboards, and Intel 2nd generation Sandy Bridge processors paired with 6 series motherboards do not require this SSDT!\n• Intel 4th generation Haswell and newer platforms can usually implement MEI/IMEI/HECI devices correctly and do not need this SSDT!'**
  String get autoGen5674;

  /// No description provided for @autoGen5675.
  ///
  /// In en, this message translates to:
  /// **'Fix the problem of shutting down and restarting or shutting down without power supply'**
  String get autoGen5675;

  /// No description provided for @autoGen5676.
  ///
  /// In en, this message translates to:
  /// **'• Fixed the problem that some motherboards sometimes do not completely turn off the power to the USB controller when macOS is shutting down (S5), resulting in failure to shut down normally (shutdown becomes restarting or shutdown without power)\n• Requires ACPI rename patch: _PTS -> ZPTS'**
  String get autoGen5676;

  /// No description provided for @autoGen5677.
  ///
  /// In en, this message translates to:
  /// **'Check the current system status, mainly to check whether S3 sleep is supported (non-customized SSDT)'**
  String get autoGen5677;

  /// No description provided for @autoGen5678.
  ///
  /// In en, this message translates to:
  /// **'• Check whether the current machine is an AOAC machine (non-customized SSDT)\n• Check the system status in the current BIOS settings, mainly to check whether S3 sleep is supported (non-customized SSDT)\n• Note: Only non-AOAC machines are compatible with S3 sleep. AOAC machines conflict with S3 sleep and do not support S3 sleep!\n• If the check result shows that the system status of a non-AOAC machine (AOAC machine does not support S3 sleep, do not read below) does not support S3 sleep, there may be the following situations:\n  1. The motherboard firmware supports S3 sleep, but S3 sleep is not enabled in the BIOS settings. After it is enabled, S3 sleep can be supported.\n  2. The motherboard firmware does not physically castrate S3, but the DSDT does not define the _S3 method. Completing the _S3 method has a probability of fixing the S3 sleep problem.\n  3. The motherboard firmware physically castrates S3 and does not support S3 sleep at all. Even if the _S3 method is completed, the S3 sleep problem cannot be repaired.'**
  String get autoGen5678;

  /// No description provided for @autoGen5679.
  ///
  /// In en, this message translates to:
  /// **'Check whether it is an AOAC machine (non-customized SSDT)'**
  String get autoGen5679;

  /// No description provided for @autoGen5680.
  ///
  /// In en, this message translates to:
  /// **'• Check whether it is an AOAC machine (non-customized SSDT) based on FACP.aml\n• Note: Only non-AOAC machines are compatible with S3 sleep. AOAC machines conflict with S3 sleep and do not support S3 sleep! AOAC machines are common in notebooks.\n• Once the AOAC machine enters S3 sleep, it may appear that it cannot be woken up after sleeping and appears in a crash state, and can only be forced to shut down. It is recommended to disable S3 sleep.\n• AOAC machines recommend considering the following solutions:\n  1. Unlock BIOS and disable AOAC (usually difficult to do, but the most stable)\n  2. Disable S3 sleep (disable S3 sleep in BIOS, or SSDT-S3-DISABLE to disable S3 sleep)\n  3. Turn off the independent graphics power supply\n  4. Use NVMeFix.kext to enable APST of SSD\n  5. Enable ASPM (BIOS advanced options enable ASPM, SSDT patch enables L1)'**
  String get autoGen5680;

  /// No description provided for @autoGen5681.
  ///
  /// In en, this message translates to:
  /// **'Fix the problem of waking up from sleep due to USB controller'**
  String get autoGen5681;

  /// No description provided for @autoGen5682.
  ///
  /// In en, this message translates to:
  /// **'• Rename GPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)\n• SSDT-GPRW is more commonly used because most platforms use the GPRW method and very few platforms provide and use the UPRW method.\n• Available for Skylake and newer platforms'**
  String get autoGen5682;

  /// No description provided for @autoGen5683.
  ///
  /// In en, this message translates to:
  /// **'• Rename GPRW to XPRW to fix the instant wake-up problem (note: it may cause the USB keyboard to be unable to wake up the device, you can wake it up through the power key)\n• SSDT-UPRW is rarely used because most platforms use the GPRW method and very few platforms provide and use the UPRW method.\n• Available for Skylake and newer platforms'**
  String get autoGen5683;

  /// No description provided for @autoGen5684.
  ///
  /// In en, this message translates to:
  /// **'Fix sleep button sleep problem (applicable to notebooks)'**
  String get autoGen5684;

  /// No description provided for @autoGen5685.
  ///
  /// In en, this message translates to:
  /// **'• When some computers enter sleep through the sleep button SLPB (PNP0C0E), ACPI transmits incorrect parameters, causing macOS to mistakenly think it is a shutdown. This may lead to: direct restart, crash after sleep, or successful sleep but damaged system status.\n• Pretend \"lid is closed\" when pressing the sleep button, forcing dangerous PNP0C0E sleep into safe and stable PNP0C0D sleep\n• Typically suitable for laptops'**
  String get autoGen5685;

  /// No description provided for @autoGen5686.
  ///
  /// In en, this message translates to:
  /// **'Fixed the issue where you need to press any key to turn on the screen after waking up'**
  String get autoGen5686;

  /// No description provided for @autoGen5687.
  ///
  /// In en, this message translates to:
  /// **'• Fixed the issue where some machines need to press any key to turn on the screen after waking up'**
  String get autoGen5687;

  /// No description provided for @autoGen5688.
  ///
  /// In en, this message translates to:
  /// **'Fix the abnormal breathing light problem of the power button after waking up (applicable to Lenovo notebooks)'**
  String get autoGen5688;

  /// No description provided for @autoGen5689.
  ///
  /// In en, this message translates to:
  /// **'• Fixed an issue where the breathing light on side A and the breathing light on the power button did not return to normal after waking up on some Lenovo notebooks\n• Fixed the issue where the F4 microphone indicator light status is abnormal after waking up on some Lenovo laptops\n• Mainly applicable to Lenovo series notebooks, other brands of notebooks are usually not applicable'**
  String get autoGen5689;

  /// No description provided for @autoGen5690.
  ///
  /// In en, this message translates to:
  /// **'Disable system S3 sleep state (fix S3 sleep wake-up crash, restart or shutdown issues)'**
  String get autoGen5690;

  /// No description provided for @autoGen5691.
  ///
  /// In en, this message translates to:
  /// **'• Only disable S3 sleep state under macOS system to avoid system crash, restart or shutdown when macOS system wakes up\n• When disabled, only macOS no longer supports S3 sleep (clicking the sleep button or the monitor enters power-saving mode, the screen turns off, but the host will still run and the fan will not stop running)\n• After disabling the S3 sleep state in macOS, you no longer need to modify any system settings of macOS, and you do not need to turn off the energy-saving mode (before this, you may need to modify the system settings -> turn off the display when inactive -> never)\n• Applicable scenarios: When the sleep problem is not repaired, the energy-saving mode is turned on in the macOS system settings (\"Turn off the display when inactive -> 10 minutes\"). After the system enters sleep state, when the macOS system is awakened, the system may crash, restart or shut down. At this time, you can disable the S3 sleep state to fix the problem.\n• Requires ACPI rename patch: _S3 -> XS3'**
  String get autoGen5691;

  /// No description provided for @autoGen5692.
  ///
  /// In en, this message translates to:
  /// **'Hot restart is changed to cold restart to fix the problem of some hardware being unavailable.'**
  String get autoGen5692;

  /// No description provided for @autoGen5693.
  ///
  /// In en, this message translates to:
  /// **'• Hot restart is changed to cold restart, which fixes the problem that some hardware becomes unavailable after restarting from Windows to macOS on some platforms. (For example: sound card, WiFi, Bluetooth)\n• Note: No SSDT-FACP.aml is generated! Only ACPI-Patch is generated!'**
  String get autoGen5693;

  /// No description provided for @autoGen5694.
  ///
  /// In en, this message translates to:
  /// **'Graphics device ID mapping'**
  String get autoGen5694;

  /// No description provided for @autoGen5695.
  ///
  /// In en, this message translates to:
  /// **'• Used for AMD graphics card device ID mapping scenarios, injecting compatible device IDs through ACPI to allow the system to load the corresponding graphics driver.\n• Recommended only for models explicitly marked in the RapidEFI compatibility data as requiring device ID mapping.'**
  String get autoGen5695;

  /// No description provided for @autoGen5696.
  ///
  /// In en, this message translates to:
  /// **'ACPI device shielding'**
  String get autoGen5696;

  /// No description provided for @autoGen5697.
  ///
  /// In en, this message translates to:
  /// **'• Used to handle PCI devices at the ACPI layer that are not suitable for handing over to the macOS driver, such as incompatible graphics cards, NVMe controllers, or other expansion devices.\n• Laptops try power-level deactivation first; if the firmware does not support the power supply method, it downgrades to the driver layer for avoidance.\n• Desktops, NUCs, and HEDTs use universal circumvention methods by default to avoid relying on independent graphics power methods that usually do not exist in the machine firmware.\n• All scenarios require a valid ACPI Path; if the hardware reports a missing ACPI Path, the device is automatically skipped.'**
  String get autoGen5697;

  /// No description provided for @autoGen5698.
  ///
  /// In en, this message translates to:
  /// **'Counterfeit wired network card equipment (applicable to notebooks without wired network cards)'**
  String get autoGen5698;

  /// No description provided for @autoGen5699.
  ///
  /// In en, this message translates to:
  /// **'• Provides NullEthernet fake virtual network card for Hackintosh systems to solve the dependence of iMessage, Facetime, iCloud and other Apple services on built-in network equipment'**
  String get autoGen5699;

  /// No description provided for @autoGen5700.
  ///
  /// In en, this message translates to:
  /// **'Fix laptop I2C touchpad problem (applicable to laptops)'**
  String get autoGen5700;

  /// No description provided for @autoGen5701.
  ///
  /// In en, this message translates to:
  /// **'• By repairing the ACPI hardware node mounting, ensuring that the device is enabled in the macOS system, and fixing the problem that some I2C touchpads cannot be recognized normally.\n• SSDT-GPI0 solves the problem of driver mounting hardware devices. SSDT-XOSI is mainly used to fix the problem of incompatibility between BIOS/ACPI initialization logic and operating system recognition (sometimes it can fix the touchpad problem)'**
  String get autoGen5701;

  /// No description provided for @autoGen5702.
  ///
  /// In en, this message translates to:
  /// **'CPU renaming for B850, B650, B550, A520 chipsets (only for Ryzen platforms)'**
  String get autoGen5702;

  /// No description provided for @autoGen5703.
  ///
  /// In en, this message translates to:
  /// **'• Applicable to CPU renaming of B850, B650, B550, and A520 chipsets to fix the crash problem caused by the AMD platform not being able to recognize the CPU (recommended only when using pre-made SSDT patches)\n• When customizing the SSDT patch, it is recommended to use the customized SSDT-PLUG! (AMD Ryzen platform automatically changes its name to SSDT-PLUG-ALT when customizing the SSDT)'**
  String get autoGen5703;

  /// No description provided for @autoGen5704.
  ///
  /// In en, this message translates to:
  /// **'Fix power management (applicable to Intel 12th generation and above, some AMD Ryzen and other platforms)'**
  String get autoGen5704;

  /// No description provided for @autoGen5705.
  ///
  /// In en, this message translates to:
  /// **'• macOS relies on the CPU power management plug-in (PluginType) to adjust the CPU frequency and improve energy efficiency and battery life.\n• This patch will modify the CPU definition so that macOS thinks it is a plugin-type = 1 processor required by Apple devices, thereby correctly loading CPU frequency management and improving performance and power consumption control.\n• Applicable to Intel Alder Lake 12th generation and above, and some AMD Ryzen platforms'**
  String get autoGen5705;

  /// No description provided for @autoGen5706.
  ///
  /// In en, this message translates to:
  /// **'Disable AWAC (Modern Timer) (available for Intel Coffee Lake 8th generation and above)'**
  String get autoGen5706;

  /// No description provided for @autoGen5707.
  ///
  /// In en, this message translates to:
  /// **'• Disable AWAC (Modern Timer) while enabling or spoofing legacy RTC\n• Compatible with Intel Coffee Lake 8th generation and above'**
  String get autoGen5707;

  /// No description provided for @autoGen5708.
  ///
  /// In en, this message translates to:
  /// **'Required by all native X99 (C612) motherboards and most native X79 (C602) motherboards'**
  String get autoGen5708;

  /// No description provided for @autoGen5709.
  ///
  /// In en, this message translates to:
  /// **'• This SSDT is applicable to all X99 motherboards and most X79 motherboards. Its main function is to disable unused devices in ACPI to prevent IOPCIFamily from causing kernel panic.\n• Applicable motherboards: All native X99 (C612) motherboards and most native X79 (C602) motherboards.'**
  String get autoGen5709;

  /// No description provided for @autoGen5710.
  ///
  /// In en, this message translates to:
  /// **'Enable or fake legacy RTC timer, and fix RTC range (applies to all native X99 (C612) and X299 motherboards)'**
  String get autoGen5710;

  /// No description provided for @autoGen5711.
  ///
  /// In en, this message translates to:
  /// **'• Enable or fake legacy RTC timers and fix RTC range.\n• Solve incorrect boot time, RTC related errors, sleep wake-up issues, etc.\n• This SSDT is applicable to all X99(C612) motherboards as well as X299 motherboards'**
  String get autoGen5711;

  /// No description provided for @autoGen5712.
  ///
  /// In en, this message translates to:
  /// **'Add DTGP support'**
  String get autoGen5712;

  /// No description provided for @autoGen5713.
  ///
  /// In en, this message translates to:
  /// **'• Inject hardware device attributes to fix some ACPI issues with graphics cards, sound cards, thunderbolt cards, etc. (When there is no DTGP method support, these attribute injections may fail or not work!)'**
  String get autoGen5713;

  /// No description provided for @autoGen5714.
  ///
  /// In en, this message translates to:
  /// **'Counterfeiting a standard DMA controller'**
  String get autoGen5714;

  /// No description provided for @autoGen5715.
  ///
  /// In en, this message translates to:
  /// **'• A virtual device controller (PNP0200) that imitates a standard DMA Controller (Direct Memory Access Controller), completes the ACPI resource table, and allows macOS to properly identify LPC bus devices and DMA functions.\n• Typically not required for HEDT/server platforms\n• Add missing parts, this is just a perfect solution, not necessary!'**
  String get autoGen5715;

  /// No description provided for @autoGen5716.
  ///
  /// In en, this message translates to:
  /// **'Counterfeiting a standard PWRB controller'**
  String get autoGen5716;

  /// No description provided for @autoGen5717.
  ///
  /// In en, this message translates to:
  /// **'• Counterfeit a standard Power Button (PNP0C0C) device to allow macOS to recognize the system power button normally and support sleep and wake-up\n• There is no PNP0C0C in some BIOS/motherboard ACPI trees, and macOS cannot handle the power button correctly, which may result in the inability to sleep, the inability to wake up, and the unavailability of the menu bar power button.\n• Add missing parts, this is just a perfect solution, not necessary!'**
  String get autoGen5717;

  /// No description provided for @autoGen5718.
  ///
  /// In en, this message translates to:
  /// **'Counterfeiting a standard SLPB controller'**
  String get autoGen5718;

  /// No description provided for @autoGen5719.
  ///
  /// In en, this message translates to:
  /// **'• Counterfeit a standard Sleep Button (PNP0C0E) device to allow macOS to correctly identify the system sleep button and implement sleep and wake functions\n• There is no PNP0C0E in some BIOS/motherboard ACPI trees, and macOS cannot handle the sleep button correctly, which may result in the inability to sleep, the inability to wake up, and the unavailability of the sleep button in the menu bar.\n• This part is required for PNP0C0E sleep correction method!\n• Add missing parts, this is just a perfect solution, not necessary!'**
  String get autoGen5719;

  /// No description provided for @autoGen5720.
  ///
  /// In en, this message translates to:
  /// **'MEM2 device required to imitate an IGPU'**
  String get autoGen5720;

  /// No description provided for @autoGen5721.
  ///
  /// In en, this message translates to:
  /// **'• Add MEM2 ACPI device required by IGPU and fix IGPU related issues\n• Supplement core display memory mapping to avoid driver initialization failure\n• Applicable scope: Haswell ~ Kaby Lake, core graphics system only. Usually only discrete graphics do not need this SSDT!'**
  String get autoGen5721;

  /// No description provided for @autoGen5722.
  ///
  /// In en, this message translates to:
  /// **'Invalid path'**
  String get autoGen5722;

  /// No description provided for @autoGen5723.
  ///
  /// In en, this message translates to:
  /// **'No valid .aml or .dat file found'**
  String get autoGen5723;

  /// No description provided for @autoGen5724.
  ///
  /// In en, this message translates to:
  /// **'Decompiling SSDT.aml files in batches...'**
  String get autoGen5724;

  /// No description provided for @autoGen5725.
  ///
  /// In en, this message translates to:
  /// **'Decompiling DSDT.aml and SSDT.aml files in batches...'**
  String get autoGen5725;

  /// No description provided for @autoGen5726.
  ///
  /// In en, this message translates to:
  /// **'Decompiling failed .aml files individually...'**
  String get autoGen5726;

  /// No description provided for @autoGen5727.
  ///
  /// In en, this message translates to:
  /// **'Decompiling other .aml files...'**
  String get autoGen5727;

  /// No description provided for @autoGen5728.
  ///
  /// In en, this message translates to:
  /// **'Note: Try not to include Chinese or special characters in the path or file name, otherwise it may cause unexpected problems!'**
  String get autoGen5728;

  /// No description provided for @autoGen5729.
  ///
  /// In en, this message translates to:
  /// **'ACPI export tool is not ready'**
  String get autoGen5729;

  /// No description provided for @autoGen5730.
  ///
  /// In en, this message translates to:
  /// **'Exporting ACPI tables...'**
  String get autoGen5730;

  /// No description provided for @autoGen5731.
  ///
  /// In en, this message translates to:
  /// **'The current platform does not support exporting ACPI tables'**
  String get autoGen5731;

  /// No description provided for @autoGen5732.
  ///
  /// In en, this message translates to:
  /// **'Waiting for sudo password authorization...'**
  String get autoGen5732;

  /// No description provided for @autoGen5733.
  ///
  /// In en, this message translates to:
  /// **'Administrator authorization has been canceled'**
  String get autoGen5733;

  /// No description provided for @autoGen5734.
  ///
  /// In en, this message translates to:
  /// **'Administrator password not entered'**
  String get autoGen5734;

  /// No description provided for @autoGen5735.
  ///
  /// In en, this message translates to:
  /// **'Administrator password is incorrect'**
  String get autoGen5735;

  /// No description provided for @autoGen5736.
  ///
  /// In en, this message translates to:
  /// **'ACPI table export process failed'**
  String get autoGen5736;

  /// No description provided for @autoGen5737.
  ///
  /// In en, this message translates to:
  /// **'The ACPI table extracted by the current platform is empty or does not support exporting the ACPI table.'**
  String get autoGen5737;

  /// No description provided for @autoGen5738.
  ///
  /// In en, this message translates to:
  /// **'=> DSDT not found, exporting by signature...'**
  String get autoGen5738;

  /// No description provided for @autoGen5739.
  ///
  /// In en, this message translates to:
  /// **'DSDT table export failed'**
  String get autoGen5739;

  /// No description provided for @autoGen5740.
  ///
  /// In en, this message translates to:
  /// **'Updating table name...'**
  String get autoGen5740;

  /// No description provided for @autoGen5741.
  ///
  /// In en, this message translates to:
  /// **'Export ACPI table successfully!'**
  String get autoGen5741;

  /// No description provided for @autoGen5742.
  ///
  /// In en, this message translates to:
  /// **'No valid ACPI table provided!'**
  String get autoGen5742;

  /// No description provided for @autoGen5743.
  ///
  /// In en, this message translates to:
  /// **'The hexadecimal data to be located was not found!'**
  String get autoGen5743;

  /// No description provided for @autoGen5744.
  ///
  /// In en, this message translates to:
  /// **'Unique fill ID not found!'**
  String get autoGen5744;

  /// No description provided for @autoGen5745.
  ///
  /// In en, this message translates to:
  /// **'=> getScopeOfDevice: invalid table parameter'**
  String get autoGen5745;

  /// No description provided for @autoGen5746.
  ///
  /// In en, this message translates to:
  /// **'loosest'**
  String get autoGen5746;

  /// No description provided for @autoGen5747.
  ///
  /// In en, this message translates to:
  /// **'length only'**
  String get autoGen5747;

  /// No description provided for @autoGen5748.
  ///
  /// In en, this message translates to:
  /// **'Table ID and length, disable normalized headers'**
  String get autoGen5748;

  /// No description provided for @autoGen5749.
  ///
  /// In en, this message translates to:
  /// **'Table ID and length, enable normalized headers'**
  String get autoGen5749;

  /// No description provided for @autoGen5750.
  ///
  /// In en, this message translates to:
  /// **'Intel 1st generation Arrandale, 2nd generation Sandy Bridge, 3rd generation Ivy Bridge'**
  String get autoGen5750;

  /// No description provided for @autoGen5751.
  ///
  /// In en, this message translates to:
  /// **'Intel 4th generation Haswell, 5th generation Broadwell'**
  String get autoGen5751;

  /// No description provided for @autoGen5752.
  ///
  /// In en, this message translates to:
  /// **'Intel 6th generation Skylake, 7th generation Kaby Lake, some 4th generation Haswell'**
  String get autoGen5752;

  /// No description provided for @autoGen5753.
  ///
  /// In en, this message translates to:
  /// **'Custom brightness, usually used for some non-standard equipment or special needs settings'**
  String get autoGen5753;

  /// No description provided for @autoGen5754.
  ///
  /// In en, this message translates to:
  /// **'Intel 8th generation CoffeeLake ~ 10th generation, and AMD notebooks'**
  String get autoGen5754;

  /// No description provided for @autoGen5755.
  ///
  /// In en, this message translates to:
  /// **'Others (requires custom applbkl-name / applbkl-data device properties), may not be supported'**
  String get autoGen5755;

  /// No description provided for @autoGen5756.
  ///
  /// In en, this message translates to:
  /// **'ACPI tools currently only support Windows/macOS/Linux platforms'**
  String get autoGen5756;

  /// No description provided for @autoGen5757.
  ///
  /// In en, this message translates to:
  /// **'Note: The old version of iasl-legacy only supports macOS 10.6 and earlier versions. There may be compatibility issues with current mainstream systems, so use with caution!!!'**
  String get autoGen5757;

  /// No description provided for @autoGen5758.
  ///
  /// In en, this message translates to:
  /// **'Use [iasl-legacy old version compiler]'**
  String get autoGen5758;

  /// No description provided for @autoGen5759.
  ///
  /// In en, this message translates to:
  /// **'Compilation failed!'**
  String get autoGen5759;

  /// No description provided for @autoGen5760.
  ///
  /// In en, this message translates to:
  /// **'It is recommended to change to a new version of iasl or enable forced compilation and try again!'**
  String get autoGen5760;

  /// No description provided for @autoGen5761.
  ///
  /// In en, this message translates to:
  /// **'exist'**
  String get autoGen5761;

  /// No description provided for @autoGen5762.
  ///
  /// In en, this message translates to:
  /// **'does not exist'**
  String get autoGen5762;

  /// No description provided for @autoGen5763.
  ///
  /// In en, this message translates to:
  /// **'Note: Intel 1st generation Arrandale, 2nd generation Sandy Bridge, 3rd generation Ivy Bridge use UID: 14 ​​by default, but some machines using UID: 14 ​​will encounter limited maximum brightness or other problems. In order to solve these problems, the correct device path of the iGPU (integrated graphics card) must be set, and the IGPU register information may need to be supplemented.'**
  String get autoGen5763;

  /// No description provided for @autoGen5764.
  ///
  /// In en, this message translates to:
  /// **'Please enter the iGPU ACPI path to use. The character limit for each path element is 4 alphanumeric characters (starting with a letter or underscore), separated by spaces. For example: SB.PCI0.GFX0'**
  String get autoGen5764;

  /// No description provided for @autoGen5765.
  ///
  /// In en, this message translates to:
  /// **'Note: NBCF patch has been generated (depends on BrightnessKeys.kext driver), enabled by default! If you encounter problems during use, please disable this patch!'**
  String get autoGen5765;

  /// No description provided for @autoGen5766.
  ///
  /// In en, this message translates to:
  /// **'The following bridge cannot be resolved:'**
  String get autoGen5766;

  /// No description provided for @autoGen5767.
  ///
  /// In en, this message translates to:
  /// **'=> The current firmware supports common system states! If it is not an AOAC machine, after fixing the sleep problem, macOS can support S3 sleep, otherwise it does not support S3 sleep!'**
  String get autoGen5767;

  /// No description provided for @autoGen5768.
  ///
  /// In en, this message translates to:
  /// **'patch'**
  String get autoGen5768;

  /// No description provided for @autoGen5769.
  ///
  /// In en, this message translates to:
  /// **'Connection to server timed out'**
  String get autoGen5769;

  /// No description provided for @autoGen5770.
  ///
  /// In en, this message translates to:
  /// **'Download canceled'**
  String get autoGen5770;

  /// No description provided for @autoGen5771.
  ///
  /// In en, this message translates to:
  /// **'Read response timeout'**
  String get autoGen5771;

  /// No description provided for @autoGen5772.
  ///
  /// In en, this message translates to:
  /// **'Kext copied successfully'**
  String get autoGen5772;

  /// No description provided for @autoGen5773.
  ///
  /// In en, this message translates to:
  /// **'The web platform downloads directly by default, and does not currently support selecting the default path.'**
  String get autoGen5773;

  /// No description provided for @autoGen5774.
  ///
  /// In en, this message translates to:
  /// **'Configuration file root node is not a JSON object'**
  String get autoGen5774;

  /// No description provided for @autoGen5775.
  ///
  /// In en, this message translates to:
  /// **'Follow the system'**
  String get autoGen5775;

  /// No description provided for @autoGen5776.
  ///
  /// In en, this message translates to:
  /// **'closure'**
  String get autoGen5776;

  /// No description provided for @autoGen5777.
  ///
  /// In en, this message translates to:
  /// **'Microsoft Yahei'**
  String get autoGen5777;

  /// No description provided for @autoGen5778.
  ///
  /// In en, this message translates to:
  /// **'Update black body'**
  String get autoGen5778;

  /// No description provided for @autoGen5779.
  ///
  /// In en, this message translates to:
  /// **'Siyuan Songti'**
  String get autoGen5779;

  /// No description provided for @autoGen5780.
  ///
  /// In en, this message translates to:
  /// **'Waiting to refresh hardware information'**
  String get autoGen5780;

  /// No description provided for @autoGen5781.
  ///
  /// In en, this message translates to:
  /// **'Loading hardware information'**
  String get autoGen5781;

  /// No description provided for @autoGen5782.
  ///
  /// In en, this message translates to:
  /// **'Refreshing hardware information'**
  String get autoGen5782;

  /// No description provided for @autoGen5783.
  ///
  /// In en, this message translates to:
  /// **'Hardware information loading completed'**
  String get autoGen5783;

  /// No description provided for @autoGen5784.
  ///
  /// In en, this message translates to:
  /// **'Hardware information loading failed'**
  String get autoGen5784;

  /// No description provided for @autoGen5785.
  ///
  /// In en, this message translates to:
  /// **'Hardware information is not supported yet'**
  String get autoGen5785;

  /// No description provided for @autoGen5786.
  ///
  /// In en, this message translates to:
  /// **'Hardware information import completed'**
  String get autoGen5786;

  /// No description provided for @autoGen5787.
  ///
  /// In en, this message translates to:
  /// **'fail'**
  String get autoGen5787;

  /// No description provided for @autoGen5788.
  ///
  /// In en, this message translates to:
  /// **'Not supported'**
  String get autoGen5788;

  /// No description provided for @autoGen5789.
  ///
  /// In en, this message translates to:
  /// **'Finish'**
  String get autoGen5789;

  /// No description provided for @autoGen5790.
  ///
  /// In en, this message translates to:
  /// **'cache'**
  String get autoGen5790;

  /// No description provided for @autoGen5791.
  ///
  /// In en, this message translates to:
  /// **'The current platform does not support hardware information query'**
  String get autoGen5791;

  /// No description provided for @autoGen5792.
  ///
  /// In en, this message translates to:
  /// **'The current report is an imported external hardware report. Please refresh the local hardware information before exporting.'**
  String get autoGen5792;

  /// No description provided for @autoGen5793.
  ///
  /// In en, this message translates to:
  /// **'There is currently no exportable local hardware information.'**
  String get autoGen5793;

  /// No description provided for @autoGen5794.
  ///
  /// In en, this message translates to:
  /// **'Hardware reports folder cleanup failed'**
  String get autoGen5794;

  /// No description provided for @autoGen5795.
  ///
  /// In en, this message translates to:
  /// **'Hardware reporting folder creation failed'**
  String get autoGen5795;

  /// No description provided for @autoGen5796.
  ///
  /// In en, this message translates to:
  /// **'ACPI table export failed or not supported'**
  String get autoGen5796;

  /// No description provided for @autoGen5797.
  ///
  /// In en, this message translates to:
  /// **'Administrator authorization has been canceled and the ACPI table has not been exported'**
  String get autoGen5797;

  /// No description provided for @autoGen5798.
  ///
  /// In en, this message translates to:
  /// **'Unable to export ACPI table without entering administrator password'**
  String get autoGen5798;

  /// No description provided for @autoGen5799.
  ///
  /// In en, this message translates to:
  /// **'The administrator password is incorrect and the ACPI table cannot be exported.'**
  String get autoGen5799;

  /// No description provided for @autoGen5800.
  ///
  /// In en, this message translates to:
  /// **'ACPI table export failed: No valid ACPI table found'**
  String get autoGen5800;

  /// No description provided for @autoGen5801.
  ///
  /// In en, this message translates to:
  /// **'ACPI table export failed: Export process failed.'**
  String get autoGen5801;

  /// No description provided for @autoGen5802.
  ///
  /// In en, this message translates to:
  /// **'Hardware information file is not a JSON object'**
  String get autoGen5802;

  /// No description provided for @autoGen5803.
  ///
  /// In en, this message translates to:
  /// **'Hardware information has been imported'**
  String get autoGen5803;

  /// No description provided for @autoGen5804.
  ///
  /// In en, this message translates to:
  /// **'ACPI table catalog is invalid, custom SSDT is not available'**
  String get autoGen5804;

  /// No description provided for @autoGen5805.
  ///
  /// In en, this message translates to:
  /// **'Start configuring EFI...'**
  String get autoGen5805;

  /// No description provided for @autoGen5806.
  ///
  /// In en, this message translates to:
  /// **'Generating ConfigModel based on hardware information...'**
  String get autoGen5806;

  /// No description provided for @autoGen5807.
  ///
  /// In en, this message translates to:
  /// **'Use EFI raw SSDT, skip SSDT customization.'**
  String get autoGen5807;

  /// No description provided for @autoGen5808.
  ///
  /// In en, this message translates to:
  /// **'External hardware report imported but no ACPI table catalog provided, custom SSDT disabled.'**
  String get autoGen5808;

  /// No description provided for @autoGen5809.
  ///
  /// In en, this message translates to:
  /// **'Exporting OpenCore EFI...'**
  String get autoGen5809;

  /// No description provided for @autoGen5810.
  ///
  /// In en, this message translates to:
  /// **'EFI written, start extracting ACPI and customizing SSDT...'**
  String get autoGen5810;

  /// No description provided for @autoGen5811.
  ///
  /// In en, this message translates to:
  /// **'The SSDT customization process ends.'**
  String get autoGen5811;

  /// No description provided for @autoGen5812.
  ///
  /// In en, this message translates to:
  /// **'SSDT customization process failed.'**
  String get autoGen5812;

  /// No description provided for @autoGen5813.
  ///
  /// In en, this message translates to:
  /// **'EFI configuration completed.'**
  String get autoGen5813;

  /// No description provided for @autoGen5814.
  ///
  /// In en, this message translates to:
  /// **'EFI configuration failed, please check the output path or logs.'**
  String get autoGen5814;

  /// No description provided for @autoGen5815.
  ///
  /// In en, this message translates to:
  /// **'The hardware automatically generates ConfigModel rules and is being reconstructed.'**
  String get autoGen5815;

  /// No description provided for @autoGen5816.
  ///
  /// In en, this message translates to:
  /// **'The length of tips must be the same as choices'**
  String get autoGen5816;

  /// No description provided for @autoGen5817.
  ///
  /// In en, this message translates to:
  /// **'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md'**
  String get autoGen5817;

  /// No description provided for @autoGen5818.
  ///
  /// In en, this message translates to:
  /// **'assets/ssdt/platformpatch.md'**
  String get autoGen5818;

  /// No description provided for @autoGen5819.
  ///
  /// In en, this message translates to:
  /// **'assets/ssdt/sound card patch.md'**
  String get autoGen5819;

  /// No description provided for @autoGen5820.
  ///
  /// In en, this message translates to:
  /// **'assets/ssdt/graphics card counterfeit.md'**
  String get autoGen5820;

  /// No description provided for @autoGen5821.
  ///
  /// In en, this message translates to:
  /// **'assets/ssdt/shielding device.md'**
  String get autoGen5821;

  /// No description provided for @autoGen5822.
  ///
  /// In en, this message translates to:
  /// **'assets/ssdt/brightnesspatch.md'**
  String get autoGen5822;

  /// No description provided for @autoGen5823.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth driver instructions:\n  1. When Intel WiFi is checked, the Intel Bluetooth driver will be automatically added according to the macOS version, no need to check it manually! ! !\n  2. When Broadcom WiFi is checked, the Broadcom Bluetooth driver will be automatically added according to the macOS version, no need to manually check it! ! !\n  3. When Atheros WiFi is checked, the Atheros Bluetooth driver will be added automatically, no need to check it manually! ! !\n  4. If the WiFi model is not checked or the Bluetooth model is not explained, you need to check it manually! ! !\n  5. Since Bluetooth uses the USB channel, if it still does not work properly after adding drivers and patches, please make sure the USB is well customized! ! !'**
  String get autoGen5823;

  /// No description provided for @autoGen5824.
  ///
  /// In en, this message translates to:
  /// **'Common HPET paths:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  This option is used to fix some sound card IRQ problems! Note: If your sound card does not have IRQ problems, please do not use this function!!!'**
  String get autoGen5824;

  /// No description provided for @autoGen5825.
  ///
  /// In en, this message translates to:
  /// **'Supported macOS versions:\n    • Wireless USB Big Sur Adapter-V18 version supports macOS Catalina 10.15.x ~ macOS Tahoe 26.x (requires OCLP USB patch)\n    • Wireless USB Big Sur Adapter-V15 version supports OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  Supported USB WiFi is as follows:\n    • The main chip is Realtek 802.11n and 802.11ac USB Wi-Fi Adapter. For more specific models, please refer to the author\'\'s instructions.'**
  String get autoGen5825;

  /// No description provided for @autoGen5826.
  ///
  /// In en, this message translates to:
  /// **'AMD discrete graphics counterfeit (device properties):\n   1. You need to fill in the PCI path of the graphics card, for example: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. You need to fill in the counterfeit device ID of the graphics card (4 digits in hexadecimal), for example: 73BF\n   3. After the graphics card is counterfeited, you still need to consider the startup parameters required by the AMD graphics card (you can go to Independent Graphics Configuration -> AMD Independent Graphics -> Check as needed)\n   4. The tool has pre-prepared some graphics card device IDs. If not, please find it yourself or contact the author for supplementary information.'**
  String get autoGen5826;

  /// No description provided for @autoGen5827.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get autoGen5827;

  /// No description provided for @autoGen5828.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get autoGen5828;

  /// No description provided for @autoGen5829.
  ///
  /// In en, this message translates to:
  /// **'Sure'**
  String get autoGen5829;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'en',
        'es',
        'fr',
        'hi',
        'it',
        'ja',
        'pt',
        'ru',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
