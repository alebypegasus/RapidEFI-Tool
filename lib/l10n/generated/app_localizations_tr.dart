// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI Aracı';

  @override
  String get navHardware => 'Donanım';

  @override
  String get navManual => 'Manuel EFI Yapılandırması';

  @override
  String get navProcess => 'EFI İşle';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Geçmiş';

  @override
  String get navSettings => 'Ayarlar';

  @override
  String get navAbout => 'Hakkında';

  @override
  String get navSponsor => 'Geliştiriciye Destek Ol';

  @override
  String get btnRefresh => 'Yenile';

  @override
  String get btnImportReport => 'Raporu İçe Aktar';

  @override
  String get btnExportReport => 'Raporu Dışa Aktar';

  @override
  String get btnExportAcpi => 'ACPI Dışa Aktar';

  @override
  String get btnEfiSettings => 'EFI Ayarları';

  @override
  String get btnExportEfi => 'EFI\'yi Dışa Aktar';

  @override
  String get btnGenerateEfi => 'EFI Oluştur';

  @override
  String get btnBrowse => 'Gözat';

  @override
  String get btnChooseFile => 'Dosya Seç';

  @override
  String get btnCancel => 'İptal';

  @override
  String get btnApply => 'Uygula';

  @override
  String get btnSave => 'Kaydet';

  @override
  String get btnClose => 'Kapat';

  @override
  String get btnCheckUpdates => 'Güncellemeleri Denetle';

  @override
  String get btnChecking => 'Denetleniyor...';

  @override
  String get btnSelectAll => 'Tümünü Seç';

  @override
  String get btnDeselectAll => 'Tümünü Kaldır';

  @override
  String get btnCustomSsdt => 'Özel SSDT';

  @override
  String get btnPrebuiltSsdt => 'Hazır SSDT';

  @override
  String get btnDumpAcpi => 'ACPI Dökümü Al';

  @override
  String get btnSelectAcpis => 'ACPI Seç';

  @override
  String get btnSelectConfig => 'config Seç';

  @override
  String get btnMergeConfig => 'config Birleştir';

  @override
  String get btnExecutePatch => 'Yamayı Uygula';

  @override
  String get btnOpenFolder => 'Klasörü Aç';

  @override
  String get hardwareReport => 'Donanım Raporu';

  @override
  String get cpuArchitecture => 'İşlemci (CPU)';

  @override
  String get motherboardChipset => 'Anakart & Yonga Seti';

  @override
  String get graphicsDevice => 'Grafik (GPU)';

  @override
  String get audioCodec => 'Ses Denetleyicisi';

  @override
  String get networkController => 'Ağ & Wi-Fi';

  @override
  String get storageDevice => 'Depolama Aygıtları';

  @override
  String get acpiTables => 'ACPI Tabloları';

  @override
  String get compatibilityStatus => 'Uyumluluk';

  @override
  String get compatible => 'Destekleniyor';

  @override
  String get unsupported => 'Desteklenmiyor';

  @override
  String get requiresPatch => 'Yama Gerekli';

  @override
  String get details => 'Ayrıntılar';

  @override
  String get showDetailedReport => 'Ayrıntılı Görünüm';

  @override
  String get platformConfig => 'Platform Yapılandırması';

  @override
  String get cpuVendor => 'CPU Üreticisi';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Kasa Tipi';

  @override
  String get desktop => 'Masaüstü';

  @override
  String get laptop => 'Dizüstü';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Sunucu';

  @override
  String get processorGen => 'İşlemci Nesli';

  @override
  String get targetMacOs => 'Hedef macOS Sürümü';

  @override
  String get smbiosModel => 'Hedef SMBIOS Modeli';

  @override
  String get motherboardSelector => 'Anakart Seçimi';

  @override
  String get brand => 'Marka';

  @override
  String get model => 'Model';

  @override
  String get outputDirectory => 'Çıktı Dizini';

  @override
  String get kextConfiguration => 'Kext Yapılandırması';

  @override
  String get bootArguments => 'Başlatma Komutları (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Etkin (00000000)';

  @override
  String get sipDisabled => 'SIP Devre Dışı (03080000)';

  @override
  String get processEfiTitle => 'EFI İşleme & Yeniden Oluşturma';

  @override
  String get chooseEfiPrompt =>
      'Yapılandırmayı yüklemek için bir EFI klasörü veya configModel dosyası seçin';

  @override
  String get configModelFound => 'ConfigModel başarıyla bulundu ve yüklendi';

  @override
  String get rebuildEfi => 'EFI\'yi Yeniden Oluştur';

  @override
  String get ssdtGeneratorTitle => 'SSDT Oluşturucu & ACPI Yamalayıcı';

  @override
  String get corePatches => 'Temel Yamalar';

  @override
  String get recommendedPatches => 'Önerilen Yamalar';

  @override
  String get optionalPatches => 'İsteğe Bağlı Yamalar';

  @override
  String get compilationComplete => 'Derleme Tamamlandı';

  @override
  String get mergeSuccess => 'EFI\'ye başarıyla birleştirildi';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher Entegrasyonu';

  @override
  String get rootPatching => 'Root Yamalama';

  @override
  String get graphicsAcceleration => 'Grafik Hızlandırma';

  @override
  String get wirelessFix => 'Wi-Fi & Bluetooth Düzeltmesi';

  @override
  String get postInstall => 'Kurulum Sonrası Adımlar';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 Uyumluluk Kılavuzu';

  @override
  String get tahoeCompatibility => 'Tahoe 26 Çekirdek & Ses Uyarlaması';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get appLanguage => 'Dil :';

  @override
  String get followSystem => 'Sistemi İzle';

  @override
  String get themeMode => 'Tema Modu :';

  @override
  String get themeColor => 'Tema Rengi :';

  @override
  String get appFont => 'Uygulama Yazı Tipi :';

  @override
  String get efiOptions => 'EFI Seçenekleri :';

  @override
  String get addThemeToEfi => 'EFI\'ye OpenCore önyükleme teması ekle';

  @override
  String get generateConfigModel =>
      'EFI klasöründe configModel dosyası oluştur';

  @override
  String get compressZipEfi => 'EFI\'yi ZIP dosyası olarak sıkıştır';

  @override
  String get checkForUpdates => 'Güncellemeleri Denetle :';

  @override
  String currentVersion(String version) {
    return 'Mevcut sürüm: $version';
  }

  @override
  String get copyrightNotice => 'Telif Hakkı & Lisans';

  @override
  String get exitAppTip => 'Çıkmak için tekrar geri basın';

  @override
  String get updateAvailable => 'Yeni sürüm mevcut';

  @override
  String versionTag(String version) {
    return 'Sürüm: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Yayın Tarihi: $date';
  }

  @override
  String get noUpdateFound => 'En son sürümü kullanıyorsunuz';

  @override
  String get efiBuildSuccess => 'EFI başarıyla oluşturuldu!';

  @override
  String get efiBuildFailed => 'EFI oluşturulamadı';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get soundLayoutId => 'Ses Layout ID (alcid)';

  @override
  String get nvramBootArgs => 'Özel boot-args';

  @override
  String get generateSerial => 'Seri Numarası Oluştur';

  @override
  String get navManualTab => 'Manuel EFI Yapılandırması';

  @override
  String get navAutoTab => 'Otomatik EFI Yapılandırması';

  @override
  String get cpuSelection => 'İşlemci (CPU) Seçimi:';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Pentium veya Celeron işlemciler CPU sahtelemesi (spoofing) gerektirir; lütfen bunu etkinleştirin!\nNot: Pentium/Celeron iGPU\'ları genellikle desteklenmez!';

  @override
  String get platformSelection => 'Platform Seçimi:';

  @override
  String get processorGeneration => 'İşlemci Nesli:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6Ç/12İ)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 çekirdek / 12 iş parçacığı) özel CPU sahtelemesi gerektirir';

  @override
  String get amdCoresTitle => 'AMD CPU Çekirdek Sayısı:';

  @override
  String get amdSpecialMb => 'AMD Özel Anakartlar:';

  @override
  String get usePrecastMmio => 'Precast MMIO Kullan';

  @override
  String get useRyzenGpu => 'Ryzen iGPU Desteğini Etkinleştir (NootedRed)';

  @override
  String get motherboardBrand => 'Anakart Markası:';

  @override
  String get motherboardModel => 'Anakart Modeli:';

  @override
  String get customMotherboard => 'Özel / Genel Anakart';

  @override
  String get igpuConfig => 'iGPU Yapılandırması:';

  @override
  String get dgpuConfig => 'dGPU Yapılandırması:';

  @override
  String get audioConfig => 'Ses Yapılandırması:';

  @override
  String get audioCodecFix => 'Ses Codec ve Layout ID';

  @override
  String get fixIrq => 'IRQ Çakışmalarını Düzelt';

  @override
  String get networkConfig => 'Ağ ve Wi-Fi Yapılandırması:';

  @override
  String get laptopDrivers => 'Dizüstü Bilgisayar Sürücüleri:';

  @override
  String get touchpadDriver => 'Dokunmatik Yüzey Sürücüsü (I2C / PS2)';

  @override
  String get smbiosSelection => 'Hedef SMBIOS Modeli:';

  @override
  String get targetMacOsVersion => 'Hedef macOS Sürümü:';

  @override
  String get bootArgsTitle => 'Başlatma Komutları (boot-args):';

  @override
  String get csrActiveConfigTitle => 'Sistem Bütünlüğü Koruması (SIP):';

  @override
  String get outputEfiTitle => 'Çıktı EFI Klasörü:';

  @override
  String get selectOutputFolder => 'Çıktı Klasörünü Seç';

  @override
  String get clearConfig => 'Yapılandırmayı Temizle';

  @override
  String get importConfigModel => 'configModel İçe Aktar';

  @override
  String get importingConfigModel => 'configModel içe aktarılıyor...';

  @override
  String get dragDropConfigModel =>
      'configModel dosyasını buraya sürükleyip bırakın\nveya göz atmak için tıklayın';

  @override
  String get clearAllHistory => 'Tüm Geçmişi Temizle';

  @override
  String get clearingHistory => 'Geçmiş temizleniyor...';

  @override
  String get noHistoryRecords => 'Henüz geçmiş kaydı yok';

  @override
  String get overview => 'Genel Bakış';

  @override
  String get platformPatches => 'Platform Yamaları';

  @override
  String get audioPatches => 'Ses Yamaları';

  @override
  String get gpuSpoofing => 'GPU Sahtelemesi';

  @override
  String get disableDevices => 'Aygıtları Devre Dışı Bırak';

  @override
  String get brightnessPatches => 'Parlaklık Yamaları';

  @override
  String get graphicsPatches => 'Grafik Yamaları';

  @override
  String get wifiPatches => 'Wi-Fi Yamaları';

  @override
  String get documentationGuides => 'Belgeler ve Kılavuzlar';

  @override
  String get aboutSupport => 'Hakkında ve Destek';

  @override
  String get hardwareTabTitle => 'Donanım Yapılandırması';

  @override
  String get acpiFolderTitle => 'ACPI Klasörü';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Veriler yükleniyor...';

  @override
  String get configuringEfiWait => 'EFI yapılandırılıyor, lütfen bekleyin...';

  @override
  String get summary => 'Özet';

  @override
  String get recent => 'Son Kullanılanlar';

  @override
  String get efiConfig => 'EFI Yapılandırması';

  @override
  String get toolsAndGuides => 'Araçlar ve Kılavuzlar';

  @override
  String get checkUpdates => 'Güncellemeleri Denetle';

  @override
  String get sponsorDeveloper => 'Geliştiriciye Destek Ol';

  @override
  String get releaseNotes => 'Sürüm Notları';

  @override
  String get searchPlaceholder => 'Ara';

  @override
  String get initialSupportMacOs =>
      'İlk yerel olarak desteklenen macOS sürümü:';

  @override
  String get lastSupportMacOs =>
      'En son yerel olarak desteklenen macOS sürümü:';

  @override
  String get oclpSupportMacOs => 'OCLP yaması ile desteklenen macOS sürümleri:';

  @override
  String get cpuInfoTitle => '[İşlemci Bilgisi]:';

  @override
  String get biosRecommendedEnabled => '[BIOS Önerilen Ayarlar - Etkin]:';

  @override
  String get biosRecommendedDisabled => '[BIOS Önerilen Ayarlar - Devre Dışı]:';

  @override
  String get historyExpanderDesc =>
      'RapidEFI ile oluşturulan EFI\'ler otomatik olarak geçmişe yedeklenir.\nÖnceden oluşturulmuş herhangi bir EFI\'yi istediğiniz zaman yeniden yükleyebilir ve ayarlayabilirsiniz.\n\nBu özellik RapidEFI V3.0.0 ve sonraki sürümlerde desteklenir.';

  @override
  String get gpuPresets => 'Ön ayarlar';

  @override
  String get gpuByCpuModel => 'İşlemci Modeline Göre';

  @override
  String get selectCpuGeneration => 'Nesil Seçin';

  @override
  String get selectCpuModel => 'İşlemci Seçin';

  @override
  String get cpuGenerationLabel => 'İşlemci Nesli';

  @override
  String get cpuModelLabel => 'İşlemci Modeli';

  @override
  String get matchingIgpuTip =>
      'Eşleşiyorsa işaretleyin, aksi halde işaretsiz bırakın';

  @override
  String get selectPropertiesToApply => 'Uygulanacak özellikleri seçin';

  @override
  String get motherboardConfigTitle => 'Anakart Modeli Yapılandırması:';

  @override
  String get motherboardConfigItems =>
      'Uygulanacak yapılandırma öğelerini seçin';

  @override
  String get selectModelToConfigure => '(Yapılandırmak için modeli seçin)';

  @override
  String get pleaseSelect => 'Lütfen seçin';

  @override
  String get selectAllDeselectAll => 'Tümünü Seç / Seçimi Kaldır';

  @override
  String get deselectAll => 'Tümünün Seçimini Kaldır';

  @override
  String get stuckOnEbFix =>
      '[EB] Takılma Düzeltmesi (İsteğe bağlı - varsayılanlar önerilir):';

  @override
  String get renameCurrentEfi => 'Geçerli EFI\'yi Yeniden Adlandır';

  @override
  String get enterNewName => 'Yeni adı girin';

  @override
  String get renameEfiTooltip => 'EFI\'yi Yeniden Adlandır';

  @override
  String get adminPrivilegesRequired => 'Yönetici Ayrıcalıkları Gerekli';

  @override
  String get enterLoginPassword =>
      'Lütfen bilgisayarınızın giriş şifresini girin';

  @override
  String get importHardwareMaterials => 'Donanım Malzemelerini İçe Aktar';

  @override
  String get currentBiosSettings => 'Geçerli BIOS Ayarları';

  @override
  String get colorTheme => 'Renk Teması';

  @override
  String get noValidHardwareReport =>
      'Geçerli bir donanım rapor dosyası algılanmadı';

  @override
  String get viewOnGitHub => 'GitHub\'da Görüntüle';

  @override
  String get downloadNow => 'Şimdi İndir';

  @override
  String get btnConfirm => 'Onayla';

  @override
  String get btnDeleteRecord => 'Bu kaydı sil';

  @override
  String get currentEfiNamePrefix => 'Geçerli EFI Adı: ';

  @override
  String get close => 'Kapat';

  @override
  String get applySelected => 'Seçilenleri Uygula';

  @override
  String get connectedGpuPrefix => 'Bağlı GPU: ';

  @override
  String get requiresSpoofIdPrefix => 'Spoof Kimliği Gerekli: ';

  @override
  String get selectPlatform => 'Platform Nesli';

  @override
  String get selectVendor => 'Marka';

  @override
  String get selectModel => 'Anakart Modeli';

  @override
  String get btnImport => 'İçe Aktar';

  @override
  String get defaultLabel => 'Varsayılan';

  @override
  String get wifiBluetoothDrivers => 'Wi-Fi ve Bluetooth Sürücüleri:';

  @override
  String get noWifiDriversByDefault =>
      '(Varsayılan olarak hiçbir Wi-Fi sürücüsü yapılandırılmamıştır)';

  @override
  String get getIntelModifiedOclp => 'Intel Değiştirilmiş OCLP\'yi Edinin';

  @override
  String get forLaptopSystems => '(Dizüstü Bilgisayarlar İçin)';

  @override
  String get basicConfig => 'Temel Yapılandırma';

  @override
  String get advancedConfig => 'Gelişmiş Yapılandırma';

  @override
  String get portCustomization => 'Bağlantı Noktası Özelleştirmesi';

  @override
  String get displayEdid => 'EDID\'yi görüntüle';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU\'su';

  @override
  String get amdDgpu => 'AMD dGPU\'su';

  @override
  String get amdDgpuSpoof => 'AMD dGPU Sahtekarlığı';

  @override
  String get intelWifi => 'Intel Wi-Fi';

  @override
  String get broadcomBrcm => 'Broadcom (Brcm)';

  @override
  String get atherosWifi => 'Ateros';

  @override
  String get usbWifi => 'USB Wi-Fi';

  @override
  String get bluetoothDrivers => 'Bluetooth Sürücüleri';

  @override
  String get debuggingTab => 'Hata ayıklama';

  @override
  String get amfiSipTab => 'AMFI / SIP';

  @override
  String get igpuFixesTab => 'iGPU Düzeltmeleri';

  @override
  String get dgpuFixesTab => 'dGPU Düzeltmeleri';

  @override
  String get blackScreenFixesTab => 'Siyah Ekran Düzeltmeleri';

  @override
  String get above4gTab => '4G Kod Çözme Üstü';

  @override
  String get trackpadFixesTab => 'İzleme Dörtgeni Düzeltmeleri';

  @override
  String get othersTab => 'Diğerleri';

  @override
  String get powerManagementTab => 'Güç Yönetimi';

  @override
  String get sleepHibernationTab => 'Uyku / Hazırda Bekletme';

  @override
  String get storageDiskTab => 'Depolama / Disk';

  @override
  String get cpuFixesTab => 'CPU Düzeltmeleri';

  @override
  String get amdPlatformTab => 'AMD Platformu';

  @override
  String get usbFixesTab => 'USB Düzeltmeleri';

  @override
  String get sdCardTab => 'SD Kart';

  @override
  String get brandTab => 'Marka';

  @override
  String get specialMotherboardTab => 'Özel Anakart';

  @override
  String get sipSettingsTab => 'SIP Ayarları';

  @override
  String get renameCpuTab => 'CPU\'yu yeniden adlandır';

  @override
  String get uiScaleTab => 'Kullanıcı Arayüzü Ölçeği';

  @override
  String get acpiConfigTab => 'ACPI Yapılandırması';

  @override
  String get booterConfigTab => 'Önyükleyici Yapılandırması';

  @override
  String get kernelConfigTab => 'Çekirdek Yapılandırması';

  @override
  String get uefiConfigTab => 'UEFI Yapılandırması';

  @override
  String get lookupLayoutId => 'Arama Düzeni Kimliği';

  @override
  String get visitChris1111Repo => 'chris1111 Deposunu ziyaret edin';

  @override
  String get supportedMacOsVersions => 'Desteklenen macOS Sürümleri:';

  @override
  String get supportedUsbWifiChipsets => 'Desteklenen USB Wi-Fi Yonga Setleri:';

  @override
  String get selectUtbMap => 'UTBMap\'i seçin';

  @override
  String get selectUtbMapHint =>
      'USBToolBox ile oluşturulan eşlenmiş UTBMap.kext\'i seçin';

  @override
  String get reprocessEfiSubtitle =>
      '(RapidEFI tarafından oluşturulan bir EFI\'yi yeniden işleyin)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI, EFI klasörü içinde otomatik olarak bir configModel dosyası çıkarır. EFI yapılandırmanızı yeniden yüklemek ve özelleştirmek için aşağıdaki dosyayı içe aktarın.';

  @override
  String get reprocessEfiVersionNote =>
      'Bu özellik RapidEFI V3.0.0 ve üzeri sürümlerde desteklenmektedir.';

  @override
  String get dropConfigModelHint =>
      'ConfigModel dosyasını buraya bırakın veya göz atmak için tıklayın';

  @override
  String get offLabel => 'Kapalı';

  @override
  String get onLabel => 'Açık';

  @override
  String get githubRepository => 'GitHub Deposu';

  @override
  String get releasesAndUpdates => 'Sürümler ve Güncellemeler';

  @override
  String get projectDocumentation => 'Proje Dokümantasyonu';

  @override
  String get aboutSupportDetails =>
      'RapidEFI, Hackintosh ve macOS meraklıları için geliştirilmiş açık kaynaklı, otomatik bir OpenCore EFI oluşturucu, ACPI/SSDT yamalı ve donanım analiz aracıdır.\n\nSevgiyle yaratıldı ve sürdürüldü. Devam eden gelişimi desteklemek için projeyi GitHub\'da yıldızlandırın ve çatallayın!';

  @override
  String get checkApplicableOptions => '(Geçerli seçenekleri kontrol edin)';

  @override
  String get optionalCheckApplicableOptions =>
      '(İsteğe bağlı - uygulanabilir seçenekleri kontrol edin)';

  @override
  String get appleAlcUsedByDefault =>
      '(Varsayılan olarak AppleALC sürücüsü kullanılır)';

  @override
  String get noEthernetDriverByDefault =>
      '(Varsayılan olarak Ethernet sürücüsü eklenmemiştir)';

  @override
  String get usbInjectAllByDefault =>
      '(USBInjectAll varsayılan olarak kullanılır)';

  @override
  String get verboseModeByDefault =>
      '(-v ayrıntılı mod varsayılan olarak etkindir; devre dışı bırakmak için işareti kaldırın)';

  @override
  String get optionalDriversSubtitle =>
      '(İsteğe bağlı sürücüler - gerekmedikçe gerekli değildir)';

  @override
  String get keepDefaultsSubtitle =>
      '(Belirli bir özelleştirme gerekmediği sürece varsayılanları koruyun)';

  @override
  String get optionalCheckDeviceBrand =>
      'İsteğe bağlı - Cihazınızın markasının eşleşip eşleşmediğini kontrol edin';

  @override
  String get optionalCheckMotherboardModel =>
      'İsteğe bağlı - Anakart modelinin eşleşip eşleşmediğini kontrol edin';

  @override
  String get optionalConfigureSip =>
      'İsteğe bağlı - SIP\'yi gerektiği gibi yapılandırın (Varsayılan olarak devre dışıdır)';

  @override
  String get optionalCustomCpuName => 'İsteğe Bağlı - Özel CPU Adı';

  @override
  String get optionalAdjustUiScale =>
      'İsteğe bağlı - OpenCore önyükleme kullanıcı arayüzü ölçeğini ayarlayın';

  @override
  String get acpiSsdtPatches => 'ACPI - SSDT Yamaları';

  @override
  String get acpiPatches => 'ACPI - Yamalar';

  @override
  String get kernelPatches => 'Çekirdek - Yamalar';

  @override
  String get powerManagement => 'Güç Yönetimi';

  @override
  String get ssdApfsTrimPolicy => 'NVMe / SATA SSD APFS Trim Politikası';

  @override
  String get kernelQuirksSubtitle =>
      'Çekirdek - Tuhaflıklar (Belirli düzeltmeler gerekmediği sürece varsayılan ayarlar önerilir)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - Sürücüler (Özel ihtiyaçlar ortaya çıkmadıkça varsayılan yapılandırmaları koruyun)';

  @override
  String get uefiOutputSubtitle => 'UEFI - Çıkış (Varsayılan ayarlar önerilir)';

  @override
  String get method1Title =>
      'Yöntem 1: \'GPRW\'yi XPRW olarak yeniden adlandırın (Anında Uyandırma Düzeltmesi)';

  @override
  String get method2Title =>
      'Yöntem 2: \'UPRW\'yi XPRW olarak yeniden adlandırın (Anında Uyandırma Düzeltmesi)';

  @override
  String get method3Title =>
      'Yöntem 3: \'RTC Düzeltme\'yi yeniden adlandırın (RTC Kapanmasını Düzeltme / CMOS Sıfırlama)';

  @override
  String get method4Title =>
      'Yöntem 4: \'Pil Düzeltme\'yi yeniden adlandırın (16 bit ila 8 bit Pil Yamalarını Destekleyin)';

  @override
  String get pciPathLabel => 'dGPU PCI Yolu:';

  @override
  String get pciPathPlaceholder => 'PCI Yolunu Girin';

  @override
  String get spoofedDeviceIdLabel => 'Sahte Cihaz Kimliği:';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'Sahtekarlık yapılacak GPU cihazını seçin';

  @override
  String get injectDisplayEdidLabel =>
      'Ekran EDID\'sini enjekte edin (genellikle 256 veya 512 onaltılık karakter):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'Ekran EDID\'sini girin (genellikle 256 veya 512 onaltılık karakter; boşluklara ve yeni satırlara izin verilir)';

  @override
  String get failed => 'Başarısız';

  @override
  String get method1 => 'Yöntem 1';

  @override
  String get method2 => 'Yöntem 2';

  @override
  String get method3 => 'Yöntem 3';

  @override
  String get method4 => 'Yöntem 4';

  @override
  String get optionalKextDrivers => 'İsteğe Bağlı Kext Sürücüleri';

  @override
  String get optionalKextSubTitle =>
      'Donanımınıza göre isteğe bağlı kext sürücülerini seçin';

  @override
  String get brandConfigTab => 'Marka';

  @override
  String get optionalSettings => 'İsteğe Bağlı Ayarlar';

  @override
  String get optionalSettingsSubTitle =>
      'Ek isteğe bağlı yapılandırmaları seçin';

  @override
  String get optionalCheckMotherboard => 'Özel Anakart Seçenekleri';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI, EFI klasörünün içinde otomatik olarak bir configModel dosyası oluşturur.\nEFI yapılandırmanızı yeniden yüklemek ve özelleştirmek için bu dosyayı aşağıdan içe aktarın.\n\nBu özellik RapidEFI V3.0.0 ve sonraki sürümlerde desteklenir.';

  @override
  String get releaseToReimportConfigModel =>
      'configModel\'i yeniden içe aktarmak için bırakın';

  @override
  String get invalidConfigFileMessage =>
      'Geçersiz yapılandırma dosyası. Lütfen geçerli bir configModel dosyası seçin.';

  @override
  String get ethernetTitle => 'Ethernet Sürücüleri:';

  @override
  String get usbTitle => 'USB Sürücüleri:';

  @override
  String get ssdtCoreOfficial => '* Çekirdek (Resmi)';

  @override
  String get ssdtRecommendedFixes => '* Önerilen (Düzeltmeler)';

  @override
  String get ssdtOptionalEnhancements => '* İsteğe Bağlı (Geliştirmeler)';

  @override
  String get platformDesktop => 'Masaüstü';

  @override
  String get platformLaptop => 'Dizüstü';

  @override
  String get platformNucMini => 'NUC / Mini PC';

  @override
  String get platformHedtServer => 'HEDT / Sunucu';
}
