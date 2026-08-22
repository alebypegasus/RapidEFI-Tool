// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI Werkzeug';

  @override
  String get navHardware => 'Hardware';

  @override
  String get navManual => 'Manuelle EFI-Konfig';

  @override
  String get navProcess => 'EFI bearbeiten';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Verlauf';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get navAbout => 'Über';

  @override
  String get navSponsor => 'Entwickler unterstützen';

  @override
  String get btnRefresh => 'Aktualisieren';

  @override
  String get btnImportReport => 'Bericht importieren';

  @override
  String get btnExportReport => 'Bericht exportieren';

  @override
  String get btnExportAcpi => 'ACPI exportieren';

  @override
  String get btnEfiSettings => 'EFI-Einstellungen';

  @override
  String get btnExportEfi => 'EFI exportieren';

  @override
  String get btnGenerateEfi => 'EFI generieren';

  @override
  String get btnBrowse => 'Durchsuchen';

  @override
  String get btnChooseFile => 'Datei auswählen';

  @override
  String get btnCancel => 'Abbrechen';

  @override
  String get btnApply => 'Anwenden';

  @override
  String get btnSave => 'Speichern';

  @override
  String get btnClose => 'Schließen';

  @override
  String get btnCheckUpdates => 'Nach Updates suchen';

  @override
  String get btnChecking => 'Suche...';

  @override
  String get btnSelectAll => 'Alle auswählen';

  @override
  String get btnDeselectAll => 'Alle abwählen';

  @override
  String get btnCustomSsdt => 'Benutzerdefinierte SSDT';

  @override
  String get btnPrebuiltSsdt => 'Vorgefertigte SSDT';

  @override
  String get btnDumpAcpi => 'ACPI auslesen';

  @override
  String get btnSelectAcpis => 'ACPI auswählen';

  @override
  String get btnSelectConfig => 'config auswählen';

  @override
  String get btnMergeConfig => 'config zusammenführen';

  @override
  String get btnExecutePatch => 'Patch anwenden';

  @override
  String get btnOpenFolder => 'Ordner öffnen';

  @override
  String get hardwareReport => 'Hardware-Bericht';

  @override
  String get cpuArchitecture => 'Prozessor (CPU)';

  @override
  String get motherboardChipset => 'Mainboard & Chipsatz';

  @override
  String get graphicsDevice => 'Grafikkarte (GPU)';

  @override
  String get audioCodec => 'Audiocontroller';

  @override
  String get networkController => 'Netzwerk & WLAN';

  @override
  String get storageDevice => 'Speichergeräte';

  @override
  String get acpiTables => 'ACPI-Tabellen';

  @override
  String get compatibilityStatus => 'Kompatibilität';

  @override
  String get compatible => 'Unterstützt';

  @override
  String get unsupported => 'Nicht unterstützt';

  @override
  String get requiresPatch => 'Patch erforderlich';

  @override
  String get details => 'Details';

  @override
  String get showDetailedReport => 'Detailansicht';

  @override
  String get platformConfig => 'Plattform-Konfiguration';

  @override
  String get cpuVendor => 'CPU-Hersteller';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Formfaktor';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Laptop';

  @override
  String get nucMiniPc => 'NUC / Mini-PC';

  @override
  String get hedtServer => 'HEDT / Server';

  @override
  String get processorGen => 'Prozessorgeneration';

  @override
  String get targetMacOs => 'Ziel-macOS-Version';

  @override
  String get smbiosModel => 'Ziel-SMBIOS-Modell';

  @override
  String get motherboardSelector => 'Mainboard-Auswahl';

  @override
  String get brand => 'Marke';

  @override
  String get model => 'Modell';

  @override
  String get outputDirectory => 'Ausgabeverzeichnis';

  @override
  String get kextConfiguration => 'Kext-Konfiguration';

  @override
  String get bootArguments => 'Startargumente (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP aktiviert (00000000)';

  @override
  String get sipDisabled => 'SIP deaktiviert (03080000)';

  @override
  String get processEfiTitle => 'EFI bearbeiten & neu erstellen';

  @override
  String get chooseEfiPrompt =>
      'Wählen Sie einen EFI-Ordner oder eine configModel-Datei, um die Konfiguration zu laden';

  @override
  String get configModelFound => 'ConfigModel erfolgreich erkannt und geladen';

  @override
  String get rebuildEfi => 'EFI neu erstellen';

  @override
  String get ssdtGeneratorTitle => 'SSDT-Generator & ACPI-Patcher';

  @override
  String get corePatches => 'Haupt-Patches';

  @override
  String get recommendedPatches => 'Empfohlene Patches';

  @override
  String get optionalPatches => 'Optionale Patches';

  @override
  String get compilationComplete => 'Kompilierung abgeschlossen';

  @override
  String get mergeSuccess => 'Erfolgreich in EFI zusammengeführt';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher Integration';

  @override
  String get rootPatching => 'Root-Patching';

  @override
  String get graphicsAcceleration => 'Grafikbeschleunigung';

  @override
  String get wirelessFix => 'WLAN & Bluetooth Fix';

  @override
  String get postInstall => 'Schritte nach der Installation';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 Kompatibilitätsleitfaden';

  @override
  String get tahoeCompatibility => 'Tahoe 26 Kernel & Audio Anpassung';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get appLanguage => 'Sprache :';

  @override
  String get followSystem => 'Systemstandard';

  @override
  String get themeMode => 'Theme-Modus :';

  @override
  String get themeColor => 'Theme-Farbe :';

  @override
  String get appFont => 'App-Schriftart :';

  @override
  String get efiOptions => 'EFI-Optionen :';

  @override
  String get addThemeToEfi => 'OpenCore-Boot-Theme zur EFI hinzufügen';

  @override
  String get generateConfigModel => 'configModel-Datei im EFI-Ordner erstellen';

  @override
  String get compressZipEfi => 'EFI als ZIP-Datei komprimieren';

  @override
  String get checkForUpdates => 'Nach Updates suchen :';

  @override
  String currentVersion(String version) {
    return 'Aktuelle Version: $version';
  }

  @override
  String get copyrightNotice => 'Urheberrecht & Lizenz';

  @override
  String get exitAppTip => 'Erneut Zurück drücken zum Beenden';

  @override
  String get updateAvailable => 'Neue Version verfügbar';

  @override
  String versionTag(String version) {
    return 'Version: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Veröffentlichungsdatum: $date';
  }

  @override
  String get noUpdateFound => 'Sie verwenden die neueste Version';

  @override
  String get efiBuildSuccess => 'EFI erfolgreich generiert!';

  @override
  String get efiBuildFailed => 'EFI-Erstellung fehlgeschlagen';

  @override
  String get copiedToClipboard => 'In Zwischenablage kopiert';

  @override
  String get soundLayoutId => 'Audio Layout ID (alcid)';

  @override
  String get nvramBootArgs => 'Benutzerdefinierte boot-args';

  @override
  String get generateSerial => 'Seriennummer generieren';

  @override
  String get navManualTab => 'Manuelle EFI-Konfiguration';

  @override
  String get navAutoTab => 'Automatische EFI-Konfiguration';

  @override
  String get cpuSelection => 'Prozessor (CPU) Auswahl:';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Pentium- oder Celeron-Prozessoren erfordern CPU-Spoofing; bitte aktivieren!\nHinweis: Pentium/Celeron iGPUs werden in der Regel nicht unterstützt!';

  @override
  String get platformSelection => 'Plattform-Auswahl:';

  @override
  String get processorGeneration => 'Prozessorgeneration:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6K/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 Kerne / 12 Threads) erfordert spezifisches CPU-Spoofing';

  @override
  String get amdCoresTitle => 'AMD CPU-Kerne:';

  @override
  String get amdSpecialMb => 'AMD Spezielle Mainboards:';

  @override
  String get usePrecastMmio => 'Precast MMIO verwenden';

  @override
  String get useRyzenGpu => 'Ryzen iGPU Unterstützung aktivieren (NootedRed)';

  @override
  String get motherboardBrand => 'Mainboard-Hersteller:';

  @override
  String get motherboardModel => 'Mainboard-Modell:';

  @override
  String get customMotherboard => 'Benutzerdefiniertes / Generisches Mainboard';

  @override
  String get igpuConfig => 'iGPU-Konfiguration:';

  @override
  String get dgpuConfig => 'dGPU-Konfiguration:';

  @override
  String get audioConfig => 'Audio-Konfiguration:';

  @override
  String get audioCodecFix => 'Audio-Codec & Layout-ID';

  @override
  String get fixIrq => 'IRQ-Konflikte beheben';

  @override
  String get networkConfig => 'Netzwerk- & WLAN-Konfiguration:';

  @override
  String get laptopDrivers => 'Laptop-Treiber:';

  @override
  String get touchpadDriver => 'Touchpad-Treiber (I2C / PS2)';

  @override
  String get smbiosSelection => 'Ziel-SMBIOS-Modell:';

  @override
  String get targetMacOsVersion => 'Ziel-macOS-Version:';

  @override
  String get bootArgsTitle => 'Startargumente (boot-args):';

  @override
  String get csrActiveConfigTitle => 'Systemintegritätsschutz (SIP):';

  @override
  String get outputEfiTitle => 'EFI-Ausgabeordner:';

  @override
  String get selectOutputFolder => 'Ausgabeordner wählen';

  @override
  String get clearConfig => 'Konfiguration leeren';

  @override
  String get importConfigModel => 'configModel importieren';

  @override
  String get importingConfigModel => 'configModel wird importiert...';

  @override
  String get dragDropConfigModel =>
      'configModel-Datei hierher ziehen\noder zum Durchsuchen klicken';

  @override
  String get clearAllHistory => 'Gesamten Verlauf löschen';

  @override
  String get clearingHistory => 'Verlauf wird gelöscht...';

  @override
  String get noHistoryRecords => 'Noch keine Verlaufseinträge vorhanden';

  @override
  String get overview => 'Übersicht';

  @override
  String get platformPatches => 'Plattform-Patches';

  @override
  String get audioPatches => 'Audio-Patches';

  @override
  String get gpuSpoofing => 'GPU-Spoofing';

  @override
  String get disableDevices => 'Geräte deaktivieren';

  @override
  String get brightnessPatches => 'Helligkeits-Patches';

  @override
  String get graphicsPatches => 'Grafik-Patches';

  @override
  String get wifiPatches => 'WLAN-Patches';

  @override
  String get documentationGuides => 'Dokumentation & Anleitungen';

  @override
  String get aboutSupport => 'Über & Support';

  @override
  String get hardwareTabTitle => 'Hardware-Konfiguration';

  @override
  String get acpiFolderTitle => 'ACPI-Ordner';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Daten werden geladen...';

  @override
  String get configuringEfiWait => 'EFI wird konfiguriert, bitte warten...';

  @override
  String get summary => 'Zusammenfassung';

  @override
  String get recent => 'Zuletzt verwendet';

  @override
  String get efiConfig => 'EFI-Konfig';

  @override
  String get toolsAndGuides => 'Werkzeuge & Anleitungen';

  @override
  String get checkUpdates => 'Nach Updates suchen';

  @override
  String get sponsorDeveloper => 'Entwickler unterstützen';

  @override
  String get releaseNotes => 'Versionshinweise';

  @override
  String get searchPlaceholder => 'Suchen';
}
