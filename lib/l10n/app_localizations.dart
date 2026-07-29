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
