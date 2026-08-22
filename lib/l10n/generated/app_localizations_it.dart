// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - Strumento EFI OpenCore';

  @override
  String get navHardware => 'Hardware';

  @override
  String get navManual => 'Config Manuale EFI';

  @override
  String get navProcess => 'Modifica EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Cronologia';

  @override
  String get navSettings => 'Impostazioni';

  @override
  String get navAbout => 'Informazioni';

  @override
  String get navSponsor => 'Supporta lo Sviluppatore';

  @override
  String get btnRefresh => 'Aggiorna';

  @override
  String get btnImportReport => 'Importa Report';

  @override
  String get btnExportReport => 'Esporta Report';

  @override
  String get btnExportAcpi => 'Esporta ACPI';

  @override
  String get btnEfiSettings => 'Impostazioni EFI';

  @override
  String get btnExportEfi => 'Esporta EFI';

  @override
  String get btnGenerateEfi => 'Genera EFI';

  @override
  String get btnBrowse => 'Sfoglia';

  @override
  String get btnChooseFile => 'Scegli File';

  @override
  String get btnCancel => 'Annulla';

  @override
  String get btnApply => 'Applica';

  @override
  String get btnSave => 'Salva';

  @override
  String get btnClose => 'Chiudi';

  @override
  String get btnCheckUpdates => 'Controlla Aggiornamenti';

  @override
  String get btnChecking => 'Controllo...';

  @override
  String get btnSelectAll => 'Seleziona Tutto';

  @override
  String get btnDeselectAll => 'Deseleziona Tutto';

  @override
  String get btnCustomSsdt => 'SSDT Personalizzato';

  @override
  String get btnPrebuiltSsdt => 'SSDT Precompilato';

  @override
  String get btnDumpAcpi => 'Estrai ACPI';

  @override
  String get btnSelectAcpis => 'Seleziona ACPI';

  @override
  String get btnSelectConfig => 'Seleziona config';

  @override
  String get btnMergeConfig => 'Unisci config';

  @override
  String get btnExecutePatch => 'Applica Patch';

  @override
  String get btnOpenFolder => 'Apri Cartella';

  @override
  String get hardwareReport => 'Report Hardware';

  @override
  String get cpuArchitecture => 'Processore (CPU)';

  @override
  String get motherboardChipset => 'Scheda Madre & Chipset';

  @override
  String get graphicsDevice => 'Grafica (GPU)';

  @override
  String get audioCodec => 'Controller Audio';

  @override
  String get networkController => 'Rete & Wi-Fi';

  @override
  String get storageDevice => 'Dispositivi di Archiviazione';

  @override
  String get acpiTables => 'Tabelle ACPI';

  @override
  String get compatibilityStatus => 'Compatibilità';

  @override
  String get compatible => 'Supportato';

  @override
  String get unsupported => 'Non Supportato';

  @override
  String get requiresPatch => 'Richiede Patch';

  @override
  String get details => 'Dettagli';

  @override
  String get showDetailedReport => 'Vista Dettagliata';

  @override
  String get platformConfig => 'Configurazione Piattaforma';

  @override
  String get cpuVendor => 'Produttore CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Fattore di Forma';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Portatile';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Server';

  @override
  String get processorGen => 'Generazione Processore';

  @override
  String get targetMacOs => 'Versione macOS di Destinazione';

  @override
  String get smbiosModel => 'Modello SMBIOS di Destinazione';

  @override
  String get motherboardSelector => 'Selezione Scheda Madre';

  @override
  String get brand => 'Marca';

  @override
  String get model => 'Modello';

  @override
  String get outputDirectory => 'Cartella di Output';

  @override
  String get kextConfiguration => 'Configurazione Kext';

  @override
  String get bootArguments => 'Argomenti di Avvio (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Abilitato (00000000)';

  @override
  String get sipDisabled => 'SIP Disabilitato (03080000)';

  @override
  String get processEfiTitle => 'Modifica & Ricostruisci EFI';

  @override
  String get chooseEfiPrompt =>
      'Seleziona una cartella EFI o un file configModel per caricare la configurazione';

  @override
  String get configModelFound => 'ConfigModel rilevato e caricato con successo';

  @override
  String get rebuildEfi => 'Ricostruisci EFI';

  @override
  String get ssdtGeneratorTitle => 'Generatore SSDT & Patcher ACPI';

  @override
  String get corePatches => 'Patch Principali';

  @override
  String get recommendedPatches => 'Patch Raccomandate';

  @override
  String get optionalPatches => 'Patch Opzionali';

  @override
  String get compilationComplete => 'Compilazione Completata';

  @override
  String get mergeSuccess => 'Integrato nella EFI con successo';

  @override
  String get oclpTitle => 'Integrazione OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Root Patching';

  @override
  String get graphicsAcceleration => 'Accelerazione Grafica';

  @override
  String get wirelessFix => 'Correzione Wi-Fi & Bluetooth';

  @override
  String get postInstall => 'Passaggi Post-Installazione';

  @override
  String get tahoeGuideTitle => 'Guida alla Compatibilità macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Adattamento Kernel & Audio Tahoe 26';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get appLanguage => 'Lingua :';

  @override
  String get followSystem => 'Segui il Sistema';

  @override
  String get themeMode => 'Modalità Tema :';

  @override
  String get themeColor => 'Colore Tema :';

  @override
  String get appFont => 'Carattere App :';

  @override
  String get efiOptions => 'Opzioni EFI :';

  @override
  String get addThemeToEfi => 'Aggiungi tema di avvio OpenCore all\'EFI';

  @override
  String get generateConfigModel =>
      'Genera file configModel nella cartella EFI';

  @override
  String get compressZipEfi => 'Comprimi EFI in file ZIP';

  @override
  String get checkForUpdates => 'Controlla Aggiornamenti :';

  @override
  String currentVersion(String version) {
    return 'Versione corrente: $version';
  }

  @override
  String get copyrightNotice => 'Copyright & Licenza';

  @override
  String get exitAppTip => 'Premi indietro di nuovo per uscire';

  @override
  String get updateAvailable => 'Nuova versione disponibile';

  @override
  String versionTag(String version) {
    return 'Versione: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Data di Rilascio: $date';
  }

  @override
  String get noUpdateFound => 'Stai utilizzando la versione più recente';

  @override
  String get efiBuildSuccess => 'EFI generata con successo!';

  @override
  String get efiBuildFailed => 'Generazione EFI non riuscita';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get soundLayoutId => 'ID Layout Audio (alcid)';

  @override
  String get nvramBootArgs => 'boot-args personalizzati';

  @override
  String get generateSerial => 'Genera Numero di Serie';

  @override
  String get navManualTab => 'Configurazione Manuale EFI';

  @override
  String get navAutoTab => 'Configurazione Automatica EFI';

  @override
  String get cpuSelection => 'Selezione Processore (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'I processori Pentium o Celeron richiedono lo spoofing della CPU; si prega di abilitarlo!\nNota: le iGPU Pentium/Celeron generalmente non sono supportate!';

  @override
  String get platformSelection => 'Selezione Piattaforma:';

  @override
  String get processorGeneration => 'Generazione Processore:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 core / 12 thread) richiede uno spoofing CPU specifico';

  @override
  String get amdCoresTitle => 'Core CPU AMD:';

  @override
  String get amdSpecialMb => 'Schede Madri Speciali AMD:';

  @override
  String get usePrecastMmio => 'Usa MMIO Precast';

  @override
  String get useRyzenGpu => 'Abilita Supporto iGPU Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Marca Scheda Madre:';

  @override
  String get motherboardModel => 'Modello Scheda Madre:';

  @override
  String get customMotherboard => 'Scheda Madre Generica / Personalizzata';

  @override
  String get igpuConfig => 'Configurazione iGPU:';

  @override
  String get dgpuConfig => 'Configurazione dGPU:';

  @override
  String get audioConfig => 'Configurazione Audio:';

  @override
  String get audioCodecFix => 'Codec Audio & Layout ID';

  @override
  String get fixIrq => 'Correggi Conflitti IRQ';

  @override
  String get networkConfig => 'Configurazione Rete e Wi-Fi:';

  @override
  String get laptopDrivers => 'Driver per Portatile:';

  @override
  String get touchpadDriver => 'Driver Touchpad (I2C / PS2)';

  @override
  String get smbiosSelection => 'Modello SMBIOS di Destinazione:';

  @override
  String get targetMacOsVersion => 'Versione macOS di Destinazione:';

  @override
  String get bootArgsTitle => 'Argomenti di Avvio (boot-args):';

  @override
  String get csrActiveConfigTitle => 'Protezione Integrità di Sistema (SIP):';

  @override
  String get outputEfiTitle => 'Cartella di Output EFI:';

  @override
  String get selectOutputFolder => 'Seleziona Cartella di Output';

  @override
  String get clearConfig => 'Cancella Configurazione';

  @override
  String get importConfigModel => 'Importa configModel';

  @override
  String get importingConfigModel => 'Importazione configModel...';

  @override
  String get dragDropConfigModel =>
      'Trascina e rilascia il file configModel qui\noppure clicca per sfogliare';

  @override
  String get clearAllHistory => 'Cancella Tutta la Cronologia';

  @override
  String get clearingHistory => 'Cancellazione cronologia...';

  @override
  String get noHistoryRecords => 'Nessun record nella cronologia';

  @override
  String get overview => 'Panoramica';

  @override
  String get platformPatches => 'Patch di Piattaforma';

  @override
  String get audioPatches => 'Patch Audio';

  @override
  String get gpuSpoofing => 'Spoofing GPU';

  @override
  String get disableDevices => 'Disabilita Dispositivi';

  @override
  String get brightnessPatches => 'Patch Luminosità';

  @override
  String get graphicsPatches => 'Patch Grafiche';

  @override
  String get wifiPatches => 'Patch Wi-Fi';

  @override
  String get documentationGuides => 'Documentazione & Guide';

  @override
  String get aboutSupport => 'Informazioni & Supporto';

  @override
  String get hardwareTabTitle => 'Configurazione Hardware';

  @override
  String get acpiFolderTitle => 'Cartella ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Caricamento dati...';

  @override
  String get configuringEfiWait => 'Configurazione EFI in corso, attendere...';

  @override
  String get summary => 'Riepilogo';

  @override
  String get recent => 'Recente';

  @override
  String get efiConfig => 'Config EFI';

  @override
  String get toolsAndGuides => 'Strumenti & Guide';

  @override
  String get checkUpdates => 'Controlla Aggiornamenti';

  @override
  String get sponsorDeveloper => 'Supporta lo Sviluppatore';

  @override
  String get releaseNotes => 'Note di Rilascio';

  @override
  String get searchPlaceholder => 'Cerca';

  @override
  String get initialSupportMacOs =>
      'Versione iniziale di macOS supportata nativamente:';

  @override
  String get lastSupportMacOs =>
      'Ultima versione di macOS supportata nativamente:';

  @override
  String get oclpSupportMacOs =>
      'Versioni di macOS supportate tramite patch OCLP:';

  @override
  String get cpuInfoTitle => '[Informazioni CPU]:';

  @override
  String get biosRecommendedEnabled =>
      '[Impostazioni consigliate del BIOS - Abilitate]:';

  @override
  String get biosRecommendedDisabled =>
      '[Impostazioni consigliate del BIOS - Disabilitate]:';

  @override
  String get historyExpanderDesc =>
      'Gli EFI generati con RapidEFI vengono automaticamente salvati nella cronologia.\nÈ possibile ricaricare e modificare qualsiasi EFI generato in precedenza in qualsiasi momento.\n\nQuesta funzionalità è supportata a partire da RapidEFI V3.0.0.';

  @override
  String get gpuPresets => 'Predefiniti';

  @override
  String get gpuByCpuModel => 'Per modello CPU';

  @override
  String get selectCpuGeneration => 'Seleziona generazione';

  @override
  String get selectCpuModel => 'Seleziona CPU';

  @override
  String get cpuGenerationLabel => 'Generazione CPU';

  @override
  String get cpuModelLabel => 'Modello CPU';

  @override
  String get matchingIgpuTip =>
      'Spunta se corrispondente, altrimenti lascia deselezionato';

  @override
  String get selectPropertiesToApply => 'Seleziona le proprietà da applicare';

  @override
  String get motherboardConfigTitle => 'Configurazione modello scheda madre:';

  @override
  String get motherboardConfigItems =>
      'Seleziona gli elementi di configurazione da applicare';

  @override
  String get selectModelToConfigure => '(Seleziona modello da configurare)';

  @override
  String get pleaseSelect => 'Si prega di selezionare';

  @override
  String get selectAllDeselectAll => 'Seleziona / Deseleziona tutto';

  @override
  String get deselectAll => 'Deseleziona tutto';

  @override
  String get stuckOnEbFix =>
      'Risoluzione blocco su [EB] (Opzionale - consigliati i valori predefiniti):';

  @override
  String get renameCurrentEfi => 'Rinomina EFI corrente';

  @override
  String get enterNewName => 'Inserisci nuovo nome';

  @override
  String get renameEfiTooltip => 'Rinomina EFI';

  @override
  String get adminPrivilegesRequired => 'Privilegi di amministratore richiesti';

  @override
  String get enterLoginPassword =>
      'Inserisci la password di accesso del computer';

  @override
  String get importHardwareMaterials => 'Importa dati hardware';

  @override
  String get currentBiosSettings => 'Impostazioni BIOS correnti';

  @override
  String get colorTheme => 'Tema colore';

  @override
  String get noValidHardwareReport =>
      'Nessun file di report hardware valido rilevato';

  @override
  String get viewOnGitHub => 'Visualizza su GitHub';

  @override
  String get downloadNow => 'Scarica ora';

  @override
  String get btnConfirm => 'Conferma';

  @override
  String get btnDeleteRecord => 'Elimina questo record';

  @override
  String get currentEfiNamePrefix => 'Nome EFI corrente: ';

  @override
  String get close => 'Chiudi';

  @override
  String get applySelected => 'Applica selezionati';

  @override
  String get connectedGpuPrefix => 'GPU collegata: ';

  @override
  String get requiresSpoofIdPrefix => 'Richiede Spoof ID: ';

  @override
  String get selectPlatform => 'Generazione piattaforma';

  @override
  String get selectVendor => 'Marca';

  @override
  String get selectModel => 'Modello scheda madre';

  @override
  String get btnImport => 'Importa';

  @override
  String get defaultLabel => 'Predefinito';

  @override
  String get wifiBluetoothDrivers => 'Driver Wi-Fi e Bluetooth:';

  @override
  String get noWifiDriversByDefault =>
      '(Nessun driver Wi-Fi configurato per impostazione predefinita)';

  @override
  String get getIntelModifiedOclp => 'Ottieni OCLP modificato per Intel';

  @override
  String get forLaptopSystems => '(Per sistemi portatili)';

  @override
  String get basicConfig => 'Configurazione di base';

  @override
  String get advancedConfig => 'Configurazione avanzata';

  @override
  String get portCustomization => 'Personalizzazione delle porte';

  @override
  String get displayEdid => 'Visualizza EDID';

  @override
  String get nvidiaDgpu => 'GPU NVIDIA';

  @override
  String get amdDgpu => 'GPU AMD';

  @override
  String get amdDgpuSpoof => 'Spoofing AMD dGPU';

  @override
  String get intelWifi => 'Wi-Fi Intel';

  @override
  String get broadcomBrcm => 'Broadcom (Brcm)';

  @override
  String get atherosWifi => 'Ateros';

  @override
  String get usbWifi => 'Wi-Fi USB';

  @override
  String get bluetoothDrivers => 'Driver Bluetooth';

  @override
  String get debuggingTab => 'Debug';

  @override
  String get amfiSipTab => 'AMFI/SIP';

  @override
  String get igpuFixesTab => 'Correzioni iGPU';

  @override
  String get dgpuFixesTab => 'Correzioni dGPU';

  @override
  String get blackScreenFixesTab => 'Correzioni per lo schermo nero';

  @override
  String get above4gTab => 'Sopra la decodifica 4G';

  @override
  String get trackpadFixesTab => 'Correzioni del trackpad';

  @override
  String get othersTab => 'Altri';

  @override
  String get powerManagementTab => 'Gestione dell\'energia';

  @override
  String get sleepHibernationTab => 'Sonno/Ibernazione';

  @override
  String get storageDiskTab => 'Archiviazione/Disco';

  @override
  String get cpuFixesTab => 'Correzioni della CPU';

  @override
  String get amdPlatformTab => 'Piattaforma AMD';

  @override
  String get usbFixesTab => 'Correzioni USB';

  @override
  String get sdCardTab => 'Scheda SD';

  @override
  String get brandTab => 'Marca';

  @override
  String get specialMotherboardTab => 'Scheda madre speciale';

  @override
  String get sipSettingsTab => 'Impostazioni SIP';

  @override
  String get renameCpuTab => 'Rinominare la CPU';

  @override
  String get uiScaleTab => 'Scala dell\'interfaccia utente';

  @override
  String get acpiConfigTab => 'Configurazione ACPI';

  @override
  String get booterConfigTab => 'Configurazione avvio';

  @override
  String get kernelConfigTab => 'Configurazione del kernel';

  @override
  String get uefiConfigTab => 'Configurazione UEFI';

  @override
  String get lookupLayoutId => 'Cerca ID layout';

  @override
  String get visitChris1111Repo => 'Visita il repository chris1111';

  @override
  String get supportedMacOsVersions => 'Versioni macOS supportate:';

  @override
  String get supportedUsbWifiChipsets => 'Chipset Wi-Fi USB supportati:';

  @override
  String get selectUtbMap => 'Seleziona UTBMappa';

  @override
  String get selectUtbMapHint =>
      'Seleziona UTBMap.kext mappato creato con USBToolBox';

  @override
  String get reprocessEfiSubtitle => '(Rielabora un EFI generato da RapidEFI)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI genera automaticamente un file configModel all\'interno della cartella EFI. Importa questo file qui sotto per ricaricare e personalizzare la tua configurazione EFI.';

  @override
  String get reprocessEfiVersionNote =>
      'Questa funzionalità è supportata su RapidEFI V3.0.0 e versioni successive.';

  @override
  String get dropConfigModelHint =>
      'Rilascia qui il file configModel o fai clic per sfogliare';

  @override
  String get offLabel => 'Spento';

  @override
  String get onLabel => 'SU';

  @override
  String get githubRepository => 'Repository GitHub';

  @override
  String get releasesAndUpdates => 'Rilasci e aggiornamenti';

  @override
  String get projectDocumentation => 'Documentazione del progetto';

  @override
  String get aboutSupportDetails =>
      'RapidEFI è un generatore EFI OpenCore automatizzato open source, un patcher ACPI/SSDT e uno strumento di analisi hardware creato per gli appassionati di Hackintosh e macOS.\n\nCreato e mantenuto con amore. Specializza e dividi il progetto su GitHub per supportare lo sviluppo continuo!';

  @override
  String get checkApplicableOptions => '(Verifica le opzioni applicabili)';

  @override
  String get optionalCheckApplicableOptions =>
      '(Facoltativo: controlla le opzioni applicabili)';

  @override
  String get appleAlcUsedByDefault =>
      '(driver AppleALC utilizzato per impostazione predefinita)';

  @override
  String get noEthernetDriverByDefault =>
      '(Nessun driver Ethernet aggiunto per impostazione predefinita)';

  @override
  String get usbInjectAllByDefault =>
      '(USBInjectAll utilizzato per impostazione predefinita)';

  @override
  String get verboseModeByDefault =>
      '(-v modalità dettagliata abilitata per impostazione predefinita; deseleziona per disabilitare)';

  @override
  String get optionalDriversSubtitle =>
      '(Driver opzionali: non necessari se non richiesti)';

  @override
  String get keepDefaultsSubtitle =>
      '(Mantieni le impostazioni predefinite a meno che non sia necessaria una personalizzazione specifica)';

  @override
  String get optionalCheckDeviceBrand =>
      'Facoltativo: controlla se la marca del tuo dispositivo corrisponde';

  @override
  String get optionalCheckMotherboardModel =>
      'Opzionale: controlla se il modello della scheda madre corrisponde';

  @override
  String get optionalConfigureSip =>
      'Facoltativo: configura SIP secondo necessità (disabilitato per impostazione predefinita)';

  @override
  String get optionalCustomCpuName => 'Facoltativo: nome CPU personalizzato';

  @override
  String get optionalAdjustUiScale =>
      'Facoltativo: regola la scala dell\'interfaccia utente di avvio OpenCore';

  @override
  String get acpiSsdtPatches => 'ACPI - Patch SSDT';

  @override
  String get acpiPatches => 'ACPI: patch';

  @override
  String get kernelPatches => 'Kernel - Patch';

  @override
  String get powerManagement => 'Gestione dell\'energia';

  @override
  String get ssdApfsTrimPolicy => 'Politica di assetto APFS SSD NVMe/SATA';

  @override
  String get kernelQuirksSubtitle =>
      'Kernel - Quirks (impostazioni predefinite consigliate a meno che non siano necessarie correzioni specifiche)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - Driver (Mantenere le configurazioni predefinite a meno che non si presentino esigenze specifiche)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI - Output (impostazioni predefinite consigliate)';

  @override
  String get method1Title =>
      'Metodo 1: rinominare \"GPRW in XPRW\" (correzione riattivazione istantanea)';

  @override
  String get method2Title =>
      'Metodo 2: rinominare \"UPRW in XPRW\" (correzione riattivazione istantanea)';

  @override
  String get method3Title =>
      'Metodo 3: rinominare \"RTC Fix\" (correzione spegnimento RTC/reimpostazione CMOS)';

  @override
  String get method4Title =>
      'Metodo 4: rinominare \"Correzione batteria\" (supporta patch batteria da 16 bit a 8 bit)';

  @override
  String get pciPathLabel => 'Percorso PCI dGPU:';

  @override
  String get pciPathPlaceholder => 'Immettere il percorso PCI';

  @override
  String get spoofedDeviceIdLabel => 'ID dispositivo falsificato:';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'Seleziona il dispositivo GPU da falsificare';

  @override
  String get injectDisplayEdidLabel =>
      'Iniezione Display EDID (solitamente 256 o 512 caratteri esadecimali):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'Inserisci l\'EDID di visualizzazione (solitamente 256 o 512 caratteri esadecimali; spazi e ritorni a capo consentiti)';

  @override
  String get failed => 'Fallito';

  @override
  String get method1 => 'Metodo 1';

  @override
  String get method2 => 'Metodo 2';

  @override
  String get method3 => 'Metodo 3';

  @override
  String get method4 => 'Metodo 4';

  @override
  String get optionalKextDrivers => 'Driver Kext Opzionali';

  @override
  String get optionalKextSubTitle =>
      'Seleziona i driver kext opzionali in base al tuo hardware';

  @override
  String get brandConfigTab => 'Marca';

  @override
  String get optionalSettings => 'Impostazioni Opzionali';

  @override
  String get optionalSettingsSubTitle =>
      'Seleziona ulteriori configurazioni opzionali';

  @override
  String get optionalCheckMotherboard => 'Opzioni Scheda Madre Speciali';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI genera automaticamente un file configModel all\'interno della cartella EFI.\nImporta questo file di seguito per ricaricare e personalizzare la configurazione EFI.\n\nQuesta funzionalità è supportata su RapidEFI V3.0.0 e versioni successive.';

  @override
  String get releaseToReimportConfigModel =>
      'Rilascia per reimportare configModel';

  @override
  String get invalidConfigFileMessage =>
      'File di configurazione non valido. Seleziona un file configModel valido.';

  @override
  String get ethernetTitle => 'Driver Ethernet:';

  @override
  String get usbTitle => 'Driver USB:';

  @override
  String get ssdtCoreOfficial => '* Base (Ufficiale)';

  @override
  String get ssdtRecommendedFixes => '* Consigliato (Correzioni)';

  @override
  String get ssdtOptionalEnhancements => '* Opzionale (Miglioramenti)';

  @override
  String get platformDesktop => 'Desktop';

  @override
  String get platformLaptop => 'Portatile';

  @override
  String get platformNucMini => 'NUC / Mini PC';

  @override
  String get platformHedtServer => 'HEDT / Server';
}
