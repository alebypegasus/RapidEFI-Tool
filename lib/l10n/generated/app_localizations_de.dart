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

  @override
  String get initialSupportMacOs =>
      'Ursprünglich nativ unterstützte macOS-Version:';

  @override
  String get lastSupportMacOs => 'Neueste nativ unterstützte macOS-Version:';

  @override
  String get oclpSupportMacOs =>
      'Über OCLP-Patch unterstützte macOS-Versionen:';

  @override
  String get cpuInfoTitle => '[CPU-Informationen]:';

  @override
  String get biosRecommendedEnabled =>
      '[Empfohlene BIOS-Einstellungen - Aktiviert]:';

  @override
  String get biosRecommendedDisabled =>
      '[Empfohlene BIOS-Einstellungen - Deaktiviert]:';

  @override
  String get historyExpanderDesc =>
      'Mit RapidEFI generierte EFIs werden automatisch im Verlauf gesichert.\nSie können jedes zuvor erstellte EFI jederzeit neu laden und anpassen.\n\nDiese Funktion wird ab RapidEFI V3.0.0 unterstützt.';

  @override
  String get gpuPresets => 'Voreinstellungen';

  @override
  String get gpuByCpuModel => 'Nach CPU-Modell';

  @override
  String get selectCpuGeneration => 'Generation auswählen';

  @override
  String get selectCpuModel => 'CPU auswählen';

  @override
  String get cpuGenerationLabel => 'CPU-Generation';

  @override
  String get cpuModelLabel => 'CPU-Modell';

  @override
  String get matchingIgpuTip =>
      'Ankreuzen wenn passend, sonst unangekreuzt lassen';

  @override
  String get selectPropertiesToApply => 'Eigenschaften zum Anwenden auswählen';

  @override
  String get motherboardConfigTitle => 'Motherboard-Modellkonfiguration:';

  @override
  String get motherboardConfigItems =>
      'Konfigurationselemente zum Anwenden auswählen';

  @override
  String get selectModelToConfigure => '(Modell zum Konfigurieren auswählen)';

  @override
  String get pleaseSelect => 'Bitte auswählen';

  @override
  String get selectAllDeselectAll => 'Alle auswählen / abwählen';

  @override
  String get deselectAll => 'Alle abwählen';

  @override
  String get stuckOnEbFix =>
      'Korrektur für Hängenbleiben bei [EB] (Optional - Standardwerte empfohlen):';

  @override
  String get renameCurrentEfi => 'Aktuelles EFI umbenennen';

  @override
  String get enterNewName => 'Neuen Namen eingeben';

  @override
  String get renameEfiTooltip => 'EFI umbenennen';

  @override
  String get adminPrivilegesRequired => 'Administratorrechte erforderlich';

  @override
  String get enterLoginPassword =>
      'Bitte geben Sie Ihr Computer-Anmeldekennwort ein';

  @override
  String get importHardwareMaterials => 'Hardware-Materialien importieren';

  @override
  String get currentBiosSettings => 'Aktuelle BIOS-Einstellungen';

  @override
  String get colorTheme => 'Farbdesign';

  @override
  String get noValidHardwareReport =>
      'Keine gültige Hardware-Berichtsdatei erkannt';

  @override
  String get viewOnGitHub => 'Auf GitHub ansehen';

  @override
  String get downloadNow => 'Jetzt herunterladen';

  @override
  String get btnConfirm => 'Bestätigen';

  @override
  String get btnDeleteRecord => 'Diesen Datensatz löschen';

  @override
  String get currentEfiNamePrefix => 'Aktueller EFI-Name: ';

  @override
  String get close => 'Schließen';

  @override
  String get applySelected => 'Ausgewählte anwenden';

  @override
  String get connectedGpuPrefix => 'Verbundene GPU: ';

  @override
  String get requiresSpoofIdPrefix => 'Erfordert Spoof-ID: ';

  @override
  String get selectPlatform => 'Plattform-Generation';

  @override
  String get selectVendor => 'Marke';

  @override
  String get selectModel => 'Motherboard-Modell';

  @override
  String get btnImport => 'Importieren';

  @override
  String get defaultLabel => 'Standard';

  @override
  String get wifiBluetoothDrivers => 'WLAN- & Bluetooth-Treiber:';

  @override
  String get noWifiDriversByDefault =>
      '(Standardmäßig sind keine WLAN-Treiber konfiguriert)';

  @override
  String get getIntelModifiedOclp => 'Intel-modifiziertes OCLP herunterladen';

  @override
  String get forLaptopSystems => '(Für Laptop-Systeme)';

  @override
  String get basicConfig => 'Grundkonfiguration';

  @override
  String get advancedConfig => 'Erweiterte Konfiguration';

  @override
  String get portCustomization => 'Portanpassung';

  @override
  String get displayEdid => 'EDID anzeigen';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'AMD dGPU-Parodie';

  @override
  String get intelWifi => 'Intel Wi-Fi';

  @override
  String get broadcomBrcm => 'Broadcom (Brcm)';

  @override
  String get atherosWifi => 'Atheros';

  @override
  String get usbWifi => 'USB-WLAN';

  @override
  String get bluetoothDrivers => 'Bluetooth-Treiber';

  @override
  String get debuggingTab => 'Debuggen';

  @override
  String get amfiSipTab => 'AMFI / SIP';

  @override
  String get igpuFixesTab => 'iGPU-Korrekturen';

  @override
  String get dgpuFixesTab => 'dGPU-Korrekturen';

  @override
  String get blackScreenFixesTab => 'Fehlerbehebungen für schwarze Bildschirme';

  @override
  String get above4gTab => 'Über 4G-Dekodierung';

  @override
  String get trackpadFixesTab => 'Trackpad-Korrekturen';

  @override
  String get othersTab => 'Andere';

  @override
  String get powerManagementTab => 'Energieverwaltung';

  @override
  String get sleepHibernationTab => 'Schlaf / Winterschlaf';

  @override
  String get storageDiskTab => 'Speicher / Festplatte';

  @override
  String get cpuFixesTab => 'CPU-Korrekturen';

  @override
  String get amdPlatformTab => 'AMD-Plattform';

  @override
  String get usbFixesTab => 'USB-Korrekturen';

  @override
  String get sdCardTab => 'SD-Karte';

  @override
  String get brandTab => 'Marke';

  @override
  String get specialMotherboardTab => 'Spezielles Motherboard';

  @override
  String get sipSettingsTab => 'SIP-Einstellungen';

  @override
  String get renameCpuTab => 'CPU umbenennen';

  @override
  String get uiScaleTab => 'UI-Skala';

  @override
  String get acpiConfigTab => 'ACPI-Konfiguration';

  @override
  String get booterConfigTab => 'Booter-Konfiguration';

  @override
  String get kernelConfigTab => 'Kernel-Konfiguration';

  @override
  String get uefiConfigTab => 'UEFI-Konfiguration';

  @override
  String get lookupLayoutId => 'Lookup-Layout-ID';

  @override
  String get visitChris1111Repo => 'Besuchen Sie das chris1111-Repository';

  @override
  String get supportedMacOsVersions => 'Unterstützte macOS-Versionen:';

  @override
  String get supportedUsbWifiChipsets => 'Unterstützte USB-WLAN-Chipsätze:';

  @override
  String get selectUtbMap => 'Wählen Sie UTBMap aus';

  @override
  String get selectUtbMapHint =>
      'Wählen Sie die zugeordnete UTBMap.kext aus, die mit USBToolBox erstellt wurde';

  @override
  String get reprocessEfiSubtitle =>
      '(Ein von RapidEFI generiertes EFI erneut verarbeiten)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI gibt automatisch eine configModel-Datei im EFI-Ordner aus. Importieren Sie diese Datei unten, um Ihre EFI-Konfiguration neu zu laden und anzupassen.';

  @override
  String get reprocessEfiVersionNote =>
      'Diese Funktion wird von RapidEFI V3.0.0 und höher unterstützt.';

  @override
  String get dropConfigModelHint =>
      'Legen Sie die configModel-Datei hier ab oder klicken Sie zum Durchsuchen';

  @override
  String get offLabel => 'Aus';

  @override
  String get onLabel => 'An';

  @override
  String get githubRepository => 'GitHub-Repository';

  @override
  String get releasesAndUpdates => 'Veröffentlichungen und Updates';

  @override
  String get projectDocumentation => 'Projektdokumentation';

  @override
  String get aboutSupportDetails =>
      'RapidEFI ist ein Open-Source-, automatisierter OpenCore-EFI-Generator, ACPI/SSDT-Patcher und Hardware-Analysetool, das für Hackintosh- und macOS-Enthusiasten entwickelt wurde.\n\nMit Liebe erstellt und gepflegt. Markieren und forken Sie das Projekt auf GitHub, um die weitere Entwicklung zu unterstützen!';

  @override
  String get checkApplicableOptions =>
      '(Überprüfen Sie die anwendbaren Optionen)';

  @override
  String get optionalCheckApplicableOptions =>
      '(Optional – prüfen Sie die anwendbaren Optionen)';

  @override
  String get appleAlcUsedByDefault =>
      '(AppleALC-Treiber wird standardmäßig verwendet)';

  @override
  String get noEthernetDriverByDefault =>
      '(Standardmäßig ist kein Ethernet-Treiber hinzugefügt)';

  @override
  String get usbInjectAllByDefault =>
      '(USBInjectAll wird standardmäßig verwendet)';

  @override
  String get verboseModeByDefault =>
      '(-v ausführlicher Modus standardmäßig aktiviert; zum Deaktivieren deaktivieren)';

  @override
  String get optionalDriversSubtitle =>
      '(Optionale Treiber – nicht erforderlich, sofern nicht erforderlich)';

  @override
  String get keepDefaultsSubtitle =>
      '(Behalten Sie die Standardeinstellungen bei, es sei denn, es sind spezielle Anpassungen erforderlich.)';

  @override
  String get optionalCheckDeviceBrand =>
      'Optional – Überprüfen Sie, ob die Marke Ihres Geräts übereinstimmt';

  @override
  String get optionalCheckMotherboardModel =>
      'Optional – Überprüfen Sie, ob das Motherboard-Modell übereinstimmt';

  @override
  String get optionalConfigureSip =>
      'Optional – SIP nach Bedarf konfigurieren (standardmäßig deaktiviert)';

  @override
  String get optionalCustomCpuName => 'Optional – Benutzerdefinierter CPU-Name';

  @override
  String get optionalAdjustUiScale =>
      'Optional – Passen Sie die Skalierung der OpenCore-Boot-Benutzeroberfläche an';

  @override
  String get acpiSsdtPatches => 'ACPI – SSDT-Patches';

  @override
  String get acpiPatches => 'ACPI – Patches';

  @override
  String get kernelPatches => 'Kernel – Patches';

  @override
  String get powerManagement => 'Energieverwaltung';

  @override
  String get ssdApfsTrimPolicy => 'NVMe/SATA SSD APFS-Trim-Richtlinie';

  @override
  String get kernelQuirksSubtitle =>
      'Kernel – Macken (Standardeinstellungen empfohlen, sofern keine spezifischen Korrekturen erforderlich sind)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI – Treiber (Standardkonfigurationen beibehalten, sofern keine besonderen Anforderungen bestehen)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI – Ausgabe (Standardeinstellungen empfohlen)';

  @override
  String get method1Title =>
      'Methode 1: „GPRW in XPRW“ umbenennen (Instant Wake Fix)';

  @override
  String get method2Title =>
      'Methode 2: „UPRW in XPRW“ umbenennen (Instant Wake Fix)';

  @override
  String get method3Title =>
      'Methode 3: „RTC Fix“ umbenennen (RTC Power Off / CMOS Reset beheben)';

  @override
  String get method4Title =>
      'Methode 4: „Battery Fix“ umbenennen (Unterstützung von 16-Bit- bis 8-Bit-Batterie-Patches)';

  @override
  String get pciPathLabel => 'dGPU-PCI-Pfad:';

  @override
  String get pciPathPlaceholder => 'Geben Sie den PCI-Pfad ein';

  @override
  String get spoofedDeviceIdLabel => 'Gefälschte Geräte-ID:';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'Wählen Sie das zu fälschende GPU-Gerät aus';

  @override
  String get injectDisplayEdidLabel =>
      'Inject Display EDID (normalerweise 256 oder 512 Hexadezimalzeichen):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'Geben Sie die Anzeige-EDID ein (normalerweise 256 oder 512 Hexadezimalzeichen; Leerzeichen und Zeilenumbrüche sind zulässig).';

  @override
  String get failed => 'Fehlgeschlagen';

  @override
  String get method1 => 'Methode 1';

  @override
  String get method2 => 'Methode 2';

  @override
  String get method3 => 'Methode 3';

  @override
  String get method4 => 'Methode 4';

  @override
  String get optionalKextDrivers => 'Optionale Kext-Treiber';

  @override
  String get optionalKextSubTitle =>
      'Wählen Sie optionale Kext-Treiber entsprechend Ihrer Hardware';

  @override
  String get brandConfigTab => 'Marke';

  @override
  String get optionalSettings => 'Optionale Einstellungen';

  @override
  String get optionalSettingsSubTitle =>
      'Wählen Sie zusätzliche optionale Konfigurationen aus';

  @override
  String get optionalCheckMotherboard => 'Spezielle Mainboard-Optionen';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI gibt automatisch eine configModel-Datei im EFI-Ordner aus.\nImportieren Sie diese Datei unten, um Ihre EFI-Konfiguration neu zu laden und anzupassen.\n\nDiese Funktion wird ab RapidEFI V3.0.0 unterstützt.';

  @override
  String get releaseToReimportConfigModel =>
      'Loslassen, um configModel erneut zu importieren';

  @override
  String get invalidConfigFileMessage =>
      'Ungültige Konfigurationsdatei. Bitte wählen Sie eine gültige configModel-Datei aus.';

  @override
  String get ethernetTitle => 'Ethernet-Treiber:';

  @override
  String get usbTitle => 'USB-Treiber:';

  @override
  String get ssdtCoreOfficial => '* Kern (Offiziell)';

  @override
  String get ssdtRecommendedFixes => '* Empfohlen (Fehlerbehebungen)';

  @override
  String get ssdtOptionalEnhancements => '* Optional (Erweiterungen)';

  @override
  String get platformDesktop => 'Desktop';

  @override
  String get platformLaptop => 'Laptop';

  @override
  String get platformNucMini => 'NUC / Mini-PC';

  @override
  String get platformHedtServer => 'HEDT / Server';
}
