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
  String get recent => 'Recente';

  @override
  String get efiRelated => 'Relativo a EFI';

  @override
  String get toolsAndGuides => 'Strumenti e guide';

  @override
  String get navHistory => 'Storia';

  @override
  String get navConfigureEFI => 'Configura EFI';

  @override
  String get navProcessEFI => 'Processo EFI';

  @override
  String get navCustomSSDT => 'SSDT personalizzato';

  @override
  String get navOCLPPatch => 'Cerotto OCLP-X';

  @override
  String get navTahoeGuide => 'macOS Tahoe 26';

  @override
  String get navSettings => 'Impostazioni';

  @override
  String get navSponsor => 'Sviluppatore sponsor';

  @override
  String get searchPlaceholder => 'Ricerca';

  @override
  String get darkMode => 'Modalità oscura';

  @override
  String get clickAgainToExit => 'Fare nuovamente clic per uscire';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'Versione OpenCore corrente: $version';
  }

  @override
  String get copyrightTitle => 'Dichiarazione sul diritto d\'autore';

  @override
  String get copyrightText =>
      'Copyright (C) 2024 JeoJay\n\nLicenza:\nConsentito per uso individuale o aziendale alle seguenti condizioni:\n\n1. Uso non commerciale:\nQuesto software è completamente gratuito e open source, rigorosamente per uso non commerciale. È vietata la vendita di questo software.\n\n2. Attribuzione:\nQualsiasi forma di ripubblicazione, citazione o utilizzo su siti web di terzi deve dichiarare esplicitamente la fonte e includere le seguenti informazioni:\nSviluppato da JeoJay. Copyright (C) 2024 JeoJay. Tutti i diritti riservati.\n\n3. Non modificare le dichiarazioni di copyright:\nQuando si ripubblica o si utilizza qualsiasi contenuto di questo software, l\'avviso di copyright originale e le informazioni di attribuzione non devono essere modificati o eliminati.\n\nDichiarazione di non responsabilità:\nQuesto software viene fornito \"così com\'è\", senza garanzie di alcun tipo, esplicite o implicite. Il proprietario del copyright non sarà responsabile per eventuali danni diretti o indiretti derivanti dall\'uso di questo software.';

  @override
  String get themeModeTitle => 'Modalità oscura:';

  @override
  String get themeModeSystem => 'Segui il sistema';

  @override
  String get themeModeLight => 'Spento';

  @override
  String get themeModeDark => 'SU';

  @override
  String get themeColorTitle => 'Colore tema:';

  @override
  String get appFontTitle => 'Carattere dell\'applicazione:';

  @override
  String get efiSettingsTitle => 'Opzioni di uscita EFI:';

  @override
  String get addOpenCoreTheme =>
      'Aggiungi il tema di avvio OpenCore durante la configurazione di EFI';

  @override
  String get generateConfigModel =>
      'Genera il file configModel nella cartella EFI';

  @override
  String get zipEFI => 'Comprimi EFI in un file Zip';

  @override
  String get languageTitle => 'Lingua:';

  @override
  String get languageSystem => 'Segui il sistema';

  @override
  String get languageEn => 'Inglese';

  @override
  String get languagePtBR => 'Portoghese (Brasile)';

  @override
  String get languagePtPT => 'Portoghese (Portogallo)';

  @override
  String get languageZhCN => 'Cinese (semplificato)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => 'giapponese';

  @override
  String get languageEs => 'Español';

  @override
  String get languageFr => 'francese';

  @override
  String get languageAr => 'arabo';

  @override
  String get languageHi => 'hindi';

  @override
  String get languageRu => 'russo';

  @override
  String get languageIt => 'Italiano';

  @override
  String get versionUpdateTitle => 'Aggiornamento della versione:';

  @override
  String currentVersion(Object version) {
    return 'Versione corrente: $version';
  }

  @override
  String get checkUpdate => 'Controlla gli aggiornamenti';

  @override
  String get checkingUpdate => 'Controllo...';

  @override
  String get settingSnippet =>
      '1. L\'opzione \"Aggiungi tema di avvio OpenCore durante la configurazione di EFI\" è abilitata per impostazione predefinita. Un tema di avvio verrà incluso nella cartella EFI di output. Deseleziona se non necessario.\n\n2. L\'opzione \"Genera file configModel nella cartella EFI\" è abilitata per impostazione predefinita. Questo file può essere utilizzato per modificare e regolare nuovamente l\'EFI corrente nella sezione \"Elaborazione EFI\".\n\n3. L\'opzione \"Comprimi EFI in file Zip\" comprime l\'EFI di output in un file Zip. Tieni presente che la compressione dei file Zip può influire sull\'avanzamento complessivo dell\'output EFI, in particolare su hardware con prestazioni inferiori.';

  @override
  String get fontMicrosoftYaHei => 'Microsoft YaHei';

  @override
  String get fontSarasaGothic => 'Sarasa gotico';

  @override
  String get fontSourceHanSerif => 'Fonte Han Serif';

  @override
  String get cpuArchitecture => 'Architettura della CPU';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Computer portatile';

  @override
  String get hedt => 'Server';

  @override
  String get nuc => 'Mini PC';

  @override
  String get amd => 'Processore AMD';

  @override
  String get smbios => 'Modello SMBIOS';

  @override
  String get generateEFI => 'Genera EFI';

  @override
  String get clearSelection => 'Cancella selezione';

  @override
  String get exportConfig => 'Esporta config';

  @override
  String get selectTargetFolder => 'Seleziona Directory di destinazione';

  @override
  String get efiGenerateSuccess => 'EFI generato con successo!';

  @override
  String efiGenerateFailed(Object error) {
    return 'Generazione EFI non riuscita: $error';
  }

  @override
  String get cancel => 'Cancellare';

  @override
  String get confirm => 'Confermare';

  @override
  String get save => 'Salva';

  @override
  String get delete => 'Eliminare';

  @override
  String get openFolder => 'Apri cartella';

  @override
  String get date => 'Data';

  @override
  String get actions => 'Azioni';

  @override
  String get historyTitle => 'Storia';

  @override
  String get historyDescription =>
      'Gli EFI generati da RapidEFI vengono automaticamente sottoposti a backup dopo ogni build riuscita. È possibile modificare e regolare nuovamente l\'output in base a questi record ogni volta che è necessario.';

  @override
  String get clearAllHistory => 'Cancella tutta la cronologia';

  @override
  String get clearingHistory => 'Cancellazione della cronologia...';

  @override
  String get noHistory => 'Nessun record storico';

  @override
  String get editEFI => 'Modifica EFI';

  @override
  String get configuringEFI => 'Configurazione EFI, attendere...';

  @override
  String get configureEFISuccess => 'EFI configurato correttamente';

  @override
  String get configureEFIFailed =>
      'Errore durante la configurazione di EFI!\nModificare la directory di output EFI.';

  @override
  String get sponsorTitle => 'Sviluppatore sponsor';

  @override
  String get visitBilibili => 'Bibilibili dell\'autore';

  @override
  String get visitGithub => 'Visita GitHub';

  @override
  String get buyCoffeeTitle => 'Compra un caffè allo sviluppatore';

  @override
  String get buyCoffeeText =>
      'Se questo strumento ti ha aiutato, sentiti libero di sponsorizzare lo sviluppatore! Grazie per il vostro supporto!\n\nContatto dell\'autore: QQ 766264141 o WX: JeoJay127. Non esistono altri metodi di contatto privati, attenzione alle truffe!';

  @override
  String get successCasesTitle => 'Casi di successo RapidEFI';

  @override
  String get tahoeGuideTitle => 'Guida a macOS Tahoe 26';

  @override
  String get oclpIntro => 'Introduzione';

  @override
  String get oclpGpu => 'Patch GPU';

  @override
  String get oclpWifi => 'Patch Wi-Fi';

  @override
  String get ssdtPlatform => 'Patch per piattaforma';

  @override
  String get ssdtAudio => 'Patch audio';

  @override
  String get ssdtGpuSpoof => 'Spoofing della GPU';

  @override
  String get ssdtDisableDevice => 'Disabilita dispositivo';

  @override
  String get ssdtBrightness => 'Patch di luminosità';

  @override
  String get manualEFIConfig => 'Configurazione EFI manuale';

  @override
  String get autoEFIConfig =>
      'Error 500 (Server Error)!!1500.That’s an error.There was an error. Please try again later.That’s all we know.';

  @override
  String get cpuSelection => 'Selezione della CPU:';

  @override
  String get platformSelection => 'Selezione della piattaforma:';

  @override
  String get platformInfo => 'Informazioni sulla piattaforma:';

  @override
  String get targetMacOSVersion => 'Versione macOS di destinazione:';

  @override
  String get smbiosModelSetup => 'Configurazione del modello SMBIOS:';

  @override
  String get motherboardModelConfig =>
      'Configurazione del modello della scheda madre:';

  @override
  String get selectMotherboardModelTip =>
      '(Seleziona il modello della scheda madre per applicare la configurazione)';

  @override
  String get platformGen => 'Generazione di piattaforme';

  @override
  String get vendor => 'Marca';

  @override
  String get motherboardModel => 'Modello della scheda madre';

  @override
  String get pleaseSelect => 'Seleziona';

  @override
  String get selected => 'Selezionato:';

  @override
  String get applySelectedConfig => 'Applica configurazione selezionata';

  @override
  String get noMatchingConfigEntries =>
      'Nessuna voce di configurazione corrispondente';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'I processori Pentium o Celeron richiedono lo spoofing della CPU! Per favore abilita.\nNota: le iGPU Pentium/Celeron solitamente non sono supportate!';

  @override
  String get u62CpuTitle => 'CPU di tipo U62';

  @override
  String get u62CpuTip =>
      'CPU Comet Lake U62 di decima generazione (ad esempio i3-10110U, i5-10210U, i7-10510U, ecc.) - abilitalo!';

  @override
  String get macOSVersionSnippet =>
      'L\'EFI generato è retrocompatibile con la versione macOS selezionata fino a OS X El Capitan 10.11.';

  @override
  String get amdCores => 'Conteggio core AMD:';

  @override
  String get ryzen7000to9000 => 'CPU serie 7000~9000';

  @override
  String get useAmdIgpuOutput =>
      'Utilizza l\'iGPU AMD per l\'output del display';

  @override
  String get igpuConfigTitle => 'Configurazione iGPU';

  @override
  String get dgpuConfigTitle => 'Configurazione dGPU';

  @override
  String get audioDriver => 'Driver audio:';

  @override
  String get defaultAppleALCDriver =>
      '(Predefinito: utilizza il driver AppleALC)';

  @override
  String get alcLayoutId => 'ID layout ALC:';

  @override
  String get queryLayoutId => 'ID layout query';

  @override
  String get hpetAcpiPath => 'Percorso ACPI HPET (correzione IRQ audio):';

  @override
  String get fixIrq => 'Correggi l\'IRQ';

  @override
  String get selectAudioLayoutIdTitle => 'Seleziona ID layout audio';

  @override
  String get selectAudioLayoutIdTip =>
      '(Utilizzare la rotella di scorrimento per selezionare, quindi fare clic su conferma)';

  @override
  String get ethernetDriver => 'Driver Ethernet:';

  @override
  String get defaultNoEthernetDriver =>
      '(Predefinito: nessun driver Ethernet aggiunto)';

  @override
  String get loadingData => 'Caricamento dati...';

  @override
  String get refreshHardwareInfo => 'Aggiorna le informazioni sull\'hardware';

  @override
  String get importHardwareInfo => 'Importa dati hardware';

  @override
  String get exportHardwareReport => 'Esporta rapporto hardware';

  @override
  String get exportAcpiTables => 'Esporta tabelle ACPI';

  @override
  String get efiSettings => 'Impostazioni EFI';

  @override
  String get outputEFI => 'Esporta EFI';

  @override
  String get summaryView => 'Riepilogo';

  @override
  String get detailedView => 'Dettagliato';

  @override
  String get legendGreen =>
      'Verde: supporta il sistema operativo più recente (macOS Tahoe 26)';

  @override
  String get legendYellow =>
      'Giallo: supporta alcune versioni del sistema operativo';

  @override
  String get legendRed => 'Rosso: completamente incompatibile';

  @override
  String get noAcpiImported => 'Nessun ACPI importato';

  @override
  String get personalizedEfiTitle => 'Impostazioni EFI personalizzate';

  @override
  String get applySettings => 'Applica impostazioni';

  @override
  String get configureEFIError =>
      'Errore durante la configurazione di EFI!\nSi prega di modificare il percorso di output';

  @override
  String get selectConfigItems =>
      'Seleziona gli elementi di configurazione da applicare';

  @override
  String get newVersionFound => 'Nuova versione disponibile';

  @override
  String versionTag(Object tag) {
    return 'Versione: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'Data di rilascio: $date';
  }

  @override
  String get downloadNow => 'Scarica ora';

  @override
  String get close => 'Vicino';

  @override
  String get generatingEfiAndSsdt =>
      'Generazione di EFI e SSDT personalizzato, attendere...';

  @override
  String get configuringEfiTitle => 'Configurazione dell\'EFI';

  @override
  String get configureEfiSuccessTitle => 'EFI configurato correttamente';

  @override
  String get configureEfiErrorTitle => 'Configurazione EFI non riuscita';

  @override
  String get outputDirectory => 'Directory di output:';

  @override
  String get openEfiDirectory => 'Apri la directory EFI';

  @override
  String get select => 'Selezionare';

  @override
  String get selectFile => 'Seleziona File';

  @override
  String get selectDirectory => 'Seleziona Rubrica';

  @override
  String get hardwareReport => 'Rapporto sull\'hardware';

  @override
  String get acpiTablesDirectory => 'Directory delle tabelle ACPI';

  @override
  String get noAcpiFolderTip =>
      'Senza la directory delle tabelle ACPI, non è possibile generare SSDT personalizzato dal report importato.';

  @override
  String get hasAcpiFolderTip =>
      'La directory delle tabelle ACPI selezionata verrà utilizzata per SSDT personalizzato.';

  @override
  String get adminRightsRequired => 'Diritti di amministratore richiesti';

  @override
  String get enterSystemPassword => 'Inserisci la password del tuo sistema';

  @override
  String get import => 'Importare';

  @override
  String get optionalSelectIfMatching =>
      '(Facoltativo: controlla se corrisponde)';

  @override
  String get selectIfMatching => '(Controlla se corrispondente)';

  @override
  String get baseConfig => 'Configurazione base';

  @override
  String get advanceConfig => 'Configurazione avanzata';

  @override
  String get connectorCustomization => 'Personalizzazione del connettore';

  @override
  String get displayEdid => 'Visualizza EDID';

  @override
  String get nvidiaDgpu => 'GPU Nvidia';

  @override
  String get amdDgpu => 'GPU AMD';

  @override
  String get amdDgpuSpoof => 'Spoofing AMD dGPU';

  @override
  String get above4gTitle => 'Sopra le impostazioni di decodifica 4G';

  @override
  String get addNpciBootArg => 'Aggiungi argomento di avvio npci=0x2000';

  @override
  String get above4gTip =>
      'Consigliato se la decodifica superiore a 4G è disabilitata nel BIOS. Deseleziona se abilitato.';

  @override
  String get personalizedEfiIntroTip =>
      'Tutti i campi sono facoltativi. L\'EFI di output genererà i file corrispondenti in base a queste impostazioni.';

  @override
  String get ssdtType => 'Tipo SSDT:';

  @override
  String get customSsdt => 'SSDT personalizzato';

  @override
  String get presetSsdt => 'SSDT preimpostato';

  @override
  String get cpuTypeLabel => 'Tipo di processore:';

  @override
  String get platformTypeLabel => 'Tipo di piattaforma:';

  @override
  String get selectAll => 'Seleziona tutto';

  @override
  String get basicOfficialRecommend => '* Base (consigliato ufficiale)';

  @override
  String get recommendFixes => '* Consigliato (correzioni delle funzionalità)';

  @override
  String get optionalEnhancements => '* Opzionale (miglioramenti)';

  @override
  String get personalizedPlatformTip =>
      'Il tipo di CPU, il tipo di piattaforma e le informazioni vengono rilevati dall\'hardware; regolare manualmente di seguito se errato.';

  @override
  String get pciPathLabel => 'Percorso PCI GPU:';

  @override
  String get pciPathHint => 'Immettere il percorso PCI';

  @override
  String get spoofGpuIdLabel => 'ID GPU falsificato:';

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
  String get selectSpoofGpuPlaceholder => 'Seleziona la GPU da falsificare';

  @override
  String get gpuSpoofDataLoadError =>
      'Impossibile caricare i dati spoofing della GPU';

  @override
  String get injectEdidTitle =>
      'Iniezione Display EDID (256 o 512 caratteri esadecimali):';

  @override
  String get injectEdidHint =>
      'Inserisci Display EDID (formato esadecimale, spazi consentiti)';

  @override
  String get edidHexError =>
      'I dati EDID contengono caratteri non esadecimali!';

  @override
  String get edidLengthError =>
      'La lunghezza dell\'EDID non è un multiplo di 256!';

  @override
  String get edidInvalidToast =>
      'I dati EDID non sono validi, verificali prima di accedere!';

  @override
  String get details => 'Dettagli';

  @override
  String get clearAllSelection => 'Cancella tutta la selezione';

  @override
  String applySelected(Object count) {
    return 'Applica selezionato ($count elementi)';
  }

  @override
  String get getModdedOclp => 'Ottieni OCLP modificato';

  @override
  String get getIntelModdedOclp => 'Ottieni OCLP modificato da Intel';

  @override
  String get soundDriverCardTitle => 'Driver audio:';

  @override
  String get soundDriverDefaultTip =>
      '(L\'impostazione predefinita utilizza il driver AppleALC)';

  @override
  String get hpetAcpiPathTitle => 'Percorso ACPI HPET (correzione IRQ audio):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'Seleziona ID layout audio (DB: $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip =>
      '(Scorri con la rotella, quindi clicca su conferma)';

  @override
  String get nicDriverCardTitle => 'Driver della scheda di rete:';

  @override
  String get nicDriverDefaultTip =>
      '(Per impostazione predefinita, nessun driver della scheda di rete aggiunto)';

  @override
  String get wifiBtCardTitle => 'Driver Wi-Fi e Bluetooth:';

  @override
  String get wifiBtDefaultTip =>
      '(Per impostazione predefinita nessun driver Wi-Fi, configuralo manualmente se necessario)';

  @override
  String get usbCardTitle => 'Driver USB:';

  @override
  String get usbDefaultTip =>
      '(L\'impostazione predefinita utilizza USBInjectAll)';

  @override
  String get selectUtbMap => 'Seleziona UTBMappa';

  @override
  String get selectUtbMapHint => 'Seleziona UTBMap.kext creato da USBToolBox';

  @override
  String get releaseUsbOwnershipText =>
      'Abilita il quirk \"UEFI->Quirks->ReleaseUsbOwnership\" per rilasciare la proprietà del controller USB dal firmware...';

  @override
  String get bootArgsCardTitle => 'Argomenti di avvio:';

  @override
  String get bootArgsDefaultTip =>
      '(L\'impostazione predefinita abilita la modalità -v dettagliata, deseleziona se non è necessaria)';

  @override
  String get debugCategory => 'Debug';

  @override
  String get amfiSipCategory => 'AMFI/SIP';

  @override
  String get igpuCategory => 'iGPU';

  @override
  String get dgpuCategory => 'dGPU';

  @override
  String get blackScreenFixCategory => 'Correzioni per lo schermo nero';

  @override
  String get above4gCategory => 'Sopra la decodifica 4G';

  @override
  String get touchpadFixCategory => 'Correzioni sul touchpad';

  @override
  String get othersCategory => 'Altri';

  @override
  String get optionalKextsCardTitle => 'Kext facoltativi:';

  @override
  String get optionalKextsDefaultTip =>
      '(Driver opzionali, non aggiungere se non necessario)';

  @override
  String get graphicsCategory => 'Grafica';

  @override
  String get powerManagementCategory => 'Gestione dell\'energia';

  @override
  String get sleepCategory => 'Sonno';

  @override
  String get diskCategory => 'Disco';

  @override
  String get cpuCategory => 'processore';

  @override
  String get amdPlatformCategory => 'Piattaforma AMD';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'Scheda SD';

  @override
  String get optionalSettingsCardTitle => 'Impostazioni opzionali:';

  @override
  String get optionalSettingsDefaultTip =>
      '(Di solito mantieni le impostazioni predefinite se non necessario)';

  @override
  String get tabBrand => 'Marca';

  @override
  String get tabSpecialMotherboard => 'Scheda madre speciale';

  @override
  String get tabSipSetting => 'Impostazioni SIP';

  @override
  String get tabCpuRename => 'Rinomina CPU';

  @override
  String get tabUiScale => 'Scala dell\'interfaccia utente OpenCore';

  @override
  String get tabAcpiConfig => 'Configurazione ACPI';

  @override
  String get tabBooterConfig => 'Configurazione di avvio';

  @override
  String get tabKernelConfig => 'Configurazione del kernel';

  @override
  String get tabUefiConfig => 'Configurazione UEFI';

  @override
  String get processEfiTitle => 'Processo EFI';

  @override
  String get processEfiSubTitle => '(Rielabora EFI configurato da RapidEFI)';

  @override
  String get processEfiExpanderText =>
      'EFI configurato dallo strumento RapidEFI genererà un file denominato configModel nella cartella di output EFI. Importa questo file qui per modificare nuovamente l\'EFI corrente.\n\nQuesta funzionalità supporta solo RapidEFI V3.0.0 e versioni successive.';

  @override
  String get clearCurrentConfig => 'Cancella configurazione corrente';

  @override
  String get importConfigModelFile => 'Importa il file configModel';

  @override
  String get importingConfigModel =>
      'Importazione del modello di configurazione...';

  @override
  String get releaseToReimport =>
      'Rilascia il mouse per reimportare configModel';

  @override
  String get dragConfigModelArea =>
      'Trascina qui il file configModel\noppure fare clic per selezionare il file';

  @override
  String get importFailedToast =>
      'I dati di configurazione importati non sono validi, reimporta un file configModel valido.';

  @override
  String get changeEfiTitle => 'Cambia titolo EFI';

  @override
  String get modifyCurrentEfiName => 'Modifica il nome EFI corrente';

  @override
  String originalEfiName(String name) {
    return 'Nome EFI originale: $name';
  }

  @override
  String get enterModifiedName => 'Inserisci il nome modificato';

  @override
  String get deleteRecord => 'Elimina questo record';

  @override
  String get exportThisEfi => 'Esporta questo EFI';

  @override
  String get releaseToIdentifyHardware =>
      'Rilascio per identificare automaticamente il report hardware e le tabelle ACPI';

  @override
  String get dragHardwareReportHere =>
      'Trascina nella cartella dei report hardware esportati da questo strumento\n(identifica automaticamente sysInfo.txt e la directory ACPI)';

  @override
  String get invalidHardwareReportToast =>
      'File di report hardware valido non riconosciuto';

  @override
  String optionalSuffix(String title) {
    return '$title (Opzionale)';
  }

  @override
  String get notSelected => 'Non selezionato';

  @override
  String get verifyingAdminPassword => 'Verifica password amministratore...';

  @override
  String get hardwareReportAcpiMissing =>
      'Report hardware esterno importato, ma directory della tabella ACPI non fornita, SSDT non può essere personalizzato.';

  @override
  String get hwMemory => 'Memoria';

  @override
  String get hwCompatible => 'Compatibile';

  @override
  String hwDeviceID(String id) {
    return 'ID dispositivo: $id';
  }

  @override
  String hwType(String type) {
    return 'Tipo: $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'Capacità: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'Interfaccia: $bus';
  }

  @override
  String hwModel(String model) {
    return 'Modello: $model';
  }

  @override
  String get hwStorage => 'Magazzinaggio';

  @override
  String get hwStorageController => 'Stoccaggio\nControllore';

  @override
  String get hwBluetooth => 'Bluetooth';

  @override
  String get hwAudioCard => 'Scheda audio';

  @override
  String get hwAudioLayoutId => 'ID del layout:';

  @override
  String get hwNetworkCard => 'Scheda di rete';

  @override
  String get hwMonitor => 'Monitorare';

  @override
  String hwResolution(String res, String hz) {
    return 'Risoluzione: $res a $hz Hz';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'GPU collegata: $gpu';
  }

  @override
  String get hwInput => 'Ingresso';

  @override
  String get hwSDCard => 'Scheda SD';

  @override
  String hwDevice(String dev) {
    return 'Dispositivo: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'Numero di serie: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'Integrato: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'Avvio protetto: $status';
  }

  @override
  String hwCSM(String status) {
    return 'CSM: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'BAR ridimensionabile: $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'Sopra la decodifica 4G: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'AHCI: $status';
  }

  @override
  String get hwAHCIUnknown => 'AHCI: sconosciuto';

  @override
  String get hwEnabled => 'Abilitato';

  @override
  String get hwDisabled => 'Disabilitato';

  @override
  String get hwCurrentBiosSettings => 'Impostazioni attuali del BIOS';

  @override
  String get hwBiosNote =>
      'Note sull\'Hackintosh:\n1. Per tutto il testo rosso, assicurati di attivarlo o disattivarlo nel BIOS per mantenerlo blu.\n2. Il testo blu indica le impostazioni appropriate nella maggior parte dei casi.\nSecure Boot: deve essere disabilitato (altrimenti il ​​firmware non firmato come il bootloader OC non può avviarsi normalmente).\nCSM (modulo di supporto compatibilità): consigliato per disabilitarlo nella maggior parte dei casi (IGPU mobile Intel di quarta/quinta generazione, piattaforme X99 e alcune schede grafiche RX460 potrebbero richiedere l\'abilitazione di CSM, altrimenti si verifica uno strappo dello schermo o un errore di avvio).\nBARRA ridimensionabile: consigliata la disabilitazione nel BIOS (se non disabilitata, assicurati che ResizeAppleGpuBars sia impostato su 0 in Booter->Quirks per evitare problemi di avvio).\nDecodifica sopra 4G: consigliata l\'abilitazione nel BIOS e la rimozione del parametro npci=0x2000 controllato automaticamente. Se questa opzione non è presente nel BIOS, consigliamo di controllare npci=0x2000 o npci=0x3000. Nota: la decodifica BIOS sopra 4G e i parametri npci si escludono a vicenda!\nAHCI (modalità disco SATA): deve essere abilitato (in caso contrario, i dischi potrebbero non essere riconosciuti o potrebbe apparire un simbolo di divieto).';

  @override
  String hwBit(String arch) {
    return '$arch Bit';
  }

  @override
  String get hwVirtualizationEnabled => 'Virtualizzazione: abilitata';

  @override
  String get hwVirtualizationDisabled => 'Virtualizzazione: disabilitata';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores Nuclei $threads Filettature';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'Set di istruzioni: $simd';
  }

  @override
  String hwCore(String core) {
    return 'Nucleo: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'ID spoofing richiesto: $id';
  }

  @override
  String get hwGPU => 'GPU';

  @override
  String get hwIncompatible => 'Incompatibile';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'Scheda madre';

  @override
  String hwBrand(String brand) {
    return 'Marca: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'Chipset: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALC supporta più ID di layout. ID diversi possono influire sulla disponibilità dell\'interfaccia audio.';

  @override
  String get manualNvidiaInfoText =>
      'Le serie di GPU Nvidia supportate sono le seguenti:\n• Serie Tesla (serie 8000 - 300): supportata nativamente fino a macOS High Sierra 10.13.x (potrebbe richiedere la correzione NVCAP), le versioni superiori richiedono patch OCLP (nessun supporto Metal)\nEsempi: 8600GT, 9600GT, GT210, GT220, GT240, ecc. Troppo vecchio, sconsigliato!\n• Serie Kepler (serie 600 - 800): supportata nativamente fino a macOS Big Sur 11.x, le versioni superiori richiedono la patch OCLP (supporta Metal, true driver)\nNucleo Kepler: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black, ecc.\nSchede professionali Kepler core: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000, ecc.\n• Serie Fermi, Maxwell, Pascal: Webdriver supportato fino a macOS High Sierra 10.13.x. Per macOS Big Sur 11.x e versioni successive, controlla gli argomenti di avvio di seguito e applica la patch OCLP (nessun supporto Metal, driver falso)\nSerie Fermi: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740, ecc.\nSerie Maxwell: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980, ecc.\nSerie Pascal: GTX1050, GTX1060, GTX1070, GTX1080, ecc.\nSerie GPU Nvidia non supportate (le serie 11 e successive NON sono supportate):\n• Serie 16 ~ 50: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070, ecc.';

  @override
  String get manualEdidInfoText =>
      '1. Solitamente utilizzato per risolvere il problema dello schermo nero/nessun segnale dell\'iGPU Intel di sesta-decima generazione (l\'EDID dGPU non viene gestito qui). (Sintomo tipico: la spia del blocco maiuscole della tastiera funziona, ma il monitor mostra uno schermo nero senza segnale)\n2. Per le schede madri desktop serie 500 (H510/B560/H570/Q570/Z590/W580) che utilizzano l\'uscita HDMI iGPU, è obbligatorio inserire l\'EDID del monitor reale, altrimenti è molto probabile che venga visualizzata una schermata nera.\n3. Come ottenere l\'EDID del monitor:\nIn Windows, utilizza lo strumento RapidEFI o lo strumento hdinfo per ottenere l\'EDID (puoi utilizzare strumenti di terze parti, ma devi formattare tu stesso l\'EDID):\n1). Apri RapidEFI v4.x o versione successiva, fai clic su \"Configura EFI\" -> \"Configura automaticamente EFI\" -> \"Configurazione dettagliata\" (o fai clic su \"Configurazione dettagliata\" se utilizzi hdinfo).\n2). Attendi il completamento del rilevamento automatico delle informazioni sull\'hardware, quindi fai clic sul codice EDID accanto alla sezione Monitor per ottenerlo (verrà richiesto di copiarlo correttamente negli appunti).\n3). Ritorna a questa pagina e incolla l\'EDID nella casella di input.\n4. Prima di inserire EDID, controllare l\'interfaccia AAPL0X di destinazione in \"Configurazione avanzata\"; in caso di dubbi, scegliere in base al piano di correzione HDMI effettivo.\n5. I dati EDID sono generalmente di 128 byte (256 caratteri esadecimali) o 256 byte (512 caratteri esadecimali). In caso contrario, ricontrolla prima di inserirlo!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'Framebuffer corrente: $fb. Generazione di framebuffer-conX-alldata per documenti QualunqueGreen.';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'L\'attuale Framebuffer non supporta raccomandazioni strutturate; elimina i valori grezzi esistenti e riseleziona una configurazione di base iGPU supportata.';

  @override
  String get manualAddConnectorTooltip => 'Aggiungi patch connettore';

  @override
  String get manualConnectorLabel => 'Connettore';

  @override
  String get manualIndexLabel => 'Indice';

  @override
  String get manualBusIdLabel => 'Identificativo dell\'autobus';

  @override
  String get manualConnectorTypeLabel => 'Tipo';

  @override
  String manualOldConnector(String label) {
    return '$label (precedente)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'Elimina la patch con$index.';
  }

  @override
  String get manualUnparseableValue => 'Valore grezzo non analizzabile';

  @override
  String get manualDeleteAndReadd =>
      'Elimina e aggiungi nuovamente le patch dei connettori strutturati';

  @override
  String get manualDeleteUnparseableTooltip =>
      'Elimina la patch del connettore non analizzabile';

  @override
  String get manualBatteryDriver => 'Driver della batteria';

  @override
  String get manualKeyboardTouchpadDriver => 'Driver per tastiera e touchpad';

  @override
  String get manualSensorDriver =>
      'Driver del sensore (non consigliato se non necessario)';

  @override
  String get manualKernelTrimStrategy => 'Strategia di rifinitura SSD';

  @override
  String get manualKernelPowerManagement => 'Gestione dell\'energia';

  @override
  String get manualKernelDummyPowerManagement =>
      'Disabilita gestione dell\'alimentazione (DummyPowerManagement), risolve i problemi di riavvio causati dalla gestione dell\'alimentazione della CPU (ad esempio panico del kernel AppleIntelCPUPowerManagement, blocco al logo di avvio o riavvio subito dopo l\'accesso al sistema). Per la quarta generazione e versioni successive, questa è l\'alternativa preferita a NullCpuPowerManagement.kext';

  @override
  String get manualKernelQuirksDefault =>
      'Kernel: si consiglia di mantenere Quirks predefinito, a meno che non sia necessario o si sappia cosa significa ciascun elemento';

  @override
  String get manualUefiProvideConsoleGop =>
      'La stranezza ProvideConsoleGop è abilitata per impostazione predefinita per correggere la mancata visualizzazione dell\'interfaccia utente di avvio di OpenCore. Se ancora non viene visualizzato, prova a deselezionarlo';

  @override
  String get manualUefiDriversHfs =>
      'Driver UEFI (correzione dell\'interfaccia utente di avvio OpenCore che non veniva visualizzata a causa del driver HFS)';

  @override
  String get manualUefiOutputBootUI =>
      'UEFI - Output (correzione dell\'interfaccia utente di avvio OpenCore che non viene visualizzata)';

  @override
  String get manualSpecialMotherboardTip =>
      'Facoltativo: controlla se la tua scheda madre corrisponde alla descrizione';

  @override
  String get manualCsrSettingTip =>
      'Opzionale - impostabile in base alle esigenze, SIP è disabilitato per impostazione predefinita';

  @override
  String get manualRenameCpuNameTip =>
      'Facoltativo: personalizza il nome della CPU';

  @override
  String get manualRenameCpuNameLabel =>
      'Inserisci il nome della CPU (lascia vuoto per mostrare il nome della CPU di Windows):';

  @override
  String get manualRenameCpuNameHint => 'Inserisci qui il nome della CPU';

  @override
  String get manualBrandTip =>
      'Facoltativo: controlla se il marchio corrisponde alla descrizione';

  @override
  String get manualBooterPlan1 => 'Piano 1';

  @override
  String get manualBooterPlan2 => 'Piano 2';

  @override
  String get manualBooterPlan3 => 'Piano 3';

  @override
  String get manualBooterPlan4 => 'Piano 4';

  @override
  String get manualBooterEbFix =>
      'Bloccato sulla correzione EB (facoltativo, in genere l\'impostazione predefinita va bene):';

  @override
  String get manualAcpiPatch => 'ACPI-Patch';

  @override
  String get manualAcpiSsdt => 'ACPI-SSDT';

  @override
  String get manualBluetoothNvram => 'Parametri NVRAM Bluetooth:';

  @override
  String get manualUsbWifiGithub =>
      'Visita il repository dell\'autore chris1111';

  @override
  String get manualUsbWifiKexts =>
      'Aggiungi i Kext richiesti per USB WiFi (nota: devi anche installare il client Wireless USB Big Sur Adapter su macOS. Riavvia se non ha effetto)';

  @override
  String get manualWifiCardSupport =>
      'I driver forniti supportano macOS Mojave 10.14 ~ macOS Sequoia 15! Tieni presente che Monterey 12 e versioni successive richiedono la patch OCLP per funzionare correttamente!!!';

  @override
  String get manualWifiAtheros => 'Ateros';

  @override
  String get manualWifiIntel => 'Intel';

  @override
  String get manualWifiBrcm => 'Broadcom (Brcm)';

  @override
  String get manualWifiBluetoothDriver => 'Driver Bluetooth';

  @override
  String get manualWifiItlwmPlan =>
      'Piano 2, utilizza itlwm (richiede HeliPort), driver Intel WiFi. Conflitti con il Piano 1, NON usare insieme!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'Piano 1, utilizza AirportItlwm, driver Intel WiFi, aggiunge tutti i kex WiFi (dimensioni grandi, scegli attentamente). Conflitti con il Piano 2, NON usare insieme!!!';

  @override
  String get manualWifiAddAllDrivers =>
      'Aggiungi tutti i driver WiFi (dimensioni grandi, scegli attentamente)';

  @override
  String get manualLaptopMainly => '(Principalmente per laptop)';

  @override
  String get manualLaptopRelatedDrivers => 'Driver relativi al laptop:';

  @override
  String get manualLaptopOtherFixes => 'Altre correzioni';

  @override
  String get manualLaptopOtherFixesTip =>
      'Altre correzioni (non consigliate se non necessarie)';

  @override
  String get manualMotherboardSelectAll => 'Seleziona tutto/nessuno';

  @override
  String get manualMotherboardDetails => 'Dettagli';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total selezionato)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return 'Applicate $count configurazioni da $model';
  }

  @override
  String get manualMotherboardFromMbconfs => 'Da mbconfs';

  @override
  String get manualIgpuRemark => '⚠️ Osservazione';

  @override
  String get manualIgpuSelectCpu => 'Seleziona CPU';

  @override
  String get manualIgpuLoadConfig =>
      'Carica la configurazione dell\'iGPU dal modello della CPU';

  @override
  String get manualIgpuSelectProperties =>
      'Seleziona le proprietà da applicare';

  @override
  String get manualIgpuPresetScheme => 'Schema preimpostato';

  @override
  String get manualIgpuSelectGen => 'Seleziona Generazione';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'Selezionato: $model $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'Modello della CPU';

  @override
  String get manualIgpuMatchOrNot => 'Controlla se abbinato';

  @override
  String get manualIgpuCpuGen => 'Generazione CPU';

  @override
  String get manualIgpuByCpuModel => 'Per modello di CPU';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return 'Caricata $igpu configurazione iGPU da $model, scrivendo $count proprietà';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return 'Da $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'Seleziona la generazione e il modello della CPU, quindi controlla le proprietà da applicare';

  @override
  String get manualIgpuModel => 'Modello';

  @override
  String get manualFakeGpuSelect => 'Seleziona la GPU da falsificare';

  @override
  String get settingsThemeColors => 'Tema del colore';

  @override
  String get settingsThemeDefault => 'Predefinito';

  @override
  String get sharedInvalidInput => 'Immissione non valida';

  @override
  String sharedRequiresHexChars(String length) {
    return 'Richiede $length caratteri esadecimali';
  }

  @override
  String get sharedExample73BF => 'Esempio: 73BF';

  @override
  String get sharedTipsLengthMustMatch =>
      'La lunghezza delle punte deve corrispondere alle scelte';

  @override
  String sharedCpuInfo(String description) {
    return '[Informazioni sulla CPU]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'Ultima versione macOS supportata in modo nativo: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[BIOS consigliato per la disattivazione]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'Versione macOS supportata dalla patch: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[BIOS consigliato per l\'abilitazione]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'Versione macOS iniziale supportata in modo nativo: $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'Percorso ACPI non valido';

  @override
  String get sharedFillAcpiPath => 'Compila il percorso ACPI';

  @override
  String get sharedFillPciPath => 'Compila il percorso PCI';

  @override
  String get sharedInvalidPciPath => 'Percorso PCI non valido';

  @override
  String get sharedGetModifiedOclp => 'Ottieni OCLP modificato';

  @override
  String hwConfigModelGenerated(String details) {
    return 'ConfigModel generato: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'Impossibile ottenere informazioni sull\'hardware: $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'Password amministratore errata, impossibile esportare tabelle ACPI';

  @override
  String get hwNoNativeInfoExportable =>
      'Nessuna informazione hardware nativa disponibile per l\'esportazione';

  @override
  String get hwOutputtingOpencore => 'Output di OpenCore EFI in corso...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'Esportazione delle tabelle ACPI native non riuscita: $error';
  }

  @override
  String get hwSsdtProcessFailed =>
      'Il processo di personalizzazione SSDT non è riuscito.';

  @override
  String get hwConfigRuleRefactoring =>
      'Refactoring delle regole di generazione di Hardware ConfigModel';

  @override
  String get hwQueryUnsupported =>
      'La piattaforma attuale non supporta la query di informazioni sull\'hardware';

  @override
  String hwPreparingSsdt(String items) {
    return 'Preparazione alla personalizzazione di SSDT: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'Questo è un report sull\'hardware esterno importato, aggiorna le informazioni sull\'hardware nativo prima di esportarlo';

  @override
  String get hwRefreshingInfo =>
      'Aggiornamento delle informazioni sull\'hardware';

  @override
  String get hwSsdtProcessEnded =>
      'Il processo di personalizzazione SSDT è terminato.';

  @override
  String get hwInfoUnsupported =>
      'Informazioni hardware attualmente non supportate';

  @override
  String get hwEfiWrittenExtracting =>
      'EFI scritto, inizio a estrarre ACPI e personalizzare SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'Impossibile configurare EFI: $error';
  }

  @override
  String get hwReportFolderCleanFailed =>
      'Impossibile pulire la cartella dei rapporti hardware';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'Impossibile pulire la cartella dei rapporti hardware: $error';
  }

  @override
  String get hwExportingNativeReport =>
      'Esportazione del report hardware nativo in corso...';

  @override
  String get hwAdminAuthCanceled =>
      'Autorizzazione amministratore annullata, tabelle ACPI non esportate';

  @override
  String get hwImportedNoAcpiDir =>
      'Report hardware esterno importato ma nessuna directory delle tabelle ACPI fornita, personalizzazione SSDT disabilitata.';

  @override
  String get hwExportAcpiUnsupported =>
      'La piattaforma attuale non supporta l\'esportazione di tabelle ACPI';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'Rapporto hardware esportato in $reportDirectory, $msg';
  }

  @override
  String get hwInfoNotJson =>
      'Il file di informazioni hardware non è un oggetto JSON';

  @override
  String get hwUnsupported => 'Non supportato';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'Impossibile pulire la directory temporanea delle tabelle ACPI: $error';
  }

  @override
  String get hwEfiConfigDone => 'Configurazione EFI completata.';

  @override
  String hwEfiConfigError(String error) {
    return 'Errore durante la configurazione di EFI: $error';
  }

  @override
  String get hwNativeAcpiExportFailed =>
      'Esportazione delle tabelle ACPI native non riuscita';

  @override
  String get hwAcpiToolNotReady =>
      'Lo strumento di esportazione ACPI non è pronto';

  @override
  String get hwFailed => 'Fallito';

  @override
  String hwImportReportFailed(String e) {
    return 'Impossibile importare il report hardware: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'Esportazione delle tabelle ACPI native completata: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'Esportazione delle tabelle ACPI non riuscita: nessuna tabella ACPI valida trovata';

  @override
  String get hwUsingOriginalSsdt =>
      'Utilizzando EFI SSDT originale, saltando la personalizzazione SSDT.';

  @override
  String get hwWaitingRefresh =>
      'In attesa dell\'aggiornamento delle informazioni sull\'hardware';

  @override
  String get hwInfoLoaded => 'Informazioni hardware caricate correttamente';

  @override
  String hwAcpiExportedTo(String path) {
    return 'Tabelle ACPI esportate in $path';
  }

  @override
  String get hwStartConfigEfi => 'Avvio della configurazione EFI...';

  @override
  String get hwInfoLoadFailed =>
      'Impossibile caricare le informazioni sull\'hardware';

  @override
  String get hwCache => 'Cache';

  @override
  String get hwInfoImportDone =>
      'Importazione delle informazioni hardware completata';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'Report hardware e tabelle ACPI esportate in $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid =>
      'La directory delle tabelle ACPI non è valida, la personalizzazione SSDT non è disponibile';

  @override
  String get hwExportingNativeAcpi =>
      'Esportazione delle tabelle ACPI native in corso...';

  @override
  String get hwGeneratingConfigModel =>
      'Generazione del ConfigModel in base alle informazioni sull\'hardware in corso...';

  @override
  String get hwInfoImported => 'Informazioni hardware importate';

  @override
  String get hwAcpiExportFailedOrUnsup =>
      'Esportazione delle tabelle ACPI non riuscita o non supportata';

  @override
  String get hwReportFolderCreateFailed =>
      'Impossibile creare la cartella dei rapporti hardware';

  @override
  String get hwNoAdminPwd =>
      'Password amministratore non inserita, impossibile esportare tabelle ACPI';

  @override
  String get hwEfiConfigFailedCheck =>
      'Configurazione EFI non riuscita, controlla il percorso di output o i log.';

  @override
  String get hwLoadingInfo => 'Caricamento informazioni sull\'hardware';

  @override
  String get hwDone => 'Fatto';

  @override
  String get hwAcpiExportFailedProcess =>
      'Esportazione tabelle ACPI non riuscita: esecuzione del processo di esportazione non riuscita';

  @override
  String get hwIgpuType => 'iGPU';

  @override
  String get hwGpuCompatible => 'Compatibile';

  @override
  String get hwGpuIncompatibleNoDisplay =>
      'Incompatibile, nessuna connessione diretta al display';

  @override
  String get hwGpuIncompatible => 'Incompatibile';

  @override
  String get hwLaptop => 'Computer portatile';

  @override
  String get hwGpuLoadingCompat => 'Caricamento compatibilità';

  @override
  String get hwGpuLimitedCompat => 'Compatibilità limitata';

  @override
  String get hwClickToCopy => 'Fare clic per copiare';

  @override
  String get hwCopiedToClipboard => 'Copiato negli appunti';

  @override
  String get linkCantOpen => 'Impossibile aprire il collegamento';

  @override
  String get clickToCopy => 'Fare clic per copiare';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get gpuCard => 'GPU';

  @override
  String gpuDeviceId(String id) {
    return 'ID dispositivo: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'Nucleo: $codename';
  }

  @override
  String get gpuCompatible => 'Compatibile';

  @override
  String get gpuIncompatible => 'Incompatibile';

  @override
  String get gpuIncompatibleNoDisplay =>
      'Incompatibile, nessuna visualizzazione diretta';

  @override
  String get gpuLimitedCompat => 'Compatibilità limitata';

  @override
  String get gpuLoadingCompat => 'Caricamento compatibilità';

  @override
  String gpuSpoofId(String id) {
    return 'ID spoofing richiesto: $id';
  }

  @override
  String get bootArgVerbose =>
      'Abilita la modalità dettagliata -v (mostra l\'output di debug durante l\'avvio, utile per eseguire il debug dei problemi di avvio)';

  @override
  String get bootArgKeepsyms =>
      'Stampa i simboli di arresto anomalo del kernel per facilitare la diagnosi dei problemi. Solitamente utilizzato con debug=0x100. Fortemente consigliato durante il debug iniziale dell\'avvio.';

  @override
  String get bootArgDebug0x100 =>
      'Impedisce il riavvio automatico in caso di panico del kernel, consentendo di visualizzare i registri degli arresti anomali. Fortemente consigliato durante il debug iniziale dell\'avvio.';

  @override
  String get bootArgWatchdog0 =>
      'Disabilitare il watchdog per evitare riavvii accidentali causati da panico durante il debug di avvio.';

  @override
  String get bootArgSlide0 =>
      'Disabilita KASLR per risolvere i conflitti di memoria che causano il panico anticipato del kernel di avvio. Utilizzato per il debug.';

  @override
  String get bootArgNoCompatCheck =>
      'Salta il controllo di compatibilità del modello durante l\'avvio per evitare il simbolo proibito. Nota: non ignora il controllo del modello dell\'installatore.';

  @override
  String get bootArgCpus1 =>
      'Abilita solo 1 core CPU (per CPU server multi-core X58/X79/X99/X299 con problemi di kernel panico durante il debugging iniziale dell\'installazione).';

  @override
  String get bootArgBetaFix =>
      'Risolvi i problemi che potrebbero apparire nell\'ultimo macOS (principalmente Beta), come audio, Bluetooth e anomalie di frequenza della CPU. Fortemente consigliato sulle versioni Beta.';

  @override
  String get bootArgAmfi0x80 =>
      'Disabilita AMFI per le GPU più recenti (HD4000+, GT710+ Kepler) o quando si applicano patch ai driver Wi-Fi. NON utilizzare con amfi_get_out_of_my_way=0x1. Efficace solo con SIP disabilitato.';

  @override
  String get bootArgAmfiGetOut =>
      'Disabilita AMFI per le GPU meno recenti (ad esempio, GT240) o quando si applicano patch ai driver Wi-Fi. NON utilizzare con amfi=0x80. Efficace solo con SIP disabilitato.';

  @override
  String get bootArgIpcControl =>
      'Correggi gli arresti anomali dell\'app (ad esempio, Baidu Netdisk) dopo aver disabilitato AMFI. Efficace solo con SIP disabilitato.';

  @override
  String get bootArgAmfiPassBeta =>
      'Assicurati che AMFIPass.kext funzioni nell\'ultima versione di macOS Tahoe 26 per continuare a bypassare i controlli di sicurezza AMFI.';

  @override
  String get bootArgRevpatch =>
      'Risolvi i problemi di aggiornamento OTA di macOS dopo aver disabilitato SIP o SecureBootModel e correggi la visualizzazione personalizzata del nome della CPU.';

  @override
  String get bootArgDisableGfxFirmware =>
      'Disabilitare il caricamento del firmware grafico Apple per evitare blocchi durante l\'avvio dovuti a errori di caricamento del firmware (solo Intel iGPU).';

  @override
  String get bootArgWegNoIgpu =>
      'Disattiva Intel iGPU (consigliato quando l\'iGPU non può essere utilizzata o non supporta l\'accelerazione hardware).';

  @override
  String get bootArgIgfxVesa =>
      'Disabilita l\'accelerazione Intel iGPU (da utilizzare quando il sistema non si avvia dopo l\'applicazione della patch OCLP iGPU, solo debug).';

  @override
  String get bootArgIgfxRpsc =>
      'Correggere e migliorare le prestazioni dell\'iGPU Intel (ad esempio, correggere i problemi di codifica HEVC 4K, risoluzione e FPS).';

  @override
  String get bootArgIgfxMpc =>
      'Risolvi i problemi di risoluzione dell\'iGPU forzando l\'override del clock massimo dei pixel, rimuovendo i limiti di risoluzione/frequenza di aggiornamento predefiniti di macOS.';

  @override
  String get bootArgGfxfw2 =>
      'Abilita il caricamento completo del firmware iGPU per migliorare l\'utilizzo e le prestazioni. Potrebbe causare errori di avvio: da usare con cautela.';

  @override
  String get bootArgCdclk =>
      'Risolto il problema del panico del kernel su Ice Lake di decima generazione a causa della frequenza del Core Display Clock (CDCLK) troppo bassa.';

  @override
  String get bootArgIgfxdbeo =>
      'Risolto il problema del panico del kernel su Ice Lake di decima generazione in cui il driver calcola erroneamente la dimensione della memoria pre-allocata DVMT.';

  @override
  String get bootArgIceLakeDisplay =>
      'Risolti i problemi di danneggiamento del display che duravano 7-15 secondi sui laptop Ice Lake di decima generazione all\'avvio.';

  @override
  String get bootArgIgfxNoTelemetry =>
      'Disabilita il caricamento del modulo di telemetria iGPU durante l\'avvio. Alcuni laptop (in particolare i Chromebook) potrebbero bloccarsi all\'avvio quando viene caricato questo modulo.';

  @override
  String get bootArgWegNoEgpu =>
      'Disabilita la GPU discreta (consigliato quando non è possibile gestire la dGPU sui laptop Intel con doppia GPU, in genere NVIDIA).';

  @override
  String get bootArgNvDisable =>
      'Disabilita il driver NVIDIA (solo per il debug di GPU NVIDIA incompatibili).';

  @override
  String get bootArgUnfairGva =>
      'Risolto il problema con il supporto DRM hardware sulle GPU AMD (abilita contenuti protetti da DRM come lo streaming su GPU AMD supportate).';

  @override
  String get bootArgRadpg15 =>
      'Risolto il problema del danneggiamento del display (schermo criptato/giallo) sulle GPU AMD meno recenti (HD7750, HD7850 con core GCN come HD77XX/HD78XX/HD79XX).';

  @override
  String get bootArgAmdNoAccel =>
      'Disabilita l\'accelerazione GPU ATI/AMD (da utilizzare quando il sistema non si avvia dopo la patch GPU OCLP, solo debug).';

  @override
  String get bootArgRaddvi =>
      'Correzione della visualizzazione dell\'uscita DVI sulle GPU AMD meno recenti (290X, 370, ecc.).';

  @override
  String get bootArgRadcodec =>
      'Risolto il problema con il supporto della codifica video hardware VDA per le GPU AMD ufficialmente non supportate (ad esempio, RX550 Lexa core).';

  @override
  String get bootArgNgfxFermi =>
      'Risolvi i problemi dei driver GPU per le vecchie schede NVIDIA Fermi/Maxwell/Pascal (GT610, GTX750, GTX960, GTX1050) su macOS Big Sur 11+. È necessario applicare la patch GPU OCLP dopo essere entrati nel sistema! Keplero NON ne ha bisogno.';

  @override
  String get bootArgApplbkl3 =>
      'Abilita il controllo della retroilluminazione PWM per le GPU AMD Radeon RX serie 5000.';

  @override
  String get bootArgAgdpmodIgnore =>
      'Risolvi i problemi di schermata nera o di visualizzazione su alcune GPU ignorando completamente le restrizioni di AppleGraphicsDevicePolicy.kext. Utilizzare con EverythingGreen.kext.';

  @override
  String get bootArgAgdpmodPikera =>
      'Correggi lo schermo nero all\'avvio per le GPU AMD Navi RX5XXX/RX6XXX (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, ecc.) sostituendo board-id con board-ix. Utilizzare con EverythingGreen.kext.';

  @override
  String get bootArgAgdpmodVit9696 =>
      'Correggi lo schermo nero dopo la sospensione/riattivazione sulle GPU RX470/RX570 disabilitando il controllo dell\'ID scheda in AppleGraphicsDevicePolicy. Utilizzare con EverythingGreen.kext.';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Correzione dello schermo nero su Ventura+ per GPU AMD RX5XX/RX5XXX/RX6XXX supportate nativamente su Intel di terza generazione o precedenti. Applica la patch GPU OCLP dopo l\'avvio, quindi rimuovi questo argomento.';

  @override
  String get bootArgBrcmfx =>
      'Correggi la bassa velocità su alcune schede Wi-Fi Broadcom modificando il codice paese in HK. Puoi anche migliorare cambiando il canale del router.';

  @override
  String get bootArgVsmcgen =>
      'Risolti i problemi di blocco del codice ramrod e di corruzione dell\'emulatore SMC.';

  @override
  String get bootArgSwdPanic =>
      'Impedisci il riavvio del dispositivo dopo la sospensione per raccogliere i registri degli arresti anomali del kernel ed eseguire il debug dei problemi di sospensione.';

  @override
  String get bootArgCtrsmt =>
      'Migliora il rilevamento e la pianificazione della topologia per le CPU Intel ibride (P+E) di dodicesima generazione. Miglioramento delle prestazioni non garantito: testare prima dell\'attivazione. Richiede CpuTopologyRebuild.kext.';

  @override
  String get bootArgDarkwake0 =>
      'Disattiva completamente la modalità Darkwake e utilizza la modalità di sospensione tradizionale. Risolve principalmente i problemi di riattivazione dello schermo nero e di riattivazione automatica.';

  @override
  String get bootArgForceRenderStandby =>
      'Disabilita lo standby del rendering di iGPU RC6 per correggere il panico del kernel NVMe causato da iGPU RC6 durante la sospensione.';

  @override
  String get bootArgI2cForcePolling =>
      'Forza il trackpad I2C a utilizzare la modalità polling invece della modalità basata su interruzione (la modalità interruzione in genere richiede la personalizzazione SSDT).';

  @override
  String get kextLiluDesc =>
      'Driver di base richiesto che fornisce estensibilità e compatibilità per macOS. Tutti i kex di tipo plugin dipendono da questo.';

  @override
  String get kextVirtualSMCDesc =>
      'Emulatore SMC richiesto. Simula Apple SMC su hardware non Apple, fornendo sensori, controllo della ventola e gestione dell\'alimentazione. macOS non può funzionare senza questo.';

  @override
  String get kextWhateverGreenDesc =>
      'Supporto del driver grafico GPU. Fortemente consigliato per la maggior parte degli utenti. MacPro7,1 con dGPU AMD (RX460, RX560+) potrebbe deselezionare. Di solito è in conflitto con NootRX/NootedRed: non selezionarli insieme durante l\'installazione.';

  @override
  String get kextAppleALCDesc =>
      'Utilizza AppleALC per falsificare il codec audio integrato (soluzione più completa, scelta preferibile).';

  @override
  String get kextVoodooHDADesc =>
      'Driver audio universale VoodooHDA (caricato durante l\'avvio, supporta solo macOS Big Sur 11.2.3 e versioni precedenti; le versioni superiori richiedono l\'inserimento nella cartella dell\'estensione del kernel di sistema).';

  @override
  String get kextUSBInjectAllDesc =>
      'Soluzione USB injection generica, la scelta predefinita quando non è stata eseguita la personalizzazione USB.';

  @override
  String get kextUSBToolBoxDesc =>
      'Soluzione USBToolBox, generalmente utilizzata insieme a un UTBMap.kext personalizzato.';

  @override
  String get kextBatteryV1Desc =>
      'Soluzione driver batteria 1 (per laptop con Intel di terza generazione o piattaforme precedenti).';

  @override
  String get kextBatteryV2Desc =>
      'Soluzione driver batteria 2 (per laptop con Intel di terza generazione o piattaforme più recenti).';

  @override
  String get kextAmbientLightDesc =>
      'Sensore di luce ambientale (luminosità automatica dello schermo). Non utilizzare se non si dispone di un sensore di luce ambientale poiché potrebbe causare problemi.';

  @override
  String get kextAsusNBFnKeysDesc =>
      'Controllo della ventola del laptop ASUS, gestione dell\'alimentazione e altre ottimizzazioni dei sensori di sistema. Non consigliato per macchine non ASUS.';

  @override
  String get kextLenovoDesc =>
      'Controllo della ventola del laptop Lenovo, gestione dell\'alimentazione e altre ottimizzazioni dei sensori di sistema. Non consigliato per macchine non Lenovo.';

  @override
  String get kextDellDesc =>
      'Sensore dedicato per laptop Dell per un monitoraggio e un controllo più accurati delle ventole. Non consigliato per macchine non Dell.';

  @override
  String get kextNootRXDesc =>
      'Supporta dGPU RX6XXX ufficialmente non supportate (RX6700, RX6750XT, RX6750GRE, ecc.). È in conflitto con EverythingGreen: non selezionare insieme durante l\'installazione.';

  @override
  String get kextBatteryFixDesc =>
      'Correzione della lettura della batteria, risolve alcuni problemi di visualizzazione della batteria.';

  @override
  String get kextNVMeFixDesc =>
      'Migliora la compatibilità per gli SSD NVMe non Apple e riduci il consumo energetico in modalità inattiva. Le unità NVMe incompatibili potrebbero comunque bloccarsi. Le unità NVMe compatibili potrebbero causare il panico del kernel con questo driver: da usare con cautela.';

  @override
  String get kextFeatureUnlockDesc =>
      'Sblocca Controllo Universale, Sidecar e altre funzionalità sui modelli Mac non supportati.';

  @override
  String get kextHibernationFixDesc =>
      'Risolvi i problemi comuni legati all\'ibernazione e al sonno.';

  @override
  String get kextHoRNDIS =>
      'Consenti a macOS di utilizzare il tethering di rete del dispositivo Android tramite USB.';

  @override
  String get kextCPUFriendDesc =>
      'Driver di ridimensionamento della frequenza della CPU, che fornisce principalmente supporto per il ridimensionamento della frequenza per MacPro7,1 su piattaforme di 11a generazione e successive.';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'Driver dati complementare CPUFriend, che fornisce dati di ridimensionamento della frequenza della CPU per modelli di macchina specifici.';

  @override
  String get kextAppleIGHDA =>
      'Risolvi i problemi audio HDMI di Intel iGPU su alcuni sistemi.';

  @override
  String get kextNoTouchID =>
      'Risolta l\'impossibilità di accedere all\'ID Apple e ad iCloud, solitamente per i laptop senza una scheda di rete cablata locale.';

  @override
  String get kextAppleRTCDesc =>
      'Risolvi i conflitti tra macOS AppleRTC e il BIOS del PC sulle piattaforme più recenti, ad esempio RTC che causa blocchi, riavvii improvvisi o riattivazione immediata dalla modalità di sospensione.';

  @override
  String get kextPS2KBMouseDesc =>
      'Driver per tastiera e mouse PS/2 (per schede madri desktop con porte rotonde PS/2).';

  @override
  String get kextPS2KeyboardDesc =>
      'Driver per tastiera PS/2 (per schede madri desktop con porte per tastiera rotonde PS/2).';

  @override
  String get kextPS2MouseDesc =>
      'Driver del mouse PS/2 (per schede madri desktop con porte mouse rotonde PS/2).';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Driver dedicato per tastiera e trackpad Microsoft Surface.';

  @override
  String get kextBrightnessKeysDesc =>
      'Correzione del tasto di scelta rapida della luminosità.';

  @override
  String get kextGenericUSBXHCIDesc =>
      'Correzione della compatibilità del controller USB 3.0 per piattaforme precedenti o AMD.';

  @override
  String get kextXLNCUSBFixDesc =>
      'Risolvi i problemi di compatibilità del controller USB sulle piattaforme AMD meno recenti (FM1/FM2/AM3).';

  @override
  String get kextRealtekCardReaderDesc =>
      'Driver del lettore di schede SD Realtek (da utilizzare con RealtekCardReaderFriend).';

  @override
  String get kextRadeonSensorDesc =>
      'Ottimizza le prestazioni della GPU AMD Radeon, ma in alcuni scenari potrebbe causare arresti anomali del sistema o errori di avvio: da utilizzare con cautela.';

  @override
  String get hwStatusIdle =>
      'In attesa di aggiornare le informazioni sull\'hardware';

  @override
  String get hwStatusLoading => 'Caricamento informazioni sull\'hardware';

  @override
  String get hwStatusRefreshing =>
      'Aggiornamento delle informazioni sull\'hardware';

  @override
  String get hwStatusComplete => 'Informazioni hardware caricate';

  @override
  String get hwStatusFailed =>
      'Impossibile caricare le informazioni sull\'hardware';

  @override
  String get hwStatusUnsupported => 'Informazioni hardware non supportate';

  @override
  String get hwStatusImported => 'Informazioni hardware importate';

  @override
  String get hwPlatformUnsupported =>
      'La piattaforma attuale non supporta la query di informazioni sull\'hardware';

  @override
  String hwFetchFailed(String error) {
    return 'Impossibile recuperare le informazioni sull\'hardware: $error';
  }

  @override
  String get hwExportWarning =>
      'Questo è un rapporto importato. Aggiorna le informazioni sull\'hardware locale prima dell\'esportazione.';

  @override
  String get hwNoLocalInfo =>
      'Nessuna informazione hardware locale disponibile per l\'esportazione';

  @override
  String get hwFolderCleanFailed =>
      'Impossibile pulire la cartella dei rapporti hardware';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'Impossibile pulire la cartella dei rapporti hardware: $error';
  }

  @override
  String get hwFolderCreateFailed =>
      'Impossibile creare la cartella dei rapporti hardware';

  @override
  String get hwExporting =>
      'Esportazione del report sull\'hardware locale in corso...';

  @override
  String hwExportSuccess(String path) {
    return 'Report hardware e tabelle ACPI esportate in $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'Rapporto hardware esportato in $path, $error';
  }

  @override
  String get hwAcpiExporting =>
      'Esportazione delle tabelle ACPI locali in corso...';

  @override
  String get hwAcpiExportFailed =>
      'Impossibile esportare le tabelle ACPI locali';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'Tabelle ACPI locali esportate: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'Impossibile esportare le tabelle ACPI locali: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'La piattaforma attuale non supporta l\'esportazione di tabelle ACPI';

  @override
  String get hwAcpiAuthCancelled =>
      'Autorizzazione amministrativa annullata. Tabelle ACPI non esportate.';

  @override
  String get hwAcpiNoPassword =>
      'Nessuna password amministratore fornita. Impossibile esportare tabelle ACPI.';

  @override
  String get hwAcpiWrongPassword =>
      'Password amministratore errata. Impossibile esportare tabelle ACPI.';

  @override
  String get hwImportNotJson =>
      'Il file di informazioni hardware non è un oggetto JSON';

  @override
  String get hwImportSuccess => 'Informazioni hardware importate';

  @override
  String get hwImportAcpiInvalid =>
      'Directory delle tabelle ACPI non valida. SSDT personalizzato non disponibile.';

  @override
  String hwImportFailed(String error) {
    return 'Impossibile importare il report hardware: $error';
  }

  @override
  String get hwConfigStart => 'Avvio della configurazione EFI...';

  @override
  String get hwConfigGenerating =>
      'Generazione del ConfigModel dalle informazioni sull\'hardware in corso...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'Preparazione SSDT personalizzato: $items';
  }

  @override
  String get hwConfigSsdtSkip =>
      'Utilizzando l\'SSDT EFI originale. Saltare SSDT personalizzato.';

  @override
  String get hwConfigSsdtDisabled =>
      'Report hardware esterno importato senza directory delle tabelle ACPI. SSDT personalizzato disabilitato.';

  @override
  String get hwConfigExporting => 'Esportazione di OpenCore EFI in corso...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'Configurazione EFI non riuscita: $error';
  }

  @override
  String get hwConfigRebuilding =>
      'È in corso il refactoring delle regole ConfigModel di generazione automatica dell\'hardware';

  @override
  String get cpuUnknown => 'Sconosciuto';

  @override
  String get platDesktop => 'Desktop';

  @override
  String get platLaptop => 'Computer portatile';

  @override
  String get platMini => 'Mini PC';

  @override
  String get platServer => 'Server';

  @override
  String get csrEnabled =>
      'Abilita SIP per migliorare la sicurezza del sistema. Consigliato se non si utilizza OCLP per le patch GPU/WiFi.';

  @override
  String get csrPartial => 'Disabilita l\'opzione SIP 1';

  @override
  String get csrPartialDesc =>
      'Disattiva parzialmente SIP. Consigliato per Big Sur o versioni successive quando si utilizza OCLP per patch GPU/WiFi.';

  @override
  String get csrFully => 'Disabilita l\'opzione SIP 2';

  @override
  String get csrFullyDesc =>
      'Disabilitare completamente SIP. Preferito per Big Sur o versioni successive quando si utilizza OCLP per patch GPU/WiFi.';

  @override
  String get uiScaleAuto =>
      'Adattamento automatico: regola automaticamente la scala dell\'interfaccia utente di avvio OpenCore in base alla risoluzione del display.';

  @override
  String get uiScaleStandard =>
      'Risoluzione standard: adatta per display 720p, 1080p, 1440p.';

  @override
  String get uiScaleHigh =>
      'Alta risoluzione: adatto per display 4K/5K (corregge piccoli elementi dell\'interfaccia utente nel menu di avvio OpenCore).';

  @override
  String get procDefault => 'Non modificare ProcessorType';

  @override
  String get procKeep =>
      'Mantieni la visualizzazione del tipo di CPU predefinita del sistema';

  @override
  String get brandAsus => 'ASUS';

  @override
  String get brandGigabyte => 'GIGABYTE';

  @override
  String get brandAsrock => 'ASRock';

  @override
  String get brandMsi => 'MSI';

  @override
  String get brandDell => 'Dell';

  @override
  String get brandLenovo => 'Lenovo';

  @override
  String get brandSony => 'VAIO';

  @override
  String get brandHp => 'HP';

  @override
  String get brandGoogle => 'Chromebook';

  @override
  String get brandMicrosoft => 'Microsoft Surface';

  @override
  String get mbNormal => 'Scheda madre standard';

  @override
  String get mbOemUsb =>
      'Alcune schede madri OEM presentano problemi di rilascio della proprietà USB: errore di trasferimento EHCI';

  @override
  String get navAppGuide => 'Guida all\'app';

  @override
  String get appGuideTitle => 'Guida per l\'utente di RapidEFI';

  @override
  String get logMsg001 =>
      '=> Impossibile trovare LPC(B)! Operazione terminata!';

  @override
  String get logMsg002 =>
      'Nessun DSDT valido trovato! Seleziona prima un file DSDT o una directory di file contenente DSDT!';

  @override
  String get logMsg003 =>
      'La preparazione dello strumento iasl non è riuscita! Si prega di aggiornare o utilizzare prima lo strumento iasl integrato!';

  @override
  String get logMsg004 => 'Nessun file .aml valido trovato!\\n';

  @override
  String get logMsg005 =>
      'Nessun DSDT valido trovato! Seleziona prima un file DSDT o una directory di file contenente DSDT!';

  @override
  String get logMsg006 =>
      'Attualmente vengono rilevati più file DSDT e ne è consentita l\'elaborazione solo uno alla volta. Conserva un file DSDT, rimuovi gli altri e riprova.\\n';

  @override
  String get logMsg007 =>
      'File DSDT non valido! Riseleziona un file DSDT valido!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 Decompilazione fallita!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'Risultato della compilazione: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'Si è verificato un errore durante l\'elaborazione del tipo IntObj: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'Errore durante l\'elaborazione del tipo MethodObj: $arg0';
  }

  @override
  String get logMsg012 => 'Nessuna informazione IRQ trovata!';

  @override
  String get logMsg013 =>
      'Le opzioni correnti o gli IRQ personalizzati sono vuoti! Impossibile generare la patch IRQ!';

  @override
  String get logMsg014 => '=> Nessuna informazione IRQ trovata!';

  @override
  String get logMsg015 =>
      'Formato elenco IRQ personalizzato errato! ! ! Separa i dispositivi con spazi e IRQ con virgole! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> Errore di analisi _HID: $arg0';
  }

  @override
  String get logMsg017 =>
      'Nessun dispositivo valido trovato, operazione HPET saltata!';

  @override
  String get logMsg018 =>
      'Non è stato fornito alcun IRQ valido oppure gli IRQ sono vuoti! Operazione interrotta!';

  @override
  String logMsg019(String arg0) {
    return '=> Impossibile individuare $arg0._CRS! Operazione terminata!';
  }

  @override
  String logMsg020(String arg0) {
    return '=> Impossibile individuare $arg0._CRS!';
  }

  @override
  String get logMsg021 => '=> _CRS sembra essere stato chiamato XCRS!';

  @override
  String get logMsg022 =>
      '=> Disattiva la ridenominazione del dispositivo da _CRS a XCRS in DSDT e riprova dopo il riavvio!\\n';

  @override
  String get logMsg023 =>
      '=> Impossibile determinare il tipo di accesso alla memoria!';

  @override
  String get logMsg024 =>
      '=> Impossibile convertire Base o Lunghezza in numeri interi!';

  @override
  String get logMsg025 => '=> Non trovato!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> Usa valore predefinito $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> Non trovato!';

  @override
  String get logMsg028 => '=> Niente da correggere!';

  @override
  String logMsg029(String arg0, String arg1) {
    return 'Fine patch IRQ mancante ($arg1) per $arg0! Saltato…';
  }

  @override
  String get logMsg030 =>
      'I seguenti potrebbero non essere univoci e sono disabilitati per impostazione predefinita! \\N';

  @override
  String get logMsg031 =>
      'Nessun UID valido fornito, interrompere l\'operazione!';

  @override
  String logMsg032(String arg0) {
    return '$arg0 è un UID personalizzato che potrebbe richiedere la personalizzazione manuale o potrebbe non essere affatto supportato!';
  }

  @override
  String get logMsg033 =>
      'Nessun percorso iGPU valido trovato nella tabella ACPI passata!\\n';

  @override
  String logMsg034(String arg0) {
    return 'Nota: il percorso iGPU è indovinato come $arg0\\n Verificare prima dell\'uso!';
  }

  @override
  String logMsg035(String arg0) {
    return 'Nota: il percorso iGPU è stato impostato manualmente su $arg0. Assicurati di confermare se il percorso è corretto prima dell\'uso!';
  }

  @override
  String get logMsg036 =>
      '=> Dispositivo EC nominato trovato, non è necessario contraffarlo!\\n';

  @override
  String get logMsg037 =>
      'La patch dell\'attributo USBX non può essere vuota! Operazione terminata!';

  @override
  String get logMsg038 => 'Nessun dispositivo processore valido trovato!';

  @override
  String get logMsg039 =>
      '=> È stato trovato e verificato un dispositivo PNP0B00 (RTC) valido, non sono necessarie patch o SSDT! Operazione terminata!';

  @override
  String get logMsg040 =>
      '=> Dispositivo ACPI000E (AWAC) non trovato, nessuna patch o SSDT richiesta! Operazione terminata!';

  @override
  String get logMsg041 =>
      '=> Nessun dispositivo trovato! Operazione terminata!';

  @override
  String get logMsg042 =>
      'Nessuna corrispondenza trovata per il seguente percorso:';

  @override
  String get logMsg043 => 'Nessuna corrispondenza trovata!';

  @override
  String get logMsg044 =>
      'Tieni presente che il percorso del dispositivo deve iniziare con il seguente PciRoot() per corrispondere alla tabella ACPI corrente:';

  @override
  String logMsg045(String arg0) {
    return '=> Non trovato, non sembra essere una tabella $arg0 valida!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 valore non trovato! Operazione interrotta!';
  }

  @override
  String get logMsg047 =>
      'Resetta il valore dell\'indirizzo del registro non trovato! Operazione interrotta!';

  @override
  String logMsg048(String arg0) {
    return 'Impossibile risolvere l\'ID del processore in $arg0, interruzione dell\'applicazione delle patch';
  }

  @override
  String logMsg049(String arg0) {
    return 'Prima CPU in $arg0 già abbinata, non è necessario applicare patch alla tabella APIC!';
  }

  @override
  String get logMsg050 =>
      '=> Nessuna corrispondenza per il processore trovata! Operazione interrotta!';

  @override
  String get logMsg051 => 'Seleziona la patch IMEI!';

  @override
  String logMsg052(String arg0) {
    return '=> Dispositivo IMEI trovato su $arg0, non è necessario eseguire il bridge per spoofing! Operazione interrotta!';
  }

  @override
  String get logMsg053 =>
      '=> Dispositivo root PCI non trovato! Operazione interrotta!';

  @override
  String get logMsg054 =>
      '=> L\'IMEI spoofing SSDT non è abilitato, l\'ID dispositivo deve essere impostato tramite DeviceProperties!';

  @override
  String get logMsg055 =>
      'Dispositivo UNC (PNP0A03) non trovato! Non è richiesta alcuna patch SSDT-UNC! Operazione interrotta! \\N';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: il metodo _STA non esiste!';
  }

  @override
  String get logMsg057 =>
      '=> Dispositivo DMA (PNP0200) non trovato in nessuna delle tabelle ACPI sopra! Operazione interrotta! \\N';

  @override
  String get logMsg058 =>
      '=> Il metodo _PTS non è stato trovato, la voce di pianificazione _PTS e la patch di ridenominazione non verranno generate!';

  @override
  String get logMsg059 =>
      '=> Il metodo _WAK non è stato trovato, la voce di pianificazione _WAK e la patch di ridenominazione non verranno generate!';

  @override
  String get logMsg060 =>
      '=> Metodo _PTS/_WAK pianificabile non trovato, SSDT-SleepHook saltato!\\n';

  @override
  String get logMsg061 =>
      '=> Metodo _SST non trovato in nessuna delle tabelle ACPI sopra! Operazione interrotta! \\N';

  @override
  String get logMsg062 =>
      '=> Il dispositivo PNP0C0D non è stato trovato in nessuna delle tabelle ACPI sopra! Operazione interrotta! \\N';

  @override
  String get logMsg063 =>
      '=> Lo stato del sistema non è supportato: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> Nota: il firmware attuale non supporta lo stato _S3. Se l\'impostazione del BIOS non disabilita la funzione S3, la macchina non supporta la sospensione S3!';

  @override
  String get logMsg065 =>
      '=> Nota: questa è una macchina AOAC e macOS non supporta la sospensione S3!';

  @override
  String get logMsg066 =>
      '=> Al momento non è stato rilevato se si tratta di una macchina AOAC, confermalo tu stesso!';

  @override
  String get logMsg067 => 'Valore di basso consumo S0 Idle (V5) non trovato!';

  @override
  String get logMsg068 =>
      'Attualmente è una macchina AOAC, macOS non supporta la sospensione S3!';

  @override
  String get logMsg069 =>
      '=> Nome o metodo _S3 non trovato, la configurazione attuale non supporta la sospensione S3! L\'operazione è stata terminata!';

  @override
  String logMsg070(String arg0) {
    return '=> Metodo $arg0 trovato!';
  }

  @override
  String get logMsg071 =>
      '=> Il metodo corrente è stato rinominato e potrebbe non essere la tabella ACPI originale! Recuperare la tabella ACPI originale e riprovare!\\n';

  @override
  String get logMsg072 =>
      '=> Il dispositivo LID (PNP0C0D) non è stato trovato in nessuna delle tabelle ACPI sopra! Operazione terminata!\\n';

  @override
  String get logMsg073 =>
      '=> Metodo _LID non trovato in nessuna delle tabelle ACPI sopra! Operazione terminata!\\n';

  @override
  String get logMsg074 =>
      '=> Il dispositivo PWRB (PNP0C0C) non è stato trovato nella tabella ACPI sopra! Solo uno falso! \\N';

  @override
  String logMsg075(String arg0) {
    return '=> Non è necessario contraffare il dispositivo SLPB, il dispositivo PNP0C0E è stato trovato su $arg0!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> Il dispositivo PNP0C0E $arg0 ha il metodo _STA!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E Il dispositivo $arg0 non esiste Metodo _STA!';
  }

  @override
  String get logMsg078 =>
      '=> Nessun dispositivo XHC/XHCI/XDCI/CNVW corrispondente trovato! Operazione terminata! \\N';

  @override
  String get logMsg079 => '=> Metodo GPRW non trovato!';

  @override
  String get logMsg080 =>
      '=> Metodo XPRW trovato! Il metodo corrente è stato rinominato e potrebbe non essere la tabella ACPI originale! Recuperare la tabella ACPI originale e riprovare!\\n';

  @override
  String get logMsg081 => '=> Metodo XPRW non trovato! Operazione terminata!';

  @override
  String get logMsg082 => '=> Metodo UPRW non trovato!';

  @override
  String get logMsg083 =>
      '=> Metodo XPRW trovato! Il metodo corrente è stato rinominato e potrebbe non essere la tabella ACPI originale! Recuperare la tabella ACPI originale e riprovare!\\n';

  @override
  String get logMsg084 => '=> Metodo XPRW non trovato! Operazione terminata!';

  @override
  String get logMsg085 =>
      '=> Dispositivo GPI0 non trovato! Operazione terminata! \\N';

  @override
  String get logMsg086 =>
      '=> Metodo _STA non trovato! Operazione terminata! \\N';

  @override
  String get logMsg087 =>
      '=> L\'attuale schema di denominazione del processore del processore è conforme alle specifiche di denominazione della CPU! Non c\'è bisogno di questo SSDT! L\'operazione è stata terminata!';

  @override
  String get logMsg088 =>
      '=> Non esiste alcun dispositivo PLTF, l\'attuale piattaforma Intel non richiede questo SSDT! L\'operazione è terminata...';

  @override
  String get logMsg089 =>
      '=> Nessun dispositivo CPU che soddisfa i requisiti è stato trovato, nessuna patch SSDT-CPUR richiesta! Operazione terminata!';

  @override
  String get logMsg090 =>
      '=> L\'IMEI spoofing SSDT non è abilitato, l\'ID dispositivo deve essere impostato tramite DeviceProperties!';

  @override
  String get logMsg091 =>
      'Nessun percorso del dispositivo ACPI valido fornito! Operazione interrotta!';

  @override
  String logMsg092(String arg0) {
    return 'Il metodo _ON o _OFF corrispondente per $arg0 non è stato trovato in DSDT o SSDT! Operazione interrotta!';
  }

  @override
  String logMsg093(String arg0) {
    return 'Il metodo _PS3 o _DSM corrispondente a $arg0 non è stato trovato nel DSDT o SSDT! Operazione interrotta!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> Esiste un metodo _PRT per il dispositivo $arg0, che potrebbe aver nascosto il dispositivo reale e iniettare un dispositivo bridge BRG0!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> Il dispositivo $arg0 non esiste!';
  }

  @override
  String logMsg096(String arg0) {
    return 'Il percorso attuale del dispositivo $arg0 potrebbe nascondere il dispositivo reale!';
  }

  @override
  String logMsg097(String arg0) {
    return '=> C\'è un overflow nell\'indirizzo _ADR del dispositivo della scheda grafica $arg0!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> Torna al percorso del dispositivo genitore: $arg0 e inserisci un dispositivo bridge BRG0!';
  }

  @override
  String logMsg099(String arg0) {
    return 'Metodo di mascheramento sconosciuto: $arg0, operazione interrotta.';
  }

  @override
  String logMsg100(String arg0) {
    return 'Alcuni metodi non trovati: $arg0';
  }

  @override
  String get logMsg101 =>
      '=> Impossibile trovare un dispositivo bus valido, l\'operazione è stata terminata!';

  @override
  String get logMsg102 =>
      'Nessun percorso ACPI valido della scheda grafica fornito! Operazione terminata!';

  @override
  String get logMsg103 =>
      'Non è stato fornito alcun ID valido per la scheda grafica contraffatta! Operazione terminata!';

  @override
  String get logMsg104 =>
      'Non è stato fornito alcun nome di scheda grafica contraffatta valido! Non verranno immessi nomi contraffatti!';

  @override
  String logMsg105(String arg0) {
    return 'Il percorso attuale della scheda grafica $arg0 potrebbe nascondere il dispositivo reale!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> Il dispositivo $arg0 ha un metodo _PRT, che potrebbe aver nascosto il dispositivo reale e iniettare un dispositivo GFX0!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> Dispositivo $arg0 non trovato in DSDT o SSDT! Operazione interrotta!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> C\'è un overflow nell\'indirizzo _ADR del dispositivo della scheda grafica $arg0!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> Torna al percorso del dispositivo principale: $arg0 e inserisci un dispositivo GFX0!';
  }

  @override
  String get logMsg110 =>
      'Nel percorso del dispositivo è presente un overflow dell\'indirizzo _ADR!';

  @override
  String get logMsg111 =>
      'I seguenti dispositivi possono influenzare l\'iniezione di proprietà:';

  @override
  String get logMsg112 => 'Individuazione di LPC(B)/SBRG…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 trovato in $arg0';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 trovato in $arg0';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 trovato in $arg0';
  }

  @override
  String logMsg116(String arg0) {
    return 'Percorso DSDT fornito: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'Il percorso DSDT fornito non è valido: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'Raccolta di tabelle ACPI valide dalla directory $arg0...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'Sono state trovate in totale $arg0 tabelle ACPI, di cui $arg1 valide:';
  }

  @override
  String get logMsg120 => 'Sono stati verificati diversi file con firme DSDT:';

  @override
  String logMsg121(String arg0) {
    return 'Sto per decompilare $arg0 per verificare se è necessario applicare patch predefinite...';
  }

  @override
  String get logMsg122 => '=> Non è necessario applicare patch predefinite!\\n';

  @override
  String logMsg123(String arg0) {
    return 'Caricamento $arg0...';
  }

  @override
  String get logMsg124 => 'Elaborazione completata!\\n';

  @override
  String get logMsg125 => 'Il file o la cartella passata non esiste!\\n';

  @override
  String get logMsg126 => 'Gestione dei file DSDT problematici...';

  @override
  String get logMsg127 => 'Controlla le patch già pronte disponibili...';

  @override
  String logMsg128(String arg0) {
    return 'Caricamento del file $arg0 in memoria...';
  }

  @override
  String get logMsg129 => 'Elaborazione delle patch una per una...\\n';

  @override
  String get logMsg130 => '=> Posizionato, applicazione...';

  @override
  String get logMsg131 =>
      '=> Il file DSDT della domanda precedente è stato decompilato con successo!';

  @override
  String logMsg132(String arg0) {
    return '=> La patch è stata applicata al file modificato e il file è stato salvato nella cartella Risultati:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return 'Caricamento di tabelle ACPI valide in $arg0...';
  }

  @override
  String get logMsg134 =>
      'Decompilazione di tutte le tabelle ACPI valide completata!';

  @override
  String logMsg135(String arg0) {
    return 'Tempo totale impiegato: $arg0 secondi\\n';
  }

  @override
  String logMsg136(String arg0) {
    return 'Compilazione $arg0.aml riuscita!';
  }

  @override
  String logMsg137(String arg0) {
    return 'Elimina il file sorgente $arg0.dsl';
  }

  @override
  String logMsg138(String arg0) {
    return '=> Ambito non trovato per il dispositivo $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> Impossibile individuare $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return 'Individuazione del dispositivo $arg0 ($arg1)...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> Impossibile scegliere come target alcun $arg0 dispositivo';
  }

  @override
  String logMsg142(String arg0) {
    return '=> trovato $arg0';
  }

  @override
  String get logMsg143 => '=> In cerca di verifica _STA…';

  @override
  String get logMsg144 =>
      '=> _STA è stato rinominato XSTA! Salta altri controlli...';

  @override
  String get logMsg145 =>
      '=> Disattiva la ridenominazione del dispositivo da _STA a XSTA in DSDT e riprova dopo il riavvio!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 variabile $arg1';
  }

  @override
  String get logMsg147 => '=> Metodo/nome _STA non trovato';

  @override
  String logMsg148(String arg0) {
    return '=> Trovato metodo _STA all\'indice $arg0!';
  }

  @override
  String get logMsg149 => '=> Generazione di rinomina _STA in XSTA';

  @override
  String get logMsg150 =>
      '=> Sono presenti più istruzioni return o il valore restituito non è Return (0x0F)';

  @override
  String get logMsg151 => 'Raccolta informazioni sul dispositivo ACPI...';

  @override
  String get logMsg152 =>
      'Raccolta dei percorsi dei dispositivi ACPI in corso...';

  @override
  String get logMsg153 => 'Ricontrollo dei dispositivi orfani...';

  @override
  String logMsg154(String arg0) {
    return 'IRQ personalizzati attuali: $arg0';
  }

  @override
  String get logMsg155 => '=> Esempio: RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> Trovato _HID: $arg0';
  }

  @override
  String get logMsg157 => 'Individuazione del dispositivo PNP0103 (HPET)…';

  @override
  String logMsg158(String arg0) {
    return '=> posizionato a $arg0';
  }

  @override
  String get logMsg159 => 'Individuazione del metodo/nome _CRS per HPET...';

  @override
  String logMsg160(String arg0) {
    return '=> Situato in $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> Trovato all\'indice: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> Tipo: $arg0';
  }

  @override
  String get logMsg163 => '=> Controllo della memoria32Risolto…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> Ottieni $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'Creazione patch IRQ...';

  @override
  String get logMsg166 => 'Controllo IRQ…';

  @override
  String get logMsg167 => 'L\'IRQ è vuoto! Salta...\\n';

  @override
  String get logMsg168 => 'Nessuna corrispondenza trovata.';

  @override
  String logMsg169(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg170 => 'Creazione di un falso dispositivo HPET...';

  @override
  String logMsg171(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> UID utilizzato: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> Piattaforme applicabili: $arg0';
  }

  @override
  String get logMsg174 =>
      'Nessun percorso iGPU valido fornito, tentativo di ricerca automatica...';

  @override
  String get logMsg175 => 'Alla ricerca del dispositivo iGPU a 0x00020000...';

  @override
  String logMsg176(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> Dispositivo iGPU trovato su $arg0!';
  }

  @override
  String get logMsg178 => 'Dispositivo iGPU non trovato per indirizzo!';

  @override
  String get logMsg179 => 'Ricerca di nomi iGPU comuni…';

  @override
  String logMsg180(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> Possibile dispositivo iGPU trovato in $arg0';
  }

  @override
  String logMsg182(String arg0) {
    return 'Possibile dispositivo iGPU trovato in $arg0\\n';
  }

  @override
  String logMsg183(String arg0) {
    return 'È stato impostato manualmente su $arg0 in base al percorso iGPU indicato\\n';
  }

  @override
  String logMsg184(String arg0) {
    return 'Percorso iGPU non valido: $arg0';
  }

  @override
  String get logMsg185 =>
      'Controllo della tabella ACPI per il dispositivo PNLF nativo in corso...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> Dispositivo PNLF nativo trovato in $arg0: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> Il PNLF nativo deve essere rinominato in XNLF, è in corso la generazione della patch di ridenominazione...';

  @override
  String get logMsg188 => '=> Dispositivo PNLF nativo non trovato!';

  @override
  String get logMsg189 =>
      '=> Non è necessario generare la patch di rinomina PNLF in XNLF!';

  @override
  String logMsg190(String arg0) {
    return 'Nome (NBCF, 0x00) rilevato in $arg0, generazione patch...';
  }

  @override
  String logMsg191(String arg0) {
    return 'Nome (NBCF, Zero) rilevato in $arg0, generazione di patch...';
  }

  @override
  String get logMsg192 => 'Individuazione del dispositivo PNP0C09(EC)...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 Dispositivi PNP0C09 (EC) trovati in $arg0';
  }

  @override
  String get logMsg194 => '=> Verifica...';

  @override
  String logMsg195(String arg0) {
    return '=> trovato $arg0';
  }

  @override
  String get logMsg196 =>
      '=> PNP0C09 (EC) dispositivo denominato EC, rinomina in corso';

  @override
  String get logMsg197 => '=> Dispositivo PNP0C09 (EC) valido';

  @override
  String get logMsg198 =>
      '=> _STA è abilitato correttamente, salta la ridenominazione';

  @override
  String get logMsg199 => '=> Dispositivo PNP0C09 (EC) non valido';

  @override
  String get logMsg200 =>
      '=> Nessun dispositivo PNP0C09 (EC) valido trovato, basta falsificare un dispositivo EC';

  @override
  String logMsg201(String arg0) {
    return 'Creazione di $arg0.dsl…';
  }

  @override
  String logMsg202(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg203 =>
      'Determinazione dello schema di denominazione della CPU in corso...';

  @override
  String logMsg204(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> Processore trovato: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> Nessun oggetto processore trovato...';

  @override
  String get logMsg208 => '=> Dispositivo ACPI0007 non trovato…';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 dispositivi ACPI0007 trovati';
  }

  @override
  String logMsg210(String arg0) {
    return '=> Dispositivo principale trovato su $arg0, elaborazione in corso...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> Controllo $arg0…';
  }

  @override
  String get logMsg212 => '=> Non trovato! saltare…';

  @override
  String get logMsg213 => '=> Non trovato! saltare…';

  @override
  String logMsg214(String arg0) {
    return 'Elaborazione di $arg0 dispositivi processore validi...';
  }

  @override
  String get logMsg215 => 'Impossibile ottenere il nome LPC...';

  @override
  String logMsg216(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg217 => '=> È necessario contraffare RTC!';

  @override
  String get logMsg218 => '=> Controllo _CRS…';

  @override
  String get logMsg219 =>
      '=> _CRS è un buffer che controlla l\'intervallo RTC...';

  @override
  String get logMsg220 =>
      '=> Impossibile regolare il valore, impossibile verificare la gamma RTC.';

  @override
  String get logMsg221 =>
      '=> Impossibile raccogliere il valore, impossibile verificare l\'intervallo RTC.';

  @override
  String get logMsg222 =>
      '=> _CRS è un metodo e non può verificare la portata RTC!';

  @override
  String get logMsg223 =>
      '=> Generazione della ridenominazione di _CRS in XCRS…';

  @override
  String logMsg224(String arg0) {
    return '=> Trovato all\'indice $arg0';
  }

  @override
  String get logMsg225 => '=> non trovato';

  @override
  String logMsg226(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String get logMsg228 => 'Raccolta dispositivi RHUB/HUBN/URTH...';

  @override
  String logMsg229(String arg0) {
    return '=> $arg0 dispositivi trovati';
  }

  @override
  String get logMsg230 => '=> È necessario rinominarlo!';

  @override
  String logMsg231(String arg0) {
    return '=> Verifica $arg0: se esiste il metodo _STA';
  }

  @override
  String logMsg232(String arg0) {
    return '=> Trovato metodo _STA all\'indice $arg0!';
  }

  @override
  String get logMsg233 => '=> Genera patch da _STA a XSTA';

  @override
  String get logMsg234 => '=> Metodo _STA non trovato!';

  @override
  String logMsg235(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String get logMsg236 =>
      '=> C\'è un overflow dell\'indirizzo _ADR nel percorso del dispositivo!';

  @override
  String get logMsg237 =>
      '=> I seguenti dispositivi potrebbero richiedere modifiche transitorie per funzionare correttamente:';

  @override
  String get logMsg238 => 'Raccolta dei dispositivi bridge PCI...';

  @override
  String get logMsg239 =>
      'Il dispositivo bridge PCI è vuoto! L\'operazione è stata terminata!';

  @override
  String get logMsg240 => 'Dispositivo ponte per costruire...';

  @override
  String get logMsg241 => 'Il dispositivo bridge PCI è vuoto! saltare…';

  @override
  String get logMsg242 => 'Percorsi del dispositivo corrispondenti…';

  @override
  String get logMsg243 => 'Nessuna corrispondenza trovata!';

  @override
  String logMsg244(String arg0) {
    return '=> corrisponde a $arg0, non è richiesto alcun bridge';
  }

  @override
  String get logMsg245 => 'Nessuna corrispondenza trovata!\\n';

  @override
  String get logMsg246 => 'Nessun bridge richiesto!\\n';

  @override
  String get logMsg247 => 'Risoluzione del dispositivo bridge...';

  @override
  String get logMsg248 => '=> Impossibile analizzare!';

  @override
  String get logMsg249 =>
      'Errore durante l\'analisi del dispositivo bridge!\\n';

  @override
  String logMsg250(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String get logMsg251 =>
      'Individuazione del dispositivo ACPI0008 (ALS) in corso...';

  @override
  String logMsg252(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> Dispositivo ALS trovato nella tabella $arg0: $arg1!';
  }

  @override
  String get logMsg254 => '=> Non c\'è bisogno di contraffare!\\n';

  @override
  String logMsg255(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String get logMsg256 =>
      '_STA è abilitato correttamente, non è richiesta alcuna patch! \\N';

  @override
  String get logMsg257 => 'Non trovato, nessuna patch richiesta!\\n';

  @override
  String get logMsg258 =>
      'Dispositivo ACPI0008 (ALS) non trovato, è necessario un dispositivo contraffatto...';

  @override
  String logMsg259(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String get logMsg260 => 'Rilevamento dello schema XOSI in corso...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> Rilevato automaticamente: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'Verifica del metodo OSID in corso...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> Metodo trovato $arg1 all\'offset $arg0';
  }

  @override
  String get logMsg264 =>
      '=> Non trovato, non è necessario rinominare OSID in XSID';

  @override
  String get logMsg265 => 'Creazione della ridenominazione da _OSI a XOSI…';

  @override
  String logMsg266(String arg0) {
    return 'Alla ricerca della tabella $arg0…';
  }

  @override
  String logMsg267(String arg0) {
    return 'Tabella $arg0 trovata, verifica della firma...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 verifica della firma della tabella superata!';
  }

  @override
  String logMsg269(String arg0) {
    return 'Controllo del valore $arg0...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'Valore $arg0 ottenuto: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'Ottenuto il valore dell\'indirizzo del registro di ripristino: $arg0';
  }

  @override
  String get logMsg272 =>
      'Le patch ACPI che devono essere aggiornate sono le seguenti:';

  @override
  String get logMsg273 => 'Applicazione di patch alla tabella APIC in corso...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> ID processore APIC corretto: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> Patching della tabella APIC completata!';

  @override
  String logMsg276(String arg0) {
    return 'Creazione di $arg0.dsl…';
  }

  @override
  String get logMsg277 =>
      'Controllo dell\'area di memoria riservata della tabella DMAR in corso...';

  @override
  String get logMsg278 =>
      '=> Nessuna area di memoria riservata trovata, non è necessario applicare la patch DMAR!\\n';

  @override
  String logMsg279(String arg0) {
    return 'Trovate $arg0 aree di memoria riservate, generazione di una nuova tabella...';
  }

  @override
  String get logMsg280 =>
      'Ricerca dispositivo IMEI all\'indirizzo 0x00160000...';

  @override
  String get logMsg281 =>
      'Dispositivo IMEI non trovato, è necessario contraffare il dispositivo...';

  @override
  String get logMsg282 => 'Verifica del dispositivo principale...';

  @override
  String get logMsg283 => 'Alla ricerca del dispositivo iGPU a 0x00020000...';

  @override
  String get logMsg284 => '=> Dispositivo iGPU non trovato!';

  @override
  String get logMsg285 => 'Tentativo di individuare il dispositivo root PCI...';

  @override
  String logMsg286(String arg0) {
    return '=> Dispositivo root PCI trovato: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> Dispositivo iGPU trovato: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> Usa dispositivo genitore: $arg0';
  }

  @override
  String get logMsg289 => 'Raccolta di schemi di ID dispositivo falsi...';

  @override
  String logMsg290(String arg0) {
    return '=> Contraffatto come IMEI della scheda madre della serie 7 (ID dispositivo: $arg0) per corrispondere al processore Ivy Bridge di terza generazione';
  }

  @override
  String logMsg291(String arg0) {
    return '=> Contraffatto come IMEI della scheda madre della serie 6 (ID dispositivo: $arg0) per corrispondere al processore Sandy Bridge di seconda generazione';
  }

  @override
  String logMsg292(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String get logMsg293 => 'Alla ricerca del dispositivo UNC (PNP0A03)...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 Dispositivi UNC trovati';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> Dispositivo UNC $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> Controlla se $arg0: il metodo _STA esiste';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> Trovato $arg1: metodo _STA all\'indice $arg0!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> Genera $arg0: patch da _STA a XSTA';
  }

  @override
  String logMsg299(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg300(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg301 => 'Verifica se esiste il metodo DTGP...';

  @override
  String get logMsg302 => '=> Metodo DTGP non trovato!';

  @override
  String get logMsg303 =>
      '=> Metodo DTGP non trovato in nessuna delle tabelle ACPI sopra! \\N';

  @override
  String logMsg304(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg305(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg306 => 'Alla ricerca del dispositivo DMA (PNP0200)...';

  @override
  String get logMsg307 => '=> Dispositivo DMA (PNP0200) non trovato!';

  @override
  String logMsg308(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg309(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg310 =>
      'Verifica dell\'esistenza del metodo _PTS in corso...';

  @override
  String logMsg311(String arg0) {
    return '=> Metodo $arg0 trovato!';
  }

  @override
  String get logMsg312 => '=> Metodo _PTS non trovato!';

  @override
  String get logMsg313 =>
      'Verifica dell\'esistenza del metodo _WAK in corso...';

  @override
  String logMsg314(String arg0) {
    return '=> Metodo $arg0 trovato!';
  }

  @override
  String get logMsg315 => '=> Metodo _WAK non trovato!';

  @override
  String logMsg316(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg318 =>
      'Verifica dell\'esistenza del metodo _SST in corso...';

  @override
  String logMsg319(String arg0) {
    return '=> Trovato metodo _SST su $arg0!';
  }

  @override
  String get logMsg320 => '=> Metodo _SST non trovato!';

  @override
  String logMsg321(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg323 => 'Verifica della presenza del dispositivo PNP0C0D...';

  @override
  String logMsg324(String arg0) {
    return '=> Dispositivo PNP0C0D trovato in $arg0!';
  }

  @override
  String get logMsg325 => '=> Dispositivo PNP0C0D non trovato!';

  @override
  String logMsg326(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return 'Verifica dell\'esistenza di $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> Trovato $arg1 in $arg0';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> Trovato $arg1 in $arg0';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 non trovato';
  }

  @override
  String get logMsg332 => 'Tutte le tabelle ACPI controllate!';

  @override
  String get logMsg333 =>
      '=> Supporta lo stato del sistema: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> Il firmware attuale supporta gli stati di sistema comuni! Dopo aver risolto il problema della sospensione, macOS può supportare la sospensione S3!';

  @override
  String get logMsg335 =>
      'Controllo del valore di basso consumo S0 inattivo (V5) in corso...';

  @override
  String logMsg336(String arg0) {
    return 'Ottieni inattività S0 a basso consumo (V5): $arg0';
  }

  @override
  String get logMsg337 =>
      'Attualmente non è una macchina AOAC e non influisce sulla sospensione del sistema macOS S3!';

  @override
  String get logMsg338 => 'Verifica dell\'esistenza di _S3...';

  @override
  String logMsg339(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> Nome _S3 trovato in $arg0!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> Metodo trovato _S3 su $arg0!';
  }

  @override
  String get logMsg342 => '=> Nome o metodo _S3 non trovato';

  @override
  String logMsg343(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg344(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg345(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg346 => 'Alla ricerca del dispositivo LID (PNP0C0D)...';

  @override
  String logMsg347(String arg0) {
    return '=> Dispositivo PNP0C0D trovato in $arg0!';
  }

  @override
  String get logMsg348 => '=> Dispositivo LID (PNP0C0D) non trovato!';

  @override
  String logMsg349(String arg0) {
    return '=> Metodo trovato _LID su $arg0!';
  }

  @override
  String get logMsg350 => '=> Metodo _LID non trovato!';

  @override
  String get logMsg351 =>
      'Verifica dell\'esistenza del metodo _TTS in corso...';

  @override
  String logMsg352(String arg0) {
    return '=> Metodo $arg0 trovato!';
  }

  @override
  String get logMsg353 => '=> Metodo _TTS non trovato!';

  @override
  String get logMsg354 =>
      'Verifica dell\'esistenza del metodo ZTTS in corso...';

  @override
  String get logMsg355 => '=> Metodo ZTTS non trovato!';

  @override
  String logMsg356(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg358 => 'Alla ricerca del dispositivo PWRB (PNP0C0C)...';

  @override
  String get logMsg359 => '=> Dispositivo PWRB (PNP0C0C) non trovato!';

  @override
  String logMsg360(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg361(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg362 => 'Alla ricerca del dispositivo SLPB (PNP0C0E)...';

  @override
  String get logMsg363 => '=> Dispositivo SLPB (PNP0C0E) non trovato!';

  @override
  String get logMsg364 =>
      '=> Il dispositivo SLPB (PNP0C0E) non è stato trovato nella tabella ACPI sopra! Solo uno falso! \\N';

  @override
  String logMsg365(String arg0) {
    return 'Creazione di $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg367(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg368(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String get logMsg369 => 'Alla ricerca del dispositivo PNP0C01...';

  @override
  String get logMsg370 => '=> Dispositivo PNP0C01 non trovato!';

  @override
  String get logMsg371 =>
      '=> Il dispositivo PNP0C01 non è stato trovato in nessuna delle tabelle ACPI sopra!\\n';

  @override
  String logMsg372(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg373 => 'Raccolta di dispositivi XHC/XHCI/XDCI/CNVW...';

  @override
  String logMsg374(String arg0) {
    return '=> Verifica se $arg0 dispositivo supporta PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 non supporta PMEE, saltato';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 supporta PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg378 =>
      'Verifica dell\'esistenza del metodo GPRW in corso...';

  @override
  String get logMsg379 =>
      'Verifica dell\'esistenza del metodo XPRW in corso...';

  @override
  String logMsg380(String arg0) {
    return '=> Metodo GPRW trovato in $arg0!';
  }

  @override
  String logMsg381(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg382 =>
      'Verifica dell\'esistenza del metodo UPRW in corso...';

  @override
  String get logMsg383 =>
      'Verifica dell\'esistenza del metodo XPRW in corso...';

  @override
  String logMsg384(String arg0) {
    return '=> Metodo UPRW trovato in $arg0!';
  }

  @override
  String logMsg385(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg386 =>
      'Verifica della presenza del dispositivo GPI0 in corso...';

  @override
  String logMsg387(String arg0) {
    return '=> Dispositivo GPI0 trovato su $arg0!';
  }

  @override
  String get logMsg388 =>
      'Verifica dell\'esistenza del metodo _STA in corso...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> Trovato $arg1: metodo _STA all\'indice $arg0!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> Genera $arg0: patch da _STA a XSTA';
  }

  @override
  String logMsg391(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg392 =>
      'Determinazione dello schema di denominazione della CPU in corso...';

  @override
  String logMsg393(String arg0) {
    return 'Controllo $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> Processore trovato: $arg0';
  }

  @override
  String get logMsg395 => '=> Nessun oggetto processore trovato...';

  @override
  String get logMsg396 => '=> Dispositivo ACPI0007 non trovato…';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 dispositivi ACPI0007 trovati';
  }

  @override
  String logMsg398(String arg0) {
    return '=> Dispositivo principale trovato su $arg0, elaborazione in corso...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> Controllo $arg0…';
  }

  @override
  String get logMsg400 => '=> Non trovato! saltare…';

  @override
  String get logMsg401 => '=> Non trovato! saltare…';

  @override
  String logMsg402(String arg0) {
    return 'Elaborazione di $arg0 dispositivi processore validi...';
  }

  @override
  String logMsg403(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg404(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg405(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg406(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg407(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg408(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg409(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg410(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg411 => 'Raccolta di schemi di ID dispositivo falsi...';

  @override
  String logMsg412(String arg0) {
    return '=> Contraffatto come IMEI della scheda madre della serie 7 (ID dispositivo: $arg0) per corrispondere al processore Ivy Bridge di terza generazione';
  }

  @override
  String logMsg413(String arg0) {
    return '=> Contraffatto come IMEI della scheda madre della serie 6 (ID dispositivo: $arg0) per corrispondere al processore Sandy Bridge di seconda generazione';
  }

  @override
  String logMsg414(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg415(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg416(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg417(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg418(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg419(String arg0) {
    return 'Controllo del dispositivo $arg0 per un metodo _ON o _OFF...';
  }

  @override
  String logMsg420(String arg0) {
    return 'Controllo del dispositivo $arg0 per i metodi _PS3 o _DSM...';
  }

  @override
  String logMsg421(String arg0) {
    return 'Controllo del dispositivo $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> Il metodo _PRT corrispondente a $arg0 non è stato trovato in DSDT o SSDT!';
  }

  @override
  String logMsg423(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 percorso del dispositivo che deve essere bloccato: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> Metodo di schermatura: metodo $arg0.';
  }

  @override
  String logMsg426(String arg0) {
    return '=> Il percorso relativo del dispositivo è stato convertito in percorso assoluto: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> Trova $arg1.$arg2 metodo in $arg0';
  }

  @override
  String logMsg428(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String get logMsg429 => 'Raccolta possibili dispositivi bus...';

  @override
  String logMsg430(String arg0) {
    return 'Creazione di $arg0.dsl precompilato in corso...';
  }

  @override
  String logMsg431(String arg0) {
    return 'Controllo del dispositivo grafico $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> Il metodo _PRT corrispondente a $arg0 non è stato trovato in DSDT o SSDT!';
  }

  @override
  String logMsg433(String arg0) {
    return 'Creazione di $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> Percorso del dispositivo della scheda grafica: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> ID scheda grafica contraffatta: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> Nome della scheda grafica contraffatta: $arg0';
  }

  @override
  String get logMsg437 => '=> Non trovato!';

  @override
  String logMsg438(String arg0) {
    return '=> Percorso PCI corrispondente: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> Aggiorna $arg0 \"$arg1\" a $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" esiste già in $arg2, salta...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> Aggiungi $arg0 \"$arg1\" a $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> Aggiorna il valore della chiave \"$arg0\" a \"$arg1\" in $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> Il valore della chiave \"$arg0\" è già aggiornato, saltando $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> Aggiungi il valore \"$arg1\" della chiave \"$arg0\" a $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return 'Pulizia della cartella di reporting hardware non riuscita: $arg0';
  }

  @override
  String get logMsg446 => 'Esportazione della tabella ACPI nativa non riuscita';

  @override
  String logMsg447(String arg0) {
    return 'Esportazione della tabella ACPI nativa non riuscita: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'Esportazione della tabella ACPI nativa non riuscita: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'Pulizia della directory temporanea della tabella ACPI non riuscita: $arg0';
  }

  @override
  String get logMsg450 => 'Esportazione del report hardware nativo in corso...';

  @override
  String get logMsg451 => 'Esportazione delle tabelle ACPI native in corso...';

  @override
  String logMsg452(String arg0) {
    return 'Esportazione della tabella ACPI nativa completata: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'Il file di origine non esiste: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'Errore durante il salvataggio del file: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'Versione OC attuale: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'Il file ZIP non esiste: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 file decompresso correttamente';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'Errore durante la decompressione del file $arg0: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'Il file o la directory non esiste: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'Compressione completata: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'Errore di compressione: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'Elimina directory: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'Elimina file: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'Eliminazione non riuscita: $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'File salvato con successo in: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'La directory di origine non esiste: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'Cartella preparata: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'Errore durante la creazione della cartella: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'Impossibile aprire la directory, il percorso non esiste: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'Impossibile aprire la directory: $arg0, $arg1';
  }

  @override
  String get autoGen5000 => 'compatibile';

  @override
  String get autoGen5001 => 'Compatibilità limitata';

  @override
  String get autoGen5002 => 'Non compatibile';

  @override
  String get autoGen5003 => 'Abilitato';

  @override
  String get autoGen5004 => 'accendere';

  @override
  String get autoGen5005 => 'sconosciuto';

  @override
  String get autoGen5006 => 'Scheda di rete cablata';

  @override
  String get autoGen5007 =>
      'Compatibilità limitata\nSupporta fino a macOS Tahoe 26\nAVX2 mancante';

  @override
  String get autoGen5008 =>
      'Non compatibile\nSupporta fino a macOS El Capitan 10.11\nSSE4 mancante';

  @override
  String get autoGen5009 => 'ID dispositivo mancante';

  @override
  String get autoGen5010 => 'Supporto NootedRed';

  @override
  String get autoGen5011 => 'Caricamento compatibilità';

  @override
  String get autoGen5012 =>
      'La grafica core della CPU Intel di fascia bassa non è supportata';

  @override
  String get autoGen5013 => 'L\'uscita VGA non è supportata';

  @override
  String get autoGen5014 => 'Assistenza contraffatta';

  @override
  String get autoGen5015 => 'Supporto nativo';

  @override
  String get autoGen5016 =>
      'Error 500 (Server Error)!!1500.That’s an error.There was an error. Please try again later.That’s all we know.';

  @override
  String get autoGen5017 => 'nucleo';

  @override
  String get autoGen5018 => 'indipendente';

  @override
  String get autoGen5019 => 'Esposizione nucleare';

  @override
  String get autoGen5020 => 'ASUS';

  @override
  String get autoGen5021 => 'Gigabyte';

  @override
  String get autoGen5022 => 'ASRock';

  @override
  String get autoGen5023 => 'MSI';

  @override
  String get autoGen5024 => 'Dell';

  @override
  String get autoGen5025 => 'Lenovo';

  @override
  String get autoGen5026 => 'sony';

  @override
  String get autoGen5027 => 'HP';

  @override
  String get autoGen5028 => 'Google';

  @override
  String get autoGen5029 => 'Microsoft';

  @override
  String get autoGen5030 =>
      'Impossibile identificare il tipo di piattaforma in base alle informazioni sulla CPU';

  @override
  String get autoGen5031 => 'taccuino';

  @override
  String get autoGen5032 => 'Mini ospite';

  @override
  String get autoGen5033 => 'postazione di lavoro';

  @override
  String get autoGen5034 =>
      'Non è possibile determinare il codice della piattaforma in base alla CPU, alla scheda madre e al display principale.';

  @override
  String get autoGen5035 => 'Salta il blocco del dispositivo:';

  @override
  String get autoGen5036 => 'Percorso ACPI valido mancante';

  @override
  String get autoGen5037 => 'Elenco SSDT da personalizzare:';

  @override
  String get autoGen5038 => 'Estrazione della tabella ACPI non riuscita';

  @override
  String get autoGen5039 => 'Caricamento della tabella ACPI non riuscito';

  @override
  String get autoGen5040 => 'I risultati SSDT personalizzati sono incompleti';

  @override
  String get autoGen5041 =>
      'Si è verificata un\'eccezione nell\'SSDT personalizzato';

  @override
  String get autoGen5042 =>
      'Pulizia della directory temporanea SSDT personalizzata non riuscita:';

  @override
  String get autoGen5043 =>
      'Spoofing dell\'ID del dispositivo della scheda grafica SSDT';

  @override
  String get autoGen5044 => 'Impossibile generare:';

  @override
  String get autoGen5045 => 'ACPI Device Shield SSDT';

  @override
  String get autoGen5046 => 'Unione SSDT personalizzata saltata';

  @override
  String get autoGen5047 =>
      'Continuare a utilizzare l\'SSDT originale nell\'attuale EFI come fallback.';

  @override
  String get autoGen5048 =>
      'Spoofing dell\'ID del dispositivo della scheda grafica saltato:';

  @override
  String get autoGen5049 =>
      'La cache delle informazioni hardware non è un oggetto JSON';

  @override
  String get autoGen5050 =>
      'Le informazioni sull\'hardware sono state caricate dalla cache';

  @override
  String get autoGen5051 =>
      'Le informazioni sull\'hardware sono state caricate dalla cache locale';

  @override
  String get autoGen5052 =>
      'Le informazioni sull\'hardware sono state caricate dal file di importazione';

  @override
  String get autoGen5053 => 'Inizializza le informazioni sull\'hardware';

  @override
  String get autoGen5054 =>
      'Il sistema attuale non è supportato, è supportato solo Windows';

  @override
  String get autoGen5055 => 'Interrogazione di informazioni sull\'hardware';

  @override
  String get autoGen5056 =>
      'Richiesta di informazioni sull\'hardware completata';

  @override
  String get autoGen5057 =>
      'sysInfo.exe non ha restituito informazioni sull\'hardware';

  @override
  String get autoGen5058 =>
      'Il contenuto restituito da sysInfo.exe non è un oggetto JSON';

  @override
  String get autoGen5059 => 'Query sysInfo.exe completata';

  @override
  String get autoGen5060 => 'scheda grafica principale';

  @override
  String get autoGen5061 => 'Scheda grafica discreta';

  @override
  String get autoGen5062 => 'Già acceso';

  @override
  String get autoGen5063 => 'Scheda grafica sconosciuta';

  @override
  String get autoGen5064 => 'integrato';

  @override
  String get autoGen5065 => 'Broadcom';

  @override
  String get autoGen5066 => 'Qualcomm';

  @override
  String get autoGen5067 => 'Intel';

  @override
  String get autoGen5068 => 'mela';

  @override
  String get autoGen5069 => 'Momento zero';

  @override
  String get autoGen5070 => 'Matsushita';

  @override
  String get autoGen5071 => 'Suppongo';

  @override
  String get autoGen5072 => 'Biostar';

  @override
  String get autoGen5073 => 'Colorato';

  @override
  String get autoGen5074 => 'Zotac';

  @override
  String get autoGen5075 => 'Gengsheng';

  @override
  String get autoGen5076 => 'Yingzhong';

  @override
  String get autoGen5077 => 'Supermicro';

  @override
  String get autoGen5078 => 'Poi';

  @override
  String get autoGen5079 => 'Spartaco';

  @override
  String get autoGen5080 => 'Panzheng';

  @override
  String get autoGen5081 => 'Cina meridionale';

  @override
  String get autoGen5082 => 'Jingyue';

  @override
  String get autoGen5083 => 'La mente';

  @override
  String get autoGen5084 => 'Guoshuo';

  @override
  String get autoGen5085 => 'Jetway';

  @override
  String get autoGen5086 => 'diamante';

  @override
  String get autoGen5087 => 'stella superiore';

  @override
  String get autoGen5088 => 'Mingxuan';

  @override
  String get autoGen5089 => 'Meijie';

  @override
  String get autoGen5090 => 'Elite';

  @override
  String get autoGen5091 => 'Foxconn';

  @override
  String get autoGen5092 => 'un po';

  @override
  String get autoGen5093 => 'Shuangmin';

  @override
  String get autoGen5094 => 'Eunjie';

  @override
  String get autoGen5095 => 'GALASSIA';

  @override
  String get autoGen5096 => 'santa bandiera';

  @override
  String get autoGen5097 => 'Squalo';

  @override
  String get autoGen5098 => 'Controlla';

  @override
  String get autoGen5099 => 'Advantech';

  @override
  String get autoGen5100 => 'ADLINK';

  @override
  String get autoGen5101 => 'Grande meccanico';

  @override
  String get autoGen5102 => 'patriota';

  @override
  String get autoGen5103 => 'ASL';

  @override
  String get autoGen5104 => 'Erying';

  @override
  String get autoGen5105 => 'zaffiro';

  @override
  String get autoGen5106 => 'Contech';

  @override
  String get autoGen5107 => 'Qingyun';

  @override
  String get autoGen5108 => 'Huawei';

  @override
  String get autoGen5109 => 'Miglio';

  @override
  String get autoGen5110 => 'riso rosso';

  @override
  String get autoGen5111 => 'gloria';

  @override
  String get autoGen5112 => 'SAMSUNG';

  @override
  String get autoGen5113 => 'rivoluzione meccanica';

  @override
  String get autoGen5114 => 'meccanico';

  @override
  String get autoGen5115 => 'Thor';

  @override
  String get autoGen5116 => 'Razer';

  @override
  String get autoGen5117 => 'Acer';

  @override
  String get autoGen5118 => 'Toshiba';

  @override
  String get autoGen5119 => 'Fujitsu';

  @override
  String get autoGen5120 => 'cielo blu';

  @override
  String get autoGen5121 => 'alieno';

  @override
  String get autoGen5122 => 'Shenzhou';

  @override
  String get autoGen5123 => 'Haier';

  @override
  String get autoGen5124 => 'Zhongbai';

  @override
  String get autoGen5125 => 'Xuanlong';

  @override
  String get autoGen5126 => 'futuri umani';

  @override
  String get autoGen5127 => 'Cubo';

  @override
  String get autoGen5128 => 'Stella Xuanpai Xuanji';

  @override
  String get autoGen5129 => 'Controllo aggiornamenti, attendi...';

  @override
  String get autoGen5130 =>
      'Ho appena controllato gli aggiornamenti, riprova più tardi';

  @override
  String get autoGen5131 =>
      'Impossibile controllare gli aggiornamenti, riprova più tardi';

  @override
  String get autoGen5132 =>
      'Impossibile ottenere l\'elenco delle versioni di rilascio, riprova più tardi';

  @override
  String get autoGen5133 => 'L\'elenco delle versioni di rilascio è vuoto';

  @override
  String get autoGen5134 => 'Desktop';

  @override
  String get autoGen5135 => 'server';

  @override
  String get autoGen5136 =>
      'Attiva SIP per migliorare la sicurezza del sistema. Si consiglia di selezionare questa casella quando solitamente non è necessario utilizzare OCLP per gestire schede grafiche, WiFi e altri driver.';

  @override
  String get autoGen5137 => 'Disabilita la soluzione SIP uno';

  @override
  String get autoGen5138 =>
      'A meno che SIP non sia completamente disabilitato, in genere si consiglia di selezionare la casella quando sistemi come BigSur e versioni successive necessitano di utilizzare OCLP per gestire schede grafiche, WiFi, ecc.';

  @override
  String get autoGen5139 => 'Disabilita la soluzione SIP due';

  @override
  String get autoGen5140 =>
      'Disabilitare completamente SIP. Di solito, quando sistemi come BigSur e superiori necessitano di utilizzare OCLP per gestire schede grafiche, WiFi, ecc., questa opzione è preferibile.';

  @override
  String get autoGen5141 =>
      'Display adattivo, regola automaticamente il rapporto di visualizzazione dell\'interfaccia di avvio OpenCore in base alla risoluzione del display';

  @override
  String get autoGen5142 =>
      'Monitor con risoluzione standard, adatto per monitor 720p, 1080p, 1440p e altri monitor con risoluzione standard';

  @override
  String get autoGen5143 =>
      'Display ad alta risoluzione, adatto per display ad alta risoluzione come 4K e 5K (può migliorare efficacemente il problema degli elementi dell\'interfaccia utente troppo piccoli nella pagina di avvio OpenCore per schermi ad alta risoluzione)';

  @override
  String get autoGen5144 => 'Non modificare ProcessorType';

  @override
  String get autoGen5145 =>
      'Mantieni la visualizzazione del tipo di CPU predefinita del sistema';

  @override
  String get autoGen5146 =>
      'Opzione 1 di modifica del nome della CPU della piattaforma Intel e AMD (solitamente applicabile alle CPU con 6 core e inferiori)';

  @override
  String get autoGen5147 =>
      'Opzione 2 di modifica del nome della CPU della piattaforma Intel e AMD (solitamente applicabile alle CPU a 8 core e superiori)';

  @override
  String get autoGen5148 =>
      'Alternative alla modifica del nome della CPU della piattaforma Intel e AMD (solitamente applicabile alle CPU serie i7 e i9 con 8 core e superiori)';

  @override
  String get autoGen5149 => 'ASUS';

  @override
  String get autoGen5150 => 'GIGABYTE';

  @override
  String get autoGen5151 => 'ASRock';

  @override
  String get autoGen5152 => 'MSI';

  @override
  String get autoGen5153 => 'Dell';

  @override
  String get autoGen5154 => 'Lenovo';

  @override
  String get autoGen5155 => 'Sony(VAIO)';

  @override
  String get autoGen5156 => 'HP';

  @override
  String get autoGen5157 => 'Google(Chromebook)';

  @override
  String get autoGen5158 => 'Microsoft Surface';

  @override
  String get autoGen5159 => 'Scheda madre normale';

  @override
  String get autoGen5160 =>
      'Schede madri B850, B650, B550 e A520, notebook con chipset serie 550';

  @override
  String get autoGen5161 => 'Scheda madre TRx40';

  @override
  String get autoGen5162 => 'Scheda madre X570';

  @override
  String get autoGen5163 =>
      'Scheda madre X470 o B450 fine 2020 o BIOS aggiornato';

  @override
  String get autoGen5164 => 'Chipset della serie 6';

  @override
  String get autoGen5165 =>
      'Controllare quando si combinano CPU Intel di terza generazione e chipset serie 6 (ad esempio: H61, HM65)';

  @override
  String get autoGen5166 => 'Chipset della serie 7';

  @override
  String get autoGen5167 =>
      'Controllare quando si combinano CPU Intel di seconda generazione e chipset serie 7 (ad esempio: B75, HM76)';

  @override
  String get autoGen5168 => 'H110,B150,B250,Q270, ecc.';

  @override
  String get autoGen5169 =>
      'Alcune schede madri OEM presentano problemi di rilascio della proprietà USB: il trasferimento EHCI non riesce';

  @override
  String get autoGen5170 => 'Z490 e altri aggiornamenti del BIOS nel 2020';

  @override
  String get autoGen5171 =>
      'Chipset serie 6 (controllare quando si combinano CPU Intel di terza generazione e chipset serie 6 (ad esempio: H61, HM65))';

  @override
  String get autoGen5172 =>
      'Chipset serie 7 (controllare quando si combinano CPU Intel di seconda generazione e chipset serie 7 (ad esempio: B75, HM76))';

  @override
  String get autoGen5173 =>
      'H110, B150, B250, Q270, ecc. (Alcune schede madri OEM presentano problemi di rilascio della proprietà USB: errore di trasferimento EHCI)';

  @override
  String get autoGen5174 => 'da mbconfs';

  @override
  String get autoGen5175 => 'Doppia catena DVI';

  @override
  String get autoGen5176 => 'Catena singola DVI';

  @override
  String get autoGen5177 =>
      'Supporta OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5178 =>
      'Supporta OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, adatto per grafica core + modelli grafici indipendenti';

  @override
  String get autoGen5179 =>
      'Supporta OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adatto per l\'architettura Ivy Bridge, solo modelli grafici core';

  @override
  String get autoGen5180 =>
      'Supporta OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adatto per l\'architettura Ivy Bridge, decodifica display core + modelli di output display indipendenti';

  @override
  String get autoGen5181 =>
      'Supporta OS X Mavericks 10.9 ~ macOS Big Sur 11, adatto per architettura Haswell NVIDIA Maxwell e grafica indipendente Pascal';

  @override
  String get autoGen5182 =>
      'Supporta OS X Mavericks 10.9 ~ macOS Big Sur 11, adatto solo per modelli con display core con architettura Haswell';

  @override
  String get autoGen5183 =>
      'Supporta OS X Mavericks 10.9 ~ macOS Big Sur 11, adatto per grafica core con architettura Haswell + modelli grafici indipendenti';

  @override
  String get autoGen5184 =>
      'Supporta macOS El Capitan 10.11 ~ macOS Monterey 12, adatto per modelli con grafica core (o grafica indipendente)';

  @override
  String get autoGen5185 =>
      'Supporta macOS El Capitan 10.11 ~ macOS Monterey 12, adatto per display core con architettura Broadwell (o con display indipendente)';

  @override
  String get autoGen5186 =>
      'Supporta macOS Sierra 10.12 ~ macOS Ventura 13. Adatto per display core + modelli di display indipendenti. Va notato che quando si utilizza questo modello, la maggior parte degli utenti che utilizzano solo il display principale noteranno colori dello schermo anomali. Questo modello non è consigliato agli utenti principali che utilizzano solo display.';

  @override
  String get autoGen5187 =>
      'Supporta macOS Sierra 10.12 ~ macOS Ventura 13, adatto per la decodifica del display principale + modelli di output del display indipendenti';

  @override
  String get autoGen5188 =>
      'Supporta macOS 10.14 ~ macOS Sequoia 15, adatto per modelli con grafica core (o grafica indipendente)';

  @override
  String get autoGen5189 =>
      'Supporta macOS 10.15 ~ macOS Tahoe 26, adatto per modelli con display core del processore i7-10700K e inferiori (o con display indipendente)';

  @override
  String get autoGen5190 =>
      'Supporta macOS 10.15 ~ macOS Tahoe 26, adatto per modelli con display core con processore superiore i9-10850K (o con display indipendente)';

  @override
  String get autoGen5191 => 'Supporta macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 => 'Supporta macOS 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5193 => 'Supporta macOS 10.7 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5194 => 'Supporta macOS 10.8 ~ macOS Catalina 10.15';

  @override
  String get autoGen5195 => 'Supporta macOS 10.9 ~ macOS Big Sur 11';

  @override
  String get autoGen5196 =>
      'Supporta macOS High Sierra 10.13 ~ macOS Monterey 12';

  @override
  String get autoGen5197 => 'Supporta macOS Mojave 10.14 ~ macOS Monterey 12';

  @override
  String get autoGen5198 => 'Supporta OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 =>
      'Supporta OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 => 'Supporta macOS Sierra 10.12 ~ macOS Monterey 12';

  @override
  String get autoGen5201 =>
      'Supporta macOS Sierra 10.12 ~ macOS Monterey 12 (il display core HD 515 supporta ufficialmente solo macOS Monterey 12, la contraffazione supporta l\'ultimo macOS Sequoia 15)';

  @override
  String get autoGen5202 =>
      'Supporta macOS Sierra 10.12 ~ macOS Monterey 12 (il display principale Iris 540 supporta ufficialmente solo macOS Monterey 12 e la versione contraffatta supporta l\'ultimo macOS Sequoia 15)';

  @override
  String get autoGen5203 =>
      'Supporta macOS Sierra 10.12 ~ macOS Monterey 12 (il display principale Iris 550 supporta ufficialmente solo macOS Monterey 12 e la versione contraffatta supporta l\'ultimo macOS Sequoia 15)';

  @override
  String get autoGen5204 =>
      'Supporta macOS Sierra 10.12 ~ macOS Monterey 12 (il display core HD530 supporta ufficialmente solo macOS Monterey 12, la contraffazione supporta l\'ultimo macOS Sequoia 15)';

  @override
  String get autoGen5205 =>
      'Supporta macOS High Sierra 10.13 ~ macOS Ventura 13';

  @override
  String get autoGen5206 => 'Supporta macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 => 'Supporta macOS Catalina 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 => 'Supporta macOS Catalina 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'Supporta macOS 10.9 ~ macOS Monterey 12, adatto per modelli solo grafici autonomi';

  @override
  String get autoGen5210 =>
      'Supporta macOS 10.13 ~ macOS Sequoia 15. Applicabile ai modelli solo grafici autonomi. Per Intel di 11a generazione e successive, viene solitamente utilizzato questo modello. La conversione della frequenza della CPU e la frequenza turbo sono normali e non è necessaria alcuna patch Kext aggiuntiva (se la frequenza turbo del sistema macOS non è normale, estrarre e utilizzare il SSDT-PLUG nativo)';

  @override
  String get autoGen5211 =>
      'Supporta macOS 10.15 ~ macOS Tahoe 26, adatto per modelli grafici indipendenti dalla scheda A. Le schede A senza driver supportate (come RX560, RX570, RX5500, RX6600) supporteranno perfettamente la decodifica hard VDA. Per Intel di 11a generazione e successive, viene solitamente utilizzato questo modello, la frequenza turbo della CPU non è normale ed è necessaria una patch Kext aggiuntiva. Puoi andare su [Driver Kexts opzionale]->[Relativo alla CPU]->[Driver a frequenza variabile della CPU, fornisce principalmente supporto per la conversione di frequenza MacPro7,1 delle piattaforme di 11a generazione e successive] per selezionare questa opzione.';

  @override
  String get autoGen5212 => 'Intervallo di compatibilità macOS non configurato';

  @override
  String get autoGen5213 => 'l\'ID dispositivo deve contenere 4 caratteri';

  @override
  String get autoGen5214 =>
      'Abilita l\'interruttore principale della patch del frame buffer del display principale (Framebuffer).';

  @override
  String get autoGen5215 =>
      'Modifica la memoria video su 1536 M (memoria video 1,5 G, valore predefinito ufficiale di Apple, adatto per piattaforme di visualizzazione Intel core dalla terza alla decima generazione)';

  @override
  String get autoGen5216 =>
      'Modifica la memoria video su 2048M (memoria video 2G, valore predefinito dello strumento, adatto per piattaforme di visualizzazione Intel Core dalla terza alla decima generazione)';

  @override
  String get autoGen5217 =>
      'Modifica la memoria video su 3072M (memoria video 3G, adatta per piattaforme di visualizzazione Intel Core dalla terza alla decima generazione)';

  @override
  String get autoGen5218 =>
      'Modifica la memoria video su 4095M (memoria video 4G, adatta per piattaforme di visualizzazione Intel Core dalla terza alla decima generazione)';

  @override
  String get autoGen5219 =>
      'Risolvi il problema di sfocatura dello schermo ad alta risoluzione 1080P sulla piattaforma Haswell di quarta generazione (ad esempio, la sfocatura dello schermo ad alta risoluzione potrebbe essere dovuta al fatto che il valore non è sufficientemente grande. Questa patch è una patch dedicata per il display principale Haswell. Si consiglia di utilizzare questa configurazione per schermi 1080P e inferiori)';

  @override
  String get autoGen5220 =>
      'Risolve il problema degli schermi ad alta risoluzione come 2K e 4K sulla piattaforma Haswell di quarta generazione (ad esempio, lo schermo ad alta risoluzione potrebbe essere sfocato perché il valore non è sufficientemente grande. Questa patch è una patch dedicata per il display principale Haswell. Si consiglia di utilizzare questa configurazione per schermi 2K e 4K)';

  @override
  String get autoGen5221 =>
      'Patch candidata per schermo ad alta risoluzione Ivy Bridge';

  @override
  String get autoGen5222 => 'Abilita patch interfaccia con0';

  @override
  String get autoGen5223 => 'Abilita patch interfaccia con1';

  @override
  String get autoGen5224 =>
      'Abilita l\'applicazione delle patch all\'interfaccia con2';

  @override
  String get autoGen5225 => 'Abilita la patch dell\'interfaccia con3';

  @override
  String get autoGen5226 =>
      'Patch per l\'interfaccia candidata per lo schermo ad alta risoluzione Ivy Bridge';

  @override
  String get autoGen5227 =>
      'Patch per schermo ad alta risoluzione per notebook Sandy Bridge (risoluzione 1600x900 e superiore).';

  @override
  String get autoGen5228 => 'Patch opzionali per notebook Ironlake/Arrandale';

  @override
  String get autoGen5229 =>
      'Correzione della soluzione HDMI con schermo ad alta risoluzione a 60 fps (in alcuni casi, il display Intel Core può utilizzare lo standard HDMI 1.4 per impostazione predefinita. Abilita questo parametro per forzare HDMI 2.0 a supportare una risoluzione e una frequenza di aggiornamento più elevate, ad esempio il supporto 4K a 60 HZ)';

  @override
  String get autoGen5230 =>
      'Ripara l\'uscita audio HDMI (di solito è necessario solo l\'alcid appropriato, questo parametro a volte può risolvere il problema della corretta uscita audio HDMI)';

  @override
  String get autoGen5231 =>
      'Disattiva la patch di conversione da DP a HDMI per l\'audio digitale (garantisce la stabilità e l\'affidabilità della connessione HDMI quando l\'interfaccia DisplayPort è collegata all\'interfaccia HDMI tramite un convertitore)';

  @override
  String get autoGen5232 =>
      'Forza lo stato online su tutti i monitor, utile per l\'output multischermo del display principale. In alcuni casi, può evitare problemi come uno schermo nero dopo il risveglio dalla modalità di sospensione o la necessità di collegare e scollegare il cavo del monitor per illuminare lo schermo all\'avvio (solitamente applicabile ai display Coffee Lake di ottava generazione e superiori)';

  @override
  String get autoGen5233 =>
      'Migliorare le prestazioni del display core (ad esempio: risolvere il problema della codifica hevc 4K del display core, risoluzione e fps che non raggiungono valori ideali)';

  @override
  String get autoGen5234 =>
      'Abilita il caricamento completo del firmware del display principale, migliora l\'utilizzo del display principale e migliora le prestazioni del display principale. L\'aggiunta di questo parametro potrebbe impedire al sistema di accedere, quindi utilizzare con cautela';

  @override
  String get autoGen5235 =>
      'Risolto il problema del loop infinito causato dal display core Skylake di sesta generazione, dal display core Kaby Lake di settima generazione e dal driver del display core Coffee Lake di ottava generazione quando si tentava di illuminare un display HDMI esterno ad alta risoluzione (i sintomi specifici sono che dopo aver collegato il cavo HDMI, lo schermo interno del notebook diventa nero ma ha una retroilluminazione, il sistema non risponde e non viene visualizzato alcun output sullo schermo esterno)';

  @override
  String get autoGen5236 =>
      'Risolvi il problema di arresto anomalo del kernel causato dalla bassa frequenza del Core Display Clock (CDCLK) sulla piattaforma Ice Lake di decima generazione';

  @override
  String get autoGen5237 =>
      'Risolto un crash del kernel sulla piattaforma Ice Lake di decima generazione causato dal driver che calcolava erroneamente la dimensione della memoria pre-allocata DVMT';

  @override
  String get autoGen5238 =>
      'Regola le impostazioni del cursore Luminosità (cursore luminosità) per rendere le transizioni più fluide e naturali e migliorare l\'esperienza dell\'utente';

  @override
  String get autoGen5239 =>
      'Risolto il problema dello schermo scuro che durava 3 minuti dopo l\'avvio sui notebook con macOS 13.4 o versioni successive sulle piattaforme Kaby Lake di settima generazione, ottava generazione e Coffee Lake di nona generazione.';

  @override
  String get autoGen5240 =>
      'Risolto il problema per cui i notebook con macOS 13.3 e versioni precedenti sulle piattaforme Kaby Lake di 7a generazione, 8a generazione e Coffee Lake di 9a generazione avevano uno schermo scuro per 3 minuti dopo l\'avvio.';

  @override
  String get autoGen5241 =>
      'Risolto il problema per cui lo schermo sulla piattaforma Ice Lake di decima generazione persisteva da 7 a 15 secondi quando il notebook era acceso';

  @override
  String get autoGen5242 =>
      'Risolto il problema per cui il display HDMI ad alta risoluzione del display core Ice Lake di decima generazione aveva uno schermo nero, nessun segnale e la risoluzione non poteva essere trasmessa correttamente in 4K a 60 Hz e in alcuni scenari 2K/4K ad alto aggiornamento (costretto ad abilitare il \"max pixel clock override\" del display core (IGPU)).';

  @override
  String get autoGen5243 =>
      'Utilizzato per riparare effetti difettosi del display nucleare o problemi di sfarfallio dello schermo (come il display nucleare HD530)';

  @override
  String get autoGen5244 =>
      'Disabilitare il display indipendente (di solito quando non è possibile utilizzare il display indipendente di un laptop con doppia scheda grafica, è necessario disabilitare il display indipendente)';

  @override
  String get autoGen5245 =>
      'Risolto il problema dei laptop (come Dell XPS 15 9570 e altri notebook con schermo ad alta risoluzione) per cui lo schermo interno ad alta risoluzione restituisce un valore di velocità di collegamento massimo errato, provocando un arresto anomalo diretto quando lo schermo interno è acceso (si consiglia di selezionare questa casella per notebook con schermo ad alta risoluzione)';

  @override
  String get autoGen5246 =>
      'Iniettare l\'EDID del monitor nell\'interfaccia AAPL00 (solitamente lo schermo interno di un notebook) per risolvere il problema dello schermo nero dell\'interfaccia (nota: è necessario prima inserire l\'EDID del monitor nella pagina di configurazione EDID! È possibile inserire l\'EDID nello strumento \"Configurazione display\" -> \"Display EDID\". Per le schede madri della serie 500 come B560, quando si ripara l\'uscita HDMI, è necessario inserire l\'EDID del monitor, altrimenti c\'è un\'alta probabilità di uno schermo nero. A volte, per altre piattaforme Intel, il problema dello schermo sfocato, dello schermo viola o dello schermo nero potrebbe essere risolto)';

  @override
  String get autoGen5247 =>
      'Iniettare l\'EDID del monitor nell\'interfaccia AAPL01 per correggere lo schermo nero e nessun problema di visualizzazione dell\'interfaccia (Nota: è necessario prima inserire l\'EDID del monitor nella pagina di configurazione EDID! È possibile inserire l\'EDID nello strumento \"Configurazione display\" -> \"Display EDID\". Le schede madri della serie 500 come B560 devono iniettare l\'EDID del monitor quando si ripara l\'uscita HDMI, altrimenti c\'è un\'alta probabilità di uno schermo nero. A volte, per altre piattaforme Intel, il display principale è offuscato il problema dello schermo viola o dello schermo nero potrebbe essere riparato)';

  @override
  String get autoGen5248 =>
      'Iniettare l\'EDID del monitor nell\'interfaccia AAPL02 per correggere lo schermo nero e nessun problema di visualizzazione dell\'interfaccia (Nota: è necessario prima inserire l\'EDID del monitor nella pagina di configurazione EDID! È possibile inserire l\'EDID nello strumento \"Configurazione display\" -> \"Display EDID\". Le schede madri della serie 500 come B560 devono iniettare l\'EDID del monitor quando si ripara l\'uscita HDMI, altrimenti c\'è un\'alta probabilità di uno schermo nero. A volte, per altre piattaforme Intel, il display principale è offuscato il problema dello schermo viola o dello schermo nero potrebbe essere riparato)';

  @override
  String get autoGen5249 =>
      'Abilita il supporto LSPCON e converte DisplayPort in uscita HDMI 2.0 (richiede un convertitore di segnale LSPCON porta 0~3, adatto per piattaforme Intel Skylake di sesta generazione ~ Comet Lake di decima generazione, Ice Lake)';

  @override
  String get autoGen5250 =>
      'Convertitore di segnale LSPCON porta 0 (il supporto LSPCON deve essere abilitato)';

  @override
  String get autoGen5251 =>
      'Convertitore di segnale LSPCON porta 1 (il supporto LSPCON deve essere abilitato)';

  @override
  String get autoGen5252 =>
      'Convertitore di segnale LSPCON porta 2 (il supporto LSPCON deve essere abilitato)';

  @override
  String get autoGen5253 =>
      'Convertitore di segnale LSPCON porta 3 (il supporto LSPCON deve essere abilitato)';

  @override
  String get autoGen5254 =>
      'Modifica la memoria del framebuffer a 9M (la dimensione della memoria del framebuffer influenzerà gli schermi ad alta risoluzione, solitamente utilizzati insieme a framebuffer-stolenmem)';

  @override
  String get autoGen5255 =>
      'Modifica la memoria rubata a 19 M (applicabile allo schermo 1080P, valore predefinito dello strumento, non è necessario controllare. Se è presente un parametro DVMT nel BIOS, si consiglia di modificarlo a 64 M. Se il parametro DVMT viene modificato nel BIOS, questo parametro può essere rimosso)';

  @override
  String get autoGen5256 =>
      'Modifica la memoria rubata a 64M (applicabile a schermi da 2k o 4k. Se nel BIOS è presente un parametro DVMT, si consiglia di modificarlo a 64M o superiore. Se il parametro DVMT viene modificato nel BIOS, questo parametro può essere rimosso)';

  @override
  String get autoGen5257 =>
      'Modifica la memoria rubata a 128 M (applicabile a schermi 4K. Se nel BIOS è presente un parametro DVMT, si consiglia di modificarlo a 128 M o 256 M o superiore per schermi ad alta risoluzione. Se i parametri DVMT vengono modificati nel BIOS, questo parametro può essere rimosso)';

  @override
  String get autoGen5258 =>
      'Abilita porta HDMI con0 (richiede l\'interfaccia HDMI n. 0)';

  @override
  String get autoGen5259 =>
      'Interfaccia HDMI n. 0, utilizzata per risolvere il problema dello schermo nero degli HDMI dalla sesta alla decima generazione (è necessario abilitare la porta HDMI con0)';

  @override
  String get autoGen5260 =>
      'Abilita la porta HDMI con1 (richiede l\'interfaccia HDMI n. 1)';

  @override
  String get autoGen5261 =>
      'N. 1 interfaccia HDMI, utilizzata per risolvere il problema dello schermo nero degli HDMI dalla sesta alla decima generazione (è necessario abilitare la porta HDMI con1)';

  @override
  String get autoGen5262 =>
      'Abilita la porta HDMI con2 (richiede l\'interfaccia HDMI n. 2)';

  @override
  String get autoGen5263 =>
      'Interfaccia HDMI n. 2, utilizzata per risolvere il problema dello schermo nero degli HDMI dalla sesta alla decima generazione (è necessario abilitare la porta HDMI con2)';

  @override
  String get autoGen5264 => 'Parametri memoria video/DVMT';

  @override
  String get autoGen5265 => 'Parametri specifici Haswell di quarta generazione';

  @override
  String get autoGen5266 =>
      'Patch candidata per schermo ad alta risoluzione Ivy Bridge di terza generazione';

  @override
  String get autoGen5267 =>
      'Patch candidata per schermo ad alta risoluzione Sandy Bridge di seconda generazione';

  @override
  String get autoGen5268 =>
      'Patch candidata per i notebook Arrandale di prima generazione';

  @override
  String get autoGen5269 => 'Riparazione HDMI/interfaccia';

  @override
  String get autoGen5270 => 'Correzione di Ice Lake di decima generazione';

  @override
  String get autoGen5271 => 'Correzione universale';

  @override
  String get autoGen5272 =>
      'Patch per schermo ad alta risoluzione per notebook Ivy Bridge (risoluzione 1600x900 e superiore).';

  @override
  String get autoGen5273 =>
      'Abilita la patch di correzione del tipo HDMI dell\'interfaccia con0 per risolvere i problemi relativi allo schermo nero HDMI, allo schermo viola e all\'audio dalla sesta alla decima generazione';

  @override
  String get autoGen5274 =>
      'Abilita la patch di correzione del tipo HDMI dell\'interfaccia con1 per risolvere i problemi relativi allo schermo nero HDMI, allo schermo viola e all\'audio dalla sesta alla decima generazione';

  @override
  String get autoGen5275 =>
      'Abilita la patch di correzione del tipo HDMI dell\'interfaccia con2 per risolvere i problemi relativi allo schermo nero HDMI, allo schermo viola e all\'audio dalla sesta alla decima generazione';

  @override
  String get autoGen5276 =>
      'Errore di formato alc_codec.json: il nodo radice deve essere Map<String, dinamico>';

  @override
  String get autoGen5277 =>
      'Abilita -v per eseguire il codice (utile per individuare gli errori quando il codice è bloccato, adatto per la fase di debug e di avvio)';

  @override
  String get autoGen5278 =>
      'È conveniente per il sistema Mac stampare più informazioni sui simboli quando si verifica un arresto anomalo del kernel, il che è utile per la risoluzione dei problemi. Questo parametro viene solitamente utilizzato con debug=0x100 (si consiglia vivamente di controllarlo durante il debug e l\'avvio per la prima volta)';

  @override
  String get autoGen5279 =>
      'Previene il riavvio automatico quando il kernel si blocca, rendendo più semplice la visualizzazione dei registri dei crash Panic (si consiglia vivamente di verificarlo durante il debug e l\'avvio per la prima volta)';

  @override
  String get autoGen5280 =>
      'Disabilitare la funzione watchdog per impedire l\'attivazione accidentale del riavvio anomalo dovuto al panico (applicabile all\'avvio di debug)';

  @override
  String get autoGen5281 =>
      'Disabilita la randomizzazione dello spazio degli indirizzi del kernel (KASLR) per garantire che il kernel e kext (estensione del kernel) siano caricati nella stessa mappa di memoria fissa per evitare arresti anomali anticipati del kernel all\'avvio causati da conflitti di memoria causati da valori di diapositiva casuali (applicabile all\'avvio di debug)';

  @override
  String get autoGen5282 =>
      'Salta il controllo del modello durante il primo avvio di macOS per evitare simboli di divieto dovuti a SMBIOS troppo basso o troppo alto e garantire che il sistema possa essere avviato normalmente (nota che questo parametro non può saltare il controllo del modello durante l\'installazione. Durante l\'installazione verrà visualizzato un messaggio simile a \"macOS non è supportato\". A questo punto, puoi modificare SMBIOS a un livello superiore o inferiore per supportare il nuovo o vecchio sistema)';

  @override
  String get autoGen5283 =>
      'Questo parametro è applicabile alla disabilitazione di AMFI, schede grafiche relativamente nuove (come HD4000 e successive, GT710 e altri core Kepler e successive) o driver WiFi. Nota di non usarlo con il parametro amfi_get_out_of_my_way=0x1 contemporaneamente! (Questo parametro avrà effetto solo se SIP è disabilitato e questo parametro verrà rimosso automaticamente dopo l\'abilitazione di SIP)';

  @override
  String get autoGen5284 =>
      'Assicurati che AMFIPass.kext possa essere abilitato e attivato correttamente nell\'ultimo sistema macOS Tahoe 26 per continuare a bypassare i controlli di sicurezza AMFI (AMFI Disabilitato). (Nota: 1. Questo parametro non può essere utilizzato contemporaneamente al parametro disabilita AMFI e questo parametro deve essere utilizzato con AMFIPass.kext. 2. Questo parametro viene solitamente utilizzato solo nei sistemi più recenti, non aggiungerlo se non necessario)';

  @override
  String get autoGen5285 =>
      'Questo parametro è applicabile quando AMFI è disabilitato, vengono utilizzate vecchie piattaforme, vecchie schede grafiche (come GT240) o driver WiFi. Nota: non utilizzare il parametro amfi=0x80 contemporaneamente! (Ha effetto solo quando SIP è disabilitato e questo parametro viene rimosso automaticamente dopo che SIP è abilitato)';

  @override
  String get autoGen5286 =>
      'Risolto il problema di crash di alcune applicazioni (ad esempio: Baidu Netdisk) dopo aver disabilitato AMFI (avrà effetto solo se SIP è disabilitato e questo parametro verrà automaticamente rimosso dopo l\'abilitazione di SIP)';

  @override
  String get autoGen5287 =>
      'Risolvi i problemi che potrebbero verificarsi nel sistema più recente (principalmente versione Beta) (eccezione del driver di sistema, come: anomalia improvvisa nella scheda audio, Bluetooth, frequenza della CPU, ecc. Si consiglia vivamente di verificarlo quando si prova l\'ultima versione Beta del sistema)';

  @override
  String get autoGen5288 =>
      'Abilita solo 1 core CPU (applicabile a X58, X79, X99, X299 e altri arresti anomali del core CPU di server multi-core, installazione iniziale e fasi di debug)';

  @override
  String get autoGen5289 =>
      'Disattiva VT-d (disabilita IOMMU, puoi verificarlo quando il BIOS non disattiva VT-d) per risolvere il problema di alcune schede madri che si bloccano dopo l\'avvio o l\'accesso al sistema.';

  @override
  String get autoGen5290 =>
      'Disabilita il caricamento del firmware della grafica Apple per evitare di rimanere bloccato a causa di un errore di caricamento del firmware o di un ciclo di tentativi durante l\'avvio (applicabile solo alla grafica Intel)';

  @override
  String get autoGen5291 =>
      'Disabilita il display Intel Core (si consiglia di verificare quando il display Core non può essere gestito e la decodifica hard accelerata non è supportata)';

  @override
  String get autoGen5292 =>
      'Disabilita la grafica indipendente (di solito quando non è possibile utilizzare la scheda grafica indipendente del notebook Intel con doppia grafica [comunemente utilizzata nelle schede N], si consiglia di controllarla)';

  @override
  String get autoGen5293 =>
      'Disattiva il driver NVIDIA (applicabile solo durante il debug di schede N incompatibili)';

  @override
  String get autoGen5294 =>
      'Disabilita l\'accelerazione grafica Intel Core (ad esempio: quando si utilizza OCLP e non è possibile avviarsi normalmente dopo aver applicato la patch grafica Core, è possibile selezionarla, nessuna accelerazione, solo per il debug)';

  @override
  String get autoGen5295 =>
      'Riparare e migliorare le prestazioni del display Intel Core (ad esempio: risolvere il problema della codifica hevc 4K del display Core, risoluzione e fps che non raggiungono i valori ideali)';

  @override
  String get autoGen5296 =>
      'Risolto il problema relativo al valore massimo della velocità di collegamento del display Intel Core, che causava un arresto anomalo diretto all\'accensione dello schermo ((in particolare su Skylake, Kaby Lake, Coffee Lake, Comet Lake, schermo nero e assenza di segnale, mancato raggiungimento della risoluzione 4K prevista, ecc.)';

  @override
  String get autoGen5297 =>
      'Risolvi il problema di risoluzione del display principale, forza l\'abilitazione del \"max pixel clock override\" dell\'IGPU e aumenta la risoluzione predefinita, la frequenza di aggiornamento e altre restrizioni di macOS';

  @override
  String get autoGen5298 =>
      'Risolve il problema dello schermo nero 4K nell\'uscita HDMI di alcuni laptop (solitamente applicabile ai laptop, come ThinkPad P71/7700HQ/HD630/4K bloccato in `gIOScreenLockState3`)';

  @override
  String get autoGen5299 =>
      'Risolvi il problema di arresto anomalo del kernel causato dalla bassa frequenza del Core Display Clock (CDCLK) sulla piattaforma Ice Lake di decima generazione';

  @override
  String get autoGen5300 =>
      'Risolto un problema di arresto anomalo del kernel sulla piattaforma Ice Lake di decima generazione causato dal driver che calcolava erroneamente la dimensione della memoria pre-allocata DVMT.';

  @override
  String get autoGen5301 =>
      'Risolto il problema per cui lo schermo sulla piattaforma Ice Lake di decima generazione persisteva da 7 a 15 secondi quando il notebook era acceso';

  @override
  String get autoGen5302 =>
      'Disabilitare iGPU (grafica core) per caricare il modulo di telemetria durante il processo di avvio. Alcuni notebook (in particolare i Chromebook) potrebbero causare il blocco o il blocco del sistema durante la fase di avvio durante il caricamento di questo modulo (applicabile ai notebook Intel Skylake di sesta generazione e superiori)';

  @override
  String get autoGen5303 =>
      'Correggi il registro della retroilluminazione su macOS Ventura 13.4 e versioni precedenti, piattaforme notebook KBL di 7a generazione, CFL di 8a e 9a generazione e risolvi il problema dello schermo nero o dello schermo scuro che dura per 3 minuti (applicabile ai notebook)';

  @override
  String get autoGen5304 =>
      'Correggi il registro della retroilluminazione su macOS Ventura 13.4 e versioni successive, piattaforme notebook KBL di 7a generazione, 8a e 9a generazione CFL e risolvi il problema dello schermo nero o dello schermo scuro che dura per 3 minuti (applicabile ai notebook)';

  @override
  String get autoGen5305 =>
      'Regola le impostazioni del cursore della luminosità (cursore della luminosità) per rendere le transizioni più fluide e naturali per migliorare l\'esperienza dell\'utente (applicabile ai notebook)';

  @override
  String get autoGen5306 =>
      'Disegna il logo Apple nella seconda fase di avvio invece di copiare il frame buffer. Quando colleghi un monitor esterno, passa agevolmente dalla barra di avanzamento al desktop di accesso. In alcuni casi, può risolvere il problema dello schermo nero quando si accede al sistema. Allo stesso tempo, è utile collegare e scollegare il cavo del monitor per accendere lo schermo.';

  @override
  String get autoGen5307 =>
      'Risolve il problema di avvio della configurazione ACPI delle schede della piattaforma come X58,';

  @override
  String get autoGen5308 =>
      'Risolve il problema di avvio della configurazione ACPI delle schede della piattaforma come X58,';

  @override
  String get autoGen5309 =>
      'Risolto il problema relativo al supporto della gestione dei diritti digitali (DRM) dell\'hardware sulle GPU AMD (consente di visualizzare contenuti digitali protetti da DRM, come video di alta qualità forniti da servizi di streaming, sulle GPU AMD supportate)';

  @override
  String get autoGen5310 =>
      'Disabilita l\'accelerazione della scheda grafica ATI e AMD (ad esempio: quando si utilizza OCLP e la scheda grafica non può avviarsi normalmente dopo l\'applicazione della patch, è possibile selezionarla, nessuna accelerazione, solo per il debug)';

  @override
  String get autoGen5311 =>
      'Ripara HD7750, HD7850 (il nucleo principale è la serie GCN HD77XX, HD78XX, HD79XX) e altre distorsioni dello schermo della vecchia scheda A, schermo giallo e altri problemi di visualizzazione anomali';

  @override
  String get autoGen5312 =>
      'Correggi lo schermo nero o i problemi di visualizzazione anomali che potrebbero essere causati da alcune schede grafiche, ignorando completamente le restrizioni o le impostazioni di AppleGraphicsDevicePolicy.kext sulla scheda grafica. Quando non sei sicuro delle restrizioni specifiche, evita problemi di visualizzazione o fenomeni di schermata nera causati da configurazioni hardware incompatibili (come board-id specifico). Presta attenzione a questo parametro, che avrà effetto solo se utilizzato con AnywayGreen.kext. Per le schede A native senza driver, è possibile rimuovere il driver EverythingGreen.kext, quindi non è necessario aggiungere questo parametro.';

  @override
  String get autoGen5313 =>
      'Risolvi il problema della schermata nera all\'avvio delle schede grafiche AMD Navi core RX5XXX, serie RX6XXX (ad esempio: RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, ecc.), sostituisci board-id con board-ix e ignora alcune restrizioni di AppleGraphicsDevicePolicy. Nota: 1. Avrà effetto solo se utilizzato con AnywayGreen.kext. 2. BIOS Disattiva la porta seriale/COM nelle impostazioni SuperIO. Per le schede A native senza driver, è possibile rimuovere il driver EverythingGreen.kext, quindi non è necessario aggiungere questo parametro.';

  @override
  String get autoGen5314 =>
      'Risolvi il problema dello schermo nero dopo il risveglio dalla modalità di sospensione per alcune schede grafiche come RX470 e RX570, disabilita il controllo dell\'ID della scheda in AppleGraphicsDevicePolicy e correggi lo schermo nero o i problemi di visualizzazione anomali che potrebbero essere causati da alcune schede grafiche. Tieni presente che questo parametro avrà effetto solo se utilizzato con AnywayGreen.kext. Per le schede A native senza driver, il driver EverythingGreen.kext può essere rimosso, quindi non è necessario aggiungere questo parametro.';

  @override
  String get autoGen5315 =>
      'Riparare le schede grafiche senza driver Intel di terza generazione e piattaforme inferiori serie AMD RX5XX (ad esempio: RX560, RX570, RX580), AMD RX5XXX, RX6XXX (ad esempio: RX5500, RX6600) serie senza driver che presentano un problema di schermo nero nei sistemi Ventura e superiori (Nota: è necessario utilizzare OCLP per applicare la patch alla scheda grafica dopo aver effettuato l\'accesso al sistema! Dopo aver applicato la patch alla scheda grafica, rimuovere il parametro di avvio o utilizzare l\'alternativa config-after-post in la directory EFI per rinominare la configurazione e riavviare per pilotare la scheda grafica!)';

  @override
  String get autoGen5316 =>
      'Correggi le schede grafiche AMD ufficialmente non supportate (ad esempio: RX550 Lexa core) per supportare la codifica video hardware VDA';

  @override
  String get autoGen5317 =>
      'Riparare la vecchia scheda N con architettura Fermi, Maxwell, Pascal (ad esempio: GT610, GTX750, GTX960, GTX1050) Problema con il driver della scheda grafica di sistema BigSur 11 o superiore (Nota: è necessario utilizzare OCLP per patchare la scheda grafica dopo aver inserito il sistema!!! Questo parametro non è richiesto per il core Kepler!!!)';

  @override
  String get autoGen5318 =>
      'Risolto il problema della bassa velocità di alcune schede di rete wireless Broadcom (cambia il codice paese Broadcom WiFi in Hong Kong, puoi anche cambiare il canale del router per migliorarlo)';

  @override
  String get autoGen5319 =>
      'Risolto il problema con il codice bacchetta e il danno al simulatore SMC';

  @override
  String get autoGen5320 =>
      'Risolvi il problema di aggiornamento OTA del sistema macOS dopo aver disabilitato SIP (System Integrity Protection) o SecureBootModel (modello di sicurezza) e risolvi il problema di visualizzazione del nome della CPU personalizzato';

  @override
  String get autoGen5321 =>
      'Evita il problema di riavviare il dispositivo dopo essere entrato in modalità di sospensione, rendendo più semplice ottenere i registri di arresto anomalo del kernel e risolvere i problemi di sospensione.';

  @override
  String get autoGen5322 =>
      'Migliorare l\'identificazione e la pianificazione della topologia delle CPU Intel di dodicesima generazione e successive con core grandi e piccoli. Il miglioramento delle prestazioni non è garantito. Si consiglia di abilitarlo dopo il test effettivo (nota che deve essere utilizzato con CpuTopologyRebuild.kext per avere effetto)';

  @override
  String get autoGen5323 =>
      'Disabilita completamente la modalità Darkwake e lascia che il sistema entri nella modalità di sospensione tradizionale. Viene utilizzato principalmente per riparare problemi come la riattivazione dello schermo nero e la riattivazione automatica.';

  @override
  String get autoGen5324 =>
      'Disabilita lo standby del rendering iGPU RC6 e risolvi il problema del panico del kernel NVMe causato dal display del core RC6 durante la sospensione';

  @override
  String get autoGen5325 =>
      'Abilita il controllo della retroilluminazione PWM per le schede grafiche AMD Radeon RX serie 5000';

  @override
  String get autoGen5326 =>
      'Ripara e correggi il display dell\'uscita dell\'interfaccia DVI delle vecchie schede A (290X, 370, ecc.)';

  @override
  String get autoGen5327 =>
      'Forza il pannello a sfioramento di tipo I2C a funzionare in modalità polling invece che in modalità basata su interruzione (la modalità di interruzione di solito richiede SSDT personalizzato, il che è relativamente complicato. A volte il problema dell\'inutilizzabilità del pannello a sfioramento I2C può essere risolto (deve essere utilizzato con il driver VoodooI2C)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (alcune schede madri e firmware potrebbero presentare conflitti o problemi di incompatibilità durante la gestione dell\'area MMIO. Abilitare questa opzione può aiutare a risolvere questi conflitti e migliorare la compatibilità e la stabilità del sistema. Questa opzione è solitamente combinata con la versione OpenCore Debug per personalizzare MMIO per risolvere l\'EB della scheda causato da problemi di memoria su alcune schede madri (ad esempio: alcune schede madri con processori serie X58, X79, X99 e AMD 7000))';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (si consiglia di verificarlo sul firmware che non supporta la tabella degli attributi di memoria (MAT), in particolare il firmware OEM. Dopo averlo attivato, la protezione da scrittura nel registro CR0 verrà eliminata durante l\'esecuzione per garantire la normale scrittura della NVRAM. Solitamente applicabile alle piattaforme prima della settima generazione)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (protegge i servizi UEFI dalla sovrascrittura del firmware, solitamente utilizzato per riparare i problemi EB della scheda causati da DevirtualiseMmio, ecc. Si consiglia di controllarlo per le schede madri Z390, Z490 e Ice Lake di decima generazione)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (stabilisce la memoria virtuale continua per l\'uso OC e la mappa sulla memoria fisica dispersa. Nota: non è consigliabile selezionare questa opzione per le schede madri Comet Lake ASUS, Gigabyte e AsRock di decima generazione.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (sul firmware che supporta la tabella degli attributi di memoria (MAT), si consiglia di controllarlo. Di solito viene utilizzato insieme a SyncRuntimePermissions. Questo elemento potrebbe entrare in conflitto con EnableWriteUnprotector. Si consiglia di scegliere uno dei due. Di solito è applicabile alle piattaforme successive all\'ottava generazione ed è applicabile anche ad alcune vecchie piattaforme)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (Risolve il problema che l\'hardware non può iniettare autorizzazioni durante l\'iniezione di memoria. In genere, questo problema esiste nelle schede madri successive al 2018. Se non è possibile accedere a Windows a causa di questa opzione, attivarla. Questo elemento viene solitamente utilizzato insieme a RebuildAppleMemoryMap)';

  @override
  String get autoGen5334 =>
      'CPU di 2a generazione - scheda madre ibrida di 3a generazione';

  @override
  String get autoGen5335 =>
      'CPU di terza generazione - scheda madre ibrida di seconda generazione';

  @override
  String get autoGen5336 =>
      'Completa l\'installazione senza azionare il display principale per il momento (questo può evitare problemi di schermata nera e crash del kernel causati dal problema del frame del buffer del display principale)';

  @override
  String get autoGen5337 => 'ID del dispositivo contraffatto';

  @override
  String get autoGen5338 =>
      'Il display principale viene utilizzato solo per attività di accelerazione e calcolo, non come display di output (display di output della scheda grafica indipendente)';

  @override
  String get autoGen5339 => 'HD3000, HD P3000 e altri display principali';

  @override
  String get autoGen5340 => 'HD4000, HD P4000 e altri display principali';

  @override
  String get autoGen5341 =>
      'HD4400, HD4600, HD P4600 e altri display principali';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 e altri display principali';

  @override
  String get autoGen5343 =>
      'Display core HD5600 (P6200, P6300 possono essere contraffatti)';

  @override
  String get autoGen5344 => 'HD6000, Iris 6100 e altri display principali';

  @override
  String get autoGen5345 =>
      'HD520, HD530 e altri display core HD620 contraffatti (applicabili ai sistemi Ventura e superiori)';

  @override
  String get autoGen5346 =>
      'HD520, HD530 e altri display core HD620 contraffatti (applicabile ai sistemi Ventura e superiori, alternativa)';

  @override
  String get autoGen5347 =>
      'HD530, HD P530 e altri display core della serie 500 (applicabili ai sistemi Monterey e precedenti)';

  @override
  String get autoGen5348 => 'HD 630, HD P630 e altri display principali';

  @override
  String get autoGen5349 =>
      'HD 630, P630 e altri display core UHD630 contraffatti (opzione 1)';

  @override
  String get autoGen5350 =>
      'HD 630, P630 e altri display core UHD630 contraffatti (opzione 2)';

  @override
  String get autoGen5351 =>
      'Soluzione uno per l\'uscita del display nucleare UHD 630';

  @override
  String get autoGen5352 => 'Custodia di uscita del display core UHD 630 2';

  @override
  String get autoGen5353 =>
      'Scheda grafica Intel HD (ad esempio: i3 380M, i5 480M viene fornito con display principale integrato)';

  @override
  String get autoGen5354 =>
      'Display di uscita display core HD3000, adatto per risoluzioni di 1366x768 e inferiori)';

  @override
  String get autoGen5355 =>
      'Abilita il supporto per risoluzioni superiori a 1600X900';

  @override
  String get autoGen5356 =>
      'Display di uscita del display nucleare HD3000, adatto per risoluzioni di 1600x900 e superiori)';

  @override
  String get autoGen5357 =>
      'Soluzione uno per driver display core HD4000, adatta per risoluzione 1366x768 e inferiore, metodo di collegamento LVDS';

  @override
  String get autoGen5358 =>
      'Soluzione due del driver display core HD4000, adatta per la modalità di collegamento LVDS con risoluzione 1600x900 e superiore, l\'uscita multischermo potrebbe richiedere più configurazioni di patch)';

  @override
  String get autoGen5359 =>
      'Soluzione tre del driver del display HD4000 core, adatto per monitor con connessione eDP)';

  @override
  String get autoGen5360 => 'Display principale HD4200, HD4400, HD4600';

  @override
  String get autoGen5361 => 'Display principale HD5000, HD5100, HD5200';

  @override
  String get autoGen5362 => 'Display principale HD5500';

  @override
  String get autoGen5363 => 'Display principale HD5600';

  @override
  String get autoGen5364 => 'Display principale HD6000';

  @override
  String get autoGen5365 =>
      'HD520, HD530 e altri display core HD620 contraffatti (per sistemi Ventura e superiori)';

  @override
  String get autoGen5366 =>
      'Display core HD 515, HD 520, HD 530, HD 540, HD 550, P530 (applicabile ai sistemi Monterey e precedenti)';

  @override
  String get autoGen5367 => 'Alternativa al display nucleare HD 515';

  @override
  String get autoGen5368 => 'Display principale HD 510';

  @override
  String get autoGen5369 =>
      'Display principale HD 615, HD 620, HD 630, HD 640, HD 650';

  @override
  String get autoGen5370 => 'Alternativa al display core HD/UHD 620';

  @override
  String get autoGen5371 => 'Display principale UHD 617, UHD 620';

  @override
  String get autoGen5372 => 'Display principale UHD 630';

  @override
  String get autoGen5373 => 'Display principale UHD 620';

  @override
  String get autoGen5374 => 'Display principale Intel lris Plus 655';

  @override
  String get autoGen5375 => 'Display principale della serie G4/G7';

  @override
  String get autoGen5376 => 'Display di uscita del display nucleare HD3000';

  @override
  String get autoGen5377 => 'Display di uscita del display nucleare HD4000';

  @override
  String get autoGen5378 =>
      'HD4200, HD4400, HD4600, HD P4600 e altri display core (si consiglia di controllare la patch dedicata al display core di quarta generazione nella configurazione avanzata del display core e i problemi minori che potrebbero verificarsi sono stati risolti)';

  @override
  String get autoGen5379 => 'Display HD 515';

  @override
  String get autoGen5380 => 'Display principale HD 520/530';

  @override
  String get autoGen5381 => 'Display principale HD 540/550';

  @override
  String get autoGen5382 => 'Display HD 580 core';

  @override
  String get autoGen5383 =>
      'Display core HD P530 (come e3 1245v5 viene fornito con display core integrato)';

  @override
  String get autoGen5384 => 'Display principale HD 615';

  @override
  String get autoGen5385 => 'Display principale HD 630, HD P630';

  @override
  String get autoGen5386 => 'Display principale HD 640/650';

  @override
  String get autoGen5387 => 'Display HD/UHD 620 core';

  @override
  String get autoGen5388 => 'Display principale UHD 620/630';

  @override
  String get autoGen5389 => 'Display principale UHD 655';

  @override
  String get autoGen5390 =>
      'Rinominare GPRW in XPRW per risolvere il problema di riattivazione istantanea (nota: potrebbe impedire alla tastiera USB di riattivare il dispositivo, è possibile riattivarlo tramite il tasto di accensione)';

  @override
  String get autoGen5391 =>
      'Rinominare UPRW in XPRW per risolvere il problema di riattivazione istantanea (nota: potrebbe impedire alla tastiera USB di riattivare il dispositivo, è possibile riattivarlo tramite il tasto di accensione)';

  @override
  String get autoGen5392 =>
      'Abilita i dispositivi GPI0 per supportare i trackpad I2C';

  @override
  String get autoGen5393 =>
      'Un driver necessario per le estensioni del kernel macOS, che fornisce principalmente scalabilità e compatibilità per macOS, consentendo ad altri sviluppatori di scrivere estensioni del kernel per estendere macOS.';

  @override
  String get autoGen5394 =>
      'Ad esempio, EverythingGreen, AppleALC, VirtualSMC, ecc. possono implementare varie modifiche e miglioramenti a macOS tramite Lilu.kext, come il supporto di diverse schede grafiche, schede audio, gestione di macchine virtuali, ecc.';

  @override
  String get autoGen5395 =>
      'Lilu.kext è solitamente la prima estensione del kernel macOS caricata, poiché altri plugin potrebbero dover fare affidamento sulla sua funzionalità. Ciò garantisce che il plug-in venga caricato correttamente all\'avvio di macOS';

  @override
  String get autoGen5396 => 'Driver di base essenziali';

  @override
  String get autoGen5397 =>
      'Sull\'hardware Apple reale, SMC è responsabile della gestione delle funzioni di gestione del sistema come sensori hardware, controllo della ventola, gestione dell\'alimentazione, sensori di temperatura e stato della batteria. VirtualSMC fornisce queste funzionalità su hardware non Apple per garantire che macOS possa funzionare correttamente su questi sistemi';

  @override
  String get autoGen5398 =>
      'Spesso utilizzato insieme ad altre estensioni del kernel come Lilu.kext, EverythingGreen, ecc. Per creare un ambiente Mac quasi reale su hardware non Apple';

  @override
  String get autoGen5399 =>
      'Manca il driver e macOS non può funzionare correttamente.';

  @override
  String get autoGen5400 =>
      'Fornisce principalmente il supporto del driver grafico GPU. Si consiglia vivamente di controllare la maggior parte di essi (i modelli MacPro7, 1 e RX460, RX560 e versioni successive possono rimuovere il controllo). Di solito è in conflitto con i driver NootRX e NootedRed. Non selezionarli contemporaneamente durante la fase di installazione.';

  @override
  String get autoGen5401 =>
      'Supporta una varietà di schede grafiche, incluse le schede grafiche NVIDIA, AMD e Intel. Questa estensione può correggere e configurare il Framebuffer corretto in modo che la visualizzazione e la risoluzione funzionino correttamente';

  @override
  String get autoGen5402 =>
      'Fornisce supporto per connessioni HDMI e DisplayPort (DP) per garantire il corretto funzionamento delle uscite audio e video';

  @override
  String get autoGen5403 =>
      'Usa AppleALC per imitare la scheda audio integrata (relativamente perfetta, scelta preferita)';

  @override
  String get autoGen5404 =>
      'Utilizza la scheda audio universale VoodooHDA (caricata durante l\'avvio, supporta solo macOS BigSur 11.2.3 e versioni precedenti. Le versioni macOS successive devono aggiungere questo driver nell\'estensione del kernel del sistema per avere effetto. Secondo il test dell\'autore, il supporto più elevato è la versione ufficiale macOS Tahoe 26.x)';

  @override
  String get autoGen5405 =>
      'Correzione della compatibilità del controller USB 3.0 per vecchie piattaforme o piattaforme AMD';

  @override
  String get autoGen5406 =>
      'Risolvi il problema di riavvio causato dalla gestione energetica della CPU di vecchie piattaforme precedenti a Intel di terza generazione (mostrato come registro di arresto anomalo del kernel AppleIntelCPUPowerManagement, logo di avvio bloccato o riavvio subito dopo l\'accesso al sistema, ecc.)';

  @override
  String get autoGen5407 =>
      'Correggi la gestione energetica della CPU della serie AMD Ryzen (applicabile solo alla serie AMD Ryzen, se ci sono problemi di riavvio causati dalla gestione energetica, puoi prendere in considerazione la rimozione della casella di controllo)';

  @override
  String get autoGen5408 =>
      'Soluzione batteria 1 (applicabile ai notebook di 3a generazione e piattaforme precedenti)';

  @override
  String get autoGen5409 =>
      'Soluzione batteria 2 (applicabile ai notebook di 3a generazione e piattaforme più recenti)';

  @override
  String get autoGen5410 =>
      'Sensore di luce ambientale (luminosità automatica dello schermo), se non si dispone di un sensore di luce ambientale, non utilizzarlo, altrimenti potrebbe causare problemi';

  @override
  String get autoGen5411 =>
      'Il controllo della ventola dei notebook Asus, la gestione dell\'alimentazione e altre ottimizzazioni dei sensori di sistema, ecc. non sono consigliati per l\'uso da parte di utenti non Asus';

  @override
  String get autoGen5412 =>
      'Il controllo della ventola dei notebook Lenovo, la gestione dell\'alimentazione e altre ottimizzazioni dei sensori di sistema, ecc. non sono consigliati per macchine non Lenovo.';

  @override
  String get autoGen5413 =>
      'Sensore speciale per laptop Dell per monitorare e controllare con maggiore precisione le ventole. Non consigliato per macchine non Dell.';

  @override
  String get autoGen5414 =>
      'Consente di esporre le informazioni dei sensori dei processori AMD (come temperatura, consumo energetico, frequenza, ecc.) agli strumenti di monitoraggio di macOS. Questo driver supporta i processori della serie AMD Ryzen e alcuni processori della serie AMD FX. Altri processori AMD potrebbero causare problemi imprevisti. Allo stesso tempo, alcune piattaforme dei sistemi Sequoia 15 e versioni successive potrebbero presentare problemi di compatibilità, quindi scegli con attenzione.';

  @override
  String get autoGen5415 =>
      'Utilizzato per supportare RX6700, RX6750XT, RX6750GRE e altri grafici indipendenti della serie RX6XXX ufficialmente non supportati. C\'è un conflitto con il driver EverythingGreen. Non selezionarli entrambi in fase di installazione.';

  @override
  String get autoGen5416 =>
      'Supporta Navi 21 (Big Sur e versioni successive), Navi 22/23 (Monterey e versioni successive) e supporta anche RX6650, RX6950 e altre schede grafiche';

  @override
  String get autoGen5417 =>
      'L\'aggiunta di questo driver durante l\'installazione di macOS per la prima volta potrebbe comportare l\'impossibilità di accedere al sistema. Si consiglia di aggiungerlo dopo aver completato l\'installazione.';

  @override
  String get autoGen5418 =>
      'Risolvi il problema di lentezza causato dal display principale AMD Ryzen serie 2000~5000 Edge e dal browser Chrome che non disattivano l\'accelerazione hardware (applicabile solo alla serie AMD Ryzen, riducendo principalmente l\'uso del rendering OpenGL, l\'uso normale di QQ, browser Chrome. L\'uso di questo driver potrebbe causare il mancato funzionamento corretto di altre applicazioni, prendi la tua decisione)';

  @override
  String get autoGen5419 =>
      'Riparazione della lettura della batteria, risoluzione di alcuni problemi di visualizzazione della batteria';

  @override
  String get autoGen5420 =>
      'Compatibilità migliorata con SSD NVMe non Apple e consumo energetico inattivo ridotto';

  @override
  String get autoGen5421 =>
      'I dischi NVMe incompatibili inseriti nella lista nera di Samsung e altri non possono risolvere in modo efficace il problema del crash del timeout';

  @override
  String get autoGen5422 =>
      'L\'utilizzo di questo driver con un SSD NVMe con buona compatibilità può causare un arresto anomalo del kernel, quindi utilizzalo con cautela per la maggior parte del tempo.';

  @override
  String get autoGen5423 =>
      'Migliora la capacità di bypassare o disabilitare AMFI. Nota: l\'aggiunta di questo driver potrebbe causare l\'impossibilità di apertura o l\'arresto anomalo di alcune applicazioni. Al momento, puoi provare a rimuovere il driver e utilizzare solo i parametri di avvio AMFI disabilitati (come amfi=0x80)';

  @override
  String get autoGen5424 =>
      'Risolto il problema per cui le unità a stato solido NVMe venivano riconosciute come dischi esterni';

  @override
  String get autoGen5425 =>
      'Sblocca controlli universali, navigazione e altre funzioni sui Mac non supportati';

  @override
  String get autoGen5426 =>
      'Risolvi i problemi comuni relativi all\'ibernazione e al sonno';

  @override
  String get autoGen5427 =>
      'Consenti a macOS di utilizzare la funzionalità di tethering di un dispositivo Android tramite una connessione USB';

  @override
  String get autoGen5428 =>
      'Driver a frequenza variabile della CPU, fornisce principalmente il supporto per la conversione di frequenza MacPro7,1 per piattaforme di 11a generazione e successive';

  @override
  String get autoGen5429 =>
      'CPUFriend è dotato di un driver dati per fornire dati di conversione della frequenza della CPU per modelli specifici.';

  @override
  String get autoGen5430 =>
      'Ottimizza le dimensioni della CPU Intel di dodicesima generazione e successive e le configurazioni dei core';

  @override
  String get autoGen5431 =>
      'Può migliorare le prestazioni single-core, ma può portare a una diminuzione delle prestazioni multi-core. È applicabile solo alle piattaforme di dodicesima generazione e successive.';

  @override
  String get autoGen5432 =>
      'Soluzione di sincronizzazione CPU TSC, solitamente preferita';

  @override
  String get autoGen5433 =>
      'Comunemente utilizzato nelle piattaforme multi-core X79, X99, X299 e AMD';

  @override
  String get autoGen5434 =>
      'Utilizzato per risolvere problemi come funzionamento bloccato, logo di avvio bloccato, sincronizzazione audio e video anomala, mancata riattivazione dalla modalità di sospensione, ecc.';

  @override
  String get autoGen5435 =>
      'Soluzione di sincronizzazione CPU TSC 2, solitamente utilizzata su AMD Ryzen e alcune piattaforme Intel';

  @override
  String get autoGen5436 =>
      'Utilizzato per risolvere problemi come ritardi operativi, arresti anomali occasionali, anomalie di sincronizzazione audio e video, errori di riattivazione del sonno, ecc.';

  @override
  String get autoGen5437 =>
      'Risolvi il problema di sincronizzazione dell\'orologio multi-core della CPU della piattaforma AMD Ryzen (applicabile solo alla serie AMD Ryzen, utilizzato per risolvere problemi come ritardo operativo, logo di avvio bloccato, ecc. L\'aggiunta di questo driver può causare problemi imprevisti, scegliere con attenzione)';

  @override
  String get autoGen5438 =>
      'Soluzione di sincronizzazione TSC della CPU tre, solitamente utilizzata su piattaforme Intel e sistemi macOS meno recenti';

  @override
  String get autoGen5439 =>
      'Adatto per X79, X99, X299 multi-core e altre piattaforme, utilizzato per risolvere problemi come ritardo operativo e logo di avvio bloccato';

  @override
  String get autoGen5440 =>
      'Risolti alcuni problemi audio HDMI del display Intel Core';

  @override
  String get autoGen5441 =>
      'Risolto il problema dell\'impossibilità di accedere all\'ID Apple e ad iCloud, solitamente utilizzati per i notebook sprovvisti di schede di rete cablata locale';

  @override
  String get autoGen5442 =>
      'Risolvi i conflitti tra la nuova piattaforma macOS AppleRTC e il BIOS del PC, come RTC che causa blocchi, riavvii improvvisi o risvegli improvvisi dall\'ibernazione.';

  @override
  String get autoGen5443 =>
      'Driver per tastiera e mouse con tipo di interfaccia PS (driver per tastiera e mouse con porta rotonda PS della scheda madre desktop)';

  @override
  String get autoGen5444 =>
      'Driver della tastiera di tipo interfaccia PS (driver della tastiera con porta rotonda PS della scheda madre desktop)';

  @override
  String get autoGen5445 =>
      'Driver del mouse con interfaccia PS (driver del mouse con porta rotonda PS della scheda madre desktop)';

  @override
  String get autoGen5446 =>
      'Driver del touchpad della tastiera dedicato di Microsoft Surface';

  @override
  String get autoGen5447 =>
      'Correzione del tasto di scelta rapida della luminosità';

  @override
  String get autoGen5448 =>
      'Ottimizza le prestazioni della scheda grafica AMD Radeon, ma alcuni scenari potrebbero causare l\'arresto anomalo del sistema o il mancato avvio, quindi controlla attentamente';

  @override
  String get autoGen5449 =>
      'Consenti a RadeonGadget.app di leggere la temperatura della GPU della scheda grafica AMD e altre informazioni';

  @override
  String get autoGen5450 =>
      'Esporta la temperatura della GPU AMD e altre informazioni su VirtualSMC affinché gli strumenti di monitoraggio possano leggerle';

  @override
  String get autoGen5451 =>
      'Risolti i problemi di compatibilità del controller USB su piattaforme meno recenti come AMD FM1/FM2/AM3';

  @override
  String get autoGen5452 =>
      'Soluzione di iniezione USB universale, la scelta predefinita quando l\'USB non è personalizzata';

  @override
  String get autoGen5453 =>
      'Soluzione USBToolBox, solitamente utilizzata con UTBMap.kext personalizzato';

  @override
  String get autoGen5454 =>
      'Risolve il problema USB3.0 su piattaforme Intel di terza generazione e successive aggiornate (richiesto per i chipset serie 300 (H370, B360, H310, Z390 [non richiesto per sistemi 10.14 e successivi], X79, X99, schede madri ASRock Intel [eccetto B460/Z490+])';

  @override
  String get autoGen5455 =>
      'Risolvi i problemi di compatibilità EHCI USB 2.0 su AMD FM1, FM2, AM3 e altre vecchie piattaforme';

  @override
  String get autoGen5456 =>
      'Risolvi i problemi di compatibilità XHCI USB3.0 su AMD FM1, FM2, AM3 e altre vecchie piattaforme';

  @override
  String get autoGen5457 =>
      'Correzione della gestione energetica della CPU dei sistemi Intel di terza generazione e piattaforme precedenti Ventura 13 e versioni successive';

  @override
  String get autoGen5458 =>
      'Driver del lettore di schede SD serie Realtek (utilizzato con RealtekCardReaderFriend)';

  @override
  String get autoGen5459 =>
      'Driver di supporto RealtekCardReader per migliorare la compatibilità del lettore di schede Realtek';

  @override
  String get autoGen5460 =>
      'Driver del dispositivo della scheda di memoria SDHC, supporta schede di memoria eMMC e MMC';

  @override
  String get autoGen5461 => 'Driver della scheda di rete cablata da 100 M';

  @override
  String get autoGen5462 =>
      'Supporta schede di rete RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139';

  @override
  String get autoGen5463 =>
      'Solitamente utilizzato per le vecchie piattaforme tradizionali';

  @override
  String get autoGen5464 => 'Driver della scheda di rete Gigabit';

  @override
  String get autoGen5465 =>
      'Supporta Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V e altre schede di rete';

  @override
  String get autoGen5466 => 'Driver della scheda di rete cablata Gigabit';

  @override
  String get autoGen5467 =>
      'Supporta BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M e altre schede di rete';

  @override
  String get autoGen5468 =>
      'Supporta AR8131, AR8132, AR8151, AR8152 e altre schede di rete';

  @override
  String get autoGen5469 =>
      'Supporta Realtek RTL8111/8168 B/C/D/E/F/G/H, supporta Killer E2500 e schede di rete superiori';

  @override
  String get autoGen5470 =>
      'Il driver della nuova versione RealtekRTL8111 può supportare solo i sistemi 10.13.x e versioni successive';

  @override
  String get autoGen5471 =>
      'Supporta AR816x, AR817x, Killer E220x, Killer E2400 e altre schede di rete';

  @override
  String get autoGen5472 =>
      'Driver della scheda di rete cablata Gigabit (supporto 2,5G).';

  @override
  String get autoGen5473 =>
      'Supporta tutti i dispositivi conformi a IGC (i225, i226, i226-V e altre schede di rete cablate). L\'ID PCI di alcuni dispositivi potrebbe non essere presente nell\'elenco IOPCIMatch. Aggiungilo tu stesso per testarlo.';

  @override
  String get autoGen5474 =>
      'Rispetto al driver AppleEthernetE1000, ha prestazioni e stabilità migliori (i226-V può causare panico nel kernel quando si utilizza AppleEthernetE1000 nel sistema Monterey)';

  @override
  String get autoGen5475 =>
      'Supporta schede di rete Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 e i211';

  @override
  String get autoGen5476 =>
      'Potrebbero esserci problemi di instabilità, si consiglia di rimanere nella versione Big Sur e utilizzare SmallTree';

  @override
  String get autoGen5477 =>
      'Tipicamente applicabile ai sistemi macOS Monterey 12 e versioni successive';

  @override
  String get autoGen5478 =>
      'Supporta la serie Intel 5: 82578LM, 82578LC, 82578DM, 82578DC';

  @override
  String get autoGen5479 => 'Supporta le serie Intel 6 e 7: 82579LM, 82579V';

  @override
  String get autoGen5480 =>
      'Supporta le serie Intel 8 e 9: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3';

  @override
  String get autoGen5481 =>
      'Supporta la serie Intel 100: I219V, I219LM, I219V2, I219LM2, I219LM3';

  @override
  String get autoGen5482 => 'Supporta la serie Intel 200: I219LM, I219V';

  @override
  String get autoGen5483 => 'Supporta la serie Intel 300: I219LM, I219V';

  @override
  String get autoGen5484 =>
      'Il conducente è mantenuto da acidanthera. OS X 10.6 ~ 10.8 utilizza IntelSnowMausi';

  @override
  String get autoGen5485 =>
      'Questo driver è fornito da Laura Müller. OS X 10.6 ~ 10.8 utilizza IntelSnowMausi';

  @override
  String get autoGen5486 =>
      'Vecchio driver RTL8125, supporta le schede Ethernet della serie Realtek RTL8125';

  @override
  String get autoGen5487 =>
      'Driver della scheda di rete cablata Gigabit (supporta 2,5G, 5G).';

  @override
  String get autoGen5488 =>
      'Nuovo driver per RTL812x, supporta le schede Ethernet serie Realtek RTL8125, RTL8126';

  @override
  String get autoGen5489 =>
      'Modelli supportati: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A';

  @override
  String get autoGen5490 =>
      'Supporta la scheda di rete cablata Intel i211, questo modello è comune sulle schede madri AMD';

  @override
  String get autoGen5491 =>
      'Generalmente applicabile a macOS Big Sur e versioni precedenti, macOS Monterey potrebbe essere instabile';

  @override
  String get autoGen5492 => 'Compatibilità: sistema operativo';

  @override
  String get autoGen5493 =>
      'Driver della scheda di rete cablata 10G (supporto 10G).';

  @override
  String get autoGen5494 => 'Supporta Intel X520,';

  @override
  String get autoGen5495 =>
      'Supporta solo i sistemi macOS 10.13 e versioni successive';

  @override
  String get autoGen5496 =>
      'Si consiglia di disattivare WoL nelle impostazioni UEFI del BIOS';

  @override
  String get autoGen5497 =>
      'Risolto il problema per cui l\'utility disco non riconosceva i dischi SATA durante l\'installazione dei sistemi Catalina 10.15 e versioni precedenti';

  @override
  String get autoGen5498 =>
      'Risolto il problema per cui Utility Disco non riconosceva i dischi SATA durante il processo di installazione dei sistemi Big Sur 11 e versioni successive';

  @override
  String get autoGen5499 =>
      'Risolvi i problemi di compatibilità relativi alla piattaforma AMD Adobe Family Bucket';

  @override
  String get autoGen5500 =>
      'Supporta macOS High Sierra 10.13 ~ macOS Tathoe 26.x (solitamente utilizzato con il client HeliPort)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (Nota: il sistema Sequoia 15 deve essere aggiornato con la versione modificata OCLP specifica per Intel prima di poter essere utilizzato normalmente!!!)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4 e versioni successive';

  @override
  String get autoGen5503 =>
      'Risolve principalmente alcuni problemi del dispositivo Bluetooth (applicabile ad alcuni dispositivi Broadcom e altri dispositivi Bluetooth USB)';

  @override
  String get autoGen5504 =>
      'Qualcomm WiFi, supporta macOS Big Sur 11.x e versioni precedenti';

  @override
  String get autoGen5505 => 'Qualcomm (Atheros)-AR9285';

  @override
  String get autoGen5506 => 'Qualcomm (Atheros)-AR9380';

  @override
  String get autoGen5507 => 'Qualcomm (Atheros)-AR9485';

  @override
  String get autoGen5508 => 'Qualcomm (Atheros)-AR9565';

  @override
  String get autoGen5509 => 'Qualcomm (Atheros)-AR9463';

  @override
  String get autoGen5510 => 'Qualcomm (Atheros)-AR9462';

  @override
  String get autoGen5511 =>
      'Disabilita Touch ID per ridurre lo spreco di risorse di sistema e migliorare la stabilità';

  @override
  String get autoGen5512 =>
      'Solitamente adatto per notebook con riconoscimento delle impronte digitali e versioni inferiori a macOS Big Sur 11';

  @override
  String get autoGen5513 =>
      'Il criterio TRIM è configurato per impostazione predefinita (ovvero SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1. Il sistema APFS esegue operazioni TRIM in base al timeout TRIM predefinito di macOS, applicabile alla maggior parte degli SSD che supportano TRIM.';

  @override
  String get autoGen5515 =>
      '2. Sugli SSD che supportano TRIM, macOS gestisce automaticamente l\'esecuzione di TRIM, il che aiuta a ripulire i blocchi di dati eliminati, rendendo la scrittura SSD più efficiente, evitando frequenti amplificazioni di scrittura e migliorando la velocità di scrittura.';

  @override
  String get autoGen5516 =>
      '3.TRIM pulirà regolarmente i blocchi inutilizzati per ridurre l\'usura dell\'SSD, prolungando così la durata dell\'SSD.';

  @override
  String get autoGen5517 =>
      '4. Alcuni SSD di terze parti che non supportano completamente TRIM potrebbero riscontrare ritardi o addirittura blocchi durante l\'esecuzione di TRIM, rallentando molto il processo di avvio.';

  @override
  String get autoGen5518 =>
      'Disabilitare completamente la funzionalità TRIM (ovvero impostare SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => 'Vantaggi della disabilitazione di TRIM:';

  @override
  String get autoGen5520 =>
      '1. Migliora la velocità di avvio. Per gli SSD di terze parti che non supportano o supportano parzialmente TRIM, macOS potrebbe causare ritardi dovuti al tentativo di operazioni TRIM durante l\'avvio. La disabilitazione di TRIM può eliminare questo ritardo e migliorare la velocità di avvio.';

  @override
  String get autoGen5521 =>
      '2. Migliora la compatibilità. Alcuni SSD con scarsa compatibilità possono ridurre il rischio di arresti anomali.';

  @override
  String get autoGen5522 =>
      '3. Estendere la vita degli SSD non TRIM. Sugli SSD che non supportano TRIM, l\'attivazione forzata di TRIM può accelerarne l\'usura e comprometterne la durata. La disabilitazione di TRIM può prolungare la vita di tali SSD.';

  @override
  String get autoGen5523 => 'Svantaggi della disabilitazione di TRIM:';

  @override
  String get autoGen5524 =>
      '1. Le prestazioni dell\'SSD diminuiscono. Alcuni SSD non dispongono del meccanismo di garbage collection TRIM. L\'SSD non è in grado di pulire e contrassegnare i blocchi liberi in tempo dopo l\'eliminazione dei dati, il che potrebbe causare un rallentamento della velocità di scrittura.';

  @override
  String get autoGen5525 =>
      '2. L\'efficienza della gestione dello spazio su disco è ridotta. Dopo averlo disabilitato, il controller SSD richiede più tempo e risorse per la garbage collection, il che può portare a una maggiore frammentazione e a una ridotta efficienza di gestione dello spazio.';

  @override
  String get autoGen5526 =>
      '3. Riduci la vita dell\'SSD. Per gli SSD che supportano TRIM, dopo aver disabilitato TRIM, l\'SSD non può ottimizzare il processo di scrittura, il che aumenterà l\'usura dei blocchi di archiviazione, accorciando così la vita dell\'SSD che supporta TRIM.';

  @override
  String get autoGen5527 =>
      'Sebbene la disattivazione di TRIM possa apportare alcuni miglioramenti alla velocità di avvio, per i moderni SSD che supportano TRIM, si consiglia di mantenere TRIM attivato per prestazioni e stabilità a lungo termine. Questo aumento di velocità è solitamente piccolo e avrà un effetto significativo solo su alcuni SSD incompatibili.';

  @override
  String get autoGen5528 =>
      'Driver a frequenza variabile della CPU, qui fornisce principalmente il supporto a frequenza variabile MacPro7,1 dall\'11a alla 14a generazione';

  @override
  String get autoGen5529 =>
      'Lettore di schede SD Realtek e relativo driver di supporto';

  @override
  String get autoGen5530 =>
      'Adatto per piattaforme di terza generazione e precedenti, dispositivi di input collegati in base al protocollo bus PS/2, come tastiera, mouse, touchpad, ecc. Può realizzare un certo grado di funzione multi-touch, ma il supporto è limitato.';

  @override
  String get autoGen5531 =>
      'Adatto per piattaforme di terza generazione e superiori, dispositivi di input collegati in base al protocollo bus PS/2, come tastiera, mouse, touchpad, ecc. Fornisce supporto per touchpad PS/2 tramite driver secondario e può raggiungere un certo grado di funzione multi-touch, ma il supporto è limitato.';

  @override
  String get autoGen5532 =>
      'La tastiera PS2 è adatta per touchpad, touch screen, sensori e altri dispositivi di input collegati in base al protocollo bus I2C. Fornisce il supporto dei gesti multi-touch per simulare l\'esperienza touch nativa di macOS.';

  @override
  String get autoGen5533 =>
      'Tastiera PS2, adatta per touchpad Synaptics collegato in base al protocollo bus con protocollo RMI4. Concentrati su un migliore supporto dei dispositivi Synaptics, fornendo funzionalità multi-touch e gestuali simili al touchpad nativo di macOS.';

  @override
  String get autoGen5534 =>
      'Tastiera PS2, adatta per dispositivi touch basati su bus I2C e touchpad Synaptics che utilizzano il protocollo RMI4. RMII2C combina i vantaggi di VoodooI2C e VoodooRMI.';

  @override
  String get autoGen5535 =>
      'Driver rotondo per tastiera e mouse basato sulla connessione con protocollo bus PS/2';

  @override
  String get autoGen5536 =>
      'Combinazione di tastiera dedicata, touchpad e driver touch screen Microsoft Surface.';

  @override
  String get autoGen5537 => 'Serie Broadcom BCM94360 senza driver';

  @override
  String get autoGen5538 =>
      'Le schede Apple AirPort e Fenvi senza driver, Ventura e versioni precedenti sono senza driver e la patch supporta Sonoma 14 e Sequoia 15! Nota: i sistemi Sonoma 14 e versioni successive devono essere aggiornati con OCLP prima di poter essere utilizzati normalmente! ! !';

  @override
  String get autoGen5539 => 'Serie Broadcom BCM943XX senza driver';

  @override
  String get autoGen5540 =>
      'Le schede diverse da Apple AirPort e Fenvi, Catalina e precedenti sono prive di driver e la patch supporta Sonoma 14 e Sequoia 15! Nota: i sistemi Sonoma 14 e versioni successive devono essere aggiornati con OCLP prima di poter essere utilizzati normalmente! ! !';

  @override
  String get autoGen5541 => 'Vecchia Broadcom BCM4331';

  @override
  String get autoGen5542 =>
      'Tieni presente che i sistemi Monterey 12 o successivi devono utilizzare la patch OCLP prima di poter essere utilizzati normalmente! ! !';

  @override
  String get autoGen5543 => 'Vecchia Broadcom BCM43224';

  @override
  String get autoGen5544 => 'Driver del modello WiFi Qualcomm (Atheros).';

  @override
  String get autoGen5545 => 'Opzione manuale WiFi Qualcomm';

  @override
  String get autoGen5546 =>
      'Qualcomm (Atheros) WiFi Big Sur e seguenti dipendenze';

  @override
  String get autoGen5547 =>
      'I sistemi macOS Big Sur 11 e versioni precedenti utilizzano HS80211Family per abbinare driver di modelli specifici';

  @override
  String get autoGen5548 =>
      'Qualcomm (Atheros) WiFi Monterey e dipendenze superiori';

  @override
  String get autoGen5549 =>
      'I sistemi macOS Monterey 12 e versioni successive utilizzano la combinazione IO80211ElCap';

  @override
  String get autoGen5550 =>
      'Risolto il problema di riconoscimento della batteria in \"Preferenze di Sistema\" per le serie Surface Pro 7 e Book 3';

  @override
  String get autoGen5551 =>
      'Risolto il problema dell\'errore POST all\'avvio dell\'orologio in tempo reale di alcuni computer di marca HP.';

  @override
  String get autoGen5552 =>
      'Disabilita il piano di sveglia RTC e risolvi il problema della sveglia automatica dopo il sonno';

  @override
  String get autoGen5553 => 'Piattaforma Penryn-775 di generazione 0';

  @override
  String get autoGen5554 => 'Piattaforma Lynnfield-1156 di prima generazione';

  @override
  String get autoGen5555 =>
      'Piattaforma Sandy Bridge-1155 di seconda generazione';

  @override
  String get autoGen5556 => 'Piattaforma Ivy Bridge-1155 di terza generazione';

  @override
  String get autoGen5557 => 'Piattaforma Haswell-1150 di quarta generazione';

  @override
  String get autoGen5558 => 'Piattaforma Broadwell-1150 di quinta generazione';

  @override
  String get autoGen5559 => 'Piattaforma Skylake-1151 di sesta generazione';

  @override
  String get autoGen5560 => 'Piattaforma Kaby Lake-1151 di settima generazione';

  @override
  String get autoGen5561 =>
      'Piattaforma Coffee Lake-1151 di ottava generazione';

  @override
  String get autoGen5562 => 'Piattaforma Coffee Lake-1151 di 9a generazione';

  @override
  String get autoGen5563 => 'Piattaforma Comet Lake-1200 di decima generazione';

  @override
  String get autoGen5564 =>
      'Piattaforma Rocket Lake-1200 di undicesima generazione';

  @override
  String get autoGen5565 =>
      'Piattaforma Alder Lake-1700 di dodicesima generazione';

  @override
  String get autoGen5566 => 'Piattaforma Raptor Lake-1700 di 13a generazione';

  @override
  String get autoGen5567 =>
      'Piattaforma Raptor Lake Refresh-1700 di quattordicesima generazione';

  @override
  String get autoGen5568 => 'Piattaforma di 15a generazione-Arrow Lake-1851';

  @override
  String get autoGen5569 => 'Notebook Penryn di generazione 0';

  @override
  String get autoGen5570 =>
      'Notebook di prima generazione Clarksfield&Arrandale';

  @override
  String get autoGen5571 => 'Notebook Sandy Bridge di seconda generazione';

  @override
  String get autoGen5572 => 'Notebook Ivy Bridge di terza generazione';

  @override
  String get autoGen5573 => 'Laptop Haswell di quarta generazione';

  @override
  String get autoGen5574 => 'Notebook Broadwell di quinta generazione';

  @override
  String get autoGen5575 => 'Notebook Skylake di sesta generazione';

  @override
  String get autoGen5576 => 'Notebook Kaby Lake di settima generazione';

  @override
  String get autoGen5577 => 'Notebook Coffee Lake di ottava generazione';

  @override
  String get autoGen5578 => 'Notebook Coffee Lake di nona generazione';

  @override
  String get autoGen5579 => 'Laptop di decima generazione: Comet Lake';

  @override
  String get autoGen5580 => 'Laptop di decima generazione: Ice Lake';

  @override
  String get autoGen5581 => 'Notebook Tiger Lake di 11a generazione';

  @override
  String get autoGen5582 => 'Notebook di dodicesima generazione Alder Lake';

  @override
  String get autoGen5583 => 'Notebook Raptor Lake di 13a generazione';

  @override
  String get autoGen5584 => 'Notebook Raptor Lake Refresh di 14a generazione';

  @override
  String get autoGen5585 => 'Generazione 0-Penryn-mini host';

  @override
  String get autoGen5586 =>
      'Mini host di prima generazione Clarksfield e Arrandale';

  @override
  String get autoGen5587 => 'Mini host Sandy Bridge di seconda generazione';

  @override
  String get autoGen5588 => 'Mini host Ivy Bridge di terza generazione';

  @override
  String get autoGen5589 => 'Mini host Haswell di quarta generazione';

  @override
  String get autoGen5590 => 'Mini host Broadwell di quinta generazione';

  @override
  String get autoGen5591 => 'Mini host Skylake di sesta generazione';

  @override
  String get autoGen5592 => 'Mini host Kaby Lake di settima generazione';

  @override
  String get autoGen5593 => 'Mini host Coffee Lake di ottava generazione';

  @override
  String get autoGen5594 => 'Mini host Coffee Lake di 9a generazione';

  @override
  String get autoGen5595 => 'Mini host Comet Lake di decima generazione';

  @override
  String get autoGen5596 => 'Mini host Ice Lake di decima generazione';

  @override
  String get autoGen5597 => 'Mini host Tiger Lake di undicesima generazione';

  @override
  String get autoGen5598 => 'Mini host Alder Lake di dodicesima generazione';

  @override
  String get autoGen5599 => 'Mini host Raptor Lake di 13a generazione';

  @override
  String get autoGen5600 => 'Mini host Raptor Lake Refresh di 14a generazione';

  @override
  String get autoGen5601 =>
      'Piattaforma di prima generazione Nehalem&Westmere-X58';

  @override
  String get autoGen5602 =>
      'Piattaforma Sandy Bridge-E-X79 di seconda generazione';

  @override
  String get autoGen5603 => 'Piattaforma Ivy Bridge-E-X79 di terza generazione';

  @override
  String get autoGen5604 => 'Piattaforma Haswell-E-X99 di quarta generazione';

  @override
  String get autoGen5605 => 'Piattaforma Broadwell-E-X99 di quinta generazione';

  @override
  String get autoGen5606 => 'Piattaforma Skylake-X&W-X299 di sesta generazione';

  @override
  String get autoGen5607 =>
      'Piattaforma Cascade Lake-X&W di decima generazione';

  @override
  String get autoGen5608 => 'Bulldozer(15h) e Jaguar(16h)-Notebook';

  @override
  String get autoGen5609 => 'Notebook Ryzen';

  @override
  String get autoGen5610 => 'Bulldozer(15h) e Jaguar(16h)-mini host';

  @override
  String get autoGen5611 => 'Ospite Ryzen-mini';

  @override
  String get autoGen5612 => 'Ryzen e Threadripper (17h e 19h)-Server';

  @override
  String get autoGen5613 => 'test';

  @override
  String get autoGen5614 => 'prova nvram';

  @override
  String get autoGen5615 => 'Impossibile ottenere la directory home';

  @override
  String get autoGen5616 => 'La directory di origine non esiste';

  @override
  String get autoGen5617 => 'Impossibile ottenere la directory del desktop';

  @override
  String get autoGen5618 =>
      'Il controllo del percorso fallisce e restituisce un percorso vuoto';

  @override
  String get autoGen5619 =>
      'Impossibile ottenere le informazioni sul file plist e il risultato restituito era incompleto.';

  @override
  String get autoGen5620 =>
      'NOTA: NormalizeHeaders è abilitato e l\'ID della tabella contiene caratteri non stampabili!';

  @override
  String get autoGen5621 =>
      'Nota: NormalizeHeaders non è abilitato e l\'ID della tabella contiene il carattere \'\'?\'\'!';

  @override
  String get autoGen5622 =>
      'Nessun file config.plist di destinazione selezionato!';

  @override
  String get autoGen5623 => '=> Impossibile determinare il tipo config.plist!';

  @override
  String get autoGen5624 => '=> Tabella SSDT non trovata! saltare...';

  @override
  String get autoGen5625 => '=> Tabella SSDT duplicata non trovata!';

  @override
  String get autoGen5626 => '=> Patch non trovata! saltare...';

  @override
  String get autoGen5627 => '=> Patch duplicata non trovata!';

  @override
  String get autoGen5628 => '=> Patch di rilascio non trovata! saltare...';

  @override
  String get autoGen5629 => '=> Patch Drop duplicata non trovata!';

  @override
  String get autoGen5630 =>
      '=> Nessuna configurazione Quirks trovata che necessita di essere aggiornata! saltare...';

  @override
  String get autoGen5631 =>
      '=> Controllo della configurazione di Quirks target...';

  @override
  String get autoGen5632 => 'Backup del file di configurazione corrente...';

  @override
  String get autoGen5633 => 'Preparazione alla copia dei file SSDT...';

  @override
  String get autoGen5634 => 'Configurazione salvata con successo!';

  @override
  String get autoGen5635 => 'La fusione è completa!';

  @override
  String get autoGen5636 => 'Unione fallita!';

  @override
  String get autoGen5637 =>
      'Nota: durante il processo di unione vengono rilevati potenziali errori, controllali e correggili!';

  @override
  String get autoGen5638 =>
      'Nota: la configurazione corrente non è impostata per sovrascrivere la modalità EFI di destinazione!';

  @override
  String get autoGen5639 =>
      'È necessario eseguire manualmente le seguenti operazioni:';

  @override
  String get autoGen5640 => 'Elemento del dizionario radice non trovato';

  @override
  String get autoGen5641 =>
      'Elimina i conflitti IRQ, spesso utilizzati per le riparazioni della scheda audio';

  @override
  String get autoGen5642 =>
      '• HPET (High Precision Event Timer) è un modulo hardware utilizzato per la temporizzazione del sistema.\n• In macOS, alcuni dispositivi HPET della scheda madre potrebbero causare conflitti IRQ (richieste di interruzione), che influenzeranno il normale funzionamento del dispositivo audio, rendendo il sistema instabile o addirittura impossibile da avviare.\n• Questa patch regola le definizioni dei dispositivi ACPI relativi a HPET per evitare conflitti IRQ, garantire che macOS possa utilizzare correttamente i timer HPET, risolvere i problemi della scheda audio e migliorare la stabilità del sistema.';

  @override
  String get autoGen5643 =>
      'Attributi di alimentazione EC e USB contraffatti (applicabili ai computer desktop Intel di sesta generazione e superiori)';

  @override
  String get autoGen5644 =>
      '• Applicabile ai computer desktop Intel di sesta generazione e superiori\n• Questa patch disabiliterà il dispositivo EC originale del sistema e quindi creerà un dispositivo EC virtuale per \"ingannare\" macOS facendogli credere che esista un EC compatibile, risolvendo così i problemi di avvio causati dalla mancanza di dispositivi EC. \n• Aggiunte le proprietà di alimentazione USB necessarie per risolvere potenziali problemi. Equivalente all\'unione: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'Contraffagge solo l\'EC contraffatto, non influisce sull\'EC esistente e inserisce contemporaneamente gli attributi di alimentazione USB (applicabile ai notebook Intel di sesta generazione e superiori)';

  @override
  String get autoGen5646 =>
      '• Applicabile ai notebook Intel di sesta generazione e superiori\n• Adatto ai notebook, non cancella né modifica l\'EC esistente, ma crea separatamente un nuovo EC virtuale per evitare di danneggiare il dispositivo EC originale e prevenire anomalie funzionali come la gestione energetica del notebook e la retroilluminazione della tastiera.\n• Aggiunte le proprietà di alimentazione USB necessarie per risolvere potenziali problemi. Equivalente all\'unione: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 =>
      'CE contraffatto (applicabile ai computer desktop Intel di quinta generazione e inferiori)';

  @override
  String get autoGen5648 =>
      '• Adatto per desktop Intel di quinta generazione e inferiori\n• Questa patch disabiliterà il dispositivo EC originale del sistema e quindi creerà un dispositivo EC virtuale per \"ingannare\" macOS facendogli credere che esista un EC compatibile, risolvendo così i problemi di avvio causati dalla mancanza di dispositivi EC.';

  @override
  String get autoGen5649 =>
      'Solo EC contraffatti, non influisce sull\'EC esistente (applicabile ai notebook Intel di quinta generazione e inferiori)';

  @override
  String get autoGen5650 =>
      '• Applicabile ai notebook Intel di quinta generazione e precedenti\n• Non elimina né modifica l\'EC esistente, ma crea un nuovo EC virtuale separatamente per evitare di danneggiare il dispositivo EC originale e prevenire anomalie funzionali come la gestione dell\'alimentazione del notebook e la retroilluminazione della tastiera.';

  @override
  String get autoGen5651 =>
      'Correzione dell\'attributo di alimentazione USB (applicabile alle piattaforme Intel di sesta generazione e successive)';

  @override
  String get autoGen5652 =>
      '• Applicabile a Intel Skylake di sesta generazione e successive, server Haswell-E di quarta generazione e successive, AMD Ryzen e altre piattaforme\n• A partire da Intel Skylake e dai processori più recenti, macOS richiede proprietà di alimentazione USB specifiche per garantire che i dispositivi USB siano alimentati e riconosciuti correttamente.\n• Questa patch corregge la gestione energetica delle porte USB per conformarsi ai requisiti di macOS e risolve problemi come riconoscimento anomalo del dispositivo USB, alimentazione insufficiente e incapacità di hot-plug.\n• Per i notebook: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml La combinazione dei due equivale a SSDT-EC-USBX-LAPTOP.aml\n• Per desktop: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml La combinazione dei due è equivalente a SSDT-EC-USBX-DESKTOP.aml';

  @override
  String get autoGen5653 =>
      'Identificazione del core della CPU, che consente la regolazione della frequenza e la correzione del risparmio energetico';

  @override
  String get autoGen5654 =>
      '• SSDT-PLUG è adatto per Intel Haswell 4a generazione ~ 11a generazione, server Haswell-E 4a generazione e piattaforme successive (quando si personalizza SSDT-PLUG, lo strumento lo rileva e genera automaticamente!)\n• SSDT-PLUG-ALT è adatto per Intel Alder Lake di 12a generazione e successive e per la piattaforma AMD Ryzen (quando si personalizza SSDT-PLUG, lo strumento lo rileva e lo genera automaticamente e lo rinomina in SSDT-PLUG-ALT!)\n• macOS si affida al plug-in di gestione energetica della CPU (PluginType) per regolare la frequenza della CPU e migliorare l\'efficienza energetica e la durata della batteria.\n• Questa patch modificherà la definizione della CPU in modo che macOS consideri che sia un processore di tipo plug-in = 1 richiesto dai dispositivi Apple, caricando così correttamente la gestione della frequenza della CPU e migliorando le prestazioni e il controllo del consumo energetico.';

  @override
  String get autoGen5655 =>
      'Abilita il supporto NVRAM (solitamente per schede madri Intel native serie 300)';

  @override
  String get autoGen5656 =>
      '• Applicabile alle piattaforme Intel Coffee Lake di ottava generazione ~ nona generazione\n• Le schede madri native della serie 300 (come Z370, B360) potrebbero non utilizzare correttamente la NVRAM in macOS, causando il mancato salvataggio di alcune funzioni (come iMessage, volume di memoria, parametri di avvio, ecc.).\n• Questa patch abilita il PMC (Power Management Controller) della scheda madre, consentendo a macOS di utilizzare normalmente la NVRAM nativa senza la necessità di un driver EmuVariableUEFI aggiuntivo.';

  @override
  String get autoGen5657 =>
      'Aggiungi dispositivo PNLF per il supporto della retroilluminazione (solo notebook e dispositivi all-in-one)';

  @override
  String get autoGen5658 =>
      '• macOS richiede un dispositivo PNLF (Luminosità del pannello) per controllare correttamente la luminosità dello schermo del notebook.\n• Questa patch creerà un dispositivo PNLF in ACPI, consentendo a macOS di regolare la luminosità dello schermo e visualizzare le opzioni di controllo della luminosità nelle Preferenze di Sistema.\n• Adatto per notebook e alcuni computer all-in-one per risolvere il problema della regolazione della luminosità non disponibile.\n• UID = 14, applicabile a: Intel Arrandale di prima generazione, Sandy Bridge di seconda generazione, Ivy Bridge di terza generazione\n  Nota: alcune macchine che utilizzano UID: 14 incontreranno una luminosità massima limitata o altri problemi. Per risolvere questi problemi, è necessario impostare il percorso corretto del dispositivo della iGPU (scheda grafica integrata) e potrebbe essere necessario integrare le informazioni del registro IGPU.\n• UID = 15, applicabile a: Intel Haswell di quarta generazione, Broadwell di quinta generazione\n• UID = 16, applicabile a: Intel Skylake di sesta generazione, Kaby Lake di settima generazione, alcuni Haswell di quarta generazione\n• UID = 17, applicabile a: luminosità personalizzata, solitamente utilizzata per alcuni dispositivi non standard o impostazioni Hackintosh con esigenze speciali\n• UID = 18, adatto per: Luminosità personalizzata, solitamente utilizzata per alcuni dispositivi non standard o impostazioni Hackintosh con esigenze speciali\n• UID = 19, applicabile a: Intel CoffeeLake di ottava generazione e successive, inferiori alla decima generazione e notebook AMD\n• UID = 99, si applica a: Altri (richiede proprietà del dispositivo applbkl-name/applbkl-data personalizzate), potrebbero non funzionare affatto';

  @override
  String get autoGen5659 =>
      'Fornisce il supporto del sensore necessario per la regolazione della retroilluminazione dello schermo (applicabile solo a notebook e computer all-in-one)';

  @override
  String get autoGen5660 =>
      '• Utilizzato per simulare e abilitare la funzione del sensore nativo di Apple (Ambient Light Sensor, ALS) per regolare automaticamente la luminosità dello schermo\n• Se il tuo dispositivo dispone realmente di ALS (come alcuni notebook di fascia alta) e ci sono problemi, puoi provare ad aggiungere SSDT-ALS0 per correggere la funzione di regolazione automatica della luminosità, altrimenti non è consigliabile aggiungere\n• Applicabile solo a: PC all-in-one (AIO) e laptop';

  @override
  String get autoGen5661 =>
      'macOS si maschera da Windows e sblocca i dispositivi bloccati (come i touchpad I2C)';

  @override
  String get autoGen5662 =>
      '• _OSI (Operating System Interface) è un metodo ACPI che consente al sistema operativo di segnalare quali funzionalità supporta.\n• Alcuni firmware della scheda madre potrebbero decidere se abilitare determinati dispositivi in ​​base al valore restituito _OSI, che potrebbe non essere riconosciuto da macOS, con conseguente perdita di funzionalità.\n• La patch \"inganna\" il firmware facendogli credere che macOS sia anche Windows, attivando così funzionalità nascoste come: touchpad I2C, gestione della batteria, ecc.';

  @override
  String get autoGen5663 => 'Ripristino e correzione della porta USB';

  @override
  String get autoGen5664 =>
      '• Alcuni OEM violano le specifiche ACPI, causando problemi durante l\'avvio di macOS. Per risolvere questo problema, il dispositivo RHUB deve essere spento e forzare macOS a ricostruire manualmente la porta.\n• Questa patch reimposta il controller USB (inclusi EHC1, EHC2 e la schermatura e la ridenominazione di altri dispositivi USB) all\'avvio di macOS, in modo che tutte le porte USB possano essere identificate correttamente e viene utilizzata con la mappatura USB (come: UTBMap.kext) per garantire che i dispositivi USB funzionino correttamente.\n• Solitamente adatto per schede madri desktop della serie 400 (Asus, ecc.) e piattaforme mobili IceLake (Dell, Lenovo, ecc.).';

  @override
  String get autoGen5665 =>
      'Crea bridge per il percorso del dispositivo PCI mancante';

  @override
  String get autoGen5666 =>
      '• I percorsi dei dispositivi PCI di alcune schede madri o dispositivi potrebbero non essere riconosciuti correttamente in macOS, causando il mancato funzionamento del dispositivo, come schede grafiche, schede audio, schede di rete wireless, ecc.\n• Questa patch creerà i bridge PCI corretti per questi dispositivi, garantendo che macOS possa riconoscere e utilizzare correttamente questi dispositivi PCI.';

  @override
  String get autoGen5667 =>
      'Correggere la tabella APIC per risolvere il problema di panico del kernel della CPU (applicabile alla piattaforma server HEDT)';

  @override
  String get autoGen5668 =>
      '• Ripara o riscrivi l\'ID del processore nella tabella APIC per garantire che macOS possa identificare correttamente il numero e il numero di core della CPU ed evitare errori di panico del kernel o di identificazione dei core.\n• La tabella APIC originale deve essere eliminata nel firmware prima di poter caricare la tabella modificata.\n• Applicabile a X58, X79, X99, X299 e altre piattaforme server Intel (HEDT).';

  @override
  String get autoGen5669 =>
      'Rimuovi l\'area di memoria riservata DMAR, risolvi i problemi di avvio del sistema e i problemi di compatibilità della scheda di rete';

  @override
  String get autoGen5670 =>
      '• DMAR (DMA Remapping Table) fa parte della tecnologia di virtualizzazione Intel VT-d per il supporto IOMMU (Input-Output Memory Management Unit).\n• Questa patch rimuoverà l\'area di memoria riservata nella tabella DMAR che causa il problema, impedendo così a macOS di leggere erroneamente il DMAR e di impedire l\'avvio del sistema.\n• Fornire supporto per la compatibilità VT-d in modo che VT-d funzioni correttamente in macOS Big Sur e versioni successive, in particolare coinvolgendo l\'hardware gestito da DriverKit.\n• macOS supporta VT-d, ma ci sono problemi di compatibilità con la tabella DMAR fornita da alcune schede madri o BIOS, che potrebbero causare arresti anomali del kernel, ritardi di avvio, instabilità del sistema e altri problemi durante l\'analisi della tabella ACPI DMAR (bloccata nelle posizioni dei registri relativi a AppleACPICPU, IOPCI e AppleVTD).\n• Gamma hardware supportata: scheda di rete I225, scheda di rete Aquantia, alcuni dispositivi WiFi, ecc.\n• La tabella DMAR originale deve essere inserita nel firmware prima di poter caricare la tabella patchata.\n• CPU applicabile: qualsiasi processore che supporti la tecnologia VT-d.';

  @override
  String get autoGen5671 => 'Aggiunto il supporto SMBus del bus di sistema';

  @override
  String get autoGen5672 =>
      '• macOS richiede un dispositivo SMBus (System Management Bus) per eseguire correttamente determinati servizi, come:\n  Touchpad I2C, gestione della batteria, regolazione automatica della luminosità con rilevamento della luce, alcuni dispositivi Wi-Fi/Bluetooth\n• SSDT-SBUS-MCHC fa sì che macOS pensi che si tratti di un dispositivo Apple nativo aggiungendo dispositivi SBUS (System Management Bus) e MCHC (Memory Controller) ad ACPI, garantendo che le funzioni correlate funzionino correttamente.\n• Se non è possibile utilizzare il touchpad I2C del dispositivo, le informazioni sulla batteria e la regolazione automatica della luminosità, è possibile provare ad abilitare questa patch.';

  @override
  String get autoGen5673 =>
      'Risolve il problema del fallimento dell\'accelerazione grafica principale (solitamente applicabile a Ivy Bridge e Sandy Bridge)';

  @override
  String get autoGen5674 =>
      '• Intel Management Engine (IMEI in breve) è un\'interfaccia hardware utilizzata per connettersi al motore di gestione. È necessario solo quando le vecchie piattaforme (Sandy/Ivy) e alcune schede madri non dispongono di dispositivi MEI/IMEI/HECI.\n• Applicabile al processore Intel Ivy Bridge di terza generazione e alla scheda madre serie 6 se misti (ad esempio: processore i3 3225, scheda madre H61), problema di accelerazione grafica principale\n• Applicabile al processore Intel Sandy Bridge di seconda generazione e alla scheda madre serie 7 se combinati (ad esempio: processore i5 2500k, scheda madre B75), problema di accelerazione grafica core\n• I processori Intel Ivy Bridge di terza generazione abbinati alle schede madri della serie 7 e i processori Intel Sandy Bridge di seconda generazione abbinati alle schede madri della serie 6 non richiedono questo SSDT!\n• Intel Haswell di quarta generazione e le piattaforme più recenti di solito possono implementare correttamente i dispositivi MEI/IMEI/HECI e non necessitano di questo SSDT!';

  @override
  String get autoGen5675 =>
      'Risolvi il problema dello spegnimento e riavvio o dello spegnimento senza alimentazione';

  @override
  String get autoGen5676 =>
      '• Risolto il problema per cui alcune schede madri a volte non spengono completamente l\'alimentazione del controller USB durante lo spegnimento di macOS (S5), con conseguente mancato spegnimento normale (lo spegnimento diventa riavvio o spegnimento senza alimentazione)\n• Richiede la patch di ridenominazione ACPI: _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      'Controlla lo stato attuale del sistema, principalmente per verificare se la sospensione S3 è supportata (SSDT non personalizzato)';

  @override
  String get autoGen5678 =>
      '• Verificare se la macchina corrente è una macchina AOAC (SSDT non personalizzato)\n• Controllare lo stato del sistema nelle impostazioni correnti del BIOS, principalmente per verificare se la sospensione S3 è supportata (SSDT non personalizzato)\n• Nota: solo le macchine non AOAC sono compatibili con la modalità di sospensione S3. Le macchine AOAC sono in conflitto con la sospensione S3 e non supportano la sospensione S3!\n• Se il risultato del controllo mostra che lo stato del sistema di una macchina non AOAC (la macchina AOAC non supporta la sospensione S3, non leggere di seguito) non supporta la sospensione S3, potrebbero verificarsi le seguenti situazioni:\n  1. Il firmware della scheda madre supporta la sospensione S3, ma la sospensione S3 non è abilitata nelle impostazioni del BIOS. Una volta abilitato, è possibile supportare la sospensione S3.\n  2. Il firmware della scheda madre non castra fisicamente S3, ma il DSDT non definisce il metodo _S3. Il completamento del metodo _S3 ha una probabilità di risolvere il problema del sonno S3.\n  3. Il firmware della scheda madre castra fisicamente S3 e non supporta affatto la sospensione S3. Anche se il metodo _S3 viene completato, il problema di sospensione S3 non può essere riparato.';

  @override
  String get autoGen5679 =>
      'Verifica se si tratta di una macchina AOAC (SSDT non personalizzato)';

  @override
  String get autoGen5680 =>
      '• Verificare se si tratta di una macchina AOAC (SSDT non personalizzato) basata su FACP.aml\n• Nota: solo le macchine non AOAC sono compatibili con la modalità di sospensione S3. Le macchine AOAC sono in conflitto con la sospensione S3 e non supportano la sospensione S3! Le macchine AOAC sono comuni nei notebook.\n• Una volta che la macchina AOAC entra in modalità di sospensione S3, potrebbe sembrare che non possa essere riattivata dopo la sospensione e appaia in uno stato di arresto anomalo e possa solo essere forzata a spegnersi. Si consiglia di disabilitare la sospensione S3.\n• Le macchine AOAC consigliano di considerare le seguenti soluzioni:\n  1. Sbloccare il BIOS e disabilitare AOAC (di solito difficile da fare, ma il più stabile)\n  2. Disabilitare la sospensione S3 (disabilitare la sospensione S3 nel BIOS o SSDT-S3-DISABLE per disabilitare la sospensione S3)\n  3. Spegnere l\'alimentatore grafico indipendente\n  4. Utilizzare NVMeFix.kext per abilitare APST di SSD\n  5. Abilita ASPM (le opzioni avanzate del BIOS abilitano ASPM, la patch SSDT abilita L1)';

  @override
  String get autoGen5681 =>
      'Risolve il problema del risveglio dalla modalità di sospensione a causa del controller USB';

  @override
  String get autoGen5682 =>
      '• Rinominare GPRW in XPRW per risolvere il problema di riattivazione istantanea (nota: potrebbe impedire alla tastiera USB di riattivare il dispositivo, è possibile riattivarlo tramite il tasto di accensione)\n• SSDT-GPRW è più comunemente utilizzato perché la maggior parte delle piattaforme utilizza il metodo GPRW e pochissime piattaforme forniscono e utilizzano il metodo UPRW.\n• Disponibile per Skylake e piattaforme più recenti';

  @override
  String get autoGen5683 =>
      '• Rinominare GPRW in XPRW per risolvere il problema di riattivazione istantanea (nota: potrebbe impedire alla tastiera USB di riattivare il dispositivo, è possibile riattivarlo tramite il tasto di accensione)\n• SSDT-UPRW viene utilizzato raramente perché la maggior parte delle piattaforme utilizza il metodo GPRW e pochissime piattaforme forniscono e utilizzano il metodo UPRW.\n• Disponibile per Skylake e piattaforme più recenti';

  @override
  String get autoGen5684 =>
      'Risolto il problema di sospensione del pulsante di sospensione (applicabile ai notebook)';

  @override
  String get autoGen5685 =>
      '• Quando alcuni computer entrano in modalità di sospensione tramite il pulsante di sospensione SLPB (PNP0C0E), ACPI trasmette parametri errati, facendo sì che macOS pensi erroneamente che si tratti di un arresto. Ciò può portare a: riavvio diretto, arresto anomalo dopo la sospensione o sospensione riuscita ma stato del sistema danneggiato.\n• Fai finta che \"il coperchio sia chiuso\" quando premi il pulsante di sospensione, forzando il pericoloso sonno PNP0C0E al sonno sicuro e stabile PNP0C0D\n• Tipicamente adatto per laptop';

  @override
  String get autoGen5686 =>
      'Risolto il problema per cui era necessario premere un tasto qualsiasi per accendere lo schermo dopo il risveglio';

  @override
  String get autoGen5687 =>
      '• Risolto il problema per cui alcune macchine dovevano premere un tasto qualsiasi per accendere lo schermo dopo il risveglio';

  @override
  String get autoGen5688 =>
      'Risolve il problema della luce di respirazione anomala del pulsante di accensione dopo il risveglio (applicabile ai notebook Lenovo)';

  @override
  String get autoGen5689 =>
      '• Risolto un problema per cui la luce di respirazione sul lato A e la luce di respirazione sul pulsante di accensione non tornavano alla normalità dopo il risveglio su alcuni notebook Lenovo\n• Risolto il problema per cui lo stato della spia del microfono F4 era anomalo dopo il riavvio su alcuni laptop Lenovo\n• Principalmente applicabile ai notebook della serie Lenovo, di solito non sono applicabili altre marche di notebook';

  @override
  String get autoGen5690 =>
      'Disabilita lo stato di sospensione del sistema S3 (risolvi i problemi di arresto anomalo, riavvio o arresto del riavvio del sistema S3)';

  @override
  String get autoGen5691 =>
      '• Disabilita lo stato di sospensione S3 solo nel sistema macOS per evitare arresti anomali, riavvio o arresto del sistema quando il sistema macOS si riattiva\n• Se disabilitato, solo macOS non supporta più la sospensione S3 (facendo clic sul pulsante di sospensione o il monitor entra in modalità di risparmio energetico, lo schermo si spegne, ma l\'host continuerà a funzionare e la ventola non smetterà di funzionare)\n• Dopo aver disabilitato lo stato di sospensione S3 in macOS, non è più necessario modificare le impostazioni di sistema di macOS e non è necessario disattivare la modalità di risparmio energetico (prima potrebbe essere necessario modificare le impostazioni di sistema -> spegnere il display quando inattivo -> mai)\n• Scenari applicabili: quando il problema di sospensione non viene risolto, la modalità di risparmio energetico viene attivata nelle impostazioni del sistema macOS (\"Spegni il display quando inattivo -> 10 minuti\"). Dopo che il sistema entra nello stato di sospensione, quando il sistema macOS viene riattivato, il sistema potrebbe bloccarsi, riavviarsi o spegnersi. Al momento, puoi disabilitare lo stato di sospensione S3 per risolvere il problema.\n• Richiede la patch di ridenominazione ACPI: _S3 -> XS3';

  @override
  String get autoGen5692 =>
      'Il riavvio a caldo viene modificato in riavvio a freddo per risolvere il problema della non disponibilità di alcuni componenti hardware.';

  @override
  String get autoGen5693 =>
      '• Il riavvio a caldo è stato modificato in riavvio a freddo, il che risolve il problema relativo alla non disponibilità di alcuni componenti hardware dopo il riavvio da Windows a macOS su alcune piattaforme. (Ad esempio: scheda audio, WiFi, Bluetooth)\n• Nota: non viene generato alcun SSDT-FACP.aml! Viene generata solo la patch ACPI!';

  @override
  String get autoGen5694 => 'Mappatura ID dispositivo grafico';

  @override
  String get autoGen5695 =>
      '• Utilizzato per scenari di mappatura degli ID dei dispositivi delle schede grafiche AMD, inserendo ID dei dispositivi compatibili tramite ACPI per consentire al sistema di caricare il driver grafico corrispondente.\n• Consigliato solo per i modelli esplicitamente contrassegnati nei dati di compatibilità RapidEFI come che richiedono la mappatura dell\'ID del dispositivo.';

  @override
  String get autoGen5696 => 'Schermatura del dispositivo ACPI';

  @override
  String get autoGen5697 =>
      '• Utilizzato per gestire i dispositivi PCI a livello ACPI che non sono adatti per essere trasferiti al driver macOS, come schede grafiche incompatibili, controller NVMe o altri dispositivi di espansione.\n• I laptop provano prima la disattivazione del livello di potenza; se il firmware non supporta il metodo di alimentazione, per evitarlo viene eseguito il downgrade al livello driver.\n• Desktop, NUC e HEDT utilizzano metodi di elusione universali per impostazione predefinita per evitare di fare affidamento su metodi di potenza grafica indipendenti che di solito non esistono nel firmware della macchina.\n• Tutti gli scenari richiedono un percorso ACPI valido; se l\'hardware segnala un percorso ACPI mancante, il dispositivo viene automaticamente ignorato.';

  @override
  String get autoGen5698 =>
      'Apparecchiature per schede di rete cablate contraffatte (applicabili ai notebook senza schede di rete cablate)';

  @override
  String get autoGen5699 =>
      '• Fornisce una falsa scheda di rete virtuale NullEthernet per i sistemi Hackintosh per risolvere la dipendenza di iMessage, Facetime, iCloud e altri servizi Apple dalle apparecchiature di rete integrate';

  @override
  String get autoGen5700 =>
      'Risolto il problema del touchpad I2C del laptop (applicabile ai laptop)';

  @override
  String get autoGen5701 =>
      '• Riparando il montaggio del nodo hardware ACPI, assicurando che il dispositivo sia abilitato nel sistema macOS e risolvendo il problema relativo all\'impossibilità di riconoscere normalmente alcuni touchpad I2C.\n• SSDT-GPI0 risolve il problema del montaggio dei driver nei dispositivi hardware. SSDT-XOSI viene utilizzato principalmente per risolvere il problema di incompatibilità tra la logica di inizializzazione BIOS/ACPI e il riconoscimento del sistema operativo (a volte può risolvere il problema del touchpad)';

  @override
  String get autoGen5702 =>
      'Rinominazione CPU per chipset B850, B650, B550, A520 (solo per piattaforme Ryzen)';

  @override
  String get autoGen5703 =>
      '• Applicabile alla ridenominazione della CPU dei chipset B850, B650, B550 e A520 per risolvere il problema di crash causato dall\'incapacità della piattaforma AMD di riconoscere la CPU (consigliato solo quando si utilizzano patch SSDT predefinite)\n• Quando si personalizza la patch SSDT, si consiglia di utilizzare il SSDT-PLUG personalizzato! (La piattaforma AMD Ryzen cambia automaticamente il suo nome in SSDT-PLUG-ALT durante la personalizzazione di SSDT)';

  @override
  String get autoGen5704 =>
      'Correzione della gestione energetica (applicabile a Intel di 12a generazione e successive, alcuni AMD Ryzen e altre piattaforme)';

  @override
  String get autoGen5705 =>
      '• macOS si affida al plug-in di gestione energetica della CPU (PluginType) per regolare la frequenza della CPU e migliorare l\'efficienza energetica e la durata della batteria.\n• Questa patch modificherà la definizione della CPU in modo che macOS consideri che sia un processore di tipo plug-in = 1 richiesto dai dispositivi Apple, caricando così correttamente la gestione della frequenza della CPU e migliorando le prestazioni e il controllo del consumo energetico.\n• Applicabile a Intel Alder Lake di 12a generazione e successive e ad alcune piattaforme AMD Ryzen';

  @override
  String get autoGen5706 =>
      'Disattiva AWAC (Timer moderno) (disponibile per Intel Coffee Lake di ottava generazione e successive)';

  @override
  String get autoGen5707 =>
      '• Disabilitare AWAC (Timer moderno) durante l\'abilitazione o lo spoofing di RTC legacy\n• Compatibile con Intel Coffee Lake di ottava generazione e successive';

  @override
  String get autoGen5708 =>
      'Richiesto da tutte le schede madri native X99 (C612) e dalla maggior parte delle schede madri native X79 (C602)';

  @override
  String get autoGen5709 =>
      '• Questo SSDT è applicabile a tutte le schede madri X99 e alla maggior parte delle schede madri X79. La sua funzione principale è disabilitare i dispositivi inutilizzati in ACPI per evitare che IOPCIFamily causi il panico del kernel.\n• Schede madri applicabili: tutte le schede madri X99 (C612) native e la maggior parte delle schede madri X79 (C602) native.';

  @override
  String get autoGen5710 =>
      'Abilita o falsifica il timer RTC legacy e correggi l\'intervallo RTC (si applica a tutte le schede madri X99 (C612) e X299 native)';

  @override
  String get autoGen5711 =>
      '• Abilitare o falsificare i timer RTC legacy e correggere l\'intervallo RTC.\n• Risolvere tempi di avvio errati, errori relativi all\'RTC, problemi di riattivazione in modalità sospensione, ecc.\n• Questo SSDT è applicabile a tutte le schede madri X99(C612) e alle schede madri X299';

  @override
  String get autoGen5712 => 'Aggiungi il supporto DTGP';

  @override
  String get autoGen5713 =>
      '• Inserimento di attributi del dispositivo hardware per risolvere alcuni problemi ACPI con schede grafiche, schede audio, schede Thunderbolt, ecc. (Quando non è disponibile il supporto per il metodo DTGP, queste iniezioni di attributi potrebbero fallire o non funzionare!)';

  @override
  String get autoGen5714 => 'Contraffazione di un controller DMA standard';

  @override
  String get autoGen5715 =>
      '• Un controller del dispositivo virtuale (PNP0200) che imita un controller DMA (Direct Memory Access Controller) standard, completa la tabella delle risorse ACPI e consente a macOS di identificare correttamente i dispositivi bus LPC e le funzioni DMA.\n• In genere non richiesto per le piattaforme HEDT/server\n• Aggiungi parti mancanti, questa è semplicemente una soluzione perfetta, non necessaria!';

  @override
  String get autoGen5716 => 'Contraffazione di un controller PWRB standard';

  @override
  String get autoGen5717 =>
      '• Contraffare un dispositivo con pulsante di accensione standard (PNP0C0C) per consentire a macOS di riconoscere normalmente il pulsante di accensione del sistema e supportare la sospensione e la riattivazione\n• Non è presente PNP0C0C in alcuni alberi ACPI del BIOS/della scheda madre e macOS non è in grado di gestire correttamente il pulsante di accensione, il che potrebbe comportare l\'impossibilità di dormire, di riattivarsi e l\'indisponibilità del pulsante di accensione della barra dei menu.\n• Aggiungi parti mancanti, questa è semplicemente una soluzione perfetta, non necessaria!';

  @override
  String get autoGen5718 => 'Contraffazione di un controller SLPB standard';

  @override
  String get autoGen5719 =>
      '• Contraffare un dispositivo con pulsante di sospensione standard (PNP0C0E) per consentire a macOS di identificare correttamente il pulsante di sospensione del sistema e implementare le funzioni di sospensione e riattivazione\n• Non è presente PNP0C0E in alcuni alberi ACPI del BIOS/della scheda madre e macOS non è in grado di gestire correttamente il pulsante di sospensione, il che potrebbe comportare l\'impossibilità di dormire, l\'impossibilità di riattivarsi e l\'indisponibilità del pulsante di sospensione nella barra dei menu.\n• Questa parte è necessaria per il metodo di correzione del sonno PNP0C0E!\n• Aggiungi parti mancanti, questa è semplicemente una soluzione perfetta, non necessaria!';

  @override
  String get autoGen5720 => 'Dispositivo MEM2 necessario per imitare un IGPU';

  @override
  String get autoGen5721 =>
      '• Aggiungi il dispositivo MEM2 ACPI richiesto da IGPU e risolvi i problemi relativi a IGPU\n• Integrazione della mappatura della memoria principale del display per evitare errori di inizializzazione del driver\n• Ambito applicabile: Haswell ~ Kaby Lake, solo sistema grafico core. Di solito solo la grafica discreta non necessita di questo SSDT!';

  @override
  String get autoGen5722 => 'Percorso non valido';

  @override
  String get autoGen5723 => 'Nessun file .aml o .dat valido trovato';

  @override
  String get autoGen5724 =>
      'Decompilazione dei file SSDT.aml in batch in corso...';

  @override
  String get autoGen5725 =>
      'Decompilazione dei file DSDT.aml e SSDT.aml in batch...';

  @override
  String get autoGen5726 =>
      'Decompilazione individuale dei file .aml non riusciti in corso...';

  @override
  String get autoGen5727 => 'Decompilazione di altri file .aml in corso...';

  @override
  String get autoGen5728 =>
      'Nota: cercare di non includere caratteri cinesi o speciali nel percorso o nel nome del file, altrimenti potrebbero verificarsi problemi imprevisti!';

  @override
  String get autoGen5729 => 'Lo strumento di esportazione ACPI non è pronto';

  @override
  String get autoGen5730 => 'Esportazione delle tabelle ACPI in corso...';

  @override
  String get autoGen5731 =>
      'La piattaforma attuale non supporta l\'esportazione di tabelle ACPI';

  @override
  String get autoGen5732 =>
      'In attesa dell\'autorizzazione della password sudo...';

  @override
  String get autoGen5733 =>
      'L\'autorizzazione dell\'amministratore è stata annullata';

  @override
  String get autoGen5734 => 'Password amministratore non inserita';

  @override
  String get autoGen5735 => 'La password dell\'amministratore non è corretta';

  @override
  String get autoGen5736 =>
      'Il processo di esportazione della tabella ACPI non è riuscito';

  @override
  String get autoGen5737 =>
      'La tabella ACPI estratta dalla piattaforma corrente è vuota o non supporta l\'esportazione della tabella ACPI.';

  @override
  String get autoGen5738 =>
      '=> DSDT non trovato, esportazione tramite firma...';

  @override
  String get autoGen5739 => 'Esportazione della tabella DSDT non riuscita';

  @override
  String get autoGen5740 => 'Aggiornamento nome tabella...';

  @override
  String get autoGen5741 => 'Esporta la tabella ACPI con successo!';

  @override
  String get autoGen5742 => 'Nessuna tabella ACPI valida fornita!';

  @override
  String get autoGen5743 =>
      'I dati esadecimali da localizzare non sono stati trovati!';

  @override
  String get autoGen5744 => 'ID di riempimento univoco non trovato!';

  @override
  String get autoGen5745 =>
      '=> getScopeOfDevice: parametro di tabella non valido';

  @override
  String get autoGen5746 => 'più sciolto';

  @override
  String get autoGen5747 => 'solo lunghezza';

  @override
  String get autoGen5748 =>
      'ID e lunghezza della tabella, disabilita le intestazioni normalizzate';

  @override
  String get autoGen5749 =>
      'ID e lunghezza della tabella, abilita le intestazioni normalizzate';

  @override
  String get autoGen5750 =>
      'Intel Arrandale di prima generazione, Sandy Bridge di seconda generazione, Ivy Bridge di terza generazione';

  @override
  String get autoGen5751 =>
      'Intel Haswell di quarta generazione, Broadwell di quinta generazione';

  @override
  String get autoGen5752 =>
      'Intel Skylake di sesta generazione, Kaby Lake di settima generazione, alcuni Haswell di quarta generazione';

  @override
  String get autoGen5753 =>
      'Luminosità personalizzata, solitamente utilizzata per alcune apparecchiature non standard o impostazioni con esigenze speciali';

  @override
  String get autoGen5754 =>
      'Intel CoffeeLake di ottava generazione ~ decima generazione e notebook AMD';

  @override
  String get autoGen5755 =>
      'Altri (richiede proprietà del dispositivo applbkl-name/applbkl-data personalizzate) potrebbero non essere supportati';

  @override
  String get autoGen5756 =>
      'Gli strumenti ACPI attualmente supportano solo le piattaforme Windows/macOS/Linux';

  @override
  String get autoGen5757 =>
      'Nota: la vecchia versione di iasl-legacy supporta solo macOS 10.6 e versioni precedenti. Potrebbero esserci problemi di compatibilità con gli attuali sistemi tradizionali, quindi utilizzare con cautela!!!';

  @override
  String get autoGen5758 =>
      'Utilizzare [compilatore della vecchia versione iasl-legacy]';

  @override
  String get autoGen5759 => 'Compilazione fallita!';

  @override
  String get autoGen5760 =>
      'Si consiglia di passare ad una nuova versione di iasl o abilitare la compilazione forzata e riprovare!';

  @override
  String get autoGen5761 => 'esistere';

  @override
  String get autoGen5762 => 'non esiste';

  @override
  String get autoGen5763 =>
      'Nota: Intel Arrandale di prima generazione, Sandy Bridge di seconda generazione, Ivy Bridge di terza generazione utilizzano l\'UID: 14 ​​per impostazione predefinita, ma alcune macchine che utilizzano l\'UID: 14 ​​incontreranno una luminosità massima limitata o altri problemi. Per risolvere questi problemi, è necessario impostare il percorso corretto del dispositivo della iGPU (scheda grafica integrata) e potrebbe essere necessario integrare le informazioni del registro IGPU.';

  @override
  String get autoGen5764 =>
      'Inserisci il percorso ACPI iGPU da utilizzare. Il limite di caratteri per ciascun elemento del percorso è di 4 caratteri alfanumerici (che iniziano con una lettera o un carattere di sottolineatura), separati da spazi. Ad esempio: SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      'Nota: è stata generata la patch NBCF (dipende dal driver BrightnessKeys.kext), abilitata per impostazione predefinita! Se riscontri problemi durante l\'uso, disabilita questa patch!';

  @override
  String get autoGen5766 => 'Impossibile risolvere il seguente bridge:';

  @override
  String get autoGen5767 =>
      '=> Il firmware attuale supporta gli stati di sistema comuni! Se non si tratta di una macchina AOAC, dopo aver risolto il problema della sospensione, macOS può supportare la sospensione S3, altrimenti non supporta la sospensione S3!';

  @override
  String get autoGen5768 => 'toppa';

  @override
  String get autoGen5769 => 'Connessione al server scaduta';

  @override
  String get autoGen5770 => 'Download annullato';

  @override
  String get autoGen5771 => 'Leggi il timeout della risposta';

  @override
  String get autoGen5772 => 'Kext è stato copiato con successo';

  @override
  String get autoGen5773 =>
      'Per impostazione predefinita, la piattaforma Web viene scaricata direttamente e attualmente non supporta la selezione del percorso predefinito.';

  @override
  String get autoGen5774 =>
      'Il nodo radice del file di configurazione non è un oggetto JSON';

  @override
  String get autoGen5775 => 'Segui il sistema';

  @override
  String get autoGen5776 => 'chiusura';

  @override
  String get autoGen5777 => 'Microsoft Yahei';

  @override
  String get autoGen5778 => 'Aggiorna il corpo nero';

  @override
  String get autoGen5779 => 'Siyuan Songti';

  @override
  String get autoGen5780 =>
      'In attesa di aggiornare le informazioni sull\'hardware';

  @override
  String get autoGen5781 => 'Caricamento delle informazioni sull\'hardware';

  @override
  String get autoGen5782 => 'Aggiornamento delle informazioni sull\'hardware';

  @override
  String get autoGen5783 =>
      'Caricamento delle informazioni sull\'hardware completato';

  @override
  String get autoGen5784 =>
      'Il caricamento delle informazioni sull\'hardware non è riuscito';

  @override
  String get autoGen5785 =>
      'Le informazioni sull\'hardware non sono ancora supportate';

  @override
  String get autoGen5786 =>
      'Importazione delle informazioni sull\'hardware completata';

  @override
  String get autoGen5787 => 'fallire';

  @override
  String get autoGen5788 => 'Non supportato';

  @override
  String get autoGen5789 => 'Fine';

  @override
  String get autoGen5790 => 'cache';

  @override
  String get autoGen5791 =>
      'La piattaforma attuale non supporta la query di informazioni sull\'hardware';

  @override
  String get autoGen5792 =>
      'Il report corrente è un report hardware esterno importato. Aggiorna le informazioni sull\'hardware locale prima dell\'esportazione.';

  @override
  String get autoGen5793 =>
      'Al momento non sono disponibili informazioni sull\'hardware locale esportabili.';

  @override
  String get autoGen5794 =>
      'La pulizia della cartella dei report hardware non è riuscita';

  @override
  String get autoGen5795 =>
      'Creazione della cartella di reporting hardware non riuscita';

  @override
  String get autoGen5796 =>
      'Esportazione della tabella ACPI non riuscita o non supportata';

  @override
  String get autoGen5797 =>
      'L\'autorizzazione dell\'amministratore è stata annullata e la tabella ACPI non è stata esportata';

  @override
  String get autoGen5798 =>
      'Impossibile esportare la tabella ACPI senza inserire la password dell\'amministratore';

  @override
  String get autoGen5799 =>
      'La password dell\'amministratore non è corretta e la tabella ACPI non può essere esportata.';

  @override
  String get autoGen5800 =>
      'Esportazione della tabella ACPI non riuscita: nessuna tabella ACPI valida trovata';

  @override
  String get autoGen5801 =>
      'Esportazione della tabella ACPI non riuscita: processo di esportazione non riuscito.';

  @override
  String get autoGen5802 =>
      'Il file di informazioni hardware non è un oggetto JSON';

  @override
  String get autoGen5803 =>
      'Le informazioni sull\'hardware sono state importate';

  @override
  String get autoGen5804 =>
      'Il catalogo delle tabelle ACPI non è valido, l\'SSDT personalizzato non è disponibile';

  @override
  String get autoGen5805 => 'Inizia a configurare EFI...';

  @override
  String get autoGen5806 =>
      'Generazione del ConfigModel in base alle informazioni sull\'hardware in corso...';

  @override
  String get autoGen5807 =>
      'Utilizza SSDT raw EFI, salta la personalizzazione SSDT.';

  @override
  String get autoGen5808 =>
      'Report hardware esterno importato ma nessun catalogo di tabelle ACPI fornito, SSDT personalizzato disabilitato.';

  @override
  String get autoGen5809 => 'Esportazione di OpenCore EFI in corso...';

  @override
  String get autoGen5810 =>
      'EFI scritto, inizia a estrarre ACPI e personalizzare SSDT...';

  @override
  String get autoGen5811 => 'Il processo di personalizzazione SSDT termina.';

  @override
  String get autoGen5812 =>
      'Il processo di personalizzazione SSDT non è riuscito.';

  @override
  String get autoGen5813 => 'Configurazione EFI completata.';

  @override
  String get autoGen5814 =>
      'La configurazione EFI non è riuscita, controlla il percorso di output o i log.';

  @override
  String get autoGen5815 =>
      'L\'hardware genera automaticamente le regole ConfigModel ed è in fase di ricostruzione.';

  @override
  String get autoGen5816 =>
      'La lunghezza delle punte deve essere la stessa delle scelte';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'asset/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'asset/ssdt/patch scheda audio.md';

  @override
  String get autoGen5820 => 'asset/ssdt/scheda grafica contraffatta.md';

  @override
  String get autoGen5821 => 'asset/ssdt/shielding device.md';

  @override
  String get autoGen5822 => 'asset/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'Istruzioni del driver Bluetooth:\n  1. Quando viene selezionato Intel WiFi, il driver Intel Bluetooth verrà aggiunto automaticamente in base alla versione di macOS, non è necessario controllarlo manualmente! ! !\n  2. Quando Broadcom WiFi è selezionato, il driver Broadcom Bluetooth verrà aggiunto automaticamente in base alla versione di macOS, non è necessario controllarlo manualmente! ! !\n  3. Quando Atheros WiFi è selezionato, il driver Bluetooth Atheros verrà aggiunto automaticamente, non è necessario controllarlo manualmente! ! !\n  4. Se il modello WiFi non è controllato o il modello Bluetooth non è spiegato, è necessario controllarlo manualmente! ! !\n  5. Poiché il Bluetooth utilizza il canale USB, se continua a non funzionare correttamente dopo aver aggiunto driver e patch, assicurati che l\'USB sia ben personalizzato! ! !';

  @override
  String get autoGen5824 =>
      'Percorsi HPET comuni:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  Questa opzione viene utilizzata per risolvere alcuni problemi relativi agli IRQ della scheda audio! Nota: se la tua scheda audio non ha problemi di IRQ, non utilizzare questa funzione!!!';

  @override
  String get autoGen5825 =>
      'Versioni macOS supportate:\n    • La versione Wireless USB Big Sur Adapter-V18 supporta macOS Catalina 10.15.x ~ macOS Tahoe 26.x (richiede patch USB OCLP)\n    • La versione Wireless USB Big Sur Adapter-V15 supporta OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  Il WiFi USB supportato è il seguente:\n    • Il chip principale è l\'adattatore Wi-Fi USB Realtek 802.11ne 802.11ac. Per modelli più specifici, fare riferimento alle istruzioni dell\'autore.';

  @override
  String get autoGen5826 =>
      'Contraffazione di scheda grafica AMD discreta (proprietà del dispositivo):\n   1. È necessario inserire il percorso PCI della scheda grafica, ad esempio: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. È necessario inserire l\'ID dispositivo contraffatto della scheda grafica (4 cifre in formato esadecimale), ad esempio: 73BF\n   3. Dopo che la scheda grafica è contraffatta, devi comunque considerare i parametri di avvio richiesti dalla scheda grafica AMD (puoi andare su Configurazione grafica indipendente -> Grafica indipendente AMD -> Controlla secondo necessità)\n   4. Lo strumento ha pre-preparato alcuni ID dispositivo della scheda grafica. In caso contrario, trovalo tu stesso o contatta l\'autore per informazioni supplementari.';

  @override
  String get autoGen5827 => 'Confermare';

  @override
  String get autoGen5828 => 'Cancellare';

  @override
  String get autoGen5829 => 'Sicuro';
}
