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
  String get recent => 'Récent';

  @override
  String get efiRelated => 'Liés à l’EFI';

  @override
  String get toolsAndGuides => 'Outils et guides';

  @override
  String get navHistory => 'Histoire';

  @override
  String get navConfigureEFI => 'Configurer EFI';

  @override
  String get navProcessEFI => 'Processus EFI';

  @override
  String get navCustomSSDT => 'SSDT personnalisé';

  @override
  String get navOCLPPatch => 'Correctif OCLP-X';

  @override
  String get navTahoeGuide => 'macOS Tahoe 26';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get navSponsor => 'Développeur de sponsors';

  @override
  String get searchPlaceholder => 'Recherche';

  @override
  String get darkMode => 'Mode sombre';

  @override
  String get clickAgainToExit => 'Cliquez à nouveau pour quitter';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'Version actuelle d\'OpenCore : $version';
  }

  @override
  String get copyrightTitle => 'Déclaration de droits d\'auteur';

  @override
  String get copyrightText =>
      'Copyright (C) 2024 JeoJay\n\nLicence :\nAutorisé pour une utilisation individuelle ou organisationnelle dans les conditions suivantes :\n\n1. Utilisation non commerciale :\nCe logiciel est entièrement gratuit et open source, strictement destiné à un usage non commercial. La vente de ce logiciel est interdite.\n\n2. Attribution :\nToute forme de republication, de citation ou d\'utilisation sur des sites Internet tiers doit en mentionner explicitement la source et inclure les informations suivantes :\nDéveloppé par JeoJay. Copyright (C) 2024 JeoJay. Tous droits réservés.\n\n3. Ne modifiez pas les déclarations de droits d\'auteur :\nLors de la republication ou de l\'utilisation de tout contenu de ce logiciel, l\'avis de droit d\'auteur original et les informations d\'attribution ne doivent pas être modifiés ou supprimés.\n\nAvertissement :\nCe logiciel est fourni « tel quel », sans garantie d\'aucune sorte, expresse ou implicite. Le titulaire des droits d\'auteur ne sera pas responsable des dommages directs ou indirects résultant de l\'utilisation de ce logiciel.';

  @override
  String get themeModeTitle => 'Mode sombre :';

  @override
  String get themeModeSystem => 'Suivre le système';

  @override
  String get themeModeLight => 'Désactivé';

  @override
  String get themeModeDark => 'Sur';

  @override
  String get themeColorTitle => 'Couleur du thème :';

  @override
  String get appFontTitle => 'Police de l\'application :';

  @override
  String get efiSettingsTitle => 'Options de sortie EFI :';

  @override
  String get addOpenCoreTheme =>
      'Ajouter un thème de démarrage OpenCore lors de la configuration d\'EFI';

  @override
  String get generateConfigModel =>
      'Générer le fichier configModel dans le dossier EFI';

  @override
  String get zipEFI => 'Compresser EFI dans un fichier Zip';

  @override
  String get languageTitle => 'Langue:';

  @override
  String get languageSystem => 'Suivre le système';

  @override
  String get languageEn => 'Anglais';

  @override
  String get languagePtBR => 'Portugais (Brésil)';

  @override
  String get languagePtPT => 'Portugais (Portugal)';

  @override
  String get languageZhCN => 'Chinois (simplifié)';

  @override
  String get languageZhTW => '中 文 (繁 體)';

  @override
  String get languageJa => 'japonais';

  @override
  String get languageEs => 'espagnol';

  @override
  String get languageFr => 'Français';

  @override
  String get languageAr => 'arabe';

  @override
  String get languageHi => 'hindi';

  @override
  String get languageRu => 'russe';

  @override
  String get languageIt => 'italien';

  @override
  String get versionUpdateTitle => 'Mise à jour de la version :';

  @override
  String currentVersion(Object version) {
    return 'Version actuelle : $version';
  }

  @override
  String get checkUpdate => 'Vérifier les mises à jour';

  @override
  String get checkingUpdate => 'Vérification...';

  @override
  String get settingSnippet =>
      '1. L\'option « Ajouter un thème de démarrage OpenCore lors de la configuration d\'EFI » est activée par défaut. Un thème de démarrage sera inclus dans le dossier EFI de sortie. Décochez si vous n\'en avez pas besoin.\n\n2. L\'option « Générer le fichier configModel dans le dossier EFI » est activée par défaut. Ce fichier peut être utilisé pour rééditer et ajuster l\'EFI actuel dans la section « Process EFI ».\n\n3. L\'option « Compresser EFI dans un fichier Zip » compresse l\'EFI de sortie dans un fichier Zip. Notez que la compression des fichiers Zip peut affecter la progression globale de la sortie EFI, en particulier sur le matériel aux performances inférieures.';

  @override
  String get fontMicrosoftYaHei => 'Microsoft YaHei';

  @override
  String get fontSarasaGothic => 'Sarasa gothique';

  @override
  String get fontSourceHanSerif => 'Source Han Serif';

  @override
  String get cpuArchitecture => 'Architecture du processeur';

  @override
  String get desktop => 'Bureau';

  @override
  String get laptop => 'Ordinateur portable';

  @override
  String get hedt => 'Serveur';

  @override
  String get nuc => 'Mini-ordinateur';

  @override
  String get amd => 'Processeur AMD';

  @override
  String get smbios => 'Modèle SMBIOS';

  @override
  String get generateEFI => 'Générer un EFI';

  @override
  String get clearSelection => 'Effacer la sélection';

  @override
  String get exportConfig => 'Exporter la configuration';

  @override
  String get selectTargetFolder => 'Sélectionnez le répertoire cible';

  @override
  String get efiGenerateSuccess => 'EFI généré avec succès !';

  @override
  String efiGenerateFailed(Object error) {
    return 'Échec de la génération EFI : $error';
  }

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get save => 'Sauvegarder';

  @override
  String get delete => 'Supprimer';

  @override
  String get openFolder => 'Ouvrir le dossier';

  @override
  String get date => 'Date';

  @override
  String get actions => 'Actes';

  @override
  String get historyTitle => 'Histoire';

  @override
  String get historyDescription =>
      'Les EFI générés par RapidEFI sont automatiquement sauvegardés après chaque build réussie. Vous pouvez rééditer et ajuster la sortie en fonction de ces enregistrements chaque fois que nécessaire.';

  @override
  String get clearAllHistory => 'Effacer tout l\'historique';

  @override
  String get clearingHistory => 'Effacer l\'historique...';

  @override
  String get noHistory => 'Aucun enregistrement d\'historique';

  @override
  String get editEFI => 'Modifier EFI';

  @override
  String get configuringEFI => 'Configuration d\'EFI, veuillez patienter...';

  @override
  String get configureEFISuccess => 'EFI configuré avec succès';

  @override
  String get configureEFIFailed =>
      'Erreur lors de la configuration d\'EFI !\nVeuillez modifier le répertoire de sortie EFI.';

  @override
  String get sponsorTitle => 'Développeur de sponsors';

  @override
  String get visitBilibili => 'Bilibili de l\'auteur';

  @override
  String get visitGithub => 'Visitez GitHub';

  @override
  String get buyCoffeeTitle => 'Achetez un café au développeur';

  @override
  String get buyCoffeeText =>
      'Si cet outil vous a aidé, n\'hésitez pas à sponsoriser le développeur ! Merci pour votre soutien !\n\nContact de l\'auteur : QQ 766264141 ou WX : JeoJay127. Aucune autre méthode de contact privé n’existe, attention aux arnaques !';

  @override
  String get successCasesTitle => 'Cas de réussite RapidEFI';

  @override
  String get tahoeGuideTitle => 'Guide MacOS Tahoe 26';

  @override
  String get oclpIntro => 'Introduction';

  @override
  String get oclpGpu => 'Correctif GPU';

  @override
  String get oclpWifi => 'Patch Wi-Fi';

  @override
  String get ssdtPlatform => 'Correctif de plateforme';

  @override
  String get ssdtAudio => 'Patch audio';

  @override
  String get ssdtGpuSpoof => 'Usurpation de GPU';

  @override
  String get ssdtDisableDevice => 'Désactiver l\'appareil';

  @override
  String get ssdtBrightness => 'Patch de luminosité';

  @override
  String get manualEFIConfig => 'Configuration EFI manuelle';

  @override
  String get autoEFIConfig => 'Configuration EFI automatique';

  @override
  String get cpuSelection => 'Sélection du processeur :';

  @override
  String get platformSelection => 'Sélection de plateforme :';

  @override
  String get platformInfo => 'Informations sur la plateforme :';

  @override
  String get targetMacOSVersion => 'Version cible de macOS :';

  @override
  String get smbiosModelSetup => 'Configuration du modèle SMBIOS :';

  @override
  String get motherboardModelConfig =>
      'Configuration du modèle de carte mère :';

  @override
  String get selectMotherboardModelTip =>
      '(Sélectionnez le modèle de carte mère pour appliquer la configuration)';

  @override
  String get platformGen => 'Génération de plateforme';

  @override
  String get vendor => 'Marque';

  @override
  String get motherboardModel => 'Modèle de carte mère';

  @override
  String get pleaseSelect => 'Veuillez sélectionner';

  @override
  String get selected => 'Choisi:';

  @override
  String get applySelectedConfig => 'Appliquer la configuration sélectionnée';

  @override
  String get noMatchingConfigEntries =>
      'Aucune entrée de configuration correspondante';

  @override
  String get pentiumCeleron => 'Pentium/Céléron';

  @override
  String get pentiumCeleronTip =>
      'Les processeurs Pentium ou Celeron nécessitent une usurpation du processeur ! Veuillez activer.\nRemarque : les iGPU Pentium/Celeron ne sont généralement pas pris en charge !';

  @override
  String get u62CpuTitle => 'Processeur de type U62';

  @override
  String get u62CpuTip =>
      'Processeur Comet Lake U62 de 10e génération (par exemple i3-10110U, i5-10210U, i7-10510U, etc.) - veuillez l\'activer !';

  @override
  String get macOSVersionSnippet =>
      'L\'EFI généré est rétrocompatible avec la version sélectionnée de macOS jusqu\'à OS X El Capitan 10.11.';

  @override
  String get amdCores => 'Nombre de cœurs AMD :';

  @override
  String get ryzen7000to9000 => 'Processeurs séries 7000 à 9000';

  @override
  String get useAmdIgpuOutput =>
      'Utiliser AMD iGPU pour la sortie d\'affichage';

  @override
  String get igpuConfigTitle => 'Configuration iGPU';

  @override
  String get dgpuConfigTitle => 'Configuration du dGPU';

  @override
  String get audioDriver => 'Pilote audio :';

  @override
  String get defaultAppleALCDriver =>
      '(Par défaut : utilise le pilote AppleALC)';

  @override
  String get alcLayoutId => 'ID de mise en page ALC :';

  @override
  String get queryLayoutId => 'ID de présentation de requête';

  @override
  String get hpetAcpiPath => 'Chemin HPET ACPI (correction de l\'IRQ audio) :';

  @override
  String get fixIrq => 'Corriger l\'IRQ';

  @override
  String get selectAudioLayoutIdTitle =>
      'Sélectionnez l\'ID de mise en page audio';

  @override
  String get selectAudioLayoutIdTip =>
      '(Utilisez la molette de défilement pour sélectionner, puis cliquez sur confirmer)';

  @override
  String get ethernetDriver => 'Pilote Ethernet :';

  @override
  String get defaultNoEthernetDriver =>
      '(Par défaut : aucun pilote Ethernet ajouté)';

  @override
  String get loadingData => 'Chargement des données...';

  @override
  String get refreshHardwareInfo =>
      'Actualiser les informations sur le matériel';

  @override
  String get importHardwareInfo => 'Importer des données matérielles';

  @override
  String get exportHardwareReport => 'Exporter le rapport sur le matériel';

  @override
  String get exportAcpiTables => 'Exporter les tableaux ACPI';

  @override
  String get efiSettings => 'Paramètres EFI';

  @override
  String get outputEFI => 'Exporter EFI';

  @override
  String get summaryView => 'Résumé';

  @override
  String get detailedView => 'Détaillé';

  @override
  String get legendGreen =>
      'Vert : prend en charge le dernier système d\'exploitation (macOS Tahoe 26)';

  @override
  String get legendYellow =>
      'Jaune : prend en charge certaines versions du système d\'exploitation';

  @override
  String get legendRed => 'Rouge : Complètement incompatible';

  @override
  String get noAcpiImported => 'Aucun ACPI importé';

  @override
  String get personalizedEfiTitle => 'Paramètres EFI personnalisés';

  @override
  String get applySettings => 'Appliquer les paramètres';

  @override
  String get configureEFIError =>
      'Erreur lors de la configuration d\'EFI !\nVeuillez modifier le chemin de sortie';

  @override
  String get selectConfigItems =>
      'Sélectionnez les éléments de configuration à appliquer';

  @override
  String get newVersionFound => 'Nouvelle version disponible';

  @override
  String versionTag(Object tag) {
    return 'Version : $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'Date de sortie : $date';
  }

  @override
  String get downloadNow => 'Télécharger maintenant';

  @override
  String get close => 'Fermer';

  @override
  String get generatingEfiAndSsdt =>
      'Génération d\'EFI et de SSDT personnalisé, veuillez patienter...';

  @override
  String get configuringEfiTitle => 'Configuration d\'EFI';

  @override
  String get configureEfiSuccessTitle => 'EFI configuré avec succès';

  @override
  String get configureEfiErrorTitle => 'Échec de la configuration EFI';

  @override
  String get outputDirectory => 'Répertoire de sortie :';

  @override
  String get openEfiDirectory => 'Ouvrir le répertoire EFI';

  @override
  String get select => 'Sélectionner';

  @override
  String get selectFile => 'Sélectionnez un fichier';

  @override
  String get selectDirectory => 'Sélectionnez le répertoire';

  @override
  String get hardwareReport => 'Rapport sur le matériel';

  @override
  String get acpiTablesDirectory => 'Répertoire des tables ACPI';

  @override
  String get noAcpiFolderTip =>
      'Sans répertoire de tables ACPI, le SSDT personnalisé ne peut pas être généré à partir du rapport importé.';

  @override
  String get hasAcpiFolderTip =>
      'Le répertoire des tables ACPI sélectionné sera utilisé pour le SSDT personnalisé.';

  @override
  String get adminRightsRequired => 'Droits d\'administrateur requis';

  @override
  String get enterSystemPassword =>
      'Veuillez entrer votre mot de passe système';

  @override
  String get import => 'Importer';

  @override
  String get optionalSelectIfMatching =>
      '(Facultatif - vérifiez si cela correspond)';

  @override
  String get selectIfMatching => '(Vérifiez si cela correspond)';

  @override
  String get baseConfig => 'Configuration de base';

  @override
  String get advanceConfig => 'Configuration avancée';

  @override
  String get connectorCustomization => 'Personnalisation du connecteur';

  @override
  String get displayEdid => 'Afficher l\'EDID';

  @override
  String get nvidiaDgpu => 'GPU NVIDIA';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'Usurpation d\'AMD dGPU';

  @override
  String get above4gTitle => 'Au-dessus des paramètres de décodage 4G';

  @override
  String get addNpciBootArg => 'Ajouter l\'argument de démarrage npci=0x2000';

  @override
  String get above4gTip =>
      'Recommandé si le décodage au-dessus de 4G est désactivé dans le BIOS. Décochez si activé.';

  @override
  String get personalizedEfiIntroTip =>
      'Tous les champs sont facultatifs. Sortie EFI générera les fichiers correspondants en fonction de ces paramètres.';

  @override
  String get ssdtType => 'Type SSDT :';

  @override
  String get customSsdt => 'SSDT personnalisé';

  @override
  String get presetSsdt => 'SSDT prédéfini';

  @override
  String get cpuTypeLabel => 'Type de processeur :';

  @override
  String get platformTypeLabel => 'Type de plateforme :';

  @override
  String get selectAll => 'Sélectionner tout';

  @override
  String get basicOfficialRecommend => '* Basique (recommandé officiel)';

  @override
  String get recommendFixes => '* Recommander (correctifs de fonctionnalités)';

  @override
  String get optionalEnhancements => '* Facultatif (améliorations)';

  @override
  String get personalizedPlatformTip =>
      'Le type de processeur, le type de plate-forme et les informations sont détectés à partir du matériel ; ajuster manuellement ci-dessous s’il est incorrect.';

  @override
  String get pciPathLabel => 'Chemin PCI du GPU :';

  @override
  String get pciPathHint => 'Entrez le chemin PCI';

  @override
  String get spoofGpuIdLabel => 'Identifiant GPU frauduleux :';

  @override
  String get selectSpoofGpuPlaceholder => 'Sélectionnez le GPU à usurper';

  @override
  String get gpuSpoofDataLoadError =>
      'Échec du chargement des données d\'usurpation du GPU';

  @override
  String get injectEdidTitle =>
      'Injecter l\'EDID d\'affichage (256 ou 512 caractères hexadécimaux) :';

  @override
  String get injectEdidHint =>
      'Entrez Afficher EDID (format hexadécimal, espaces autorisés)';

  @override
  String get edidHexError =>
      'Les données EDID contiennent des caractères non hexadécimaux !';

  @override
  String get edidLengthError =>
      'La longueur EDID n’est pas un multiple de 256 !';

  @override
  String get edidInvalidToast =>
      'Les données EDID ne sont pas valides, veuillez vérifier avant d\'entrer !';

  @override
  String get details => 'Détails';

  @override
  String get clearAllSelection => 'Effacer toute la sélection';

  @override
  String applySelected(Object count) {
    return 'Appliquer la sélection ($count éléments)';
  }

  @override
  String get getModdedOclp => 'Obtenez OCLP modifié';

  @override
  String get getIntelModdedOclp => 'Obtenez Intel Modded OCLP';

  @override
  String get soundDriverCardTitle => 'Pilote audio :';

  @override
  String get soundDriverDefaultTip =>
      '(La valeur par défaut utilise le pilote AppleALC)';

  @override
  String get hpetAcpiPathTitle =>
      'Chemin HPET ACPI (Correction de l\'IRQ audio) :';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'Sélectionnez l\'ID de mise en page audio (DB : $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip =>
      '(Faites défiler avec la molette, puis cliquez sur confirmer)';

  @override
  String get nicDriverCardTitle => 'Pilote de carte réseau :';

  @override
  String get nicDriverDefaultTip =>
      '(Par défaut, aucun pilote de carte réseau n\'est ajouté)';

  @override
  String get wifiBtCardTitle => 'Pilote Wi-Fi et Bluetooth :';

  @override
  String get wifiBtDefaultTip =>
      '(Pas de pilote Wi-Fi par défaut, configurez manuellement si nécessaire)';

  @override
  String get usbCardTitle => 'Pilote USB :';

  @override
  String get usbDefaultTip => '(La valeur par défaut utilise USBInjectAll)';

  @override
  String get selectUtbMap => 'Sélectionnez UTBMap';

  @override
  String get selectUtbMapHint => 'Sélectionnez UTBMap.kext créé par USBToolBox';

  @override
  String get releaseUsbOwnershipText =>
      'Activez la bizarrerie « UEFI->Quirks->ReleaseUsbOwnership » pour libérer la propriété du contrôleur USB du micrologiciel...';

  @override
  String get bootArgsCardTitle => 'Arguments de démarrage :';

  @override
  String get bootArgsDefaultTip =>
      '(La valeur par défaut active le mode détaillé -v, décochez si cela n\'est pas nécessaire)';

  @override
  String get debugCategory => 'Déboguer';

  @override
  String get amfiSipCategory => 'AMFI/SIP';

  @override
  String get igpuCategory => 'iGPU';

  @override
  String get dgpuCategory => 'dGPU';

  @override
  String get blackScreenFixCategory => 'Corrections d\'écran noir';

  @override
  String get above4gCategory => 'Au-dessus du décodage 4G';

  @override
  String get touchpadFixCategory => 'Corrections du pavé tactile';

  @override
  String get othersCategory => 'Autres';

  @override
  String get optionalKextsCardTitle => 'Kexts facultatifs :';

  @override
  String get optionalKextsDefaultTip =>
      '(Pilotes facultatifs, à ne pas ajouter sauf si nécessaire)';

  @override
  String get graphicsCategory => 'Graphique';

  @override
  String get powerManagementCategory => 'Gestion de l\'alimentation';

  @override
  String get sleepCategory => 'Dormir';

  @override
  String get diskCategory => 'Disque';

  @override
  String get cpuCategory => 'Processeur';

  @override
  String get amdPlatformCategory => 'Plateforme AMD';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'Carte SD';

  @override
  String get optionalSettingsCardTitle => 'Paramètres facultatifs :';

  @override
  String get optionalSettingsDefaultTip =>
      '(Généralement, conservez les valeurs par défaut, sauf si nécessaire)';

  @override
  String get tabBrand => 'Marque';

  @override
  String get tabSpecialMotherboard => 'Carte mère spéciale';

  @override
  String get tabSipSetting => 'Paramètres SIP';

  @override
  String get tabCpuRename => 'Renommer le processeur';

  @override
  String get tabUiScale => 'Échelle de l\'interface utilisateur OpenCore';

  @override
  String get tabAcpiConfig => 'Configuration ACPI';

  @override
  String get tabBooterConfig => 'Configuration de démarrage';

  @override
  String get tabKernelConfig => 'Configuration du noyau';

  @override
  String get tabUefiConfig => 'Configuration UEFI';

  @override
  String get processEfiTitle => 'Processus EFI';

  @override
  String get processEfiSubTitle => '(Retraiter EFI configuré par RapidEFI)';

  @override
  String get processEfiExpanderText =>
      'EFI configuré par l\'outil RapidEFI générera un fichier nommé configModel dans le dossier de sortie EFI. Importez ce fichier ici pour modifier à nouveau l\'EFI actuel.\n\nCette fonctionnalité prend uniquement en charge RapidEFI V3.0.0 et supérieur.';

  @override
  String get clearCurrentConfig => 'Effacer la configuration actuelle';

  @override
  String get importConfigModelFile => 'Importer le fichier configModel';

  @override
  String get importingConfigModel => 'Importation de configModel...';

  @override
  String get releaseToReimport =>
      'Relâchez la souris pour réimporter configModel';

  @override
  String get dragConfigModelArea =>
      'Faites glisser le fichier configModel ici\nou cliquez pour sélectionner le fichier';

  @override
  String get importFailedToast =>
      'Les données de configuration importées ne sont pas valides, veuillez réimporter un fichier configModel valide.';

  @override
  String get changeEfiTitle => 'Changer le titre EFI';

  @override
  String get modifyCurrentEfiName => 'Modifier le nom EFI actuel';

  @override
  String originalEfiName(String name) {
    return 'Nom EFI d\'origine : $name';
  }

  @override
  String get enterModifiedName => 'Veuillez entrer le nom modifié';

  @override
  String get deleteRecord => 'Supprimer cet enregistrement';

  @override
  String get exportThisEfi => 'Exporter cet EFI';

  @override
  String get releaseToIdentifyHardware =>
      'Version permettant d\'identifier automatiquement le rapport sur le matériel et les tableaux ACPI';

  @override
  String get dragHardwareReportHere =>
      'Faites glisser dans le dossier du rapport matériel exporté par cet outil\n(identifie automatiquement sysInfo.txt et le répertoire ACPI)';

  @override
  String get invalidHardwareReportToast =>
      'Fichier de rapport matériel valide non reconnu';

  @override
  String optionalSuffix(String title) {
    return '$title (Facultatif)';
  }

  @override
  String get notSelected => 'Non sélectionné';

  @override
  String get verifyingAdminPassword =>
      'Vérification du mot de passe administrateur...';

  @override
  String get hardwareReportAcpiMissing =>
      'Rapport sur le matériel externe importé, mais répertoire de table ACPI non fourni, SSDT ne peut pas être personnalisé.';

  @override
  String get hwMemory => 'Mémoire';

  @override
  String get hwCompatible => 'Compatible';

  @override
  String hwDeviceID(String id) {
    return 'ID de l\'appareil : $id';
  }

  @override
  String hwType(String type) {
    return 'Tapez : $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'Capacité : $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'Interface : $bus';
  }

  @override
  String hwModel(String model) {
    return 'Modèle : $model';
  }

  @override
  String get hwStorage => 'Stockage';

  @override
  String get hwStorageController => 'Stockage\nContrôleur';

  @override
  String get hwBluetooth => 'Bluetooth';

  @override
  String get hwAudioCard => 'Carte audio';

  @override
  String get hwAudioLayoutId => 'ID de mise en page :';

  @override
  String get hwNetworkCard => 'Carte réseau';

  @override
  String get hwMonitor => 'Moniteur';

  @override
  String hwResolution(String res, String hz) {
    return 'Résolution : $res @ $hz Hz';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'GPU connecté : $gpu';
  }

  @override
  String get hwInput => 'Saisir';

  @override
  String get hwSDCard => 'Carte SD';

  @override
  String hwDevice(String dev) {
    return 'Appareil : $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'Numéro de série : $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'Intégré : $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'Démarrage sécurisé : $status';
  }

  @override
  String hwCSM(String status) {
    return 'MSC : $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'BARRE redimensionnable : $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'Au-dessus du décodage 4G : $status';
  }

  @override
  String hwAHCI(String status) {
    return 'AHCI : $status';
  }

  @override
  String get hwAHCIUnknown => 'AHCI : Inconnu';

  @override
  String get hwEnabled => 'Activé';

  @override
  String get hwDisabled => 'Désactivé';

  @override
  String get hwCurrentBiosSettings => 'Paramètres actuels du BIOS';

  @override
  String get hwBiosNote =>
      'Remarques sur Hackintosh :\n1. Pour tout le texte rouge, assurez-vous de l\'activer ou de le désactiver dans le BIOS pour qu\'il reste bleu.\n2. Le texte bleu indique les paramètres appropriés dans la plupart des cas.\nDémarrage sécurisé : doit être désactivé (sinon un micrologiciel non signé comme le chargeur de démarrage OC ne peut pas démarrer normalement).\nCSM (Compatibility Support Module) : il est recommandé de le désactiver dans la plupart des cas (IGPU mobile Intel 4e/5e génération, plates-formes X99 et certaines cartes graphiques RX460 peuvent nécessiter l\'activation de CSM, sinon une déchirure d\'écran ou un échec de démarrage se produit).\nBARRE redimensionnable : il est recommandé de la désactiver dans le BIOS (s\'il n\'est pas désactivé, assurez-vous que ResizeAppleGpuBars est défini sur 0 dans Booter->Quirks pour éviter les problèmes de démarrage).\nDécodage au-dessus de 4G : il est recommandé d\'activer dans le BIOS et de supprimer le paramètre npci=0x2000 automatiquement vérifié. Si cette option n\'est pas dans le BIOS, recommandez de vérifier npci=0x2000 ou npci=0x3000. Remarque : les paramètres de décodage du BIOS au-dessus de 4G et npci s\'excluent mutuellement !\nAHCI (SATA Disk Mode) : doit être activé (sinon, les disques risquent de ne pas être reconnus ou un symbole d\'interdiction apparaît).';

  @override
  String hwBit(String arch) {
    return '$arch Bits';
  }

  @override
  String get hwVirtualizationEnabled => 'Virtualisation : activée';

  @override
  String get hwVirtualizationDisabled => 'Virtualisation : désactivée';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores Noyaux $threads Fils';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'Jeu d\'instructions : $simd';
  }

  @override
  String hwCore(String core) {
    return 'Noyau : $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'Identifiant usurpé requis : $id';
  }

  @override
  String get hwGPU => 'GPU';

  @override
  String get hwIncompatible => 'Incompatible';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'Carte mère';

  @override
  String hwBrand(String brand) {
    return 'Marque : $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'Jeu de puces : $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALC prend en charge plusieurs ID de mise en page. Différents identifiants peuvent affecter la disponibilité de l’interface audio.';

  @override
  String get manualNvidiaInfoText =>
      'Les séries de GPU Nvidia prises en charge sont les suivantes :\n• Série Tesla (séries 8000 à 300) : prise en charge native jusqu\'à macOS High Sierra 10.13.x (peut nécessiter un correctif NVCAP), les versions supérieures nécessitent un correctif OCLP (pas de prise en charge de Metal)\nExemples : 8600GT, 9600GT, GT210, GT220, GT240, etc. Trop vieux, déconseillé !\n• Série Kepler (séries 600 à 800) : prise en charge nativement jusqu\'à macOS Big Sur 11.x, les versions supérieures nécessitent un correctif OCLP (prend en charge Metal, véritable pilote)\nNoyau Kepler : GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black, etc.\nCartes professionnelles Kepler core : NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000, etc.\n• Séries Fermi, Maxwell, Pascal : Webdriver pris en charge jusqu\'à macOS High Sierra 10.13.x. Pour macOS Big Sur 11.x et supérieur, vérifiez les arguments de démarrage ci-dessous et appliquez le correctif OCLP (pas de support Metal, faux pilote)\nSérie Fermi : GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740, etc.\nSérie Maxwell : GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980, etc.\nSérie Pascal : GTX1050, GTX1060, GTX1070, GTX1080, etc.\nSéries de GPU Nvidia non prises en charge (les séries 11 et supérieures ne sont PAS prises en charge) :\n• Séries 16 ~ 50 : GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070, etc.';

  @override
  String get manualEdidInfoText =>
      '1. Habituellement utilisé pour résoudre le problème d\'écran noir/pas de signal de l\'iGPU Intel de 6e à 10e génération (dGPU EDID n\'est pas géré ici). (Symptôme typique : le voyant de verrouillage des majuscules du clavier fonctionne, mais le moniteur affiche un écran noir sans signal)\n2. Pour les cartes mères de bureau de la série 500 (H510/B560/H570/Q570/Z590/W580) utilisant la sortie HDMI iGPU, l\'injection de l\'EDID du moniteur réel est obligatoire, sinon un écran noir est très probable.\n3. Comment obtenir le moniteur EDID :\nSous Windows, utilisez l\'outil RapidEFI ou l\'outil hdinfo pour obtenir l\'EDID (vous pouvez utiliser des outils tiers, mais vous devez formater l\'EDID vous-même) :\n1). Ouvrez RapidEFI v4.x ou supérieur, cliquez sur \"Configurer EFI\" -> \"Configuration automatique EFI\" -> \"Configuration détaillée\" (ou cliquez sur \"Configuration détaillée\" si vous utilisez hdinfo).\n2). Attendez la fin de la détection automatique des informations sur le matériel, puis cliquez sur le code EDID à côté de la section Moniteur pour l\'obtenir (il sera demandé de le copier avec succès dans le presse-papiers).\n3). Revenez à cette page et collez l\'EDID dans la zone de saisie.\n4. Avant d\'injecter EDID, veuillez vérifier l\'interface cible AAPL0X dans « Configuration avancée » ; en cas de doute, choisissez en fonction du plan de correctif HDMI réel.\n5. Les données EDID font généralement 128 octets (256 caractères hexadécimaux) ou 256 octets (512 caractères hexadécimaux). Si ce n\'est pas le cas, veuillez vérifier avant de saisir !';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'Tampon d\'image actuel : $fb. Génération de framebuffer-conX-alldata selon la documentation WhichGreen.';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'Le Framebuffer actuel ne prend pas en charge les recommandations structurées ; supprimez les valeurs brutes existantes et resélectionnez une configuration de base iGPU prise en charge.';

  @override
  String get manualAddConnectorTooltip => 'Ajouter un patch de connecteur';

  @override
  String get manualConnectorLabel => 'Connecteur';

  @override
  String get manualIndexLabel => 'Indice';

  @override
  String get manualBusIdLabel => 'Numéro d\'identification du bus';

  @override
  String get manualConnectorTypeLabel => 'Taper';

  @override
  String manualOldConnector(String label) {
    return '$label (héritage)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'Supprimer le patch con$index';
  }

  @override
  String get manualUnparseableValue => 'Valeur brute non analysable';

  @override
  String get manualDeleteAndReadd =>
      'Veuillez supprimer et rajouter des correctifs de connecteur structuré';

  @override
  String get manualDeleteUnparseableTooltip =>
      'Supprimer le correctif de connecteur non analysable';

  @override
  String get manualBatteryDriver => 'Pilote de batterie';

  @override
  String get manualKeyboardTouchpadDriver =>
      'Pilote de clavier et de pavé tactile';

  @override
  String get manualSensorDriver =>
      'Pilote de capteur (non recommandé sauf si nécessaire)';

  @override
  String get manualKernelTrimStrategy => 'Stratégie de garniture SSD';

  @override
  String get manualKernelPowerManagement => 'Gestion de l\'alimentation';

  @override
  String get manualKernelDummyPowerManagement =>
      'Désactivez la gestion de l\'alimentation (DummyPowerManagement), corrige les problèmes de redémarrage causés par la gestion de l\'alimentation du processeur (par exemple, panique du noyau AppleIntelCPUPowerManagement, blocage du logo de démarrage ou redémarrage juste après l\'entrée dans le système). Pour la 4e génération et les versions supérieures, il s\'agit de l\'alternative préférée à NullCpuPowerManagement.kext';

  @override
  String get manualKernelQuirksDefault =>
      'Kernel - Il est recommandé de conserver les bizarreries par défaut, sauf si cela est nécessaire ou si vous savez ce que chaque élément signifie';

  @override
  String get manualUefiProvideConsoleGop =>
      'La bizarrerie ProvideConsoleGop est activée par défaut pour corriger l\'interface utilisateur de démarrage OpenCore qui ne s\'affiche pas. Si cela ne s\'affiche toujours pas, essayez de décocher ceci';

  @override
  String get manualUefiDriversHfs =>
      'Pilotes UEFI (réparer l\'interface utilisateur de démarrage OpenCore qui ne s\'affiche pas en raison du pilote HFS)';

  @override
  String get manualUefiOutputBootUI =>
      'UEFI - Sortie (Correction de l\'interface utilisateur de démarrage OpenCore ne s\'affichant pas)';

  @override
  String get manualSpecialMotherboardTip =>
      'Facultatif - vérifiez si votre carte mère correspond à la description';

  @override
  String get manualCsrSettingTip =>
      'Facultatif - défini en fonction des besoins, SIP est désactivé par défaut';

  @override
  String get manualRenameCpuNameTip =>
      'Facultatif - personnaliser le nom du processeur';

  @override
  String get manualRenameCpuNameLabel =>
      'Saisissez le nom du processeur (laissez vide pour afficher le nom du processeur Windows) :';

  @override
  String get manualRenameCpuNameHint => 'Saisissez le nom du processeur ici';

  @override
  String get manualBrandTip =>
      'Facultatif - vérifiez si la marque correspond à la description';

  @override
  String get manualBooterPlan1 => 'Plan 1';

  @override
  String get manualBooterPlan2 => 'Plan 2';

  @override
  String get manualBooterPlan3 => 'Plan 3';

  @override
  String get manualBooterPlan4 => 'Plan 4';

  @override
  String get manualBooterEbFix =>
      'Coincé sur le correctif EB (facultatif - généralement la valeur par défaut convient) :';

  @override
  String get manualAcpiPatch => 'ACPI - Correctif';

  @override
  String get manualAcpiSsdt => 'ACPI - SSDT';

  @override
  String get manualBluetoothNvram => 'Paramètres Bluetooth NVRAM :';

  @override
  String get manualUsbWifiGithub => 'Visitez le dépôt de l\'auteur chris1111';

  @override
  String get manualUsbWifiKexts =>
      'Ajoutez les Kexts requis pour USB WiFi (Remarque : vous devez également installer le client Wireless USB Big Sur Adapter sur macOS. Redémarrez s\'il ne prend pas effet)';

  @override
  String get manualWifiCardSupport =>
      'Les pilotes fournis prennent en charge macOS Mojave 10.14 ~ macOS Sequoia 15 ! Notez que Monterey 12 et versions ultérieures nécessitent le correctif OCLP pour fonctionner correctement !!!';

  @override
  String get manualWifiAtheros => 'Athéros';

  @override
  String get manualWifiIntel => 'Intel';

  @override
  String get manualWifiBrcm => 'Broadcom (Brcm)';

  @override
  String get manualWifiBluetoothDriver => 'Pilote Bluetooth';

  @override
  String get manualWifiItlwmPlan =>
      'Plan 2, utilisez itlwm (nécessite HeliPort), pilote Intel WiFi. Conflits avec le Plan 1, NE PAS utiliser ensemble !!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'Plan 1, utilisez AirportItlwm, le pilote Intel WiFi, ajoute tous les kexts WiFi (grande taille, choisissez avec soin). Conflits avec le Plan 2, NE PAS utiliser ensemble !!!';

  @override
  String get manualWifiAddAllDrivers =>
      'Ajoutez tous les pilotes WiFi (grande taille, choisissez avec soin)';

  @override
  String get manualLaptopMainly =>
      '(Principalement pour les ordinateurs portables)';

  @override
  String get manualLaptopRelatedDrivers =>
      'Pilotes liés aux ordinateurs portables :';

  @override
  String get manualLaptopOtherFixes => 'Autres correctifs';

  @override
  String get manualLaptopOtherFixesTip =>
      'Autres correctifs (non recommandés sauf si nécessaire)';

  @override
  String get manualMotherboardSelectAll => 'Sélectionner tout / Aucun';

  @override
  String get manualMotherboardDetails => 'Détails';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total sélectionné)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return 'Configurations $count appliquées à partir de $model';
  }

  @override
  String get manualMotherboardFromMbconfs => 'De mbconfs';

  @override
  String get manualIgpuRemark => '⚠️ Remarque';

  @override
  String get manualIgpuSelectCpu => 'Sélectionnez le processeur';

  @override
  String get manualIgpuLoadConfig =>
      'Charger la configuration iGPU à partir du modèle de CPU';

  @override
  String get manualIgpuSelectProperties =>
      'Sélectionnez les propriétés à appliquer';

  @override
  String get manualIgpuPresetScheme => 'Schéma prédéfini';

  @override
  String get manualIgpuSelectGen => 'Sélectionnez la génération';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'Sélectionné : $model $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'Modèle de processeur';

  @override
  String get manualIgpuMatchOrNot => 'Vérifiez si cela correspond';

  @override
  String get manualIgpuCpuGen => 'CPU Gen';

  @override
  String get manualIgpuByCpuModel => 'Par modèle de processeur';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return 'Chargé $igpu configuration iGPU à partir de $model, écriture des propriétés $count';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return 'De $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'Sélectionnez la génération et le modèle du processeur, puis vérifiez les propriétés à appliquer';

  @override
  String get manualIgpuModel => 'Modèle';

  @override
  String get manualFakeGpuSelect => 'Sélectionnez le GPU à usurper';

  @override
  String get settingsThemeColors => 'Thème de couleur';

  @override
  String get settingsThemeDefault => 'Défaut';

  @override
  String get sharedInvalidInput => 'Entrée invalide';

  @override
  String sharedRequiresHexChars(String length) {
    return 'Nécessite $length caractères hexadécimaux';
  }

  @override
  String get sharedExample73BF => 'Exemple : 73BF';

  @override
  String get sharedTipsLengthMustMatch =>
      'La longueur des pourboires doit correspondre aux choix';

  @override
  String sharedCpuInfo(String description) {
    return '[Informations sur le processeur] : \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'Dernière version de macOS prise en charge nativement : $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[BIOS recommandé pour désactiver] : \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'Version macOS prise en charge par le correctif : $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[BIOS recommandé pour activer] : \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'Version initiale de macOS prise en charge nativement : $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'Chemin ACPI invalide';

  @override
  String get sharedFillAcpiPath => 'Remplissez le chemin ACPI';

  @override
  String get sharedFillPciPath => 'Remplissez le chemin PCI';

  @override
  String get sharedInvalidPciPath => 'Chemin PCI invalide';

  @override
  String get sharedGetModifiedOclp => 'Obtenir une modification OCLP';

  @override
  String hwConfigModelGenerated(String details) {
    return 'Modèle de configuration généré : $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'Échec de l\'obtention des informations sur le matériel : $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'Mot de passe administrateur incorrect, impossible d\'exporter les tables ACPI';

  @override
  String get hwNoNativeInfoExportable =>
      'Aucune information matérielle native disponible pour l\'exportation';

  @override
  String get hwOutputtingOpencore => 'Sortie OpenCore EFI...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'Échec de l\'exportation des tables ACPI natives : $error';
  }

  @override
  String get hwSsdtProcessFailed =>
      'Le processus de personnalisation SSDT a échoué.';

  @override
  String get hwConfigRuleRefactoring =>
      'Refactorisation des règles de génération Hardware ConfigModel';

  @override
  String get hwQueryUnsupported =>
      'La plate-forme actuelle ne prend pas en charge les requêtes d\'informations sur le matériel';

  @override
  String hwPreparingSsdt(String items) {
    return 'Préparation de la personnalisation du SSDT : $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'Il s\'agit d\'un rapport sur le matériel externe importé. Veuillez d\'abord actualiser les informations sur le matériel natif avant de l\'exporter.';

  @override
  String get hwRefreshingInfo =>
      'Actualisation des informations sur le matériel';

  @override
  String get hwSsdtProcessEnded =>
      'Le processus de personnalisation SSDT est terminé.';

  @override
  String get hwInfoUnsupported =>
      'Informations sur le matériel actuellement non prises en charge';

  @override
  String get hwEfiWrittenExtracting =>
      'EFI écrit, début de l\'extraction de l\'ACPI et de la personnalisation du SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'Échec de la configuration d\'EFI : $error';
  }

  @override
  String get hwReportFolderCleanFailed =>
      'Échec du nettoyage du dossier de rapport sur le matériel';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'Échec du nettoyage du dossier de rapports sur le matériel : $error';
  }

  @override
  String get hwExportingNativeReport =>
      'Exportation du rapport sur le matériel natif...';

  @override
  String get hwAdminAuthCanceled =>
      'Autorisation d\'administrateur annulée, tables ACPI non exportées';

  @override
  String get hwImportedNoAcpiDir =>
      'Rapport matériel externe importé mais aucun répertoire de tables ACPI fourni, personnalisation SSDT désactivée.';

  @override
  String get hwExportAcpiUnsupported =>
      'La plate-forme actuelle ne prend pas en charge l\'exportation de tables ACPI';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'Rapport sur le matériel exporté vers $reportDirectory, $msg';
  }

  @override
  String get hwInfoNotJson =>
      'Le fichier d\'informations sur le matériel n\'est pas un objet JSON';

  @override
  String get hwUnsupported => 'Non pris en charge';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'Échec du nettoyage du répertoire temporaire des tables ACPI : $error';
  }

  @override
  String get hwEfiConfigDone => 'Configuration EFI terminée.';

  @override
  String hwEfiConfigError(String error) {
    return 'Erreur lors de la configuration d\'EFI : $error';
  }

  @override
  String get hwNativeAcpiExportFailed =>
      'Échec de l\'exportation des tables ACPI natives';

  @override
  String get hwAcpiToolNotReady =>
      'L\'outil d\'exportation ACPI n\'est pas prêt';

  @override
  String get hwFailed => 'Échoué';

  @override
  String hwImportReportFailed(String e) {
    return 'Échec de l\'importation du rapport sur le matériel : $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'Exportation des tables ACPI natives terminée : $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'Échec de l\'exportation des tables ACPI : aucune table ACPI valide trouvée';

  @override
  String get hwUsingOriginalSsdt =>
      'Utilisation du SSDT EFI d\'origine, en ignorant la personnalisation du SSDT.';

  @override
  String get hwWaitingRefresh =>
      'En attente de l\'actualisation des informations sur le matériel';

  @override
  String get hwInfoLoaded =>
      'Les informations sur le matériel ont été chargées avec succès';

  @override
  String hwAcpiExportedTo(String path) {
    return 'Tableaux ACPI exportés vers $path';
  }

  @override
  String get hwStartConfigEfi => 'Démarrage de la configuration EFI...';

  @override
  String get hwInfoLoadFailed =>
      'Échec du chargement des informations sur le matériel';

  @override
  String get hwCache => 'Cache';

  @override
  String get hwInfoImportDone =>
      'Importation des informations sur le matériel terminée';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'Rapport matériel et tableaux ACPI exportés vers $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid =>
      'Le répertoire des tables ACPI n\'est pas valide, la personnalisation SSDT n\'est pas disponible';

  @override
  String get hwExportingNativeAcpi => 'Exportation de tables ACPI natives...';

  @override
  String get hwGeneratingConfigModel =>
      'Génération de ConfigModel basé sur les informations matérielles...';

  @override
  String get hwInfoImported => 'Informations sur le matériel importées';

  @override
  String get hwAcpiExportFailedOrUnsup =>
      'L\'exportation des tables ACPI a échoué ou n\'est pas prise en charge';

  @override
  String get hwReportFolderCreateFailed =>
      'Échec de la création du dossier de rapport sur le matériel';

  @override
  String get hwNoAdminPwd =>
      'Mot de passe administrateur non saisi, impossible d\'exporter les tables ACPI';

  @override
  String get hwEfiConfigFailedCheck =>
      'La configuration EFI a échoué, veuillez vérifier le chemin de sortie ou les journaux.';

  @override
  String get hwLoadingInfo => 'Chargement des informations sur le matériel';

  @override
  String get hwDone => 'Fait';

  @override
  String get hwAcpiExportFailedProcess =>
      'Échec de l\'exportation des tables ACPI : échec de l\'exécution du processus d\'exportation';

  @override
  String get hwIgpuType => 'iGPU';

  @override
  String get hwGpuCompatible => 'Compatible';

  @override
  String get hwGpuIncompatibleNoDisplay =>
      'Incompatible, pas de connexion directe à l\'affichage';

  @override
  String get hwGpuIncompatible => 'Incompatible';

  @override
  String get hwLaptop => 'Ordinateur portable';

  @override
  String get hwGpuLoadingCompat => 'Compatibilité de chargement';

  @override
  String get hwGpuLimitedCompat => 'Compatibilité limitée';

  @override
  String get hwClickToCopy => 'Cliquez pour copier';

  @override
  String get hwCopiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get linkCantOpen => 'Impossible d\'ouvrir le lien';

  @override
  String get clickToCopy => 'Cliquez pour copier';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papiers';

  @override
  String get gpuCard => 'GPU';

  @override
  String gpuDeviceId(String id) {
    return 'ID de l\'appareil : $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'Noyau : $codename';
  }

  @override
  String get gpuCompatible => 'Compatible';

  @override
  String get gpuIncompatible => 'Incompatible';

  @override
  String get gpuIncompatibleNoDisplay =>
      'Incompatible, pas d\'affichage direct';

  @override
  String get gpuLimitedCompat => 'Compatibilité limitée';

  @override
  String get gpuLoadingCompat => 'Compatibilité de chargement';

  @override
  String gpuSpoofId(String id) {
    return 'Identifiant usurpé requis : $id';
  }

  @override
  String get bootArgVerbose =>
      'Activer le mode détaillé -v (affiche la sortie de débogage pendant le démarrage, utile pour déboguer les problèmes de démarrage)';

  @override
  String get bootArgKeepsyms =>
      'Imprimez les symboles de crash du noyau pour aider à diagnostiquer les problèmes. Habituellement utilisé avec debug=0x100. Fortement recommandé lors du débogage du démarrage initial.';

  @override
  String get bootArgDebug0x100 =>
      'Empêchez le redémarrage automatique en cas de panique du noyau, vous permettant ainsi d\'afficher les journaux de crash. Fortement recommandé lors du débogage du démarrage initial.';

  @override
  String get bootArgWatchdog0 =>
      'Désactivez le chien de garde pour éviter les redémarrages accidentels déclenchés par une panique pendant le débogage du démarrage.';

  @override
  String get bootArgSlide0 =>
      'Désactivez KASLR pour résoudre les conflits de mémoire provoquant des paniques précoces du noyau de démarrage. Utilisé pour le débogage.';

  @override
  String get bootArgNoCompatCheck =>
      'Ignorez la vérification de compatibilité du modèle lors du démarrage pour éviter le symbole interdit. Remarque : ne contourne pas la vérification du modèle d\'installation.';

  @override
  String get bootArgCpus1 =>
      'Activez un seul cœur de processeur (pour les processeurs de serveur multicœur X58/X79/X99/X299 présentant des problèmes de panique du noyau lors du débogage de l\'installation précoce).';

  @override
  String get bootArgBetaFix =>
      'Résolvez les problèmes qui peuvent apparaître dans la dernière version de macOS (principalement la version bêta), tels que les anomalies audio, Bluetooth et la fréquence du processeur. Fortement recommandé sur les versions bêta.';

  @override
  String get bootArgAmfi0x80 =>
      'Désactivez AMFI pour les GPU plus récents (HD4000+, GT710+ Kepler) ou lors de la mise à jour des pilotes Wi-Fi. Ne PAS utiliser avec amfi_get_out_of_my_way=0x1. Efficace uniquement avec SIP désactivé.';

  @override
  String get bootArgAmfiGetOut =>
      'Désactivez AMFI pour les anciens GPU (par exemple, GT240) ou lors de la mise à jour des pilotes Wi-Fi. Ne PAS utiliser avec amfi=0x80. Efficace uniquement avec SIP désactivé.';

  @override
  String get bootArgIpcControl =>
      'Corrigez les plantages d\'applications (par exemple, Baidu Netdisk) après la désactivation d\'AMFI. Efficace uniquement avec SIP désactivé.';

  @override
  String get bootArgAmfiPassBeta =>
      'Assurez-vous qu\'AMFIPass.kext fonctionne dans la dernière version de macOS Tahoe 26 pour continuer à contourner les contrôles de sécurité AMFI.';

  @override
  String get bootArgRevpatch =>
      'Résolvez les problèmes de mise à jour de macOS OTA après avoir désactivé SIP ou SecureBootModel, et corrigez l\'affichage personnalisé du nom du processeur.';

  @override
  String get bootArgDisableGfxFirmware =>
      'Désactivez le chargement du micrologiciel Apple Graphics pour éviter les blocages au démarrage en raison d\'un échec de chargement du micrologiciel (Intel iGPU uniquement).';

  @override
  String get bootArgWegNoIgpu =>
      'Désactivez Intel iGPU (recommandé lorsque l\'iGPU ne peut pas être piloté ou ne prend pas en charge l\'accélération matérielle).';

  @override
  String get bootArgIgfxVesa =>
      'Désactivez l\'accélération Intel iGPU (à utiliser lorsque le système ne démarre pas après l\'application du correctif OCLP iGPU, débogage uniquement).';

  @override
  String get bootArgIgfxRpsc =>
      'Corrigez et améliorez les performances d\'Intel iGPU (par exemple, corrigez les problèmes d\'encodage 4K HEVC, de résolution et de FPS).';

  @override
  String get bootArgIgfxMpc =>
      'Résolvez les problèmes de résolution iGPU en forçant le remplacement de l\'horloge maximale des pixels, en supprimant les limites de résolution/taux de rafraîchissement par défaut de macOS.';

  @override
  String get bootArgGfxfw2 =>
      'Activez le chargement complet du micrologiciel iGPU pour améliorer l\'utilisation et les performances. Peut provoquer un échec de démarrage – à utiliser avec prudence.';

  @override
  String get bootArgCdclk =>
      'Correction de la panique du noyau sur Ice Lake de 10e génération en raison d\'une fréquence d\'horloge d\'affichage de base (CDCLK) trop basse.';

  @override
  String get bootArgIgfxdbeo =>
      'Correction de la panique du noyau sur Ice Lake de 10e génération où le pilote calcule incorrectement la taille de la mémoire pré-alloué DVMT.';

  @override
  String get bootArgIceLakeDisplay =>
      'Correction d\'une corruption d\'affichage d\'une durée de 7 à 15 secondes sur les ordinateurs portables Ice Lake de 10e génération au démarrage.';

  @override
  String get bootArgIgfxNoTelemetry =>
      'Désactivez le chargement du module de télémétrie iGPU pendant le démarrage. Certains ordinateurs portables (notamment les Chromebooks) peuvent se bloquer au démarrage lors du chargement de ce module.';

  @override
  String get bootArgWegNoEgpu =>
      'Désactivez le GPU discret (recommandé lorsque le dGPU sur les ordinateurs portables Intel à double GPU – généralement NVIDIA – ne peut pas être piloté).';

  @override
  String get bootArgNvDisable =>
      'Désactivez le pilote NVIDIA (uniquement pour le débogage des GPU NVIDIA incompatibles).';

  @override
  String get bootArgUnfairGva =>
      'Correction de la prise en charge matérielle des DRM sur les GPU AMD (active le contenu protégé par DRM comme le streaming sur les GPU AMD pris en charge).';

  @override
  String get bootArgRadpg15 =>
      'Correction de la corruption d\'affichage (écran brouillé/jaune) sur les anciens GPU AMD (HD7750, HD7850 avec des cœurs GCN comme HD77XX/HD78XX/HD79XX).';

  @override
  String get bootArgAmdNoAccel =>
      'Désactivez l\'accélération GPU ATI/AMD (à utiliser lorsque le système ne démarre pas après le correctif GPU OCLP, débogage uniquement).';

  @override
  String get bootArgRaddvi =>
      'Correction de l\'affichage de la sortie DVI sur les anciens GPU AMD (290X, 370, etc.).';

  @override
  String get bootArgRadcodec =>
      'Correction de la prise en charge du codage vidéo matériel VDA pour les GPU AMD officiellement non pris en charge (par exemple, le noyau RX550 Lexa).';

  @override
  String get bootArgNgfxFermi =>
      'Résolvez les problèmes de pilote GPU pour les anciennes cartes NVIDIA Fermi/Maxwell/Pascal (GT610, GTX750, GTX960, GTX1050) sur macOS Big Sur 11+. Vous devez appliquer le correctif GPU OCLP après être entré dans le système ! Kepler n’en a PAS besoin.';

  @override
  String get bootArgApplbkl3 =>
      'Activez le contrôle du rétroéclairage PWM pour les GPU AMD Radeon RX série 5000.';

  @override
  String get bootArgAgdpmodIgnore =>
      'Résolvez les problèmes d\'écran noir ou d\'affichage sur certains GPU en ignorant complètement les restrictions AppleGraphicsDevicePolicy.kext. À utiliser avec WhichGreen.kext.';

  @override
  String get bootArgAgdpmodPikera =>
      'Correction de l\'écran noir au démarrage pour les GPU AMD Navi RX5XXX/RX6XXX (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.) en remplaçant board-id par board-ix. À utiliser avec WhichGreen.kext.';

  @override
  String get bootArgAgdpmodVit9696 =>
      'Correction de l\'écran noir après veille/réveil sur les GPU RX470/RX570 en désactivant la vérification de l\'ID de la carte dans AppleGraphicsDevicePolicy. À utiliser avec WhichGreen.kext.';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Correction d\'un écran noir sur Ventura+ pour les GPU AMD RX5XX/RX5XXX/RX6XXX pris en charge nativement sur Intel 3e génération ou version antérieure. Appliquez le correctif GPU OCLP après le démarrage, puis supprimez cet argument.';

  @override
  String get bootArgBrcmfx =>
      'Corrigez la vitesse lente sur certaines cartes Wi-Fi Broadcom en changeant le code du pays en HK. Vous pouvez également vous améliorer en changeant le canal du routeur.';

  @override
  String get bootArgVsmcgen =>
      'Correction des problèmes de blocage du code baguette et de corruption de l\'émulateur SMC.';

  @override
  String get bootArgSwdPanic =>
      'Empêchez le redémarrage de l\'appareil après la mise en veille pour aider à collecter les journaux de pannes du noyau et à déboguer les problèmes de veille.';

  @override
  String get bootArgCtrsmt =>
      'Améliorez la détection et la planification de la topologie pour les processeurs Intel hybrides (P+E) de 12e génération+. Gain de performances non garanti – testez avant d’activer. Nécessite CpuTopologyRebuild.kext.';

  @override
  String get bootArgDarkwake0 =>
      'Désactivez complètement le mode Darkwake et utilisez le mode veille traditionnel. Corrige principalement les problèmes d’écran noir de réveil et de réveil automatique.';

  @override
  String get bootArgForceRenderStandby =>
      'Désactivez la veille de rendu de l\'iGPU RC6 pour corriger la panique du noyau NVMe provoquée par l\'iGPU RC6 pendant le sommeil.';

  @override
  String get bootArgI2cForcePolling =>
      'Forcez le trackpad I2C à utiliser le mode d\'interrogation au lieu du mode piloté par interruption (le mode d\'interruption nécessite généralement une personnalisation SSDT).';

  @override
  String get kextLiluDesc =>
      'Pilote de base requis offrant extensibilité et compatibilité pour macOS. Tous les kexts de type plugin en dépendent.';

  @override
  String get kextVirtualSMCDesc =>
      'Émulateur SMC requis. Simule Apple SMC sur du matériel non Apple, fournissant des capteurs, le contrôle des ventilateurs et la gestion de l\'alimentation. macOS ne peut pas fonctionner sans cela.';

  @override
  String get kextWhateverGreenDesc =>
      'Prise en charge du pilote graphique GPU. Fortement recommandé pour la plupart des utilisateurs. MacPro7,1 avec AMD dGPU (RX460, RX560+) peut décocher. Généralement en conflit avec NootRX/NootedRed — ne sélectionnez pas ensemble lors de l\'installation.';

  @override
  String get kextAppleALCDesc =>
      'Utilisez AppleALC pour usurper le codec audio intégré (solution plus complète, choix préféré).';

  @override
  String get kextVoodooHDADesc =>
      'Pilote audio universel VoodooHDA (chargé au démarrage, prend uniquement en charge macOS Big Sur 11.2.3 et versions antérieures ; les versions supérieures nécessitent une injection dans le dossier d\'extension du noyau système).';

  @override
  String get kextUSBInjectAllDesc =>
      'Solution d\'injection USB générique, le choix par défaut lorsque la personnalisation USB n\'a pas été effectuée.';

  @override
  String get kextUSBToolBoxDesc =>
      'Solution USBToolBox, généralement utilisée avec un UTBMap.kext personnalisé.';

  @override
  String get kextBatteryV1Desc =>
      'Solution de pilote de batterie 1 (pour les ordinateurs portables équipés d\'Intel de 3e génération ou de plates-formes antérieures).';

  @override
  String get kextBatteryV2Desc =>
      'Solution de pilote de batterie 2 (pour les ordinateurs portables équipés d\'Intel de 3e génération ou de plates-formes plus récentes).';

  @override
  String get kextAmbientLightDesc =>
      'Capteur de lumière ambiante (luminosité automatique de l\'écran). Ne pas utiliser si vous n\'avez pas de capteur de lumière ambiante, car cela pourrait causer des problèmes.';

  @override
  String get kextAsusNBFnKeysDesc =>
      'Contrôle du ventilateur de l\'ordinateur portable ASUS, gestion de l\'alimentation et autres optimisations des capteurs du système. Non recommandé pour les machines non ASUS.';

  @override
  String get kextLenovoDesc =>
      'Contrôle du ventilateur de l\'ordinateur portable Lenovo, gestion de l\'alimentation et autres optimisations des capteurs du système. Non recommandé pour les machines non Lenovo.';

  @override
  String get kextDellDesc =>
      'Capteur dédié aux ordinateurs portables Dell pour une surveillance et un contrôle plus précis des ventilateurs. Non recommandé pour les machines non Dell.';

  @override
  String get kextNootRXDesc =>
      'Prend en charge les dGPU RX6XXX officiellement non pris en charge (RX6700, RX6750XT, RX6750GRE, etc.). Conflits avec WhichGreen — ne sélectionnez pas ensemble lors de l\'installation.';

  @override
  String get kextBatteryFixDesc =>
      'Correction de la lecture de la batterie, répare certains problèmes d’affichage de la batterie.';

  @override
  String get kextNVMeFixDesc =>
      'Améliorez la compatibilité avec les SSD NVMe non Apple et réduisez la consommation d\'énergie au ralenti. Les disques NVMe incompatibles peuvent toujours planter. Les lecteurs NVMe compatibles peuvent provoquer une panique du noyau avec ce pilote – à utiliser avec prudence.';

  @override
  String get kextFeatureUnlockDesc =>
      'Débloquez Universal Control, Sidecar et d’autres fonctionnalités sur les modèles Mac non pris en charge.';

  @override
  String get kextHibernationFixDesc =>
      'Résolvez les problèmes courants liés à l’hibernation et au sommeil.';

  @override
  String get kextHoRNDIS =>
      'Autorisez macOS à utiliser le partage de connexion réseau sur les appareils Android via USB.';

  @override
  String get kextCPUFriendDesc =>
      'Pilote de mise à l\'échelle de la fréquence du processeur, fournissant principalement une prise en charge de la mise à l\'échelle de la fréquence pour MacPro7,1 sur les plates-formes de 11e génération et plus récentes.';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'Pilote de données compagnon CPUFriend, fournissant des données de mise à l\'échelle de la fréquence du processeur pour des modèles de machines spécifiques.';

  @override
  String get kextAppleIGHDA =>
      'Résolvez les problèmes audio HDMI Intel iGPU sur certains systèmes.';

  @override
  String get kextNoTouchID =>
      'Correction de l\'impossibilité de se connecter à l\'identifiant Apple et à iCloud, généralement pour les ordinateurs portables sans carte réseau filaire locale.';

  @override
  String get kextAppleRTCDesc =>
      'Résolvez les conflits entre macOS AppleRTC et le BIOS du PC sur les plates-formes plus récentes, par exemple, RTC provoquant des blocages, des redémarrages soudains ou une sortie de veille immédiate.';

  @override
  String get kextPS2KBMouseDesc =>
      'Pilote de clavier et de souris PS/2 (pour les cartes mères de bureau avec ports ronds PS/2).';

  @override
  String get kextPS2KeyboardDesc =>
      'Pilote de clavier PS/2 (pour les cartes mères de bureau avec ports clavier ronds PS/2).';

  @override
  String get kextPS2MouseDesc =>
      'Pilote de souris PS/2 (pour les cartes mères de bureau avec ports de souris ronds PS/2).';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Pilote de clavier et trackpad dédié Microsoft Surface.';

  @override
  String get kextBrightnessKeysDesc =>
      'Correction de la touche de raccourci de luminosité.';

  @override
  String get kextGenericUSBXHCIDesc =>
      'Correctif de compatibilité du contrôleur USB 3.0 pour les anciennes plates-formes ou AMD.';

  @override
  String get kextXLNCUSBFixDesc =>
      'Résoudre les problèmes de compatibilité du contrôleur USB sur les anciennes plates-formes AMD (FM1/FM2/AM3).';

  @override
  String get kextRealtekCardReaderDesc =>
      'Pilote de lecteur de carte SD Realtek (à utiliser avec RealtekCardReaderFriend).';

  @override
  String get kextRadeonSensorDesc =>
      'Optimisez les performances du GPU AMD Radeon, mais peut provoquer des pannes du système ou un échec de démarrage dans certains scénarios – à utiliser avec prudence.';

  @override
  String get hwStatusIdle =>
      'En attente d\'actualisation des informations sur le matériel';

  @override
  String get hwStatusLoading => 'Chargement des informations sur le matériel';

  @override
  String get hwStatusRefreshing =>
      'Actualisation des informations sur le matériel';

  @override
  String get hwStatusComplete => 'Informations sur le matériel chargées';

  @override
  String get hwStatusFailed =>
      'Échec du chargement des informations sur le matériel';

  @override
  String get hwStatusUnsupported =>
      'Informations sur le matériel non prises en charge';

  @override
  String get hwStatusImported => 'Informations sur le matériel importées';

  @override
  String get hwPlatformUnsupported =>
      'La plate-forme actuelle ne prend pas en charge les requêtes d\'informations sur le matériel';

  @override
  String hwFetchFailed(String error) {
    return 'Échec de la récupération des informations sur le matériel : $error';
  }

  @override
  String get hwExportWarning =>
      'Il s\'agit d\'un rapport importé. Veuillez actualiser les informations sur le matériel local avant d\'exporter.';

  @override
  String get hwNoLocalInfo =>
      'Aucune information matérielle locale disponible pour l\'exportation';

  @override
  String get hwFolderCleanFailed =>
      'Échec du nettoyage du dossier de rapport sur le matériel';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'Échec du nettoyage du dossier de rapports sur le matériel : $error';
  }

  @override
  String get hwFolderCreateFailed =>
      'Échec de la création du dossier de rapport sur le matériel';

  @override
  String get hwExporting => 'Exportation du rapport sur le matériel local...';

  @override
  String hwExportSuccess(String path) {
    return 'Rapport matériel et tableaux ACPI exportés vers $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'Rapport sur le matériel exporté vers $path, $error';
  }

  @override
  String get hwAcpiExporting => 'Exportation des tables ACPI locales...';

  @override
  String get hwAcpiExportFailed =>
      'Échec de l\'exportation des tables ACPI locales';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'Tableaux ACPI locaux exportés : $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'Échec de l\'exportation des tables ACPI locales : $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'La plate-forme actuelle ne prend pas en charge l\'exportation de tables ACPI';

  @override
  String get hwAcpiAuthCancelled =>
      'Autorisation d\'administrateur annulée. Tableaux ACPI non exportés.';

  @override
  String get hwAcpiNoPassword =>
      'Aucun mot de passe administrateur fourni. Impossible d\'exporter les tables ACPI.';

  @override
  String get hwAcpiWrongPassword =>
      'Mot de passe administrateur incorrect. Impossible d\'exporter les tables ACPI.';

  @override
  String get hwImportNotJson =>
      'Le fichier d\'informations sur le matériel n\'est pas un objet JSON';

  @override
  String get hwImportSuccess => 'Informations sur le matériel importées';

  @override
  String get hwImportAcpiInvalid =>
      'Répertoire des tables ACPI invalide. SSDT personnalisé indisponible.';

  @override
  String hwImportFailed(String error) {
    return 'Échec de l\'importation du rapport sur le matériel : $error';
  }

  @override
  String get hwConfigStart => 'Démarrage de la configuration EFI...';

  @override
  String get hwConfigGenerating =>
      'Génération de ConfigModel à partir des informations sur le matériel...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'Préparation du SSDT personnalisé : $items';
  }

  @override
  String get hwConfigSsdtSkip =>
      'Utilisation du SSDT EFI d\'origine. Ignorer le SSDT personnalisé.';

  @override
  String get hwConfigSsdtDisabled =>
      'Rapport sur le matériel externe importé sans répertoire de tables ACPI. SSDT personnalisé désactivé.';

  @override
  String get hwConfigExporting => 'Exportation d\'OpenCore EFI...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'Échec de la configuration EFI : $error';
  }

  @override
  String get hwConfigRebuilding =>
      'Les règles ConfigModel de génération automatique de matériel sont en cours de refactorisation';

  @override
  String get cpuUnknown => 'Inconnu';

  @override
  String get platDesktop => 'Bureau';

  @override
  String get platLaptop => 'Ordinateur portable';

  @override
  String get platMini => 'Mini-ordinateur';

  @override
  String get platServer => 'Serveur';

  @override
  String get csrEnabled =>
      'Activez SIP pour améliorer la sécurité du système. Recommandé si vous n\'utilisez pas OCLP pour les correctifs GPU/WiFi.';

  @override
  String get csrPartial => 'Désactiver l\'option SIP 1';

  @override
  String get csrPartialDesc =>
      'Désactivez partiellement SIP. Recommandé pour Big Sur ou version ultérieure lors de l\'utilisation d\'OCLP pour les correctifs GPU/WiFi.';

  @override
  String get csrFully => 'Désactiver l\'option SIP 2';

  @override
  String get csrFullyDesc =>
      'Désactivez complètement SIP. Préféré pour Big Sur ou version ultérieure lors de l\'utilisation d\'OCLP pour les correctifs GPU/WiFi.';

  @override
  String get uiScaleAuto =>
      'Adaptation automatique : ajustez automatiquement l\'échelle de l\'interface utilisateur de démarrage OpenCore en fonction de la résolution d\'affichage.';

  @override
  String get uiScaleStandard =>
      'Résolution standard : convient aux écrans 720p, 1080p, 1440p.';

  @override
  String get uiScaleHigh =>
      'Haute résolution : convient aux écrans 4K/5K (corrige les petits éléments de l\'interface utilisateur dans le menu de démarrage OpenCore).';

  @override
  String get procDefault => 'Ne pas modifier ProcessorType';

  @override
  String get procKeep =>
      'Conserver l\'affichage du type de processeur par défaut du système';

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
  String get mbNormal => 'Carte mère standard';

  @override
  String get mbOemUsb =>
      'Certaines cartes mères OEM ont des problèmes de libération de propriété USB : échec du transfert EHCI';

  @override
  String get navAppGuide => 'Guide des applications';

  @override
  String get appGuideTitle => 'Guide de l\'utilisateur RapidEFI';

  @override
  String get logMsg001 =>
      '=> Impossible de trouver LPC(B) ! Opération terminée !';

  @override
  String get logMsg002 =>
      'Aucun DSDT valide trouvé ! Veuillez d\'abord sélectionner un fichier DSDT ou un répertoire de fichiers contenant DSDT !';

  @override
  String get logMsg003 =>
      'La préparation de l\'outil iasl a échoué ! Veuillez d\'abord mettre à jour ou utiliser l\'outil iasl intégré !';

  @override
  String get logMsg004 => 'Aucun fichier .aml valide trouvé !\\n';

  @override
  String get logMsg005 =>
      'Aucun DSDT valide trouvé ! Veuillez d\'abord sélectionner un fichier DSDT ou un répertoire de fichiers contenant DSDT !';

  @override
  String get logMsg006 =>
      'Plusieurs fichiers DSDT sont actuellement détectés et un seul peut être traité à la fois. Veuillez conserver un fichier DSDT, supprimer les autres et réessayer.\\n';

  @override
  String get logMsg007 =>
      'Fichier DSDT invalide ! Veuillez resélectionner un fichier DSDT valide !';

  @override
  String logMsg008(String arg0) {
    return '$arg0 Échec de la décompilation !\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'Résultat de la compilation : $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'Une erreur s\'est produite lors du traitement du type IntObj : $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'Erreur de traitement du type MethodObj : $arg0';
  }

  @override
  String get logMsg012 => 'Aucune information IRQ trouvée !';

  @override
  String get logMsg013 =>
      'Les options actuelles ou les IRQ personnalisées sont vides ! Impossible de générer le patch IRQ !';

  @override
  String get logMsg014 => '=> Aucune information IRQ trouvée !';

  @override
  String get logMsg015 =>
      'Format de liste d\'IRQ personnalisé incorrect ! ! ! Séparez les appareils par des espaces et les IRQ par des virgules ! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> Erreur d\'analyse _HID : $arg0';
  }

  @override
  String get logMsg017 =>
      'Aucun périphérique valide trouvé, opération HPET ignorée !';

  @override
  String get logMsg018 =>
      'Aucune IRQ valide n\'a été fournie ou les IRQ sont vides ! Opération interrompue !';

  @override
  String logMsg019(String arg0) {
    return '=> Impossible de localiser $arg0._CRS ! Opération terminée !';
  }

  @override
  String logMsg020(String arg0) {
    return '=> Impossible de localiser $arg0._CRS !';
  }

  @override
  String get logMsg021 => '=> _CRS semble avoir été nommé XCRS !';

  @override
  String get logMsg022 =>
      '=> Veuillez désactiver le changement de nom du périphérique de _CRS en XCRS dans DSDT et réessayez après le redémarrage !\\n';

  @override
  String get logMsg023 =>
      '=> Impossible de déterminer le type d\'accès à la mémoire !';

  @override
  String get logMsg024 =>
      '=> Impossible de convertir la base ou la longueur en entier !';

  @override
  String get logMsg025 => '=> Pas trouvé !';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> Utiliser la valeur par défaut $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> Pas trouvé !';

  @override
  String get logMsg028 => '=> Rien à patcher !';

  @override
  String logMsg029(String arg0, String arg1) {
    return 'Fin du patch IRQ manquant ($arg1) pour $arg0 ! Sauté…';
  }

  @override
  String get logMsg030 =>
      'Les éléments suivants peuvent ne pas être uniques et sont désactivés par défaut ! \\n';

  @override
  String get logMsg031 => 'Aucun UID valide fourni, abandonnez l\'opération !';

  @override
  String logMsg032(String arg0) {
    return '$arg0 est un UID personnalisé qui peut nécessiter une personnalisation manuelle ou peut ne pas être pris en charge du tout !';
  }

  @override
  String get logMsg033 =>
      'Aucun chemin iGPU valide trouvé dans la table ACPI transmise !\\n';

  @override
  String logMsg034(String arg0) {
    return 'Remarque : Le chemin de l\'iGPU est supposé être $arg0\\n Veuillez vérifier avant utilisation !';
  }

  @override
  String logMsg035(String arg0) {
    return 'Remarque : Le chemin de l\'iGPU a été défini manuellement sur $arg0. Assurez-vous de confirmer si le chemin est correct avant utilisation !';
  }

  @override
  String get logMsg036 =>
      '=> Appareil EC nommé trouvé, pas besoin de contrefaire !\\n';

  @override
  String get logMsg037 =>
      'Le patch d\'attribut USBX ne peut pas être vide ! Opération terminée !';

  @override
  String get logMsg038 => 'Aucun périphérique processeur valide trouvé !';

  @override
  String get logMsg039 =>
      '=> Un périphérique PNP0B00 (RTC) valide a été trouvé et vérifié, aucun patch ou SSDT n\'est requis ! Opération terminée !';

  @override
  String get logMsg040 =>
      '=> Périphérique ACPI000E (AWAC) introuvable, aucun correctif ou SSDT requis ! Opération terminée !';

  @override
  String get logMsg041 => '=> Aucun appareil trouvé ! Opération terminée !';

  @override
  String get logMsg042 =>
      'Aucune correspondance trouvée pour le chemin suivant :';

  @override
  String get logMsg043 => 'Aucune correspondance trouvée !';

  @override
  String get logMsg044 =>
      'Notez que le chemin du périphérique doit commencer par le PciRoot() suivant pour correspondre à la table ACPI actuelle :';

  @override
  String logMsg045(String arg0) {
    return '=> Introuvable, ne semble pas être une table $arg0 valide !\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 valeur introuvable ! Opération interrompue !';
  }

  @override
  String get logMsg047 =>
      'Valeur de l\'adresse du registre de réinitialisation introuvable ! Opération interrompue !';

  @override
  String logMsg048(String arg0) {
    return 'Impossible de résoudre l\'ID du processeur dans $arg0, abandon de l\'application des correctifs';
  }

  @override
  String logMsg049(String arg0) {
    return 'Le premier CPU de $arg0 correspond déjà, pas besoin de patcher la table APIC !';
  }

  @override
  String get logMsg050 =>
      '=> Aucune correspondance pour le processeur trouvée ! Opération interrompue !';

  @override
  String get logMsg051 => 'Veuillez sélectionner le patch IMEI !';

  @override
  String logMsg052(String arg0) {
    return '=> Appareil IMEI trouvé à $arg0, pas besoin de pont pour usurpation d\'identité ! Opération interrompue !';
  }

  @override
  String get logMsg053 =>
      '=> Périphérique racine PCI introuvable ! Opération interrompue !';

  @override
  String get logMsg054 =>
      '=> L\'imitation SSDT IMEI n\'est pas activée, l\'identifiant de l\'appareil doit être défini via DeviceProperties !';

  @override
  String get logMsg055 =>
      'Périphérique UNC (PNP0A03) introuvable ! Aucun correctif SSDT-UNC requis ! Opération interrompue ! \\n';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0 : la méthode _STA n\'existe pas !';
  }

  @override
  String get logMsg057 =>
      '=> Appareil DMA (PNP0200) introuvable dans aucun des tableaux ACPI ci-dessus ! Opération interrompue ! \\n';

  @override
  String get logMsg058 =>
      '=> La méthode _PTS est introuvable, l\'entrée de planification _PTS et le patch de renommage ne seront pas générés !';

  @override
  String get logMsg059 =>
      '=> La méthode _WAK est introuvable, l\'entrée de planification _WAK et le patch de renommage ne seront pas générés !';

  @override
  String get logMsg060 =>
      '=> Méthode _PTS/_WAK planifiable introuvable, SSDT-SleepHook ignoré !\\n';

  @override
  String get logMsg061 =>
      '=> Méthode _SST introuvable dans aucune des tables ACPI ci-dessus ! Opération interrompue ! \\n';

  @override
  String get logMsg062 =>
      '=> Le périphérique PNP0C0D n\'a été trouvé dans aucun des tableaux ACPI ci-dessus ! Opération interrompue ! \\n';

  @override
  String get logMsg063 =>
      '=> L\'état du système n\'est pas pris en charge : [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> Remarque : le firmware actuel ne prend pas en charge l\'état _S3. Si le paramètre du BIOS ne désactive pas la fonction S3, alors la machine ne prend pas en charge la veille S3 !';

  @override
  String get logMsg065 =>
      '=> Remarque : il s\'agit d\'une machine AOAC et macOS ne prend pas en charge la veille S3 !';

  @override
  String get logMsg066 =>
      '=> Il n\'est actuellement pas détecté s\'il s\'agit d\'une machine AOAC, veuillez confirmer par vous-même !';

  @override
  String get logMsg067 =>
      'Valeur de veille S0 faible consommation (V5) introuvable !';

  @override
  String get logMsg068 =>
      'Actuellement une machine AOAC, macOS ne prend pas en charge la veille S3 !';

  @override
  String get logMsg069 =>
      '=> Nom ou méthode _S3 introuvable, la configuration actuelle ne prend pas en charge la veille S3 ! L\'opération est terminée !';

  @override
  String logMsg070(String arg0) {
    return '=> Méthode $arg0 trouvée !';
  }

  @override
  String get logMsg071 =>
      '=> La méthode actuelle a été renommée et n\'est peut-être pas la table ACPI d\'origine ! Veuillez réobtenir la table ACPI d\'origine et réessayer !\\n';

  @override
  String get logMsg072 =>
      '=> Le périphérique LID (PNP0C0D) n\'a été trouvé dans aucune des tables ACPI ci-dessus ! Opération terminée !\\n';

  @override
  String get logMsg073 =>
      '=> La méthode _LID n\'a été trouvée dans aucune des tables ACPI ci-dessus ! Opération terminée !\\n';

  @override
  String get logMsg074 =>
      '=> Le périphérique PWRB (PNP0C0C) n\'a pas été trouvé dans le tableau ACPI ci-dessus ! Juste un faux ! \\n';

  @override
  String logMsg075(String arg0) {
    return '=> Pas besoin de contrefaire l\'appareil SLPB, l\'appareil PNP0C0E a été trouvé à $arg0 !';
  }

  @override
  String logMsg076(String arg0) {
    return '=> PNP0C0E L\'appareil $arg0 a la méthode _STA !';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E L\'appareil $arg0 n\'existe pas Méthode _STA !';
  }

  @override
  String get logMsg078 =>
      '=> Aucun appareil XHC/XHCI/XDCI/CNVW correspondant trouvé ! Opération terminée ! \\n';

  @override
  String get logMsg079 => '=> Méthode GPRW introuvable !';

  @override
  String get logMsg080 =>
      '=> Méthode XPRW trouvée ! La méthode actuelle a été renommée et n\'est peut-être pas la table ACPI d\'origine ! Veuillez réobtenir la table ACPI d\'origine et réessayer !\\n';

  @override
  String get logMsg081 => '=> Méthode XPRW introuvable ! Opération terminée !';

  @override
  String get logMsg082 => '=> Méthode UPRW introuvable !';

  @override
  String get logMsg083 =>
      '=> Méthode XPRW trouvée ! La méthode actuelle a été renommée et n\'est peut-être pas la table ACPI d\'origine ! Veuillez réobtenir la table ACPI d\'origine et réessayer !\\n';

  @override
  String get logMsg084 => '=> Méthode XPRW introuvable ! Opération terminée !';

  @override
  String get logMsg085 =>
      '=> Appareil GPI0 introuvable ! Opération terminée ! \\n';

  @override
  String get logMsg086 =>
      '=> Méthode _STA introuvable ! Opération terminée ! \\n';

  @override
  String get logMsg087 =>
      '=> Le schéma de dénomination actuel du processeur est conforme à la spécification de dénomination du processeur ! Pas besoin de ce SSDT ! L\'opération est terminée !';

  @override
  String get logMsg088 =>
      '=> Il n\'y a pas de périphérique PLTF, la plateforme Intel actuelle ne nécessite pas ce SSDT ! L\'opération est terminée...';

  @override
  String get logMsg089 =>
      '=> Aucun périphérique CPU répondant aux exigences n\'a été trouvé, aucun patch SSDT-CPUR requis ! Opération terminée !';

  @override
  String get logMsg090 =>
      '=> L\'imitation SSDT IMEI n\'est pas activée, l\'identifiant de l\'appareil doit être défini via DeviceProperties !';

  @override
  String get logMsg091 =>
      'Aucun chemin de périphérique ACPI valide fourni ! Opération interrompue !';

  @override
  String logMsg092(String arg0) {
    return 'La méthode _ON ou _OFF correspondante pour $arg0 n\'a pas été trouvée dans DSDT ou SSDT ! Opération interrompue !';
  }

  @override
  String logMsg093(String arg0) {
    return 'La méthode _PS3 ou _DSM correspondant à $arg0 n\'a pas été trouvée dans le DSDT ou le SSDT ! Opération interrompue !';
  }

  @override
  String logMsg094(String arg0) {
    return '=> Il existe une méthode _PRT pour le périphérique $arg0, qui peut avoir caché le périphérique réel et injectera un périphérique pont BRG0 !';
  }

  @override
  String logMsg095(String arg0) {
    return '=> L\'appareil $arg0 n\'existe pas !';
  }

  @override
  String logMsg096(String arg0) {
    return 'Le chemin actuel du périphérique $arg0 peut masquer le véritable périphérique !';
  }

  @override
  String logMsg097(String arg0) {
    return '=> Il y a un débordement dans l\'adresse _ADR du périphérique de carte graphique $arg0 !';
  }

  @override
  String logMsg098(String arg0) {
    return '=> Revenez au chemin du périphérique parent : $arg0 et injectez un périphérique pont BRG0 !';
  }

  @override
  String logMsg099(String arg0) {
    return 'Méthode de masquage inconnue : $arg0, opération interrompue.';
  }

  @override
  String logMsg100(String arg0) {
    return 'Certaines méthodes introuvables : $arg0';
  }

  @override
  String get logMsg101 =>
      '=> Impossible de trouver un périphérique de bus valide, l\'opération a été interrompue !';

  @override
  String get logMsg102 =>
      'Aucun chemin ACPI de carte graphique valide fourni ! Opération terminée !';

  @override
  String get logMsg103 =>
      'Aucun identifiant de carte graphique contrefait valide fourni ! Opération terminée !';

  @override
  String get logMsg104 =>
      'Aucun nom de carte graphique contrefait valide fourni ! Aucun nom contrefait ne sera injecté !';

  @override
  String logMsg105(String arg0) {
    return 'Le chemin actuel de la carte graphique $arg0 peut masquer le véritable périphérique !';
  }

  @override
  String logMsg106(String arg0) {
    return '=> Le périphérique $arg0 a une méthode _PRT, qui peut avoir caché le périphérique réel et injectera un périphérique GFX0 !';
  }

  @override
  String logMsg107(String arg0) {
    return '=> Appareil $arg0 introuvable dans DSDT ou SSDT ! Opération interrompue !';
  }

  @override
  String logMsg108(String arg0) {
    return '=> Il y a un débordement dans l\'adresse _ADR du périphérique de carte graphique $arg0 !';
  }

  @override
  String logMsg109(String arg0) {
    return '=> Revenez au chemin du périphérique parent : $arg0 et injectez un périphérique GFX0 !';
  }

  @override
  String get logMsg110 =>
      'Il y a un débordement d\'adresse _ADR dans le chemin de l\'appareil !';

  @override
  String get logMsg111 =>
      'Les appareils suivants peuvent affecter l’injection de propriétés :';

  @override
  String get logMsg112 => 'Localisation du LPC(B)/SBRG…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 trouvé dans $arg0';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 trouvé dans $arg0';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 trouvé dans $arg0';
  }

  @override
  String logMsg116(String arg0) {
    return 'Chemin DSDT fourni : $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'Le chemin DSDT fourni n\'est pas valide : $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'Collecte de tables ACPI valides à partir du répertoire $arg0...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'Au total, $arg0 tables ACPI ont été trouvées, parmi lesquelles $arg1 sont valides :';
  }

  @override
  String get logMsg120 =>
      'Plusieurs fichiers avec des signatures DSDT ont été vérifiés :';

  @override
  String logMsg121(String arg0) {
    return 'Sur le point de décompiler $arg0 pour vérifier si des correctifs prédéfinis doivent être appliqués...';
  }

  @override
  String get logMsg122 =>
      '=> Pas besoin d\'appliquer des correctifs prédéfinis !\\n';

  @override
  String logMsg123(String arg0) {
    return 'Chargement $arg0...';
  }

  @override
  String get logMsg124 => 'Traitement terminé !\\n';

  @override
  String get logMsg125 =>
      'Le fichier ou le dossier transmis n\'existe pas !\\n';

  @override
  String get logMsg126 => 'Gestion des fichiers DSDT problématiques...';

  @override
  String get logMsg127 => 'Vérifiez les correctifs prédéfinis disponibles…';

  @override
  String logMsg128(String arg0) {
    return 'Chargement du fichier $arg0 en mémoire...';
  }

  @override
  String get logMsg129 => 'Traitement des correctifs un par un...\\n';

  @override
  String get logMsg130 => '=> Positionné, postulant…';

  @override
  String get logMsg131 =>
      '=> Le fichier DSDT de la question précédente a été décompilé avec succès !';

  @override
  String logMsg132(String arg0) {
    return '=> Le patch a été appliqué au fichier modifié et le fichier est enregistré dans le dossier Résultats :\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return 'Chargement des tables ACPI valides dans $arg0...';
  }

  @override
  String get logMsg134 =>
      'Décompilation de toutes les tables ACPI valides terminée !';

  @override
  String logMsg135(String arg0) {
    return 'Temps total pris : $arg0 secondes\\n';
  }

  @override
  String logMsg136(String arg0) {
    return 'Compilation de $arg0.aml avec succès !';
  }

  @override
  String logMsg137(String arg0) {
    return 'Supprimer le fichier source $arg0.dsl';
  }

  @override
  String logMsg138(String arg0) {
    return '=> Portée introuvable pour le périphérique $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> Impossible de localiser $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return 'Localisation du périphérique $arg0 ($arg1)...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> Impossible de cibler $arg0 appareils';
  }

  @override
  String logMsg142(String arg0) {
    return '=> trouvé $arg0';
  }

  @override
  String get logMsg143 => '=> Recherche de vérification _STA…';

  @override
  String get logMsg144 =>
      '=> _STA a été renommé XSTA ! Ignorer les autres contrôles…';

  @override
  String get logMsg145 =>
      '=> Veuillez désactiver le changement de nom du périphérique de _STA en XSTA dans DSDT et réessayez après le redémarrage !\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 variable $arg1';
  }

  @override
  String get logMsg147 => '=> Méthode/nom _STA introuvable';

  @override
  String logMsg148(String arg0) {
    return '=> Méthode _STA trouvée à l\'index $arg0 !';
  }

  @override
  String get logMsg149 => '=> Génération de _STA en XSTA renommé';

  @override
  String get logMsg150 =>
      '=> Il existe plusieurs instructions return ou la valeur de retour n\'est pas Return (0x0F)';

  @override
  String get logMsg151 =>
      'Collecte d\'informations sur le périphérique ACPI...';

  @override
  String get logMsg152 => 'Collecte des chemins de périphériques ACPI...';

  @override
  String get logMsg153 => 'Revérification des appareils orphelins...';

  @override
  String logMsg154(String arg0) {
    return 'IRQ personnalisées actuelles : $arg0';
  }

  @override
  String get logMsg155 => '=> Exemple : RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> _HID trouvé : $arg0';
  }

  @override
  String get logMsg157 => 'Localisation du périphérique PNP0103 (HPET)…';

  @override
  String logMsg158(String arg0) {
    return '=> positionné à $arg0';
  }

  @override
  String get logMsg159 => 'Localisation de la méthode/du nom _CRS pour HPET...';

  @override
  String logMsg160(String arg0) {
    return '=> Situé à $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> Trouvé à l\'index : $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> Tapez : $arg0';
  }

  @override
  String get logMsg163 => '=> Vérification de Memory32Fixed…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> Obtenir $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'Création du correctif IRQ...';

  @override
  String get logMsg166 => 'Vérification de l\'IRQ…';

  @override
  String get logMsg167 => 'L\'IRQ est vide ! Passer...\\n';

  @override
  String get logMsg168 => 'Aucune correspondance trouvée.';

  @override
  String logMsg169(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg170 => 'Création d\'un faux appareil HPET...';

  @override
  String logMsg171(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> UID utilisé : $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> Plateformes applicables : $arg0';
  }

  @override
  String get logMsg174 =>
      'Aucun chemin iGPU valide fourni, tentative de recherche automatique...';

  @override
  String get logMsg175 => 'Vous recherchez un périphérique iGPU à 0x00020000…';

  @override
  String logMsg176(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> Périphérique iGPU trouvé à $arg0 !';
  }

  @override
  String get logMsg178 => 'Périphérique iGPU introuvable par adresse !';

  @override
  String get logMsg179 => 'Recherche de noms d’iGPU courants…';

  @override
  String logMsg180(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> Périphérique iGPU possible trouvé à $arg0';
  }

  @override
  String logMsg182(String arg0) {
    return 'Périphérique iGPU possible trouvé à $arg0\\n';
  }

  @override
  String logMsg183(String arg0) {
    return 'Il a été manuellement défini sur $arg0 en fonction du chemin iGPU donné \\n';
  }

  @override
  String logMsg184(String arg0) {
    return 'Chemin iGPU non valide : $arg0';
  }

  @override
  String get logMsg185 =>
      'Vérification du tableau ACPI pour le périphérique PNLF natif...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> Appareil PNLF natif trouvé en $arg0 : $arg1';
  }

  @override
  String get logMsg187 =>
      '=> Le PNLF natif doit être renommé en XNLF, un patch de renommage est en cours de génération...';

  @override
  String get logMsg188 => '=> Appareil PNLF natif introuvable !';

  @override
  String get logMsg189 =>
      '=> Pas besoin de générer un patch de renommage PNLF en XNLF !';

  @override
  String logMsg190(String arg0) {
    return 'Nom (NBCF, 0x00) détecté dans $arg0, générant un correctif...';
  }

  @override
  String logMsg191(String arg0) {
    return 'Nom (NBCF, Zero) détecté dans $arg0, générant un correctif...';
  }

  @override
  String get logMsg192 => 'Localisation du périphérique PNP0C09(EC)...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 Appareils PNP0C09 (EC) trouvés en $arg0';
  }

  @override
  String get logMsg194 => '=> Vérification...';

  @override
  String logMsg195(String arg0) {
    return '=> trouvé $arg0';
  }

  @override
  String get logMsg196 =>
      '=> Appareil PNP0C09 (EC) nommé EC, renommage en cours';

  @override
  String get logMsg197 => '=> Appareil PNP0C09 (EC) valide';

  @override
  String get logMsg198 =>
      '=> _STA est correctement activé, ignorer le renommage';

  @override
  String get logMsg199 => '=> Appareil PNP0C09 (EC) invalide';

  @override
  String get logMsg200 =>
      '=> Aucun appareil PNP0C09 (EC) valide trouvé, simulez simplement un appareil EC';

  @override
  String logMsg201(String arg0) {
    return 'Création de $arg0.dsl…';
  }

  @override
  String logMsg202(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg203 =>
      'Détermination du schéma de dénomination du processeur...';

  @override
  String logMsg204(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> Processeur trouvé : $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> Aucun objet Processeur trouvé...';

  @override
  String get logMsg208 => '=> Périphérique ACPI0007 introuvable…';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 Appareils ACPI0007 trouvés';
  }

  @override
  String logMsg210(String arg0) {
    return '=> Appareil parent trouvé à $arg0, traitement...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> Vérification de $arg0…';
  }

  @override
  String get logMsg212 => '=> Pas trouvé ! franchir…';

  @override
  String get logMsg213 => '=> Pas trouvé ! franchir…';

  @override
  String logMsg214(String arg0) {
    return 'Traitement de $arg0 périphériques de processeur valides...';
  }

  @override
  String get logMsg215 => 'Échec de l\'obtention du nom LPC...';

  @override
  String logMsg216(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg217 => '=> Il faut contrefaire le RTC !';

  @override
  String get logMsg218 => '=> Vérification de _CRS…';

  @override
  String get logMsg219 => '=> _CRS est un tampon, vérifiant la plage RTC...';

  @override
  String get logMsg220 =>
      '=> Impossible d\'ajuster la valeur, impossible de vérifier la plage RTC.';

  @override
  String get logMsg221 =>
      '=> Échec de la collecte de la valeur, impossible de vérifier la plage RTC.';

  @override
  String get logMsg222 =>
      '=> _CRS est une méthode et ne peut pas vérifier la plage RTC !';

  @override
  String get logMsg223 => '=> Génération de _CRS en XCRS renommé…';

  @override
  String logMsg224(String arg0) {
    return '=> Trouvé à l\'index $arg0';
  }

  @override
  String get logMsg225 => '=> introuvable';

  @override
  String logMsg226(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String get logMsg228 => 'Collecte des appareils RHUB/HUBN/URTH...';

  @override
  String logMsg229(String arg0) {
    return '=> $arg0 appareils trouvés';
  }

  @override
  String get logMsg230 => '=> Doit être renommé !';

  @override
  String logMsg231(String arg0) {
    return '=> Vérifier $arg0 : si la méthode _STA existe';
  }

  @override
  String logMsg232(String arg0) {
    return '=> Méthode _STA trouvée à l\'index $arg0 !';
  }

  @override
  String get logMsg233 => '=> Générer un patch de _STA vers XSTA';

  @override
  String get logMsg234 => '=> Méthode _STA introuvable !';

  @override
  String logMsg235(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String get logMsg236 =>
      '=> Il y a un débordement d\'adresse _ADR dans le chemin de l\'appareil !';

  @override
  String get logMsg237 =>
      '=> Les appareils suivants peuvent nécessiter des ajustements de pontage pour fonctionner correctement :';

  @override
  String get logMsg238 => 'Collecte de périphériques de pont PCI...';

  @override
  String get logMsg239 =>
      'Le périphérique pont PCI est vide ! L\'opération est terminée !';

  @override
  String get logMsg240 => 'Construire un dispositif de pont...';

  @override
  String get logMsg241 => 'Le périphérique pont PCI est vide ! franchir…';

  @override
  String get logMsg242 => 'Chemins d’accès des appareils correspondants…';

  @override
  String get logMsg243 => 'Aucune correspondance trouvée !';

  @override
  String logMsg244(String arg0) {
    return '=> correspond à $arg0, aucun pont requis';
  }

  @override
  String get logMsg245 => 'Aucune correspondance trouvée !\\n';

  @override
  String get logMsg246 => 'Aucun pont requis !\\n';

  @override
  String get logMsg247 => 'Résolution du périphérique de pont...';

  @override
  String get logMsg248 => '=> Impossible d\'analyser !';

  @override
  String get logMsg249 => 'Erreur lors de l\'analyse du périphérique pont !\\n';

  @override
  String logMsg250(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String get logMsg251 => 'Localisation du périphérique ACPI0008 (ALS)...';

  @override
  String logMsg252(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> Appareil ALS trouvé dans la table $arg0 : $arg1 !';
  }

  @override
  String get logMsg254 => '=> Pas besoin de contrefaire !\\n';

  @override
  String logMsg255(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String get logMsg256 =>
      '_STA est correctement activé, aucun patch requis ! \\n';

  @override
  String get logMsg257 => 'Introuvable, aucun correctif requis !\\n';

  @override
  String get logMsg258 =>
      'Appareil ACPI0008 (ALS) introuvable, appareil contrefait requis…';

  @override
  String logMsg259(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String get logMsg260 => 'Détection du schéma XOSI...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> Détecté automatiquement : $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'Vérification de la méthode OSID...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> Méthode trouvée $arg1 au décalage $arg0';
  }

  @override
  String get logMsg264 => '=> Introuvable, pas besoin de renommer OSID en XSID';

  @override
  String get logMsg265 => 'Création de _OSI en XOSI renommé…';

  @override
  String logMsg266(String arg0) {
    return 'Vous recherchez $arg0 table…';
  }

  @override
  String logMsg267(String arg0) {
    return 'Table $arg0 trouvée, vérification de la signature...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 vérification de la signature de la table réussie !';
  }

  @override
  String logMsg269(String arg0) {
    return 'Vérification de la valeur $arg0...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'Valeur $arg0 obtenue : $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'Valeur de l\'adresse du registre de réinitialisation obtenue : $arg0';
  }

  @override
  String get logMsg272 =>
      'Les correctifs ACPI qui doivent être corrigés sont les suivants :';

  @override
  String get logMsg273 => 'Correction de la table APIC...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> ID de processeur APIC corrigé : $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> Patching de la table APIC terminé !';

  @override
  String logMsg276(String arg0) {
    return 'Création de $arg0.dsl…';
  }

  @override
  String get logMsg277 =>
      'Vérification de la zone mémoire réservée de la table DMAR...';

  @override
  String get logMsg278 =>
      '=> Aucune zone mémoire réservée trouvée, pas besoin de patcher DMAR !\\n';

  @override
  String logMsg279(String arg0) {
    return 'Trouvé $arg0 zones de mémoire réservées, générant une nouvelle table...';
  }

  @override
  String get logMsg280 =>
      'Recherche d\'un appareil IMEI à l\'adresse 0x00160000...';

  @override
  String get logMsg281 =>
      'Appareil IMEI introuvable, il faut contrefaire l\'appareil…';

  @override
  String get logMsg282 => 'Vérification de l\'appareil parent...';

  @override
  String get logMsg283 => 'Vous recherchez un périphérique iGPU à 0x00020000…';

  @override
  String get logMsg284 => '=> Périphérique iGPU introuvable !';

  @override
  String get logMsg285 => 'Essayer de localiser le périphérique racine PCI...';

  @override
  String logMsg286(String arg0) {
    return '=> Périphérique racine PCI trouvé : $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> Périphérique iGPU trouvé : $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> Utiliser l\'appareil parent : $arg0';
  }

  @override
  String get logMsg289 =>
      'Collecte de faux schémas d\'identification d\'appareil...';

  @override
  String logMsg290(String arg0) {
    return '=> Contrefaçon en tant que carte mère IMEI de la série 7 (identifiant de l\'appareil : $arg0) pour correspondre au processeur Ivy Bridge de 3e génération';
  }

  @override
  String logMsg291(String arg0) {
    return '=> Contrefaçon en tant que carte mère IMEI de la série 6 (identifiant de l\'appareil : $arg0) pour correspondre au processeur Sandy Bridge de 2e génération';
  }

  @override
  String logMsg292(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String get logMsg293 => 'Vous recherchez un appareil UNC (PNP0A03)...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 Appareils UNC trouvés';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> Appareil UNC $arg0 : $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> Vérifiez si $arg0 : la méthode _STA existe';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> Trouvé $arg1 : méthode _STA à l\'index $arg0 !';
  }

  @override
  String logMsg298(String arg0) {
    return '=> Générer $arg0 : _STA vers le patch XSTA';
  }

  @override
  String logMsg299(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg300(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg301 => 'Vérifier si la méthode DTGP existe...';

  @override
  String get logMsg302 => '=> Méthode DTGP introuvable !';

  @override
  String get logMsg303 =>
      '=> Méthode DTGP introuvable dans aucun des tableaux ACPI ci-dessus ! \\n';

  @override
  String logMsg304(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg305(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg306 => 'Vous recherchez un appareil DMA (PNP0200)...';

  @override
  String get logMsg307 => '=> Appareil DMA (PNP0200) introuvable !';

  @override
  String logMsg308(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg309(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg310 => 'Vérification de l\'existence de la méthode _PTS...';

  @override
  String logMsg311(String arg0) {
    return '=> Méthode $arg0 trouvée !';
  }

  @override
  String get logMsg312 => '=> Méthode _PTS introuvable !';

  @override
  String get logMsg313 => 'Vérification de l\'existence de la méthode _WAK...';

  @override
  String logMsg314(String arg0) {
    return '=> Méthode $arg0 trouvée !';
  }

  @override
  String get logMsg315 => '=> Méthode _WAK introuvable !';

  @override
  String logMsg316(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg318 => 'Vérification de l\'existence de la méthode _SST...';

  @override
  String logMsg319(String arg0) {
    return '=> Méthode _SST trouvée à $arg0 !';
  }

  @override
  String get logMsg320 => '=> Méthode _SST introuvable !';

  @override
  String logMsg321(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg323 =>
      'Vérification de la présence du périphérique PNP0C0D...';

  @override
  String logMsg324(String arg0) {
    return '=> Appareil PNP0C0D trouvé en $arg0 !';
  }

  @override
  String get logMsg325 => '=> Appareil PNP0C0D introuvable !';

  @override
  String logMsg326(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return 'Vérification de l\'existence de $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> Trouvé $arg1 à $arg0';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> Trouvé $arg1 à $arg0';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 introuvable';
  }

  @override
  String get logMsg332 => 'Toutes les tables ACPI vérifiées !';

  @override
  String get logMsg333 =>
      '=> Prise en charge de l\'état du système : [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> Le firmware actuel prend en charge les états courants du système ! Après avoir résolu le problème de veille, macOS peut prendre en charge la veille S3 !';

  @override
  String get logMsg335 =>
      'Vérification de la valeur de veille S0 basse consommation (V5)...';

  @override
  String logMsg336(String arg0) {
    return 'Obtenez un ralenti S0 à faible consommation (V5) : $arg0';
  }

  @override
  String get logMsg337 =>
      'Il ne s\'agit pas actuellement d\'une machine AOAC et n\'affecte pas la veille du système macOS S3 !';

  @override
  String get logMsg338 => 'Vérification de l\'existence de _S3...';

  @override
  String logMsg339(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> Nom _S3 trouvé à $arg0 !';
  }

  @override
  String logMsg341(String arg0) {
    return '=> Méthode _S3 trouvée à $arg0 !';
  }

  @override
  String get logMsg342 => '=> Nom ou méthode _S3 introuvable';

  @override
  String logMsg343(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg344(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg345(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg346 => 'Vous recherchez un appareil LID (PNP0C0D)...';

  @override
  String logMsg347(String arg0) {
    return '=> Appareil PNP0C0D trouvé en $arg0 !';
  }

  @override
  String get logMsg348 => '=> Appareil LID (PNP0C0D) introuvable !';

  @override
  String logMsg349(String arg0) {
    return '=> Méthode _LID trouvée à $arg0 !';
  }

  @override
  String get logMsg350 => '=> Méthode _LID introuvable !';

  @override
  String get logMsg351 => 'Vérification de l\'existence de la méthode _TTS...';

  @override
  String logMsg352(String arg0) {
    return '=> Méthode $arg0 trouvée !';
  }

  @override
  String get logMsg353 => '=> Méthode _TTS introuvable !';

  @override
  String get logMsg354 => 'Vérification de l\'existence de la méthode ZTTS...';

  @override
  String get logMsg355 => '=> Méthode ZTTS introuvable !';

  @override
  String logMsg356(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg358 => 'Vous recherchez un appareil PWRB (PNP0C0C)...';

  @override
  String get logMsg359 => '=> Périphérique PWRB (PNP0C0C) introuvable !';

  @override
  String logMsg360(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg361(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg362 => 'Vous recherchez un appareil SLPB (PNP0C0E)...';

  @override
  String get logMsg363 => '=> Appareil SLPB (PNP0C0E) introuvable !';

  @override
  String get logMsg364 =>
      '=> Le périphérique SLPB (PNP0C0E) n\'a pas été trouvé dans le tableau ACPI ci-dessus ! Juste un faux ! \\n';

  @override
  String logMsg365(String arg0) {
    return 'Création de $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg367(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg368(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String get logMsg369 => 'Vous recherchez un appareil PNP0C01...';

  @override
  String get logMsg370 => '=> Appareil PNP0C01 introuvable !';

  @override
  String get logMsg371 =>
      '=> Le périphérique PNP0C01 n\'a été trouvé dans aucune des tables ACPI ci-dessus !\\n';

  @override
  String logMsg372(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg373 => 'Collecte des appareils XHC/XHCI/XDCI/CNVW...';

  @override
  String logMsg374(String arg0) {
    return '=> Vérifier si l\'appareil $arg0 prend en charge PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 ne prend pas en charge PMEE, ignoré';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 prend en charge PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg378 => 'Vérification de l\'existence de la méthode GPRW...';

  @override
  String get logMsg379 => 'Vérification de l\'existence de la méthode XPRW...';

  @override
  String logMsg380(String arg0) {
    return '=> Méthode GPRW trouvée en $arg0 !';
  }

  @override
  String logMsg381(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg382 => 'Vérification de l\'existence de la méthode UPRW...';

  @override
  String get logMsg383 => 'Vérification de l\'existence de la méthode XPRW...';

  @override
  String logMsg384(String arg0) {
    return '=> Méthode UPRW trouvée en $arg0 !';
  }

  @override
  String logMsg385(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg386 => 'Vérification de la présence du périphérique GPI0...';

  @override
  String logMsg387(String arg0) {
    return '=> Appareil GPI0 trouvé à $arg0 !';
  }

  @override
  String get logMsg388 => 'Vérification de l\'existence de la méthode _STA...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> Trouvé $arg1 : méthode _STA à l\'index $arg0 !';
  }

  @override
  String logMsg390(String arg0) {
    return '=> Générer $arg0 : _STA vers le patch XSTA';
  }

  @override
  String logMsg391(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg392 =>
      'Détermination du schéma de dénomination du processeur...';

  @override
  String logMsg393(String arg0) {
    return 'Vérification de $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> Processeur trouvé : $arg0';
  }

  @override
  String get logMsg395 => '=> Aucun objet Processeur trouvé...';

  @override
  String get logMsg396 => '=> Périphérique ACPI0007 introuvable…';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 Appareils ACPI0007 trouvés';
  }

  @override
  String logMsg398(String arg0) {
    return '=> Appareil parent trouvé à $arg0, traitement...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> Vérification de $arg0…';
  }

  @override
  String get logMsg400 => '=> Pas trouvé ! franchir…';

  @override
  String get logMsg401 => '=> Pas trouvé ! franchir…';

  @override
  String logMsg402(String arg0) {
    return 'Traitement de $arg0 périphériques de processeur valides...';
  }

  @override
  String logMsg403(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg404(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg405(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg406(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg407(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg408(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg409(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg410(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg411 =>
      'Collecte de faux schémas d\'identification d\'appareil...';

  @override
  String logMsg412(String arg0) {
    return '=> Contrefaçon en tant que carte mère IMEI de la série 7 (identifiant de l\'appareil : $arg0) pour correspondre au processeur Ivy Bridge de 3e génération';
  }

  @override
  String logMsg413(String arg0) {
    return '=> Contrefaçon en tant que carte mère IMEI de la série 6 (identifiant de l\'appareil : $arg0) pour correspondre au processeur Sandy Bridge de 2e génération';
  }

  @override
  String logMsg414(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg415(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg416(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg417(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg418(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg419(String arg0) {
    return 'Vérification du périphérique $arg0 pour une méthode _ON ou _OFF...';
  }

  @override
  String logMsg420(String arg0) {
    return 'Vérification du périphérique $arg0 pour les méthodes _PS3 ou _DSM...';
  }

  @override
  String logMsg421(String arg0) {
    return 'Vérification de l\'appareil $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> La méthode _PRT correspondant à $arg0 n\'a pas été trouvée dans DSDT ou SSDT !';
  }

  @override
  String logMsg423(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 chemin du périphérique qui doit être bloqué : $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> Méthode de blindage : méthode $arg0';
  }

  @override
  String logMsg426(String arg0) {
    return '=> Le chemin relatif du périphérique a été converti en chemin absolu : $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> Rechercher $arg1.$arg2 méthode dans $arg0';
  }

  @override
  String logMsg428(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String get logMsg429 => 'Collecte des appareils de bus possibles...';

  @override
  String logMsg430(String arg0) {
    return 'Création de $arg0.dsl précompilé...';
  }

  @override
  String logMsg431(String arg0) {
    return 'Vérification du périphérique graphique $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> La méthode _PRT correspondant à $arg0 n\'a pas été trouvée dans DSDT ou SSDT !';
  }

  @override
  String logMsg433(String arg0) {
    return 'Création de $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> Chemin du périphérique de la carte graphique : $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> ID de carte graphique contrefait : $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> Nom de carte graphique contrefait : $arg0';
  }

  @override
  String get logMsg437 => '=> Pas trouvé !';

  @override
  String logMsg438(String arg0) {
    return '=> Chemin PCI correspondant : $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> Mettre à jour $arg0 \"$arg1\" en $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" existe déjà dans $arg2, ignorer...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> Ajouter $arg0 \"$arg1\" à $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> Mettre à jour la valeur de la clé \"$arg0\" en \"$arg1\" dans $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> La valeur de la clé \"$arg0\" est déjà à jour, en sautant $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> Ajouter la clé \"$arg0\" la valeur \"$arg1\" à $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return 'Échec du nettoyage du dossier de rapports matériels : $arg0';
  }

  @override
  String get logMsg446 => 'Échec de l\'exportation de la table ACPI native';

  @override
  String logMsg447(String arg0) {
    return 'Échec de l\'exportation de la table ACPI native : $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'Échec de l\'exportation de la table ACPI native : $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'Échec du nettoyage du répertoire temporaire de la table ACPI : $arg0';
  }

  @override
  String get logMsg450 => 'Exportation du rapport sur le matériel natif...';

  @override
  String get logMsg451 => 'Exportation de tables ACPI natives...';

  @override
  String logMsg452(String arg0) {
    return 'Exportation de la table ACPI native terminée : $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'Le fichier source n\'existe pas : $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'Erreur lors de l\'enregistrement du fichier : $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'Version actuelle du CO : $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'Le fichier ZIP n\'existe pas : $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 fichier décompressé avec succès';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'Erreur lors de la décompression du fichier $arg0 : $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'Le fichier ou le répertoire n\'existe pas : $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'Compression terminée : $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'Erreur de compression : $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'Supprimer le répertoire : $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'Supprimer le fichier : $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'Échec de la suppression : $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'Fichier enregistré avec succès dans : $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'Le répertoire source n\'existe pas : $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'Dossier préparé : $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'Erreur lors de la création du dossier : $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'Échec de l\'ouverture du répertoire, le chemin n\'existe pas : $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'Échec de l\'ouverture du répertoire : $arg0, $arg1';
  }

  @override
  String get autoGen5000 => 'compatible';

  @override
  String get autoGen5001 => 'Compatibilité limitée';

  @override
  String get autoGen5002 => 'Non compatible';

  @override
  String get autoGen5003 => 'Activé';

  @override
  String get autoGen5004 => 'allumer';

  @override
  String get autoGen5005 => 'inconnu';

  @override
  String get autoGen5006 => 'Carte réseau filaire';

  @override
  String get autoGen5007 =>
      'Compatibilité limitée\nPrend en charge jusqu\'à macOS Tahoe 26\nAVX2 manquant';

  @override
  String get autoGen5008 =>
      'Non compatible\nPrend en charge jusqu\'à macOS El Capitan 10.11\nSSE4 manquant';

  @override
  String get autoGen5009 => 'ID d\'appareil manquant';

  @override
  String get autoGen5010 => 'Prise en charge de NootedRed';

  @override
  String get autoGen5011 => 'Chargement de compatibilité';

  @override
  String get autoGen5012 =>
      'Les graphiques de base du processeur Intel bas de gamme ne sont pas pris en charge';

  @override
  String get autoGen5013 => 'La sortie VGA n\'est pas prise en charge';

  @override
  String get autoGen5014 => 'Prise en charge de la contrefaçon';

  @override
  String get autoGen5015 => 'Prise en charge native';

  @override
  String get autoGen5016 => 'Jeu d\'instructions AVX2 manquant';

  @override
  String get autoGen5017 => 'cœur';

  @override
  String get autoGen5018 => 'indépendant';

  @override
  String get autoGen5019 => 'Affichage nucléaire';

  @override
  String get autoGen5020 => 'ASUS';

  @override
  String get autoGen5021 => 'Gigaoctet';

  @override
  String get autoGen5022 => 'ASRock';

  @override
  String get autoGen5023 => 'MSI';

  @override
  String get autoGen5024 => 'Dell';

  @override
  String get autoGen5025 => 'Lenovo';

  @override
  String get autoGen5026 => 'Sony';

  @override
  String get autoGen5027 => 'HP';

  @override
  String get autoGen5028 => 'Google';

  @override
  String get autoGen5029 => 'Microsoft';

  @override
  String get autoGen5030 =>
      'Impossible d\'identifier le type de plate-forme en fonction des informations sur le processeur';

  @override
  String get autoGen5031 => 'carnet de notes';

  @override
  String get autoGen5032 => 'Mini-hôte';

  @override
  String get autoGen5033 => 'poste de travail';

  @override
  String get autoGen5034 =>
      'Le code de la plate-forme ne peut pas être déterminé en fonction du processeur, de la carte mère et de l\'écran principal.';

  @override
  String get autoGen5035 => 'Ignorer le blocage de l\'appareil :';

  @override
  String get autoGen5036 => 'Chemin ACPI valide manquant';

  @override
  String get autoGen5037 => 'Liste SSDT à personnaliser :';

  @override
  String get autoGen5038 => 'L\'extraction de la table ACPI a échoué';

  @override
  String get autoGen5039 => 'Échec du chargement de la table ACPI';

  @override
  String get autoGen5040 => 'Les résultats SSDT personnalisés sont incomplets';

  @override
  String get autoGen5041 =>
      'Une exception s\'est produite dans le SSDT personnalisé';

  @override
  String get autoGen5042 =>
      'Échec du nettoyage du répertoire temporaire SSDT personnalisé :';

  @override
  String get autoGen5043 =>
      'Usurpation de l\'ID de périphérique de la carte graphique SSDT';

  @override
  String get autoGen5044 => 'Échec de la génération :';

  @override
  String get autoGen5045 => 'SSDT de protection de périphérique ACPI';

  @override
  String get autoGen5046 => 'Fusion SSDT personnalisée ignorée,';

  @override
  String get autoGen5047 =>
      'Continuez à utiliser le SSDT d\'origine dans l\'EFI actuel comme solution de secours.';

  @override
  String get autoGen5048 =>
      'Usurpation de l\'ID de périphérique de la carte graphique ignorée :';

  @override
  String get autoGen5049 =>
      'Le cache d\'informations sur le matériel n\'est pas un objet JSON';

  @override
  String get autoGen5050 =>
      'Les informations sur le matériel ont été chargées depuis le cache';

  @override
  String get autoGen5051 =>
      'Les informations sur le matériel ont été chargées à partir du cache local';

  @override
  String get autoGen5052 =>
      'Les informations sur le matériel ont été chargées à partir du fichier d\'importation';

  @override
  String get autoGen5053 => 'Initialiser les informations sur le matériel';

  @override
  String get autoGen5054 =>
      'Le système actuel n\'est pas pris en charge, seul Windows est pris en charge';

  @override
  String get autoGen5055 => 'Interroger des informations sur le matériel';

  @override
  String get autoGen5056 => 'Requête d\'informations sur le matériel terminée';

  @override
  String get autoGen5057 =>
      'sysInfo.exe n\'a pas renvoyé d\'informations sur le matériel';

  @override
  String get autoGen5058 =>
      'Le contenu renvoyé par sysInfo.exe n\'est pas un objet JSON';

  @override
  String get autoGen5059 => 'Requête sysInfo.exe terminée';

  @override
  String get autoGen5060 => 'carte graphique de base';

  @override
  String get autoGen5061 => 'Carte graphique discrète';

  @override
  String get autoGen5062 => 'Déjà allumé';

  @override
  String get autoGen5063 => 'Carte graphique inconnue';

  @override
  String get autoGen5064 => 'intégré';

  @override
  String get autoGen5065 => 'Broadcom';

  @override
  String get autoGen5066 => 'Qualcomm';

  @override
  String get autoGen5067 => 'Intel';

  @override
  String get autoGen5068 => 'pomme';

  @override
  String get autoGen5069 => 'Moment zéro';

  @override
  String get autoGen5070 => 'Matsushita';

  @override
  String get autoGen5071 => 'Je suppose';

  @override
  String get autoGen5072 => 'Biostar';

  @override
  String get autoGen5073 => 'Coloré';

  @override
  String get autoGen5074 => 'Zotac';

  @override
  String get autoGen5075 => 'Gengsheng';

  @override
  String get autoGen5076 => 'Yingzhong';

  @override
  String get autoGen5077 => 'Super Micro';

  @override
  String get autoGen5078 => 'Alors';

  @override
  String get autoGen5079 => 'Spartacus';

  @override
  String get autoGen5080 => 'Panzheng';

  @override
  String get autoGen5081 => 'Chine du Sud';

  @override
  String get autoGen5082 => 'Jingyue';

  @override
  String get autoGen5083 => 'L\'esprit';

  @override
  String get autoGen5084 => 'Guoshuo';

  @override
  String get autoGen5085 => 'Passerelle';

  @override
  String get autoGen5086 => 'diamant';

  @override
  String get autoGen5087 => 'meilleure étoile';

  @override
  String get autoGen5088 => 'Mingxuan';

  @override
  String get autoGen5089 => 'Meijie';

  @override
  String get autoGen5090 => 'Élite';

  @override
  String get autoGen5091 => 'Foxconn';

  @override
  String get autoGen5092 => 'un peu';

  @override
  String get autoGen5093 => 'Shuangmin';

  @override
  String get autoGen5094 => 'Eunjie';

  @override
  String get autoGen5095 => 'GALAXIE';

  @override
  String get autoGen5096 => 'drapeau sacré';

  @override
  String get autoGen5097 => 'Requin';

  @override
  String get autoGen5098 => 'Vérifiez-le';

  @override
  String get autoGen5099 => 'Advantech';

  @override
  String get autoGen5100 => 'Lien publicitaire';

  @override
  String get autoGen5101 => 'Grand mécanicien';

  @override
  String get autoGen5102 => 'patriote';

  @override
  String get autoGen5103 => 'ASL';

  @override
  String get autoGen5104 => 'Érying';

  @override
  String get autoGen5105 => 'saphir';

  @override
  String get autoGen5106 => 'Contech';

  @override
  String get autoGen5107 => 'Qingyun';

  @override
  String get autoGen5108 => 'Huawei';

  @override
  String get autoGen5109 => 'Millet';

  @override
  String get autoGen5110 => 'riz rouge';

  @override
  String get autoGen5111 => 'gloire';

  @override
  String get autoGen5112 => 'Samsung';

  @override
  String get autoGen5113 => 'révolution mécanique';

  @override
  String get autoGen5114 => 'mécanicien';

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
  String get autoGen5120 => 'ciel bleu';

  @override
  String get autoGen5121 => 'étranger';

  @override
  String get autoGen5122 => 'Shenzhou';

  @override
  String get autoGen5123 => 'Haier';

  @override
  String get autoGen5124 => 'Zhongbai';

  @override
  String get autoGen5125 => 'Xuanlong';

  @override
  String get autoGen5126 => 'les futurs humains';

  @override
  String get autoGen5127 => 'Cube';

  @override
  String get autoGen5128 => 'Étoile Xuanpai Xuanji';

  @override
  String get autoGen5129 => 'Recherche de mises à jour, veuillez patienter...';

  @override
  String get autoGen5130 =>
      'Je viens de vérifier les mises à jour, veuillez réessayer plus tard';

  @override
  String get autoGen5131 =>
      'Échec de la vérification des mises à jour, veuillez réessayer plus tard';

  @override
  String get autoGen5132 =>
      'Échec de l\'obtention de la liste des versions, veuillez réessayer plus tard';

  @override
  String get autoGen5133 => 'La liste des versions publiées est vide';

  @override
  String get autoGen5134 => 'Bureau';

  @override
  String get autoGen5135 => 'serveur';

  @override
  String get autoGen5136 =>
      'Activez SIP pour améliorer la sécurité du système. Il est recommandé de cocher cette case lorsque vous n\'avez généralement pas besoin d\'utiliser OCLP pour piloter les cartes graphiques, le WiFi et d\'autres pilotes.';

  @override
  String get autoGen5137 => 'Désactiver la première solution SIP';

  @override
  String get autoGen5138 =>
      'À moins que SIP ne soit complètement désactivé, il est généralement recommandé de cocher la case lorsque des systèmes tels que BigSur et supérieurs doivent utiliser OCLP pour piloter les cartes graphiques, le WiFi, etc.';

  @override
  String get autoGen5139 => 'Désactiver la solution SIP 2';

  @override
  String get autoGen5140 =>
      'Désactivez complètement SIP. Habituellement, lorsque des systèmes tels que BigSur et supérieurs doivent utiliser OCLP pour piloter les cartes graphiques, le WiFi, etc., cette option est préférée.';

  @override
  String get autoGen5141 =>
      'Affichage adaptatif, ajuste automatiquement le rapport d\'affichage de l\'interface de démarrage OpenCore en fonction de la résolution d\'affichage';

  @override
  String get autoGen5142 =>
      'Moniteur de résolution standard, adapté aux moniteurs 720p, 1080p, 1440p et autres moniteurs de résolution standard';

  @override
  String get autoGen5143 =>
      'Affichage haute résolution, adapté aux écrans haute résolution tels que 4K et 5K (peut améliorer efficacement le problème des éléments d\'interface utilisateur trop petits sur la page de démarrage OpenCore pour les écrans haute résolution)';

  @override
  String get autoGen5144 => 'Ne pas modifier ProcessorType';

  @override
  String get autoGen5145 =>
      'Conserver l\'affichage du type de processeur par défaut du système';

  @override
  String get autoGen5146 =>
      'Option 1 de modification du nom du processeur des plates-formes Intel et AMD (généralement applicable aux processeurs dotés de 6 cœurs et moins)';

  @override
  String get autoGen5147 =>
      'Option 2 de modification du nom du processeur des plates-formes Intel et AMD (généralement applicable aux processeurs à 8 cœurs et supérieurs)';

  @override
  String get autoGen5148 =>
      'Alternatives de modification du nom du processeur des plates-formes Intel et AMD (généralement applicables aux processeurs des séries i7 et i9 avec 8 cœurs et plus)';

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
  String get autoGen5159 => 'Carte mère ordinaire';

  @override
  String get autoGen5160 =>
      'Cartes mères B850, B650, B550 et A520, ordinateurs portables à chipset série 550';

  @override
  String get autoGen5161 => 'Carte mère TRx40';

  @override
  String get autoGen5162 => 'Carte mère X570';

  @override
  String get autoGen5163 =>
      'Carte mère X470 ou B450 fin 2020 ou BIOS mis à jour';

  @override
  String get autoGen5164 => 'Chipset série 6';

  @override
  String get autoGen5165 =>
      'Vérifiez lors du mélange d\'un processeur Intel de 3e génération et d\'un chipset série 6 (par exemple : H61, HM65)';

  @override
  String get autoGen5166 => 'chipset série 7';

  @override
  String get autoGen5167 =>
      'Vérifiez lors du mélange d\'un processeur Intel de 2e génération et de chipsets de la série 7 (par exemple : B75, HM76)';

  @override
  String get autoGen5168 => 'H110, B150, B250, Q270, etc.';

  @override
  String get autoGen5169 =>
      'Certaines cartes mères OEM ont des problèmes de libération de propriété USB : EHCI Hand-off échoue';

  @override
  String get autoGen5170 => 'Z490 et autres mises à jour du BIOS en 2020';

  @override
  String get autoGen5171 =>
      'Chipset série 6 (à vérifier lors du mélange d\'un processeur Intel de 3e génération et de chipsets série 6 (par exemple : H61, HM65))';

  @override
  String get autoGen5172 =>
      'Chipset série 7 (à vérifier lors du mélange d\'un processeur Intel de 2e génération et de chipsets série 7 (par exemple : B75, HM76))';

  @override
  String get autoGen5173 =>
      'H110, B150, B250, Q270, etc. (Certaines cartes mères OEM ont des problèmes de libération de propriété USB : échec de transfert EHCI)';

  @override
  String get autoGen5174 => 'de mbconfs';

  @override
  String get autoGen5175 => 'Double chaîne DVI';

  @override
  String get autoGen5176 => 'Chaîne unique DVI';

  @override
  String get autoGen5177 =>
      'Prend en charge OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5178 =>
      'Prend en charge OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, adapté aux graphiques de base + aux modèles graphiques indépendants';

  @override
  String get autoGen5179 =>
      'Prend en charge OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adapté à l\'architecture Ivy Bridge, uniquement les modèles graphiques de base';

  @override
  String get autoGen5180 =>
      'Prend en charge OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adapté à l\'architecture Ivy Bridge, décodage d\'affichage principal + modèles de sortie d\'affichage indépendants';

  @override
  String get autoGen5181 =>
      'Prend en charge OS X Mavericks 10.9 ~ macOS Big Sur 11, adapté à l\'architecture Haswell NVIDIA Maxwell et graphiques indépendants Pascal';

  @override
  String get autoGen5182 =>
      'Prend en charge OS X Mavericks 10.9 ~ macOS Big Sur 11, convient uniquement aux modèles d\'affichage principaux de l\'architecture Haswell';

  @override
  String get autoGen5183 =>
      'Prend en charge OS X Mavericks 10.9 ~ macOS Big Sur 11, adapté aux graphiques de base de l\'architecture Haswell + aux modèles graphiques indépendants';

  @override
  String get autoGen5184 =>
      'Prend en charge macOS El Capitan 10.11 ~ macOS Monterey 12, adapté aux modèles avec graphiques de base (ou graphiques indépendants)';

  @override
  String get autoGen5185 =>
      'Prend en charge macOS El Capitan 10.11 ~ macOS Monterey 12, adapté à l\'affichage principal de l\'architecture Broadwell (ou avec affichage indépendant)';

  @override
  String get autoGen5186 =>
      'Prend en charge macOS Sierra 10.12 ~ macOS Ventura 13. Convient aux modèles d\'affichage principal + d\'affichage indépendant. Il convient de noter que lors de l’utilisation de ce modèle, la plupart des utilisateurs d’affichage principal uniquement connaîtront une couleur d’écran anormale. Ce modèle n\'est pas recommandé pour les utilisateurs d\'affichage principal uniquement.';

  @override
  String get autoGen5187 =>
      'Prend en charge macOS Sierra 10.12 ~ macOS Ventura 13, adapté au décodage d\'affichage principal + modèles de sortie d\'affichage indépendants';

  @override
  String get autoGen5188 =>
      'Prend en charge macOS 10.14 ~ macOS Sequoia 15, adapté aux modèles avec graphiques de base (ou graphiques indépendants)';

  @override
  String get autoGen5189 =>
      'Prend en charge macOS 10.15 ~ macOS Tahoe 26, adapté aux modèles d\'affichage du cœur de processeur i7-10700K et inférieurs (ou avec affichage indépendant)';

  @override
  String get autoGen5190 =>
      'Prend en charge macOS 10.15 ~ macOS Tahoe 26, adapté aux modèles d\'affichage à cœur de processeur supérieur i9-10850K (ou avec affichage indépendant)';

  @override
  String get autoGen5191 =>
      'Prise en charge de macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 =>
      'Prise en charge de macOS 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5193 =>
      'Prise en charge de macOS 10.7 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5194 =>
      'Prise en charge de macOS 10.8 ~ macOS Catalina 10.15';

  @override
  String get autoGen5195 => 'Prise en charge de macOS 10.9 ~ macOS Big Sur 11';

  @override
  String get autoGen5196 =>
      'Prise en charge de macOS High Sierra 10.13 ~ macOS Monterey 12';

  @override
  String get autoGen5197 =>
      'Prise en charge de macOS Mojave 10.14 ~ macOS Monterey 12';

  @override
  String get autoGen5198 =>
      'Prise en charge d\'OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 =>
      'Prise en charge d\'OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 =>
      'Prise en charge de macOS Sierra 10.12 ~ macOS Monterey 12';

  @override
  String get autoGen5201 =>
      'Prend en charge macOS Sierra 10.12 ~ macOS Monterey 12 (le Core Display HD 515 ne prend officiellement en charge que macOS Monterey 12, la contrefaçon prend en charge le dernier macOS Sequoia 15)';

  @override
  String get autoGen5202 =>
      'Prend en charge macOS Sierra 10.12 ~ macOS Monterey 12 (l\'écran principal Iris 540 ne prend officiellement en charge que macOS Monterey 12, et la version contrefaite prend en charge le dernier macOS Sequoia 15)';

  @override
  String get autoGen5203 =>
      'Prend en charge macOS Sierra 10.12 ~ macOS Monterey 12 (l\'écran principal Iris 550 ne prend officiellement en charge que macOS Monterey 12, et la version contrefaite prend en charge le dernier macOS Sequoia 15)';

  @override
  String get autoGen5204 =>
      'Prend en charge macOS Sierra 10.12 ~ macOS Monterey 12 (l\'écran principal HD530 ne prend officiellement en charge que macOS Monterey 12, la contrefaçon prend en charge le dernier macOS Sequoia 15)';

  @override
  String get autoGen5205 =>
      'Prise en charge de macOS High Sierra 10.13 ~ macOS Ventura 13';

  @override
  String get autoGen5206 =>
      'Prise en charge de macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 =>
      'Prise en charge de macOS Catalina 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 =>
      'Prise en charge de macOS Catalina 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'Prend en charge macOS 10.9 ~ macOS Monterey 12, adapté aux modèles graphiques autonomes uniquement';

  @override
  String get autoGen5210 =>
      'Prend en charge macOS 10.13 ~ macOS Sequoia 15. Applicable aux modèles graphiques autonomes uniquement. Pour Intel de 11e génération et supérieure, ce modèle est généralement utilisé. La conversion de fréquence du processeur et la fréquence turbo sont normales, et aucun correctif Kext supplémentaire n\'est nécessaire (si la fréquence turbo du système macOS n\'est pas normale, veuillez extraire et utiliser le SSDT-PLUG natif)';

  @override
  String get autoGen5211 =>
      'Prend en charge macOS 10.15 ~ macOS Tahoe 26, adapté aux modèles graphiques indépendants de la carte A. Les cartes A sans pilote prises en charge (telles que RX560, RX570, RX5500, RX6600) prendront parfaitement en charge le décodage dur VDA. Pour Intel de 11e génération et supérieur, ce modèle est généralement utilisé, la fréquence turbo du processeur n\'est pas normale et un patch Kext supplémentaire est requis. Vous pouvez accéder à [Pilote Kexts facultatif] -> [Lié au CPU] -> [Pilote de fréquence variable du CPU, fournit principalement la prise en charge de la conversion de fréquence MacPro7,1 des plates-formes de 11e génération et supérieures] pour cocher cette option.';

  @override
  String get autoGen5212 => 'Plage de compatibilité macOS non configurée';

  @override
  String get autoGen5213 =>
      'L\'identifiant de l\'appareil doit contenir 4 caractères.';

  @override
  String get autoGen5214 =>
      'Activer le commutateur principal de patch du tampon de trame d\'affichage principal (Framebuffer)';

  @override
  String get autoGen5215 =>
      'Modifiez la mémoire vidéo à 1536 Mo (mémoire vidéo 1,5 Go, valeur par défaut officielle d\'Apple, adaptée aux plates-formes d\'affichage Intel Core de 3e à 10e génération)';

  @override
  String get autoGen5216 =>
      'Modifiez la mémoire vidéo à 2048 Mo (mémoire vidéo 2G, valeur par défaut de l\'outil, adaptée aux plates-formes d\'affichage Intel Core de 3e à 10e génération)';

  @override
  String get autoGen5217 =>
      'Modifiez la mémoire vidéo à 3072 Mo (mémoire vidéo 3G, adaptée aux plates-formes d\'affichage Intel Core de 3e à 10e génération)';

  @override
  String get autoGen5218 =>
      'Modifiez la mémoire vidéo à 4095 Mo (mémoire vidéo 4G, adaptée aux plates-formes d\'affichage Intel Core de 3e à 10e génération)';

  @override
  String get autoGen5219 =>
      'Résolvez le problème de flou d\'écran haute résolution 1080P sur la plate-forme Haswell de 4e génération (par exemple, le flou d\'écran haute résolution peut être dû au fait que la valeur n\'est pas assez grande. Ce correctif est un correctif dédié à l\'affichage principal Haswell. Il est recommandé d\'utiliser cette configuration pour les écrans 1080P et inférieurs)';

  @override
  String get autoGen5220 =>
      'Résolvez le problème des écrans haute résolution tels que 2K et 4K sur la plate-forme Haswell de 4ème génération (par exemple, l\'écran haute résolution peut être flou car la valeur n\'est pas assez grande. Ce patch est un patch dédié à l\'affichage principal Haswell. Il est recommandé d\'utiliser cette configuration pour les écrans 2K et 4K)';

  @override
  String get autoGen5221 =>
      'Patch candidat pour écran haute résolution Ivy Bridge';

  @override
  String get autoGen5222 => 'Activer le correctif d\'interface con0';

  @override
  String get autoGen5223 => 'Activer le correctif d\'interface con1';

  @override
  String get autoGen5224 => 'Activer les correctifs de l\'interface con2';

  @override
  String get autoGen5225 => 'Activer le correctif d\'interface con3';

  @override
  String get autoGen5226 =>
      'Patch d\'interface candidat pour écran haute résolution Ivy Bridge';

  @override
  String get autoGen5227 =>
      'Patch pour écran haute résolution pour ordinateur portable Sandy Bridge (résolution 1 600 x 900 et supérieure)';

  @override
  String get autoGen5228 =>
      'Correctifs facultatifs pour les ordinateurs portables Ironlake/Arrandale';

  @override
  String get autoGen5229 =>
      'Correction de la solution d\'écran haute résolution HDMI 60 ips (dans certains cas, l\'écran Intel Core peut utiliser la norme HDMI 1.4 par défaut. Activez ce paramètre pour forcer HDMI 2.0 à prendre en charge une résolution et un taux de rafraîchissement plus élevés, comme la prise en charge de 4K à 60 Hz)';

  @override
  String get autoGen5230 =>
      'Réparer la sortie audio HDMI (généralement, seul l\'alcid approprié est nécessaire, ce paramètre peut parfois résoudre le problème de sortie audio HDMI correcte)';

  @override
  String get autoGen5231 =>
      'Désactivez le patch de conversion DP vers HDMI pour le son numérique (garantit la stabilité et la fiabilité de la connexion HDMI lorsque l\'interface DisplayPort est connectée à l\'interface HDMI via un convertisseur)';

  @override
  String get autoGen5232 =>
      'Forcez l’état en ligne sur tous les moniteurs, ce qui est utile pour la sortie multi-écran de l’affichage principal. Dans certains cas, cela peut éviter des problèmes tels qu\'un écran noir après le réveil ou la nécessité de brancher et débrancher le câble du moniteur pour éclairer l\'écran au démarrage (généralement applicable aux écrans Coffee Lake de 8e génération et supérieurs)';

  @override
  String get autoGen5233 =>
      'Améliorer les performances d\'affichage de base (par exemple : résoudre le problème de l\'encodage hevc 4K de l\'affichage de base, de la résolution et des images par seconde n\'atteignant pas les valeurs idéales)';

  @override
  String get autoGen5234 =>
      'Activez le chargement complet du micrologiciel de l\'écran principal, améliorez l\'utilisation de l\'écran principal et améliorez les performances de l\'écran principal. L\'ajout de ce paramètre peut empêcher le système d\'entrer, alors utilisez-le avec prudence';

  @override
  String get autoGen5235 =>
      'Correction du problème de boucle sans fin causé par l\'écran principal Skylake de 6e génération, l\'écran principal Kaby Lake de 7e génération et le pilote d\'affichage principal Coffee Lake de 8e génération lorsque vous essayez d\'allumer un écran HDMI haute résolution externe (les symptômes spécifiques sont qu\'après avoir branché le câble HDMI, l\'écran interne de l\'ordinateur portable devient noir mais a un rétroéclairage, le système ne répond plus et il n\'y a aucune sortie sur l\'écran externe)';

  @override
  String get autoGen5236 =>
      'Correction du problème de crash du noyau causé par la faible fréquence Core Display Clock (CDCLK) sur la plate-forme Ice Lake de 10e génération.';

  @override
  String get autoGen5237 =>
      'Correction d\'un crash du noyau sur la plate-forme Ice Lake de 10e génération causé par le pilote calculant incorrectement la taille de la mémoire pré-allouée DVMT.';

  @override
  String get autoGen5238 =>
      'Ajustez les paramètres du curseur de luminosité (Brightness Slider) pour rendre les transitions plus fluides et plus naturelles afin d\'améliorer l\'expérience utilisateur';

  @override
  String get autoGen5239 =>
      'Correction du problème d\'un écran sombre durant 3 minutes après le démarrage sur les ordinateurs portables exécutant macOS 13.4 ou supérieur sur les plates-formes Kaby Lake de 7e génération, 8e génération et Coffee Lake de 9e génération.';

  @override
  String get autoGen5240 =>
      'Correction du problème où les ordinateurs portables exécutant macOS 13.3 et versions antérieures sur les plates-formes Kaby Lake de 7e génération, 8e génération et Coffee Lake de 9e génération auraient un écran sombre pendant 3 minutes après le démarrage.';

  @override
  String get autoGen5241 =>
      'Correction du problème où l\'écran de la plate-forme Ice Lake de 10e génération persiste pendant 7 à 15 secondes lorsque l\'ordinateur portable est allumé';

  @override
  String get autoGen5242 =>
      'Correction du problème selon lequel l\'écran haute résolution HDMI de l\'écran principal Ice Lake de 10e génération avait un écran noir, aucun signal et la résolution ne pouvait pas être émise correctement en 4K à 60 Hz et dans certains scénarios de rafraîchissement élevé 2K/4K (forcé d\'activer le « remplacement d\'horloge de pixel maximum » de l\'écran principal (IGPU))';

  @override
  String get autoGen5243 =>
      'Utilisé pour réparer les effets de pépin d\'affichage nucléaire ou les problèmes d\'écran scintillant (tels que l\'affichage nucléaire HD530)';

  @override
  String get autoGen5244 =>
      'Désactivez l\'affichage indépendant (généralement lorsque l\'affichage indépendant d\'un ordinateur portable à double graphique ne peut pas être piloté, l\'affichage indépendant doit être désactivé)';

  @override
  String get autoGen5245 =>
      'Correction du problème des ordinateurs portables (tels que Dell XPS 15 9570 et autres ordinateurs portables à écran haute résolution) selon lequel l\'écran interne de l\'écran haute résolution renvoie une valeur de débit de liaison maximale incorrecte, entraînant un crash direct lorsque l\'écran interne est allumé (il est recommandé de cocher cette case pour les ordinateurs portables à écran haute résolution)';

  @override
  String get autoGen5246 =>
      'Injectez l\'EDID du moniteur dans l\'interface AAPL00 (généralement l\'écran interne d\'un ordinateur portable) pour résoudre le problème d\'écran noir de l\'interface (remarque : vous devez d\'abord injecter l\'EDID du moniteur sur la page de configuration EDID ! Vous pouvez remplir l\'EDID dans l\'outil « Configuration de l\'affichage » -> « Afficher EDID ». Pour les cartes mères de la série 500 telles que la B560, lors de la réparation de la sortie HDMI, vous devez injecter l\'EDID du moniteur, sinon il y a une forte probabilité d\'un noir Parfois, pour d\'autres plateformes Intel, le problème d\'écran flou, écran violet ou écran noir peut être réparé)';

  @override
  String get autoGen5247 =>
      'Injectez l\'EDID du moniteur dans l\'interface AAPL01 pour résoudre l\'écran noir et aucun problème d\'affichage de l\'interface (Remarque : vous devez d\'abord injecter l\'EDID du moniteur sur la page de configuration EDID ! Vous pouvez remplir l\'EDID dans l\'outil « Configuration d\'affichage » -> « Afficher EDID ». Les cartes mères de la série 500 telles que la B560 doivent injecter l\'EDID du moniteur lors de la réparation de la sortie HDMI, sinon il y a une forte probabilité d\'un écran noir. Parfois, pour d\'autres plates-formes Intel, le l\'écran principal (écran flou, écran violet ou problème d\'écran noir peut être réparé)';

  @override
  String get autoGen5248 =>
      'Injectez l\'EDID du moniteur dans l\'interface AAPL02 pour résoudre l\'écran noir et aucun problème d\'affichage de l\'interface (Remarque : vous devez d\'abord injecter l\'EDID du moniteur sur la page de configuration EDID ! Vous pouvez remplir l\'EDID dans l\'outil « Configuration d\'affichage » -> « Afficher EDID ». Les cartes mères de la série 500 telles que la B560 doivent injecter l\'EDID du moniteur lors de la réparation de la sortie HDMI, sinon il y a une forte probabilité d\'un écran noir. Parfois, pour d\'autres plates-formes Intel, le l\'écran principal (écran flou, écran violet ou problème d\'écran noir peut être réparé)';

  @override
  String get autoGen5249 =>
      'Activer la prise en charge LSPCON et convertir DisplayPort en sortie HDMI 2.0 (nécessite un convertisseur de signal LSPCON du port 0 ~ 3, adapté aux plates-formes Skylake de 6e génération ~ 10e génération Comet Lake, Ice Lake Intel)';

  @override
  String get autoGen5250 =>
      'Convertisseur de signal LSPCON du port 0 (la prise en charge de LSPCON doit être activée)';

  @override
  String get autoGen5251 =>
      'Convertisseur de signal LSPCON du port 1 (la prise en charge de LSPCON doit être activée)';

  @override
  String get autoGen5252 =>
      'Convertisseur de signal LSPCON du port 2 (la prise en charge de LSPCON doit être activée)';

  @override
  String get autoGen5253 =>
      'Convertisseur de signal LSPCON du port 3 (la prise en charge de LSPCON doit être activée)';

  @override
  String get autoGen5254 =>
      'Modifiez la mémoire du framebuffer à 9 Mo (la taille de la mémoire du framebuffer affectera les écrans haute résolution, généralement utilisés en conjonction avec framebuffer-stolenmem)';

  @override
  String get autoGen5255 =>
      'Modifiez la mémoire volée à 19 Mo (applicable à l\'écran 1080P, valeur par défaut de l\'outil, pas besoin de vérifier. S\'il y a un paramètre DVMT dans le BIOS, il est recommandé de le modifier à 64 Mo. Si le paramètre DVMT est modifié dans le BIOS, ce paramètre peut être supprimé)';

  @override
  String get autoGen5256 =>
      'Modifiez la mémoire volée à 64 Mo (applicable aux écrans 2k ou 4k. S\'il y a un paramètre DVMT dans le BIOS, il est recommandé de le modifier à 64 Mo ou plus. Si le paramètre DVMT est modifié dans le BIOS, ce paramètre peut être supprimé)';

  @override
  String get autoGen5257 =>
      'Modifiez la mémoire volée à 128 Mo (applicable aux écrans 4K. S\'il existe un paramètre DVMT dans le BIOS, il est recommandé de le modifier à 128 Mo ou 256 Mo ou plus pour les écrans haute résolution. Si les paramètres DVMT sont modifiés dans le BIOS, ce paramètre peut être supprimé)';

  @override
  String get autoGen5258 =>
      'Activer le port HDMI con0 (nécessite l\'interface HDMI n° 0)';

  @override
  String get autoGen5259 =>
      'Interface HDMI n ° 0, utilisée pour résoudre le problème d\'écran noir du HDMI de 6e à 10e génération (besoin d\'activer le port HDMI con0)';

  @override
  String get autoGen5260 =>
      'Activer le port HDMI con1 (nécessite l\'interface HDMI n°1)';

  @override
  String get autoGen5261 =>
      'Interface HDMI n°1, utilisée pour résoudre le problème d\'écran noir du HDMI de 6e à 10e génération (besoin d\'activer le port HDMI con1)';

  @override
  String get autoGen5262 =>
      'Activer le port HDMI con2 (nécessite l\'interface HDMI n°2)';

  @override
  String get autoGen5263 =>
      'Interface HDMI n°2, utilisée pour résoudre le problème d\'écran noir du HDMI de 6e à 10e génération (besoin d\'activer le port HDMI con2)';

  @override
  String get autoGen5264 => 'Paramètres de mémoire vidéo/DVMT';

  @override
  String get autoGen5265 => 'Paramètres spécifiques Haswell de 4ème génération';

  @override
  String get autoGen5266 =>
      'Patch candidat pour écran haute résolution Ivy Bridge de 3e génération';

  @override
  String get autoGen5267 =>
      'Patch candidat pour écran haute résolution Sandy Bridge de 2e génération';

  @override
  String get autoGen5268 =>
      'Patch candidat pour les ordinateurs portables Arrandale de 1ère génération';

  @override
  String get autoGen5269 => 'Réparation HDMI/interface';

  @override
  String get autoGen5270 => 'Correctif Ice Lake de 10e génération';

  @override
  String get autoGen5271 => 'Solution universelle';

  @override
  String get autoGen5272 =>
      'Patch pour écran haute résolution pour ordinateur portable Ivy Bridge (résolution 1 600 x 900 et supérieure)';

  @override
  String get autoGen5273 =>
      'Activer le patch de correction de type HDMI de l\'interface con0 pour résoudre les problèmes d\'écran noir, d\'écran violet et audio HDMI de 6e à 10e génération';

  @override
  String get autoGen5274 =>
      'Activer le patch de correction de type HDMI de l\'interface con1 pour résoudre les problèmes d\'écran noir, d\'écran violet et audio HDMI de 6e à 10e génération.';

  @override
  String get autoGen5275 =>
      'Activer le patch de correction de type HDMI de l\'interface con2 pour résoudre les problèmes d\'écran noir, d\'écran violet et audio HDMI de 6e à 10e génération.';

  @override
  String get autoGen5276 =>
      'Erreur de format alc_codec.json : le nœud racine doit être Map<String, Dynamic>';

  @override
  String get autoGen5277 =>
      'Activez -v pour exécuter le code (pratique pour localiser les erreurs lorsque le code est bloqué, adapté à l\'étape de débogage et de démarrage)';

  @override
  String get autoGen5278 =>
      'Il est pratique pour le système Mac d\'imprimer davantage d\'informations sur les symboles lorsqu\'un crash du noyau se produit, ce qui est utile pour résoudre les problèmes. Ce paramètre est généralement utilisé avec debug=0x100 (il est fortement recommandé de le vérifier lors du débogage et du premier démarrage)';

  @override
  String get autoGen5279 =>
      'Empêcher le redémarrage automatique lorsque le noyau plante, ce qui facilite l\'affichage des journaux de crash Panic (il est fortement recommandé de vérifier cela lors du débogage et du premier démarrage)';

  @override
  String get autoGen5280 =>
      'Désactivez la fonction de surveillance pour éviter le déclenchement accidentel du redémarrage en cas de panne de panique (applicable au démarrage en débogage)';

  @override
  String get autoGen5281 =>
      'Désactivez la randomisation de l\'espace d\'adressage du noyau (KASLR) pour garantir que le noyau et kext (extension du noyau) sont chargés dans la même carte mémoire fixe afin d\'éviter les plantages précoces du noyau au démarrage causés par des conflits de mémoire provoqués par des valeurs de diapositive aléatoires (applicable au démarrage de débogage)';

  @override
  String get autoGen5282 =>
      'Ignorez la vérification du modèle lors du premier démarrage de macOS pour éviter les symboles d\'interdiction dus à un SMBIOS trop faible ou trop élevé, et assurez-vous que le système peut démarrer normalement (notez que ce paramètre ne peut pas ignorer la vérification du modèle lors de l\'installation. Un message similaire à \"macOS n\'est pas pris en charge\" apparaîtra lors de l\'installation. À ce stade, vous pouvez modifier le SMBIOS à un niveau supérieur ou inférieur pour prendre en charge le nouveau ou l\'ancien système)';

  @override
  String get autoGen5283 =>
      'Ce paramètre s\'applique à la désactivation de l\'AMFI, des cartes graphiques relativement nouvelles (telles que HD4000 et supérieures, GT710 et autres cœurs Kepler et supérieurs) ou des pilotes WiFi. Attention à ne pas l\'utiliser avec le paramètre amfi_get_out_of_my_way=0x1 en même temps ! (Ce paramètre ne prendra effet que si SIP est désactivé, et ce paramètre sera automatiquement supprimé une fois SIP activé)';

  @override
  String get autoGen5284 =>
      'Assurez-vous que AMFIPass.kext peut être correctement activé et activé dans le dernier système macOS Tahoe 26 afin de continuer à contourner les contrôles de sécurité AMFI (AMFI désactivé). (Remarque : 1. Ce paramètre ne peut pas être utilisé en même temps que le paramètre de désactivation AMFI, et ce paramètre doit être utilisé avec AMFIPass.kext. 2. Ce paramètre n\'est généralement utilisé que dans les systèmes les plus récents, ne l\'ajoutez pas sauf si nécessaire)';

  @override
  String get autoGen5285 =>
      'Ce paramètre est applicable lorsque AMFI est désactivé, d\'anciennes plates-formes, d\'anciennes cartes graphiques (telles que GT240) ou des pilotes WiFi sont utilisés. Attention à ne pas utiliser le paramètre amfi=0x80 en même temps ! (Cela ne prend effet que lorsque SIP est désactivé, et ce paramètre est automatiquement supprimé une fois SIP activé)';

  @override
  String get autoGen5286 =>
      'Correction du problème de crash de certaines applications (par exemple : Baidu Netdisk) après la désactivation d\'AMFI (cela ne prendra effet que si SIP est désactivé, et ce paramètre sera automatiquement supprimé une fois SIP activé)';

  @override
  String get autoGen5287 =>
      'Résoudre les problèmes qui peuvent survenir dans le dernier système (principalement la version bêta) (exception du pilote système, telle que : anomalie soudaine de la carte son, du Bluetooth, de la fréquence du processeur, etc. Il est fortement recommandé de vérifier cela lorsque vous essayez la dernière version bêta du système)';

  @override
  String get autoGen5288 =>
      'Activez uniquement 1 cœur de processeur (applicable aux pannes de cœur de processeur X58, X79, X99, X299 et autres serveurs multicœurs, aux étapes d\'installation et de débogage précoces)';

  @override
  String get autoGen5289 =>
      'Désactivez VT-d (désactivez IOMMU, vous pouvez le vérifier lorsque le BIOS ne désactive pas VT-d) pour résoudre le problème du blocage de certaines cartes mères après le démarrage ou l\'entrée dans le système.';

  @override
  String get autoGen5290 =>
      'Désactivez le chargement du micrologiciel Apple Graphics pour éviter de rester bloqué en raison d\'un échec de chargement du micrologiciel ou réessayez la boucle au démarrage (applicable uniquement aux graphiques Intel).';

  @override
  String get autoGen5291 =>
      'Désactivez l\'affichage Intel Core (il est recommandé de vérifier lorsque l\'affichage principal ne peut pas être piloté et que le décodage dur accéléré n\'est pas pris en charge)';

  @override
  String get autoGen5292 =>
      'Désactivez les graphiques indépendants (généralement lorsque la carte graphique indépendante du portable Intel Dual Graphics [couramment utilisée dans les cartes N] ne peut pas être pilotée, il est recommandé de la vérifier)';

  @override
  String get autoGen5293 =>
      'Désactiver le pilote NVIDIA (applicable uniquement lors du débogage de cartes N incompatibles)';

  @override
  String get autoGen5294 =>
      'Désactivez l\'accélération graphique Intel Core (par exemple : lorsque vous utilisez OCLP et que vous ne parvenez pas à démarrer normalement après avoir appliqué le correctif graphique principal, vous pouvez le vérifier, pas d\'accélération, uniquement pour le débogage)';

  @override
  String get autoGen5295 =>
      'Réparer et améliorer les performances de l\'écran Intel Core (par exemple : résoudre le problème de l\'encodage hevc 4K de l\'écran principal, de la résolution et du fps n\'atteignant pas les valeurs idéales)';

  @override
  String get autoGen5296 =>
      'Correction du problème avec la valeur de débit de liaison maximale de l\'affichage Intel Core, qui provoquait un crash direct lorsque l\'écran était allumé ((en particulier sur Skylake, Kaby Lake, Coffee Lake, Comet Lake, écran noir et aucun signal, n\'atteignant pas la résolution 4K attendue, etc.)';

  @override
  String get autoGen5297 =>
      'Résolvez le problème de résolution de l\'écran principal, forcez l\'activation du \"remplacement d\'horloge de pixel maximum\" de l\'IGPU et supprimez la résolution par défaut, le taux de rafraîchissement et d\'autres restrictions de macOS';

  @override
  String get autoGen5298 =>
      'Résoudre le problème de l\'écran noir 4K dans la sortie HDMI de certains ordinateurs portables (généralement applicable aux ordinateurs portables, tels que les ThinkPad P71/7700HQ/HD630/4K bloqués dans « gIOScreenLockState3 »)';

  @override
  String get autoGen5299 =>
      'Correction du problème de crash du noyau causé par la faible fréquence Core Display Clock (CDCLK) sur la plate-forme Ice Lake de 10e génération.';

  @override
  String get autoGen5300 =>
      'Correction d\'un problème de crash du noyau sur la plate-forme Ice Lake de 10e génération causé par le pilote calculant incorrectement la taille de la mémoire pré-allouée DVMT.';

  @override
  String get autoGen5301 =>
      'Correction du problème où l\'écran de la plate-forme Ice Lake de 10e génération persiste pendant 7 à 15 secondes lorsque l\'ordinateur portable est allumé';

  @override
  String get autoGen5302 =>
      'Désactivez iGPU (core graphiques) pour charger le module de télémétrie pendant le processus de démarrage. Certains ordinateurs portables (notamment les Chromebooks) peuvent provoquer le blocage ou le blocage du système pendant la phase de démarrage lors du chargement de ce module (applicable aux ordinateurs portables Intel Skylake de 6e génération et supérieurs)';

  @override
  String get autoGen5303 =>
      'Corrigez le registre de rétroéclairage sur macOS Ventura 13.4 et versions antérieures, les plates-formes d\'ordinateurs portables KBL de 7e génération, CFL de 8e et 9e génération, et résolvez le problème d\'écran noir ou d\'écran sombre durant 3 minutes (applicable aux ordinateurs portables)';

  @override
  String get autoGen5304 =>
      'Corrigez le registre de rétroéclairage sur macOS Ventura 13.4 et versions ultérieures, les plates-formes pour ordinateurs portables KBL de 7e génération, CFL de 8e et 9e génération, et résolvez le problème d\'écran noir ou d\'écran sombre durant 3 minutes (applicable aux ordinateurs portables)';

  @override
  String get autoGen5305 =>
      'Ajustez les paramètres du curseur de luminosité (curseur de luminosité) pour rendre les transitions plus fluides et plus naturelles afin d\'améliorer l\'expérience utilisateur (applicable aux ordinateurs portables)';

  @override
  String get autoGen5306 =>
      'Dessinez le logo Apple lors de la deuxième phase de démarrage au lieu de copier le frame buffer. Lors de la connexion d\'un moniteur externe, passez en douceur de la barre de progression au bureau de connexion. Dans certains cas, cela peut résoudre le problème d’écran noir lors de l’entrée dans le système. En même temps, il est utile de brancher et débrancher le câble du moniteur pour allumer l\'écran.';

  @override
  String get autoGen5307 =>
      'Résoudre le problème de début de configuration ACPI des cartes de plate-forme telles que X58,';

  @override
  String get autoGen5308 =>
      'Résoudre le problème de début de configuration ACPI des cartes de plate-forme telles que X58,';

  @override
  String get autoGen5309 =>
      'Correction d\'un problème de prise en charge de la gestion matérielle des droits numériques (DRM) sur les GPU AMD (permet d\'afficher le contenu numérique protégé par DRM, tel que les vidéos de haute qualité fournies par les services de streaming, sur les GPU AMD pris en charge)';

  @override
  String get autoGen5310 =>
      'Désactivez l\'accélération des cartes graphiques ATI et AMD (par exemple : lorsque vous utilisez OCLP et que la carte graphique ne peut pas démarrer normalement après le patch, vous pouvez la vérifier, pas d\'accélération, uniquement pour le débogage)';

  @override
  String get autoGen5311 =>
      'Réparez les HD7750, HD7850 (le noyau principal est la série GCN HD77XX, HD78XX, HD79XX) et d\'autres anciennes distorsions d\'écran de carte A, écran jaune et autres problèmes d\'affichage anormaux.';

  @override
  String get autoGen5312 =>
      'Corrigez l\'écran noir ou les problèmes d\'affichage anormaux qui peuvent être causés par certaines cartes graphiques, en ignorant complètement les restrictions ou les paramètres d\'AppleGraphicsDevicePolicy.kext sur la carte graphique. Lorsque vous n\'êtes pas sûr des restrictions spécifiques, évitez les problèmes d\'affichage ou les phénomènes d\'écran noir causés par des configurations matérielles incompatibles (telles qu\'un identifiant de carte spécifique). Faites attention à ce paramètre, qui ne prendra effet que lorsqu\'il sera utilisé avec WhichGreen.kext. Pour les cartes A natives sans pilote, vous pouvez supprimer le pilote WhichGreen.kext, ce paramètre n\'a donc pas besoin d\'être ajouté.';

  @override
  String get autoGen5313 =>
      'Résolvez le problème d\'écran noir au démarrage des cartes graphiques AMD Navi core RX5XXX, RX6XXX (par exemple : RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.), remplacez board-id par board-ix et contournez certaines restrictions d\'AppleGraphicsDevicePolicy. Remarque : 1. Il ne prendra effet que lorsqu\'il est utilisé avec WhichGreen.kext. 2. BIOS Désactivez le port série/COM dans les paramètres SuperIO. Pour les cartes A natives sans pilote, vous pouvez supprimer le pilote WhichGreen.kext, ce paramètre n\'a donc pas besoin d\'être ajouté.';

  @override
  String get autoGen5314 =>
      'Résolvez le problème d\'écran noir après le réveil pour certaines cartes graphiques telles que RX470 et RX570, désactivez la vérification de l\'identifiant de la carte dans AppleGraphicsDevicePolicy et corrigez l\'écran noir ou les problèmes d\'affichage anormaux pouvant être causés par certaines cartes graphiques. Notez que ce paramètre ne prendra effet que lorsqu\'il est utilisé avec WhichGreen.kext. Pour les cartes A natives sans pilote, le pilote WhichGreen.kext peut être supprimé, ce paramètre n\'a donc pas besoin d\'être ajouté.';

  @override
  String get autoGen5315 =>
      'Réparer les plates-formes Intel de 3e génération et inférieures Les cartes graphiques sans pilote des séries AMD RX5XX (par exemple : RX560, RX570, RX580), AMD RX5XXX, RX6XXX (par exemple : RX5500, RX6600) ont un problème d\'écran noir dans les systèmes Ventura et supérieurs (Remarque : vous devez utiliser OCLP pour patcher la carte graphique après être entré dans le système ! Après avoir corrigé la carte graphique, supprimez le paramètre de démarrage ou utilisez l\'alternative config-after-post dans le répertoire EFI pour renommer la config, et redémarrer pour piloter la carte graphique !)';

  @override
  String get autoGen5316 =>
      'Correction des cartes graphiques AMD officiellement non prises en charge (par exemple : RX550 Lexa core) pour prendre en charge l\'encodage vidéo matériel VDA';

  @override
  String get autoGen5317 =>
      'Réparez l\'ancienne carte N de l\'architecture Fermi, Maxwell, Pascal (par exemple : GT610, GTX750, GTX960, GTX1050) Problème de pilote de carte graphique du système BigSur 11 ou supérieur (Remarque : vous devez utiliser OCLP pour patcher la carte graphique après être entré dans le système !!! Ce paramètre n\'est pas requis pour le noyau Kepler !!!)';

  @override
  String get autoGen5318 =>
      'Correction du problème de vitesse lente de certaines cartes réseau sans fil Broadcom (changez le code pays Broadcom WiFi en Hong Kong, vous pouvez également changer le canal du routeur pour l\'améliorer)';

  @override
  String get autoGen5319 =>
      'Correction du code de la baguette, problème de dommages au simulateur SMC';

  @override
  String get autoGen5320 =>
      'Résolvez le problème de mise à jour OTA du système macOS après avoir désactivé SIP (System Integrity Protection) ou SecureBootModel (modèle de sécurité), et corrigez le problème d\'affichage du nom du processeur personnalisé.';

  @override
  String get autoGen5321 =>
      'Évitez le problème du redémarrage de l\'appareil après être entré en mode veille, ce qui facilite l\'obtention des journaux de panne du noyau et la résolution des problèmes de veille.';

  @override
  String get autoGen5322 =>
      'Améliorez l\'identification et la planification de la topologie des processeurs Intel de 12e génération et versions ultérieures, grands et petits cœurs. L\'amélioration des performances n\'est pas garantie. Il est recommandé de l\'activer après des tests réels (notez qu\'il doit être utilisé avec CpuTopologyRebuild.kext pour prendre effet)';

  @override
  String get autoGen5323 =>
      'Désactivez complètement le mode Darkwake et laissez le système passer en mode veille traditionnel. Il est principalement utilisé pour réparer des problèmes tels que le réveil sur écran noir et le réveil automatique.';

  @override
  String get autoGen5324 =>
      'Désactivez la veille du rendu iGPU RC6 et résolvez le problème de panique du noyau NVMe provoqué par l\'affichage du noyau RC6 pendant le sommeil.';

  @override
  String get autoGen5325 =>
      'Activer le contrôle du rétroéclairage PWM pour les cartes graphiques AMD Radeon RX série 5000';

  @override
  String get autoGen5326 =>
      'Réparer et corriger l\'affichage de sortie de l\'interface DVI des anciennes cartes A (290X, 370, etc.)';

  @override
  String get autoGen5327 =>
      'Forcer l\'écran tactile de type I2C à fonctionner en mode d\'interrogation au lieu du mode piloté par interruption (le mode d\'interruption nécessite généralement un SSDT personnalisé, ce qui est relativement compliqué. Parfois, le problème de l\'inutilisabilité de l\'écran tactile I2C peut être résolu (il doit être utilisé avec le pilote VoodooI2C)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (Certaines cartes mères et certains micrologiciels peuvent avoir des conflits ou des problèmes d\'incompatibilité lors de la gestion de la zone MMIO. L\'activation de cette option peut aider à résoudre ces conflits et à améliorer la compatibilité et la stabilité du système. Cette option est généralement combinée avec la version OpenCore Debug pour personnaliser MMIO afin de résoudre l\'EB de carte causé par des problèmes de mémoire sur certaines cartes mères (par exemple : certaines cartes mères à processeur X58, X79, X99 et AMD 7000))';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (Il est recommandé de le vérifier sur un firmware qui ne prend pas en charge la table d\'attributs de mémoire (MAT), en particulier le firmware OEM. Après l\'avoir activé, la protection en écriture dans le registre CR0 sera supprimée lors de l\'exécution pour garantir une écriture normale de la NVRAM. Généralement applicable aux plates-formes antérieures à la 7ème génération)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (protège les services UEFI contre l\'écrasement par le micrologiciel, généralement utilisé pour réparer les problèmes d\'EB de carte causés par DevirtualiseMmio, etc. Il est recommandé de le vérifier pour les cartes mères Z390, Z490 et Ice Lake de 10e génération)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (établit une mémoire virtuelle continue pour l\'utilisation d\'OC et la mappe à la mémoire physique dispersée. Remarque : il n\'est pas recommandé de cocher cette option pour les cartes mères Comet Lake ASUS, Gigabyte et AsRock de 10e génération.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (Sur le micrologiciel qui prend en charge la table attributaire de mémoire (MAT), il est recommandé de le vérifier. Il est généralement utilisé conjointement avec SyncRuntimePermissions. Cet élément peut entrer en conflit avec EnableWriteUnprotector. Il est recommandé de choisir l\'un des deux. Il est généralement applicable aux plates-formes après la 8e génération et est également applicable à certaines anciennes plates-formes.)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (Résout le problème selon lequel le matériel ne peut pas injecter d\'autorisations lors de l\'injection de mémoire. Généralement, ce problème existe sur les cartes mères après 2018. Si vous ne pouvez pas accéder à Windows à cause de cette option, veuillez l\'activer. Cet élément est généralement utilisé conjointement avec RebuildAppleMemoryMap)';

  @override
  String get autoGen5334 =>
      'CPU de 2e génération - carte mère hybride de 3e génération';

  @override
  String get autoGen5335 =>
      'CPU de 3ème génération - Carte mère hybride de 2ème génération';

  @override
  String get autoGen5336 =>
      'Terminez l\'installation sans piloter l\'affichage principal pour le moment (cela peut éviter les problèmes d\'écran noir et de crash du noyau causés par le problème de cadre du tampon d\'affichage principal)';

  @override
  String get autoGen5337 => 'ID d\'appareil contrefait';

  @override
  String get autoGen5338 =>
      'L\'affichage principal n\'est utilisé que pour les tâches d\'accélération et de calcul, et non comme affichage de sortie (affichage de sortie de la carte graphique indépendant).';

  @override
  String get autoGen5339 => 'HD3000, HD P3000 et autres écrans principaux';

  @override
  String get autoGen5340 => 'HD4000, HD P4000 et autres écrans principaux';

  @override
  String get autoGen5341 =>
      'HD4400, HD4600, HD P4600 et autres écrans principaux';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 et autres écrans principaux';

  @override
  String get autoGen5343 =>
      'Écran principal HD5600 (P6200, P6300 peuvent être contrefaits)';

  @override
  String get autoGen5344 => 'HD6000, Iris 6100 et autres écrans principaux';

  @override
  String get autoGen5345 =>
      'HD520, HD530 et autres écrans HD620 contrefaits (applicables aux systèmes Ventura et supérieurs)';

  @override
  String get autoGen5346 =>
      'HD520, HD530 et autres écrans HD620 contrefaits (applicable aux systèmes Ventura et supérieurs, alternative)';

  @override
  String get autoGen5347 =>
      'HD530, HD P530 et autres écrans principaux de la série 500 (applicables aux systèmes Monterey et inférieurs)';

  @override
  String get autoGen5348 => 'HD 630, HD P630 et autres écrans principaux';

  @override
  String get autoGen5349 =>
      'HD 630, P630 et autres écrans UHD630 contrefaits (Option 1)';

  @override
  String get autoGen5350 =>
      'HD 630, P630 et autres écrans UHD630 contrefaits (option 2)';

  @override
  String get autoGen5351 =>
      'Solution de sortie d\'affichage nucléaire UHD 630 1';

  @override
  String get autoGen5352 => 'Boîtier de sortie d\'affichage de base UHD 630 2';

  @override
  String get autoGen5353 =>
      'Intel HD Graphics (par exemple : i3 380M, i5 480M est livré avec un écran principal intégré)';

  @override
  String get autoGen5354 =>
      'Affichage de sortie d\'affichage de base HD3000, adapté aux résolutions de 1366x768 et inférieures)';

  @override
  String get autoGen5355 =>
      'Activer la prise en charge des résolutions supérieures à 1600X900';

  @override
  String get autoGen5356 =>
      'Affichage de sortie d\'affichage nucléaire HD3000, adapté aux résolutions de 1600x900 et supérieures)';

  @override
  String get autoGen5357 =>
      'Solution de pilote d\'affichage de base HD4000, adaptée à une résolution de 1366x768 et inférieure, méthode de liaison LVDS';

  @override
  String get autoGen5358 =>
      'Solution de pilote d\'affichage de base HD4000 deux, adaptée au mode de liaison LVDS de résolution 1600x900 et supérieure, la sortie multi-écran peut nécessiter plus de configurations de correctifs)';

  @override
  String get autoGen5359 =>
      'Solution de pilote d\'affichage de base HD4000 trois, adaptée aux moniteurs avec connexion eDP)';

  @override
  String get autoGen5360 => 'Écran principal HD4200, HD4400, HD4600';

  @override
  String get autoGen5361 => 'Écran principal HD5000, HD5100, HD5200';

  @override
  String get autoGen5362 => 'Écran principal HD5500';

  @override
  String get autoGen5363 => 'Écran principal HD5600';

  @override
  String get autoGen5364 => 'Écran principal HD6000';

  @override
  String get autoGen5365 =>
      'HD520, HD530 et autres écrans HD620 contrefaits (pour les systèmes Ventura et supérieurs)';

  @override
  String get autoGen5366 =>
      'Écran principal HD 515, HD 520, HD 530, HD 540, HD 550, P530 (applicable aux systèmes Monterey et inférieurs)';

  @override
  String get autoGen5367 => 'Alternative à l\'écran nucléaire HD 515';

  @override
  String get autoGen5368 => 'Écran central HD 510';

  @override
  String get autoGen5369 =>
      'Écran principal HD 615, HD 620, HD 630, HD 640, HD 650';

  @override
  String get autoGen5370 => 'Alternative à l\'affichage central HD/UHD 620';

  @override
  String get autoGen5371 => 'Écran principal UHD 617, UHD 620';

  @override
  String get autoGen5372 => 'Écran central UHD 630';

  @override
  String get autoGen5373 => 'Écran central UHD 620';

  @override
  String get autoGen5374 => 'Écran central Intel lris Plus 655';

  @override
  String get autoGen5375 => 'Écran principal des séries G4/G7';

  @override
  String get autoGen5376 => 'Affichage de sortie d\'affichage nucléaire HD3000';

  @override
  String get autoGen5377 => 'Affichage de sortie d\'affichage nucléaire HD4000';

  @override
  String get autoGen5378 =>
      'HD4200, HD4400, HD4600, HD P4600 et autres écrans principaux (il est recommandé de vérifier le patch dédié à l\'écran principal de 4e génération dans la configuration avancée de l\'écran principal, et les problèmes mineurs qui peuvent survenir ont été résolus)';

  @override
  String get autoGen5379 => 'Écran central HD 515';

  @override
  String get autoGen5380 => 'Écran central HD 520/530';

  @override
  String get autoGen5381 => 'Écran central HD 540/550';

  @override
  String get autoGen5382 => 'Écran central HD 580';

  @override
  String get autoGen5383 =>
      'Écran principal HD P530 (tel que le e3 1245v5 est livré avec un écran principal intégré)';

  @override
  String get autoGen5384 => 'Écran central HD 615';

  @override
  String get autoGen5385 => 'Écran principal HD 630, HD P630';

  @override
  String get autoGen5386 => 'Écran central HD 640/650';

  @override
  String get autoGen5387 => 'Écran central HD/UHD 620';

  @override
  String get autoGen5388 => 'Écran central UHD 620/630';

  @override
  String get autoGen5389 => 'Écran central UHD 655';

  @override
  String get autoGen5390 =>
      'Renommez GPRW en XPRW pour résoudre le problème de réveil instantané (remarque : cela peut empêcher le clavier USB de réveiller l\'appareil, vous pouvez le réveiller via la touche d\'alimentation)';

  @override
  String get autoGen5391 =>
      'Renommez UPRW en XPRW pour résoudre le problème de réveil instantané (remarque : cela peut empêcher le clavier USB de réveiller l\'appareil, vous pouvez le réveiller via la touche d\'alimentation)';

  @override
  String get autoGen5392 =>
      'Activer les appareils GPI0 pour prendre en charge les trackpads I2C';

  @override
  String get autoGen5393 =>
      'Un pilote nécessaire pour les extensions du noyau macOS, qui assure principalement l\'évolutivité et la compatibilité pour macOS, ce qui permet à d\'autres développeurs d\'écrire des extensions de noyau pour étendre macOS.';

  @override
  String get autoGen5394 =>
      'Par exemple, WhichGreen, AppleALC, VirtualSMC, etc. peuvent implémenter diverses modifications et améliorations de macOS via Lilu.kext, telles que la prise en charge de différentes cartes graphiques, cartes son, gestion des machines virtuelles, etc.';

  @override
  String get autoGen5395 =>
      'Lilu.kext est généralement la première extension du noyau macOS chargée, car d\'autres plugins peuvent avoir besoin de s\'appuyer sur ses fonctionnalités. Cela garantit que le plugin se charge correctement au démarrage de macOS';

  @override
  String get autoGen5396 => 'Pilotes de base essentiels';

  @override
  String get autoGen5397 =>
      'Sur le matériel Apple réel, SMC est responsable de la gestion des fonctions de gestion du système telles que les capteurs matériels, le contrôle des ventilateurs, la gestion de l\'alimentation, les capteurs de température et l\'état de la batterie. VirtualSMC fournit ces fonctionnalités sur du matériel non Apple pour garantir que macOS puisse fonctionner correctement sur ces systèmes.';

  @override
  String get autoGen5398 =>
      'Souvent utilisé en conjonction avec d\'autres extensions du noyau telles que Lilu.kext, WhichGreen, etc. pour créer un environnement Mac quasi réel sur du matériel non Apple';

  @override
  String get autoGen5399 =>
      'Le pilote est manquant et macOS ne peut pas fonctionner correctement.';

  @override
  String get autoGen5400 =>
      'Il fournit principalement la prise en charge des pilotes graphiques GPU. Il est fortement recommandé de vérifier la plupart d\'entre eux (modèles MacPro7, 1 et RX460, RX560 et supérieurs, les utilisateurs de graphiques indépendants AMD peuvent supprimer la vérification). Il entre généralement en conflit avec les pilotes NootRX et NootedRed. Ne les sélectionnez pas en même temps lors de la phase d\'installation.';

  @override
  String get autoGen5401 =>
      'Prend en charge une variété de cartes graphiques, notamment les cartes graphiques NVIDIA, AMD et Intel. Cette extension peut corriger et configurer le Framebuffer correct afin que l\'affichage et la résolution fonctionnent correctement';

  @override
  String get autoGen5402 =>
      'Prend en charge les connexions HDMI et DisplayPort (DP) pour garantir le bon fonctionnement des sorties audio et vidéo';

  @override
  String get autoGen5403 =>
      'Utilisez AppleALC pour imiter la carte son intégrée (choix préféré relativement parfait)';

  @override
  String get autoGen5404 =>
      'Utilisez la carte son universelle VoodooHDA (chargée au démarrage, ne prend en charge que macOS BigSur 11.2.3 et versions antérieures. Les versions supérieures de macOS doivent ajouter ce pilote dans l\'extension du noyau du système pour prendre effet. Selon le test de l\'auteur, la prise en charge la plus élevée est la version officielle de macOS Tahoe 26.x)';

  @override
  String get autoGen5405 =>
      'Correctif de compatibilité du contrôleur USB 3.0 pour les anciennes plates-formes ou les plates-formes AMD';

  @override
  String get autoGen5406 =>
      'Résoudre le problème de redémarrage causé par la gestion de l\'alimentation du processeur des anciennes plates-formes antérieures à Intel de 3e génération (affiché comme journal de crash du noyau AppleIntelCPUPowerManagement, ou logo de démarrage bloqué, ou redémarrage juste après être entré dans le système, etc.)';

  @override
  String get autoGen5407 =>
      'Correction de la gestion de l\'alimentation du processeur de la série AMD Ryzen (applicable uniquement à la série AMD Ryzen, s\'il y a des problèmes de redémarrage causés par la gestion de l\'alimentation, vous pouvez envisager de décocher la case)';

  @override
  String get autoGen5408 =>
      'Solution d\'entraînement par batterie 1 (applicable aux ordinateurs portables de 3ème génération et plates-formes antérieures)';

  @override
  String get autoGen5409 =>
      'Solution d\'entraînement par batterie 2 (applicable aux ordinateurs portables de 3e génération et aux plates-formes plus récentes)';

  @override
  String get autoGen5410 =>
      'Capteur de lumière ambiante (luminosité automatique de l\'écran), si vous n\'avez pas de capteur de lumière ambiante, ne l\'utilisez pas, sinon cela pourrait poser des problèmes';

  @override
  String get autoGen5411 =>
      'Le contrôle du ventilateur de l\'ordinateur portable Asus, la gestion de l\'alimentation et d\'autres optimisations des capteurs du système, etc. ne sont pas recommandés pour une utilisation par des non-Asus.';

  @override
  String get autoGen5412 =>
      'Le contrôle du ventilateur des ordinateurs portables Lenovo, la gestion de l\'alimentation et d\'autres optimisations des capteurs du système, etc. ne sont pas recommandés pour les machines non Lenovo.';

  @override
  String get autoGen5413 =>
      'Capteur spécial pour ordinateurs portables Dell pour surveiller et contrôler plus précisément les ventilateurs. Non recommandé pour les machines non Dell.';

  @override
  String get autoGen5414 =>
      'Permet aux informations des capteurs des processeurs AMD (telles que la température, la consommation d\'énergie, la fréquence, etc.) d\'être exposées aux outils de surveillance macOS. Ce pilote prend en charge les processeurs de la série AMD Ryzen et certains processeurs de la série AMD FX. D\'autres processeurs AMD peuvent provoquer des problèmes inattendus. Dans le même temps, certaines plates-formes des systèmes Sequoia 15 et supérieurs peuvent avoir des problèmes de compatibilité, alors choisissez avec soin.';

  @override
  String get autoGen5415 =>
      'Utilisé pour prendre en charge RX6700, RX6750XT, RX6750GRE et d\'autres graphiques indépendants de la série RX6XXX officiellement non pris en charge. Il y a un conflit avec le pilote WhichGreen. Ne sélectionnez pas les deux au stade de l’installation.';

  @override
  String get autoGen5416 =>
      'Prend en charge Navi 21 (Big Sur et supérieur), Navi 22/23 (Monterey et supérieur), et prend également en charge RX6650, RX6950 et d\'autres cartes graphiques';

  @override
  String get autoGen5417 =>
      'L\'ajout de ce pilote lors de l\'installation de macOS pour la première fois peut entraîner l\'impossibilité d\'accéder au système. Il est recommandé de l\'ajouter une fois l\'installation terminée.';

  @override
  String get autoGen5418 =>
      'Résolvez le problème de lenteur causé par l\'affichage principal Edge et le navigateur Chrome des séries AMD Ryzen 2000 ~ 5000 qui ne désactivent pas l\'accélération matérielle (applicable uniquement à la série AMD Ryzen, réduisant principalement l\'utilisation du rendu OpenGL, l\'utilisation normale de QQ, le navigateur Chrome. L\'utilisation de ce pilote peut empêcher d\'autres applications de fonctionner correctement, prenez votre propre décision)';

  @override
  String get autoGen5419 =>
      'Réparation de la lecture de la batterie, résolution de certains problèmes d\'affichage de la batterie';

  @override
  String get autoGen5420 =>
      'Compatibilité améliorée avec les SSD NVMe non Apple et réduction de la consommation d\'énergie en veille';

  @override
  String get autoGen5421 =>
      'Les disques NVMe incompatibles sur liste noire de Samsung et d\'autres ne peuvent pas résoudre efficacement le problème de crash du délai d\'expiration';

  @override
  String get autoGen5422 =>
      'L\'utilisation de ce pilote avec un SSD NVMe offrant une bonne compatibilité peut provoquer un crash du noyau, utilisez-le donc avec prudence la plupart du temps.';

  @override
  String get autoGen5423 =>
      'Améliorez la possibilité de contourner ou de désactiver AMFI. Remarque : L\'ajout de ce pilote peut entraîner l\'échec de l\'ouverture ou le blocage de certaines applications. À ce stade, vous pouvez essayer de supprimer le pilote et utiliser uniquement les paramètres de démarrage AMFI désactivés (tels que amfi=0x80).';

  @override
  String get autoGen5424 =>
      'Correction du problème où les disques SSD NVMe étaient reconnus comme disques externes';

  @override
  String get autoGen5425 =>
      'Débloquez les commandes universelles, la navigation et d\'autres fonctions sur les Mac non pris en charge';

  @override
  String get autoGen5426 =>
      'Résoudre les problèmes courants liés à l’hibernation et au sommeil';

  @override
  String get autoGen5427 =>
      'Autoriser macOS à utiliser la fonction de partage de connexion d\'un appareil Android via une connexion USB';

  @override
  String get autoGen5428 =>
      'Pilote de fréquence variable du processeur, fournit principalement la prise en charge de la conversion de fréquence MacPro7,1 pour les plates-formes de 11e génération et supérieures';

  @override
  String get autoGen5429 =>
      'CPUFriend est équipé d\'un pilote de données pour fournir des données de conversion de fréquence CPU pour des modèles spécifiques.';

  @override
  String get autoGen5430 =>
      'Optimiser la taille du processeur et les configurations de base d\'Intel de 12e génération et versions ultérieures';

  @override
  String get autoGen5431 =>
      'Cela peut améliorer les performances monocœur, mais peut entraîner une diminution des performances multicœurs. Il s’applique uniquement aux plates-formes de 12e génération et supérieures.';

  @override
  String get autoGen5432 =>
      'Solution de synchronisation CPU TSC 1, généralement préférée';

  @override
  String get autoGen5433 =>
      'Couramment utilisé dans les plates-formes multicœurs X79, X99, X299 et AMD';

  @override
  String get autoGen5434 =>
      'Utilisé pour résoudre des problèmes tels qu\'un fonctionnement bloqué, un logo de démarrage bloqué, une synchronisation audio et vidéo anormale, un échec de réveil, etc.';

  @override
  String get autoGen5435 =>
      'Solution de synchronisation CPU TSC 2, généralement utilisée sur AMD Ryzen et certaines plateformes Intel';

  @override
  String get autoGen5436 =>
      'Utilisé pour résoudre des problèmes tels que des décalages de fonctionnement, des plantages occasionnels, des anomalies de synchronisation audio et vidéo, des échecs de réveil, etc.';

  @override
  String get autoGen5437 =>
      'Résoudre le problème de synchronisation de l\'horloge multicœur du processeur de la plate-forme AMD Ryzen (applicable uniquement à la série AMD Ryzen, utilisé pour résoudre des problèmes tels que le décalage de fonctionnement, le logo de démarrage bloqué, etc. L\'ajout de ce pilote peut entraîner des problèmes inattendus, choisissez avec soin)';

  @override
  String get autoGen5438 =>
      'Solution de synchronisation CPU TSC trois, généralement utilisée sur les anciennes plates-formes Intel et les anciens systèmes macOS';

  @override
  String get autoGen5439 =>
      'Convient aux X79, X99, X299 multicœurs et à d\'autres plates-formes, utilisé pour résoudre des problèmes tels que le décalage de fonctionnement et le logo de démarrage bloqué';

  @override
  String get autoGen5440 =>
      'Correction de quelques problèmes audio HDMI avec Intel Core Display';

  @override
  String get autoGen5441 =>
      'Résoudre le problème de l\'impossibilité de se connecter à l\'identifiant Apple et à iCloud, généralement utilisés pour les ordinateurs portables sans carte réseau filaire locale';

  @override
  String get autoGen5442 =>
      'Résolvez les conflits entre la nouvelle plate-forme macOS AppleRTC et le BIOS du PC, tels que le RTC provoquant des blocages, des redémarrages soudains ou des sorties soudaines de l\'hibernation.';

  @override
  String get autoGen5443 =>
      'Pilote de clavier et de souris de type interface PS (pilote de clavier et de souris à port rond PS de carte mère de bureau)';

  @override
  String get autoGen5444 =>
      'Pilote de clavier de type interface PS (pilote de clavier à port rond PS de carte mère de bureau)';

  @override
  String get autoGen5445 =>
      'Pilote de souris de type interface PS (pilote de souris à port rond PS de carte mère de bureau)';

  @override
  String get autoGen5446 =>
      'Pilote du pavé tactile du clavier dédié Microsoft Surface';

  @override
  String get autoGen5447 =>
      'Correction de la touche de raccourci de luminosité';

  @override
  String get autoGen5448 =>
      'Optimisez les performances de la carte graphique AMD Radeon, mais certains scénarios peuvent provoquer un crash ou un échec de démarrage du système, alors vérifiez attentivement';

  @override
  String get autoGen5449 =>
      'Autoriser RadeonGadget.app à lire la température du GPU de la carte graphique AMD et d\'autres informations';

  @override
  String get autoGen5450 =>
      'Exportez la température du GPU AMD et d\'autres informations vers VirtualSMC pour que les outils de surveillance puissent les lire';

  @override
  String get autoGen5451 =>
      'Correction de problèmes de compatibilité du contrôleur USB sur les anciennes plates-formes telles que AMD FM1/FM2/AM3';

  @override
  String get autoGen5452 =>
      'Solution d\'injection USB universelle, le choix par défaut lorsque l\'USB n\'est pas personnalisé';

  @override
  String get autoGen5453 =>
      'Solution USBToolBox, généralement utilisée avec UTBMap.kext personnalisé';

  @override
  String get autoGen5454 =>
      'Résoudre le problème USB3.0 sur les plates-formes Intel de 3e génération et mises à jour ultérieures (requis pour les chipsets de la série 300 (H370, B360, H310, Z390 [non requis pour les systèmes 10.14 et supérieurs], X79, X99, cartes mères ASRock Intel [sauf B460/Z490+])';

  @override
  String get autoGen5455 =>
      'Résoudre les problèmes de compatibilité EHCI USB2.0 sur AMD FM1, FM2, AM3 et autres anciennes plates-formes';

  @override
  String get autoGen5456 =>
      'Résoudre les problèmes de compatibilité XHCI USB3.0 sur AMD FM1, FM2, AM3 et autres anciennes plates-formes';

  @override
  String get autoGen5457 =>
      'Correction de la gestion de l\'alimentation du processeur des systèmes Intel de 3e génération et des plates-formes antérieures Ventura 13 et supérieures';

  @override
  String get autoGen5458 =>
      'Pilote de lecteur de carte SD série Realtek (utilisé avec RealtekCardReaderFriend)';

  @override
  String get autoGen5459 =>
      'Pilote de prise en charge RealtekCardReader pour améliorer la compatibilité du lecteur de carte Realtek';

  @override
  String get autoGen5460 =>
      'Pilote de périphérique de carte mémoire SDHC, prend en charge les cartes mémoire eMMC et MMC';

  @override
  String get autoGen5461 => 'Pilote de carte réseau filaire 100M';

  @override
  String get autoGen5462 =>
      'Prise en charge des cartes réseau RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139';

  @override
  String get autoGen5463 =>
      'Habituellement utilisé pour les anciennes plates-formes traditionnelles';

  @override
  String get autoGen5464 => 'Pilote de carte réseau Gigabit';

  @override
  String get autoGen5465 =>
      'Supporte Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V et autres cartes réseau';

  @override
  String get autoGen5466 => 'Pilote de carte réseau filaire Gigabit';

  @override
  String get autoGen5467 =>
      'Prend en charge BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M et autres cartes réseau';

  @override
  String get autoGen5468 =>
      'Prend en charge AR8131, AR8132, AR8151, AR8152 et autres cartes réseau';

  @override
  String get autoGen5469 =>
      'Prend en charge Realtek RTL8111/8168 B/C/D/E/F/G/H, prend en charge les cartes réseau Killer E2500 et supérieures.';

  @override
  String get autoGen5470 =>
      'La nouvelle version du pilote RealtekRTL8111 ne peut prendre en charge que les systèmes 10.13.x et supérieurs.';

  @override
  String get autoGen5471 =>
      'Prend en charge AR816x, AR817x, Killer E220x, Killer E2400 et autres cartes réseau';

  @override
  String get autoGen5472 =>
      'Pilote de carte réseau filaire Gigabit (support 2,5G)';

  @override
  String get autoGen5473 =>
      'Prend en charge tous les appareils compatibles IGC (i225, i226, i226-V et autres cartes réseau filaires). L\'ID PCI de certains périphériques peut ne pas figurer dans la liste IOPCIMatch. Ajoutez-le vous-même pour tester.';

  @override
  String get autoGen5474 =>
      'Comparé au pilote AppleEthernetE1000, il offre de meilleures performances et stabilité (i226-V peut provoquer une panique du noyau lors de l\'utilisation d\'AppleEthernetE1000 dans le système Monterey).';

  @override
  String get autoGen5475 =>
      'Prend en charge les cartes réseau Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 et i211.';

  @override
  String get autoGen5476 =>
      'Il peut y avoir des problèmes d\'instabilité, il est recommandé de rester dans la version Big Sur et d\'utiliser SmallTree';

  @override
  String get autoGen5477 =>
      'Généralement applicable aux systèmes macOS Monterey 12 et versions ultérieures';

  @override
  String get autoGen5478 =>
      'Prise en charge des processeurs Intel série 5 : 82578LM, 82578LC, 82578DM, 82578DC';

  @override
  String get autoGen5479 =>
      'Prise en charge des séries Intel 6 et 7 : 82579LM, 82579V';

  @override
  String get autoGen5480 =>
      'Prise en charge des séries Intel 8 et 9 : I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3';

  @override
  String get autoGen5481 =>
      'Prise en charge des séries Intel 100 : I219V, I219LM, I219V2, I219LM2, I219LM3';

  @override
  String get autoGen5482 =>
      'Prise en charge de la série Intel 200 : I219LM, I219V';

  @override
  String get autoGen5483 =>
      'Prise en charge de la série Intel 300 : I219LM, I219V';

  @override
  String get autoGen5484 =>
      'Le chauffeur est entretenu par acidanthera. OS X 10.6 ~ 10.8 utilise IntelSnowMausi';

  @override
  String get autoGen5485 =>
      'Ce chauffeur est fourni par Laura Müller. OS X 10.6 ~ 10.8 utilise IntelSnowMausi';

  @override
  String get autoGen5486 =>
      'Ancien pilote RTL8125, prend en charge les cartes Ethernet de la série Realtek RTL8125';

  @override
  String get autoGen5487 =>
      'Pilote de carte réseau filaire Gigabit (prend en charge 2,5G, 5G)';

  @override
  String get autoGen5488 =>
      'Nouveau pilote pour RTL812x, prend en charge les cartes Ethernet Realtek RTL8125, RTL8126';

  @override
  String get autoGen5489 =>
      'Modèles pris en charge : RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A';

  @override
  String get autoGen5490 =>
      'Prend en charge la carte réseau filaire Intel i211, ce modèle est courant sur les cartes mères AMD';

  @override
  String get autoGen5491 =>
      'Généralement applicable à macOS Big Sur et versions antérieures, macOS Monterey peut être instable';

  @override
  String get autoGen5492 => 'Compatibilité : système d\'exploitation';

  @override
  String get autoGen5493 => 'Pilote de carte réseau filaire 10G (support 10G)';

  @override
  String get autoGen5494 => 'Prend en charge Intel X520,';

  @override
  String get autoGen5495 =>
      'Prend uniquement en charge les systèmes macOS 10.13 et supérieurs';

  @override
  String get autoGen5496 =>
      'Il est recommandé de désactiver WoL dans les paramètres BIOS UEFI';

  @override
  String get autoGen5497 =>
      'Correction du problème où l\'utilitaire de disque ne reconnaît pas les disques SATA lors de l\'installation des systèmes Catalina 10.15 et versions antérieures.';

  @override
  String get autoGen5498 =>
      'Correction du problème où l\'Utilitaire de disque ne reconnaît pas les disques SATA pendant le processus d\'installation des systèmes Big Sur 11 et versions ultérieures.';

  @override
  String get autoGen5499 =>
      'Résoudre les problèmes de compatibilité liés à la plateforme AMD Adobe Family Bucket';

  @override
  String get autoGen5500 =>
      'Prend en charge macOS High Sierra 10.13 ~ macOS Tathoe 26.x (généralement utilisé avec le client HeliPort)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (Remarque : le système Sequoia 15 doit être corrigé avec la version modifiée spécifique à Intel OCLP avant de pouvoir être utilisé normalement !!!)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4 et supérieur';

  @override
  String get autoGen5503 =>
      'Résout principalement certains problèmes de périphériques Bluetooth (applicables à certains périphériques Broadcom et autres périphériques Bluetooth USB)';

  @override
  String get autoGen5504 =>
      'Qualcomm WiFi, prend en charge macOS Big Sur 11.x et versions antérieures';

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
      'Désactivez Touch ID pour réduire le gaspillage des ressources système et améliorer la stabilité';

  @override
  String get autoGen5512 =>
      'Convient généralement aux ordinateurs portables avec reconnaissance d\'empreintes digitales et sous macOS Big Sur 11';

  @override
  String get autoGen5513 =>
      'La stratégie TRIM est configurée par défaut (c\'est-à-dire SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1. Le système APFS effectue des opérations TRIM en fonction du délai d\'expiration TRIM par défaut de macOS, qui s\'applique à la plupart des SSD prenant en charge TRIM.';

  @override
  String get autoGen5515 =>
      '2. Sur les SSD prenant en charge TRIM, macOS gère automatiquement l\'exécution de TRIM, ce qui permet de nettoyer les blocs de données supprimés, rendant l\'écriture SSD plus efficace, évitant une amplification d\'écriture fréquente et améliorant la vitesse d\'écriture.';

  @override
  String get autoGen5516 =>
      '3.TRIM nettoiera régulièrement les blocs inutilisés pour réduire l\'usure du SSD, prolongeant ainsi la durée de vie du SSD.';

  @override
  String get autoGen5517 =>
      '4. Certains disques SSD tiers qui ne prennent pas entièrement en charge TRIM peuvent connaître des retards, voire des blocages, lors de l\'exécution de TRIM, ce qui ralentit considérablement le processus de démarrage.';

  @override
  String get autoGen5518 =>
      'Désactivez complètement la fonctionnalité TRIM (c\'est-à-dire définissez SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => 'Avantages de la désactivation de TRIM :';

  @override
  String get autoGen5520 =>
      '1. Améliorez la vitesse de démarrage. Pour les disques SSD tiers qui ne prennent pas en charge ou partiellement TRIM, macOS peut entraîner des retards en raison des tentatives d\'opérations TRIM au démarrage. La désactivation de TRIM peut éliminer ce délai et améliorer la vitesse de démarrage.';

  @override
  String get autoGen5521 =>
      '2. Améliorer la compatibilité. Certains SSD peu compatibles peuvent réduire les risques de plantages anormaux.';

  @override
  String get autoGen5522 =>
      '3. Prolongez la durée de vie des SSD non TRIM. Sur les disques SSD qui ne prennent pas en charge TRIM, l\'activation forcée de TRIM peut accélérer l\'usure et affecter la durée de vie. La désactivation de TRIM peut prolonger la durée de vie de ces SSD.';

  @override
  String get autoGen5523 => 'Inconvénients de la désactivation de TRIM :';

  @override
  String get autoGen5524 =>
      '1. Les performances du SSD diminuent. Certains disques SSD ne disposent pas du mécanisme de récupération de place TRIM. Le SSD ne peut pas nettoyer et marquer les blocs libres à temps après la suppression des données, ce qui peut ralentir la vitesse d\'écriture.';

  @override
  String get autoGen5525 =>
      '2. L\'efficacité de la gestion de l\'espace disque est réduite. Après l\'avoir désactivé, le contrôleur SSD nécessite plus de temps et de ressources pour le garbage collection, ce qui peut entraîner une fragmentation accrue et une efficacité réduite de la gestion de l\'espace.';

  @override
  String get autoGen5526 =>
      '3. Raccourcissez la durée de vie du SSD. Pour les SSD prenant en charge TRIM, après avoir désactivé TRIM, le SSD ne peut pas optimiser le processus d\'écriture, ce qui augmentera l\'usure des blocs de stockage, raccourcissant ainsi la durée de vie du SSD prenant en charge TRIM.';

  @override
  String get autoGen5527 =>
      'Bien que la désactivation de TRIM puisse améliorer la vitesse de démarrage, pour les SSD modernes prenant en charge TRIM, il est recommandé de laisser TRIM activé pour des performances et une stabilité à long terme. Cette augmentation de vitesse est généralement faible et n\'aura un effet significatif que sur certains SSD incompatibles.';

  @override
  String get autoGen5528 =>
      'Pilote de fréquence variable du processeur, fournit ici principalement la prise en charge de la fréquence variable MacPro7,1 de 11e à 14e génération';

  @override
  String get autoGen5529 =>
      'Lecteur de carte SD Realtek et son pilote de support';

  @override
  String get autoGen5530 =>
      'Convient aux anciennes plates-formes de 3ème génération et inférieures, aux périphériques d\'entrée connectés sur la base du protocole de bus PS/2, tels que le clavier, la souris, le pavé tactile, etc. Il peut réaliser un certain degré de fonction multi-touch, mais la prise en charge est limitée.';

  @override
  String get autoGen5531 =>
      'Convient aux plates-formes de 3ème génération et supérieures, aux périphériques d\'entrée connectés sur la base du protocole de bus PS/2, tels que le clavier, la souris, le pavé tactile, etc. Fournit la prise en charge du pavé tactile PS/2 via un sous-pilote et peut atteindre un certain degré de fonction multi-touch, mais la prise en charge est limitée.';

  @override
  String get autoGen5532 =>
      'Le clavier PS2 convient aux pavés tactiles, écrans tactiles, capteurs et autres périphériques d\'entrée connectés sur la base du protocole de bus I2C. Fournit une prise en charge des gestes multi-touch pour simuler l’expérience tactile native de macOS.';

  @override
  String get autoGen5533 =>
      'Clavier PS2, adapté au pavé tactile Synaptics connecté sur la base du protocole de bus de protocole RMI4. Concentrez-vous sur une meilleure prise en charge des appareils Synaptics, en offrant des capacités multi-touch et gestuelles similaires au pavé tactile natif de macOS.';

  @override
  String get autoGen5534 =>
      'Clavier PS2, adapté aux appareils tactiles basés sur le bus I2C et aux pavés tactiles Synaptics utilisant le protocole RMI4. RMII2C combine les avantages de VoodooI2C et VoodooRMI.';

  @override
  String get autoGen5535 =>
      'Pilote de clavier et de souris rond basé sur la connexion du protocole de bus PS/2';

  @override
  String get autoGen5536 =>
      'Combinaison de clavier, pavé tactile et pilote d\'écran tactile dédiés Microsoft Surface.';

  @override
  String get autoGen5537 =>
      'Error 500 (Server Error)!!1500.That’s an error.There was an error. Please try again later.That’s all we know.';

  @override
  String get autoGen5538 =>
      'Les cartes sans pilote Apple AirPort et Fenvi, Ventura et versions antérieures sont sans pilote, et le patch prend en charge Sonoma 14 et Sequoia 15 ! Remarque : les systèmes Sonoma 14 et supérieurs doivent être corrigés avec OCLP avant de pouvoir être utilisés normalement ! ! !';

  @override
  String get autoGen5539 => 'Série Broadcom BCM943XX sans pilote';

  @override
  String get autoGen5540 =>
      'Les cartes autres qu\'Apple AirPort et Fenvi, Catalina et versions antérieures sont sans pilote, et le patch prend en charge Sonoma 14 et Sequoia 15 ! Remarque : les systèmes Sonoma 14 et supérieurs doivent être corrigés avec OCLP avant de pouvoir être utilisés normalement ! ! !';

  @override
  String get autoGen5541 => 'Ancien Broadcom BCM4331';

  @override
  String get autoGen5542 =>
      'Notez que les systèmes Monterey 12 ou supérieur doivent utiliser le correctif OCLP avant de pouvoir être utilisés normalement ! ! !';

  @override
  String get autoGen5543 => 'Ancien Broadcom BCM43224';

  @override
  String get autoGen5544 => 'Pilote de modèle WiFi Qualcomm (Atheros)';

  @override
  String get autoGen5545 => 'Option manuelle Wi-Fi Qualcomm';

  @override
  String get autoGen5546 =>
      'Qualcomm (Atheros) WiFi Big Sur et dépendances suivantes';

  @override
  String get autoGen5547 =>
      'Les systèmes macOS Big Sur 11 et versions antérieures utilisent HS80211Family pour correspondre à des pilotes de modèles spécifiques';

  @override
  String get autoGen5548 =>
      'Qualcomm (Atheros) WiFi Monterey et dépendances supérieures';

  @override
  String get autoGen5549 =>
      'Les systèmes macOS Monterey 12 et versions ultérieures utilisent la combinaison IO80211ElCap';

  @override
  String get autoGen5550 =>
      'Correction d\'un problème de reconnaissance de la batterie dans les « Préférences Système » pour les séries Surface Pro 7 et Book 3';

  @override
  String get autoGen5551 =>
      'Correction du problème d\'erreur POST lors du démarrage de l\'horloge temps réel de certains ordinateurs de marque HP.';

  @override
  String get autoGen5552 =>
      'Désactivez le plan de réveil RTC et résolvez le problème du réveil automatique après le sommeil';

  @override
  String get autoGen5553 => 'Plateforme génération 0-Penryn-775';

  @override
  String get autoGen5554 => 'Plateforme Génération 1-Lynnfield-1156';

  @override
  String get autoGen5555 => 'Plateforme Sandy Bridge-1155 de 2e génération';

  @override
  String get autoGen5556 => 'Plateforme Ivy Bridge-1155 de 3e génération';

  @override
  String get autoGen5557 => 'Plateforme Haswell-1150 de 4e génération';

  @override
  String get autoGen5558 => 'Plateforme Broadwell-1150 de 5e génération';

  @override
  String get autoGen5559 => 'Plateforme Skylake-1151 de 6e génération';

  @override
  String get autoGen5560 => 'Plateforme Kaby Lake-1151 de 7e génération';

  @override
  String get autoGen5561 => 'Plateforme Coffee Lake-1151 de 8e génération';

  @override
  String get autoGen5562 => 'Plateforme Coffee Lake-1151 de 9e génération';

  @override
  String get autoGen5563 => 'Plateforme Comet Lake-1200 de 10e génération';

  @override
  String get autoGen5564 => 'Plateforme Rocket Lake-1200 de 11e génération';

  @override
  String get autoGen5565 => 'Plateforme Alder Lake-1700 de 12e génération';

  @override
  String get autoGen5566 => 'Plateforme Raptor Lake-1700 de 13e génération';

  @override
  String get autoGen5567 =>
      'Plateforme Raptor Lake Refresh-1700 de 14e génération';

  @override
  String get autoGen5568 => 'Plateforme Arrow Lake-1851 de 15e génération';

  @override
  String get autoGen5569 => 'Génération 0-Penryn-Cahier';

  @override
  String get autoGen5570 => '1ère génération-Clarksfield&Arrandale-Notebook';

  @override
  String get autoGen5571 => 'Ordinateur portable Sandy Bridge de 2e génération';

  @override
  String get autoGen5572 => 'Ordinateur portable Ivy Bridge de 3e génération';

  @override
  String get autoGen5573 => 'Ordinateur portable Haswell de 4e génération';

  @override
  String get autoGen5574 => 'Ordinateur portable Broadwell de 5e génération';

  @override
  String get autoGen5575 => 'Ordinateur portable Skylake de 6e génération';

  @override
  String get autoGen5576 => 'Carnet Kaby Lake de 7e génération';

  @override
  String get autoGen5577 => 'Carnet de notes Coffee Lake de 8e génération';

  @override
  String get autoGen5578 => '9ème génération-Coffee Lake-Cahier';

  @override
  String get autoGen5579 => 'Ordinateur portable Comet Lake de 10e génération';

  @override
  String get autoGen5580 => 'Ordinateur portable Ice Lake de 10e génération';

  @override
  String get autoGen5581 => 'Ordinateur portable Tiger Lake de 11e génération';

  @override
  String get autoGen5582 => 'Carnet Alder Lake de 12e génération';

  @override
  String get autoGen5583 => 'Carnet Raptor Lake de 13e génération';

  @override
  String get autoGen5584 => 'Carnet Raptor Lake Refresh de 14e génération';

  @override
  String get autoGen5585 => 'Génération 0-Penryn-mini hôte';

  @override
  String get autoGen5586 => '1ère génération-Clarksfield&Arrandale-mini hôte';

  @override
  String get autoGen5587 => 'Mini hôte Sandy Bridge de 2e génération';

  @override
  String get autoGen5588 => 'Mini hôte Ivy Bridge de 3e génération';

  @override
  String get autoGen5589 => 'Mini hôte Haswell de 4e génération';

  @override
  String get autoGen5590 => 'Mini hôte Broadwell de 5e génération';

  @override
  String get autoGen5591 => 'Mini hôte Skylake de 6e génération';

  @override
  String get autoGen5592 => 'Mini hôte Kaby Lake de 7e génération';

  @override
  String get autoGen5593 => 'Mini-hôte Coffee Lake de 8e génération';

  @override
  String get autoGen5594 => 'Mini-hôte Coffee Lake de 9e génération';

  @override
  String get autoGen5595 => 'Mini hôte Comet Lake de 10e génération';

  @override
  String get autoGen5596 => 'Mini hôte Ice Lake de 10e génération';

  @override
  String get autoGen5597 => 'Mini-hôte Tiger Lake de 11e génération';

  @override
  String get autoGen5598 => 'Mini hôte Alder Lake de 12e génération';

  @override
  String get autoGen5599 => 'Mini-hôte Raptor Lake de 13e génération';

  @override
  String get autoGen5600 => 'Mini-hôte Raptor Lake Refresh de 14e génération';

  @override
  String get autoGen5601 => 'Plateforme Génération 1-Nehalem&Westmere-X58';

  @override
  String get autoGen5602 => 'Plateforme Sandy Bridge-E-X79 de 2e génération';

  @override
  String get autoGen5603 => 'Plateforme Ivy Bridge-E-X79 de 3e génération';

  @override
  String get autoGen5604 => 'Plateforme Haswell-E-X99 de 4e génération';

  @override
  String get autoGen5605 => 'Plateforme Broadwell-E-X99 de 5e génération';

  @override
  String get autoGen5606 => 'Plateforme Skylake-X&W-X299 de 6ème génération';

  @override
  String get autoGen5607 => 'Plateforme Cascade Lake-X&W de 10e génération';

  @override
  String get autoGen5608 => 'Bulldozer(15h) et Jaguar(16h)-Cahier';

  @override
  String get autoGen5609 => 'Ryzen-ordinateur portable';

  @override
  String get autoGen5610 => 'Bulldozer(15h) et Jaguar(16h)-mini animateur';

  @override
  String get autoGen5611 => 'Ryzen-mini hôte';

  @override
  String get autoGen5612 => 'Ryzen et Threadripper(17h et 19h)-Serveur';

  @override
  String get autoGen5613 => 'test';

  @override
  String get autoGen5614 => 'test NVRAM';

  @override
  String get autoGen5615 => 'Impossible d\'obtenir le répertoire personnel';

  @override
  String get autoGen5616 => 'Le répertoire source n\'existe pas';

  @override
  String get autoGen5617 => 'Impossible d\'obtenir le répertoire du bureau';

  @override
  String get autoGen5618 =>
      'La vérification du chemin échoue et renvoie un chemin vide';

  @override
  String get autoGen5619 =>
      'Échec de l\'obtention des informations du fichier plist et le résultat renvoyé était incomplet.';

  @override
  String get autoGen5620 =>
      'REMARQUE : NormalizeHeaders est activé et l\'ID de la table contient des caractères non imprimables !';

  @override
  String get autoGen5621 =>
      'Remarque : NormalizeHeaders n\'est pas activé et l\'ID de la table contient le caractère « ? » !';

  @override
  String get autoGen5622 => 'Aucun fichier config.plist cible sélectionné !';

  @override
  String get autoGen5623 =>
      '=> Impossible de déterminer le type de config.plist !';

  @override
  String get autoGen5624 => '=> Table SSDT introuvable ! franchir...';

  @override
  String get autoGen5625 => '=> Table SSDT en double introuvable !';

  @override
  String get autoGen5626 => '=> Patch introuvable ! franchir...';

  @override
  String get autoGen5627 => '=> Patch en double introuvable !';

  @override
  String get autoGen5628 => '=> Patch de dépôt introuvable ! franchir...';

  @override
  String get autoGen5629 => '=> Patch Drop en double introuvable !';

  @override
  String get autoGen5630 =>
      '=> Aucune configuration Quirks trouvée qui doit être mise à jour ! franchir...';

  @override
  String get autoGen5631 =>
      '=> Vérification de la configuration des Quirks cibles...';

  @override
  String get autoGen5632 => 'Sauvegarde du fichier de configuration actuel...';

  @override
  String get autoGen5633 => 'Préparation de la copie des fichiers SSDT...';

  @override
  String get autoGen5634 => 'Configuration enregistrée avec succès !';

  @override
  String get autoGen5635 => 'La fusion est terminée !';

  @override
  String get autoGen5636 => 'La fusion a échoué !';

  @override
  String get autoGen5637 =>
      'Remarque : Des erreurs potentielles sont détectées lors du processus de fusion, veuillez les vérifier et les corriger !';

  @override
  String get autoGen5638 =>
      'Remarque : La configuration actuelle n\'est pas configurée pour remplacer le mode EFI cible !';

  @override
  String get autoGen5639 =>
      'Vous devez effectuer les opérations suivantes manuellement :';

  @override
  String get autoGen5640 => 'Élément du dictionnaire racine introuvable';

  @override
  String get autoGen5641 =>
      'Élimine les conflits IRQ, souvent utilisés pour les réparations de cartes son';

  @override
  String get autoGen5642 =>
      '• HPET (High Precision Event Timer) est un module matériel utilisé pour la synchronisation du système.\n• Sous macOS, certains périphériques HPET de la carte mère peuvent provoquer des conflits IRQ (demande d\'interruption), qui affecteront le fonctionnement normal du périphérique audio, rendant le système instable, voire incapable de démarrer.\n• Ce correctif ajuste les définitions de périphériques ACPI liées à HPET pour éviter les conflits IRQ, garantir que macOS peut utiliser correctement les minuteries HPET, résoudre les problèmes de carte son et améliorer la stabilité du système.';

  @override
  String get autoGen5643 =>
      'Contrefaire EC et injecter des attributs d\'alimentation USB (applicable aux ordinateurs de bureau Intel de 6e génération et supérieur)';

  @override
  String get autoGen5644 =>
      '• Applicable aux ordinateurs de bureau Intel de 6e génération et supérieur\n• Ce correctif désactivera le périphérique EC d\'origine du système, puis créera un périphérique EC virtuel pour « tromper » macOS en lui faisant croire qu\'un EC compatible existe, résolvant ainsi les problèmes de démarrage causés par des périphériques EC manquants. \n• Ajout des propriétés d\'alimentation USB nécessaires pour résoudre les problèmes potentiels. Equivalent pour fusionner : SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'Uniquement des contrefaçons d\'EC, n\'affecte pas les EC existants et injecte des attributs d\'alimentation USB en même temps (applicable aux ordinateurs portables Intel de 6e génération et supérieurs)';

  @override
  String get autoGen5646 =>
      '• Applicable aux ordinateurs portables Intel de 6e génération et supérieur\n• Adapté aux ordinateurs portables, il ne supprime ni ne modifie l\'EC existant, mais crée un nouvel EC virtuel séparément pour éviter d\'endommager le périphérique EC d\'origine et prévenir les anomalies fonctionnelles telles que la gestion de l\'alimentation de l\'ordinateur portable et le rétroéclairage du clavier.\n• Ajout des propriétés d\'alimentation USB nécessaires pour résoudre les problèmes potentiels. Equivalent pour fusionner : SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 =>
      'Contrefaçon EC (applicable aux ordinateurs de bureau Intel de 5e génération et inférieurs)';

  @override
  String get autoGen5648 =>
      '• Convient aux ordinateurs de bureau Intel de 5e génération et inférieurs\n• Ce correctif désactivera le périphérique EC d\'origine du système, puis créera un périphérique EC virtuel pour « tromper » macOS en lui faisant croire qu\'un EC compatible existe, résolvant ainsi les problèmes de démarrage causés par des périphériques EC manquants.';

  @override
  String get autoGen5649 =>
      'Uniquement les EC contrefaits, n\'affectent pas les EC existants (applicable aux ordinateurs portables Intel de 5e génération et inférieurs)';

  @override
  String get autoGen5650 =>
      '• Applicable aux ordinateurs portables Intel de 5e génération et inférieurs\n• Il ne supprime ni ne modifie l\'EC existant, mais crée un nouvel EC virtuel séparément pour éviter d\'endommager le périphérique EC d\'origine et prévenir les anomalies fonctionnelles telles que la gestion de l\'alimentation de l\'ordinateur portable et le rétroéclairage du clavier.';

  @override
  String get autoGen5651 =>
      'Correction des attributs d\'alimentation USB (applicable aux plates-formes Intel de 6e génération et plus récentes)';

  @override
  String get autoGen5652 =>
      '• Applicable à Intel Skylake 6e génération et supérieur, serveur Haswell-E 4e génération et supérieur, AMD Ryzen et autres plates-formes\n• À partir d\'Intel Skylake et des processeurs plus récents, macOS nécessite des propriétés d\'alimentation USB spécifiques pour garantir que les périphériques USB sont correctement alimentés et reconnus.\n• Ce correctif corrige la gestion de l\'alimentation des ports USB pour se conformer aux exigences de macOS et résout des problèmes tels qu\'une reconnaissance anormale des périphériques USB, une alimentation électrique insuffisante et l\'impossibilité de le brancher à chaud.\n• Pour les ordinateurs portables : SSDT-EC-LAPTOP.aml + SSDT-USBX.aml La combinaison des deux est équivalente à SSDT-EC-USBX-LAPTOP.aml\n• Pour ordinateur de bureau : SSDT-EC-DESKTOP.aml + SSDT-USBX.aml La combinaison des deux est équivalente à SSDT-EC-USBX-DESKTOP.aml';

  @override
  String get autoGen5653 =>
      'Identification du cœur du processeur, permettant le réglage de la fréquence et la correction des économies d\'énergie';

  @override
  String get autoGen5654 =>
      '• SSDT-PLUG convient aux plates-formes Intel Haswell 4ème génération ~ 11ème génération, serveur Haswell-E 4ème génération et supérieures (lors de la personnalisation de SSDT-PLUG, l\'outil le détecte et le génère automatiquement !)\n• SSDT-PLUG-ALT convient à Intel Alder Lake 12e génération et au-dessus, et à la plate-forme AMD Ryzen (lors de la personnalisation de SSDT-PLUG, l\'outil le détecte et le génère automatiquement et le renomme en SSDT-PLUG-ALT !)\n• macOS s\'appuie sur le plug-in de gestion de l\'alimentation du processeur (PluginType) pour ajuster la fréquence du processeur et améliorer l\'efficacité énergétique et la durée de vie de la batterie.\n• Ce correctif modifiera la définition du processeur afin que macOS pense qu\'il s\'agit d\'un processeur de type plugin = 1 requis par les appareils Apple, chargeant ainsi correctement la gestion de la fréquence du processeur et améliorant les performances et le contrôle de la consommation d\'énergie.';

  @override
  String get autoGen5655 =>
      'Activer la prise en charge de la NVRAM (généralement pour les cartes mères Intel natives de la série 300)';

  @override
  String get autoGen5656 =>
      '• Applicable aux plates-formes Intel Coffee Lake de 8e et 9e génération\n• Les cartes mères natives de la série 300 (telles que Z370, B360) peuvent ne pas utiliser correctement la NVRAM sous macOS, ce qui entraîne la non-enregistrement de certaines fonctions (telles que iMessage, mémoire de volume, paramètres de démarrage, etc.).\n• Ce patch active le PMC (Power Management Controller) de la carte mère, permettant à macOS d\'utiliser normalement la NVRAM native sans avoir besoin d\'un pilote EmuVariableUEFI supplémentaire.';

  @override
  String get autoGen5657 =>
      'Ajoutez un périphérique PNLF pour la prise en charge du rétroéclairage (ordinateurs portables et tout-en-un uniquement)';

  @override
  String get autoGen5658 =>
      '• macOS nécessite un périphérique PNLF (Panel Brightness) pour contrôler correctement la luminosité de l\'écran de l\'ordinateur portable.\n• Ce correctif créera un périphérique PNLF dans ACPI, permettant à macOS d\'ajuster la luminosité de l\'écran et d\'afficher les options de contrôle de la luminosité dans les Préférences Système.\n• Convient aux ordinateurs portables et à certains ordinateurs tout-en-un pour résoudre le problème du réglage de la luminosité indisponible.\n• UID = 14, applicable à : Intel Arrandale de 1re génération, Sandy Bridge de 2e génération, Ivy Bridge de 3e génération\n  Remarque : Certaines machines utilisant l\'UID : 14 rencontreront une luminosité maximale limitée ou d\'autres problèmes. Afin de résoudre ces problèmes, le chemin correct du périphérique de l\'iGPU (carte graphique intégrée) doit être défini et les informations du registre IGPU devront peut-être être complétées.\n• UID = 15, applicable à : Intel Haswell de 4e génération, Broadwell de 5e génération\n• UID = 16, applicable à : Intel Skylake de 6e génération, Kaby Lake de 7e génération, certains Haswell de 4e génération\n• UID = 17, applicable à : Luminosité personnalisée, généralement utilisée pour certains appareils non standard ou paramètres Hackintosh ayant des besoins particuliers.\n• UID = 18, adapté à : Luminosité personnalisée, généralement utilisée pour certains appareils non standard ou paramètres Hackintosh ayant des besoins particuliers.\n• UID = 19, applicable à : Intel CoffeeLake de 8e génération et supérieur, inférieur à la 10e génération et les ordinateurs portables AMD\n• UID = 99, s\'applique à : Autres (nécessite des propriétés de périphérique applbkl-name / applbkl-data personnalisées), peut ne pas fonctionner du tout';

  @override
  String get autoGen5659 =>
      'Fournit la prise en charge des capteurs requise pour le réglage du rétroéclairage de l\'écran (applicable uniquement aux ordinateurs portables et aux ordinateurs tout-en-un)';

  @override
  String get autoGen5660 =>
      '• Utilisé pour simuler et activer la fonction de capteur natif d\'Apple (Ambient Light Sensor, ALS) pour ajuster automatiquement la luminosité de l\'écran\n• Si votre appareil est réellement atteint d\'ALS (comme certains ordinateurs portables haut de gamme) et qu\'il y a des problèmes, vous pouvez essayer d\'ajouter SSDT-ALS0 pour corriger la fonction de réglage automatique de la luminosité, sinon il n\'est pas recommandé d\'ajouter\n• Applicable à : ordinateurs tout-en-un (AIO) et ordinateurs portables uniquement';

  @override
  String get autoGen5661 =>
      'macOS se déguise en Windows et déverrouille les appareils bloqués (tels que les pavés tactiles I2C)';

  @override
  String get autoGen5662 =>
      '• _OSI (Operating System Interface) est une méthode ACPI qui permet au système d\'exploitation de signaler les fonctionnalités qu\'il prend en charge.\n• Certains micrologiciels de carte mère peuvent décider d\'activer ou non certains périphériques en fonction de la valeur de retour _OSI, qui peut ne pas être reconnue par macOS, entraînant une perte de fonctionnalité.\n• Le patch « trompe » le firmware en lui faisant croire que macOS est aussi Windows, activant ainsi des fonctionnalités cachées telles que : le pavé tactile I2C, la gestion de la batterie, etc.';

  @override
  String get autoGen5663 => 'Réinitialisation et réparation du port USB';

  @override
  String get autoGen5664 =>
      '• Certains OEM violent la spécification ACPI, ce qui entraîne des problèmes lors du démarrage de macOS. Pour résoudre ce problème, le périphérique RHUB doit être arrêté et forcer macOS à reconstruire le port manuellement.\n• Ce correctif réinitialise le contrôleur USB (y compris le blindage et le renommage des EHC1, EHC2 et autres périphériques USB) au démarrage de macOS, afin que tous les ports USB puissent être correctement identifiés, et est utilisé avec le mappage USB (tel que : UTBMap.kext) pour garantir le bon fonctionnement des périphériques USB.\n• Généralement adapté aux cartes mères de bureau de la série 400 (Asus, etc.) et aux plates-formes mobiles IceLake (Dell, Lenovo, etc.).';

  @override
  String get autoGen5665 =>
      'Créer un pont pour le chemin du périphérique PCI manquant';

  @override
  String get autoGen5666 =>
      '• Les chemins de périphériques PCI de certaines cartes mères ou périphériques peuvent ne pas être reconnus correctement sous macOS, ce qui entraîne un dysfonctionnement du périphérique, comme les cartes graphiques, les cartes son, les cartes réseau sans fil, etc.\n• Ce correctif créera les ponts PCI appropriés pour ces périphériques, garantissant que macOS puisse reconnaître et utiliser correctement ces périphériques PCI.';

  @override
  String get autoGen5667 =>
      'Corrigez la table APIC pour résoudre le problème de panique du noyau CPU (applicable à la plateforme serveur HEDT)';

  @override
  String get autoGen5668 =>
      '• Réparez ou réécrivez l\'ID du processeur dans la table APIC pour garantir que macOS puisse identifier correctement le nombre et le nombre de cœurs de processeur et éviter une panique du noyau ou des erreurs d\'identification des cœurs.\n• La table APIC d\'origine doit être supprimée du micrologiciel avant que la table corrigée puisse être chargée.\n• Applicable aux plates-formes X58, X79, X99, X299 et autres serveurs Intel (HEDT).';

  @override
  String get autoGen5669 =>
      'Supprimez la zone de mémoire réservée DMAR, résolvez les problèmes de démarrage du système et les problèmes de compatibilité de la carte réseau';

  @override
  String get autoGen5670 =>
      '• DMAR (DMA Remapping Table) fait partie de la technologie de virtualisation Intel VT-d pour la prise en charge de l\'IOMMU (Input-Output Memory Management Unit).\n• Ce correctif supprimera la zone de mémoire réservée dans la table DMAR à l\'origine du problème, empêchant ainsi macOS de mal lire le DMAR et d\'entraîner l\'échec du démarrage du système.\n• Fournir la prise en charge de la compatibilité VT-d afin que VT-d fonctionne correctement sous macOS Big Sur et versions ultérieures, en particulier en impliquant le matériel piloté par DriverKit.\n• macOS prend en charge VT-d, mais il existe des problèmes de compatibilité avec la table DMAR fournie par certaines cartes mères ou BIOS, ce qui peut entraîner des pannes du noyau, des retards de démarrage, une instabilité du système et d\'autres problèmes lors de l\'analyse de la table ACPI DMAR (bloquée dans les emplacements de journaux liés à AppleACPICPU, IOPCI, AppleVTD).\n• Gamme matérielle supportée : carte réseau I225, carte réseau Aquantia, certains appareils WiFi, etc.\n• La table DMAR d\'origine doit être supprimée du micrologiciel avant que la table corrigée puisse être chargée.\n• Processeur applicable : tout processeur prenant en charge la technologie VT-d.';

  @override
  String get autoGen5671 => 'Ajouter la prise en charge du bus système SMBus';

  @override
  String get autoGen5672 =>
      '• macOS nécessite un périphérique SMBus (System Management Bus) pour exécuter correctement certains services, tels que :\n  Pavé tactile I2C, gestion de la batterie, réglage automatique de la luminosité par détection de lumière, certains appareils Wi-Fi/Bluetooth\n• SSDT-SBUS-MCHC fait croire à macOS qu\'il s\'agit d\'un appareil Apple natif en ajoutant des appareils SBUS (System Management Bus) et MCHC (Memory Controller) à l\'ACPI, garantissant ainsi le bon fonctionnement des fonctions associées.\n• Si le pavé tactile I2C de l\'appareil, les informations sur la batterie et le réglage automatique de la luminosité ne peuvent pas être utilisés, vous pouvez essayer d\'activer ce correctif.';

  @override
  String get autoGen5673 =>
      'Résoudre le problème d\'échec de l\'accélération graphique principale (généralement applicable à Ivy Bridge et Sandy Bridge)';

  @override
  String get autoGen5674 =>
      '• Intel Management Engine (IMEI en abrégé) est une interface matérielle utilisée pour se connecter au moteur de gestion. Il n\'est nécessaire que lorsque les anciennes plates-formes (Sandy/Ivy) et certaines cartes mères ne disposent pas de périphériques MEI/IMEI/HECI.\n• Applicable au processeur Intel Ivy Bridge de 3e génération et à la carte mère série 6 en cas de mélange (par exemple : processeur i3 3225, carte mère H61), problème d\'accélération graphique principale\n• Applicable au processeur Intel Sandy Bridge de 2e génération et à la carte mère série 7 en cas de mélange (par exemple : processeur i5 2500k, carte mère B75), problème d\'accélération graphique principale\n• Les processeurs Intel Ivy Bridge de 3e génération associés à des cartes mères de la série 7 et les processeurs Intel Sandy Bridge de 2e génération associés à des cartes mères de la série 6 ne nécessitent pas ce SSDT !\n• Intel Haswell de 4e génération et les plates-formes plus récentes peuvent généralement implémenter correctement les appareils MEI/IMEI/HECI et n\'ont pas besoin de ce SSDT !';

  @override
  String get autoGen5675 =>
      'Résoudre le problème d\'arrêt et de redémarrage ou d\'arrêt sans alimentation';

  @override
  String get autoGen5676 =>
      '• Correction du problème selon lequel certaines cartes mères ne coupent parfois pas complètement l\'alimentation du contrôleur USB lorsque macOS s\'arrête (S5), ce qui entraîne un échec d\'arrêt normal (l\'arrêt devient un redémarrage ou un arrêt sans alimentation)\n• Nécessite le correctif de renommage ACPI : _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      'Vérifiez l\'état actuel du système, principalement pour vérifier si la veille S3 est prise en charge (SSDT non personnalisé)';

  @override
  String get autoGen5678 =>
      '• Vérifiez si la machine actuelle est une machine AOAC (SSDT non personnalisé)\n• Vérifiez l\'état du système dans les paramètres actuels du BIOS, principalement pour vérifier si la veille S3 est prise en charge (SSDT non personnalisé).\n• Remarque : seules les machines non AOAC sont compatibles avec la veille S3. Les machines AOAC entrent en conflit avec la veille S3 et ne prennent pas en charge la veille S3 !\n• Si le résultat de la vérification indique que l\'état du système d\'une machine non-AOAC (la machine AOAC ne prend pas en charge la veille S3, ne lisez pas ci-dessous) ne prend pas en charge la veille S3, les situations suivantes peuvent se produire :\n  1. Le micrologiciel de la carte mère prend en charge la veille S3, mais la veille S3 n\'est pas activée dans les paramètres du BIOS. Une fois activé, la veille S3 peut être prise en charge.\n  2. Le firmware de la carte mère ne castre pas physiquement le S3, mais le DSDT ne définit pas la méthode _S3. L\'exécution de la méthode _S3 a une probabilité de résoudre le problème de veille S3.\n  3. Le micrologiciel de la carte mère castre physiquement le S3 et ne prend pas du tout en charge la veille S3. Même si la méthode _S3 est terminée, le problème de veille S3 ne peut pas être réparé.';

  @override
  String get autoGen5679 =>
      'Vérifiez s\'il s\'agit d\'une machine AOAC (SSDT non personnalisé)';

  @override
  String get autoGen5680 =>
      '• Vérifiez s\'il s\'agit d\'une machine AOAC (SSDT non personnalisé) basée sur FACP.aml\n• Remarque : seules les machines non AOAC sont compatibles avec la veille S3. Les machines AOAC entrent en conflit avec la veille S3 et ne prennent pas en charge la veille S3 ! Les machines AOAC sont courantes dans les ordinateurs portables.\n• Une fois que la machine AOAC entre en veille S3, il peut sembler qu\'elle ne peut pas être réveillée après avoir dormi et qu\'elle apparaît dans un état de crash, et ne peut être forcée qu\'à s\'arrêter. Il est recommandé de désactiver la veille S3.\n• Les machines AOAC recommandent d\'envisager les solutions suivantes :\n  1. Déverrouillez le BIOS et désactivez AOAC (généralement difficile à faire, mais le plus stable)\n  2. Désactivez la veille S3 (désactivez la veille S3 dans le BIOS ou SSDT-S3-DISABLE pour désactiver la veille S3)\n  3. Éteignez l\'alimentation graphique indépendante\n  4. Utilisez NVMeFix.kext pour activer l\'APST du SSD\n  5. Activez ASPM (les options avancées du BIOS activent ASPM, le correctif SSDT active L1)';

  @override
  String get autoGen5681 =>
      'Résoudre le problème du réveil du sommeil à cause du contrôleur USB';

  @override
  String get autoGen5682 =>
      '• Renommez GPRW en XPRW pour résoudre le problème de réveil instantané (remarque : cela peut empêcher le clavier USB de réveiller l\'appareil, vous pouvez le réveiller via la touche d\'alimentation)\n• SSDT-GPRW est plus couramment utilisé car la plupart des plates-formes utilisent la méthode GPRW et très peu de plates-formes fournissent et utilisent la méthode UPRW.\n• Disponible pour Skylake et les plateformes plus récentes';

  @override
  String get autoGen5683 =>
      '• Renommez GPRW en XPRW pour résoudre le problème de réveil instantané (remarque : cela peut empêcher le clavier USB de réveiller l\'appareil, vous pouvez le réveiller via la touche d\'alimentation)\n• SSDT-UPRW est rarement utilisé car la plupart des plates-formes utilisent la méthode GPRW et très peu de plates-formes fournissent et utilisent la méthode UPRW.\n• Disponible pour Skylake et les plateformes plus récentes';

  @override
  String get autoGen5684 =>
      'Correction du problème de veille du bouton de veille (applicable aux ordinateurs portables)';

  @override
  String get autoGen5685 =>
      '• Lorsque certains ordinateurs entrent en veille via le bouton de veille SLPB (PNP0C0E), l\'ACPI transmet des paramètres incorrects, ce qui fait que macOS pense à tort qu\'il s\'agit d\'un arrêt. Cela peut entraîner : un redémarrage direct, un crash après la mise en veille ou une mise en veille réussie mais un état du système endommagé.\n• Faites semblant que \"le couvercle est fermé\" lorsque vous appuyez sur le bouton de veille, forçant le sommeil dangereux du PNP0C0E à un sommeil PNP0C0D sûr et stable.\n• Généralement adapté aux ordinateurs portables';

  @override
  String get autoGen5686 =>
      'Correction du problème où vous devez appuyer sur n\'importe quelle touche pour allumer l\'écran après le réveil';

  @override
  String get autoGen5687 =>
      '• Correction du problème où certaines machines devaient appuyer sur n\'importe quelle touche pour allumer l\'écran après le réveil';

  @override
  String get autoGen5688 =>
      'Résoudre le problème de lumière respiratoire anormale du bouton d\'alimentation après le réveil (applicable aux ordinateurs portables Lenovo)';

  @override
  String get autoGen5689 =>
      '• Correction d\'un problème où le voyant respiratoire du côté A et le voyant respiratoire du bouton d\'alimentation ne revenaient pas à la normale après le réveil sur certains ordinateurs portables Lenovo.\n• Correction du problème où l\'état du voyant du microphone F4 est anormal après le réveil sur certains ordinateurs portables Lenovo.\n• Principalement applicable aux ordinateurs portables de la série Lenovo, les autres marques d\'ordinateurs portables ne sont généralement pas applicables';

  @override
  String get autoGen5690 =>
      'Désactiver l\'état de veille du système S3 (réparer les problèmes de crash, de redémarrage ou d\'arrêt du réveil du sommeil S3)';

  @override
  String get autoGen5691 =>
      '• Désactivez uniquement l\'état de veille S3 sous le système macOS pour éviter une panne, un redémarrage ou un arrêt du système lorsque le système macOS se réveille.\n• Lorsqu\'il est désactivé, seul macOS ne prend plus en charge la veille S3 (en cliquant sur le bouton de veille ou si le moniteur passe en mode d\'économie d\'énergie, l\'écran s\'éteint, mais l\'hôte continuera de fonctionner et le ventilateur ne s\'arrêtera pas de fonctionner)\n• Après avoir désactivé l\'état de veille S3 dans macOS, vous n\'avez plus besoin de modifier les paramètres système de macOS et vous n\'avez pas besoin de désactiver le mode d\'économie d\'énergie (avant cela, vous devrez peut-être modifier les paramètres système -> éteindre l\'écran lorsqu\'il est inactif -> jamais)\n• Scénarios applicables : Lorsque le problème de veille n\'est pas réparé, le mode d\'économie d\'énergie est activé dans les paramètres du système macOS (\"Éteindre l\'écran en cas d\'inactivité -> 10 minutes\"). Une fois que le système est entré en état de veille, lorsque le système macOS est réveillé, le système peut planter, redémarrer ou s\'arrêter. À ce stade, vous pouvez désactiver l\'état de veille S3 pour résoudre le problème.\n• Nécessite le correctif de renommage ACPI : _S3 -> XS3';

  @override
  String get autoGen5692 =>
      'Le redémarrage à chaud est remplacé par un redémarrage à froid pour résoudre le problème d\'indisponibilité de certains matériels.';

  @override
  String get autoGen5693 =>
      '• Le redémarrage à chaud est remplacé par un redémarrage à froid, ce qui résout le problème d\'indisponibilité de certains matériels après le redémarrage de Windows vers macOS sur certaines plates-formes. (Par exemple : carte son, WiFi, Bluetooth)\n• Remarque : Aucun SSDT-FACP.aml n\'est généré ! Seul le patch ACPI est généré !';

  @override
  String get autoGen5694 => 'Mappage d’ID de périphérique graphique';

  @override
  String get autoGen5695 =>
      '• Utilisé pour les scénarios de mappage d\'ID de périphérique de carte graphique AMD, en injectant des ID de périphérique compatibles via ACPI pour permettre au système de charger le pilote graphique correspondant.\n• Recommandé uniquement pour les modèles explicitement marqués dans les données de compatibilité RapidEFI comme nécessitant un mappage d\'ID de périphérique.';

  @override
  String get autoGen5696 => 'Blindage des appareils ACPI';

  @override
  String get autoGen5697 =>
      '• Utilisé pour gérer les périphériques PCI au niveau de la couche ACPI qui ne sont pas adaptés au transfert vers le pilote macOS, tels que les cartes graphiques incompatibles, les contrôleurs NVMe ou d\'autres périphériques d\'extension.\n• Les ordinateurs portables tentent d\'abord de désactiver le niveau de puissance ; si le micrologiciel ne prend pas en charge la méthode d\'alimentation, il passe à la couche pilote pour éviter cela.\n• Les ordinateurs de bureau, les NUC et les HEDT utilisent par défaut des méthodes de contournement universelles pour éviter de recourir à des méthodes de puissance graphique indépendantes qui n\'existent généralement pas dans le micrologiciel de la machine.\n• Tous les scénarios nécessitent un chemin ACPI valide ; si le matériel signale un chemin ACPI manquant, le périphérique est automatiquement ignoré.';

  @override
  String get autoGen5698 =>
      'Équipement de carte réseau filaire contrefait (applicable aux ordinateurs portables sans carte réseau filaire)';

  @override
  String get autoGen5699 =>
      '• Fournit une fausse carte réseau virtuelle NullEthernet pour les systèmes Hackintosh afin de résoudre la dépendance d\'iMessage, Facetime, iCloud et d\'autres services Apple à l\'égard des équipements réseau intégrés.';

  @override
  String get autoGen5700 =>
      'Résoudre le problème du pavé tactile I2C de l\'ordinateur portable (applicable aux ordinateurs portables)';

  @override
  String get autoGen5701 =>
      '• En réparant le montage du nœud matériel ACPI, en garantissant que l\'appareil est activé dans le système macOS et en résolvant le problème selon lequel certains pavés tactiles I2C ne peuvent pas être reconnus normalement.\n• SSDT-GPI0 résout le problème des périphériques matériels de montage de pilotes. SSDT-XOSI est principalement utilisé pour résoudre le problème d\'incompatibilité entre la logique d\'initialisation BIOS/ACPI et la reconnaissance du système d\'exploitation (il peut parfois résoudre le problème du pavé tactile)';

  @override
  String get autoGen5702 =>
      'Renommer le processeur pour les chipsets B850, B650, B550, A520 (uniquement pour les plateformes Ryzen)';

  @override
  String get autoGen5703 =>
      '• Applicable au renommage du processeur des chipsets B850, B650, B550 et A520 pour résoudre le problème de crash provoqué par l\'incapacité de la plate-forme AMD à reconnaître le processeur (recommandé uniquement lors de l\'utilisation de correctifs SSDT prédéfinis)\n• Lors de la personnalisation du patch SSDT, il est recommandé d\'utiliser le SSDT-PLUG personnalisé ! (La plateforme AMD Ryzen change automatiquement son nom en SSDT-PLUG-ALT lors de la personnalisation du SSDT)';

  @override
  String get autoGen5704 =>
      'Correction de la gestion de l\'alimentation (applicable à Intel de 12e génération et supérieure, à certains AMD Ryzen et à d\'autres plates-formes)';

  @override
  String get autoGen5705 =>
      '• macOS s\'appuie sur le plug-in de gestion de l\'alimentation du processeur (PluginType) pour ajuster la fréquence du processeur et améliorer l\'efficacité énergétique et la durée de vie de la batterie.\n• Ce correctif modifiera la définition du processeur afin que macOS pense qu\'il s\'agit d\'un processeur de type plugin = 1 requis par les appareils Apple, chargeant ainsi correctement la gestion de la fréquence du processeur et améliorant les performances et le contrôle de la consommation d\'énergie.\n• Applicable à Intel Alder Lake de 12e génération et versions ultérieures, ainsi qu\'à certaines plates-formes AMD Ryzen';

  @override
  String get autoGen5706 =>
      'Désactiver AWAC (Modern Timer) (disponible pour Intel Coffee Lake 8e génération et supérieur)';

  @override
  String get autoGen5707 =>
      '• Désactivez AWAC (Modern Timer) lors de l\'activation ou de l\'usurpation du RTC existant.\n• Compatible avec Intel Coffee Lake 8e génération et supérieure';

  @override
  String get autoGen5708 =>
      'Requis par toutes les cartes mères natives X99 (C612) et la plupart des cartes mères natives X79 (C602)';

  @override
  String get autoGen5709 =>
      '• Ce SSDT est applicable à toutes les cartes mères X99 et à la plupart des cartes mères X79. Sa fonction principale est de désactiver les périphériques inutilisés dans ACPI pour empêcher IOPCIFamily de provoquer une panique du noyau.\n• Cartes mères applicables : toutes les cartes mères natives X99 (C612) et la plupart des cartes mères natives X79 (C602).';

  @override
  String get autoGen5710 =>
      'Activer ou simuler la minuterie RTC héritée et corriger la plage RTC (s\'applique à toutes les cartes mères natives X99 (C612) et X299)';

  @override
  String get autoGen5711 =>
      '• Activer ou simuler les minuteries RTC héritées et corriger la plage RTC.\n• Résolvez les temps de démarrage incorrects, les erreurs liées au RTC, les problèmes de réveil, etc.\n• Ce SSDT est applicable à toutes les cartes mères X99 (C612) ainsi qu\'aux cartes mères X299';

  @override
  String get autoGen5712 => 'Ajouter la prise en charge DTGP';

  @override
  String get autoGen5713 =>
      '• Injectez des attributs de périphérique matériel pour résoudre certains problèmes ACPI avec les cartes graphiques, les cartes son, les cartes Thunderbolt, etc. (Lorsqu\'il n\'y a pas de prise en charge de la méthode DTGP, ces injections d\'attributs peuvent échouer ou ne pas fonctionner !)';

  @override
  String get autoGen5714 => 'Contrefaçon d\'un contrôleur DMA standard';

  @override
  String get autoGen5715 =>
      '• Un contrôleur de périphérique virtuel (PNP0200) qui imite un contrôleur DMA standard (Direct Memory Access Controller), complète le tableau des ressources ACPI et permet à macOS d\'identifier correctement les périphériques de bus LPC et les fonctions DMA.\n• Généralement non requis pour les plates-formes HEDT/serveur\n• Ajoutez les pièces manquantes, c\'est juste une solution parfaite, pas nécessaire !';

  @override
  String get autoGen5716 => 'Contrefaçon d\'un contrôleur PWRB standard';

  @override
  String get autoGen5717 =>
      '• Contrefaire un appareil à bouton d\'alimentation standard (PNP0C0C) pour permettre à macOS de reconnaître normalement le bouton d\'alimentation du système et de prendre en charge la mise en veille et le réveil.\n• Il n\'y a pas de PNP0C0C dans certaines arborescences ACPI du BIOS/de la carte mère, et macOS ne peut pas gérer correctement le bouton d\'alimentation, ce qui peut entraîner l\'impossibilité de dormir, l\'impossibilité de se réveiller et l\'indisponibilité du bouton d\'alimentation de la barre de menus.\n• Ajoutez les pièces manquantes, c\'est juste une solution parfaite, pas nécessaire !';

  @override
  String get autoGen5718 => 'Contrefaçon d\'un contrôleur SLPB standard';

  @override
  String get autoGen5719 =>
      '• Contrefaire un périphérique de bouton de veille standard (PNP0C0E) pour permettre à macOS d\'identifier correctement le bouton de veille du système et de mettre en œuvre les fonctions de veille et de réveil.\n• Il n\'y a pas de PNP0C0E dans certaines arborescences ACPI du BIOS/de la carte mère et macOS ne peut pas gérer correctement le bouton de veille, ce qui peut entraîner l\'impossibilité de dormir, l\'impossibilité de se réveiller et l\'indisponibilité du bouton de veille dans la barre de menus.\n• Cette pièce est requise pour la méthode de correction du sommeil PNP0C0E !\n• Ajoutez les pièces manquantes, c\'est juste une solution parfaite, pas nécessaire !';

  @override
  String get autoGen5720 => 'Périphérique MEM2 requis pour imiter un IGPU';

  @override
  String get autoGen5721 =>
      '• Ajoutez le périphérique MEM2 ACPI requis par IGPU et corrigez les problèmes liés à l\'IGPU.\n• Complétez le mappage de la mémoire d\'affichage principale pour éviter l\'échec de l\'initialisation du pilote.\n• Portée applicable : Haswell ~ Kaby Lake, système graphique de base uniquement. Habituellement, seuls les graphiques discrets n\'ont pas besoin de ce SSDT !';

  @override
  String get autoGen5722 => 'Chemin invalide';

  @override
  String get autoGen5723 => 'Aucun fichier .aml ou .dat valide trouvé';

  @override
  String get autoGen5724 => 'Décompilation des fichiers SSDT.aml par lots...';

  @override
  String get autoGen5725 =>
      'Décompilation des fichiers DSDT.aml et SSDT.aml par lots...';

  @override
  String get autoGen5726 =>
      'Décompilation des fichiers .aml ayant échoué individuellement...';

  @override
  String get autoGen5727 => 'Décompilation d\'autres fichiers .aml...';

  @override
  String get autoGen5728 =>
      'Remarque : essayez de ne pas inclure de caractères chinois ou spéciaux dans le chemin ou le nom du fichier, sinon cela pourrait provoquer des problèmes inattendus !';

  @override
  String get autoGen5729 => 'L\'outil d\'exportation ACPI n\'est pas prêt';

  @override
  String get autoGen5730 => 'Exportation des tables ACPI...';

  @override
  String get autoGen5731 =>
      'La plateforme actuelle ne prend pas en charge l\'exportation de tables ACPI';

  @override
  String get autoGen5732 =>
      'En attente de l\'autorisation du mot de passe sudo...';

  @override
  String get autoGen5733 =>
      'L\'autorisation de l\'administrateur a été annulée';

  @override
  String get autoGen5734 => 'Mot de passe administrateur non saisi';

  @override
  String get autoGen5735 => 'Le mot de passe administrateur est incorrect';

  @override
  String get autoGen5736 =>
      'Le processus d\'exportation de la table ACPI a échoué';

  @override
  String get autoGen5737 =>
      'La table ACPI extraite par la plateforme actuelle est vide ou ne prend pas en charge l\'exportation de la table ACPI.';

  @override
  String get autoGen5738 => '=> DSDT introuvable, export par signature...';

  @override
  String get autoGen5739 => 'Échec de l\'exportation de la table DSDT';

  @override
  String get autoGen5740 => 'Mise à jour du nom de la table...';

  @override
  String get autoGen5741 => 'Exportez la table ACPI avec succès !';

  @override
  String get autoGen5742 => 'Aucune table ACPI valide fournie !';

  @override
  String get autoGen5743 =>
      'La donnée hexadécimale à localiser n\'a pas été trouvée !';

  @override
  String get autoGen5744 => 'ID de remplissage unique introuvable !';

  @override
  String get autoGen5745 => '=> getScopeOfDevice : paramètre de table invalide';

  @override
  String get autoGen5746 => 'le plus lâche';

  @override
  String get autoGen5747 => 'longueur seulement';

  @override
  String get autoGen5748 =>
      'ID et longueur de la table, désactiver les en-têtes normalisés';

  @override
  String get autoGen5749 =>
      'ID et longueur de la table, activer les en-têtes normalisés';

  @override
  String get autoGen5750 =>
      'Intel Arrandale de 1re génération, Sandy Bridge de 2e génération, Ivy Bridge de 3e génération';

  @override
  String get autoGen5751 =>
      'Intel Haswell de 4e génération, Broadwell de 5e génération';

  @override
  String get autoGen5752 =>
      'Intel Skylake de 6e génération, Kaby Lake de 7e génération, certains Haswell de 4e génération';

  @override
  String get autoGen5753 =>
      'Luminosité personnalisée, généralement utilisée pour certains équipements non standard ou paramètres de besoins spéciaux';

  @override
  String get autoGen5754 =>
      'Intel 8e génération CoffeeLake ~ 10e génération et ordinateurs portables AMD';

  @override
  String get autoGen5755 =>
      'D\'autres (nécessitent des propriétés de périphérique applbkl-name / applbkl-data personnalisées) peuvent ne pas être pris en charge';

  @override
  String get autoGen5756 =>
      'Les outils ACPI ne prennent actuellement en charge que les plates-formes Windows/macOS/Linux';

  @override
  String get autoGen5757 =>
      'Remarque : L\'ancienne version de iasl-legacy ne prend en charge que macOS 10.6 et les versions antérieures. Il peut y avoir des problèmes de compatibilité avec les systèmes grand public actuels, alors utilisez-les avec prudence !!!';

  @override
  String get autoGen5758 =>
      'Utiliser [compilateur ancienne version iasl-legacy]';

  @override
  String get autoGen5759 => 'La compilation a échoué !';

  @override
  String get autoGen5760 =>
      'Il est recommandé de passer à une nouvelle version d\'iasl ou d\'activer la compilation forcée et de réessayer !';

  @override
  String get autoGen5761 => 'exister';

  @override
  String get autoGen5762 => 'n\'existe pas';

  @override
  String get autoGen5763 =>
      'Remarque : Intel 1ère génération Arrandale, 2ème génération Sandy Bridge, 3ème génération Ivy Bridge utilisent l\'UID : 14 ​​par défaut, mais certaines machines utilisant l\'UID : 14 rencontreront une luminosité maximale limitée ou d\'autres problèmes. Afin de résoudre ces problèmes, le chemin correct du périphérique de l\'iGPU (carte graphique intégrée) doit être défini et les informations du registre IGPU devront peut-être être complétées.';

  @override
  String get autoGen5764 =>
      'Veuillez entrer le chemin ACPI iGPU à utiliser. La limite de caractères pour chaque élément de chemin est de 4 caractères alphanumériques (commençant par une lettre ou un trait de soulignement), séparés par des espaces. Par exemple : SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      'Remarque : le correctif NBCF a été généré (dépend du pilote BrightnessKeys.kext), activé par défaut ! Si vous rencontrez des problèmes lors de l\'utilisation, veuillez désactiver ce patch !';

  @override
  String get autoGen5766 => 'Le pont suivant ne peut pas être résolu :';

  @override
  String get autoGen5767 =>
      '=> Le firmware actuel prend en charge les états courants du système ! S\'il ne s\'agit pas d\'une machine AOAC, après avoir résolu le problème de veille, macOS peut prendre en charge la veille S3, sinon il ne prend pas en charge la veille S3 !';

  @override
  String get autoGen5768 => 'correctif';

  @override
  String get autoGen5769 => 'La connexion au serveur a expiré';

  @override
  String get autoGen5770 => 'Téléchargement annulé';

  @override
  String get autoGen5771 => 'Expiration du délai de réponse en lecture';

  @override
  String get autoGen5772 => 'Kext copié avec succès';

  @override
  String get autoGen5773 =>
      'La plateforme Web télécharge directement par défaut et ne prend actuellement pas en charge la sélection du chemin par défaut.';

  @override
  String get autoGen5774 =>
      'Le nœud racine du fichier de configuration n\'est pas un objet JSON';

  @override
  String get autoGen5775 => 'Suivez le système';

  @override
  String get autoGen5776 => 'fermeture';

  @override
  String get autoGen5777 => 'Microsoft Yahoo';

  @override
  String get autoGen5778 => 'Mettre à jour le corps noir';

  @override
  String get autoGen5779 => 'Siyuan Songti';

  @override
  String get autoGen5780 =>
      'En attente d\'actualisation des informations sur le matériel';

  @override
  String get autoGen5781 => 'Chargement des informations sur le matériel';

  @override
  String get autoGen5782 => 'Actualisation des informations sur le matériel';

  @override
  String get autoGen5783 =>
      'Chargement des informations sur le matériel terminé';

  @override
  String get autoGen5784 =>
      'Échec du chargement des informations sur le matériel';

  @override
  String get autoGen5785 =>
      'Les informations sur le matériel ne sont pas encore prises en charge';

  @override
  String get autoGen5786 =>
      'Importation des informations sur le matériel terminée';

  @override
  String get autoGen5787 => 'échouer';

  @override
  String get autoGen5788 => 'Non pris en charge';

  @override
  String get autoGen5789 => 'Finition';

  @override
  String get autoGen5790 => 'cache';

  @override
  String get autoGen5791 =>
      'La plate-forme actuelle ne prend pas en charge la requête d\'informations sur le matériel';

  @override
  String get autoGen5792 =>
      'Le rapport actuel est un rapport sur le matériel externe importé. Veuillez actualiser les informations sur le matériel local avant d\'exporter.';

  @override
  String get autoGen5793 =>
      'Il n’existe actuellement aucune information exportable sur le matériel local.';

  @override
  String get autoGen5794 =>
      'Échec du nettoyage du dossier des rapports matériels';

  @override
  String get autoGen5795 =>
      'La création du dossier de rapports matériels a échoué';

  @override
  String get autoGen5796 =>
      'L\'exportation de la table ACPI a échoué ou n\'est pas prise en charge';

  @override
  String get autoGen5797 =>
      'L\'autorisation de l\'administrateur a été annulée et la table ACPI n\'a pas été exportée';

  @override
  String get autoGen5798 =>
      'Impossible d\'exporter la table ACPI sans saisir le mot de passe administrateur';

  @override
  String get autoGen5799 =>
      'Error 500 (Server Error)!!1500.That’s an error.There was an error. Please try again later.That’s all we know.';

  @override
  String get autoGen5800 =>
      'Échec de l\'exportation de la table ACPI : aucune table ACPI valide trouvée';

  @override
  String get autoGen5801 =>
      'Échec de l\'exportation de la table ACPI : le processus d\'exportation a échoué.';

  @override
  String get autoGen5802 =>
      'Le fichier d\'informations sur le matériel n\'est pas un objet JSON';

  @override
  String get autoGen5803 =>
      'Les informations sur le matériel ont été importées';

  @override
  String get autoGen5804 =>
      'Le catalogue de tables ACPI n\'est pas valide, le SSDT personnalisé n\'est pas disponible';

  @override
  String get autoGen5805 => 'Commencez à configurer EFI...';

  @override
  String get autoGen5806 =>
      'Génération de ConfigModel basé sur les informations matérielles...';

  @override
  String get autoGen5807 =>
      'Utilisez le SSDT brut EFI, ignorez la personnalisation du SSDT.';

  @override
  String get autoGen5808 =>
      'Rapport sur le matériel externe importé mais aucun catalogue de tables ACPI fourni, SSDT personnalisé désactivé.';

  @override
  String get autoGen5809 => 'Exportation d\'OpenCore EFI...';

  @override
  String get autoGen5810 =>
      'EFI écrit, commencez à extraire l\'ACPI et à personnaliser SSDT...';

  @override
  String get autoGen5811 => 'Le processus de personnalisation SSDT se termine.';

  @override
  String get autoGen5812 => 'Le processus de personnalisation SSDT a échoué.';

  @override
  String get autoGen5813 => 'Configuration EFI terminée.';

  @override
  String get autoGen5814 =>
      'La configuration EFI a échoué, veuillez vérifier le chemin de sortie ou les journaux.';

  @override
  String get autoGen5815 =>
      'Le matériel génère automatiquement des règles ConfigModel et est en cours de reconstruction.';

  @override
  String get autoGen5816 =>
      'La longueur des pourboires doit être la même que celle des choix';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'actifs/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'actifs/ssdt/patch de carte son.md';

  @override
  String get autoGen5820 => 'actifs/ssdt/contrefaçon de carte graphique.md';

  @override
  String get autoGen5821 => 'actifs/ssdt/dispositif de protection.md';

  @override
  String get autoGen5822 => 'actifs/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'Instructions du pilote Bluetooth :\n  1. Lorsque Intel WiFi est coché, le pilote Intel Bluetooth sera automatiquement ajouté en fonction de la version macOS, pas besoin de le vérifier manuellement ! ! !\n  2. Lorsque Broadcom WiFi est coché, le pilote Broadcom Bluetooth sera automatiquement ajouté en fonction de la version macOS, pas besoin de le vérifier manuellement ! ! !\n  3. Lorsque Atheros WiFi est coché, le pilote Atheros Bluetooth sera ajouté automatiquement, pas besoin de le vérifier manuellement ! ! !\n  4. Si le modèle WiFi n\'est pas vérifié ou si le modèle Bluetooth n\'est pas expliqué, vous devez le vérifier manuellement ! ! !\n  5. Étant donné que Bluetooth utilise le canal USB, s\'il ne fonctionne toujours pas correctement après l\'ajout de pilotes et de correctifs, assurez-vous que l\'USB est bien personnalisé ! ! !';

  @override
  String get autoGen5824 =>
      'Chemins HPET courants :\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  Cette option est utilisée pour résoudre certains problèmes d\'IRQ de la carte son ! Remarque : Si votre carte son n\'a pas de problèmes d\'IRQ, veuillez ne pas utiliser cette fonction !!!';

  @override
  String get autoGen5825 =>
      'Versions macOS prises en charge :\n    • La version sans fil USB Big Sur Adapter-V18 prend en charge macOS Catalina 10.15.x ~ macOS Tahoe 26.x (nécessite le correctif USB OCLP).\n    • La version adaptateur USB Big Sur sans fil V15 prend en charge OS X Mavericks 10.9 ~ macOS Catalina 10.15.x.\n  Le WiFi USB pris en charge est le suivant :\n    • La puce principale est l\'adaptateur Wi-Fi USB Realtek 802.11n et 802.11ac. Pour des modèles plus spécifiques, veuillez vous référer aux instructions de l\'auteur.';

  @override
  String get autoGen5826 =>
      'Contrefaçon de graphiques discrets AMD (propriétés de l\'appareil) :\n   1. Vous devez renseigner le chemin PCI de la carte graphique, par exemple : PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. Vous devez renseigner l\'ID de périphérique contrefait de la carte graphique (4 chiffres en hexadécimal), par exemple : 73BF\n   3. Une fois la carte graphique contrefaite, vous devez toujours prendre en compte les paramètres de démarrage requis par la carte graphique AMD (vous pouvez accéder à Independent Graphics Configuration -> AMD Independent Graphics -> Vérifier si nécessaire)\n   4. L\'outil a préparé certains ID de périphérique de carte graphique. Dans le cas contraire, veuillez le trouver vous-même ou contacter l\'auteur pour obtenir des informations supplémentaires.';

  @override
  String get autoGen5827 => 'Confirmer';

  @override
  String get autoGen5828 => 'Annuler';

  @override
  String get autoGen5829 => 'Bien sûr';
}
