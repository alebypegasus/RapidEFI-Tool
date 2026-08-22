// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - Công cụ cấu hình OpenCore EFI';

  @override
  String get navHardware => 'Phần cứng';

  @override
  String get navManual => 'Cấu hình EFI thủ công';

  @override
  String get navProcess => 'Chỉnh sửa EFI';

  @override
  String get navSsdt => 'Tạo SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Lịch sử';

  @override
  String get navSettings => 'Cài đặt';

  @override
  String get navAbout => 'Giới thiệu';

  @override
  String get navSponsor => 'Ủng hộ nhà phát triển';

  @override
  String get btnRefresh => 'Làm mới';

  @override
  String get btnImportReport => 'Nhập báo cáo';

  @override
  String get btnExportReport => 'Xuất báo cáo';

  @override
  String get btnExportAcpi => 'Xuất ACPI';

  @override
  String get btnEfiSettings => 'Cài đặt EFI';

  @override
  String get btnExportEfi => 'Xuất EFI';

  @override
  String get btnGenerateEfi => 'Tạo EFI';

  @override
  String get btnBrowse => 'Duyệt';

  @override
  String get btnChooseFile => 'Chọn tệp';

  @override
  String get btnCancel => 'Hủy';

  @override
  String get btnApply => 'Áp dụng';

  @override
  String get btnSave => 'Lưu';

  @override
  String get btnClose => 'Đóng';

  @override
  String get btnCheckUpdates => 'Kiểm tra cập nhật';

  @override
  String get btnChecking => 'Đang kiểm tra...';

  @override
  String get btnSelectAll => 'Chọn tất cả';

  @override
  String get btnDeselectAll => 'Bỏ chọn tất cả';

  @override
  String get btnCustomSsdt => 'SSDT tùy chỉnh';

  @override
  String get btnPrebuiltSsdt => 'SSDT dựng sẵn';

  @override
  String get btnDumpAcpi => 'Trích xuất ACPI';

  @override
  String get btnSelectAcpis => 'Chọn ACPI';

  @override
  String get btnSelectConfig => 'Chọn config';

  @override
  String get btnMergeConfig => 'Gộp config';

  @override
  String get btnExecutePatch => 'Áp dụng bản vá';

  @override
  String get btnOpenFolder => 'Mở thư mục';

  @override
  String get hardwareReport => 'Báo cáo phần cứng';

  @override
  String get cpuArchitecture => 'Bộ xử lý (CPU)';

  @override
  String get motherboardChipset => 'Bo mạch chủ & Chipset';

  @override
  String get graphicsDevice => 'Đồ họa (GPU)';

  @override
  String get audioCodec => 'Bộ điều khiển âm thanh';

  @override
  String get networkController => 'Mạng & Wi-Fi';

  @override
  String get storageDevice => 'Thiết bị lưu trữ';

  @override
  String get acpiTables => 'Bảng ACPI';

  @override
  String get compatibilityStatus => 'Khả năng tương thích';

  @override
  String get compatible => 'Được hỗ trợ';

  @override
  String get unsupported => 'Không hỗ trợ';

  @override
  String get requiresPatch => 'Cần bản vá';

  @override
  String get details => 'Chi tiết';

  @override
  String get showDetailedReport => 'Xem chi tiết';

  @override
  String get platformConfig => 'Cấu hình nền tảng';

  @override
  String get cpuVendor => 'Hãng CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Kiểu dáng thiết bị';

  @override
  String get desktop => 'Máy tính để bàn';

  @override
  String get laptop => 'Máy tính xách tay';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Máy chủ';

  @override
  String get processorGen => 'Thế hệ vi xử lý';

  @override
  String get targetMacOs => 'Phiên bản macOS đích';

  @override
  String get smbiosModel => 'Mẫu SMBIOS đích';

  @override
  String get motherboardSelector => 'Chọn bo mạch chủ';

  @override
  String get brand => 'Thương hiệu';

  @override
  String get model => 'Mẫu mã';

  @override
  String get outputDirectory => 'Thư mục đầu ra';

  @override
  String get kextConfiguration => 'Cấu hình Kext';

  @override
  String get bootArguments => 'Tham số khởi động (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'Bật SIP (00000000)';

  @override
  String get sipDisabled => 'Tắt SIP (03080000)';

  @override
  String get processEfiTitle => 'Chỉnh sửa & Xây dựng lại EFI';

  @override
  String get chooseEfiPrompt =>
      'Chọn thư mục EFI hoặc tệp configModel để tải cấu hình';

  @override
  String get configModelFound => 'Đã phát hiện và tải configModel thành công';

  @override
  String get rebuildEfi => 'Xây dựng lại EFI';

  @override
  String get ssdtGeneratorTitle => 'Bộ tạo SSDT & Vá ACPI';

  @override
  String get corePatches => 'Bản vá cốt lõi';

  @override
  String get recommendedPatches => 'Bản vá đề xuất';

  @override
  String get optionalPatches => 'Bản vá tùy chọn';

  @override
  String get compilationComplete => 'Biên dịch hoàn tất';

  @override
  String get mergeSuccess => 'Đã gộp vào EFI thành công';

  @override
  String get oclpTitle => 'Tích hợp OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Vá Root';

  @override
  String get graphicsAcceleration => 'Tăng tốc đồ họa';

  @override
  String get wirelessFix => 'Sửa lỗi Wi-Fi & Bluetooth';

  @override
  String get postInstall => 'Các bước sau cài đặt';

  @override
  String get tahoeGuideTitle => 'Hướng dẫn tương thích macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Tương thích Kernel & Âm thanh Tahoe 26';

  @override
  String get settingsTitle => 'Cài đặt';

  @override
  String get appLanguage => 'Ngôn ngữ :';

  @override
  String get followSystem => 'Theo hệ thống';

  @override
  String get themeMode => 'Chế độ giao diện :';

  @override
  String get themeColor => 'Màu chủ đạo :';

  @override
  String get appFont => 'Phông chữ ứng dụng :';

  @override
  String get efiOptions => 'Tùy chọn EFI :';

  @override
  String get addThemeToEfi => 'Thêm giao diện khởi động OpenCore vào EFI';

  @override
  String get generateConfigModel => 'Tạo tệp configModel trong thư mục EFI';

  @override
  String get compressZipEfi => 'Nén EFI thành tệp ZIP';

  @override
  String get checkForUpdates => 'Kiểm tra cập nhật :';

  @override
  String currentVersion(String version) {
    return 'Phiên bản hiện tại: $version';
  }

  @override
  String get copyrightNotice => 'Bản quyền & Giấy phép';

  @override
  String get exitAppTip => 'Nhấn quay lại lần nữa để thoát';

  @override
  String get updateAvailable => 'Có phiên bản mới';

  @override
  String versionTag(String version) {
    return 'Phiên bản: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Ngày phát hành: $date';
  }

  @override
  String get noUpdateFound => 'Bạn đang sử dụng phiên bản mới nhất';

  @override
  String get efiBuildSuccess => 'Tạo EFI thành công!';

  @override
  String get efiBuildFailed => 'Tạo EFI thất bại';

  @override
  String get copiedToClipboard => 'Đã sao chép vào bộ nhớ tạm';

  @override
  String get soundLayoutId => 'Layout ID Âm thanh (alcid)';

  @override
  String get nvramBootArgs => 'boot-args tùy chỉnh';

  @override
  String get generateSerial => 'Tạo số Serial';

  @override
  String get navManualTab => 'Cấu hình EFI Thủ công';

  @override
  String get navAutoTab => 'Cấu hình EFI Tự động';

  @override
  String get cpuSelection => 'Chọn Bộ xử lý (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Bộ xử lý Pentium hoặc Celeron yêu cầu giả lập CPU (CPU spoofing); vui lòng bật tùy chọn này!\nLưu ý: iGPU Pentium/Celeron thường không được hỗ trợ!';

  @override
  String get platformSelection => 'Chọn Loại Nền tảng:';

  @override
  String get processorGeneration => 'Thế hệ Vi xử lý:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6 nhân/12 luồng)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 nhân / 12 luồng) yêu cầu giả lập CPU đặc thù';

  @override
  String get amdCoresTitle => 'Số nhân CPU AMD:';

  @override
  String get amdSpecialMb => 'Bo mạch chủ Đặc biệt AMD:';

  @override
  String get usePrecastMmio => 'Sử dụng Precast MMIO';

  @override
  String get useRyzenGpu => 'Bật hỗ trợ iGPU Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Hãng Bo mạch chủ:';

  @override
  String get motherboardModel => 'Mẫu Bo mạch chủ:';

  @override
  String get customMotherboard => 'Bo mạch chủ Tùy chỉnh / Phổ thông';

  @override
  String get igpuConfig => 'Cấu hình iGPU:';

  @override
  String get dgpuConfig => 'Cấu hình dGPU:';

  @override
  String get audioConfig => 'Cấu hình Âm thanh:';

  @override
  String get audioCodecFix => 'Codec Âm thanh & Layout ID';

  @override
  String get fixIrq => 'Sửa xung đột IRQ';

  @override
  String get networkConfig => 'Cấu hình Mạng & Wi-Fi:';

  @override
  String get laptopDrivers => 'Trình điều khiển Laptop:';

  @override
  String get touchpadDriver => 'Trình điều khiển Touchpad (I2C / PS2)';

  @override
  String get smbiosSelection => 'Mẫu SMBIOS Đích:';

  @override
  String get targetMacOsVersion => 'Phiên bản macOS Đích:';

  @override
  String get bootArgsTitle => 'Tham số Khởi động (boot-args):';

  @override
  String get csrActiveConfigTitle => 'Bảo vệ Tính toàn vẹn Hệ thống (SIP):';

  @override
  String get outputEfiTitle => 'Thư mục Xuất EFI:';

  @override
  String get selectOutputFolder => 'Chọn Thư mục Xuất';

  @override
  String get clearConfig => 'Xóa Cấu hình';

  @override
  String get importConfigModel => 'Nhập configModel';

  @override
  String get importingConfigModel => 'Đang nhập configModel...';

  @override
  String get dragDropConfigModel =>
      'Kéo thả tệp configModel vào đây\nhoặc nhấp để duyệt';

  @override
  String get clearAllHistory => 'Xóa Tất cả Lịch sử';

  @override
  String get clearingHistory => 'Đang xóa lịch sử...';

  @override
  String get noHistoryRecords => 'Chưa có bản ghi lịch sử nào';

  @override
  String get overview => 'Tổng quan';

  @override
  String get platformPatches => 'Bản vá Nền tảng';

  @override
  String get audioPatches => 'Bản vá Âm thanh';

  @override
  String get gpuSpoofing => 'Giả lập GPU';

  @override
  String get disableDevices => 'Vô hiệu hóa Thiết bị';

  @override
  String get brightnessPatches => 'Bản vá Độ sáng';

  @override
  String get graphicsPatches => 'Bản vá Đồ họa';

  @override
  String get wifiPatches => 'Bản vá Wi-Fi';

  @override
  String get documentationGuides => 'Tài liệu & Hướng dẫn';

  @override
  String get aboutSupport => 'Giới thiệu & Hỗ trợ';

  @override
  String get hardwareTabTitle => 'Cấu hình Phần cứng';

  @override
  String get acpiFolderTitle => 'Thư mục ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Đang tải dữ liệu...';

  @override
  String get configuringEfiWait => 'Đang cấu hình EFI, vui lòng đợi...';

  @override
  String get summary => 'Tóm tắt';

  @override
  String get recent => 'Gần đây';

  @override
  String get efiConfig => 'Cấu hình EFI';

  @override
  String get toolsAndGuides => 'Công cụ & Hướng dẫn';

  @override
  String get checkUpdates => 'Kiểm tra Cập nhật';

  @override
  String get sponsorDeveloper => 'Ủng hộ Nhà phát triển';

  @override
  String get releaseNotes => 'Ghi chú Bản phát hành';

  @override
  String get searchPlaceholder => 'Tìm kiếm';
}
