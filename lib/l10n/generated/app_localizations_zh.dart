// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI 配置工具';

  @override
  String get navHardware => '硬件信息';

  @override
  String get navManual => '手动配置 EFI';

  @override
  String get navProcess => '修改 EFI';

  @override
  String get navSsdt => 'SSDT 生成';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => '历史记录';

  @override
  String get navSettings => '设置';

  @override
  String get navAbout => '关于';

  @override
  String get navSponsor => '赞助开发者';

  @override
  String get btnRefresh => '刷新';

  @override
  String get btnImportReport => '导入报告';

  @override
  String get btnExportReport => '导出报告';

  @override
  String get btnExportAcpi => '导出 ACPI';

  @override
  String get btnEfiSettings => 'EFI 设置';

  @override
  String get btnExportEfi => '导出 EFI';

  @override
  String get btnGenerateEfi => '生成 EFI';

  @override
  String get btnBrowse => '浏览';

  @override
  String get btnChooseFile => '选择文件';

  @override
  String get btnCancel => '取消';

  @override
  String get btnApply => '应用';

  @override
  String get btnSave => '保存';

  @override
  String get btnClose => '关闭';

  @override
  String get btnCheckUpdates => '检查更新';

  @override
  String get btnChecking => '正在检查...';

  @override
  String get btnSelectAll => '全选';

  @override
  String get btnDeselectAll => '全不选';

  @override
  String get btnCustomSsdt => '自定义 SSDT';

  @override
  String get btnPrebuiltSsdt => '预构建 SSDT';

  @override
  String get btnDumpAcpi => '提取 ACPI';

  @override
  String get btnSelectAcpis => '选择 ACPI';

  @override
  String get btnSelectConfig => '选择 config';

  @override
  String get btnMergeConfig => '合并 config';

  @override
  String get btnExecutePatch => '执行补丁';

  @override
  String get btnOpenFolder => '打开目录';

  @override
  String get hardwareReport => '硬件报告';

  @override
  String get cpuArchitecture => '处理器 (CPU)';

  @override
  String get motherboardChipset => '主板与芯片组';

  @override
  String get graphicsDevice => '显卡 (GPU)';

  @override
  String get audioCodec => '声卡控制器';

  @override
  String get networkController => '网卡与无线';

  @override
  String get storageDevice => '存储设备';

  @override
  String get acpiTables => 'ACPI 表';

  @override
  String get compatibilityStatus => '兼容性';

  @override
  String get compatible => '完全支持';

  @override
  String get unsupported => '暂不支持';

  @override
  String get requiresPatch => '需要补丁';

  @override
  String get details => '详细信息';

  @override
  String get showDetailedReport => '详细视图';

  @override
  String get platformConfig => '平台配置';

  @override
  String get cpuVendor => 'CPU 厂商';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => '设备类型';

  @override
  String get desktop => '台式机';

  @override
  String get laptop => '笔记本';

  @override
  String get nucMiniPc => 'NUC / 迷你主机';

  @override
  String get hedtServer => 'HEDT / 服务器';

  @override
  String get processorGen => '处理器代数';

  @override
  String get targetMacOs => '目标 macOS 版本';

  @override
  String get smbiosModel => '目标 SMBIOS 机型';

  @override
  String get motherboardSelector => '主板选择';

  @override
  String get brand => '品牌';

  @override
  String get model => '型号';

  @override
  String get outputDirectory => '输出目录';

  @override
  String get kextConfiguration => '驱动配置';

  @override
  String get bootArguments => '启动参数 (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => '启用 SIP (00000000)';

  @override
  String get sipDisabled => '关闭 SIP (03080000)';

  @override
  String get processEfiTitle => '修改与重构 EFI';

  @override
  String get chooseEfiPrompt => '请选择 EFI 目录或 configModel 文件以加载配置';

  @override
  String get configModelFound => '已成功检测并加载 configModel 配置文件';

  @override
  String get rebuildEfi => '重建 EFI';

  @override
  String get ssdtGeneratorTitle => 'SSDT 生成与 ACPI 补丁工具';

  @override
  String get corePatches => '核心补丁';

  @override
  String get recommendedPatches => '推荐补丁';

  @override
  String get optionalPatches => '可选补丁';

  @override
  String get compilationComplete => '编译完成';

  @override
  String get mergeSuccess => '已成功合并至 EFI';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher 集成';

  @override
  String get rootPatching => 'Root 补丁';

  @override
  String get graphicsAcceleration => '图形硬件加速';

  @override
  String get wirelessFix => 'Wi-Fi 与蓝牙修复';

  @override
  String get postInstall => '安装后步骤';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 兼容性指南';

  @override
  String get tahoeCompatibility => 'Tahoe 26 内核与音频适配';

  @override
  String get settingsTitle => '设置';

  @override
  String get appLanguage => '语言 :';

  @override
  String get followSystem => '跟随系统';

  @override
  String get themeMode => '主题模式 :';

  @override
  String get themeColor => '主题颜色 :';

  @override
  String get appFont => '应用字体 :';

  @override
  String get efiOptions => 'EFI 选项 :';

  @override
  String get addThemeToEfi => '向 EFI 添加 OpenCore 开机主题';

  @override
  String get generateConfigModel => '在 EFI 目录生成 configModel 文件';

  @override
  String get compressZipEfi => '将 EFI 压缩为 ZIP 压缩包';

  @override
  String get checkForUpdates => '检查更新 :';

  @override
  String currentVersion(String version) {
    return '当前版本: $version';
  }

  @override
  String get copyrightNotice => '版权与许可协议';

  @override
  String get exitAppTip => '再次按返回键退出应用';

  @override
  String get updateAvailable => '发现新版本';

  @override
  String versionTag(String version) {
    return '版本: $version';
  }

  @override
  String releaseDate(String date) {
    return '发布日期: $date';
  }

  @override
  String get noUpdateFound => '当前已是最新版本';

  @override
  String get efiBuildSuccess => 'EFI 生成成功！';

  @override
  String get efiBuildFailed => 'EFI 生成失败';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get soundLayoutId => '声卡 Layout ID (alcid)';

  @override
  String get nvramBootArgs => '自定义 boot-args';

  @override
  String get generateSerial => '生成三码';
}

/// The translations for Chinese, using the Han script (`zh_Hant`).
class AppLocalizationsZhHant extends AppLocalizationsZh {
  AppLocalizationsZhHant() : super('zh_Hant');

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI 配置工具';

  @override
  String get navHardware => '硬體資訊';

  @override
  String get navManual => '手動配置 EFI';

  @override
  String get navProcess => '修改 EFI';

  @override
  String get navSsdt => 'SSDT 生成';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => '歷史記錄';

  @override
  String get navSettings => '設定';

  @override
  String get navAbout => '關於';

  @override
  String get navSponsor => '贊助開發者';

  @override
  String get btnRefresh => '重新整理';

  @override
  String get btnImportReport => '匯入報告';

  @override
  String get btnExportReport => '匯出報告';

  @override
  String get btnExportAcpi => '匯出 ACPI';

  @override
  String get btnEfiSettings => 'EFI 設定';

  @override
  String get btnExportEfi => '匯出 EFI';

  @override
  String get btnGenerateEfi => '生成 EFI';

  @override
  String get btnBrowse => '瀏覽';

  @override
  String get btnChooseFile => '選擇檔案';

  @override
  String get btnCancel => '取消';

  @override
  String get btnApply => '套用';

  @override
  String get btnSave => '儲存';

  @override
  String get btnClose => '關閉';

  @override
  String get btnCheckUpdates => '檢查更新';

  @override
  String get btnChecking => '正在檢查...';

  @override
  String get btnSelectAll => '全選';

  @override
  String get btnDeselectAll => '全部取消';

  @override
  String get btnCustomSsdt => '自訂 SSDT';

  @override
  String get btnPrebuiltSsdt => '預構建 SSDT';

  @override
  String get btnDumpAcpi => '擷取 ACPI';

  @override
  String get btnSelectAcpis => '選擇 ACPI';

  @override
  String get btnSelectConfig => '選擇 config';

  @override
  String get btnMergeConfig => '合併 config';

  @override
  String get btnExecutePatch => '執行修補';

  @override
  String get btnOpenFolder => '開啟資料夾';

  @override
  String get hardwareReport => '硬體報告';

  @override
  String get cpuArchitecture => '處理器 (CPU)';

  @override
  String get motherboardChipset => '主機板與晶片組';

  @override
  String get graphicsDevice => '顯示卡 (GPU)';

  @override
  String get audioCodec => '音訊控制器';

  @override
  String get networkController => '網路與無線裝置';

  @override
  String get storageDevice => '儲存裝置';

  @override
  String get acpiTables => 'ACPI 表';

  @override
  String get compatibilityStatus => '相容性';

  @override
  String get compatible => '完全支援';

  @override
  String get unsupported => '暫不支援';

  @override
  String get requiresPatch => '需要修補';

  @override
  String get details => '詳細資訊';

  @override
  String get showDetailedReport => '詳細檢視';

  @override
  String get platformConfig => '平台配置';

  @override
  String get cpuVendor => 'CPU 廠商';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => '裝置類型';

  @override
  String get desktop => '桌上型電腦';

  @override
  String get laptop => '筆記型電腦';

  @override
  String get nucMiniPc => 'NUC / 迷你主機';

  @override
  String get hedtServer => 'HEDT / 伺服器';

  @override
  String get processorGen => '處理器世代';

  @override
  String get targetMacOs => '目標 macOS 版本';

  @override
  String get smbiosModel => '目標 SMBIOS 機型';

  @override
  String get motherboardSelector => '主機板選擇';

  @override
  String get brand => '品牌';

  @override
  String get model => '型號';

  @override
  String get outputDirectory => '輸出目錄';

  @override
  String get kextConfiguration => '驅動程式配置';

  @override
  String get bootArguments => '開機參數 (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => '啟用 SIP (00000000)';

  @override
  String get sipDisabled => '關閉 SIP (03080000)';

  @override
  String get processEfiTitle => '修改與重建 EFI';

  @override
  String get chooseEfiPrompt => '請選擇 EFI 資料夾或 configModel 檔案以載入配置';

  @override
  String get configModelFound => '已成功偵測並載入 configModel 配置檔案';

  @override
  String get rebuildEfi => '重建 EFI';

  @override
  String get ssdtGeneratorTitle => 'SSDT 生成與 ACPI 修補工具';

  @override
  String get corePatches => '核心修補';

  @override
  String get recommendedPatches => '推薦修補';

  @override
  String get optionalPatches => '可選修補';

  @override
  String get compilationComplete => '編譯完成';

  @override
  String get mergeSuccess => '已成功合併至 EFI';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher 整合';

  @override
  String get rootPatching => 'Root 修補';

  @override
  String get graphicsAcceleration => '圖形硬體加速';

  @override
  String get wirelessFix => 'Wi-Fi 與藍牙修復';

  @override
  String get postInstall => '安裝後步驟';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 相容性指南';

  @override
  String get tahoeCompatibility => 'Tahoe 26 核心與音訊配適';

  @override
  String get settingsTitle => '設定';

  @override
  String get appLanguage => '語言 :';

  @override
  String get followSystem => '跟隨系統';

  @override
  String get themeMode => '主題模式 :';

  @override
  String get themeColor => '主題顏色 :';

  @override
  String get appFont => '應用程式字型 :';

  @override
  String get efiOptions => 'EFI 選項 :';

  @override
  String get addThemeToEfi => '向 EFI 新增 OpenCore 開機主題';

  @override
  String get generateConfigModel => '在 EFI 資料夾生成 configModel 檔案';

  @override
  String get compressZipEfi => '將 EFI 壓縮為 ZIP 壓縮檔';

  @override
  String get checkForUpdates => '檢查更新 :';

  @override
  String currentVersion(String version) {
    return '目前版本: $version';
  }

  @override
  String get copyrightNotice => '版權與許可協議';

  @override
  String get exitAppTip => '再次按返回鍵結束應用程式';

  @override
  String get updateAvailable => '發現新版本';

  @override
  String versionTag(String version) {
    return '版本: $version';
  }

  @override
  String releaseDate(String date) {
    return '發佈日期: $date';
  }

  @override
  String get noUpdateFound => '目前已是最新版本';

  @override
  String get efiBuildSuccess => 'EFI 生成成功！';

  @override
  String get efiBuildFailed => 'EFI 生成失敗';

  @override
  String get copiedToClipboard => '已複製到剪貼簿';

  @override
  String get soundLayoutId => '音效卡 Layout ID (alcid)';

  @override
  String get nvramBootArgs => '自訂 boot-args';

  @override
  String get generateSerial => '生成序號';
}
