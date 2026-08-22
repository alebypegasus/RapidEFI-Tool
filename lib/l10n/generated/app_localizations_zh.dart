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
  String get details => '详情';

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

  @override
  String get navManualTab => '手动配置 EFI';

  @override
  String get navAutoTab => '自动配置 EFI';

  @override
  String get cpuSelection => '处理器 (CPU) 选择：';

  @override
  String get pentiumCeleron => '奔腾/赛扬 (Pentium/Celeron)';

  @override
  String get pentiumCeleronTip =>
      '奔腾或赛扬处理器需要开启 CPU 仿冒；请启用此项！\n注意：奔腾/赛扬核显通常不受支持！';

  @override
  String get platformSelection => '平台类型选择：';

  @override
  String get processorGeneration => '处理器代数：';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6核/12线程)';

  @override
  String get cometLakeU62Tip => 'Comet Lake U62 (6核心/12线程) 需要特定的 CPU 仿冒';

  @override
  String get amdCoresTitle => 'AMD CPU 核心数：';

  @override
  String get amdSpecialMb => 'AMD 特殊主板：';

  @override
  String get usePrecastMmio => '使用预制 MMIO';

  @override
  String get useRyzenGpu => '启用锐龙核显支持 (NootedRed)';

  @override
  String get motherboardBrand => '主板品牌：';

  @override
  String get motherboardModel => '主板型号：';

  @override
  String get customMotherboard => '自定义 / 通用主板';

  @override
  String get igpuConfig => '核显配置 (iGPU)：';

  @override
  String get dgpuConfig => '独显配置 (dGPU)：';

  @override
  String get audioConfig => '声卡配置：';

  @override
  String get audioCodecFix => '声卡编解码器 & Layout ID';

  @override
  String get fixIrq => '修复 IRQ 冲突';

  @override
  String get networkConfig => '网卡 & 无线网络配置：';

  @override
  String get laptopDrivers => '笔记本驱动：';

  @override
  String get touchpadDriver => '触摸板驱动 (I2C / PS2)';

  @override
  String get smbiosSelection => '目标机型 (SMBIOS)：';

  @override
  String get targetMacOsVersion => '目标 macOS 版本：';

  @override
  String get bootArgsTitle => '引导参数 (boot-args)：';

  @override
  String get csrActiveConfigTitle => '系统完整性保护 (SIP)：';

  @override
  String get outputEfiTitle => 'EFI 输出目录：';

  @override
  String get selectOutputFolder => '选择输出目录';

  @override
  String get clearConfig => '清空配置';

  @override
  String get importConfigModel => '导入 configModel';

  @override
  String get importingConfigModel => '正在导入 configModel...';

  @override
  String get dragDropConfigModel => '拖拽 configModel 文件到此处\n或点击浏览选择';

  @override
  String get clearAllHistory => '清空所有历史';

  @override
  String get clearingHistory => '正在清空历史...';

  @override
  String get noHistoryRecords => '暂无历史记录';

  @override
  String get overview => '概述';

  @override
  String get platformPatches => '平台补丁';

  @override
  String get audioPatches => '声卡补丁';

  @override
  String get gpuSpoofing => '显卡仿冒';

  @override
  String get disableDevices => '屏蔽设备';

  @override
  String get brightnessPatches => '亮度补丁';

  @override
  String get graphicsPatches => '显卡补丁';

  @override
  String get wifiPatches => '无线网卡补丁';

  @override
  String get documentationGuides => '文档与指南';

  @override
  String get aboutSupport => '关于与支持';

  @override
  String get hardwareTabTitle => '硬件配置';

  @override
  String get acpiFolderTitle => 'ACPI 目录';

  @override
  String get above4gDecoding => '大于 4G 解码 (Above 4G Decoding)';

  @override
  String get loadingData => '正在加载数据...';

  @override
  String get configuringEfiWait => '正在配置 EFI，请稍候...';

  @override
  String get summary => '概要';

  @override
  String get recent => '最近记录';

  @override
  String get efiConfig => 'EFI 配置';

  @override
  String get toolsAndGuides => '工具与指南';

  @override
  String get checkUpdates => '检查更新';

  @override
  String get sponsorDeveloper => '赞助开发者';

  @override
  String get releaseNotes => '更新日志';

  @override
  String get searchPlaceholder => '搜索';

  @override
  String get initialSupportMacOs => '原生支持的初始 macOS 版本：';

  @override
  String get lastSupportMacOs => '原生支持的最新 macOS 版本：';

  @override
  String get oclpSupportMacOs => 'OCLP 补丁支持的 macOS 版本：';

  @override
  String get cpuInfoTitle => '【CPU 信息】：';

  @override
  String get biosRecommendedEnabled => '【BIOS 推荐设置 - 启用】：';

  @override
  String get biosRecommendedDisabled => '【BIOS 推荐设置 - 禁用】：';

  @override
  String get historyExpanderDesc =>
      '使用 RapidEFI 生成的 EFI 会自动备份到历史记录。\n您可以随时重新加载并调整之前生成的任何 EFI。\n\n此功能在 RapidEFI V3.0.0 及以上版本中支持。';

  @override
  String get gpuPresets => '预设';

  @override
  String get gpuByCpuModel => '按 CPU 型号';

  @override
  String get selectCpuGeneration => '选择代数';

  @override
  String get selectCpuModel => '选择 CPU';

  @override
  String get cpuGenerationLabel => 'CPU 代数';

  @override
  String get cpuModelLabel => 'CPU 型号';

  @override
  String get matchingIgpuTip => '如匹配请勾选，否则保持未选中';

  @override
  String get selectPropertiesToApply => '选择要应用的的属性';

  @override
  String get motherboardConfigTitle => '主板型号配置：';

  @override
  String get motherboardConfigItems => '选择要应用的配置项';

  @override
  String get selectModelToConfigure => '（选择型号进行配置）';

  @override
  String get pleaseSelect => '请选择';

  @override
  String get selectAllDeselectAll => '全选 / 取消全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get stuckOnEbFix => '卡 [EB] 修复（可选 - 建议保持默认）：';

  @override
  String get renameCurrentEfi => '重命名当前 EFI';

  @override
  String get enterNewName => '输入新名称';

  @override
  String get renameEfiTooltip => '重命名 EFI';

  @override
  String get adminPrivilegesRequired => '需要管理员权限';

  @override
  String get enterLoginPassword => '请输入您的计算机登录密码';

  @override
  String get importHardwareMaterials => '导入硬件物料';

  @override
  String get currentBiosSettings => '当前 BIOS 设置';

  @override
  String get colorTheme => '颜色主题';

  @override
  String get noValidHardwareReport => '未检测到有效的硬件报告文件';

  @override
  String get viewOnGitHub => '在 GitHub 上查看';

  @override
  String get downloadNow => '立即下载';

  @override
  String get btnConfirm => '确认';

  @override
  String get btnDeleteRecord => '删除此记录';

  @override
  String get currentEfiNamePrefix => '当前 EFI 名称：';

  @override
  String get close => '关闭';

  @override
  String get applySelected => '应用所选';

  @override
  String get connectedGpuPrefix => '已连接显卡：';

  @override
  String get requiresSpoofIdPrefix => '需要仿冒 ID：';

  @override
  String get selectPlatform => '平台代数';

  @override
  String get selectVendor => '品牌';

  @override
  String get selectModel => '主板型号';

  @override
  String get btnImport => '导入';

  @override
  String get defaultLabel => '默认';
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
  String get details => '詳情';

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

  @override
  String get navManualTab => '手動配置 EFI';

  @override
  String get navAutoTab => '自動配置 EFI';

  @override
  String get cpuSelection => '處理器 (CPU) 選擇：';

  @override
  String get pentiumCeleron => '奔騰/賽揚 (Pentium/Celeron)';

  @override
  String get pentiumCeleronTip =>
      '奔騰或賽揚處理器需要開啟 CPU 仿冒；請啟用此項！\n注意：奔騰/賽揚核顯通常不受支援！';

  @override
  String get platformSelection => '平台類型選擇：';

  @override
  String get processorGeneration => '處理器世代：';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6核/12線程)';

  @override
  String get cometLakeU62Tip => 'Comet Lake U62 (6核心/12線程) 需要特定的 CPU 仿冒';

  @override
  String get amdCoresTitle => 'AMD CPU 核心數：';

  @override
  String get amdSpecialMb => 'AMD 特殊主機板：';

  @override
  String get usePrecastMmio => '使用預製 MMIO';

  @override
  String get useRyzenGpu => '啟用銳龍核顯支援 (NootedRed)';

  @override
  String get motherboardBrand => '主機板品牌：';

  @override
  String get motherboardModel => '主機板型號：';

  @override
  String get customMotherboard => '自訂 / 通用主機板';

  @override
  String get igpuConfig => '內顯配置 (iGPU)：';

  @override
  String get dgpuConfig => '獨顯配置 (dGPU)：';

  @override
  String get audioConfig => '音效卡配置：';

  @override
  String get audioCodecFix => '音效卡解碼器 & Layout ID';

  @override
  String get fixIrq => '修復 IRQ 衝突';

  @override
  String get networkConfig => '網卡 & 無線網路配置：';

  @override
  String get laptopDrivers => '筆記型電腦驅動：';

  @override
  String get touchpadDriver => '觸控板驅動 (I2C / PS2)';

  @override
  String get smbiosSelection => '目標機型 (SMBIOS)：';

  @override
  String get targetMacOsVersion => '目標 macOS 版本：';

  @override
  String get bootArgsTitle => '開機引導參數 (boot-args)：';

  @override
  String get csrActiveConfigTitle => '系統完整性保護 (SIP)：';

  @override
  String get outputEfiTitle => 'EFI 輸出目錄：';

  @override
  String get selectOutputFolder => '選擇輸出目錄';

  @override
  String get clearConfig => '清除配置';

  @override
  String get importConfigModel => '匯入 configModel';

  @override
  String get importingConfigModel => '正在匯入 configModel...';

  @override
  String get dragDropConfigModel => '拖曳 configModel 檔案至此處\n或點擊瀏覽選取';

  @override
  String get clearAllHistory => '清除所有歷史';

  @override
  String get clearingHistory => '正在清除歷史...';

  @override
  String get noHistoryRecords => '暫無歷史記錄';

  @override
  String get overview => '概述';

  @override
  String get platformPatches => '平台修補程式';

  @override
  String get audioPatches => '音效修補程式';

  @override
  String get gpuSpoofing => '顯示卡仿冒';

  @override
  String get disableDevices => '停用設備';

  @override
  String get brightnessPatches => '亮度修補程式';

  @override
  String get graphicsPatches => '顯示卡修補程式';

  @override
  String get wifiPatches => '無線網卡修補程式';

  @override
  String get documentationGuides => '文檔與指南';

  @override
  String get aboutSupport => '關於與支援';

  @override
  String get hardwareTabTitle => '硬體配置';

  @override
  String get acpiFolderTitle => 'ACPI 目錄';

  @override
  String get above4gDecoding => '大於 4G 解碼 (Above 4G Decoding)';

  @override
  String get loadingData => '正在載入資料...';

  @override
  String get configuringEfiWait => '正在配置 EFI，請稍候...';

  @override
  String get summary => '概要';

  @override
  String get recent => '最近記錄';

  @override
  String get efiConfig => 'EFI 配置';

  @override
  String get toolsAndGuides => '工具與指南';

  @override
  String get checkUpdates => '檢查更新';

  @override
  String get sponsorDeveloper => '贊助開發者';

  @override
  String get releaseNotes => '更新紀錄';

  @override
  String get searchPlaceholder => '搜尋';

  @override
  String get initialSupportMacOs => '原生支援的初始 macOS 版本：';

  @override
  String get lastSupportMacOs => '原生支援的最新 macOS 版本：';

  @override
  String get oclpSupportMacOs => 'OCLP 修補程式支援的 macOS 版本：';

  @override
  String get cpuInfoTitle => '【CPU 資訊】：';

  @override
  String get biosRecommendedEnabled => '【BIOS 推薦設定 - 啟用】：';

  @override
  String get biosRecommendedDisabled => '【BIOS 推薦設定 - 停用】：';

  @override
  String get historyExpanderDesc =>
      '使用 RapidEFI 產生的 EFI 會自動備份到歷史記錄。\n您可以隨時重新載入並調整之前產生的任何 EFI。\n\n此功能在 RapidEFI V3.0.0 及以上版本中支援。';

  @override
  String get gpuPresets => '預設';

  @override
  String get gpuByCpuModel => '按 CPU 型號';

  @override
  String get selectCpuGeneration => '選擇代數';

  @override
  String get selectCpuModel => '選擇 CPU';

  @override
  String get cpuGenerationLabel => 'CPU 代數';

  @override
  String get cpuModelLabel => 'CPU 型號';

  @override
  String get matchingIgpuTip => '如相符請勾選，否則保持未選取';

  @override
  String get selectPropertiesToApply => '選擇要套用的屬性';

  @override
  String get motherboardConfigTitle => '主機板型號配置：';

  @override
  String get motherboardConfigItems => '選擇要套用的設定項目';

  @override
  String get selectModelToConfigure => '（選擇型號進行設定）';

  @override
  String get pleaseSelect => '請選擇';

  @override
  String get selectAllDeselectAll => '全選 / 取消全選';

  @override
  String get deselectAll => '取消全選';

  @override
  String get stuckOnEbFix => '卡 [EB] 修復（可選 - 建議保持預設）：';

  @override
  String get renameCurrentEfi => '重新命名當前 EFI';

  @override
  String get enterNewName => '輸入新名稱';

  @override
  String get renameEfiTooltip => '重新命名 EFI';

  @override
  String get adminPrivilegesRequired => '需要管理員權限';

  @override
  String get enterLoginPassword => '請輸入您的電腦登入密碼';

  @override
  String get importHardwareMaterials => '匯入硬體物料';

  @override
  String get currentBiosSettings => '當前 BIOS 設定';

  @override
  String get colorTheme => '顏色主題';

  @override
  String get noValidHardwareReport => '未檢測到有效的硬體報告檔案';

  @override
  String get viewOnGitHub => '在 GitHub 上檢視';

  @override
  String get downloadNow => '立即下載';

  @override
  String get btnConfirm => '確認';

  @override
  String get btnDeleteRecord => '刪除此記錄';

  @override
  String get currentEfiNamePrefix => '當前 EFI 名稱：';

  @override
  String get close => '關閉';

  @override
  String get applySelected => '套用所選';

  @override
  String get connectedGpuPrefix => '已連接顯示卡：';

  @override
  String get requiresSpoofIdPrefix => '需要仿冒 ID：';

  @override
  String get selectPlatform => '平台代數';

  @override
  String get selectVendor => '品牌';

  @override
  String get selectModel => '主機板型號';

  @override
  String get btnImport => '匯入';

  @override
  String get defaultLabel => '預設';
}
