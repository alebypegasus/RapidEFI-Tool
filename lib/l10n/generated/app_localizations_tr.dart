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
  String get btnExportEfi => 'EFI Dışa Aktar';

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
}
