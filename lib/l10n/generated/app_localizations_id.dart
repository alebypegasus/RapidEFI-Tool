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
}
