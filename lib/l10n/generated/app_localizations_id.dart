// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - Alat Konfigurasi OpenCore EFI';

  @override
  String get navHardware => 'Perangkat Keras';

  @override
  String get navManual => 'Konfigurasi Manual EFI';

  @override
  String get navProcess => 'Proses EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Riwayat';

  @override
  String get navSettings => 'Pengaturan';

  @override
  String get navAbout => 'Tentang';

  @override
  String get navSponsor => 'Dukung Pengembang';

  @override
  String get btnRefresh => 'Segarkan';

  @override
  String get btnImportReport => 'Impor Laporan';

  @override
  String get btnExportReport => 'Ekspor Laporan';

  @override
  String get btnExportAcpi => 'Ekspor ACPI';

  @override
  String get btnEfiSettings => 'Pengaturan EFI';

  @override
  String get btnExportEfi => 'Ekspor EFI';

  @override
  String get btnGenerateEfi => 'Buat EFI';

  @override
  String get btnBrowse => 'Jelajahi';

  @override
  String get btnChooseFile => 'Pilih File';

  @override
  String get btnCancel => 'Batal';

  @override
  String get btnApply => 'Terapkan';

  @override
  String get btnSave => 'Simpan';

  @override
  String get btnClose => 'Tutup';

  @override
  String get btnCheckUpdates => 'Periksa Pembaruan';

  @override
  String get btnChecking => 'Memeriksa...';

  @override
  String get btnSelectAll => 'Pilih Semua';

  @override
  String get btnDeselectAll => 'Batal Pilih Semua';

  @override
  String get btnCustomSsdt => 'SSDT Khusus';

  @override
  String get btnPrebuiltSsdt => 'SSDT Siap Pakai';

  @override
  String get btnDumpAcpi => 'Ekstrak ACPI';

  @override
  String get btnSelectAcpis => 'Pilih ACPI';

  @override
  String get btnSelectConfig => 'Pilih config';

  @override
  String get btnMergeConfig => 'Gabungkan config';

  @override
  String get btnExecutePatch => 'Terapkan Patch';

  @override
  String get btnOpenFolder => 'Buka Folder';

  @override
  String get hardwareReport => 'Laporan Perangkat Keras';

  @override
  String get cpuArchitecture => 'Prosesor (CPU)';

  @override
  String get motherboardChipset => 'Motherboard & Chipset';

  @override
  String get graphicsDevice => 'Grafis (GPU)';

  @override
  String get audioCodec => 'Pengontrol Audio';

  @override
  String get networkController => 'Jaringan & Wi-Fi';

  @override
  String get storageDevice => 'Perangkat Penyimpanan';

  @override
  String get acpiTables => 'Tabel ACPI';

  @override
  String get compatibilityStatus => 'Kompatibilitas';

  @override
  String get compatible => 'Didukung';

  @override
  String get unsupported => 'Tidak Didukung';

  @override
  String get requiresPatch => 'Perlu Patch';

  @override
  String get details => 'Detail';

  @override
  String get showDetailedReport => 'Tampilan Detail';

  @override
  String get platformConfig => 'Konfigurasi Platform';

  @override
  String get cpuVendor => 'Vendor CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Faktor Bentuk';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Laptop';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Server';

  @override
  String get processorGen => 'Generasi Prosesor';

  @override
  String get targetMacOs => 'Versi macOS Target';

  @override
  String get smbiosModel => 'Model SMBIOS Target';

  @override
  String get motherboardSelector => 'Pilihan Motherboard';

  @override
  String get brand => 'Merek';

  @override
  String get model => 'Model';

  @override
  String get outputDirectory => 'Direktori Output';

  @override
  String get kextConfiguration => 'Konfigurasi Kext';

  @override
  String get bootArguments => 'Argumen Booting (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Aktif (00000000)';

  @override
  String get sipDisabled => 'SIP Nonaktif (03080000)';

  @override
  String get processEfiTitle => 'Proses & Bangun Ulang EFI';

  @override
  String get chooseEfiPrompt =>
      'Pilih folder EFI atau file configModel untuk memuat konfigurasi';

  @override
  String get configModelFound => 'ConfigModel berhasil ditemukan dan dimuat';

  @override
  String get rebuildEfi => 'Bangun Ulang EFI';

  @override
  String get ssdtGeneratorTitle => 'Pembuat SSDT & Penambal ACPI';

  @override
  String get corePatches => 'Patch Utama';

  @override
  String get recommendedPatches => 'Patch Disarankan';

  @override
  String get optionalPatches => 'Patch Opsional';

  @override
  String get compilationComplete => 'Kompilasi Selesai';

  @override
  String get mergeSuccess => 'Berhasil digabungkan ke EFI';

  @override
  String get oclpTitle => 'Integrasi OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Root Patching';

  @override
  String get graphicsAcceleration => 'Akselerasi Grafis';

  @override
  String get wirelessFix => 'Perbaikan Wi-Fi & Bluetooth';

  @override
  String get postInstall => 'Langkah Pasca Instalasi';

  @override
  String get tahoeGuideTitle => 'Panduan Kompatibilitas macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Adaptasi Kernel & Audio Tahoe 26';

  @override
  String get settingsTitle => 'Pengaturan';

  @override
  String get appLanguage => 'Bahasa :';

  @override
  String get followSystem => 'Ikuti Sistem';

  @override
  String get themeMode => 'Mode Tema :';

  @override
  String get themeColor => 'Warna Tema :';

  @override
  String get appFont => 'Font Aplikasi :';

  @override
  String get efiOptions => 'Opsi EFI :';

  @override
  String get addThemeToEfi => 'Tambahkan tema boot OpenCore ke EFI';

  @override
  String get generateConfigModel => 'Buat file configModel di folder EFI';

  @override
  String get compressZipEfi => 'Kompres EFI ke file ZIP';

  @override
  String get checkForUpdates => 'Periksa Pembaruan :';

  @override
  String currentVersion(String version) {
    return 'Versi saat ini: $version';
  }

  @override
  String get copyrightNotice => 'Hak Cipta & Lisensi';

  @override
  String get exitAppTip => 'Tekan kembali sekali lagi untuk keluar';

  @override
  String get updateAvailable => 'Versi baru tersedia';

  @override
  String versionTag(String version) {
    return 'Versi: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Tanggal Rilis: $date';
  }

  @override
  String get noUpdateFound => 'Anda menggunakan versi terbaru';

  @override
  String get efiBuildSuccess => 'EFI berhasil dibuat!';

  @override
  String get efiBuildFailed => 'Gagal membuat EFI';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get soundLayoutId => 'Audio Layout ID (alcid)';

  @override
  String get nvramBootArgs => 'boot-args kustom';

  @override
  String get generateSerial => 'Buat Nomor Seri';

  @override
  String get navManualTab => 'Konfigurasi Manual EFI';

  @override
  String get navAutoTab => 'Konfigurasi Otomatis EFI';

  @override
  String get cpuSelection => 'Pilihan Prosesor (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Prosesor Pentium atau Celeron memerlukan spoofing CPU; harap aktifkan ini!\nCatatan: iGPU Pentium/Celeron umumnya tidak didukung!';

  @override
  String get platformSelection => 'Pilihan Platform:';

  @override
  String get processorGeneration => 'Generasi Prosesor:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 core / 12 thread) memerlukan spoofing CPU khusus';

  @override
  String get amdCoresTitle => 'Jumlah Core CPU AMD:';

  @override
  String get amdSpecialMb => 'Motherboard Khusus AMD:';

  @override
  String get usePrecastMmio => 'Gunakan Precast MMIO';

  @override
  String get useRyzenGpu => 'Aktifkan Dukungan iGPU Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Merek Motherboard:';

  @override
  String get motherboardModel => 'Model Motherboard:';

  @override
  String get customMotherboard => 'Motherboard Kustom / Generik';

  @override
  String get igpuConfig => 'Konfigurasi iGPU:';

  @override
  String get dgpuConfig => 'Konfigurasi dGPU:';

  @override
  String get audioConfig => 'Konfigurasi Audio:';

  @override
  String get audioCodecFix => 'Codec Audio & Layout ID';

  @override
  String get fixIrq => 'Perbaiki Konflik IRQ';

  @override
  String get networkConfig => 'Konfigurasi Jaringan & Wi-Fi:';

  @override
  String get laptopDrivers => 'Driver Laptop:';

  @override
  String get touchpadDriver => 'Driver Touchpad (I2C / PS2)';

  @override
  String get smbiosSelection => 'Model SMBIOS Target:';

  @override
  String get targetMacOsVersion => 'Versi macOS Target:';

  @override
  String get bootArgsTitle => 'Argumen Booting (boot-args):';

  @override
  String get csrActiveConfigTitle => 'Perlindungan Integritas Sistem (SIP):';

  @override
  String get outputEfiTitle => 'Direktori Output EFI:';

  @override
  String get selectOutputFolder => 'Pilih Direktori Output';

  @override
  String get clearConfig => 'Hapus Konfigurasi';

  @override
  String get importConfigModel => 'Impor configModel';

  @override
  String get importingConfigModel => 'Mengimpor configModel...';

  @override
  String get dragDropConfigModel =>
      'Seret dan lepas file configModel ke sini\natau klik untuk menelusuri';

  @override
  String get clearAllHistory => 'Hapus Semua Riwayat';

  @override
  String get clearingHistory => 'Menghapus riwayat...';

  @override
  String get noHistoryRecords => 'Belum ada riwayat';

  @override
  String get overview => 'Ikhtisar';

  @override
  String get platformPatches => 'Patch Platform';

  @override
  String get audioPatches => 'Patch Audio';

  @override
  String get gpuSpoofing => 'Spoofing GPU';

  @override
  String get disableDevices => 'Nonaktifkan Perangkat';

  @override
  String get brightnessPatches => 'Patch Kecerahan';

  @override
  String get graphicsPatches => 'Patch Grafis';

  @override
  String get wifiPatches => 'Patch Wi-Fi';

  @override
  String get documentationGuides => 'Dokumentasi & Panduan';

  @override
  String get aboutSupport => 'Tentang & Bantuan';

  @override
  String get hardwareTabTitle => 'Konfigurasi Perangkat Keras';

  @override
  String get acpiFolderTitle => 'Folder ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Memuat data...';

  @override
  String get configuringEfiWait => 'Mengonfigurasi EFI, harap tunggu...';

  @override
  String get summary => 'Ringkasan';

  @override
  String get recent => 'Terbaru';

  @override
  String get efiConfig => 'Konfigurasi EFI';

  @override
  String get toolsAndGuides => 'Alat & Panduan';

  @override
  String get checkUpdates => 'Periksa Pembaruan';

  @override
  String get sponsorDeveloper => 'Dukung Pengembang';

  @override
  String get releaseNotes => 'Catatan Rilis';

  @override
  String get searchPlaceholder => 'Cari';

  @override
  String get initialSupportMacOs =>
      'Versi macOS yang didukung secara bawaan awal:';

  @override
  String get lastSupportMacOs =>
      'Versi macOS terbaru yang didukung secara bawaan:';

  @override
  String get oclpSupportMacOs => 'Versi macOS yang didukung tambalan OCLP:';

  @override
  String get cpuInfoTitle => '[Info CPU]:';

  @override
  String get biosRecommendedEnabled =>
      '[Pengaturan BIOS yang Disarankan - Diaktifkan]:';

  @override
  String get biosRecommendedDisabled =>
      '[Pengaturan BIOS yang Disarankan - Dinonaktifkan]:';

  @override
  String get historyExpanderDesc =>
      'EFI yang dibuat dengan RapidEFI dicadangkan secara otomatis ke riwayat.\nAnda dapat memuat ulang dan menyesuaikan EFI yang dibuat sebelumnya kapan saja.\n\nFitur ini didukung pada RapidEFI V3.0.0 ke atas.';

  @override
  String get gpuPresets => 'Preset';

  @override
  String get gpuByCpuModel => 'Berdasarkan Model CPU';

  @override
  String get selectCpuGeneration => 'Pilih Generasi';

  @override
  String get selectCpuModel => 'Pilih CPU';

  @override
  String get cpuGenerationLabel => 'Generasi CPU';

  @override
  String get cpuModelLabel => 'Model CPU';

  @override
  String get matchingIgpuTip =>
      'Centang jika cocok, jika tidak biarkan tidak dicentang';

  @override
  String get selectPropertiesToApply => 'Pilih properti yang akan diterapkan';

  @override
  String get motherboardConfigTitle => 'Konfigurasi Model Motherboard:';

  @override
  String get motherboardConfigItems =>
      'Pilih item konfigurasi untuk diterapkan';

  @override
  String get selectModelToConfigure => '(Pilih model untuk dikonfigurasi)';

  @override
  String get pleaseSelect => 'Silakan pilih';

  @override
  String get selectAllDeselectAll => 'Pilih / Batalkan Semua';

  @override
  String get deselectAll => 'Batalkan Semua';

  @override
  String get stuckOnEbFix =>
      'Perbaikan macet di [EB] (Opsional - disarankan default):';

  @override
  String get renameCurrentEfi => 'Ubah Nama EFI Saat Ini';

  @override
  String get enterNewName => 'Masukkan nama baru';

  @override
  String get renameEfiTooltip => 'Ubah Nama EFI';

  @override
  String get adminPrivilegesRequired => 'Hak Istimewa Administrator Diperlukan';

  @override
  String get enterLoginPassword =>
      'Silakan masukkan kata sandi masuk komputer Anda';

  @override
  String get importHardwareMaterials => 'Impor Materi Perangkat Keras';

  @override
  String get currentBiosSettings => 'Pengaturan BIOS Saat Ini';

  @override
  String get colorTheme => 'Tema Warna';

  @override
  String get noValidHardwareReport =>
      'Tidak ada file laporan perangkat keras yang valid terdeteksi';

  @override
  String get viewOnGitHub => 'Lihat di GitHub';

  @override
  String get downloadNow => 'Unduh Sekarang';

  @override
  String get btnConfirm => 'Konfirmasi';

  @override
  String get btnDeleteRecord => 'Hapus catatan ini';

  @override
  String get currentEfiNamePrefix => 'Nama EFI Saat Ini: ';

  @override
  String get close => 'Tutup';

  @override
  String get applySelected => 'Terapkan yang Dipilih';

  @override
  String get connectedGpuPrefix => 'GPU Terhubung: ';

  @override
  String get requiresSpoofIdPrefix => 'Memerlukan Spoof ID: ';

  @override
  String get selectPlatform => 'Generasi Platform';

  @override
  String get selectVendor => 'Merek';

  @override
  String get selectModel => 'Model Motherboard';

  @override
  String get btnImport => 'Impor';

  @override
  String get defaultLabel => 'Bawaan';
}
