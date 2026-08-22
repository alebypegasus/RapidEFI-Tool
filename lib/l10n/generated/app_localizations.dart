import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
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
/// import 'generated/app_localizations.dart';
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
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('pt', 'PT'),
    Locale('ru'),
    Locale('tr'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
    Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'RapidEFI'**
  String get appName;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'RapidEFI - OpenCore EFI Tool'**
  String get appTitle;

  /// No description provided for @navHardware.
  ///
  /// In en, this message translates to:
  /// **'Hardware'**
  String get navHardware;

  /// No description provided for @navManual.
  ///
  /// In en, this message translates to:
  /// **'Manual EFI Config'**
  String get navManual;

  /// No description provided for @navProcess.
  ///
  /// In en, this message translates to:
  /// **'Process EFI'**
  String get navProcess;

  /// No description provided for @navSsdt.
  ///
  /// In en, this message translates to:
  /// **'SSDT'**
  String get navSsdt;

  /// No description provided for @navOclp.
  ///
  /// In en, this message translates to:
  /// **'OCLP'**
  String get navOclp;

  /// No description provided for @navTahoe.
  ///
  /// In en, this message translates to:
  /// **'Tahoe 26'**
  String get navTahoe;

  /// No description provided for @navHistory.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get navHistory;

  /// No description provided for @navSettings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// No description provided for @navAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get navAbout;

  /// No description provided for @navSponsor.
  ///
  /// In en, this message translates to:
  /// **'Sponsor Developer'**
  String get navSponsor;

  /// No description provided for @btnRefresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get btnRefresh;

  /// No description provided for @btnImportReport.
  ///
  /// In en, this message translates to:
  /// **'Import Report'**
  String get btnImportReport;

  /// No description provided for @btnExportReport.
  ///
  /// In en, this message translates to:
  /// **'Export Report'**
  String get btnExportReport;

  /// No description provided for @btnExportAcpi.
  ///
  /// In en, this message translates to:
  /// **'Export ACPI'**
  String get btnExportAcpi;

  /// No description provided for @btnEfiSettings.
  ///
  /// In en, this message translates to:
  /// **'EFI Settings'**
  String get btnEfiSettings;

  /// No description provided for @btnExportEfi.
  ///
  /// In en, this message translates to:
  /// **'Export EFI'**
  String get btnExportEfi;

  /// No description provided for @btnGenerateEfi.
  ///
  /// In en, this message translates to:
  /// **'Generate EFI'**
  String get btnGenerateEfi;

  /// No description provided for @btnBrowse.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get btnBrowse;

  /// No description provided for @btnChooseFile.
  ///
  /// In en, this message translates to:
  /// **'Choose File'**
  String get btnChooseFile;

  /// No description provided for @btnCancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get btnCancel;

  /// No description provided for @btnApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get btnApply;

  /// No description provided for @btnSave.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get btnSave;

  /// No description provided for @btnClose.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get btnClose;

  /// No description provided for @btnCheckUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check Updates'**
  String get btnCheckUpdates;

  /// No description provided for @btnChecking.
  ///
  /// In en, this message translates to:
  /// **'Checking...'**
  String get btnChecking;

  /// No description provided for @btnSelectAll.
  ///
  /// In en, this message translates to:
  /// **'Select All'**
  String get btnSelectAll;

  /// No description provided for @btnDeselectAll.
  ///
  /// In en, this message translates to:
  /// **'Deselect All'**
  String get btnDeselectAll;

  /// No description provided for @btnCustomSsdt.
  ///
  /// In en, this message translates to:
  /// **'Custom SSDT'**
  String get btnCustomSsdt;

  /// No description provided for @btnPrebuiltSsdt.
  ///
  /// In en, this message translates to:
  /// **'Prebuilt SSDT'**
  String get btnPrebuiltSsdt;

  /// No description provided for @btnDumpAcpi.
  ///
  /// In en, this message translates to:
  /// **'Dump ACPI'**
  String get btnDumpAcpi;

  /// No description provided for @btnSelectAcpis.
  ///
  /// In en, this message translates to:
  /// **'Select ACPIs'**
  String get btnSelectAcpis;

  /// No description provided for @btnSelectConfig.
  ///
  /// In en, this message translates to:
  /// **'Select config'**
  String get btnSelectConfig;

  /// No description provided for @btnMergeConfig.
  ///
  /// In en, this message translates to:
  /// **'Merge config'**
  String get btnMergeConfig;

  /// No description provided for @btnExecutePatch.
  ///
  /// In en, this message translates to:
  /// **'Execute Patch'**
  String get btnExecutePatch;

  /// No description provided for @btnOpenFolder.
  ///
  /// In en, this message translates to:
  /// **'Open Folder'**
  String get btnOpenFolder;

  /// No description provided for @hardwareReport.
  ///
  /// In en, this message translates to:
  /// **'Hardware Report'**
  String get hardwareReport;

  /// No description provided for @cpuArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Processor (CPU)'**
  String get cpuArchitecture;

  /// No description provided for @motherboardChipset.
  ///
  /// In en, this message translates to:
  /// **'Motherboard & Chipset'**
  String get motherboardChipset;

  /// No description provided for @graphicsDevice.
  ///
  /// In en, this message translates to:
  /// **'Graphics (GPU)'**
  String get graphicsDevice;

  /// No description provided for @audioCodec.
  ///
  /// In en, this message translates to:
  /// **'Audio Controller'**
  String get audioCodec;

  /// No description provided for @networkController.
  ///
  /// In en, this message translates to:
  /// **'Network & Wireless'**
  String get networkController;

  /// No description provided for @storageDevice.
  ///
  /// In en, this message translates to:
  /// **'Storage Devices'**
  String get storageDevice;

  /// No description provided for @acpiTables.
  ///
  /// In en, this message translates to:
  /// **'ACPI Tables'**
  String get acpiTables;

  /// No description provided for @compatibilityStatus.
  ///
  /// In en, this message translates to:
  /// **'Compatibility'**
  String get compatibilityStatus;

  /// No description provided for @compatible.
  ///
  /// In en, this message translates to:
  /// **'Supported'**
  String get compatible;

  /// No description provided for @unsupported.
  ///
  /// In en, this message translates to:
  /// **'Unsupported'**
  String get unsupported;

  /// No description provided for @requiresPatch.
  ///
  /// In en, this message translates to:
  /// **'Patch Required'**
  String get requiresPatch;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @showDetailedReport.
  ///
  /// In en, this message translates to:
  /// **'Detailed View'**
  String get showDetailedReport;

  /// No description provided for @platformConfig.
  ///
  /// In en, this message translates to:
  /// **'Platform Configuration'**
  String get platformConfig;

  /// No description provided for @cpuVendor.
  ///
  /// In en, this message translates to:
  /// **'CPU Vendor'**
  String get cpuVendor;

  /// No description provided for @intel.
  ///
  /// In en, this message translates to:
  /// **'Intel'**
  String get intel;

  /// No description provided for @amd.
  ///
  /// In en, this message translates to:
  /// **'AMD'**
  String get amd;

  /// No description provided for @formFactor.
  ///
  /// In en, this message translates to:
  /// **'Form Factor'**
  String get formFactor;

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

  /// No description provided for @nucMiniPc.
  ///
  /// In en, this message translates to:
  /// **'NUC / Mini PC'**
  String get nucMiniPc;

  /// No description provided for @hedtServer.
  ///
  /// In en, this message translates to:
  /// **'HEDT / Server'**
  String get hedtServer;

  /// No description provided for @processorGen.
  ///
  /// In en, this message translates to:
  /// **'Processor Generation'**
  String get processorGen;

  /// No description provided for @targetMacOs.
  ///
  /// In en, this message translates to:
  /// **'Target macOS Version'**
  String get targetMacOs;

  /// No description provided for @smbiosModel.
  ///
  /// In en, this message translates to:
  /// **'Target SMBIOS Model'**
  String get smbiosModel;

  /// No description provided for @motherboardSelector.
  ///
  /// In en, this message translates to:
  /// **'Motherboard Selection'**
  String get motherboardSelector;

  /// No description provided for @brand.
  ///
  /// In en, this message translates to:
  /// **'Brand'**
  String get brand;

  /// No description provided for @model.
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get model;

  /// No description provided for @outputDirectory.
  ///
  /// In en, this message translates to:
  /// **'Output Directory'**
  String get outputDirectory;

  /// No description provided for @kextConfiguration.
  ///
  /// In en, this message translates to:
  /// **'Kext Configuration'**
  String get kextConfiguration;

  /// No description provided for @bootArguments.
  ///
  /// In en, this message translates to:
  /// **'Boot Arguments (boot-args)'**
  String get bootArguments;

  /// No description provided for @csrActiveConfig.
  ///
  /// In en, this message translates to:
  /// **'SIP (csr-active-config)'**
  String get csrActiveConfig;

  /// No description provided for @sipEnabled.
  ///
  /// In en, this message translates to:
  /// **'SIP Enabled (00000000)'**
  String get sipEnabled;

  /// No description provided for @sipDisabled.
  ///
  /// In en, this message translates to:
  /// **'SIP Disabled (03080000)'**
  String get sipDisabled;

  /// No description provided for @processEfiTitle.
  ///
  /// In en, this message translates to:
  /// **'Process & Rebuild EFI'**
  String get processEfiTitle;

  /// No description provided for @chooseEfiPrompt.
  ///
  /// In en, this message translates to:
  /// **'Select an EFI directory or configModel file to load configuration'**
  String get chooseEfiPrompt;

  /// No description provided for @configModelFound.
  ///
  /// In en, this message translates to:
  /// **'ConfigModel found and loaded successfully'**
  String get configModelFound;

  /// No description provided for @rebuildEfi.
  ///
  /// In en, this message translates to:
  /// **'Rebuild EFI'**
  String get rebuildEfi;

  /// No description provided for @ssdtGeneratorTitle.
  ///
  /// In en, this message translates to:
  /// **'SSDT Generator & ACPI Patcher'**
  String get ssdtGeneratorTitle;

  /// No description provided for @corePatches.
  ///
  /// In en, this message translates to:
  /// **'Core Patches'**
  String get corePatches;

  /// No description provided for @recommendedPatches.
  ///
  /// In en, this message translates to:
  /// **'Recommended Patches'**
  String get recommendedPatches;

  /// No description provided for @optionalPatches.
  ///
  /// In en, this message translates to:
  /// **'Optional Patches'**
  String get optionalPatches;

  /// No description provided for @compilationComplete.
  ///
  /// In en, this message translates to:
  /// **'Compilation Completed'**
  String get compilationComplete;

  /// No description provided for @mergeSuccess.
  ///
  /// In en, this message translates to:
  /// **'Merged into EFI successfully'**
  String get mergeSuccess;

  /// No description provided for @oclpTitle.
  ///
  /// In en, this message translates to:
  /// **'OpenCore Legacy Patcher Integration'**
  String get oclpTitle;

  /// No description provided for @rootPatching.
  ///
  /// In en, this message translates to:
  /// **'Root Patching'**
  String get rootPatching;

  /// No description provided for @graphicsAcceleration.
  ///
  /// In en, this message translates to:
  /// **'Graphics Acceleration'**
  String get graphicsAcceleration;

  /// No description provided for @wirelessFix.
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi & Bluetooth Fix'**
  String get wirelessFix;

  /// No description provided for @postInstall.
  ///
  /// In en, this message translates to:
  /// **'Post-Install Steps'**
  String get postInstall;

  /// No description provided for @tahoeGuideTitle.
  ///
  /// In en, this message translates to:
  /// **'macOS Tahoe 26 Compatibility Guide'**
  String get tahoeGuideTitle;

  /// No description provided for @tahoeCompatibility.
  ///
  /// In en, this message translates to:
  /// **'Tahoe 26 Kernel & Audio Adaptation'**
  String get tahoeCompatibility;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @appLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language :'**
  String get appLanguage;

  /// No description provided for @followSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow System'**
  String get followSystem;

  /// No description provided for @themeMode.
  ///
  /// In en, this message translates to:
  /// **'Theme Mode :'**
  String get themeMode;

  /// No description provided for @themeColor.
  ///
  /// In en, this message translates to:
  /// **'Theme Color :'**
  String get themeColor;

  /// No description provided for @appFont.
  ///
  /// In en, this message translates to:
  /// **'App Font :'**
  String get appFont;

  /// No description provided for @efiOptions.
  ///
  /// In en, this message translates to:
  /// **'EFI Options :'**
  String get efiOptions;

  /// No description provided for @addThemeToEfi.
  ///
  /// In en, this message translates to:
  /// **'Add OpenCore boot theme to EFI'**
  String get addThemeToEfi;

  /// No description provided for @generateConfigModel.
  ///
  /// In en, this message translates to:
  /// **'Generate configModel file in EFI folder'**
  String get generateConfigModel;

  /// No description provided for @compressZipEfi.
  ///
  /// In en, this message translates to:
  /// **'Compress EFI to ZIP file'**
  String get compressZipEfi;

  /// No description provided for @checkForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Check for Updates :'**
  String get checkForUpdates;

  /// No description provided for @currentVersion.
  ///
  /// In en, this message translates to:
  /// **'Current version: {version}'**
  String currentVersion(String version);

  /// No description provided for @copyrightNotice.
  ///
  /// In en, this message translates to:
  /// **'Copyright & License'**
  String get copyrightNotice;

  /// No description provided for @exitAppTip.
  ///
  /// In en, this message translates to:
  /// **'Press back again to exit'**
  String get exitAppTip;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'New version available'**
  String get updateAvailable;

  /// No description provided for @versionTag.
  ///
  /// In en, this message translates to:
  /// **'Version: {version}'**
  String versionTag(String version);

  /// No description provided for @releaseDate.
  ///
  /// In en, this message translates to:
  /// **'Release Date: {date}'**
  String releaseDate(String date);

  /// No description provided for @noUpdateFound.
  ///
  /// In en, this message translates to:
  /// **'You are running the latest version'**
  String get noUpdateFound;

  /// No description provided for @efiBuildSuccess.
  ///
  /// In en, this message translates to:
  /// **'EFI built successfully!'**
  String get efiBuildSuccess;

  /// No description provided for @efiBuildFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to build EFI'**
  String get efiBuildFailed;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @soundLayoutId.
  ///
  /// In en, this message translates to:
  /// **'Audio Layout ID (alcid)'**
  String get soundLayoutId;

  /// No description provided for @nvramBootArgs.
  ///
  /// In en, this message translates to:
  /// **'Custom boot-args'**
  String get nvramBootArgs;

  /// No description provided for @generateSerial.
  ///
  /// In en, this message translates to:
  /// **'Generate Serial'**
  String get generateSerial;
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
        'bn',
        'de',
        'en',
        'es',
        'fr',
        'hi',
        'id',
        'it',
        'ja',
        'ko',
        'pt',
        'ru',
        'tr',
        'ur',
        'vi',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when language+script codes are specified.
  switch (locale.languageCode) {
    case 'zh':
      {
        switch (locale.scriptCode) {
          case 'Hant':
            return AppLocalizationsZhHant();
        }
        break;
      }
  }

  // Lookup logic when language+country codes are specified.
  switch (locale.languageCode) {
    case 'pt':
      {
        switch (locale.countryCode) {
          case 'PT':
            return AppLocalizationsPtPt();
        }
        break;
      }
  }

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
