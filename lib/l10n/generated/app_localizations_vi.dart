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

  @override
  String get initialSupportMacOs => 'Phiên bản macOS ban đầu được hỗ trợ gốc:';

  @override
  String get lastSupportMacOs => 'Phiên bản macOS mới nhất được hỗ trợ gốc:';

  @override
  String get oclpSupportMacOs => 'Các phiên bản macOS được hỗ trợ bản vá OCLP:';

  @override
  String get cpuInfoTitle => '[Thông tin CPU]:';

  @override
  String get biosRecommendedEnabled => '[Cài đặt BIOS được đề xuất - Đã bật]:';

  @override
  String get biosRecommendedDisabled => '[Cài đặt BIOS được đề xuất - Đã tắt]:';

  @override
  String get historyExpanderDesc =>
      'Các EFI được tạo bằng RapidEFI sẽ tự động được sao lưu vào lịch sử.\nBạn có thể tải lại và điều chỉnh bất kỳ EFI nào đã tạo trước đó vào bất kỳ lúc nào.\n\nTính năng này được hỗ trợ trên RapidEFI V3.0.0 trở lên.';

  @override
  String get gpuPresets => 'Cài đặt sẵn';

  @override
  String get gpuByCpuModel => 'Theo mẫu CPU';

  @override
  String get selectCpuGeneration => 'Chọn thế hệ';

  @override
  String get selectCpuModel => 'Chọn CPU';

  @override
  String get cpuGenerationLabel => 'Thế hệ CPU';

  @override
  String get cpuModelLabel => 'Mẫu CPU';

  @override
  String get matchingIgpuTip => 'Chọn nếu khớp, nếu không hãy bỏ chọn';

  @override
  String get selectPropertiesToApply => 'Chọn các thuộc tính cần áp dụng';

  @override
  String get motherboardConfigTitle => 'Cấu hình mẫu bo mạch chủ:';

  @override
  String get motherboardConfigItems => 'Chọn các mục cấu hình cần áp dụng';

  @override
  String get selectModelToConfigure => '(Chọn mẫu để cấu hình)';

  @override
  String get pleaseSelect => 'Vui lòng chọn';

  @override
  String get selectAllDeselectAll => 'Chọn tất cả / Bỏ chọn tất cả';

  @override
  String get deselectAll => 'Bỏ chọn tất cả';

  @override
  String get stuckOnEbFix =>
      'Khắc phục treo ở [EB] (Tùy chọn - khuyến nghị mặc định):';

  @override
  String get renameCurrentEfi => 'Đổi tên EFI hiện tại';

  @override
  String get enterNewName => 'Nhập tên mới';

  @override
  String get renameEfiTooltip => 'Đổi tên EFI';

  @override
  String get adminPrivilegesRequired => 'Yêu cầu quyền quản trị viên';

  @override
  String get enterLoginPassword =>
      'Vui lòng nhập mật khẩu đăng nhập máy tính của bạn';

  @override
  String get importHardwareMaterials => 'Nhập dữ liệu phần cứng';

  @override
  String get currentBiosSettings => 'Cài đặt BIOS hiện tại';

  @override
  String get colorTheme => 'Chủ đề màu sắc';

  @override
  String get noValidHardwareReport =>
      'Không phát hiện thấy tệp báo cáo phần cứng hợp lệ';

  @override
  String get viewOnGitHub => 'Xem trên GitHub';

  @override
  String get downloadNow => 'Tải xuống ngay';

  @override
  String get btnConfirm => 'Xác nhận';

  @override
  String get btnDeleteRecord => 'Xóa bản ghi này';

  @override
  String get currentEfiNamePrefix => 'Tên EFI hiện tại: ';

  @override
  String get close => 'Đóng';

  @override
  String get applySelected => 'Áp dụng đã chọn';

  @override
  String get connectedGpuPrefix => 'GPU đã kết nối: ';

  @override
  String get requiresSpoofIdPrefix => 'Yêu cầu Spoof ID: ';

  @override
  String get selectPlatform => 'Thế hệ nền tảng';

  @override
  String get selectVendor => 'Thương hiệu';

  @override
  String get selectModel => 'Mẫu bo mạch chủ';

  @override
  String get btnImport => 'Nhập';

  @override
  String get defaultLabel => 'Mặc định';

  @override
  String get wifiBluetoothDrivers => 'Trình điều khiển Wi-Fi & Bluetooth:';

  @override
  String get noWifiDriversByDefault =>
      '(Mặc định không cấu hình trình điều khiển Wi-Fi)';

  @override
  String get getIntelModifiedOclp => 'Tải OCLP sửa đổi cho Intel';

  @override
  String get forLaptopSystems => '(Dành cho hệ thống máy tính xách tay)';

  @override
  String get basicConfig => 'Cấu hình cơ bản';

  @override
  String get advancedConfig => 'Cấu hình nâng cao';

  @override
  String get portCustomization => 'Tùy chỉnh cổng';

  @override
  String get displayEdid => 'Hiển thị EDID';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'Giả mạo AMD dGPU';

  @override
  String get intelWifi => 'Intel Wi-Fi';

  @override
  String get broadcomBrcm => 'Broadcom (Brcm)';

  @override
  String get atherosWifi => 'Atheros';

  @override
  String get usbWifi => 'Wi-Fi USB';

  @override
  String get bluetoothDrivers => 'Trình điều khiển Bluetooth';

  @override
  String get debuggingTab => 'Gỡ lỗi';

  @override
  String get amfiSipTab => 'AMFI / SIP';

  @override
  String get igpuFixesTab => 'Sửa lỗi iGPU';

  @override
  String get dgpuFixesTab => 'Sửa lỗi dGPU';

  @override
  String get blackScreenFixesTab => 'Sửa lỗi màn hình đen';

  @override
  String get above4gTab => 'Giải mã 4G trên';

  @override
  String get trackpadFixesTab => 'Sửa lỗi bàn di chuột';

  @override
  String get othersTab => 'Người khác';

  @override
  String get powerManagementTab => 'Quản lý nguồn điện';

  @override
  String get sleepHibernationTab => 'Ngủ/Ngủ đông';

  @override
  String get storageDiskTab => 'Lưu trữ / Đĩa';

  @override
  String get cpuFixesTab => 'Sửa lỗi CPU';

  @override
  String get amdPlatformTab => 'Nền tảng AMD';

  @override
  String get usbFixesTab => 'Sửa lỗi USB';

  @override
  String get sdCardTab => 'Thẻ SD';

  @override
  String get brandTab => 'Thương hiệu';

  @override
  String get specialMotherboardTab => 'Bo mạch chủ đặc biệt';

  @override
  String get sipSettingsTab => 'Cài đặt SIP';

  @override
  String get renameCpuTab => 'Đổi tên CPU';

  @override
  String get uiScaleTab => 'Quy mô giao diện người dùng';

  @override
  String get acpiConfigTab => 'Cấu hình ACPI';

  @override
  String get booterConfigTab => 'Cấu hình khởi động';

  @override
  String get kernelConfigTab => 'Cấu hình hạt nhân';

  @override
  String get uefiConfigTab => 'Cấu hình UEFI';

  @override
  String get lookupLayoutId => 'Tra cứu ID bố cục';

  @override
  String get visitChris1111Repo => 'Truy cập kho lưu trữ chris1111';

  @override
  String get supportedMacOsVersions => 'Các phiên bản macOS được hỗ trợ:';

  @override
  String get supportedUsbWifiChipsets => 'Chipset USB Wi-Fi được hỗ trợ:';

  @override
  String get selectUtbMap => 'Chọn UTBMap';

  @override
  String get selectUtbMapHint =>
      'Chọn UTBMap.kext được ánh xạ được tạo bằng USBToolBox';

  @override
  String get reprocessEfiSubtitle => '(Xử lý lại EFI được tạo bởi RapidEFI)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI tự động xuất tệp configModel bên trong thư mục EFI. Nhập tệp này bên dưới để tải lại và tùy chỉnh cấu hình EFI của bạn.';

  @override
  String get reprocessEfiVersionNote =>
      'Tính năng này được hỗ trợ trên RapidEFI V3.0.0 trở lên.';

  @override
  String get dropConfigModelHint =>
      'Thả file configModel vào đây hoặc bấm để duyệt';

  @override
  String get offLabel => 'Tắt';

  @override
  String get onLabel => 'TRÊN';

  @override
  String get githubRepository => 'Kho lưu trữ GitHub';

  @override
  String get releasesAndUpdates => 'Phát hành & Cập nhật';

  @override
  String get projectDocumentation => 'Tài liệu dự án';

  @override
  String get aboutSupportDetails =>
      'RapidEFI là một trình tạo OpenCore EFI tự động, mã nguồn mở, trình vá ACPI/SSDT và công cụ phân tích phần cứng được xây dựng cho những người đam mê Hackintosh và macOS.\n\nĐược tạo ra và duy trì bằng tình yêu. Gắn dấu sao và phân nhánh dự án trên GitHub để hỗ trợ quá trình phát triển liên tục!';

  @override
  String get checkApplicableOptions => '(Kiểm tra các tùy chọn áp dụng)';

  @override
  String get optionalCheckApplicableOptions =>
      '(Tùy chọn - kiểm tra các tùy chọn áp dụng)';

  @override
  String get appleAlcUsedByDefault =>
      '(Trình điều khiển AppleALC được sử dụng theo mặc định)';

  @override
  String get noEthernetDriverByDefault =>
      '(Không có trình điều khiển Ethernet nào được thêm vào theo mặc định)';

  @override
  String get usbInjectAllByDefault =>
      '(USBInjectAll được sử dụng theo mặc định)';

  @override
  String get verboseModeByDefault =>
      '(Chế độ dài dòng -v được bật theo mặc định; bỏ chọn để tắt)';

  @override
  String get optionalDriversSubtitle =>
      '(Trình điều khiển tùy chọn - không cần thiết trừ khi được yêu cầu)';

  @override
  String get keepDefaultsSubtitle =>
      '(Giữ mặc định trừ khi cần tùy chỉnh cụ thể)';

  @override
  String get optionalCheckDeviceBrand =>
      'Tùy chọn - Kiểm tra xem nhãn hiệu thiết bị của bạn có khớp không';

  @override
  String get optionalCheckMotherboardModel =>
      'Tùy chọn - Kiểm tra xem model bo mạch chủ có khớp không';

  @override
  String get optionalConfigureSip =>
      'Tùy chọn - Định cấu hình SIP khi cần (Tắt theo mặc định)';

  @override
  String get optionalCustomCpuName => 'Tùy chọn - Tên CPU tùy chỉnh';

  @override
  String get optionalAdjustUiScale =>
      'Tùy chọn - Điều chỉnh tỷ lệ giao diện người dùng khởi động OpenCore';

  @override
  String get acpiSsdtPatches => 'ACPI - Bản vá SSDT';

  @override
  String get acpiPatches => 'ACPI - Bản vá';

  @override
  String get kernelPatches => 'Hạt nhân - Bản vá';

  @override
  String get powerManagement => 'Quản lý nguồn điện';

  @override
  String get ssdApfsTrimPolicy => 'Chính sách cắt APFS của SSD NVMe / SATA';

  @override
  String get kernelQuirksSubtitle =>
      'Kernel - Quirks (Khuyến nghị cài đặt mặc định trừ khi cần sửa lỗi cụ thể)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI - Trình điều khiển (Giữ cấu hình mặc định trừ khi có nhu cầu cụ thể)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI - Đầu ra (Khuyến nghị cài đặt mặc định)';

  @override
  String get method1Title =>
      'Phương pháp 1: Đổi tên “GPRW thành XPRW” (Sửa lỗi đánh thức tức thì)';

  @override
  String get method2Title =>
      'Phương pháp 2: Đổi tên \'UPRW thành XPRW\' (Sửa lỗi đánh thức tức thì)';

  @override
  String get method3Title =>
      'Cách 3: Đổi tên “RTC Fix” (Sửa lỗi RTC Power Off/CMOS Reset)';

  @override
  String get method4Title =>
      'Cách 4: Đổi tên “Battery Fix” (Hỗ trợ các bản vá pin 16-bit đến 8-bit)';

  @override
  String get pciPathLabel => 'Đường dẫn PCI dGPU:';

  @override
  String get pciPathPlaceholder => 'Nhập đường dẫn PCI';

  @override
  String get spoofedDeviceIdLabel => 'ID thiết bị giả mạo:';

  @override
  String get spoofedDeviceIdPlaceholder => 'Chọn thiết bị GPU để giả mạo';

  @override
  String get injectDisplayEdidLabel =>
      'Tiêm EDID hiển thị (thường là 256 hoặc 512 ký tự hex):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'Nhập EDID hiển thị (thường là 256 hoặc 512 ký tự hex; cho phép khoảng trắng và dòng mới)';

  @override
  String get failed => 'Thất bại';

  @override
  String get method1 => 'Phương pháp 1';

  @override
  String get method2 => 'Phương pháp 2';

  @override
  String get method3 => 'Phương pháp 3';

  @override
  String get method4 => 'Phương pháp 4';

  @override
  String get optionalKextDrivers => 'Trình điều khiển Kext tùy chọn';

  @override
  String get optionalKextSubTitle =>
      'Chọn trình điều khiển kext tùy chọn theo phần cứng của bạn';

  @override
  String get brandConfigTab => 'Thương hiệu';

  @override
  String get optionalSettings => 'Cài đặt tùy chọn';

  @override
  String get optionalSettingsSubTitle => 'Chọn các cấu hình tùy chọn bổ sung';

  @override
  String get optionalCheckMotherboard => 'Tùy chọn bo mạch chủ đặc biệt';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI tự động tạo tệp configModel bên trong thư mục EFI.\nNhập tệp này bên dưới để tải lại và tùy chỉnh cấu hình EFI của bạn.\n\nTính năng này được hỗ trợ trên RapidEFI V3.0.0 trở lên.';

  @override
  String get releaseToReimportConfigModel => 'Thả để nhập lại configModel';

  @override
  String get invalidConfigFileMessage =>
      'Tệp cấu hình không hợp lệ. Vui lòng chọn tệp configModel hợp lệ.';

  @override
  String get ethernetTitle => 'Trình điều khiển Ethernet:';

  @override
  String get usbTitle => 'Trình điều khiển USB:';

  @override
  String get ssdtCoreOfficial => '* Cốt lõi (Chính thức)';

  @override
  String get ssdtRecommendedFixes => '* Khuyến nghị (Sửa lỗi)';

  @override
  String get ssdtOptionalEnhancements => '* Tùy chọn (Cải tiến)';

  @override
  String get platformDesktop => 'Máy tính bàn';

  @override
  String get platformLaptop => 'Máy tính xách tay';

  @override
  String get platformNucMini => 'NUC / Mini PC';

  @override
  String get platformHedtServer => 'HEDT / Máy chủ';
}
