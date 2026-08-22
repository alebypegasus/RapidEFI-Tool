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
}
