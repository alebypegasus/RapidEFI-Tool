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
  String get btnExportEfi => 'Exporter l\'EFI';

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

  @override
  String get navManualTab => 'Configuration Manuelle EFI';

  @override
  String get navAutoTab => 'Configuration Automatique EFI';

  @override
  String get cpuSelection => 'Sélection du Processeur (CPU) :';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Les processeurs Pentium ou Celeron nécessitent un CPU spoofing ; veuillez l\'activer !\nNote : les iGPU Pentium/Celeron ne sont généralement pas supportées !';

  @override
  String get platformSelection => 'Sélection de la Plateforme :';

  @override
  String get processorGeneration => 'Génération du Processeur :';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 cœurs / 12 threads) nécessite un spoofing CPU spécifique';

  @override
  String get amdCoresTitle => 'Cœurs du Processeur AMD :';

  @override
  String get amdSpecialMb => 'Cartes Mères Spéciales AMD :';

  @override
  String get usePrecastMmio => 'Utiliser MMIO Precast';

  @override
  String get useRyzenGpu => 'Activer le Support iGPU Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Marque de la Carte Mère :';

  @override
  String get motherboardModel => 'Modèle de la Carte Mère :';

  @override
  String get customMotherboard => 'Carte Mère Générique / Personnalisée';

  @override
  String get igpuConfig => 'Configuration iGPU :';

  @override
  String get dgpuConfig => 'Configuration dGPU :';

  @override
  String get audioConfig => 'Configuration Audio :';

  @override
  String get audioCodecFix => 'Codec Audio & Layout ID';

  @override
  String get fixIrq => 'Corriger les Conflits IRQ';

  @override
  String get networkConfig => 'Configuration Réseau & Wi-Fi :';

  @override
  String get laptopDrivers => 'Pilotes pour Ordinateur Portable :';

  @override
  String get touchpadDriver => 'Pilote Touchpad (I2C / PS2)';

  @override
  String get smbiosSelection => 'Modèle SMBIOS Cible :';

  @override
  String get targetMacOsVersion => 'Version macOS Cible :';

  @override
  String get bootArgsTitle => 'Arguments de Démarrage (boot-args) :';

  @override
  String get csrActiveConfigTitle =>
      'Protection de l\'Intégrité du Système (SIP) :';

  @override
  String get outputEfiTitle => 'Dossier de Sortie EFI :';

  @override
  String get selectOutputFolder => 'Sélectionner le Dossier de Sortie';

  @override
  String get clearConfig => 'Effacer la Configuration';

  @override
  String get importConfigModel => 'Importer configModel';

  @override
  String get importingConfigModel => 'Importation du configModel...';

  @override
  String get dragDropConfigModel =>
      'Glissez-déposez le fichier configModel ici\nou cliquez pour parcourir';

  @override
  String get clearAllHistory => 'Effacer Tout l\'Historique';

  @override
  String get clearingHistory => 'Effacement de l\'historique...';

  @override
  String get noHistoryRecords => 'Aucun historique disponible';

  @override
  String get overview => 'Aperçu';

  @override
  String get platformPatches => 'Patchs de Plateforme';

  @override
  String get audioPatches => 'Patchs Audio';

  @override
  String get gpuSpoofing => 'Spoofing GPU';

  @override
  String get disableDevices => 'Désactiver les Périphériques';

  @override
  String get brightnessPatches => 'Patchs de Luminosité';

  @override
  String get graphicsPatches => 'Patchs Graphiques';

  @override
  String get wifiPatches => 'Patchs Wi-Fi';

  @override
  String get documentationGuides => 'Documentation & Guides';

  @override
  String get aboutSupport => 'À propos & Support';

  @override
  String get hardwareTabTitle => 'Configuration Matérielle';

  @override
  String get acpiFolderTitle => 'Dossier ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Chargement des données...';

  @override
  String get configuringEfiWait =>
      'Configuration d\'EFI, veuillez patienter...';

  @override
  String get summary => 'Résumé';

  @override
  String get recent => 'Récent';

  @override
  String get efiConfig => 'Config EFI';

  @override
  String get toolsAndGuides => 'Outils & Guides';

  @override
  String get checkUpdates => 'Vérifier les Mises à Jour';

  @override
  String get sponsorDeveloper => 'Soutenir le Développeur';

  @override
  String get releaseNotes => 'Notes de Version';

  @override
  String get searchPlaceholder => 'Rechercher';

  @override
  String get initialSupportMacOs =>
      'Version initiale de macOS prise en charge nativement :';

  @override
  String get lastSupportMacOs =>
      'Dernière version de macOS prise en charge nativement :';

  @override
  String get oclpSupportMacOs =>
      'Versions de macOS prises en charge via correctif OCLP :';

  @override
  String get cpuInfoTitle => '[Informations sur le CPU] :';

  @override
  String get biosRecommendedEnabled =>
      '[Paramètres recommandés du BIOS - Activés] :';

  @override
  String get biosRecommendedDisabled =>
      '[Paramètres recommandés du BIOS - Désactivés] :';

  @override
  String get historyExpanderDesc =>
      'Les EFI générées avec RapidEFI sont automatiquement sauvegardées dans l\'historique.\nVous pouvez recharger et ajuster toute EFI générée précédemment à tout moment.\n\nCette fonctionnalité est prise en charge sur RapidEFI V3.0.0 et supérieur.';

  @override
  String get gpuPresets => 'Préréglages';

  @override
  String get gpuByCpuModel => 'Par modèle de processeur';

  @override
  String get selectCpuGeneration => 'Sélectionner la génération';

  @override
  String get selectCpuModel => 'Sélectionner le processeur';

  @override
  String get cpuGenerationLabel => 'Génération de processeur';

  @override
  String get cpuModelLabel => 'Modèle de processeur';

  @override
  String get matchingIgpuTip =>
      'Cochez si correspondant, sinon laissez non coché';

  @override
  String get selectPropertiesToApply =>
      'Sélectionner les propriétés à appliquer';

  @override
  String get motherboardConfigTitle =>
      'Configuration du modèle de carte mère :';

  @override
  String get motherboardConfigItems =>
      'Sélectionnez les éléments de configuration à appliquer';

  @override
  String get selectModelToConfigure => '(Sélectionnez le modèle à configurer)';

  @override
  String get pleaseSelect => 'Veuillez sélectionner';

  @override
  String get selectAllDeselectAll => 'Tout sélectionner / Tout désélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get stuckOnEbFix =>
      'Correction du blocage sur [EB] (Optionnel - valeurs par défaut recommandées) :';

  @override
  String get renameCurrentEfi => 'Renommer l\'EFI actuelle';

  @override
  String get enterNewName => 'Entrez un nouveau nom';

  @override
  String get renameEfiTooltip => 'Renommer l\'EFI';

  @override
  String get adminPrivilegesRequired => 'Privilèges d\'administrateur requis';

  @override
  String get enterLoginPassword =>
      'Veuillez entrer votre mot de passe de session';

  @override
  String get importHardwareMaterials => 'Importer les données matérielles';

  @override
  String get currentBiosSettings => 'Paramètres actuels du BIOS';

  @override
  String get colorTheme => 'Thème de couleur';

  @override
  String get noValidHardwareReport =>
      'Aucun fichier de rapport matériel valide détecté';

  @override
  String get viewOnGitHub => 'Voir sur GitHub';

  @override
  String get downloadNow => 'Télécharger maintenant';

  @override
  String get btnConfirm => 'Confirmer';

  @override
  String get btnDeleteRecord => 'Supprimer cet enregistrement';

  @override
  String get currentEfiNamePrefix => 'Nom actuel de l\'EFI : ';

  @override
  String get close => 'Fermer';

  @override
  String get applySelected => 'Appliquer la sélection';

  @override
  String get connectedGpuPrefix => 'GPU connecté : ';

  @override
  String get requiresSpoofIdPrefix => 'Nécessite Spoof ID : ';

  @override
  String get selectPlatform => 'Génération de plateforme';

  @override
  String get selectVendor => 'Marque';

  @override
  String get selectModel => 'Modèle de carte mère';

  @override
  String get btnImport => 'Importer';

  @override
  String get defaultLabel => 'Par défaut';

  @override
  String get wifiBluetoothDrivers => 'Pilotes Wi-Fi et Bluetooth :';

  @override
  String get noWifiDriversByDefault =>
      '(Aucun pilote Wi-Fi configuré par défaut)';

  @override
  String get getIntelModifiedOclp => 'Obtenir l\'OCLP modifié d\'Intel';

  @override
  String get forLaptopSystems => '(Pour les ordinateurs portables)';

  @override
  String get basicConfig => 'Configuration de base';

  @override
  String get advancedConfig => 'Configuration avancée';

  @override
  String get portCustomization => 'Personnalisation des ports';

  @override
  String get displayEdid => 'Afficher l\'EDID';

  @override
  String get nvidiaDgpu => 'GPU NVIDIA';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'Usurpation d\'AMD dGPU';

  @override
  String get intelWifi => 'Wi-Fi Intel';

  @override
  String get broadcomBrcm => 'Broadcom (Brcm)';

  @override
  String get atherosWifi => 'Athéros';

  @override
  String get usbWifi => 'Wi-Fi USB';

  @override
  String get bluetoothDrivers => 'Pilotes Bluetooth';

  @override
  String get debuggingTab => 'Débogage';

  @override
  String get amfiSipTab => 'AMFI / SIP';

  @override
  String get igpuFixesTab => 'Correctifs iGPU';

  @override
  String get dgpuFixesTab => 'Correctifs dGPU';

  @override
  String get blackScreenFixesTab => 'Corrections d\'écran noir';

  @override
  String get above4gTab => 'Au-dessus du décodage 4G';

  @override
  String get trackpadFixesTab => 'Corrections du trackpad';

  @override
  String get othersTab => 'Autres';

  @override
  String get powerManagementTab => 'Gestion de l\'alimentation';

  @override
  String get sleepHibernationTab => 'Sommeil / Hibernation';

  @override
  String get storageDiskTab => 'Stockage/Disque';

  @override
  String get cpuFixesTab => 'Correctifs du processeur';

  @override
  String get amdPlatformTab => 'Plateforme AMD';

  @override
  String get usbFixesTab => 'Correctifs USB';

  @override
  String get sdCardTab => 'Carte SD';

  @override
  String get brandTab => 'Marque';

  @override
  String get specialMotherboardTab => 'Carte mère spéciale';

  @override
  String get sipSettingsTab => 'Paramètres SIP';

  @override
  String get renameCpuTab => 'Renommer le processeur';

  @override
  String get uiScaleTab => 'Échelle de l\'interface utilisateur';

  @override
  String get acpiConfigTab => 'Configuration ACPI';

  @override
  String get booterConfigTab => 'Configuration du démarrage';

  @override
  String get kernelConfigTab => 'Configuration du noyau';

  @override
  String get uefiConfigTab => 'Configuration UEFI';

  @override
  String get lookupLayoutId => 'ID de mise en page de recherche';

  @override
  String get visitChris1111Repo => 'Visitez le référentiel chris1111';

  @override
  String get supportedMacOsVersions => 'Versions macOS prises en charge :';

  @override
  String get supportedUsbWifiChipsets => 'Chipsets Wi-Fi USB pris en charge :';

  @override
  String get selectUtbMap => 'Sélectionnez UTBMap';

  @override
  String get selectUtbMapHint =>
      'Sélectionnez UTBMap.kext mappé créé avec USBToolBox';

  @override
  String get reprocessEfiSubtitle => '(Retraiter un EFI généré par RapidEFI)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI génère automatiquement un fichier configModel dans le dossier EFI. Importez ce fichier ci-dessous pour recharger et personnaliser votre configuration EFI.';

  @override
  String get reprocessEfiVersionNote =>
      'Cette fonctionnalité est prise en charge sur RapidEFI V3.0.0 et supérieur.';

  @override
  String get dropConfigModelHint =>
      'Déposez le fichier configModel ici ou cliquez pour parcourir';

  @override
  String get offLabel => 'Désactivé';

  @override
  String get onLabel => 'Sur';

  @override
  String get githubRepository => 'Dépôt GitHub';

  @override
  String get releasesAndUpdates => 'Sorties et mises à jour';

  @override
  String get projectDocumentation => 'Documentation du projet';

  @override
  String get aboutSupportDetails =>
      'RapidEFI est un générateur OpenCore EFI automatisé, un correcteur ACPI/SSDT et un outil d\'analyse matérielle open source conçu pour les passionnés de Hackintosh et de macOS.\n\nCréé et entretenu avec amour. Star et forkez le projet sur GitHub pour soutenir le développement en cours !';

  @override
  String get checkApplicableOptions => '(Vérifiez les options applicables)';

  @override
  String get optionalCheckApplicableOptions =>
      '(Facultatif - cochez les options applicables)';

  @override
  String get appleAlcUsedByDefault => '(Pilote AppleALC utilisé par défaut)';

  @override
  String get noEthernetDriverByDefault =>
      '(Aucun pilote Ethernet ajouté par défaut)';

  @override
  String get usbInjectAllByDefault => '(USBInjectAll utilisé par défaut)';

  @override
  String get verboseModeByDefault =>
      '(-v mode verbeux activé par défaut ; décochez pour désactiver)';

  @override
  String get optionalDriversSubtitle =>
      '(Pilotes facultatifs - non nécessaires sauf si nécessaire)';

  @override
  String get keepDefaultsSubtitle =>
      '(Conservez les valeurs par défaut sauf si une personnalisation spécifique est nécessaire)';

  @override
  String get optionalCheckDeviceBrand =>
      'Facultatif - Vérifiez si la marque de votre appareil correspond';

  @override
  String get optionalCheckMotherboardModel =>
      'Facultatif - Vérifiez si le modèle de la carte mère correspond';

  @override
  String get optionalConfigureSip =>
      'Facultatif - Configurez SIP selon vos besoins (désactivé par défaut)';

  @override
  String get optionalCustomCpuName =>
      'Facultatif - Nom du processeur personnalisé';

  @override
  String get optionalAdjustUiScale =>
      'Facultatif - Ajuster l\'échelle de l\'interface utilisateur de démarrage OpenCore';

  @override
  String get acpiSsdtPatches => 'ACPI - Correctifs SSDT';

  @override
  String get acpiPatches => 'ACPI - Correctifs';

  @override
  String get kernelPatches => 'Noyau - Correctifs';

  @override
  String get powerManagement => 'Gestion de l\'alimentation';

  @override
  String get ssdApfsTrimPolicy => 'Politique de réduction APFS NVMe / SATA SSD';

  @override
  String get kernelQuirksSubtitle =>
      'Kernel - Quirks (paramètres par défaut recommandés sauf si des correctifs spécifiques sont nécessaires)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - Pilotes (Conserver les configurations par défaut sauf besoins spécifiques)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI - Sortie (paramètres par défaut recommandés)';

  @override
  String get method1Title =>
      'Méthode 1 : Renommer « GPRW en XPRW » (Instant Wake Fix)';

  @override
  String get method2Title =>
      'Méthode 2 : Renommer « UPRW en XPRW » (Instant Wake Fix)';

  @override
  String get method3Title =>
      'Méthode 3 : Renommer « RTC Fix » (réparer la mise hors tension du RTC/la réinitialisation du CMOS)';

  @override
  String get method4Title =>
      'Méthode 4 : Renommer « Battery Fix » (prend en charge les correctifs de batterie de 16 bits à 8 bits)';

  @override
  String get pciPathLabel => 'Chemin PCI du dGPU :';

  @override
  String get pciPathPlaceholder => 'Entrez le chemin PCI';

  @override
  String get spoofedDeviceIdLabel => 'Identifiant d\'appareil usurpé :';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'Sélectionnez le périphérique GPU à usurper';

  @override
  String get injectDisplayEdidLabel =>
      'Injecter l\'EDID d\'affichage (généralement 256 ou 512 caractères hexadécimaux) :';

  @override
  String get injectDisplayEdidPlaceholder =>
      'Entrez l\'EDID d\'affichage (généralement 256 ou 512 caractères hexadécimaux ; espaces et nouvelles lignes autorisés)';

  @override
  String get failed => 'Échoué';

  @override
  String get method1 => 'Méthode 1';

  @override
  String get method2 => 'Méthode 2';

  @override
  String get method3 => 'Méthode 3';

  @override
  String get method4 => 'Méthode 4';

  @override
  String get optionalKextDrivers => 'Pilotes Kext Optionnels';

  @override
  String get optionalKextSubTitle =>
      'Sélectionnez les pilotes kext optionnels selon votre matériel';

  @override
  String get brandConfigTab => 'Marque';

  @override
  String get optionalSettings => 'Paramètres Optionnels';

  @override
  String get optionalSettingsSubTitle =>
      'Sélectionnez des configurations optionnelles supplémentaires';

  @override
  String get optionalCheckMotherboard => 'Options de Carte Mère Spéciales';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI génère automatiquement un fichier configModel dans le dossier EFI.\nImportez ce fichier ci-dessous pour recharger et personnaliser votre configuration EFI.\n\nCette fonctionnalité est prise en charge sur RapidEFI V3.0.0 et versions ultérieures.';

  @override
  String get releaseToReimportConfigModel =>
      'Relâcher pour réimporter configModel';

  @override
  String get invalidConfigFileMessage =>
      'Fichier de configuration invalide. Veuillez sélectionner un fichier configModel valide.';

  @override
  String get ethernetTitle => 'Pilotes Ethernet :';

  @override
  String get usbTitle => 'Pilotes USB :';

  @override
  String get ssdtCoreOfficial => '* Essentiel (Officiel)';

  @override
  String get ssdtRecommendedFixes => '* Recommandé (Correctifs)';

  @override
  String get ssdtOptionalEnhancements => '* Optionnel (Améliorations)';

  @override
  String get platformDesktop => 'Bureau';

  @override
  String get platformLaptop => 'Portable';

  @override
  String get platformNucMini => 'NUC / Mini PC';

  @override
  String get platformHedtServer => 'HEDT / Serveur';
}
