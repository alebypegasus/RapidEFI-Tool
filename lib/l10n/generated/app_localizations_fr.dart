// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - Outil EFI OpenCore';

  @override
  String get navHardware => 'Matériel';

  @override
  String get navManual => 'Config Manuelle EFI';

  @override
  String get navProcess => 'Modifier EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Historique';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get navAbout => 'À propos';

  @override
  String get navSponsor => 'Soutenir le Développeur';

  @override
  String get btnRefresh => 'Actualiser';

  @override
  String get btnImportReport => 'Importer Rapport';

  @override
  String get btnExportReport => 'Exporter Rapport';

  @override
  String get btnExportAcpi => 'Exporter ACPI';

  @override
  String get btnEfiSettings => 'Paramètres EFI';

  @override
  String get btnExportEfi => 'Exporter EFI';

  @override
  String get btnGenerateEfi => 'Générer EFI';

  @override
  String get btnBrowse => 'Parcourir';

  @override
  String get btnChooseFile => 'Choisir Fichier';

  @override
  String get btnCancel => 'Annuler';

  @override
  String get btnApply => 'Appliquer';

  @override
  String get btnSave => 'Enregistrer';

  @override
  String get btnClose => 'Fermer';

  @override
  String get btnCheckUpdates => 'Rechercher Mises à Jour';

  @override
  String get btnChecking => 'Recherche...';

  @override
  String get btnSelectAll => 'Tout Sélectionner';

  @override
  String get btnDeselectAll => 'Tout Désélectionner';

  @override
  String get btnCustomSsdt => 'SSDT Personnalisé';

  @override
  String get btnPrebuiltSsdt => 'SSDT Précompilé';

  @override
  String get btnDumpAcpi => 'Extraire ACPI';

  @override
  String get btnSelectAcpis => 'Sélectionner ACPI';

  @override
  String get btnSelectConfig => 'Sélectionner config';

  @override
  String get btnMergeConfig => 'Fusionner config';

  @override
  String get btnExecutePatch => 'Appliquer Correctif';

  @override
  String get btnOpenFolder => 'Ouvrir Dossier';

  @override
  String get hardwareReport => 'Rapport Matériel';

  @override
  String get cpuArchitecture => 'Processeur (CPU)';

  @override
  String get motherboardChipset => 'Carte Mère & Chipset';

  @override
  String get graphicsDevice => 'Graphiques (GPU)';

  @override
  String get audioCodec => 'Contrôleur Audio';

  @override
  String get networkController => 'Réseau & Wi-Fi';

  @override
  String get storageDevice => 'Périphériques de Stockage';

  @override
  String get acpiTables => 'Tables ACPI';

  @override
  String get compatibilityStatus => 'Compatibilité';

  @override
  String get compatible => 'Pris en Charge';

  @override
  String get unsupported => 'Non Pris en Charge';

  @override
  String get requiresPatch => 'Correctif Requis';

  @override
  String get details => 'Détails';

  @override
  String get showDetailedReport => 'Vue Détaillée';

  @override
  String get platformConfig => 'Configuration de Plateforme';

  @override
  String get cpuVendor => 'Fabricant CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Facteur de Forme';

  @override
  String get desktop => 'Bureau';

  @override
  String get laptop => 'Portable';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Serveur';

  @override
  String get processorGen => 'Génération du Processeur';

  @override
  String get targetMacOs => 'Version macOS Cible';

  @override
  String get smbiosModel => 'Modèle SMBIOS Cible';

  @override
  String get motherboardSelector => 'Sélection Carte Mère';

  @override
  String get brand => 'Marque';

  @override
  String get model => 'Modèle';

  @override
  String get outputDirectory => 'Dossier de Sortie';

  @override
  String get kextConfiguration => 'Configuration des Kexts';

  @override
  String get bootArguments => 'Arguments de Démarrage (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Activé (00000000)';

  @override
  String get sipDisabled => 'SIP Désactivé (03080000)';

  @override
  String get processEfiTitle => 'Modifier & Reconstruire EFI';

  @override
  String get chooseEfiPrompt =>
      'Sélectionnez un dossier EFI ou fichier configModel pour charger la configuration';

  @override
  String get configModelFound => 'ConfigModel détecté et chargé avec succès';

  @override
  String get rebuildEfi => 'Reconstruire EFI';

  @override
  String get ssdtGeneratorTitle => 'Générateur SSDT & Correcteur ACPI';

  @override
  String get corePatches => 'Correctifs Essentiels';

  @override
  String get recommendedPatches => 'Correctifs Recommandés';

  @override
  String get optionalPatches => 'Correctifs Optionnels';

  @override
  String get compilationComplete => 'Compilation Terminée';

  @override
  String get mergeSuccess => 'Fusionné avec succès dans l\'EFI';

  @override
  String get oclpTitle => 'Intégration OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Root Patching';

  @override
  String get graphicsAcceleration => 'Accélération Graphique';

  @override
  String get wirelessFix => 'Correctif Wi-Fi & Bluetooth';

  @override
  String get postInstall => 'Étapes Post-Installation';

  @override
  String get tahoeGuideTitle => 'Guide de Compatibilité macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Adaptation Kernel & Audio Tahoe 26';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get appLanguage => 'Langue :';

  @override
  String get followSystem => 'Suivre le Système';

  @override
  String get themeMode => 'Mode Thème :';

  @override
  String get themeColor => 'Couleur Thème :';

  @override
  String get appFont => 'Police de l\'App :';

  @override
  String get efiOptions => 'Options EFI :';

  @override
  String get addThemeToEfi => 'Ajouter un thème de démarrage OpenCore à l\'EFI';

  @override
  String get generateConfigModel =>
      'Générer le fichier configModel dans le dossier EFI';

  @override
  String get compressZipEfi => 'Compresser l\'EFI au format ZIP';

  @override
  String get checkForUpdates => 'Vérifier Mises à Jour :';

  @override
  String currentVersion(String version) {
    return 'Version actuelle: $version';
  }

  @override
  String get copyrightNotice => 'Droits d\'Auteur & Licence';

  @override
  String get exitAppTip => 'Appuyez à nouveau sur retour pour quitter';

  @override
  String get updateAvailable => 'Nouvelle version disponible';

  @override
  String versionTag(String version) {
    return 'Version: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Date de Sortie: $date';
  }

  @override
  String get noUpdateFound => 'Vous utilisez la dernière version';

  @override
  String get efiBuildSuccess => 'EFI générée avec succès !';

  @override
  String get efiBuildFailed => 'Échec de génération de l\'EFI';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get soundLayoutId => 'ID de Disposition Audio (alcid)';

  @override
  String get nvramBootArgs => 'boot-args personnalisés';

  @override
  String get generateSerial => 'Générer Numéro de Série';
}
