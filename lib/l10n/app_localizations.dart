import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_pt.dart';
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
    Locale('en'),
    Locale('ja'),
    Locale('pt'),
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
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja', 'pt', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'ja':
      return AppLocalizationsJa();
    case 'pt':
      return AppLocalizationsPt();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
