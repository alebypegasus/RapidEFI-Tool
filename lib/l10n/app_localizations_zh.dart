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
  String get recent => '最近';

  @override
  String get efiRelated => 'EFI相关';

  @override
  String get toolsAndGuides => '工具及指南';

  @override
  String get navHistory => '历史记录';

  @override
  String get navConfigureEFI => '配置EFI';

  @override
  String get navProcessEFI => '加工EFI';

  @override
  String get navCustomSSDT => '定制SSDT';

  @override
  String get navOCLPPatch => 'OCLP-X补丁';

  @override
  String get navTahoeGuide => 'macOS Tahoe 26';

  @override
  String get navSettings => '偏好设置';

  @override
  String get navSponsor => '赞助开发者';

  @override
  String get searchPlaceholder => '搜索';

  @override
  String get darkMode => '深色模式';

  @override
  String get clickAgainToExit => '再次点击退出';

  @override
  String currentOpenCoreVersion(Object version) {
    return '当前OpenCore版本: $version';
  }

  @override
  String get copyrightTitle => '版权申明';

  @override
  String get copyrightText =>
      '版权所有（C）2024 JeoJay\n\n使用许可\n\n允许个人或组织在以下条件下使用：\n\n1.非商业用途：\n本软件完全免费且开源,仅限于非商业用途,禁止售卖此软件。\n\n2.注明出处：\n任何形式的转载、引用或在第三方网站使用本软件的内容，必须明确注明出处，并包含以下信息：\n\n本软件由JeoJay开发。版权所有（C）2024 JeoJay.   (Copyright © 2024 com.jeojay. All rights reserved.)\n\n3.不得修改版权声明：\n转载或使用本软件的任何内容时，不得修改或删除原始的版权声明和注明出处的信息。\n\n免责声明：\n本软件按“原样”提供，不提供任何明示或暗示的担保。版权所有人不对使用本软件产生的任何直接或间接损害承担责任。';

  @override
  String get themeModeTitle => '深色模式 :';

  @override
  String get themeModeSystem => '跟随系统';

  @override
  String get themeModeLight => '关闭';

  @override
  String get themeModeDark => '开启';

  @override
  String get themeColorTitle => '主题颜色 :';

  @override
  String get appFontTitle => '应用字体 :';

  @override
  String get efiSettingsTitle => 'EFI相关设置 :';

  @override
  String get addOpenCoreTheme => '配置EFI时添加OpenCore引导主题';

  @override
  String get generateConfigModel => '生成configModel文件到EFI文件夹';

  @override
  String get zipEFI => 'EFI压缩成Zip文件';

  @override
  String get languageTitle => '语言设置 :';

  @override
  String get languageSystem => '跟随系统';

  @override
  String get languageEn => 'English';

  @override
  String get languagePtBR => 'Português (Brasil)';

  @override
  String get languagePtPT => 'Português (Portugal)';

  @override
  String get languageZhCN => '中文 (简体)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => '日本語';

  @override
  String get versionUpdateTitle => '版本更新 :';

  @override
  String currentVersion(Object version) {
    return '当前版本: $version';
  }

  @override
  String get checkUpdate => '检测更新';

  @override
  String get checkingUpdate => '检测中...';

  @override
  String get settingSnippet =>
      '1.工具默认勾选【配置EFI时添加OpenCore引导主题】.RapidEFI工具配置输出EFI的时候,会添加一个OpenCore的引导主题.如果不需要主题,可以去掉勾选.\n\n2.工具默认勾选【生成configModel文件到EFI文件夹】.RapidEFI工具配置输出EFI的时候,会在EFI输出文件夹生成一个名为configModel的文件.该文件可用于再次编辑调整当前EFI.具体可参考工具【加工EFI】部分.\n\n3.如果勾选【EFI压缩成Zip文件】,工具输出EFI的同时会将当前EFI压缩成一个Zip文件。注意压缩Zip文件,会影响输出EFI整体进度。尤其性能比较差的硬件,影响更为明显.谨慎勾选此项.';

  @override
  String get fontMicrosoftYaHei => '微软雅黑';

  @override
  String get fontSarasaGothic => '更纱黑体';

  @override
  String get fontSourceHanSerif => '思源宋体';

  @override
  String get cpuArchitecture => 'CPU 架构';

  @override
  String get desktop => '台式机';

  @override
  String get laptop => '笔记本';

  @override
  String get hedt => '服务器';

  @override
  String get nuc => '迷你主机';

  @override
  String get amd => 'AMD 处理器';

  @override
  String get smbios => 'SMBIOS 机型';

  @override
  String get generateEFI => '生成EFI';

  @override
  String get clearSelection => '清除选择';

  @override
  String get exportConfig => '导出配置';

  @override
  String get selectTargetFolder => '选择目标文件夹';

  @override
  String get efiGenerateSuccess => 'EFI 生成成功！';

  @override
  String efiGenerateFailed(Object error) {
    return 'EFI 生成失败: $error';
  }

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确定';

  @override
  String get save => '保存';

  @override
  String get delete => '删除';

  @override
  String get openFolder => '打开文件夹';

  @override
  String get date => '日期';

  @override
  String get actions => '操作';

  @override
  String get historyTitle => '历史记录';

  @override
  String get historyDescription =>
      'RapidEFI工具配置的EFI,每次成功生成后,会进行自动备份,产生一个历史记录。如有需要，可以根据这个EFI记录再次编辑调整输出\n\n此功能仅支持RapidEFI V3.0.0以上版本,不支持以前旧版本';

  @override
  String get clearAllHistory => '清空所有历史记录';

  @override
  String get clearingHistory => '正在清空历史记录...';

  @override
  String get noHistory => '暂无历史记录';

  @override
  String get editEFI => '编辑EFI';

  @override
  String get configuringEFI => '配置EFI中,请稍后';

  @override
  String get configureEFISuccess => '配置EFI成功';

  @override
  String get configureEFIFailed => '配置EFI发生错误!\n请更换EFI输出路径';

  @override
  String get sponsorTitle => '赞助开发者';

  @override
  String get visitBilibili => '访问作者b站';

  @override
  String get visitGithub => '访问 GitHub';

  @override
  String get buyCoffeeTitle => '请开发者喝杯奶茶';

  @override
  String get buyCoffeeText =>
      '如果有幸帮到了你，可以对开发者随意打赏！感谢支持！！！\n\n作者联系方式:QQ766264141或者WX:JeoJay127。除此之外没有其他私人联系方式,谨防受骗!';

  @override
  String get successCasesTitle => 'RapidEFI成功案例';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 指南';

  @override
  String get oclpIntro => '工具介绍';

  @override
  String get oclpGpu => '显卡补丁';

  @override
  String get oclpWifi => 'WiFi补丁';

  @override
  String get ssdtPlatform => '平台补丁';

  @override
  String get ssdtAudio => '声卡补丁';

  @override
  String get ssdtGpuSpoof => '显卡仿冒';

  @override
  String get ssdtDisableDevice => '屏蔽设备';

  @override
  String get ssdtBrightness => '亮度补丁';

  @override
  String get manualEFIConfig => '手动配置EFI';

  @override
  String get autoEFIConfig => '自动配置EFI';

  @override
  String get cpuSelection => 'CPU选择:';

  @override
  String get platformSelection => '平台选择:';

  @override
  String get platformInfo => '平台信息:';

  @override
  String get targetMacOSVersion => '安装macOS版本:';

  @override
  String get smbiosModelSetup => 'SMBIOS机型设置:';

  @override
  String get motherboardModelConfig => '主板型号配置:';

  @override
  String get selectMotherboardModelTip => '(选择主板型号，勾选要应用的配置)';

  @override
  String get platformGen => '平台代数';

  @override
  String get vendor => '品牌';

  @override
  String get motherboardModel => '主板型号';

  @override
  String get pleaseSelect => '请选择';

  @override
  String get selected => '已选：';

  @override
  String get applySelectedConfig => '应用勾选配置';

  @override
  String get noMatchingConfigEntries => '无匹配配置条目';

  @override
  String get pentiumCeleron => '奔腾赛扬';

  @override
  String get pentiumCeleronTip =>
      '奔腾或赛扬处理器需要仿冒CPU,请务必开启!\n注意:奔腾赛扬核显通常是无法驱动的!!!';

  @override
  String get u62CpuTitle => 'U62类型CPU';

  @override
  String get u62CpuTip =>
      '10代Comet Lake架构的U62 CPU(例如: i3-10110U,i5-10210U,i5-10310U,\n i7-10510U,i7-10610U,i7-10710U,i7-10810U),请务必勾选!!!';

  @override
  String get macOSVersionSnippet =>
      '根据当前选择的macOS版本,制作的EFI,会向下兼容.例如,如果选择了Tahoe 26,那么该引导同时支持Sequoia 15及以下版本。\n\n温馨提示:工具制作的EFI向下兼容,经测试支持macOS EI Capitan 10.11.x ~ macOS Tahoe 26.x系统。更低版本自行测试,太老了,也没必要了。';

  @override
  String get amdCores => 'AMD核心数:';

  @override
  String get ryzen7000to9000 => '7000~9000系CPU';

  @override
  String get useAmdIgpuOutput => '使用AMD核显输出显示';

  @override
  String get igpuConfigTitle => '核显配置';

  @override
  String get dgpuConfigTitle => '独显配置';

  @override
  String get audioDriver => '声卡驱动:';

  @override
  String get defaultAppleALCDriver => '(默认使用AppleALC驱动)';

  @override
  String get alcLayoutId => 'ALC布局ID:';

  @override
  String get queryLayoutId => '查询布局ID';

  @override
  String get hpetAcpiPath => '高精度计时器ACPI路径(用于修复声卡IRQ问题):';

  @override
  String get fixIrq => '修复IRQ';

  @override
  String get selectAudioLayoutIdTitle => '选择声卡布局ID';

  @override
  String get selectAudioLayoutIdTip => '(鼠标滑轮选择后,点击确认即可)';

  @override
  String get ethernetDriver => '网卡驱动:';

  @override
  String get defaultNoEthernetDriver => '(默认不添加网卡驱动)';

  @override
  String get loadingData => '数据加载中...';

  @override
  String get refreshHardwareInfo => '刷新硬件信息';

  @override
  String get importHardwareInfo => '导入硬件资料';

  @override
  String get exportHardwareReport => '导出硬件报告';

  @override
  String get exportAcpiTables => '导出 ACPI 表';

  @override
  String get efiSettings => 'EFI设置';

  @override
  String get outputEFI => '输出EFI';

  @override
  String get summaryView => '简要';

  @override
  String get detailedView => '详细';

  @override
  String get legendGreen => '绿色: 支持最新系统(macOS Tahoe 26)';

  @override
  String get legendYellow => '黄色：支持部分系统';

  @override
  String get legendRed => '红色：完全不兼容';

  @override
  String get noAcpiImported => '未导入 ACPI';

  @override
  String get personalizedEfiTitle => 'EFI 个性化设置';

  @override
  String get applySettings => '应用设置';

  @override
  String get configureEFIError => '配置EFI发生错误!\n请更换EFI输出路径';

  @override
  String get selectConfigItems => '选择应用的配置项';

  @override
  String get newVersionFound => '发现新版本';

  @override
  String versionTag(Object tag) {
    return '版本号：$tag';
  }

  @override
  String publishedAtDate(Object date) {
    return '发布时间：$date';
  }

  @override
  String get downloadNow => '立即下载';

  @override
  String get close => '关闭';

  @override
  String get generatingEfiAndSsdt => '正在生成 EFI 与定制 SSDT，请稍后...';

  @override
  String get configuringEfiTitle => '正在配置 EFI';

  @override
  String get configureEfiSuccessTitle => '配置 EFI 成功';

  @override
  String get configureEfiErrorTitle => '配置 EFI 失败';

  @override
  String get outputDirectory => '输出目录:';

  @override
  String get openEfiDirectory => '打开EFI目录';

  @override
  String get select => '选择';

  @override
  String get selectFile => '选择文件';

  @override
  String get selectDirectory => '选择目录';

  @override
  String get hardwareReport => '硬件报告';

  @override
  String get acpiTablesDirectory => 'ACPI 表目录';

  @override
  String get noAcpiFolderTip => '未选择 ACPI 表目录时，导入外部硬件报告后只能使用预制/原始 SSDT。';

  @override
  String get hasAcpiFolderTip => '将使用所选 ACPI 表目录进行定制 SSDT。';

  @override
  String get adminRightsRequired => '需要管理员权限';

  @override
  String get enterSystemPassword => '请输入电脑开机密码';

  @override
  String get import => '导入';

  @override
  String get optionalSelectIfMatching => '(可选项-对应则勾选)';

  @override
  String get selectIfMatching => '(对应则勾选,否则不勾选)';

  @override
  String get baseConfig => '基础配置';

  @override
  String get advanceConfig => '高级配置';

  @override
  String get connectorCustomization => '接口定制';

  @override
  String get displayEdid => '显示器EDID';

  @override
  String get nvidiaDgpu => 'Nvidia独显';

  @override
  String get amdDgpu => 'AMD独显';

  @override
  String get amdDgpuSpoof => 'AMD独显仿冒';

  @override
  String get above4gTitle => 'Above 4G Decoding设置';

  @override
  String get addNpciBootArg => '添加npci=0x2000启动参数';

  @override
  String get above4gTip =>
      '主板 BIOS 中 Above 4G Decoding 未开启时，建议勾选此参数；已开启时去掉该启动参数。';

  @override
  String get personalizedEfiIntroTip => '当前内容为可选项，输出 EFI 时会根据当前设置生成对应文件';

  @override
  String get ssdtType => 'SSDT类型:';

  @override
  String get customSsdt => '定制SSDT';

  @override
  String get presetSsdt => '预制SSDT';

  @override
  String get cpuTypeLabel => 'CPU类型:';

  @override
  String get platformTypeLabel => '平台类型:';

  @override
  String get selectAll => '勾选所有';

  @override
  String get basicOfficialRecommend => '* 核心(官方推荐)';

  @override
  String get recommendFixes => '* 推荐(功能修复)';

  @override
  String get optionalEnhancements => '* 可选(功能完善)';

  @override
  String get personalizedPlatformTip =>
      '当前 CPU 类型、平台类型和平台信息来自硬件信息识别结果；如果识别有误，可以在下方手动微调。';

  @override
  String get pciPathLabel => '显卡PCI路径:';

  @override
  String get pciPathHint => '填写PCI路径';

  @override
  String get spoofGpuIdLabel => '仿冒显卡ID:';

  @override
  String get selectSpoofGpuPlaceholder => '选择需要仿冒的显卡设备';

  @override
  String get gpuSpoofDataLoadError => '显卡仿冒数据加载失败';

  @override
  String get injectEdidTitle => '注入显示器EDID(通常为256位或512位):';

  @override
  String get injectEdidHint => '填写显示器EDID(通常为256位或512位,可以包含空格,换行符)';

  @override
  String get edidHexError => 'EDID数据包含非十六进制字符,请检查!';

  @override
  String get edidLengthError => '当前EDID数据长度非256位整数倍,请检查!';

  @override
  String get edidInvalidToast => 'EDID数据不正确,请检查确认后再输入!';

  @override
  String get details => '详细信息';

  @override
  String get clearAllSelection => '清除全选';

  @override
  String applySelected(Object count) {
    return '应用选中 ($count 项)';
  }

  @override
  String get getModdedOclp => '获取修改版OCLP';

  @override
  String get getIntelModdedOclp => '获取Intel专用修改版OCLP';

  @override
  String get soundDriverCardTitle => '声卡驱动:';

  @override
  String get soundDriverDefaultTip => '(默认使用AppleALC驱动)';

  @override
  String get hpetAcpiPathTitle => '高精度计时器ACPI路径(用于修复声卡IRQ问题):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return '选择声卡布局ID(数据库:$published v$version)';
  }

  @override
  String get pickerScrollConfirmTip => '(鼠标滑轮选择后,点击确认即可)';

  @override
  String get nicDriverCardTitle => '网卡驱动:';

  @override
  String get nicDriverDefaultTip => '(默认不添加网卡驱动)';

  @override
  String get wifiBtCardTitle => 'WiFi蓝牙驱动:';

  @override
  String get wifiBtDefaultTip => '(默认不配置WiFi驱动,请自行配置添加)';

  @override
  String get usbCardTitle => 'USB驱动:';

  @override
  String get usbDefaultTip => '(默认使用USBInjectAll)';

  @override
  String get selectUtbMap => '选择UTBMap';

  @override
  String get selectUtbMapHint => '选择使用USBToolBox工具定制好的UTBMap.kext驱动';

  @override
  String get releaseUsbOwnershipText =>
      '启用\'UEFI->Quirks->ReleaseUsbOwnership\'怪癖,从固件驱动程序中释放USB控制器的所有权,虽然大部分的主板都有自动释放USB所有权的功能(可以在主板BIOS设置中将XHCI EHCI hand-off开启即可),但是有些固件做不到(比如某些H110,B150,B250,联想Q270等OEM主板)。具体表现是,可能在启动mac系统时因USB问题卡住,无法进入系统,或者开机USB键盘鼠标无法正常使用。此怪癖,除非必要，否则不建议使用';

  @override
  String get bootArgsCardTitle => '引导参数:';

  @override
  String get bootArgsDefaultTip => '(默认开启-v代码模式,不需要可以去掉-v勾选)';

  @override
  String get debugCategory => '调试类型';

  @override
  String get amfiSipCategory => 'AMFI/SIP相关';

  @override
  String get igpuCategory => '核显相关';

  @override
  String get dgpuCategory => '独显相关';

  @override
  String get blackScreenFixCategory => '黑屏修复';

  @override
  String get above4gCategory => 'Above 4G Decoding';

  @override
  String get touchpadFixCategory => '触摸板修复';

  @override
  String get othersCategory => '其他';

  @override
  String get optionalKextsCardTitle => '可选Kexts驱动:';

  @override
  String get optionalKextsDefaultTip => '(可选驱动,非必要不添加)';

  @override
  String get graphicsCategory => '显卡';

  @override
  String get powerManagementCategory => '电源管理';

  @override
  String get sleepCategory => '睡眠';

  @override
  String get diskCategory => '磁盘';

  @override
  String get cpuCategory => 'CPU相关';

  @override
  String get amdPlatformCategory => 'AMD平台';

  @override
  String get usbCategory => 'USB相关';

  @override
  String get sdCardCategory => 'SD卡';

  @override
  String get optionalSettingsCardTitle => '可选项设置:';

  @override
  String get optionalSettingsDefaultTip => '(通常保持默认即可,除非有特殊需求时才需要修改)';

  @override
  String get tabBrand => '品牌';

  @override
  String get tabSpecialMotherboard => '特殊主板';

  @override
  String get tabSipSetting => 'SIP设置';

  @override
  String get tabCpuRename => 'CPU改名';

  @override
  String get tabUiScale => 'OpenCore引导UI缩放设置';

  @override
  String get tabAcpiConfig => 'ACPI配置';

  @override
  String get tabBooterConfig => 'Booter配置';

  @override
  String get tabKernelConfig => 'Kernel配置';

  @override
  String get tabUefiConfig => 'UEFI配置';

  @override
  String get processEfiTitle => '加工EFI';

  @override
  String get processEfiSubTitle => '(对RapidEFI配置的EFI再次加工)';

  @override
  String get processEfiExpanderText =>
      'RapidEFI工具配置的EFI,会在EFI输出文件夹生成一个名为configModel的文件,请将此文件导入工具如下指定区域,即可再次编辑当前EFI\n\n此功能仅支持RapidEFI V3.0.0以上版本,不支持以前旧版本';

  @override
  String get clearCurrentConfig => '清除当前配置';

  @override
  String get importConfigModelFile => '导入configModel文件';

  @override
  String get importingConfigModel => '正在导入configModel...';

  @override
  String get releaseToReimport => '松开鼠标重新导入configModel';

  @override
  String get dragConfigModelArea => '拖拽configModel文件到这里\n或点击选择文件';

  @override
  String get importFailedToast => '导入的配置数据不符合要求，请重新导入 configModel 文件';

  @override
  String get changeEfiTitle => '更改EFI标题';

  @override
  String get modifyCurrentEfiName => '修改当前EFI名称';

  @override
  String originalEfiName(String name) {
    return '原EFI名称: $name';
  }

  @override
  String get enterModifiedName => '请输入修改后的名称';

  @override
  String get deleteRecord => '删除此记录';

  @override
  String get exportThisEfi => '导出此EFI';

  @override
  String get releaseToIdentifyHardware => '释放后自动识别硬件报告和 ACPI 表';

  @override
  String get dragHardwareReportHere =>
      '拖入当前工具导出的硬件报告文件夹\n(自动识别sysInfo.txt和ACPI目录)';

  @override
  String get invalidHardwareReportToast => '未识别到有效硬件报告文件';

  @override
  String optionalSuffix(String title) {
    return '$title(可选)';
  }

  @override
  String get notSelected => '未选择';

  @override
  String get verifyingAdminPassword => '正在验证管理员密码...';

  @override
  String get hardwareReportAcpiMissing => '已导入外部硬件报告，但未提供 ACPI 表目录，不能定制 SSDT。';

  @override
  String get hwMemory => '内存';

  @override
  String get hwCompatible => '兼容';

  @override
  String hwDeviceID(String id) {
    return '设备ID: $id';
  }

  @override
  String hwType(String type) {
    return '类型: $type';
  }

  @override
  String hwCapacity(String cap) {
    return '容量: $cap';
  }

  @override
  String hwInterface(String bus) {
    return '接口: $bus';
  }

  @override
  String hwModel(String model) {
    return '型号: $model';
  }

  @override
  String get hwStorage => '硬盘';

  @override
  String get hwStorageController => '存储\n控制器';

  @override
  String get hwBluetooth => '蓝牙';

  @override
  String get hwAudioCard => '声卡';

  @override
  String get hwAudioLayoutId => '布局ID:';

  @override
  String get hwNetworkCard => '网卡';

  @override
  String get hwMonitor => '显示器';

  @override
  String hwResolution(String res, String hz) {
    return '分辨率: $res @ $hz Hz';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size英寸)';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return '连接显卡: $gpu';
  }

  @override
  String get hwInput => '输入';

  @override
  String get hwSDCard => 'SD卡';

  @override
  String hwDevice(String dev) {
    return '设备: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return '序列号: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return '内建: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return '安全启动: $status';
  }

  @override
  String hwCSM(String status) {
    return 'CSM: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'Resizable BAR: $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'Above 4G Decoding: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'AHCI: $status';
  }

  @override
  String get hwAHCIUnknown => 'AHCI: 未知';

  @override
  String get hwEnabled => '已开启';

  @override
  String get hwDisabled => '已关闭';

  @override
  String get hwCurrentBiosSettings => '当前BIOS设置';

  @override
  String get hwBiosNote =>
      '黑苹果注意事项：\n1.所有红色文字，请留意在BIOS中将其关闭或开启保持蓝色\n2.所有蓝色文字，绝大多数情况表示合适的设置\n安全启动(Secure Boot):  必须关闭(否则无法正常启动未签名的固件程序，比如OC引导)\nCSM(兼容性支持)：大多数情况建议关闭(Intel 4，5代移动端核显平台，X99平台，以及部分RX460等显卡可能需要开启CSM,否则花屏或无法启动)\nResizable BAR： 建议在BIOS中关闭(如果BIOS没有关闭，请确保在Booter->Quirks中将ResizeAppleGpuBars设置为0，以避免启动问题)\nAbove 4G Decoding：建议在BIOS中开启，同时去掉工具自动勾选的npci=0x2000参数。若BIOS设置中没有此项，建议勾选添加启动参数npci=0x2000或npci=0x3000。注意BIOS中Above 4G Decoding设置与启动参数npci=0x2000或npci=0x3000，两者二选一!\nAHCI(SATA磁盘模式)：必须开启(若不开启，可能无法识别硬盘或出现禁止符号，无法进一步安装)';

  @override
  String hwBit(String arch) {
    return '$arch 位';
  }

  @override
  String get hwVirtualizationEnabled => '虚拟化: 已启用';

  @override
  String get hwVirtualizationDisabled => '虚拟化: 未启用';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores核心$threads线程';
  }

  @override
  String hwInstructionSet(String simd) {
    return '指令集: $simd';
  }

  @override
  String hwCore(String core) {
    return '核心: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return '需要仿冒ID: $id';
  }

  @override
  String get hwGPU => '显卡';

  @override
  String get hwIncompatible => '不兼容';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => '主板';

  @override
  String hwBrand(String brand) {
    return '品牌: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return '芯片组: $chipset';
  }

  @override
  String get hwAppleALCSnippet => 'AppleALC 支持多个布局 ID，不同 ID 可能影响音频接口可用性。';

  @override
  String get manualNvidiaInfoText =>
      'Nvidia支持的显卡系列如下:\n• Tesla 系列（8000 - 300 系列）: 原生免驱最高支持macOS High Sierra 10.13.x(可能需要修正NVCAP),更高需要OCLP补丁(不支持Metal)\n例如:8600GT,9600GT,GT210,GT220,GT240 等,显卡太老,而且可能需要修正NVCAP,不建议使用!\n• Kepler 系列（600 - 800 系列）: 原生免驱最高支持macOS Big Sur 11.x,更高需要OCLP补丁(支持Metal,真驱动)\nKepler核心: GT630,GT635,GT640,GTX650,GTX660,GTX680,GT710,GT720,GT730,GT740,GTX760,GTX Titan Z,GTX Titan Black等\nKepler核心专业卡: NVS 510,Quadro 410,Quadro K420,Quadro K600,Quadro K2000等\n• Fermi, Maxwell, Pascal 系列: Webdriver最高支持macOS High Sierra 10.13.x, macOS Big Sur 11.x以上系统需要勾选如下启动参数,然后OCLP补丁(不支持Metal,假驱动)\nFermi系列: GT605,GT610,GT620,GT630,GT705,GT710,GT720,GT730,GT740等\nMaxwell系列: GTX750,GTX750Ti,GTX950,GTX960,GTX970,GTX980等\nPascal系列: GTX1050,GTX1060,GTX1070,GTX1080等\nNvidia不支持的显卡系列如下(11以上系列都不支持):\n• 16 ~ 50系列: GTX1650,GTX1660,RTX 2050,RTX 2060,RTX 3050,RTX 3060,RTX 4050,RTX 4060,RTX 5060,RTX 5070等';

  @override
  String get manualEdidInfoText =>
      '1. 通常用于修复Intel 6～10代核显(这里不处理独显EDID)黑屏无信号问题(通常表现是键盘指示灯大小写灯亮,显示器黑屏无信号)\n2. 500系台式机主板(H510/B560/H570/Q570/Z590/W580)使用核显HDMI输出时,必须注入真实显示器EDID,否则大概率黑屏\n3. 如何获取显示器EDID:\nWindows环境使用RapidEFI工具或者hdinfo工具获取显示器EDID(也可以使用三方工具获取,但需要自行处理EDID格式):\n1). 打开RapidEFI-v4.x及以上版本,点击\"配置EFI\"-> \"自动配置EFI\"-> \"详细配置\"(如果使用hdinfo,点击\"详细配置\")\n2). 等待自动获取硬件信息完成,点击显示器右边EDID代码,即可获取EDID(会提示成功复制到剪切板)\n3). 返回此页面,粘贴EDID到输入框即可\n4. 注入EDID前,请先在\"高级配置\"中勾选需要注入的AAPL0X接口; 如果不确定接口,可按实际HDMI修复方案选择\n5. EDID数据通常为128字节(256位)或者256字节(512位),如果不是,请检查确认后再输入!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return '当前Framebuffer: $fb。按WhateverGreen官方表生成 framebuffer-conX-alldata。';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      '当前Framebuffer不支持结构化推荐值; 已有原始值可删除后重新选择受支持的核显基础配置。';

  @override
  String get manualAddConnectorTooltip => '添加接口定制';

  @override
  String get manualConnectorLabel => '接口';

  @override
  String get manualIndexLabel => '索引号';

  @override
  String get manualBusIdLabel => '总线ID';

  @override
  String get manualConnectorTypeLabel => '接口类型';

  @override
  String manualOldConnector(String label) {
    return '$label(老接口)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return '删除 con$index 定制';
  }

  @override
  String get manualUnparseableValue => '原始值不可解析';

  @override
  String get manualDeleteAndReadd => '请删除后重新添加结构化接口定制';

  @override
  String get manualDeleteUnparseableTooltip => '删除不可解析接口定制';

  @override
  String get manualBatteryDriver => '电池驱动';

  @override
  String get manualKeyboardTouchpadDriver => '键盘触摸板驱动';

  @override
  String get manualSensorDriver => '传感器驱动(除非必要,否则不建议勾选)';

  @override
  String get manualKernelTrimStrategy => 'SSD固态硬盘Trim策略';

  @override
  String get manualKernelPowerManagement => '电源管理';

  @override
  String get manualKernelDummyPowerManagement =>
      '禁用电源管理(DummyPowerManagement),修复CPU电源管理导致的重启问题(表现为出现AppleIntelCPUPowerManagement内核崩溃日志,或卡开机Logo,或刚进入系统就重启等问题).对于4代及以上平台,是NullCpuPowerManagement.kext的首选替代品';

  @override
  String get manualKernelQuirksDefault =>
      'Kernel - Quirks 建议保持默认配置,除非必要或者清楚每一项的含义';

  @override
  String get manualUefiProvideConsoleGop =>
      'ProvideConsoleGop怪癖默认开启,可以用于修复OpenCore启动UI不显示问题.如果仍然不显示启动UI,可以尝试去掉勾选';

  @override
  String get manualUefiDriversHfs => 'UEFI-Drivers(修复HFS驱动导致OpenCore启动UI不显示问题)';

  @override
  String get manualUefiOutputBootUI => 'UEFI - Output (修复OpenCore启动UI不显示问题)';

  @override
  String get manualSpecialMotherboardTip => '可选项-符合描述的主板型号可以勾选';

  @override
  String get manualCsrSettingTip => '可选项-根据需求设置,默认关闭SIP';

  @override
  String get manualRenameCpuNameTip => '可选项-自定义CPU名称';

  @override
  String get manualRenameCpuNameLabel => '输入CPU名称(不填则显示Win下CPU名称):';

  @override
  String get manualRenameCpuNameHint => '在此输入CPU名称';

  @override
  String get manualBrandTip => '可选项-符合描述的品牌建议勾选';

  @override
  String get manualBooterPlan1 => '方案一';

  @override
  String get manualBooterPlan2 => '方案二';

  @override
  String get manualBooterPlan3 => '方案三';

  @override
  String get manualBooterPlan4 => '方案四';

  @override
  String get manualBooterEbFix => '卡EB修复(可选项 - 通常默认即可):';

  @override
  String get manualAcpiPatch => 'ACPI - Patch补丁';

  @override
  String get manualAcpiSsdt => 'ACPI - SSDT补丁';

  @override
  String get manualBluetoothNvram => '蓝牙NVRAM参数:';

  @override
  String get manualUsbWifiGithub => '访问作者chris1111的仓库';

  @override
  String get manualUsbWifiKexts =>
      '添加USB WiFi所需Kexts驱动(注意除了勾选此驱动外,还需要在macOS系统安装配套Wireless USB Big Sur Adapter客户端程序,如果不生效,建议重启一次电脑)';

  @override
  String get manualWifiCardSupport =>
      '工具提供的驱动支持macOS Mojave 10.14 ~ macOS Sequoia 15系统！注意Monterey 12及以上系统还需要使用OCLP补丁后方可正常使用！！！';

  @override
  String get manualWifiAtheros => '高通(Atheros)';

  @override
  String get manualWifiIntel => '英特尔(Intel)';

  @override
  String get manualWifiBrcm => '博通(Brcm)';

  @override
  String get manualWifiBluetoothDriver => '蓝牙驱动';

  @override
  String get manualWifiItlwmPlan =>
      '方案二,使用itlwm驱动(需配合HeliPort客户端),英特尔(Intel系列)Z大WiFi驱动.注意与方案一冲突，可能造成启动崩溃，不可同时使用!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      '方案一，使用AirportItlwm驱动,英特尔(Intel系列)Z大WiFi驱动,加入以下所有WiFi驱动(体积较大,谨慎选择).注意与方案二冲突，可能造成启动崩溃，不可同时使用!!!';

  @override
  String get manualWifiAddAllDrivers => '加入以下所有WiFi驱动(体积较大,谨慎选择)';

  @override
  String get manualLaptopMainly => '(主要用于笔记本)';

  @override
  String get manualLaptopRelatedDrivers => '笔记本相关驱动:';

  @override
  String get manualLaptopOtherFixes => '其他修复';

  @override
  String get manualLaptopOtherFixesTip => '其他修复(除非必要,否则不建议勾选)';

  @override
  String get manualMotherboardSelectAll => '全选 / 全不选';

  @override
  String get manualMotherboardDetails => '详细信息';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total 已选)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return '已从 $model 应用 $count 项配置';
  }

  @override
  String get manualMotherboardFromMbconfs => '来自 mbconfs';

  @override
  String get manualIgpuRemark => '⚠️ 备注';

  @override
  String get manualIgpuSelectCpu => '选择 CPU';

  @override
  String get manualIgpuLoadConfig => '从 CPU 型号加载核显配置';

  @override
  String get manualIgpuSelectProperties => '选择要应用的属性';

  @override
  String get manualIgpuPresetScheme => '预设方案';

  @override
  String get manualIgpuSelectGen => '选择代数';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return '已选：$model  $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'CPU 型号';

  @override
  String get manualIgpuMatchOrNot => '对应则勾选，否则不勾选';

  @override
  String get manualIgpuCpuGen => 'CPU 代数';

  @override
  String get manualIgpuByCpuModel => '按 CPU 型号';

  @override
  String get manualIgpuName => '核显';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return '已从 $model 加载 $igpu 核显配置，写入 $count 项属性';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return '来自 $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction => '选择 CPU 代数和型号，勾选要应用的属性';

  @override
  String get manualIgpuModel => '型号';

  @override
  String get manualFakeGpuSelect => '选择需要仿冒的显卡设备';

  @override
  String get settingsThemeColors => '色彩主题';

  @override
  String get settingsThemeDefault => '默认';

  @override
  String get sharedInvalidInput => '输入不合法';

  @override
  String sharedRequiresHexChars(String length) {
    return '需要$length位十六进制字符';
  }

  @override
  String get sharedExample73BF => '例如: 73BF';

  @override
  String get sharedTipsLengthMustMatch => 'tips 长度必须和 choices 一致';

  @override
  String sharedCpuInfo(String description) {
    return '[CPU信息]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return '原生支持的macOS最后版本:  $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[Bios官方推荐关闭项]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return '补丁支持的macOS版本:  $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[Bios官方推荐开启项]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return '原生支持的macOS最初版本:  $version';
  }

  @override
  String get sharedInvalidAcpiPath => '无效ACPI路径';

  @override
  String get sharedFillAcpiPath => '填写ACPI路径';

  @override
  String get sharedFillPciPath => '填写PCI路径';

  @override
  String get sharedInvalidPciPath => '无效PCI路径';

  @override
  String get sharedGetModifiedOclp => '获取修改版OCLP';

  @override
  String hwConfigModelGenerated(String details) {
    return 'ConfigModel 已生成: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return '硬件信息获取失败: $e';
  }

  @override
  String get hwAdminPwdIncorrect => '管理员密码不正确，无法导出 ACPI 表';

  @override
  String get hwNoNativeInfoExportable => '暂无可导出的本机硬件信息';

  @override
  String get hwOutputtingOpencore => '正在输出 OpenCore EFI...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return '本机 ACPI 表导出失败: $error';
  }

  @override
  String get hwSsdtProcessFailed => 'SSDT 定制流程失败.';

  @override
  String get hwConfigRuleRefactoring => '硬件自动生成 ConfigModel 规则重构中';

  @override
  String get hwQueryUnsupported => '当前平台不支持硬件信息查询';

  @override
  String hwPreparingSsdt(String items) {
    return '准备定制 SSDT: $items';
  }

  @override
  String get hwImportedExtReportHint => '当前为导入的外部硬件报告，请先刷新本机硬件信息后再导出';

  @override
  String get hwRefreshingInfo => '正在刷新硬件信息';

  @override
  String get hwSsdtProcessEnded => 'SSDT 定制流程结束.';

  @override
  String get hwInfoUnsupported => '硬件信息暂不支持';

  @override
  String get hwEfiWrittenExtracting => 'EFI 已写入，开始提取 ACPI 并定制 SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return '配置 EFI 失败: $error';
  }

  @override
  String get hwReportFolderCleanFailed => '硬件报告文件夹清理失败';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return '硬件报告文件夹清理失败: $error';
  }

  @override
  String get hwExportingNativeReport => '正在导出本机硬件报告...';

  @override
  String get hwAdminAuthCanceled => '已取消管理员授权，未导出 ACPI 表';

  @override
  String get hwImportedNoAcpiDir => '已导入外部硬件报告但未提供 ACPI 表目录，已禁用定制 SSDT。';

  @override
  String get hwExportAcpiUnsupported => '当前平台不支持导出 ACPI 表';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return '硬件报告已导出到 $reportDirectory，$msg';
  }

  @override
  String get hwInfoNotJson => '硬件信息文件不是 JSON 对象';

  @override
  String get hwUnsupported => '不支持';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'ACPI 表临时目录清理失败: $error';
  }

  @override
  String get hwEfiConfigDone => 'EFI 配置完成.';

  @override
  String hwEfiConfigError(String error) {
    return '配置 EFI 发生错误: $error';
  }

  @override
  String get hwNativeAcpiExportFailed => '本机 ACPI 表导出失败';

  @override
  String get hwAcpiToolNotReady => 'ACPI 导出工具未准备就绪';

  @override
  String get hwFailed => '失败';

  @override
  String hwImportReportFailed(String e) {
    return '导入硬件报告失败: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return '本机 ACPI 表导出完成: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid => 'ACPI 表导出失败：未找到有效 ACPI 表';

  @override
  String get hwUsingOriginalSsdt => '使用 EFI 原始 SSDT，跳过 SSDT 定制.';

  @override
  String get hwWaitingRefresh => '等待刷新硬件信息';

  @override
  String get hwInfoLoaded => '硬件信息加载完成';

  @override
  String hwAcpiExportedTo(String path) {
    return 'ACPI 表已导出到 $path';
  }

  @override
  String get hwStartConfigEfi => '开始配置 EFI...';

  @override
  String get hwInfoLoadFailed => '硬件信息加载失败';

  @override
  String get hwCache => '缓存';

  @override
  String get hwInfoImportDone => '硬件信息导入完成';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return '硬件报告和 ACPI 表已导出到 $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid => 'ACPI 表目录无效，定制 SSDT 不可用';

  @override
  String get hwExportingNativeAcpi => '正在导出本机 ACPI 表...';

  @override
  String get hwGeneratingConfigModel => '正在根据硬件信息生成 ConfigModel...';

  @override
  String get hwInfoImported => '硬件信息已导入';

  @override
  String get hwAcpiExportFailedOrUnsup => 'ACPI 表导出失败或不支持';

  @override
  String get hwReportFolderCreateFailed => '硬件报告文件夹创建失败';

  @override
  String get hwNoAdminPwd => '未输入管理员密码，无法导出 ACPI 表';

  @override
  String get hwEfiConfigFailedCheck => 'EFI 配置失败，请检查输出路径或日志.';

  @override
  String get hwLoadingInfo => '正在加载硬件信息';

  @override
  String get hwDone => '完成';

  @override
  String get hwAcpiExportFailedProcess => 'ACPI 表导出失败：导出进程执行失败';

  @override
  String get hwIgpuType => '核心显卡';

  @override
  String get hwGpuCompatible => '兼容';

  @override
  String get hwGpuIncompatibleNoDisplay => '不兼容,没有直连内屏';

  @override
  String get hwGpuIncompatible => '不兼容';

  @override
  String get hwLaptop => '笔记本';

  @override
  String get hwGpuLoadingCompat => '兼容性加载中';

  @override
  String get hwGpuLimitedCompat => '有限兼容';

  @override
  String get hwClickToCopy => '点击复制';

  @override
  String get hwCopiedToClipboard => '已复制到剪切板';
}
