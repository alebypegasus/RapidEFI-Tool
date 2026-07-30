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
  String get languageEs => 'Español';

  @override
  String get languageFr => 'Français';

  @override
  String get languageAr => 'العربية';

  @override
  String get languageHi => 'हिन्दी';

  @override
  String get languageRu => 'Русский';

  @override
  String get languageIt => 'Italiano';

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

  @override
  String get linkCantOpen => '无法打开链接';

  @override
  String get clickToCopy => '点击复制';

  @override
  String get copiedToClipboard => '已复制到剪切板';

  @override
  String get gpuCard => '显卡';

  @override
  String gpuDeviceId(String id) {
    return '设备ID: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return '核心: $codename';
  }

  @override
  String get gpuCompatible => '兼容';

  @override
  String get gpuIncompatible => '不兼容';

  @override
  String get gpuIncompatibleNoDisplay => '不兼容,没有直连内屏';

  @override
  String get gpuLimitedCompat => '有限兼容';

  @override
  String get gpuLoadingCompat => '兼容性加载中';

  @override
  String gpuSpoofId(String id) {
    return '需要仿冒ID: $id';
  }

  @override
  String get bootArgVerbose => '开启-v跑码（卡代码时方便定位发现错误，适用于调试引导阶段）';

  @override
  String get bootArgKeepsyms =>
      '便于mac系统在发生内核崩溃时打印更多符号信息，有助于排查问题，此参数通常搭配debug=0x100使用（首次调试引导时，强烈建议勾选）';

  @override
  String get bootArgDebug0x100 => '防止在内核崩溃时自动重启，便于查看Panic崩溃日志（首次调试引导时，强烈建议勾选）';

  @override
  String get bootArgWatchdog0 => '禁用看门狗功能，防止误触发Panic崩溃重启（适用于调试引导时）';

  @override
  String get bootArgSlide0 =>
      '禁用内核地址空间随机化（KASLR）保证内核和 kext（内核扩展）加载在同一套固定内存映射，避免因随机slide值导致的内存冲突早期启动内核崩溃问题（适用于调试引导时）';

  @override
  String get bootArgNoCompatCheck =>
      '跳过首次启动macOS过程中机型检查，避免因SMBIOS过低或过高出现禁止符号，确保可以正常引导系统';

  @override
  String get bootArgCpus1 =>
      '仅启用1个CPU核心（适用于X58,X79,X99,X299等多核心服务器CPU内核崩溃、早期安装调试阶段）';

  @override
  String get bootArgBetaFix =>
      '修复在最新系统（主要是Beta版）可能出现的问题（系统驱动异常，比如：声卡，蓝牙，CPU频率等突然异常，尝鲜最新Beta版本系统时强烈建议勾选）';

  @override
  String get bootArgAmfi0x80 =>
      '禁用AMFI，相对比较新的显卡（比如HD4000及以上，GT710等开普勒核心以上）或者WiFi打驱动时，此参数适用.注意和amfi_get_out_of_my_way=0x1参数不要同时使用！（禁用SIP才生效，开启SIP后自动移除该参数）';

  @override
  String get bootArgAmfiGetOut =>
      '禁用AMFI，老平台老旧显卡（比如GT240）或者WiFi打驱动时，此参数适用.注意和amfi=0x80参数不要同时使用！（禁用SIP才生效，开启SIP后自动移除该参数）';

  @override
  String get bootArgIpcControl =>
      '修复禁用AMFI后部分应用（例如：百度网盘）闪退问题（禁用SIP才生效.开启SIP后自动移除该参数）';

  @override
  String get bootArgAmfiPassBeta =>
      '确保AMFIPass.kext在最新macOS Tahoe 26系统中能正常启用并激活功能，以便继续绕过AMFI（禁用AMFI）安全检查';

  @override
  String get bootArgRevpatch =>
      '修复禁用SIP（系统完整性保护）或SecureBootModel（安全模型）后macOS系统OTA更新问题，以及修复自定义CPU名称显示问题';

  @override
  String get bootArgDisableGfxFirmware =>
      '禁用Apple Graphics Firmware固件加载，避免启动过程中因固件加载失败或重试循环而卡住（仅适用于Intel核显）';

  @override
  String get bootArgWegNoIgpu => '禁用Intel核显（核显无法驱动，也不支持加速硬解时，建议勾选）';

  @override
  String get bootArgIgfxVesa =>
      '禁用Intel 核显加速（例如：使用OCLP 打完核显补丁无法正常启动时，可以勾选，无加速，仅调试时用）';

  @override
  String get bootArgIgfxRpsc =>
      '修复提升Intel核显性能（例如：修复核显4K hevc编码，分辨率及fps达不到理想值问题）';

  @override
  String get bootArgIgfxMpc =>
      '修复核显分辨率问题，强制启用核显（IGPU）的最大像素时钟覆盖，解除 macOS 默认的分辨率、刷新率等限制';

  @override
  String get bootArgGfxfw2 => '启用核显完整固件加载，提高核显利用率，提升核显性能.添加此参数可能导致无法进系统，谨慎使用';

  @override
  String get bootArgCdclk =>
      '修复10代Ice Lake平台上因Core Display Clock（CDCLK）频率过低而导致的内核崩溃问题';

  @override
  String get bootArgIgfxdbeo => '修复10代Ice Lake平台上因驱动错误地计算DVMT预分配内存大小而导致的内核崩溃问题';

  @override
  String get bootArgIceLakeDisplay => '修复10代Ice Lake平台上笔记本开机持续花屏7到15秒的问题';

  @override
  String get bootArgIgfxNoTelemetry =>
      '禁用 iGPU（核显）在启动过程中加载遥测模块，某些笔记本（尤其是 Chromebook）在加载该模块时可能会导致系统在启动阶段卡死或冻结';

  @override
  String get bootArgWegNoEgpu => '禁用独显（通常intel双显卡笔记本独立显卡【常见于N卡】无法驱动时，建议勾选）';

  @override
  String get bootArgNvDisable => '禁用 NVIDIA 驱动（仅适用于调试不兼容N卡时）';

  @override
  String get bootArgUnfairGva =>
      '修复AMD GPU上的硬件数字版权管理（DRM）支持问题（使得在支持的AMD GPU上体验受到DRM保护的数字内容）';

  @override
  String get bootArgRadpg15 =>
      '修复HD7750、HD7850(主要核心为GCN系列HD77XX、HD78XX、HD79XX)等老A卡花屏、黄屏等显示异常问题';

  @override
  String get bootArgAmdNoAccel =>
      '禁用ATI,AMD显卡加速（例如：使用OCLP 打完显卡补丁无法正常启动时，可以勾选，无加速，仅调试时用）';

  @override
  String get bootArgRaddvi => '修复校正老A卡（290X、370等）DVI接口输出显示';

  @override
  String get bootArgRadcodec => '修复官方不支持的AMD显卡（例如: RX550 Lexa核心）使其支持VDA硬件视频编码';

  @override
  String get bootArgNgfxFermi =>
      '修复Fermi,Maxwell,Pascal架构老N卡(例如:GT610,GTX750,GTX960,GTX1050)BigSur 11以上系统显卡驱动问题(注意:进入系统后需要使用OCLP打显卡补丁!!!开普勒核心不需要此参数!!!)';

  @override
  String get bootArgApplbkl3 => '启用AMD Radeon RX 5000 系列显卡的PWM背光控制';

  @override
  String get bootArgAgdpmodIgnore =>
      '修复部分显卡可能导致的黑屏或显示异常问题，完全忽略AppleGraphicsDevicePolicy.kext对图形卡的限制';

  @override
  String get bootArgAgdpmodPikera =>
      '修复AMD Navi核心RX5XXX,RX6XXX系列显卡启动时黑屏问题(例如:RX5500,RX5600,RX5700,RX6600,RX6800,RX6900等),将board-id替换为board-ix,绕过AppleGraphicsDevicePolicy的某些限制';

  @override
  String get bootArgAgdpmodVit9696 =>
      '修复部分RX470,RX570等显卡睡眠唤醒后黑屏问题，禁用AppleGraphicsDevicePolicy中的board-id检查';

  @override
  String get bootArgAmdNoDgpuAccel =>
      '修复Intel 3代及以下平台AMD RX5XX,RX5XXX,RX6XXX系列免驱显卡在Ventura及以上系统黑屏问题(注意:进入系统后需要使用OCLP打显卡补丁!打完补丁后去掉该参数!)';

  @override
  String get bootArgBrcmfx => '修复部分博通无线网卡速率较慢问题(更改博通WiFi国家码为香港,也可以更改路由器信道改善)';

  @override
  String get bootArgVsmcgen => '修复卡ramrod代码,SMC模拟器损坏问题';

  @override
  String get bootArgSwdPanic => '避免设备进入睡眠模式后重启的问题，便于获取内核崩溃日志，排查睡眠问题';

  @override
  String get bootArgCtrsmt =>
      '改善Intel 12代及之后大小核 CPU 的拓扑识别与调度，性能提升不保证，建议实测后启用（注意需要搭配CpuTopologyRebuild.kext使用才生效）';

  @override
  String get bootArgDarkwake0 =>
      '完全禁用Darkwake模式，让系统进入传统睡眠模式，主要用于修复唤醒黑屏，自动唤醒等问题';

  @override
  String get bootArgForceRenderStandby =>
      '禁用iGPU RC6渲染待机，修复睡眠时由于核显RC6引发NVMe内核恐慌问题';

  @override
  String get bootArgI2cForcePolling =>
      '强制I2C类型触控板工作在轮询模式，而不是中断驱动模式（中断模式通常需要定制SSDT，相对复杂）';

  @override
  String get kextLiluDesc => '必备基础驱动，为macOS提供扩展性和兼容性，是所有插件型驱动的依赖基础';

  @override
  String get kextVirtualSMCDesc =>
      '必备SMC模拟器，在非苹果硬件上模拟苹果SMC控制器，提供传感器、风扇、电源管理等功能，缺少该驱动不能正常运行macOS';

  @override
  String get kextWhateverGreenDesc =>
      'GPU图形驱动支持，绝大多数强烈建议勾选(MacPro7,1机型且RX460,RX560等以上AMD独显用户可以去掉勾选),通常与NootRX,NootedRed驱动存在冲突，安装阶段不要同时选择';

  @override
  String get kextAppleALCDesc => '使用AppleALC仿冒内建声卡(相对较完美,优先选择)';

  @override
  String get kextVoodooHDADesc =>
      '使用VoodooHDA万能声卡(引导中加载,仅支持macOS BigSur 11.2.3以下,更高版本需要打入系统内核扩展)';

  @override
  String get kextUSBInjectAllDesc => '通用USB注入方案，未定制USB时的默认选择';

  @override
  String get kextUSBToolBoxDesc => 'USBToolBox方案，通常配合定制好的UTBMap.kext使用';

  @override
  String get kextBatteryV1Desc => '电池驱动方案一(适用于3代及更老平台的笔记本)';

  @override
  String get kextBatteryV2Desc => '电池驱动方案二(适用于3代及更新平台的笔记本)';

  @override
  String get kextAmbientLightDesc => '环境光传感器(自动屏幕亮度),如果没有环境光传感器,请勿使用,否则可能会导致问题';

  @override
  String get kextAsusNBFnKeysDesc => '华硕(Asus)笔记本风扇控制、电源管理和其他系统传感器优化等,非华硕不建议使用';

  @override
  String get kextLenovoDesc => '联想(Lenovo)笔记本风扇控制、电源管理和其他系统传感器优化等,非联想机器不建议使用';

  @override
  String get kextDellDesc => '戴尔(Dell)笔记本专用传感器,对风扇进行更准确的监视和控制,非戴尔机器不建议使用';

  @override
  String get kextNootRXDesc =>
      '用于支持RX6700、RX6750XT、RX6750GRE等官方不支持的RX6XXX系列独显,与WhateverGreen驱动存在冲突，安装阶段不要同时选择';

  @override
  String get kextBatteryFixDesc => '电池读数修复,修复部分电池显示问题';

  @override
  String get kextNVMeFixDesc =>
      '提升非苹果NVMe固态硬盘兼容性，减少闲置能耗。不兼容的NVMe磁盘无法有效修复超时崩溃，兼容性良好的NVMe使用此驱动可能导致内核崩溃，谨慎使用';

  @override
  String get kextFeatureUnlockDesc => '解锁不受支持Mac上的通用控制、随航等功能';

  @override
  String get kextHibernationFixDesc => '修复常见休眠、睡眠相关问题';

  @override
  String get kextHoRNDIS => '允许macOS通过USB连接使用Android设备的网络共享功能';

  @override
  String get kextCPUFriendDesc => 'CPU变频驱动，主要提供11代及以上平台MacPro7,1变频支持';

  @override
  String get kextCPUFriendDataProviderDesc => 'CPUFriend配套数据驱动，提供具体机型的CPU变频数据';

  @override
  String get kextAppleIGHDA => '修复部分英特尔核显HDMI音频问题';

  @override
  String get kextNoTouchID => '修复无法登录Apple ID和iCloud的问题，通常用于没有本地有线网卡的笔记本';

  @override
  String get kextAppleRTCDesc =>
      '修复新平台macOS AppleRTC与PC BIOS之间的冲突，例如RTC导致卡死、突然重启或休眠秒醒';

  @override
  String get kextPS2KBMouseDesc => 'PS接口类型键盘鼠标驱动(台式机主板PS圆口键鼠驱动)';

  @override
  String get kextPS2KeyboardDesc => 'PS接口类型键盘驱动(台式机主板PS圆口键盘驱动)';

  @override
  String get kextPS2MouseDesc => 'PS接口类型鼠标驱动(台式机主板PS圆口鼠标驱动)';

  @override
  String get kextMicrosoftSurfaceDesc => 'Microsoft Surface 专用键盘触摸板驱动';

  @override
  String get kextBrightnessKeysDesc => '亮度快捷键修复';

  @override
  String get kextGenericUSBXHCIDesc => '老平台或AMD平台USB 3.0控制器兼容性修复';

  @override
  String get kextXLNCUSBFixDesc => '修复AMD FM1/FM2/AM3等老平台USB控制器兼容性问题';

  @override
  String get kextRealtekCardReaderDesc =>
      'Realtek系列SD卡读卡器驱动(搭配RealtekCardReaderFriend使用)';

  @override
  String get kextRadeonSensorDesc => '优化AMD Radeon显卡性能，但某些场景可能导致系统崩溃或无法启动，谨慎勾选';

  @override
  String get hwStatusIdle => '等待刷新硬件信息';

  @override
  String get hwStatusLoading => '正在加载硬件信息';

  @override
  String get hwStatusRefreshing => '正在刷新硬件信息';

  @override
  String get hwStatusComplete => '硬件信息加载完成';

  @override
  String get hwStatusFailed => '硬件信息加载失败';

  @override
  String get hwStatusUnsupported => '硬件信息暂不支持';

  @override
  String get hwStatusImported => '硬件信息导入完成';

  @override
  String get hwPlatformUnsupported => '当前平台不支持硬件信息查询';

  @override
  String hwFetchFailed(String error) {
    return '硬件信息获取失败: $error';
  }

  @override
  String get hwExportWarning => '当前为导入的外部硬件报告，请先刷新本机硬件信息后再导出';

  @override
  String get hwNoLocalInfo => '暂无可导出的本机硬件信息';

  @override
  String get hwFolderCleanFailed => '硬件报告文件夹清理失败';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return '硬件报告文件夹清理失败: $error';
  }

  @override
  String get hwFolderCreateFailed => '硬件报告文件夹创建失败';

  @override
  String get hwExporting => '正在导出本机硬件报告...';

  @override
  String hwExportSuccess(String path) {
    return '硬件报告和 ACPI 表已导出到 $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return '硬件报告已导出到 $path，$error';
  }

  @override
  String get hwAcpiExporting => '正在导出本机 ACPI 表...';

  @override
  String get hwAcpiExportFailed => '本机 ACPI 表导出失败';

  @override
  String hwAcpiExportSuccess(String path) {
    return '本机 ACPI 表导出完成: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return '本机 ACPI 表导出失败: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported => '当前平台不支持导出 ACPI 表';

  @override
  String get hwAcpiAuthCancelled => '已取消管理员授权，未导出 ACPI 表';

  @override
  String get hwAcpiNoPassword => '未输入管理员密码，无法导出 ACPI 表';

  @override
  String get hwAcpiWrongPassword => '管理员密码不正确，无法导出 ACPI 表';

  @override
  String get hwImportNotJson => '硬件信息文件不是 JSON 对象';

  @override
  String get hwImportSuccess => '硬件信息已导入';

  @override
  String get hwImportAcpiInvalid => 'ACPI 表目录无效，定制 SSDT 不可用';

  @override
  String hwImportFailed(String error) {
    return '导入硬件报告失败: $error';
  }

  @override
  String get hwConfigStart => '开始配置 EFI...';

  @override
  String get hwConfigGenerating => '正在根据硬件信息生成 ConfigModel...';

  @override
  String hwConfigSsdtPrep(String items) {
    return '准备定制 SSDT: $items';
  }

  @override
  String get hwConfigSsdtSkip => '使用 EFI 原始 SSDT，跳过 SSDT 定制.';

  @override
  String get hwConfigSsdtDisabled => '已导入外部硬件报告但未提供 ACPI 表目录，已禁用定制 SSDT。';

  @override
  String get hwConfigExporting => '正在输出 OpenCore EFI...';

  @override
  String hwConfigFailedMsg(String error) {
    return '配置 EFI 失败: $error';
  }

  @override
  String get hwConfigRebuilding => '硬件自动生成 ConfigModel 规则重构中';

  @override
  String get cpuUnknown => '未知';

  @override
  String get platDesktop => '台式机';

  @override
  String get platLaptop => '笔记本';

  @override
  String get platMini => '迷你主机';

  @override
  String get platServer => '服务器';

  @override
  String get csrEnabled => '开启SIP增强系统安全性,通常不需要使用OCLP打显卡，WiFi等驱动时,推荐勾选';

  @override
  String get csrPartial => '禁用SIP方案一';

  @override
  String get csrPartialDesc =>
      '非彻底禁用SIP,通常在BigSur等以上系统需要使用OCLP打显卡,WiFi等驱动时,建议勾选';

  @override
  String get csrFully => '禁用SIP方案二';

  @override
  String get csrFullyDesc =>
      '彻底禁用SIP,通常在BigSur等以上系统需要使用OCLP打显卡,WiFi等驱动时,优先选择此项';

  @override
  String get uiScaleAuto => '自适应显示器,根据显示器分辨率自动调整 OpenCore 引导界面的显示比例';

  @override
  String get uiScaleStandard => '标准分辨率显示器,适用于 720p、1080p、1440p 等标准分辨率显示器';

  @override
  String get uiScaleHigh =>
      '高分辨率显示器,适用于 4K、5K 等高分辨率显示器(可以有效改善高分屏OpenCore引导页面UI元素过小的问题)';

  @override
  String get procDefault => '不修改 ProcessorType';

  @override
  String get procKeep => '保持系统默认 CPU 类型显示';

  @override
  String get brandAsus => '华硕';

  @override
  String get brandGigabyte => '技嘉';

  @override
  String get brandAsrock => '华擎';

  @override
  String get brandMsi => '微星';

  @override
  String get brandDell => '戴尔';

  @override
  String get brandLenovo => '联想';

  @override
  String get brandSony => '索尼';

  @override
  String get brandHp => '惠普';

  @override
  String get brandGoogle => '谷歌';

  @override
  String get brandMicrosoft => '微软';

  @override
  String get mbNormal => '常规主板';

  @override
  String get mbOemUsb => '部分OEM主板存在USB所有权释放问题:EHCI Hand-off失效';

  @override
  String get navAppGuide => '软件指南';

  @override
  String get appGuideTitle => 'RapidEFI 使用指南';

  @override
  String get logMsg001 => '=> 未能找到 LPC(B)！已终止操作！';

  @override
  String get logMsg002 => '未找到有效的 DSDT ！请先选择一个 DSDT 文件或包含 DSDT 的文件目录!';

  @override
  String get logMsg003 => 'iasl工具准备失败!请先更新或者使用内置的iasl工具!';

  @override
  String get logMsg004 => '未找到有效的 .aml 文件!\\n';

  @override
  String get logMsg005 => '未找到有效的 DSDT ！请先选择一个 DSDT 文件或包含 DSDT 的文件目录!';

  @override
  String get logMsg006 =>
      '当前检测到多个 DSDT 文件，每次仅允许处理一个.请保留一个 DSDT 文件，其余请移除后再试.\\n';

  @override
  String get logMsg007 => '无效 DSDT 文件！请重新选择一个有效 DSDT 文件!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 反编译失败!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return '编译结果 : $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return '处理IntObj类型发生错误: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return '处理MethodObj类型发生错误: $arg0';
  }

  @override
  String get logMsg012 => '没有发现任何 IRQ 信息!';

  @override
  String get logMsg013 => '当前选项或者自定义IRQs为空!无法生成IRQ补丁!';

  @override
  String get logMsg014 => '=> 未找到任何 IRQ 信息!';

  @override
  String get logMsg015 => '自定义 IRQ 列表格式错误！！!设备之间用空格分隔，IRQ之间用逗号分隔！！！';

  @override
  String logMsg016(String arg0) {
    return '=> _HID 解析错误: $arg0';
  }

  @override
  String get logMsg017 => '未找到有效的设备,跳过 HPET 操作!';

  @override
  String get logMsg018 => '未提供有效的 IRQs 或者 IRQs 为空! 已终止操作!';

  @override
  String logMsg019(String arg0) {
    return '=> 无法定位 $arg0._CRS！已终止操作！';
  }

  @override
  String logMsg020(String arg0) {
    return '=> 无法定位 $arg0._CRS！';
  }

  @override
  String get logMsg021 => '=> _CRS似乎已经被命名为 XCRS！';

  @override
  String get logMsg022 => '=> 请禁用DSDT中该设备的 _CRS 到 XCRS 的重命名，重启后再试!\\n';

  @override
  String get logMsg023 => '=> 无法确定内存访问类型！';

  @override
  String get logMsg024 => '=> 无法将 Base 或 Length 转换为整数！';

  @override
  String get logMsg025 => '=> 未找到！';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> 使用默认值 $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> 未找到！';

  @override
  String get logMsg028 => '=> 没有需要修补的内容！';

  @override
  String logMsg029(String arg0, String arg1) {
    return '缺少 $arg0 的 IRQ 补丁结尾（$arg1）！已跳过…';
  }

  @override
  String get logMsg030 => '以下可能不是唯一的，默认已禁用！\\n';

  @override
  String get logMsg031 => '未提供有效的 UID，终止操作！';

  @override
  String logMsg032(String arg0) {
    return '$arg0 是一个自定义的 UID，可能需要手动定制设置，或者可能根本不受支持!';
  }

  @override
  String get logMsg033 => '在传递的 ACPI 表中未找到有效的 iGPU 路径!\\n';

  @override
  String logMsg034(String arg0) {
    return '注意: iGPU 路径被猜测为 $arg0\\n    使用前请验证!';
  }

  @override
  String logMsg035(String arg0) {
    return '注意: iGPU 路径已手动设置为 $arg0  请在使用前务必确认该路径是否正确!';
  }

  @override
  String get logMsg036 => '=> 已找到命名的 EC 设备, 无需仿冒!\\n';

  @override
  String get logMsg037 => 'USBX属性补丁不能为空! 已终止操作!';

  @override
  String get logMsg038 => '未找到有效的处理器设备！';

  @override
  String get logMsg039 => '=> 已找到有效的 PNP0B00 (RTC) 设备并通过验证,无需补丁及SSDT!已终止操作！';

  @override
  String get logMsg040 => '=> 未找到 ACPI000E (AWAC) 设备,无需补丁及SSDT!已终止操作!';

  @override
  String get logMsg041 => '=> 未找到任何设备！已终止操作！';

  @override
  String get logMsg042 => '未找到以下路径的匹配项：';

  @override
  String get logMsg043 => '未找到任何匹配项！';

  @override
  String get logMsg044 => '注意,设备路径必须以以下 PciRoot() 开头，才能与当前 ACPI 表匹配：';

  @override
  String logMsg045(String arg0) {
    return '=> 未找到，似乎不是一个有效的 $arg0 表!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '未找到 $arg0 值! 已终止操作!';
  }

  @override
  String get logMsg047 => '未找到 Reset Register Address 值! 已终止操作!';

  @override
  String logMsg048(String arg0) {
    return '无法解析 $arg0 中的 Processor ID，终止修补';
  }

  @override
  String logMsg049(String arg0) {
    return '在 $arg0 中第一个 CPU 已匹配, 无需修补 APIC 表!';
  }

  @override
  String get logMsg050 => '=> 未找到 Processor 匹配项! 已终止操作!';

  @override
  String get logMsg051 => '请选择IMEI补丁!';

  @override
  String logMsg052(String arg0) {
    return '=> 已在 $arg0 找到 IMEI 设备, 无需桥接仿冒!已终止操作！';
  }

  @override
  String get logMsg053 => '=> 未找到 PCI 根设备!已终止操作!';

  @override
  String get logMsg054 =>
      '=> 未启用 SSDT 仿冒 IMEI，必须通过 DeviceProperties 设置 device-id!';

  @override
  String get logMsg055 => '未找到 UNC (PNP0A03) 设备!无需 SSDT-UNC 补丁!已终止操作！\\n';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: _STA 方法不存在!';
  }

  @override
  String get logMsg057 => '=> 在上述所有ACPI表中均未找到 DMA (PNP0200) 设备! 已终止操作！\\n';

  @override
  String get logMsg058 => '=> 未找到 _PTS 方法, 将不生成 _PTS 调度入口和重命名补丁!';

  @override
  String get logMsg059 => '=> 未找到 _WAK 方法, 将不生成 _WAK 调度入口和重命名补丁!';

  @override
  String get logMsg060 => '=> 未找到可调度的 _PTS/_WAK 方法, 已跳过 SSDT-SleepHook!\\n';

  @override
  String get logMsg061 => '=> 在上述所有ACPI表中均未找到 _SST 方法! 已终止操作！\\n';

  @override
  String get logMsg062 => '=> 在上述所有ACPI表中均未找到 PNP0C0D 设备! 已终止操作！\\n';

  @override
  String get logMsg063 => '=> 不支持系统状态: [systemStatesNotSupported] ';

  @override
  String get logMsg064 =>
      '=> 注意: 当前固件不支持 _S3 状态, 如果BIOS设置没有禁用 S3 功能, 那么机器不支持S3睡眠!';

  @override
  String get logMsg065 => '=> 注意: 当前是AOAC机器,macOS不支持S3睡眠!';

  @override
  String get logMsg066 => '=> 当前未检测到是否是AOAC机器,请自行确认!';

  @override
  String get logMsg067 => '未找到 Low Power S0 Idle (V5) 值!';

  @override
  String get logMsg068 => '当前是 AOAC 机器, macOS不支持 S3 睡眠!';

  @override
  String get logMsg069 => '=> 未找到 Name 或 Method _S3,当前配置不支持S3睡眠! 已终止操作!';

  @override
  String logMsg070(String arg0) {
    return '=> 已找到 $arg0 方法!';
  }

  @override
  String get logMsg071 => '=> 当前方法已经被重命名,可能非原始ACPI表!请重新获取原始ACPI表后再尝试!\\n';

  @override
  String get logMsg072 => '=> 在上述ACPI表中均未找到 LID (PNP0C0D) 设备!已终止操作!\\n';

  @override
  String get logMsg073 => '=> 在上述ACPI表中均未找到 Method _LID!已终止操作!\\n';

  @override
  String get logMsg074 => '=> 在上述ACPI表中均未找到 PWRB (PNP0C0C) 设备!仿冒一个即可！\\n';

  @override
  String logMsg075(String arg0) {
    return '=> 无需仿冒SLPB设备,已在 $arg0 找到 PNP0C0E 设备!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> PNP0C0E 设备 $arg0 存在 _STA 方法!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E 设备 $arg0 不存在 _STA 方法!';
  }

  @override
  String get logMsg078 => '=> 未找到任何符合条件的 XHC/XHCI/XDCI/CNVW 设备！已终止操作！\\n';

  @override
  String get logMsg079 => '=> 未找到 GPRW 方法！';

  @override
  String get logMsg080 =>
      '=> 已找到 XPRW 方法！当前方法已经被重命名,可能非原始ACPI表!请重新获取原始ACPI表后再尝试!\\n';

  @override
  String get logMsg081 => '=> 未找到 XPRW 方法！已终止操作！';

  @override
  String get logMsg082 => '=> 未找到 UPRW 方法！';

  @override
  String get logMsg083 =>
      '=> 已找到 XPRW 方法！当前方法已经被重命名,可能非原始ACPI表!请重新获取原始ACPI表后再尝试!\\n';

  @override
  String get logMsg084 => '=> 未找到 XPRW 方法！已终止操作！';

  @override
  String get logMsg085 => '=> 未找到 GPI0 设备！已终止操作！\\n';

  @override
  String get logMsg086 => '=> 未找到 _STA 方法！已终止操作！\\n';

  @override
  String get logMsg087 => '=> 当前Processor处理器命名方案符合CPU命名规范!无需此SSDT!已终止操作!';

  @override
  String get logMsg088 => '=> 不存在 PLTF 设备,当前Intel平台不需要此SSDT!已终止操作…';

  @override
  String get logMsg089 => '=> 未发现符合要求的 CPU 设备,无需 SSDT-CPUR 补丁!已终止操作!';

  @override
  String get logMsg090 =>
      '=> 未启用 SSDT 仿冒 IMEI，必须通过 DeviceProperties 设置 device-id!';

  @override
  String get logMsg091 => '未提供有效 ACPI 设备路径! 已终止操作!';

  @override
  String logMsg092(String arg0) {
    return '在 DSDT 或 SSDT 中未找到 $arg0 对应的 _ON 或 _OFF 方法! 已终止操作!';
  }

  @override
  String logMsg093(String arg0) {
    return '在 DSDT 或 SSDT 中未找到 $arg0 对应的 _PS3 或 _DSM 方法! 已终止操作!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> 设备 $arg0 存在 _PRT 方法,可能已隐藏真实设备,将注入一个 BRG0 桥接设备!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> 设备 $arg0 不存在!';
  }

  @override
  String logMsg096(String arg0) {
    return '当前设备路径 $arg0 可能隐藏真实设备!';
  }

  @override
  String logMsg097(String arg0) {
    return '=> 显卡设备 $arg0 的 _ADR 地址存在溢出情况!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> 回溯至父设备路径: $arg0 并注入一个 BRG0 桥接设备!';
  }

  @override
  String logMsg099(String arg0) {
    return '未知的屏蔽方法: $arg0，操作已终止。';
  }

  @override
  String logMsg100(String arg0) {
    return '部分方法未找到: $arg0';
  }

  @override
  String get logMsg101 => '=> 未能找到有效的总线设备,已终止操作!';

  @override
  String get logMsg102 => '未提供有效的显卡ACPI路径! 已终止操作!';

  @override
  String get logMsg103 => '未提供有效的仿冒显卡ID! 已终止操作!';

  @override
  String get logMsg104 => '未提供有效的仿冒显卡名称！不会注入仿冒名称!';

  @override
  String logMsg105(String arg0) {
    return '当前显卡路径 $arg0 可能隐藏真实设备!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> 设备 $arg0 存在 _PRT 方法,可能已隐藏真实设备,将注入一个 GFX0 设备!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> 在 DSDT 或 SSDT 中未找到设备 $arg0! 已终止操作!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> 显卡设备 $arg0 的 _ADR 地址存在溢出情况!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> 回溯至父设备路径: $arg0 并注入一个 GFX0 设备!';
  }

  @override
  String get logMsg110 => '设备路径中存在地址 _ADR 溢出的情况!';

  @override
  String get logMsg111 => '以下设备可能会影响属性注入:';

  @override
  String get logMsg112 => '正在定位 LPC(B)/SBRG…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> 在 $arg0 中找到 $arg1';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> 在 $arg0 中找到 $arg1';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> 在 $arg0 中找到 $arg1';
  }

  @override
  String logMsg116(String arg0) {
    return '提供的 DSDT 路径：$arg0';
  }

  @override
  String logMsg117(String arg0) {
    return '提供的 DSDT 路径无效：$arg0';
  }

  @override
  String logMsg118(String arg0) {
    return '正在从目录 $arg0 收集有效ACPI表...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return '共找到 $arg0 个ACPI表, 其中 $arg1 个有效:';
  }

  @override
  String get logMsg120 => '多个带有 DSDT 签名的文件已通过验证：';

  @override
  String logMsg121(String arg0) {
    return '即将反编译 $arg0，以验证是否需要应用预制补丁…';
  }

  @override
  String get logMsg122 => '=> 无需应用预制补丁!\\n';

  @override
  String logMsg123(String arg0) {
    return '正在加载 $arg0...';
  }

  @override
  String get logMsg124 => '已处理完成!\\n';

  @override
  String get logMsg125 => '传入的文件或文件夹不存在!\\n';

  @override
  String get logMsg126 => '处理有问题的 DSDT 文件 ...';

  @override
  String get logMsg127 => '检查可用的预制补丁…';

  @override
  String logMsg128(String arg0) {
    return '正在将 $arg0 文件加载到内存…';
  }

  @override
  String get logMsg129 => '正在逐个处理补丁…\\n';

  @override
  String get logMsg130 => '=> 已定位, 正在应用…';

  @override
  String get logMsg131 => '=> 先前问题DSDT文件反编译成功!';

  @override
  String logMsg132(String arg0) {
    return '=> 补丁已应用到修改后的文件，文件保存在 Results 文件夹中：\\n   $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return '正在加载 $arg0 中的有效ACPI表…';
  }

  @override
  String get logMsg134 => '所有有效ACPI表反编译完成!';

  @override
  String logMsg135(String arg0) {
    return '总耗时：$arg0 秒\\n';
  }

  @override
  String logMsg136(String arg0) {
    return '编译 $arg0.aml 成功!';
  }

  @override
  String logMsg137(String arg0) {
    return '删除 $arg0.dsl 源文件';
  }

  @override
  String logMsg138(String arg0) {
    return '=> 未找到设备 $arg0 的 Scope';
  }

  @override
  String logMsg139(String arg0) {
    return '=> 无法定位 $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return '正在定位 $arg0 ($arg1) 设备…';
  }

  @override
  String logMsg141(String arg0) {
    return '=> 无法定位到任何 $arg0 设备';
  }

  @override
  String logMsg142(String arg0) {
    return '=> 找到 $arg0';
  }

  @override
  String get logMsg143 => '=> 正在查找验证 _STA…';

  @override
  String get logMsg144 => '=> _STA 已经重命名为 XSTA！跳过其他检查…';

  @override
  String get logMsg145 => '=> 请禁用DSDT中该设备的 _STA 到 XSTA 的重命名，重启后再试!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 变量$arg1';
  }

  @override
  String get logMsg147 => '=> 未找到 _STA 方法/名称';

  @override
  String logMsg148(String arg0) {
    return '=> 在索引 $arg0 处找到 _STA 方法!';
  }

  @override
  String get logMsg149 => '=> 正在生成 _STA 到 XSTA 的重命名';

  @override
  String get logMsg150 => '=> 存在多个返回语句，或者返回值不是 Return (0x0F)';

  @override
  String get logMsg151 => '正在收集 ACPI 设备信息…';

  @override
  String get logMsg152 => '正在收集 ACPI 设备路径…';

  @override
  String get logMsg153 => '正在重新检查孤立设备…';

  @override
  String logMsg154(String arg0) {
    return '当前自定义IRQs: $arg0';
  }

  @override
  String get logMsg155 => '=> 示例：RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> 找到 _HID: $arg0';
  }

  @override
  String get logMsg157 => '正在定位 PNP0103 (HPET) 设备…';

  @override
  String logMsg158(String arg0) {
    return '=> 定位于 $arg0';
  }

  @override
  String get logMsg159 => '正在定位 HPET 的 _CRS 方法/名称…';

  @override
  String logMsg160(String arg0) {
    return '=> 定位于 $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> 在索引: $arg0 处找到';
  }

  @override
  String logMsg162(String arg0) {
    return '=> 类型: $arg0';
  }

  @override
  String get logMsg163 => '=> 正在检查 Memory32Fixed…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> 获取到 $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => '正在创建 IRQ 补丁…';

  @override
  String get logMsg166 => '正在检查 IRQ…';

  @override
  String get logMsg167 => 'IRQ 为空!跳过…\\n';

  @override
  String get logMsg168 => '未找到匹配项。';

  @override
  String logMsg169(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg170 => '正在创建一个仿冒 HPET 设备…';

  @override
  String logMsg171(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> 使用的UID: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> 适用平台: $arg0';
  }

  @override
  String get logMsg174 => '未提供有效 iGPU 路径，尝试自动查找...';

  @override
  String get logMsg175 => '正在寻找位于 0x00020000 的 iGPU 设备…';

  @override
  String logMsg176(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> 在 $arg0 处找到 iGPU 设备!';
  }

  @override
  String get logMsg178 => '未通过地址找到 iGPU 设备!';

  @override
  String get logMsg179 => '正在搜索常见的 iGPU 名称…';

  @override
  String logMsg180(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> 在 $arg0 处发现了可能的 iGPU 设备';
  }

  @override
  String logMsg182(String arg0) {
    return '在 $arg0 处发现了可能的 iGPU 设备\\n';
  }

  @override
  String logMsg183(String arg0) {
    return '已按照给定iGPU路径,手动设置为 $arg0 \\n';
  }

  @override
  String logMsg184(String arg0) {
    return '无效的 iGPU 路径：$arg0';
  }

  @override
  String get logMsg185 => '正在检查 ACPI 表中是否存在原生 PNLF 设备…';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> 已在 $arg0 找到原生 PNLF 设备: $arg1';
  }

  @override
  String get logMsg187 => '=> 需要将原生 PNLF 重命名为 XNLF, 正在生成重命名补丁…';

  @override
  String get logMsg188 => '=> 未找到原生 PNLF 设备!';

  @override
  String get logMsg189 => '=> 无需生成 PNLF to XNLF 重命名补丁!';

  @override
  String logMsg190(String arg0) {
    return '在 $arg0 中检测到 Name (NBCF, 0x00), 正在生成补丁…';
  }

  @override
  String logMsg191(String arg0) {
    return '在 $arg0 中检测到 Name (NBCF, Zero), 正在生成补丁…';
  }

  @override
  String get logMsg192 => '正在定位 PNP0C09（EC）设备…';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> 在 $arg0 找到 $arg1 个 PNP0C09（EC）设备';
  }

  @override
  String get logMsg194 => '=> 校验中...';

  @override
  String logMsg195(String arg0) {
    return '=> 找到 $arg0';
  }

  @override
  String get logMsg196 => ' => PNP0C09（EC）设备命名为 EC，正在重命名';

  @override
  String get logMsg197 => '=> 有效的 PNP0C09（EC）设备';

  @override
  String get logMsg198 => '=> _STA 已正确启用, 跳过重命名';

  @override
  String get logMsg199 => '=> 无效的 PNP0C09（EC）设备';

  @override
  String get logMsg200 => '=> 未找到有效的 PNP0C09（EC）设备, 只需仿冒一个EC设备即可';

  @override
  String logMsg201(String arg0) {
    return '正在创建 $arg0.dsl…';
  }

  @override
  String logMsg202(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg203 => '正在确定 CPU 命名方案…';

  @override
  String logMsg204(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> 已找到 Processor 处理器：$arg0';
  }

  @override
  String logMsg206(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> 未找到任何 Processor 对象…';

  @override
  String get logMsg208 => '=> 未找到 ACPI0007 设备…';

  @override
  String logMsg209(String arg0) {
    return '=> 已找到 $arg0 个 ACPI0007 设备';
  }

  @override
  String logMsg210(String arg0) {
    return '=> 在 $arg0 找到父设备，正在处理…';
  }

  @override
  String logMsg211(String arg0) {
    return '=> 正在检查 $arg0…';
  }

  @override
  String get logMsg212 => '=> 未找到！跳过…';

  @override
  String get logMsg213 => '=> 未找到！跳过…';

  @override
  String logMsg214(String arg0) {
    return '正在处理 $arg0 个有效的处理器设备…';
  }

  @override
  String get logMsg215 => '获取LPC Name失败...';

  @override
  String logMsg216(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg217 => '=> 需要仿冒 RTC!';

  @override
  String get logMsg218 => '=> 正在检查 _CRS…';

  @override
  String get logMsg219 => '=> _CRS 是一个缓冲区, 正在检查 RTC 范围…';

  @override
  String get logMsg220 => '=> 无法调整值, 无法验证 RTC 范围.';

  @override
  String get logMsg221 => '=> 收集值失败, 无法验证 RTC 范围.';

  @override
  String get logMsg222 => '=> _CRS 是一个方法, 无法验证 RTC 范围!';

  @override
  String get logMsg223 => '=> 正在生成 _CRS 到 XCRS 的重命名…';

  @override
  String logMsg224(String arg0) {
    return '=> 在索引 $arg0 处找到';
  }

  @override
  String get logMsg225 => '=>  未找到';

  @override
  String logMsg226(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String get logMsg228 => '正在收集 RHUB/HUBN/URTH 设备...';

  @override
  String logMsg229(String arg0) {
    return '=> 找到 $arg0 个设备';
  }

  @override
  String get logMsg230 => '=>  需要重命名!';

  @override
  String logMsg231(String arg0) {
    return '=>  检查 $arg0: 是否存在 _STA 方法';
  }

  @override
  String logMsg232(String arg0) {
    return '=>  在索引 $arg0 找到 _STA 方法!';
  }

  @override
  String get logMsg233 => '=>  生成 _STA 到 XSTA 的补丁';

  @override
  String get logMsg234 => '=>  未找到 _STA 方法!';

  @override
  String logMsg235(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String get logMsg236 => '=> 设备路径中存在 _ADR 地址溢出！';

  @override
  String get logMsg237 => '=> 以下设备可能需要调整桥接才能正常工作：';

  @override
  String get logMsg238 => '正在收集 PCI 桥接设备…';

  @override
  String get logMsg239 => 'PCI 桥接设备为空！已经终止操作！';

  @override
  String get logMsg240 => '正在构建桥接设备…';

  @override
  String get logMsg241 => 'PCI 桥接设备为空！跳过…';

  @override
  String get logMsg242 => '正在匹配设备路径…';

  @override
  String get logMsg243 => '未找到匹配项!';

  @override
  String logMsg244(String arg0) {
    return '=> 匹配到 $arg0, 无需桥接';
  }

  @override
  String get logMsg245 => '未找到匹配项!\\n';

  @override
  String get logMsg246 => '无需桥接!\\n';

  @override
  String get logMsg247 => '正在解析桥接设备…';

  @override
  String get logMsg248 => '=> 无法解析!';

  @override
  String get logMsg249 => '解析桥接设备时出错!\\n';

  @override
  String logMsg250(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String get logMsg251 => '正在定位 ACPI0008（ALS）设备…';

  @override
  String logMsg252(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> 在$arg0 表: $arg1 处找到ALS设备!';
  }

  @override
  String get logMsg254 => '=> 不需要仿冒!\\n';

  @override
  String logMsg255(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String get logMsg256 => '已正确启用_STA,无需补丁！\\n';

  @override
  String get logMsg257 => '未找到，不需要补丁!\\n';

  @override
  String get logMsg258 => '未找到 ACPI0008（ALS）设备, 需要仿冒设备…';

  @override
  String logMsg259(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String get logMsg260 => '正在检测XOSI方案...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> 已自动检测到：$arg0（$arg1）';
  }

  @override
  String get logMsg262 => '正在检查 OSID 方法…';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> 在偏移量 $arg0 处找到了 $arg1 方法';
  }

  @override
  String get logMsg264 => '=> 未找到，无需将 OSID 重命名为 XSID';

  @override
  String get logMsg265 => '正在创建 _OSI 到 XOSI 的重命名…';

  @override
  String logMsg266(String arg0) {
    return '正在查找 $arg0 表…';
  }

  @override
  String logMsg267(String arg0) {
    return '已找到 $arg0 表,正在验证签名…';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 表签名验证通过!';
  }

  @override
  String logMsg269(String arg0) {
    return '正在检查 $arg0 值…';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return '获取到 $arg0 值 : $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return '获取到 Reset Register Address 值 : $arg0';
  }

  @override
  String get logMsg272 => '需要修补的ACPI 补丁如下: ';

  @override
  String get logMsg273 => '正在修补 APIC 表…';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> 修正 APIC Processor ID: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> APIC 表修补完成!';

  @override
  String logMsg276(String arg0) {
    return '正在创建 $arg0.dsl…';
  }

  @override
  String get logMsg277 => '正在检查 DMAR 表保留内存区域…';

  @override
  String get logMsg278 => '=> 未发现保留内存区域, 无需修补 DMAR!\\n';

  @override
  String logMsg279(String arg0) {
    return '发现 $arg0 个保留内存区域, 正在生成新表…';
  }

  @override
  String get logMsg280 => '正在通过地址 0x00160000 查找 IMEI 设备...';

  @override
  String get logMsg281 => '未找到 IMEI 设备, 需要仿冒该设备…';

  @override
  String get logMsg282 => '正在校验父设备...';

  @override
  String get logMsg283 => '正在寻找位于 0x00020000 的 iGPU 设备…';

  @override
  String get logMsg284 => '=> 未找到 iGPU 设备!';

  @override
  String get logMsg285 => '正在尝试定位 PCI 根设备...';

  @override
  String logMsg286(String arg0) {
    return '=> 找到 PCI 根设备: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> 找到 iGPU 设备: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> 使用父设备: $arg0';
  }

  @override
  String get logMsg289 => '正在收集仿冒device-id方案…';

  @override
  String logMsg290(String arg0) {
    return '=> 仿冒为7系主板IMEI (device-id: $arg0),以匹配第3代 Ivy Bridge处理器';
  }

  @override
  String logMsg291(String arg0) {
    return '=> 仿冒为6系主板IMEI (device-id: $arg0),以匹配第2代Sandy Bridge处理器';
  }

  @override
  String logMsg292(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String get logMsg293 => '正在查找 UNC (PNP0A03) 设备...';

  @override
  String logMsg294(String arg0) {
    return '=> 共找到 $arg0 个 UNC 设备';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> 第 $arg0 个 UNC 设备: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> 检查 $arg0: _STA 方法是否存在';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> 在索引 $arg0 找到 $arg1: _STA 方法!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> 生成 $arg0: _STA 到 XSTA 的补丁';
  }

  @override
  String logMsg299(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg300(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg301 => '正在检查是否存在 DTGP 方法...';

  @override
  String get logMsg302 => '=> 未找到 DTGP 方法!';

  @override
  String get logMsg303 => '=> 在上述所有ACPI表中均未找到 DTGP 方法! \\n';

  @override
  String logMsg304(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg305(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg306 => '正在查找 DMA (PNP0200) 设备...';

  @override
  String get logMsg307 => '=> 未找到 DMA (PNP0200) 设备!';

  @override
  String logMsg308(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg309(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg310 => '正在检查是否存在 _PTS 方法...';

  @override
  String logMsg311(String arg0) {
    return '=> 已找到 $arg0 方法!';
  }

  @override
  String get logMsg312 => '=> 未找到 _PTS 方法!';

  @override
  String get logMsg313 => '正在检查是否存在 _WAK 方法...';

  @override
  String logMsg314(String arg0) {
    return '=> 已找到 $arg0 方法!';
  }

  @override
  String get logMsg315 => '=> 未找到 _WAK 方法!';

  @override
  String logMsg316(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg318 => '正在检查是否存在 _SST 方法...';

  @override
  String logMsg319(String arg0) {
    return '=> 已在 $arg0 找到 _SST 方法!';
  }

  @override
  String get logMsg320 => '=> 未找到 _SST 方法!';

  @override
  String logMsg321(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg323 => '正在检查是否存在 PNP0C0D 设备...';

  @override
  String logMsg324(String arg0) {
    return '=> 已在 $arg0 找到 PNP0C0D 设备!';
  }

  @override
  String get logMsg325 => '=> 未找到 PNP0C0D 设备!';

  @override
  String logMsg326(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return '正在检查是否存在 $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> 已在 $arg0 找到 $arg1';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> 已在 $arg0 找到 $arg1';
  }

  @override
  String logMsg331(String arg0) {
    return '=> 未找到 $arg0';
  }

  @override
  String get logMsg332 => '已检查所有ACPI表!';

  @override
  String get logMsg333 => '=> 支持系统状态: [systemStatesFound] ';

  @override
  String get logMsg334 => '=> 当前固件支持常见系统状态!修复睡眠问题后,macOS可支持S3睡眠!';

  @override
  String get logMsg335 => '正在检查 Low Power S0 Idle (V5) 值…';

  @override
  String logMsg336(String arg0) {
    return '获取到 Low Power S0 Idle (V5) : $arg0';
  }

  @override
  String get logMsg337 => '当前不是 AOAC 机器, 不影响macOS系统 S3 睡眠!';

  @override
  String get logMsg338 => '正在检查是否存在 _S3...';

  @override
  String logMsg339(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> 已在 $arg0 找到 Name _S3!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> 已在 $arg0 找到 Method _S3!';
  }

  @override
  String get logMsg342 => '=> 未找到 Name或Method _S3';

  @override
  String logMsg343(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg344(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg345(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg346 => '正在查找 LID (PNP0C0D) 设备...';

  @override
  String logMsg347(String arg0) {
    return '=> 已在 $arg0 找到 PNP0C0D 设备!';
  }

  @override
  String get logMsg348 => '=> 未找到 LID (PNP0C0D) 设备!';

  @override
  String logMsg349(String arg0) {
    return '=> 已在 $arg0 找到 Method _LID!';
  }

  @override
  String get logMsg350 => '=> 未找到 Method _LID!';

  @override
  String get logMsg351 => '正在检查是否存在 _TTS方法...';

  @override
  String logMsg352(String arg0) {
    return '=> 已找到 $arg0 方法!';
  }

  @override
  String get logMsg353 => '=> 未找到 _TTS 方法!';

  @override
  String get logMsg354 => '正在检查是否存在 ZTTS 方法...';

  @override
  String get logMsg355 => '=> 未找到 ZTTS 方法!';

  @override
  String logMsg356(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg358 => '正在查找 PWRB (PNP0C0C) 设备...';

  @override
  String get logMsg359 => '=> 未找到 PWRB (PNP0C0C) 设备!';

  @override
  String logMsg360(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg361(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg362 => '正在查找 SLPB (PNP0C0E) 设备...';

  @override
  String get logMsg363 => '=> 未找到 SLPB (PNP0C0E) 设备!';

  @override
  String get logMsg364 => '=> 在上述ACPI表中均未找到 SLPB (PNP0C0E) 设备!仿冒一个即可！\\n';

  @override
  String logMsg365(String arg0) {
    return '正在创建 $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg367(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg368(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String get logMsg369 => '正在查找 PNP0C01 设备...';

  @override
  String get logMsg370 => '=> 未找到 PNP0C01 设备!';

  @override
  String get logMsg371 => '=> 在上述所有ACPI表中均未找到 PNP0C01 设备!\\n';

  @override
  String logMsg372(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg373 => '正在收集 XHC/XHCI/XDCI/CNVW 设备...';

  @override
  String logMsg374(String arg0) {
    return '=> 正在检查 $arg0 设备是否支持 PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 不支持 PMEE，已跳过';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 支持 PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg378 => '正在检查是否存在 GPRW 方法...';

  @override
  String get logMsg379 => '正在检查是否存在 XPRW 方法...';

  @override
  String logMsg380(String arg0) {
    return '=> 已在 $arg0 找到 GPRW 方法！';
  }

  @override
  String logMsg381(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg382 => '正在检查是否存在 UPRW 方法...';

  @override
  String get logMsg383 => '正在检查是否存在 XPRW 方法...';

  @override
  String logMsg384(String arg0) {
    return '=> 已在 $arg0 找到 UPRW 方法！';
  }

  @override
  String logMsg385(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg386 => '正在检查是否存在 GPI0 设备...';

  @override
  String logMsg387(String arg0) {
    return '=> 已在 $arg0 找到 GPI0 设备！';
  }

  @override
  String get logMsg388 => '正在检查是否存在 _STA 方法...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> 在索引 $arg0 找到 $arg1: _STA 方法!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> 生成 $arg0: _STA 到 XSTA 的补丁';
  }

  @override
  String logMsg391(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg392 => '正在确定 CPU 命名方案…';

  @override
  String logMsg393(String arg0) {
    return '正在检查 $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> 已找到 Processor 处理器：$arg0';
  }

  @override
  String get logMsg395 => '=> 未找到任何 Processor 对象…';

  @override
  String get logMsg396 => '=> 未找到 ACPI0007 设备…';

  @override
  String logMsg397(String arg0) {
    return '=> 已找到 $arg0 个 ACPI0007 设备';
  }

  @override
  String logMsg398(String arg0) {
    return '=> 在 $arg0 找到父设备，正在处理…';
  }

  @override
  String logMsg399(String arg0) {
    return '=> 正在检查 $arg0…';
  }

  @override
  String get logMsg400 => '=> 未找到！跳过…';

  @override
  String get logMsg401 => '=> 未找到！跳过…';

  @override
  String logMsg402(String arg0) {
    return '正在处理 $arg0 个有效的处理器设备…';
  }

  @override
  String logMsg403(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg404(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg405(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg406(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg407(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg408(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg409(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg410(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg411 => '正在收集仿冒device-id方案…';

  @override
  String logMsg412(String arg0) {
    return '=> 仿冒为7系主板IMEI (device-id: $arg0),以匹配第3代 Ivy Bridge处理器';
  }

  @override
  String logMsg413(String arg0) {
    return '=> 仿冒为6系主板IMEI (device-id: $arg0),以匹配第2代Sandy Bridge处理器';
  }

  @override
  String logMsg414(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg415(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg416(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg417(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg418(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg419(String arg0) {
    return '正在检查设备 $arg0 是否存在 _ON 或 _OFF 方法...';
  }

  @override
  String logMsg420(String arg0) {
    return '正在检查设备 $arg0 是否存在 _PS3 或 _DSM 方法...';
  }

  @override
  String logMsg421(String arg0) {
    return '正在检查设备 $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> 在 DSDT 或 SSDT 中未找到 $arg0 对应的 _PRT 方法!';
  }

  @override
  String logMsg423(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> 需要屏蔽的 $arg0 设备路径:  $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> 屏蔽方法: $arg0 方法';
  }

  @override
  String logMsg426(String arg0) {
    return '=> 设备相对路径已转换成绝对路径: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> 在 $arg0 中找到 $arg1.$arg2 方法';
  }

  @override
  String logMsg428(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String get logMsg429 => '正在收集可能的总线设备…';

  @override
  String logMsg430(String arg0) {
    return '正在创建预编译 $arg0.dsl...';
  }

  @override
  String logMsg431(String arg0) {
    return '正在检查显卡设备 $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> 在 DSDT 或 SSDT 中未找到 $arg0 对应的 _PRT 方法!';
  }

  @override
  String logMsg433(String arg0) {
    return '正在创建 $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> 显卡设备路径:  $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> 仿冒显卡ID:  $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> 仿冒显卡名称:  $arg0';
  }

  @override
  String get logMsg437 => '=> 未找到!';

  @override
  String logMsg438(String arg0) {
    return '=> 已匹配到PCI路径: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> 更新$arg0 \"$arg1\" 到 $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" 已存在于 $arg2，跳过...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> 添加$arg0 \"$arg1\" 到 $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> 更新键 \"$arg0\" 的值为 \"$arg1\" 于 $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> 键 \"$arg0\" 的值已是最新，跳过 $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> 添加键 \"$arg0\" 值 \"$arg1\" 到 $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return '硬件报告文件夹清理失败: $arg0';
  }

  @override
  String get logMsg446 => '本机 ACPI 表导出失败';

  @override
  String logMsg447(String arg0) {
    return '本机 ACPI 表导出失败: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return '本机 ACPI 表导出失败: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'ACPI 表临时目录清理失败: $arg0';
  }

  @override
  String get logMsg450 => '正在导出本机硬件报告...';

  @override
  String get logMsg451 => '正在导出本机 ACPI 表...';

  @override
  String logMsg452(String arg0) {
    return '本机 ACPI 表导出完成: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return '源文件不存在: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return '保存文件时出错: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return '当前OC版本: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'ZIP文件不存在: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 文件成功解压';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return '解压 $arg0 文件时出错: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return '文件或目录不存在: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return '压缩完成: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return '压缩出错: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return '删除目录: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return '删除文件: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return '删除失败: $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return '文件已成功保存到: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return '源目录不存在: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return '文件夹已准备: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return '创建文件夹时出错: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return '打开目录失败，路径不存在: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return '打开目录失败: $arg0, $arg1';
  }

  @override
  String get autoGen5000 => '兼容';

  @override
  String get autoGen5001 => '有限兼容';

  @override
  String get autoGen5002 => '不兼容';

  @override
  String get autoGen5003 => '已启用';

  @override
  String get autoGen5004 => '开启';

  @override
  String get autoGen5005 => '未知';

  @override
  String get autoGen5006 => '有线网卡';

  @override
  String get autoGen5007 => '有限兼容\n最高支持 macOS Tahoe 26\n缺少 AVX2';

  @override
  String get autoGen5008 => '不兼容\n最高支持 macOS El Capitan 10.11\n缺少 SSE4';

  @override
  String get autoGen5009 => '缺少设备 ID';

  @override
  String get autoGen5010 => 'NootedRed 支持';

  @override
  String get autoGen5011 => '兼容性加载中';

  @override
  String get autoGen5012 => '低端 Intel CPU 核显不支持';

  @override
  String get autoGen5013 => 'VGA 输出不支持';

  @override
  String get autoGen5014 => '仿冒支持';

  @override
  String get autoGen5015 => '原生支持';

  @override
  String get autoGen5016 => '缺少 AVX2 指令集';

  @override
  String get autoGen5017 => '核心';

  @override
  String get autoGen5018 => '独立';

  @override
  String get autoGen5019 => '核显';

  @override
  String get autoGen5020 => '华硕';

  @override
  String get autoGen5021 => '技嘉';

  @override
  String get autoGen5022 => '华擎';

  @override
  String get autoGen5023 => '微星';

  @override
  String get autoGen5024 => '戴尔';

  @override
  String get autoGen5025 => '联想';

  @override
  String get autoGen5026 => '索尼';

  @override
  String get autoGen5027 => '惠普';

  @override
  String get autoGen5028 => '谷歌';

  @override
  String get autoGen5029 => '微软';

  @override
  String get autoGen5030 => '无法根据 CPU 信息识别平台类型';

  @override
  String get autoGen5031 => '笔记本';

  @override
  String get autoGen5032 => '迷你主机';

  @override
  String get autoGen5033 => '工作站';

  @override
  String get autoGen5034 => '无法根据 CPU、主板、核显确定平台代号';

  @override
  String get autoGen5035 => '设备屏蔽跳过: ';

  @override
  String get autoGen5036 => '缺少有效 ACPI Path';

  @override
  String get autoGen5037 => '待定制SSDT列表： ';

  @override
  String get autoGen5038 => 'ACPI 表提取失败';

  @override
  String get autoGen5039 => 'ACPI 表加载失败';

  @override
  String get autoGen5040 => '定制 SSDT 结果不完整';

  @override
  String get autoGen5041 => '定制 SSDT 发生异常';

  @override
  String get autoGen5042 => '定制 SSDT 临时目录清理失败: ';

  @override
  String get autoGen5043 => '显卡设备 ID 仿冒 SSDT ';

  @override
  String get autoGen5044 => '未能生成: ';

  @override
  String get autoGen5045 => 'ACPI 设备屏蔽 SSDT ';

  @override
  String get autoGen5046 => '已跳过定制 SSDT 合并，';

  @override
  String get autoGen5047 => '继续使用当前 EFI 中原始 SSDT 作为兜底。';

  @override
  String get autoGen5048 => '显卡设备 ID 仿冒跳过: ';

  @override
  String get autoGen5049 => '硬件信息缓存不是 JSON 对象';

  @override
  String get autoGen5050 => '硬件信息已从缓存加载';

  @override
  String get autoGen5051 => '硬件信息已从本地缓存加载';

  @override
  String get autoGen5052 => '硬件信息已从导入文件加载';

  @override
  String get autoGen5053 => '初始化硬件信息';

  @override
  String get autoGen5054 => '不支持当前系统，仅支持 Windows';

  @override
  String get autoGen5055 => '正在查询硬件信息';

  @override
  String get autoGen5056 => '硬件信息查询完成';

  @override
  String get autoGen5057 => 'sysInfo.exe 未返回硬件信息';

  @override
  String get autoGen5058 => 'sysInfo.exe 返回内容不是 JSON 对象';

  @override
  String get autoGen5059 => 'sysInfo.exe 查询完成';

  @override
  String get autoGen5060 => '核心显卡';

  @override
  String get autoGen5061 => '独立显卡';

  @override
  String get autoGen5062 => '已开启';

  @override
  String get autoGen5063 => '未知显卡';

  @override
  String get autoGen5064 => '集成';

  @override
  String get autoGen5065 => '博通';

  @override
  String get autoGen5066 => '高通';

  @override
  String get autoGen5067 => '英特尔';

  @override
  String get autoGen5068 => '苹果';

  @override
  String get autoGen5069 => '零刻';

  @override
  String get autoGen5070 => '松下';

  @override
  String get autoGen5071 => '泰安';

  @override
  String get autoGen5072 => '映泰';

  @override
  String get autoGen5073 => '七彩虹';

  @override
  String get autoGen5074 => '索泰';

  @override
  String get autoGen5075 => '耕升';

  @override
  String get autoGen5076 => '映众';

  @override
  String get autoGen5077 => '超微';

  @override
  String get autoGen5078 => '昂达';

  @override
  String get autoGen5079 => '斯巴达克';

  @override
  String get autoGen5080 => '磐正';

  @override
  String get autoGen5081 => '华南';

  @override
  String get autoGen5082 => '精粤';

  @override
  String get autoGen5083 => '科脑';

  @override
  String get autoGen5084 => '国硕';

  @override
  String get autoGen5085 => '捷波';

  @override
  String get autoGen5086 => '钻石';

  @override
  String get autoGen5087 => '顶星';

  @override
  String get autoGen5088 => '铭瑄';

  @override
  String get autoGen5089 => '梅捷';

  @override
  String get autoGen5090 => '精英';

  @override
  String get autoGen5091 => '富士康';

  @override
  String get autoGen5092 => '升技';

  @override
  String get autoGen5093 => '双敏';

  @override
  String get autoGen5094 => '恩杰';

  @override
  String get autoGen5095 => '影驰';

  @override
  String get autoGen5096 => '圣旗';

  @override
  String get autoGen5097 => '劲鲨';

  @override
  String get autoGen5098 => '希沃';

  @override
  String get autoGen5099 => '研华';

  @override
  String get autoGen5100 => '凌华';

  @override
  String get autoGen5101 => '巨械师';

  @override
  String get autoGen5102 => '爱国者';

  @override
  String get autoGen5103 => '翔升';

  @override
  String get autoGen5104 => '尔英';

  @override
  String get autoGen5105 => '蓝宝石';

  @override
  String get autoGen5106 => '康泰克';

  @override
  String get autoGen5107 => '青云';

  @override
  String get autoGen5108 => '华为';

  @override
  String get autoGen5109 => '小米';

  @override
  String get autoGen5110 => '红米';

  @override
  String get autoGen5111 => '荣耀';

  @override
  String get autoGen5112 => '三星';

  @override
  String get autoGen5113 => '机械革命';

  @override
  String get autoGen5114 => '机械师';

  @override
  String get autoGen5115 => '雷神';

  @override
  String get autoGen5116 => '雷蛇';

  @override
  String get autoGen5117 => '宏碁';

  @override
  String get autoGen5118 => '东芝';

  @override
  String get autoGen5119 => '富士通';

  @override
  String get autoGen5120 => '蓝天';

  @override
  String get autoGen5121 => '外星人';

  @override
  String get autoGen5122 => '神舟';

  @override
  String get autoGen5123 => '海尔';

  @override
  String get autoGen5124 => '中柏';

  @override
  String get autoGen5125 => '炫龙';

  @override
  String get autoGen5126 => '未来人类';

  @override
  String get autoGen5127 => '酷比魔方';

  @override
  String get autoGen5128 => '玄派玄机星';

  @override
  String get autoGen5129 => '正在检查更新，请稍后...';

  @override
  String get autoGen5130 => '刚刚已检查过更新，请稍后再试';

  @override
  String get autoGen5131 => '检查更新失败，请稍后重试';

  @override
  String get autoGen5132 => '获取发布版本列表失败，请稍后重试';

  @override
  String get autoGen5133 => '发布版本列表为空';

  @override
  String get autoGen5134 => '台式机';

  @override
  String get autoGen5135 => '服务器';

  @override
  String get autoGen5136 => '开启SIP增强系统安全性,通常不需要使用OCLP打显卡，WiFi等驱动时,推荐勾选';

  @override
  String get autoGen5137 => '禁用SIP方案一';

  @override
  String get autoGen5138 => '非彻底禁用SIP,通常在BigSur等以上系统需要使用OCLP打显卡,WiFi等驱动时,建议勾选';

  @override
  String get autoGen5139 => '禁用SIP方案二';

  @override
  String get autoGen5140 => '彻底禁用SIP,通常在BigSur等以上系统需要使用OCLP打显卡,WiFi等驱动时,优先选择此项';

  @override
  String get autoGen5141 => '自适应显示器,根据显示器分辨率自动调整 OpenCore 引导界面的显示比例';

  @override
  String get autoGen5142 => '标准分辨率显示器,适用于 720p、1080p、1440p 等标准分辨率显示器';

  @override
  String get autoGen5143 =>
      '高分辨率显示器,适用于 4K、5K 等高分辨率显示器(可以有效改善高分屏OpenCore引导页面UI元素过小的问题)';

  @override
  String get autoGen5144 => '不修改 ProcessorType';

  @override
  String get autoGen5145 => '保持系统默认 CPU 类型显示';

  @override
  String get autoGen5146 => 'Intel 及 AMD 平台 CPU 名称修改方案一(通常适用于 6 核心及以下 CPU)';

  @override
  String get autoGen5147 => 'Intel 及 AMD 平台 CPU 名称修改方案二(通常适用于 8 核心及以上 CPU)';

  @override
  String get autoGen5148 =>
      'Intel 及 AMD 平台 CPU 名称修改备选方案(通常适用于 8 核心及以上 i7、i9 系列 CPU)';

  @override
  String get autoGen5149 => '华硕(ASUS)';

  @override
  String get autoGen5150 => '技嘉(GIGABYTE)';

  @override
  String get autoGen5151 => '华擎(ASRock)';

  @override
  String get autoGen5152 => '微星(MSI)';

  @override
  String get autoGen5153 => '戴尔(Dell)';

  @override
  String get autoGen5154 => '联想(Lenovo)';

  @override
  String get autoGen5155 => '索尼(VAIO)';

  @override
  String get autoGen5156 => '惠普(HP)';

  @override
  String get autoGen5157 => '谷歌(Chromebook)';

  @override
  String get autoGen5158 => '微软(Microsoft Surface)';

  @override
  String get autoGen5159 => '常规主板';

  @override
  String get autoGen5160 => 'B850,B650,B550和A520主板,550系列芯片组笔记本';

  @override
  String get autoGen5161 => 'TRx40主板';

  @override
  String get autoGen5162 => 'X570主板';

  @override
  String get autoGen5163 => 'X470或B450主板2020年底或更新BIOS';

  @override
  String get autoGen5164 => '6系芯片组';

  @override
  String get autoGen5165 => 'Intel 3代CPU,6系芯片组(例如:H61,HM65)混合时勾选';

  @override
  String get autoGen5166 => '7系芯片组';

  @override
  String get autoGen5167 => 'Intel 2代CPU,7系芯片组(例如:B75,HM76)混合时勾选';

  @override
  String get autoGen5168 => 'H110,B150,B250,Q270等';

  @override
  String get autoGen5169 => '部分OEM主板存在USB所有权释放问题:EHCI Hand-off失效';

  @override
  String get autoGen5170 => 'Z490等2020年更新BIOS';

  @override
  String get autoGen5171 => '6系芯片组(Intel 3代CPU,6系芯片组(例如:H61,HM65)混合时勾选)';

  @override
  String get autoGen5172 => '7系芯片组(Intel 2代CPU,7系芯片组(例如:B75,HM76)混合时勾选)';

  @override
  String get autoGen5173 =>
      'H110,B150,B250,Q270等(部分OEM主板存在USB所有权释放问题:EHCI Hand-off失效)';

  @override
  String get autoGen5174 => '来自 mbconfs';

  @override
  String get autoGen5175 => 'DVI 双链';

  @override
  String get autoGen5176 => 'DVI 单链';

  @override
  String get autoGen5177 =>
      '支持OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5178 =>
      '支持OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13,适用于核显+独显机型';

  @override
  String get autoGen5179 =>
      '支持OS X Mountain Lion 10.8 ~ macOS Catalina 10.15,适用于Ivy Bridge架构,仅核显机型';

  @override
  String get autoGen5180 =>
      '支持OS X Mountain Lion 10.8 ~ macOS Catalina 10.15,适用于Ivy Bridge架构,核显解码+独显输出机型';

  @override
  String get autoGen5181 =>
      '支持OS X Mavericks 10.9 ~ macOS Big Sur 11,适用于Haswell架构NVIDIA Maxwell 和 Pascal独显';

  @override
  String get autoGen5182 =>
      '支持OS X Mavericks 10.9 ~ macOS Big Sur 11,适用于Haswell架构仅核显机型';

  @override
  String get autoGen5183 =>
      '支持OS X Mavericks 10.9 ~ macOS Big Sur 11,适用于Haswell架构核显+独显机型';

  @override
  String get autoGen5184 =>
      '支持macOS El Capitan 10.11 ~ macOS Monterey 12,适用于核显(或带独显)机型';

  @override
  String get autoGen5185 =>
      '支持macOS El Capitan 10.11 ~ macOS Monterey 12,适用于Broadwell架构核显(或带独显)';

  @override
  String get autoGen5186 =>
      '支持macOS Sierra 10.12 ~ macOS Ventura 13.适用于核显+独显机型.需要注意的是,使用此机型,多数仅核显用户会出现屏幕颜色不正常.仅核显用户,不推荐此机型';

  @override
  String get autoGen5187 =>
      '支持macOS Sierra 10.12 ~ macOS Ventura 13,适用于核显解码+独显输出机型';

  @override
  String get autoGen5188 => '支持macOS 10.14 ~ macOS Sequoia 15,适用于核显(或带独显)机型';

  @override
  String get autoGen5189 =>
      '支持macOS 10.15 ~ macOS Tahoe 26,适用于i7-10700K及以下处理器核显(或带独显)机型';

  @override
  String get autoGen5190 =>
      '支持macOS 10.15 ~ macOS Tahoe 26,适用于i9-10850K更高处理器核显(或带独显)机型';

  @override
  String get autoGen5191 => '支持macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 => '支持macOS 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5193 => '支持macOS 10.7 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5194 => '支持macOS 10.8 ~ macOS Catalina 10.15';

  @override
  String get autoGen5195 => '支持macOS 10.9 ~ macOS Big Sur 11';

  @override
  String get autoGen5196 => '支持macOS High Sierra 10.13 ~ macOS Monterey 12';

  @override
  String get autoGen5197 => '支持macOS Mojave 10.14 ~ macOS Monterey 12';

  @override
  String get autoGen5198 => '支持OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 => '支持OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 => '支持macOS Sierra 10.12 ~ macOS Monterey 12';

  @override
  String get autoGen5201 =>
      '支持macOS Sierra 10.12 ~ macOS Monterey 12(核显HD 515官方仅支持macOS Monterey 12,仿冒支持最新macOS Sequoia 15)';

  @override
  String get autoGen5202 =>
      '支持macOS Sierra 10.12 ~ macOS Monterey 12(核显Iris 540官方仅支持macOS Monterey 12,仿冒支持最新macOS Sequoia 15)';

  @override
  String get autoGen5203 =>
      '支持macOS Sierra 10.12 ~ macOS Monterey 12(核显Iris 550官方仅支持macOS Monterey 12,仿冒支持最新macOS Sequoia 15)';

  @override
  String get autoGen5204 =>
      '支持macOS Sierra 10.12 ~ macOS Monterey 12(核显HD530官方仅支持macOS Monterey 12,仿冒支持最新macOS Sequoia 15)';

  @override
  String get autoGen5205 => '支持macOS High Sierra 10.13 ~ macOS Ventura 13';

  @override
  String get autoGen5206 => '支持macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 => '支持macOS Catalina 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 => '支持macOS Catalina 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 => '支持macOS 10.9 ~ macOS Monterey 12,适用于仅独显机型';

  @override
  String get autoGen5210 =>
      '支持macOS 10.13 ~ macOS Sequoia 15.适用于仅独显机型.对于Intel 11代及以上,通常使用此机型,CPU变频和睿频正常,无需额外Kext补丁(如果macOS系统睿频不正常,请提取使用本机SSDT-PLUG)';

  @override
  String get autoGen5211 =>
      '支持macOS 10.15 ~ macOS Tahoe 26,适用于仅A卡独显机型.支持的免驱A卡(例如RX560,RX570,RX5500,RX6600),会完美支持VDA硬解.对于Intel 11代及以上,通常使用此机型,CPU睿频不正常,需额外Kext补丁.可以去【可选Kexts驱动】->【CPU相关】->[CPU变频驱动,主要提供11代及以上平台 MacPro7,1变频支持]勾选此项.';

  @override
  String get autoGen5212 => '未配置macOS兼容范围';

  @override
  String get autoGen5213 => 'device-id 必须是4个字符';

  @override
  String get autoGen5214 => '启用核显帧缓冲（Framebuffer）补丁总开关';

  @override
  String get autoGen5215 => '修改显存至1536M(1.5G显存,苹果官方默认值,适用于3代~10代英特尔核显平台)';

  @override
  String get autoGen5216 => '修改显存至2048M(2G显存,工具默认值,适用于3代~10代英特尔核显平台)';

  @override
  String get autoGen5217 => '修改显存至3072M(3G显存,适用于3代~10代英特尔核显平台)';

  @override
  String get autoGen5218 => '修改显存至4095M(4G显存,适用于3代~10代英特尔核显平台)';

  @override
  String get autoGen5219 =>
      '修复4代Haswell平台1080P高分屏花屏问题（比如高分屏花屏可能就是这个值不够大,这个补丁是Haswell核显专用补丁.建议1080P及以下屏幕使用此配置）';

  @override
  String get autoGen5220 =>
      '修复4代Haswell平台2K,4K等高分屏花屏问题（比如高分屏花屏可能就是这个值不够大,这个补丁是Haswell核显专用补丁.建议2K,4k屏幕使用此配置）';

  @override
  String get autoGen5221 => 'Ivy Bridge 高分屏候选补丁';

  @override
  String get autoGen5222 => '启用 con0 接口补丁';

  @override
  String get autoGen5223 => '启用 con1 接口补丁';

  @override
  String get autoGen5224 => '启用 con2 接口补丁';

  @override
  String get autoGen5225 => '启用 con3 接口补丁';

  @override
  String get autoGen5226 => 'Ivy Bridge 高分屏候选接口补丁';

  @override
  String get autoGen5227 => 'Sandy Bridge 笔记本高分屏(1600x900及以上分辨率)补丁';

  @override
  String get autoGen5228 => 'Ironlake/Arrandale 笔记本可选补丁';

  @override
  String get autoGen5229 =>
      '修复HDMI 高分屏 60 fps方案 (在一些情况下,Intel 核显可能默认使用 HDMI 1.4 标准.启用该参数,强制启用 HDMI 2.0,以支持更高的分辨率和刷新率,比如支持4K@60HZ)';

  @override
  String get autoGen5230 =>
      '修复HDMI音频输出(通常只需要合适的alcid就行,这个参数某些时候可以修复HDMI音频正确输出问题)';

  @override
  String get autoGen5231 =>
      '禁用数字声音的DP到HDMI转换补丁(当DisplayPort接口通过转换器连接到HDMI接口时,确保HDMI连接的稳定性和可靠性)';

  @override
  String get autoGen5232 =>
      '在所有显示器上强制在线状态,对核显多屏输出有所帮助,某些时候可以避免睡眠唤醒后黑屏或开机需要插拔显示器线才能点亮屏幕等问题(通常适用于8代Coffee Lake及以上核显)';

  @override
  String get autoGen5233 => '提升核显性能(例如:修复核显4K hevc编码,分辨率及fps达不到理想值问题)';

  @override
  String get autoGen5234 => '启用核显完整固件加载,提高核显利用率,提升核显性能.添加此参数可能导致无法进系统，谨慎使用';

  @override
  String get autoGen5235 =>
      '修复第6代 Skylake 核显,第7代 Kaby Lake 核显以及第8代 Coffee Lake核显驱动在尝试点亮外接HDMI高分辨率显示器时造成的死循环问题(具体症状表现为插入 HDMI 线后,笔记本内屏变黑但有背光,系统无响应,并且外屏也无输出)';

  @override
  String get autoGen5236 =>
      '修复10代 Ice Lake 平台上因 Core Display Clock (CDCLK) 频率过低而导致的内核崩溃问题';

  @override
  String get autoGen5237 => '修复10代 Ice Lake 平台上因驱动错误地计算 DVMT 预分配内存大小而导致的内核崩溃问题';

  @override
  String get autoGen5238 => '调整亮度滑块(亮度滑块)设置,使其过度更平滑自然,以提升用户体验';

  @override
  String get autoGen5239 =>
      '修复在7代 Kaby Lake,8代, 9代Coffee Lake 平台上运行 macOS 13.4 或以上版本的笔记本开机持续3分钟暗屏问题';

  @override
  String get autoGen5240 =>
      '修复在7代 Kaby Lake,8代,9代 Coffee Lake平台上运行 macOS 13.3及以下版本版本的笔记本开机持续3分钟暗屏问题';

  @override
  String get autoGen5241 => '修复10代 Ice Lake 平台上笔记本开机持续花屏7到15秒的问题';

  @override
  String get autoGen5242 =>
      '修复10代 Ice Lake 核显HDMI高分辨率显示器在 4K@60Hz、部分 2K/4K 高刷新场景下黑屏、无信号、分辨率无法正确输出的问题(强制启用核显（IGPU）的 “最大像素时钟覆盖（max pixel clock override）)';

  @override
  String get autoGen5243 => '用于修复核显毛刺效果或者闪屏问题(比如核显HD530)';

  @override
  String get autoGen5244 => '禁用独显(通常双显卡笔记本独显无法驱动时,需要屏蔽独显)';

  @override
  String get autoGen5245 =>
      '修复笔记本(例如Dell XPS 15 9570 等高分屏笔记本)高分屏内屏返回错误的最大链路速率值的问题,导致在点亮内屏时直接崩溃的问题(高分屏笔记本建议勾选)';

  @override
  String get autoGen5246 =>
      '向AAPL00接口(笔记本通常是内屏)注入显示器EDID,修复该接口黑屏不显示问题(注意:需要在EDID配置页,先注入显示器EDID!可以在工具“核显配置”->“显示器EDID”来补充填写EDID.B560等500系主板,在修复HDMI输出时,必须注入显示器EDID,否则大概率黑屏.某些时候,对于其他Intel平台可能会修复核显花屏,紫屏或黑屏问题)';

  @override
  String get autoGen5247 =>
      '向AAPL01接口注入显示器EDID,修复该接口黑屏不显示问题(注意:需要在EDID配置页,先注入显示器EDID!可以在工具“核显配置”->“显示器EDID”来补充填写EDID.B560等500系主板,在修复HDMI输出时,必须注入显示器EDID,否则大概率黑屏.某些时候,对于其他Intel平台可能会修复核显花屏,紫屏或黑屏问题)';

  @override
  String get autoGen5248 =>
      '向AAPL02接口注入显示器EDID,修复该接口黑屏不显示问题(注意:需要在EDID配置页,先注入显示器EDID!可以在工具“核显配置”->“显示器EDID”来补充填写EDID.B560等500系主板,在修复HDMI输出时,必须注入显示器EDID,否则大概率黑屏.某些时候,对于其他Intel平台可能会修复核显花屏,紫屏或黑屏问题)';

  @override
  String get autoGen5249 =>
      '启用LSPCON支持,核显 DisplayPort 转 HDMI 2.0 输出(需要搭配0~3号端口LSPCON信号转换器,适用于6代 Skylake ~ 10代 Comet Lake, Ice Lake英特尔平台)';

  @override
  String get autoGen5250 => '0号端口LSPCON 信号转换器(需要启用LSPCON支持)';

  @override
  String get autoGen5251 => '1号端口LSPCON 信号转换器(需要启用LSPCON支持)';

  @override
  String get autoGen5252 => '2号端口LSPCON 信号转换器(需要启用LSPCON支持)';

  @override
  String get autoGen5253 => '3号端口LSPCON 信号转换器(需要启用LSPCON支持)';

  @override
  String get autoGen5254 =>
      '修改framebuffer memory至9M(framebuffer内存大小,会影响高分屏,通常和framebuffer-stolenmem搭配使用)';

  @override
  String get autoGen5255 =>
      '修改stolen memory至19M(适用于1080P屏幕,工具默认值,可以不用勾选.如果BIOS中有DVMT参数,建议修改至64M。BIOS如果更改了DVMT参数,可以去掉此参数)';

  @override
  String get autoGen5256 =>
      '修改stolen memory至64M(适用于2k或4k屏幕,如果BIOS中有DVMT参数,建议修改至64M或以上。BIOS如果更改了DVMT参数,可以去掉此参数)';

  @override
  String get autoGen5257 =>
      '修改stolen memory至128M(适用于4k屏幕,如果BIOS中有DVMT参数,,高分屏建议修改至128M或256M或以上。BIOS如果更改了DVMT参数,可以去掉此参数)';

  @override
  String get autoGen5258 => '启用con0 HDMI端口(需要搭配0号HDMI接口)';

  @override
  String get autoGen5259 => '0号HDMI接口,用于修复6~10代HDMI黑屏问题(需要启用con0 HDMI端口)';

  @override
  String get autoGen5260 => '启用con1 HDMI端口(需要搭配1号HDMI接口)';

  @override
  String get autoGen5261 => '1号HDMI接口,用于修复6~10代HDMI黑屏问题(需要启用con1 HDMI端口)';

  @override
  String get autoGen5262 => '启用con2 HDMI端口(需要搭配2号HDMI接口)';

  @override
  String get autoGen5263 => '2号HDMI接口,用于修复6~10代HDMI黑屏问题(需要启用con2 HDMI端口)';

  @override
  String get autoGen5264 => '显存/DVMT 参数';

  @override
  String get autoGen5265 => '4代 Haswell 专用参数';

  @override
  String get autoGen5266 => '3代 Ivy Bridge 高分屏候选补丁';

  @override
  String get autoGen5267 => '2代 Sandy Bridge 高分屏候选补丁';

  @override
  String get autoGen5268 => '1代 Arrandale 笔记本候选补丁';

  @override
  String get autoGen5269 => 'HDMI/接口修复';

  @override
  String get autoGen5270 => '10代 Ice Lake 修复';

  @override
  String get autoGen5271 => '通用修复';

  @override
  String get autoGen5272 => 'Ivy Bridge 笔记本高分屏(1600x900及以上分辨率)补丁';

  @override
  String get autoGen5273 => '启用 con0 接口HDMI类型修正补丁,用于修复6~10代HDMI黑屏,紫屏,音频问题';

  @override
  String get autoGen5274 => '启用 con1 接口HDMI类型修正补丁,用于修复6~10代HDMI黑屏,紫屏,音频问题';

  @override
  String get autoGen5275 => '启用 con2 接口HDMI类型修正补丁,用于修复6~10代HDMI黑屏,紫屏,音频问题';

  @override
  String get autoGen5276 => 'alc_codec.json 格式错误：根节点必须是 Map<String, dynamic>';

  @override
  String get autoGen5277 => '开启-v跑码(卡代码时方便定位发现错误,适用于调试引导阶段)';

  @override
  String get autoGen5278 =>
      '便于mac系统在发生内核崩溃时打印更多符号信息,有助于排查问题.此参数通常搭配debug=0x100使用(首次调试引导时,强烈建议勾选)';

  @override
  String get autoGen5279 => '防止在内核崩溃时自动重启,便于查看Panic崩溃日志(首次调试引导时,强烈建议勾选)';

  @override
  String get autoGen5280 => '禁用看门狗功能,防止误触发Panic崩溃重启(适用于调试引导时)';

  @override
  String get autoGen5281 =>
      '禁用内核地址空间随机化（KASLR）,保证内核和 kext（内核扩展）加载在同一套固定内存映射,避免因随机slide值导致的内存冲突早期启动内核崩溃问题(适用于调试引导时)';

  @override
  String get autoGen5282 =>
      '跳过首次启动macOS过程中机型检查,避免因SMBIOS过低或过高出现禁止符号,确保可以正常引导系统(注意此参数不能跳过安装时的机型检查,安装时会出现类似\"不支持macOS\",此时可以更改更高或者更低的SMBIOS来支持新或旧系统)';

  @override
  String get autoGen5283 =>
      '禁用AMFI,相对比较新的显卡(比如HD4000及以上,GT710等开普勒核心以上)或者WiFi打驱动时,此参数适用.注意和amfi_get_out_of_my_way=0x1参数不要同时使用!(禁用SIP才生效,开启SIP后自动移除该参数)';

  @override
  String get autoGen5284 =>
      '确保AMFIPass.kext在最新macOS Tahoe 26系统中能正常启用并激活功能,以便继续绕过AMFI(禁用AMFI)安全检查。(注意:1.此参数与禁用AMFI参数不可同时使用,并且此参数需要搭配AMFIPass.kext使用 2.此参数通常在最新系统中才可能用到,非必要不要添加)';

  @override
  String get autoGen5285 =>
      '禁用AMFI,老平台老旧显卡(比如GT240)或者WiFi打驱动时,此参数适用.注意和amfi=0x80参数不要同时使用!(禁用SIP才生效,开启SIP后自动移除该参数)';

  @override
  String get autoGen5286 =>
      '修复禁用AMFI后部分应用(例如:百度网盘)闪退问题(禁用SIP才生效,开启SIP后自动移除该参数)';

  @override
  String get autoGen5287 =>
      '修复在最新系统(主要是Beta版)可能出现的问题(系统驱动异常,比如:声卡,蓝牙,CPU频率等突然异常,尝鲜最新Beta版本系统时强烈建议勾选)';

  @override
  String get autoGen5288 =>
      '仅启用1个CPU核心（适用于X58,X79,X99,X299等多核心服务器CPU内核崩溃、早期安装调试阶段）';

  @override
  String get autoGen5289 =>
      '关闭 VT-d（禁用 IOMMU,BIOS没有关闭VT-d时,可以勾选）, 解决某些主板启动或者进系统后卡死问题';

  @override
  String get autoGen5290 =>
      '禁用Apple Graphics Firmware固件加载,避免启动过程中因固件加载失败或重试循环而卡住(仅适用于Intel核显)';

  @override
  String get autoGen5291 => '禁用Intel核显(核显无法驱动，也不支持加速硬解时，建议勾选)';

  @override
  String get autoGen5292 => '禁用独显(通常intel双显卡笔记本独立显卡【常见于N卡】无法驱动时,建议勾选)';

  @override
  String get autoGen5293 => '禁用 NVIDIA 驱动（仅适用于调试不兼容N卡时）';

  @override
  String get autoGen5294 =>
      '禁用Intel 核显加速(例如:使用OCLP 打完核显补丁无法正常启动时,可以勾选,无加速,仅调试时用)';

  @override
  String get autoGen5295 => '修复提升Intel核显性能(例如:修复核显4K hevc编码,分辨率及fps达不到理想值问题)';

  @override
  String get autoGen5296 =>
      '修复Intel核显最大链路速率值的问题,导致在点亮屏幕时直接崩溃的问题(（尤其是 Skylake、Kaby Lake、Coffee Lake、Comet Lake上,黑屏无信号,未达4K预期分辨率等）';

  @override
  String get autoGen5297 =>
      '修复核显分辨率问题,强制启用核显（IGPU）的 “最大像素时钟覆盖（max pixel clock override）”，解除 macOS 默认的分辨率,刷新率等限制';

  @override
  String get autoGen5298 =>
      '修复部分笔记本核显HDMI输出4K黑屏问题(通常适用于笔记本,例如ThinkPad P71/7700HQ/HD630/4K 卡死在 `gIOScreenLockState3`)';

  @override
  String get autoGen5299 =>
      '修复10代Ice Lake平台上因Core Display Clock (CDCLK)频率过低而导致的内核崩溃问题';

  @override
  String get autoGen5300 => '修复10代Ice Lake平台上因驱动错误地计算DVMT预分配内存大小而导致的内核崩溃问题';

  @override
  String get autoGen5301 => '修复10代Ice Lake平台上笔记本开机持续花屏7到15秒的问题';

  @override
  String get autoGen5302 =>
      '禁用 iGPU（核显）在启动过程中加载遥测模块,某些笔记本（尤其是 Chromebook）在加载该模块时可能会导致系统在启动阶段卡死或冻结(适用于Intel Skylake 6代及以上笔记本)';

  @override
  String get autoGen5303 =>
      '修复macOS Ventura 13.4以下,7代KBL、8&9代CFL笔记本平台上的背光寄存器,修复黑屏或持续3分钟暗屏问题(适用于笔记本)';

  @override
  String get autoGen5304 =>
      '修复macOS Ventura 13.4及以上,7代KBL、8&9代CFL笔记本平台上的背光寄存器,修复黑屏或持续3分钟暗屏问题(适用于笔记本)';

  @override
  String get autoGen5305 => '调整亮度滑块(亮度滑块)设置,使其过度更平滑自然,以提升用户体验(适用于笔记本)';

  @override
  String get autoGen5306 =>
      '在第二启动阶段绘制苹果标志，而不是帧缓冲区复制.当连接外部显示器时，平滑地从进度条过渡到登录桌面,某些时候可以修复进系统黑屏问题,同时对插拔显示器线才能亮屏有所帮助';

  @override
  String get autoGen5307 =>
      '修复X58,X79,X99,AMD等平台卡ACPI Configuration begin问题(通常Above 4G Decoding没有打开时,注意和npci=0x3000二选一,常见于X58,X79,X99等服务器以及AMD平台)';

  @override
  String get autoGen5308 =>
      '修复X58,X79,X99,AMD等平台卡ACPI Configuration begin问题(通常Above 4G Decoding没有打开时,注意和npci=0x2000二选一,常见于X58,X79,X99等服务器以及AMD平台)';

  @override
  String get autoGen5309 =>
      '修复AMD GPU上的硬件数字版权管理(DRM)支持问题(使得在支持的AMD GPU上体验受到DRM保护的数字内容,如流媒体服务提供的高质量视频)';

  @override
  String get autoGen5310 =>
      '禁用ATI,AMD显卡加速(例如:使用OCLP 打完显卡补丁无法正常启动时,可以勾选,无加速,仅调试时用)';

  @override
  String get autoGen5311 =>
      '修复HD7750、HD7850(主要核心为GCN系列HD77XX、HD78XX、HD79XX)等老A卡花屏、黄屏等显示异常问题';

  @override
  String get autoGen5312 =>
      '修复部分显卡可能导致的黑屏或显示异常问题,完全忽略AppleGraphicsDevicePolicy.kext对图形卡的限制或设置.在不确定具体限制问题时,避免因不兼容的硬件配置(如特定board-id)导致的显示问题或黑屏现象.注意此参数,搭配WhateverGreen.kext使用才生效.对于原生免驱A卡,可以去掉WhateverGreen.kext驱动,那么此参数无需再添加';

  @override
  String get autoGen5313 =>
      '修复AMD Navi核心RX5XXX,RX6XXX系列显卡启动时黑屏问题(例如:RX5500,RX5600,RX5700,RX6600,RX6800,RX6900等),将board-id替换为board-ix,绕过AppleGraphicsDevicePolicy的某些限制.注意:1. 搭配WhateverGreen.kext使用才生效. 2. BIOS SuperIO设置中关闭Serial/COM Port.对于原生免驱A卡,可以去掉WhateverGreen.kext驱动,那么此参数无需再添加.';

  @override
  String get autoGen5314 =>
      '修复部分RX470,RX570等显卡睡眠唤醒后黑屏问题,禁用AppleGraphicsDevicePolicy中的board-id检查,修复部分显卡可能导致的黑屏或显示异常问题.注意此参数,搭配WhateverGreen.kext使用才生效.对于原生免驱A卡,可以去掉WhateverGreen.kext驱动,那么此参数无需再添加';

  @override
  String get autoGen5315 =>
      '修复Intel 3代及以下平台AMD RX5XX(例如:RX560,RX570,RX580)系列,AMD RX5XXX,RX6XXX(例如:RX5500,RX6600)系列免驱显卡在Ventura及以上系统黑屏问题(注意:进入系统后需要使用OCLP打显卡补丁!打完显卡补丁后,去掉该引导参数或者使用EFI目录下备用config-after-post改名替换config,重启即可驱动显卡!)';

  @override
  String get autoGen5316 => '修复官方不支持的AMD显卡(例如: RX550 Lexa核心)使其支持VDA硬件视频编码';

  @override
  String get autoGen5317 =>
      '修复Fermi,Maxwell,Pascal架构老N卡(例如:GT610,GTX750,GTX960,GTX1050)BigSur 11以上系统显卡驱动问题(注意:进入系统后需要使用OCLP打显卡补丁!!!开普勒核心不需要此参数！！！)';

  @override
  String get autoGen5318 => '修复部分博通无线网卡速率较慢问题(更改博通WiFi国家码为香港,也可以更改路由器信道改善)';

  @override
  String get autoGen5319 => '修复卡ramrod代码,SMC模拟器损坏问题';

  @override
  String get autoGen5320 =>
      '修复禁用SIP(系统完整性保护)或SecureBootModel(安全模型)后macOS系统OTA更新问题,以及修复自定义CPU名称显示问题';

  @override
  String get autoGen5321 => '避免设备进入睡眠模式后重启的问题,便于获取内核崩溃日志,排查睡眠问题';

  @override
  String get autoGen5322 =>
      '改善Intel 12代及之后大小核 CPU 的拓扑识别与调度，性能提升不保证，建议实测后启用(注意需要搭配CpuTopologyRebuild.kext使用才生效)';

  @override
  String get autoGen5323 => '完全禁用Darkwake模式,让系统进入传统睡眠模式,主要用于修复唤醒黑屏,自动唤醒等问题';

  @override
  String get autoGen5324 => '禁用iGPU RC6渲染待机,修复睡眠时由于核显RC6引发NVMe内核恐慌问题';

  @override
  String get autoGen5325 => '启用AMD Radeon RX 5000 系列显卡的PWM背光控制';

  @override
  String get autoGen5326 => '修复校正老A卡(290X、370等)DVI接口输出显示';

  @override
  String get autoGen5327 =>
      '强制I2C类型触控板工作在轮询模式（polling mode）,而不是中断（interrupt-driven mode）驱动模式(中断模式通常需要定制SSDT,相对复杂.某些时候可以修复I2C触控板无法使用的问题(需要搭配VoodooI2C驱动使用)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio(一些主板和固件在处理MMIO区域时可能会出现冲突或不兼容的问题。启用该选项可以帮助解决这些冲突,提高系统的兼容性和稳定性.此选项通常结合OpenCore Debug版本来定制MMIO,以解决部分主板(例如:部分X58,X79,X99,以及AMD 7000系列处理器主板)因内存问题导致的卡EB)';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector(不支持内存属性表（MAT）的固件上，特别是OEM固件上建议勾选.开启后会在执行期间删除CR0寄存器中的写入保护,保证NVRAM正常写入.通常适用于7代以前平台)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices(保护UEFI服务不被固件覆盖,通常用于修复DevirtualiseMmio等导致卡EB问题。Z390,Z490主板,以及10代IceLake建议勾选)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap(建立连续性虚拟内存供OC使用，并映射到分散的物理内存中.注意:10代Comet Lake 华硕(ASUS),技嘉(Gigabyte),华擎(AsRock)主板不建议勾选.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap(支持内存属性表（MAT）的固件上,建议勾选.通常与SyncRuntimePermissions搭配使用。此项与EnableWriteUnprotector可能存在冲突,建议两者二选一。通常适用于8代以后平台,部分老平台也适用)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions(修正硬件在注入内存时无法注入权限的问题。一般此类问题存在2018年后的主板。如果你因为此选项无法进入Windows,请开启它。此项通常与RebuildAppleMemoryMap搭配使用)';

  @override
  String get autoGen5334 => '2代CPU - 3代主板混合';

  @override
  String get autoGen5335 => '3代CPU - 2代主板混合';

  @override
  String get autoGen5336 => '暂不驱动核显完成安装(可以避免核显缓冲帧问题导致黑屏,内核崩溃问题)';

  @override
  String get autoGen5337 => '仿冒设备ID';

  @override
  String get autoGen5338 => '核显仅用于加速、计算任务，不作为输出显示(独立显卡输出显示)';

  @override
  String get autoGen5339 => 'HD3000、HD P3000等核显';

  @override
  String get autoGen5340 => 'HD4000、HD P4000等核显';

  @override
  String get autoGen5341 => 'HD4400、HD4600、HD P4600等核显';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300等核显';

  @override
  String get autoGen5343 => 'HD5600核显(P6200,P6300可仿冒此设备)';

  @override
  String get autoGen5344 => 'HD6000,Iris 6100等核显';

  @override
  String get autoGen5345 => 'HD520,HD530等仿冒HD620核显(适用于Ventura以上系统)';

  @override
  String get autoGen5346 => 'HD520,HD530等仿冒HD620核显(适用于Ventura以上系统,备选方案)';

  @override
  String get autoGen5347 => 'HD530、HD P530等500系列核显(适用于Monterey及以下系统)';

  @override
  String get autoGen5348 => 'HD 630、HD P630等核显';

  @override
  String get autoGen5349 => 'HD 630、P630等仿冒UHD630核显(方案一)';

  @override
  String get autoGen5350 => 'HD 630、P630等仿冒UHD630核显(方案二)';

  @override
  String get autoGen5351 => 'UHD 630核显显示输出方案一';

  @override
  String get autoGen5352 => 'UHD 630核显方显示输出案二';

  @override
  String get autoGen5353 => 'Intel HD Graphics(比如:i3 380M,i5 480M自带核显)';

  @override
  String get autoGen5354 => 'HD3000核显输出显示,适用于1366x768及以下分辨率)';

  @override
  String get autoGen5355 => '启用支持1600X900以上分辨率';

  @override
  String get autoGen5356 => 'HD3000核显输出显示,适用于1600x900及以上分辨率)';

  @override
  String get autoGen5357 => 'HD4000核显驱动方案一,适用于1366x768及以下分辨率,LVDS链接方式';

  @override
  String get autoGen5358 =>
      'HD4000核显驱动方案二,适用于1600x900及以上分辨率LVDS链接方式,多屏输出可能需要更多补丁配置)';

  @override
  String get autoGen5359 => 'HD4000核显驱动方案三,适用于以eDP连接方式的显示器)';

  @override
  String get autoGen5360 => 'HD4200、HD4400、HD4600核显';

  @override
  String get autoGen5361 => 'HD5000、HD5100、HD5200核显';

  @override
  String get autoGen5362 => 'HD5500核显';

  @override
  String get autoGen5363 => 'HD5600核显';

  @override
  String get autoGen5364 => 'HD6000核显';

  @override
  String get autoGen5365 => 'HD520,HD530等仿冒HD620核显(用于Ventura以上系统)';

  @override
  String get autoGen5366 =>
      'HD 515、HD 520、HD 530、 HD 540、 HD 550、P530核显(适用于Monterey及以下系统)';

  @override
  String get autoGen5367 => 'HD 515核显备选方案';

  @override
  String get autoGen5368 => 'HD 510核显';

  @override
  String get autoGen5369 => 'HD 615、 HD 620、HD 630、 HD 640、HD 650核显';

  @override
  String get autoGen5370 => 'HD/UHD 620核显备选方案';

  @override
  String get autoGen5371 => 'UHD 617、UHD 620核显';

  @override
  String get autoGen5372 => 'UHD 630核显';

  @override
  String get autoGen5373 => 'UHD 620核显';

  @override
  String get autoGen5374 => 'Intel lris Plus 655核显';

  @override
  String get autoGen5375 => 'G4/G7系列核显';

  @override
  String get autoGen5376 => 'HD3000核显输出显示';

  @override
  String get autoGen5377 => 'HD4000核显输出显示';

  @override
  String get autoGen5378 =>
      'HD4200,HD4400,HD4600,HD P4600等核显(建议在核显高级配置中勾选4代核显专用补丁,已修补可能出现的小问题)';

  @override
  String get autoGen5379 => 'HD 515核显';

  @override
  String get autoGen5380 => 'HD 520/530核显';

  @override
  String get autoGen5381 => 'HD 540/550核显';

  @override
  String get autoGen5382 => 'HD 580核显';

  @override
  String get autoGen5383 => 'HD P530核显(比如e3 1245v5自带核显)';

  @override
  String get autoGen5384 => 'HD 615核显';

  @override
  String get autoGen5385 => 'HD 630,HD P630核显';

  @override
  String get autoGen5386 => 'HD 640/650核显';

  @override
  String get autoGen5387 => 'HD/UHD 620核显';

  @override
  String get autoGen5388 => 'UHD 620/630核显';

  @override
  String get autoGen5389 => 'UHD 655核显';

  @override
  String get autoGen5390 =>
      '将GPRW重命名为XPRW,修复即时唤醒问题(注意:可能导致USB键盘无法唤醒设备,可以通过电源键唤醒)';

  @override
  String get autoGen5391 =>
      '将UPRW重命名为XPRW,修复即时唤醒问题(注意:可能导致USB键盘无法唤醒设备,可以通过电源键唤醒)';

  @override
  String get autoGen5392 => '启用 GPI0 设备以支持 I2C 触控板';

  @override
  String get autoGen5393 =>
      '一个macOS内核扩展必备驱动,主要为macOS提供扩展性和兼容性,这使得其他开发者可以编写用于扩展macOS的内核扩展';

  @override
  String get autoGen5394 =>
      '例如 WhateverGreen、AppleALC、VirtualSMC等可以通过Lilu.kext实现对macOS的各种修改和增强功能,例如支持不同的显卡、声卡、虚拟机管理等';

  @override
  String get autoGen5395 =>
      'Lilu.kext通常是macOS内核扩展的第一个加载,因为其他插件可能需要依赖它的功能。这确保了插件在macOS启动时能够正确加载';

  @override
  String get autoGen5396 => '必备基础驱动';

  @override
  String get autoGen5397 =>
      '在真正的苹果硬件上,SMC负责管理硬件传感器、风扇控制、电源管理、温度传感器、电池状态等系统管理功能。VirtualSMC在非苹果硬件上提供了这些功能,以确保macOS可以在这些系统上正常运行';

  @override
  String get autoGen5398 =>
      '通常与其他内核扩展一起使用,例如 Lilu.kext、WhateverGreen等,以在非苹果硬件上创建一个接近真实Mac的环境';

  @override
  String get autoGen5399 => '缺少该驱动,不能正常运行macOS';

  @override
  String get autoGen5400 =>
      '主要提供GPU图形驱动支持,绝大多数强烈建议勾选(MacPro7,1机型且RX460,RX560等以上AMD独显用户可以去掉勾选),通常与NootRX,NootedRed驱动存在冲突，安装阶段不要同时选择';

  @override
  String get autoGen5401 =>
      '支持多种图形卡，包括 NVIDIA、AMD 和 Intel 图形卡。该扩展可以修复和配置正确的Framebuffer,以使显示器和分辨率工作正常';

  @override
  String get autoGen5402 => '提供了对 HDMI 和 DisplayPort(DP)连接的支持,以确保音频和视频输出正常工作';

  @override
  String get autoGen5403 => '使用AppleALC仿冒内建声卡(相对较完美,优先选择)';

  @override
  String get autoGen5404 =>
      '使用VoodooHDA万能声卡(引导中加载,仅支持macOS BigSur 11.2.3以下,更高macOS版本需要将此驱动打入系统内核扩展才能生效,据作者测试,最高支持macOS Tahoe 26.x正式版)';

  @override
  String get autoGen5405 => '老平台或AMD平台USB 3.0控制器兼容性修复';

  @override
  String get autoGen5406 =>
      '修复Intel 3代之前老平台CPU电源管理导致的重启问题(表现为出现AppleIntelCPUPowerManagement内核崩溃日志,或卡开机Logo,或刚进入系统就重启等问题)';

  @override
  String get autoGen5407 =>
      '修复AMD Ryzen系列CPU电源管理(仅适用于AMD Ryzen系列,如果出现电源管理导致的重启问题,可以考虑去掉勾选)';

  @override
  String get autoGen5408 => '电池驱动方案一(适用于3代及更老平台的笔记本)';

  @override
  String get autoGen5409 => '电池驱动方案二(适用于3代及更新平台的笔记本)';

  @override
  String get autoGen5410 => '环境光传感器(自动屏幕亮度),如果没有环境光传感器,请勿使用,否则可能会导致问题';

  @override
  String get autoGen5411 => '华硕(Asus)笔记本风扇控制、电源管理和其他系统传感器优化等,非华硕不建议使用';

  @override
  String get autoGen5412 => '联想(Lenovo)笔记本风扇控制、电源管理和其他系统传感器优化等,非联想机器不建议使用';

  @override
  String get autoGen5413 => '戴尔(Dell)笔记本专用传感器,对风扇进行更准确的监视和控制,非戴尔机器不建议使用';

  @override
  String get autoGen5414 =>
      '允许将AMD处理器的传感器信息(如温度、功耗、频率等)暴露给 macOS 的监控工具.此驱动支持 AMD Ryzen 系列处理器和部分 AMD FX 系列处理器,其他AMD处理器可能会导致意外问题,同时Sequoia 15及以上系统部分平台可能存在兼容性问题,谨慎选择.';

  @override
  String get autoGen5415 =>
      '用于支持RX6700、RX6750XT、RX6750GRE等官方不支持的RX6XXX系列独显,与WhateverGreen驱动存在冲突，安装阶段不要同时选择';

  @override
  String get autoGen5416 =>
      '支持Navi 21(Big Sur及以上)、Navi 22/23(Monterey及以上),也支持RX6650、RX6950等显卡';

  @override
  String get autoGen5417 => '首次安装macOS时添加此驱动可能导致无法进入系统,建议完成安装后再添加';

  @override
  String get autoGen5418 =>
      '修复AMD Ryzen 2000~5000系列核显Edge,Chrome浏览器未关闭硬件加速导致的缓慢问题(仅适用于AMD Ryzen系列,主要降低使用OpenGL渲染,正常使用QQ,Chrome浏览器.使用该驱动可能会导致其他应用无法正常使用，自行取舍)';

  @override
  String get autoGen5419 => '电池读数修复,修复部分电池显示问题';

  @override
  String get autoGen5420 => '提升非苹果NVMe固态硬盘兼容性,减少闲置能耗';

  @override
  String get autoGen5421 => '不兼容的三星等黑名单NVMe磁盘并不能有效修复超时崩溃问题';

  @override
  String get autoGen5422 => '兼容性良好的NVMe固态硬盘使用此驱动可能导致内核崩溃,多数时候谨慎使用';

  @override
  String get autoGen5423 =>
      '增强绕过或禁用AMFI的能力.注意:添加该驱动可能会导致某些应用无法打开或闪退,此时可以尝试去掉该驱动,仅使用禁用AMFI启动参数(如amfi=0x80)';

  @override
  String get autoGen5424 => '修复NVMe固态硬盘被识别成外置磁盘的问题';

  @override
  String get autoGen5425 => '解锁不受支持Mac上的通用控制、随航等功能';

  @override
  String get autoGen5426 => '修复常见休眠、睡眠相关问题';

  @override
  String get autoGen5427 => '允许macOS通过USB连接使用Android设备的网络共享功能';

  @override
  String get autoGen5428 => 'CPU变频驱动,主要提供11代及以上平台 MacPro7,1变频支持';

  @override
  String get autoGen5429 => 'CPUFriend配套数据驱动,提供具体机型的CPU变频数据';

  @override
  String get autoGen5430 => '优化Intel 12代及之后CPU大小核心配置';

  @override
  String get autoGen5431 => '可以提高单核性能,但可能导致多核性能有所下降,仅适用于12代及以上平台';

  @override
  String get autoGen5432 => 'CPU TSC同步方案一,通常优先选择';

  @override
  String get autoGen5433 => '常用于多核心X79、X99、X299以及AMD等平台';

  @override
  String get autoGen5434 => '用于修复操作卡顿、卡开机Logo、音视频同步异常、睡眠唤醒失败等问题';

  @override
  String get autoGen5435 => 'CPU TSC同步方案二,通常用于AMD Ryzen以及部分Intel平台';

  @override
  String get autoGen5436 => '用于修复操作卡顿、偶发崩溃、音视频同步异常、睡眠唤醒失败等问题';

  @override
  String get autoGen5437 =>
      '修复AMD Ryzen平台CPU多核心时钟同步问题(仅适用于AMD Ryzen系列,用于修复操作卡顿,卡开机Logo等问题,加入此驱动可能导致意外问题，谨慎选择)';

  @override
  String get autoGen5438 => 'CPU TSC同步方案三,通常用于较老Intel平台和较老macOS系统';

  @override
  String get autoGen5439 => '适用于多核心X79、X99、X299等平台,用于修复操作卡顿、卡开机Logo等问题';

  @override
  String get autoGen5440 => '修复部分英特尔核显HDMI音频问题';

  @override
  String get autoGen5441 => '修复无法登录Apple ID和iCloud的问题,通常用于没有本地有线网卡的笔记本';

  @override
  String get autoGen5442 =>
      '修复新平台macOS AppleRTC与PC BIOS之间的冲突,例如RTC导致卡死、突然重启或休眠秒醒';

  @override
  String get autoGen5443 => 'PS接口类型键盘鼠标驱动(台式机主板PS圆口键鼠驱动)';

  @override
  String get autoGen5444 => 'PS接口类型键盘驱动(台式机主板PS圆口键盘驱动)';

  @override
  String get autoGen5445 => 'PS接口类型鼠标驱动(台式机主板PS圆口鼠标驱动)';

  @override
  String get autoGen5446 => 'Microsoft Surface 专用键盘触摸板驱动';

  @override
  String get autoGen5447 => '亮度快捷键修复';

  @override
  String get autoGen5448 => '优化AMD Radeon显卡性能,但某些场景可能导致系统崩溃或无法启动,谨慎勾选';

  @override
  String get autoGen5449 => '允许RadeonGadget.app读取AMD显卡GPU温度等信息';

  @override
  String get autoGen5450 => '将AMD GPU温度等信息导出到VirtualSMC,供监控工具读取';

  @override
  String get autoGen5451 => '修复AMD FM1/FM2/AM3等老平台USB控制器兼容性问题';

  @override
  String get autoGen5452 => '通用USB注入方案,未定制USB时的默认选择';

  @override
  String get autoGen5453 => 'USBToolBox方案,通常配合定制好的UTBMap.kext使用';

  @override
  String get autoGen5454 =>
      '修复Intel 3代及之后更新平台USB3.0问题(300系列芯片组需要(H370,B360,H310,Z390【10.14及以上系统不需要】,X79,X99,ASRock英特尔主板需要【B460/Z490+除外】)';

  @override
  String get autoGen5455 => '修复AMD FM1、FM2、AM3等老平台EHCI USB2.0兼容性问题';

  @override
  String get autoGen5456 => '修复AMD FM1、FM2、AM3等老平台XHCI USB3.0兼容性问题';

  @override
  String get autoGen5457 => '修复Intel 3代以及更老平台Ventura 13及以上系统CPU电源管理';

  @override
  String get autoGen5458 => 'Realtek系列SD卡读卡器驱动(搭配RealtekCardReaderFriend使用)';

  @override
  String get autoGen5459 => 'RealtekCardReader配套驱动,用于完善Realtek读卡器兼容性';

  @override
  String get autoGen5460 => 'SDHC储存卡设备驱动,支持eMMC和MMC储存卡';

  @override
  String get autoGen5461 => '百兆有线网卡驱动';

  @override
  String get autoGen5462 =>
      '支持RTL8101E、RTL8102E、RTL8103E、RTL8401E、RTL8105E、RTL8402、RTL8106E、 RTL8106EUS、RTL8107E、RTL8139网卡';

  @override
  String get autoGen5463 => '通常用于传统老平台';

  @override
  String get autoGen5464 => '千兆网卡驱动';

  @override
  String get autoGen5465 =>
      '支持Intel 82540 ~ 82547,82578 ~ 82579,82574L,82571 ~ 82574,82583,I217-V等网卡';

  @override
  String get autoGen5466 => '千兆有线网卡驱动';

  @override
  String get autoGen5467 =>
      '支持BCM5722,BCM5754,BCM5754M,BCM5755,BCM5755M,BCM57788,BCM5787,BCM5787M,BCM5906,BCM5906M等网卡';

  @override
  String get autoGen5468 => '支持AR8131, AR8132, AR8151, AR8152等网卡';

  @override
  String get autoGen5469 =>
      '支持Realtek RTL8111 / 8168 B / C / D / E / F / G / H,支持⻢甲卡Killer E2500及以上网卡';

  @override
  String get autoGen5470 => 'RealtekRTL8111新版本驱动可能仅支持10.13.x及以上系统';

  @override
  String get autoGen5471 => '支持AR816x ,AR817x,Killer E220x,Killer E2400等网卡';

  @override
  String get autoGen5472 => '千兆(支持2.5G)有线网卡驱动';

  @override
  String get autoGen5473 =>
      '支持所有符合IGC的设备(i225、i226,i226-V等有线网卡),部分设备的PCI ID可能不在IOPCIMatch列表，自行添加测试';

  @override
  String get autoGen5474 =>
      '相比AppleEthernetE1000驱动程序具有更好的性能及稳定性(i226-V在Monterey系统使用AppleEthernetE1000可能会引起内核恐慌)';

  @override
  String get autoGen5475 =>
      '支持Intel 82575, 82576, 82580, dh89xxcc,i350,i354,i210和 i211网卡';

  @override
  String get autoGen5476 => '可能存在不稳定性问题,建议保持在Big Sur版本,并使用SmallTree';

  @override
  String get autoGen5477 => '通常适用于macOS Monterey 12及以上系统';

  @override
  String get autoGen5478 => '支持Intel 5 Series: 82578LM、82578LC、82578DM、82578DC';

  @override
  String get autoGen5479 => '支持Intel 6 and 7 Series: 82579LM、82579V';

  @override
  String get autoGen5480 =>
      '支持Intel 8 and 9 Series: I217LM、I217V、I218LM、I218V、I218LM2、I218V2、I218LM3';

  @override
  String get autoGen5481 =>
      '支持Intel 100 Series: I219V、I219LM、I219V2、I219LM2、I219LM3';

  @override
  String get autoGen5482 => '支持Intel 200 Series: I219LM、I219V';

  @override
  String get autoGen5483 => '支持Intel 300 Series: I219LM、I219V';

  @override
  String get autoGen5484 =>
      '该驱动由acidanthera维护.OS X 10.6 ~ 10.8 使用IntelSnowMausi';

  @override
  String get autoGen5485 =>
      '该驱动由Laura Müller提供.OS X 10.6 ~ 10.8 使用IntelSnowMausi';

  @override
  String get autoGen5486 => 'RTL8125旧驱动,支持Realtek RTL8125系列以太网卡';

  @override
  String get autoGen5487 => '千兆(支持2.5G,5G)有线网卡驱动';

  @override
  String get autoGen5488 => 'RTL812x新驱动,支持Realtek RTL8125,RTL8126系列以太网卡';

  @override
  String get autoGen5489 =>
      '支持型号:RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A';

  @override
  String get autoGen5490 => '支持Intel i211有线网卡,此型号常见于AMD主板';

  @override
  String get autoGen5491 => '通常适用于macOS Big Sur及以下版本,macOS Monterey可能存在不稳定情况';

  @override
  String get autoGen5492 =>
      '兼容性:OS X 10.9-12（推荐版本v1.0.6）、macOS 10.13-14（推荐版本v1.2.5）、macOS 10.15+（推荐版本v1.3.0）';

  @override
  String get autoGen5493 => '万兆(支持10G)有线网卡驱动';

  @override
  String get autoGen5494 =>
      '支持英特尔X520、X540、X550和82598以太网适配器,不再需要硬件修改(以前Smalltree8259x.kext需要)';

  @override
  String get autoGen5495 => '仅支持macOS 10.13及以上系统';

  @override
  String get autoGen5496 => '在BIOS UEFI设置中建议关闭WoL';

  @override
  String get autoGen5497 => '修复Catalina 10.15及以下系统安装过程中磁盘工具不识别SATA磁盘的问题';

  @override
  String get autoGen5498 => '修复Big Sur 11及以上系统安装过程中磁盘工具不识别SATA磁盘的问题';

  @override
  String get autoGen5499 => '修复AMD平台Adobe全家桶相关兼容性问题';

  @override
  String get autoGen5500 =>
      '支持macOS High Sierra 10.13 ~ macOS Tathoe 26.x(通常搭配HeliPort客户端使用)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (注意:Sequoia 15系统需要使用OCLP Intel专用修改版打补丁方可正常使用！！！)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4及以上';

  @override
  String get autoGen5503 => '主要修复部分蓝牙设备问题(适用部分博通和其他USB蓝牙设备)';

  @override
  String get autoGen5504 => '高通WiFi,支持macOS Big Sur 11.x 及以下版本';

  @override
  String get autoGen5505 => '高通(Atheros)-AR9285';

  @override
  String get autoGen5506 => '高通(Atheros)-AR9380';

  @override
  String get autoGen5507 => '高通(Atheros)-AR9485';

  @override
  String get autoGen5508 => '高通(Atheros)-AR9565';

  @override
  String get autoGen5509 => '高通(Atheros)-AR9463';

  @override
  String get autoGen5510 => '高通(Atheros)-AR9462';

  @override
  String get autoGen5511 => '禁用Touch ID,减少系统资源浪费并提高稳定性';

  @override
  String get autoGen5512 => '通常适用于macOS Big Sur 11以下且带指纹识别的笔记本';

  @override
  String get autoGen5513 => '默认配置TRIM策略(即设置SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1.APFS系统根据macOS的默认TRIM超时时间来执行TRIM操作,适用于大部分支持TRIM的SSD';

  @override
  String get autoGen5515 =>
      '2.在支持 TRIM 的 SSD 上,macOS 自动管理 TRIM 的执行，有助于清理已删除数据块，使 SSD 的写入效率更高，避免了频繁的写入放大，提升写入速度';

  @override
  String get autoGen5516 => '3.TRIM 会定期清理未使用的块,减少 SSD 的磨损,从而延长 SSD 使用寿命';

  @override
  String get autoGen5517 =>
      '4.某些不完全支持 TRIM 的第三方 SSD 在执行 TRIM 时可能会出现延迟，甚至出现卡顿现象，导致开机过程变得非常缓慢';

  @override
  String get autoGen5518 => '完全禁用TRIM功能(即设置SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => '禁用TRIM好处:';

  @override
  String get autoGen5520 =>
      '1.提升开机速度,对于不支持或部分支持TRIM的第三方SSD,macOS在启动时可能会因为尝试TRIM操作导致延迟.禁用TRIM可以消除这一延迟,提高开机速度';

  @override
  String get autoGen5521 => '2.提升兼容性,部分兼容性差的SSD可以减少异常崩溃风险';

  @override
  String get autoGen5522 =>
      '3.延长非TRIM SSD的寿命,在不支持TRIM的SSD上,强行启用TRIM可能反而加速磨损,影响寿命.禁用TRIM 可以延长此类SSD的使用寿命';

  @override
  String get autoGen5523 => '禁用TRIM坏处:';

  @override
  String get autoGen5524 =>
      '1.SSD性能下降,部分SSD没有了TRIM的垃圾回收机制,SSD在删除数据后无法及时清理和标记空闲块,可能会导致写入速度变慢';

  @override
  String get autoGen5525 =>
      '2.磁盘空间管理效率降低,禁用后,SSD的控制器需要更多的时间和资源来进行垃圾回收,可能导致碎片增多、空间管理效率降低';

  @override
  String get autoGen5526 =>
      '3.缩短SSD的寿命,支持TRIM的SSD,禁用TRIM后,SSD无法优化写入过程,使存储块磨损加剧,从而缩短支持TRIM的SSD的寿命.';

  @override
  String get autoGen5527 =>
      '虽然禁用 TRIM 能带来一定的开机速度提升，但对于支持 TRIM 的现代 SSD 来说，建议保持 TRIM 开启，以获得长期的性能和稳定性。这种速度提升通常较小,只有在一些不兼容的 SSD 上才会有明显效果';

  @override
  String get autoGen5528 => 'CPU变频驱动,这里主要提供11至14代 MacPro7,1变频支持';

  @override
  String get autoGen5529 => 'Realtek SD 读卡器及其配套驱动';

  @override
  String get autoGen5530 =>
      '适用于3代及以下老平台,基于PS/2总线协议连接的输入设备,如键盘、鼠标、触摸板等.能实现一定程度的多点触控功能，但支持有限。';

  @override
  String get autoGen5531 =>
      '适用于3代及以上平台,基于PS/2总线协议连接的输入设备,如键盘、鼠标、触摸板等.通过子驱动提供对 PS/2 触摸板的支持，并且能实现一定程度的多点触控功能，但支持有限。';

  @override
  String get autoGen5532 =>
      'PS2键盘,适用于基于I2C总线协议连接的触摸板、触摸屏、传感器和其他输入设备。提供多点触控手势支持，模拟 macOS 原生的触控体验。';

  @override
  String get autoGen5533 =>
      'PS2键盘,适用于基于RMI4协议总线协议连接的Synaptics触摸板。专注于更好地支持 Synaptics 设备，提供类似 macOS 原生触摸板的多点触控和手势功能。';

  @override
  String get autoGen5534 =>
      'PS2键盘,适用于基于I2C总线的触摸设备和使用RMI4协议的Synaptics触摸板。RMII2C结合 VoodooI2C 和 VoodooRMI 的优势。';

  @override
  String get autoGen5535 => '基于PS/2总线协议连接的圆口键盘、鼠标驱动';

  @override
  String get autoGen5536 => 'Microsoft Surface 专用键盘、触摸板、触摸屏驱动组合。';

  @override
  String get autoGen5537 => '博通BCM94360免驱系列';

  @override
  String get autoGen5538 =>
      'Apple AirPort和Fenvi免驱卡,Ventura及以下免驱,补丁支持Sonoma 14及Sequoia 15! 注意:Sonoma 14及以上系统需要使用OCLP打补丁方可正常使用！！！';

  @override
  String get autoGen5539 => '博通BCM943XX非免驱系列';

  @override
  String get autoGen5540 =>
      'Apple AirPort和Fenvi以外的卡,Catalina及以下免驱,补丁支持Sonoma 14及Sequoia 15! 注意:Sonoma 14及以上系统需要使用OCLP打补丁方可正常使用！！！';

  @override
  String get autoGen5541 => '老款博通BCM4331';

  @override
  String get autoGen5542 => '注意Monterey 12以上系统需要使用OCLP补丁后方可正常使用！！！';

  @override
  String get autoGen5543 => '老款博通BCM43224';

  @override
  String get autoGen5544 => '高通(Atheros) WiFi 型号驱动';

  @override
  String get autoGen5545 => '高通 WiFi 手动选择项';

  @override
  String get autoGen5546 => '高通(Atheros) WiFi Big Sur 及以下依赖';

  @override
  String get autoGen5547 => 'macOS Big Sur 11 及以下系统使用 HS80211Family 配合具体型号驱动';

  @override
  String get autoGen5548 => '高通(Atheros) WiFi Monterey 及以上依赖';

  @override
  String get autoGen5549 => 'macOS Monterey 12 及以上系统使用 IO80211ElCap 组合';

  @override
  String get autoGen5550 => '修复Surface Pro 7 和 Book 3系列,“系统偏好设置”中电池识别问题';

  @override
  String get autoGen5551 => '修复部分惠普品牌电脑实时时钟,启动时出现POST错误问题';

  @override
  String get autoGen5552 => '禁用 RTC 唤醒计划,修复睡眠后自动唤醒问题';

  @override
  String get autoGen5553 => '0代-Penryn-775平台';

  @override
  String get autoGen5554 => '1代-Lynnfield-1156平台';

  @override
  String get autoGen5555 => '2代-Sandy Bridge-1155平台';

  @override
  String get autoGen5556 => '3代-Ivy Bridge-1155平台';

  @override
  String get autoGen5557 => '4代-Haswell-1150平台';

  @override
  String get autoGen5558 => '5代-Broadwell-1150平台';

  @override
  String get autoGen5559 => '6代-Skylake-1151平台';

  @override
  String get autoGen5560 => '7代-Kaby Lake-1151平台';

  @override
  String get autoGen5561 => '8代-Coffee Lake-1151平台';

  @override
  String get autoGen5562 => '9代-Coffee Lake-1151平台';

  @override
  String get autoGen5563 => '10代-Comet Lake-1200平台';

  @override
  String get autoGen5564 => '11代-Rocket Lake-1200平台';

  @override
  String get autoGen5565 => '12代-Alder Lake-1700平台';

  @override
  String get autoGen5566 => '13代-Raptor Lake-1700平台';

  @override
  String get autoGen5567 => '14代-Raptor Lake Refresh-1700平台';

  @override
  String get autoGen5568 => '15代-Arrow Lake-1851平台';

  @override
  String get autoGen5569 => '0代-Penryn-笔记本';

  @override
  String get autoGen5570 => '1代-Clarksfield&Arrandale-笔记本';

  @override
  String get autoGen5571 => '2代-Sandy Bridge-笔记本';

  @override
  String get autoGen5572 => '3代-Ivy Bridge-笔记本';

  @override
  String get autoGen5573 => '4代-Haswell-笔记本';

  @override
  String get autoGen5574 => '5代-Broadwell-笔记本';

  @override
  String get autoGen5575 => '6代-Skylake-笔记本';

  @override
  String get autoGen5576 => '7代-Kaby Lake-笔记本';

  @override
  String get autoGen5577 => '8代-Coffee Lake-笔记本';

  @override
  String get autoGen5578 => '9代-Coffee Lake-笔记本';

  @override
  String get autoGen5579 => '10代-Comet Lake-笔记本';

  @override
  String get autoGen5580 => '10代-Ice Lake-笔记本';

  @override
  String get autoGen5581 => '11代-Tiger Lake-笔记本';

  @override
  String get autoGen5582 => '12代-Alder Lake-笔记本';

  @override
  String get autoGen5583 => '13代-Raptor Lake-笔记本';

  @override
  String get autoGen5584 => '14代-Raptor Lake Refresh-笔记本';

  @override
  String get autoGen5585 => '0代-Penryn-迷你主机';

  @override
  String get autoGen5586 => '1代-Clarksfield&Arrandale-迷你主机';

  @override
  String get autoGen5587 => '2代-Sandy Bridge-迷你主机';

  @override
  String get autoGen5588 => '3代-Ivy Bridge-迷你主机';

  @override
  String get autoGen5589 => '4代-Haswell-迷你主机';

  @override
  String get autoGen5590 => '5代-Broadwell-迷你主机';

  @override
  String get autoGen5591 => '6代-Skylake-迷你主机';

  @override
  String get autoGen5592 => '7代-Kaby Lake-迷你主机';

  @override
  String get autoGen5593 => '8代-Coffee Lake-迷你主机';

  @override
  String get autoGen5594 => '9代-Coffee Lake-迷你主机';

  @override
  String get autoGen5595 => '10代-Comet Lake-迷你主机';

  @override
  String get autoGen5596 => '10代-Ice Lake-迷你主机';

  @override
  String get autoGen5597 => '11代-Tiger Lake-迷你主机';

  @override
  String get autoGen5598 => '12代-Alder Lake-迷你主机';

  @override
  String get autoGen5599 => '13代-Raptor Lake-迷你主机';

  @override
  String get autoGen5600 => '14代-Raptor Lake Refresh-迷你主机';

  @override
  String get autoGen5601 => '1代-Nehalem&Westmere-X58平台';

  @override
  String get autoGen5602 => '2代-Sandy Bridge-E-X79平台';

  @override
  String get autoGen5603 => '3代-Ivy Bridge-E-X79平台';

  @override
  String get autoGen5604 => '4代-Haswell-E-X99平台';

  @override
  String get autoGen5605 => '5代-Broadwell-E-X99平台';

  @override
  String get autoGen5606 => '6代-Skylake-X&W-X299平台';

  @override
  String get autoGen5607 => '10代-Cascade Lake-X&W平台';

  @override
  String get autoGen5608 => 'Bulldozer(15h) and Jaguar(16h)-笔记本';

  @override
  String get autoGen5609 => 'Ryzen-笔记本';

  @override
  String get autoGen5610 => 'Bulldozer(15h) and Jaguar(16h)-迷你主机';

  @override
  String get autoGen5611 => 'Ryzen-迷你主机';

  @override
  String get autoGen5612 => 'Ryzen and Threadripper(17h and 19h)-服务器';

  @override
  String get autoGen5613 => '测试';

  @override
  String get autoGen5614 => 'nvram测试';

  @override
  String get autoGen5615 => '无法获取主目录';

  @override
  String get autoGen5616 => '源目录不存在';

  @override
  String get autoGen5617 => '无法获取桌面目录';

  @override
  String get autoGen5618 => '路径检查失败，返回空路径';

  @override
  String get autoGen5619 => '获取plist文件信息失败，返回结果不完整';

  @override
  String get autoGen5620 => '\n注意: NormalizeHeaders 已启用，且表 ID 包含不可打印字符！';

  @override
  String get autoGen5621 => '\n注意: NormalizeHeaders 未启用，且表 ID 包含 \'\'?\'\' 字符！';

  @override
  String get autoGen5622 => '未选择目标 config.plist 文件！';

  @override
  String get autoGen5623 => '=> 无法确定 config.plist 类型！\n';

  @override
  String get autoGen5624 => '=> 未找到 SSDT 表！跳过...';

  @override
  String get autoGen5625 => '=> 未找到重复 SSDT 表！';

  @override
  String get autoGen5626 => '=> 未找到 Patch 补丁！跳过...';

  @override
  String get autoGen5627 => '=> 未找到重复 Patch 补丁！';

  @override
  String get autoGen5628 => '=> 未找到 Drop 补丁！跳过...';

  @override
  String get autoGen5629 => '=> 未找到重复 Drop 补丁！';

  @override
  String get autoGen5630 => '=> 未找到需要更新的 Quirks 配置！跳过...';

  @override
  String get autoGen5631 => '=> 正在检查目标 Quirks 配置...';

  @override
  String get autoGen5632 => '正在备份当前config配置文件...';

  @override
  String get autoGen5633 => '准备复制 SSDT 文件...';

  @override
  String get autoGen5634 => '保存配置成功！';

  @override
  String get autoGen5635 => '合并已完成!\n';

  @override
  String get autoGen5636 => '合并失败!\n';

  @override
  String get autoGen5637 => '注意: 合并过程中发现潜在错误,请检查并修复！';

  @override
  String get autoGen5638 => '注意: 当前配置未设置为覆盖目标EFI模式!';

  @override
  String get autoGen5639 => '你需要手动进行以下操作:';

  @override
  String get autoGen5640 => '未找到根字典元素';

  @override
  String get autoGen5641 => '消除IRQ冲突,通常用于声卡修复';

  @override
  String get autoGen5642 =>
      '•\tHPET(High Precision Event Timer,高精度事件计时器)是用于系统定时的硬件模块。\n•\t在 macOS 下,一些主板的 HPET 设备可能会导致 IRQ(中断请求)冲突，进而影响音频设备的正常工作,导致系统不稳定、甚至无法启动。\n•\t该补丁通过调整 HPET 相关的 ACPI 设备定义，避免 IRQ 冲突，确保 macOS 能够正确使用 HPET 计时器，修复声卡问题,提高系统稳定性等。\n   ';

  @override
  String get autoGen5643 => '仿冒EC并注入USB电源属性(适用于Intel 6代及以上台式机)';

  @override
  String get autoGen5644 =>
      '•\t适用于Intel 6代及以上台式机\n•\t该补丁会禁用系统原有 EC 设备,然后创建一个虚拟的 EC 设备，以“欺骗” macOS 认为存在一个兼容的 EC，从而解决因 EC 设备缺失导致的启动问题。 \n•\t添加必要的USB电源属性以修复潜在的问题。等同于合并: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml\n        ';

  @override
  String get autoGen5645 => '仅仿冒EC,不影响现有EC，同时注入USB电源属性(适用于Intel 6代及以上笔记本）';

  @override
  String get autoGen5646 =>
      '•\t适用于Intel 6代及以上笔记本\n•\t适用于笔记本,它不会删除或修改现有的 EC,而是单独创建一个新的虚拟 EC，避免破坏原始 EC 设备，防止可能导致笔记本电源管理、键盘背光等功能异常。\n•\t添加必要的USB电源属性以修复潜在的问题。等同于合并: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml\n';

  @override
  String get autoGen5647 => '仿冒EC(适用于Intel 5代及以下台式机)';

  @override
  String get autoGen5648 =>
      '•\t适用于Intel 5代及以下台式机\n•\t该补丁会禁用系统原有 EC 设备,然后创建一个虚拟的 EC 设备，以“欺骗” macOS 认为存在一个兼容的 EC，从而解决因 EC 设备缺失导致的启动问题。 \n        ';

  @override
  String get autoGen5649 => '仅仿冒EC,不影响现有EC(适用于Intel 5代及以下笔记本）';

  @override
  String get autoGen5650 =>
      '•\t适用于Intel 5代及以下笔记本\n•\t它不会删除或修改现有的 EC,而是单独创建一个新的虚拟 EC，避免破坏原始 EC 设备，防止可能导致笔记本电源管理、键盘背光等功能异常。\n';

  @override
  String get autoGen5651 => 'USB电源属性修正(适用于Intel 6代及更新平台)';

  @override
  String get autoGen5652 =>
      '•\t适用于Intel Skylake 6代及以上, 服务器Haswell-E 4代及以上，AMD Ryzen等平台\n•\t从 Intel Skylake 及更新的处理器开始，macOS 需要特定的 USB 电源属性，以确保 USB 设备能够正确供电和识别。\n•\t该补丁修正 USB 端口的电源管理，使其符合 macOS 要求，解决 USB 设备识别异常、供电不足、无法热插拔等问题。\n•\t对于笔记本: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml 两者合并等同于 SSDT-EC-USBX-LAPTOP.aml\n•\t对于台式机: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml 两者合并等同于 SSDT-EC-USBX-DESKTOP.aml\n';

  @override
  String get autoGen5653 => 'CPU核心识别,启用频率调节与节能修正';

  @override
  String get autoGen5654 =>
      '•\tSSDT-PLUG 适用于Intel Haswell 4代 ~ 11代, 服务器Haswell-E 4代及以上平台 (定制SSDT-PLUG时,工具自动检测生成!)\n•\tSSDT-PLUG-ALT 适用于Intel Alder Lake 12代及以上,以及AMD Ryzen平台 (定制SSDT-PLUG时,工具自动检测生成并更名为SSDT-PLUG-ALT!)\n•\tmacOS 依赖 CPU 电源管理插件（PluginType）来调节 CPU 频率，提高能效和续航。\n•\t该补丁会修改 CPU 定义，使 macOS 认为它是 Apple 设备所需的 plugin-type = 1 处理器，从而正确加载 CPU 变频管理，提高性能和功耗控制。\n          ';

  @override
  String get autoGen5655 => '启用NVRAM支持(通常适用于Intel原生300系列主板)';

  @override
  String get autoGen5656 =>
      '•\t适用于Intel Coffee Lake 8代 ~ 9代平台\n•\t原生 300 系列主板（如 Z370、B360）在 macOS 下可能无法正确使用 NVRAM，导致部分功能（如 iMessage、音量记忆、引导参数等）无法保存。\n•\t该补丁启用主板的 PMC（Power Management Controller，电源管理控制器），让 macOS 正常使用原生 NVRAM，而无需额外的 EmuVariableUEFI 驱动。\n';

  @override
  String get autoGen5657 => '添加PNLF设备以提供背光支持(仅适用于笔记本和一体机)';

  @override
  String get autoGen5658 =>
      '•\tmacOS 需要 PNLF 设备（Panel Brightness）才能正确控制笔记本屏幕的亮度。\n•\t该补丁会在 ACPI 中创建一个 PNLF 设备,使 macOS 能够调节屏幕亮度，并在系统偏好设置中显示亮度控制选项。\n•\t适用于笔记本和部分一体机,解决亮度调节不可用的问题。\n•\tUID = 14, 适用于: Intel第1代Arrandale,第2代Sandy Bridge,第3代Ivy Bridge \n  注意:有些机器使用UID: 14 会遇到最大亮度受限或其他问题.为了解决这些问题,必须设置正确的 iGPU（集成显卡）的设备路径，并且可能需要补充IGPU寄存器信息\n•\tUID = 15, 适用于: Intel第4代Haswell,第5代Broadwell\n•\tUID = 16, 适用于: Intel第6代Skylake,第7代Kaby Lake, 某些第4代Haswell\n•\tUID = 17, 适用于: 自定义亮度,通常用于一些非标准设备或特殊需求的 Hackintosh（黑苹果）设置\n•\tUID = 18, 适用于: 自定义亮度,通常用于一些非标准设备或特殊需求的 Hackintosh（黑苹果）设置\n•\tUID = 19, 适用于: Intel第8代CoffeeLake及以上,10代以下,以及AMD笔记本\n•\tUID = 99, 适用于: 其他（需要自定义 applbkl-name / applbkl-data 设备属性）,可能根本无法正常工作\n';

  @override
  String get autoGen5659 => '提供屏幕背光调节所需的传感器支持(仅适用于笔记本和一体机)';

  @override
  String get autoGen5660 =>
      '•\t用于模拟和启用 Apple 原生传感器(光线传感器 Ambient Light Sensor,简称ALS)功能,以实现自动调节屏幕亮度\n•\t如果你的设备真的有ALS(如某些高端笔记本),并且存在问题,可以尝试添加SSDT-ALS0来修正自动亮度调节功能,否则不建议添加\n•\t适用范围：仅限一体机 (AIO) 和笔记本电脑\n          ';

  @override
  String get autoGen5661 => 'macOS伪装成Windows,解锁被屏蔽的设备(如I2C触摸板)';

  @override
  String get autoGen5662 =>
      '•\t_OSI（Operating System Interface）是 ACPI 的一个方法，允许操作系统报告自己支持哪些功能。\n•\t一些主板固件可能会根据 _OSI 返回值来决定是否启用某些设备，而 macOS 可能不被识别，从而导致功能缺失。\n•\t该补丁会“欺骗”固件，使其认为 macOS 也是 Windows，从而激活隐藏的功能，如：I2C 触摸板、电池管理等。\n          ';

  @override
  String get autoGen5663 => 'USB端口重置与修正';

  @override
  String get autoGen5664 =>
      '•\t某些OEM违反了ACPI规范，这导致在启动macOS时出现问题。为了解决这个问题，需要关闭RHUB设备，并强制macOS手动重建端口。\n•\t该补丁在 macOS 启动时重置 USB 控制器(包括EHC1,EHC2等USB设备屏蔽和更名),使得所有 USB 端口可以正确识别,并配合 USB 映射（如:UTBMap.kext）使用,以确保 USB 设备正常工作。\n• 通常适用于桌面端400系主板(华硕等)以及移动端IceLake平台(戴尔,联想等)。\n';

  @override
  String get autoGen5665 => '为缺失的 PCI 设备路径创建桥接';

  @override
  String get autoGen5666 =>
      '•\t一些主板或设备的 PCI 设备路径可能在 macOS 下无法正确识别，导致设备无法正常工作，例如: 显卡、声卡、无线网卡等。\n•\t该补丁会为这些设备创建正确的 PCI 桥接，确保 macOS 能够正确识别并使用这些 PCI 设备。\n';

  @override
  String get autoGen5667 => '修正APIC表,解决CPU内核panic问题(适用于HEDT服务器平台)';

  @override
  String get autoGen5668 =>
      '•\t修复或重写 APIC 表中的 Processor ID,确保 macOS 能正确识别 CPU 核心数量和编号,避免内核 panic 或核心识别错误。\n•\t需在固件中 Drop 掉原有 APIC 表，才能加载修补后的表。\n•\t适用于X58, X79, X99, X299 等 Intel 服务器(HEDT)平台。\n';

  @override
  String get autoGen5669 => '移除DMAR保留内存区域,修复系统启动问题,网卡兼容性问题';

  @override
  String get autoGen5670 =>
      '•\tDMAR（DMA Remapping Table）是 Intel VT-d 虚拟化技术的一部分，用于 IOMMU（输入输出内存管理单元）支持。\n•\t该补丁会移除 DMAR 表中导致问题的保留内存区域，从而避免 macOS 误读 DMAR 导致系统无法启动。\n•\t为 VT-d 兼容性提供支持，让 VT-d 在 macOS Big Sur 及更新版本中正常工作，尤其是涉及使用 DriverKit 驱动的硬件。\n•\tmacOS 支持 VT-d，但某些主板或 BIOS 提供的 DMAR 表存在兼容性问题，可能导致 macOS 在解析 ACPI DMAR 表时内核崩溃、卡启动、系统不稳定等问题(卡在 AppleACPICPU、IOPCI、AppleVTD 相关日志位置)。\n•\t支持的硬件范围： I225 网卡、Aquantia 网卡、部分 WiFi 设备等。\n•\t需在固件中 Drop 掉原有 DMAR 表，才能加载修补后的表。\n•\t适用 CPU： 任何支持 VT-d 技术的处理器。\n';

  @override
  String get autoGen5671 => '添加系统总线SMBus支持';

  @override
  String get autoGen5672 =>
      '•\tmacOS 需要 SMBus（System Management Bus） 设备才能正确运行某些服务，如：\n  I2C 触摸板，电池管理，光感自动亮度调节，某些 Wi-Fi / 蓝牙设备\n•\tSSDT-SBUS-MCHC 通过在 ACPI 中添加 SBUS（系统管理总线）和 MCHC（内存控制器）设备，使 macOS 认为这是一个原生的 Apple 设备，确保相关功能正常工作。\n•\t如果设备 I2C 触摸板、电池信息、自动亮度调节无法使用，可以尝试启用该补丁。\n';

  @override
  String get autoGen5673 => '修复核显加速失败问题(通常适用于Ivy Bridge和 Sandy Bridge)';

  @override
  String get autoGen5674 =>
      '•\tIntel Management Engine(简称IMEI)是用于连接管理引擎的硬件接口,只有在旧平台(Sandy/Ivy)和某些主板缺少 MEI/IMEI/HECI 设备时才需要\n•\t适用于Intel第3代Ivy Bridge处理器,6系主板混合时(例如：i3 3225处理器，H61主板),核显加速问题\n•\t适用于Intel第2代Sandy Bridge处理器,7系主板混合时(例如：i5 2500k处理器，B75主板),核显加速问题\n•\tIntel第3代Ivy Bridge处理器搭配7系主板,以及Intel第2代Sandy Bridge处理器搭配6系主板,不需要此SSDT!\n• Intel第4代Haswell及更新平台,通常能正确实现 MEI/IMEI/HECI 设备,不需要此SSDT!\n          ';

  @override
  String get autoGen5675 => '修复关机变重启或关机不断电问题';

  @override
  String get autoGen5676 =>
      '•\t修复某些主板在macOS执行关机（S5）时，有时不会完全关闭 USB 控制器电源导致无法正常关机问题(关机变重启或关机不断电)\n•\t需要搭配 ACPI 重命名补丁： _PTS -> ZPTS \n';

  @override
  String get autoGen5677 => '检查当前系统状态,主要查看是否支持S3睡眠(非定制SSDT)';

  @override
  String get autoGen5678 =>
      '•\t检查当前机器是否为AOAC机器(非定制SSDT)\n•\t检查当前BIOS设置中系统状态,主要查看是否支持S3睡眠(非定制SSDT)\n•\t注意:非AOAC机器才兼容S3睡眠,AOAC机器与S3睡眠冲突,不支持S3睡眠!\n•\t如果非AOAC机器(AOAC机器不支持S3睡眠,不用往下看)检查结果显示系统状态不支持S3睡眠,可能存在如下几种情况:\n  1. 主板固件支持S3睡眠,但是BIOS设置中未开启S3睡眠,开启后可支持S3睡眠\n  2. 主板固件物理未阉割 S3,只是 DSDT 未定义 _S3 方法,补全 _S3 方法有概率修复 S3 睡眠问题\n  3. 主板固件物理阉割 S3,完全不支持S3睡眠,就算补全 _S3 方法,也无法修复 S3 睡眠问题\n';

  @override
  String get autoGen5679 => '检查当前是否为AOAC机器(非定制SSDT)';

  @override
  String get autoGen5680 =>
      '•\t根据FACP.aml检查当前是否为AOAC机器(非定制SSDT)\n•\t注意:非AOAC机器才兼容S3睡眠,AOAC机器与S3睡眠冲突,不支持S3睡眠!AOAC机器常见于笔记本\n•\tAOAC机器一旦进入S3睡眠,可能出现：睡眠后无法被唤醒，呈现死机状态，只能强制关机。建议禁用S3睡眠。\n•\tAOAC机器建议考虑如下解决方案:\n  1. 解锁BIOS,禁用AOAC(通常很难办到,但是最稳定)\n  2. 禁用S3睡眠 (在BIOS中禁用S3睡眠,或者SSDT-S3-DISABLE禁用S3睡眠)\n  3. 关闭独显供电电源\n  4. 使用 NVMeFix.kext 开启 SSD 的 APST\n  5. 启用 ASPM（BIOS 高级选项启用ASPM,SSDT 补丁启用 L1）\n';

  @override
  String get autoGen5681 => '修复由于USB控制器导致睡眠即醒问题';

  @override
  String get autoGen5682 =>
      '•\t将GPRW重命名为XPRW,修复即时唤醒问题(注意:可能导致USB键盘无法唤醒设备,可以通过电源键唤醒)\n•\tSSDT-GPRW比较常用,因为绝大多数平台都是GPRW方法,极少数平台提供并使用UPRW方法\n•\t适用于Skylake及更新平台\n';

  @override
  String get autoGen5683 =>
      '•\t将GPRW重命名为XPRW,修复即时唤醒问题(注意:可能导致USB键盘无法唤醒设备,可以通过电源键唤醒)\n•\t很少用到SSDT-UPRW,因为绝大多数平台都是GPRW方法,极少数平台提供并使用UPRW方法\n•\t适用于Skylake及更新平台\n';

  @override
  String get autoGen5684 => '修复睡眠按键睡眠问题(适用于笔记本)';

  @override
  String get autoGen5685 =>
      '•\t某些电脑通过睡眠按键SLPB（PNP0C0E） 进入睡眠时,由于 ACPI 传递错误参数,导致 macOS 误认为是关机,可能导致:直接重启,睡眠后崩溃,或者睡眠成功但系统状态损坏\n•\t在按下睡眠键时伪装“盖子合上”，把危险的 PNP0C0E 睡眠强制转换成安全稳定的 PNP0C0D 睡眠\n•\t通常适用于笔记本电脑\n';

  @override
  String get autoGen5686 => '修复唤醒后需按任意键亮屏问题';

  @override
  String get autoGen5687 => '•\t修复某些机器唤醒后需按任意键才能亮屏的问题\n';

  @override
  String get autoGen5688 => '修复唤醒后电源键呼吸灯异常问题(适用于联想笔记本)';

  @override
  String get autoGen5689 =>
      '•\t修复某些联想笔记本唤醒后 A 面呼吸灯和电源键呼吸灯未恢复正常的问题\n•\t修复某些联想笔记本上唤醒后 F4 麦克风指示灯状态不正常的问题\n•\t主要适用于联想系列笔记本,其他品牌笔记本通常不适用\n';

  @override
  String get autoGen5690 => '禁用系统 S3 睡眠状态(修复S3睡眠唤醒崩溃,重启或关机问题)';

  @override
  String get autoGen5691 =>
      '•\t仅禁用macOS系统下 S3 睡眠状态,避免macOS系统唤醒时出现系统崩溃、重启或关机\n•\t禁用后,仅macOS不再支持S3睡眠(点击睡眠按钮或者显示器进入节能模式,屏幕关闭,但是主机仍然会运行,风扇也不会停止运转)\n•\t禁用macOS系统下 S3 睡眠状态后,不再需要修改macOS任何系统设置,可以不用关闭节能模式(在此之前,你可能需要修改系统设置->不活跃时关闭显示器->永不)\n•\t适用场景:在没有修复睡眠问题时,macOS系统设置里节能模式开启(\"不活跃时关闭显示器->10分钟\"),系统进入睡眠状态后,当唤醒macOS系统,可能出现系统崩溃、重启或关机.此时可以禁用S3睡眠状态,即可修复该问题.\n•\t需要搭配 ACPI 重命名补丁： _S3 -> XS3 \n';

  @override
  String get autoGen5692 => '热重启修改为冷重启,修复部分硬件不可用的问题';

  @override
  String get autoGen5693 =>
      '•\t热重启修改为冷重启，修复部分平台从Windows重启到macOS后,导致部分硬件不可用的问题。(比如：声卡,WiFi,蓝牙)\n•\t注意: 没有SSDT-FACP.aml生成! 只生成ACPI - Patch补丁! \n';

  @override
  String get autoGen5694 => '显卡设备 ID 映射';

  @override
  String get autoGen5695 =>
      '• 用于 AMD 显卡设备 ID 映射场景，通过 ACPI 注入兼容设备 ID，让系统加载对应图形驱动。\n• 仅建议用于 RapidEFI 兼容性数据中明确标记需要设备 ID 映射的型号。\n';

  @override
  String get autoGen5696 => 'ACPI 设备屏蔽';

  @override
  String get autoGen5697 =>
      '• 用于在 ACPI 层处理不适合交给 macOS 驱动的 PCI 设备，例如不兼容显卡、NVMe 控制器或其他扩展设备。\n• 笔记本优先尝试电源级停用；如果固件没有对应电源方法，再降级到驱动层规避。\n• 台式机、NUC、HEDT 默认使用通用规避方式，避免依赖机器固件里通常不存在的独显电源方法。\n• 所有方案都需要有效 ACPI Path；如果硬件报告缺失 ACPI Path，会自动跳过该设备。\n';

  @override
  String get autoGen5698 => '仿冒有线网卡设备(适用于没有有线网卡的笔记本)';

  @override
  String get autoGen5699 =>
      '•\t为Hackintosh系统提供NullEthernet仿冒虚拟网卡，用于解决 iMessage、Facetime、iCloud 等 Apple 服务对内建网络设备的依赖\n  ';

  @override
  String get autoGen5700 => '修复笔记本I2C触摸板问题(适用于笔记本)';

  @override
  String get autoGen5701 =>
      '•\t通过修复ACPI硬件节点挂载,确保在macOS系统启用该设备,修复部分I2C触控板无法正常识别问题\n•\tSSDT-GPI0 解决驱动挂载硬件设备问题,SSDT-XOSI 主要用于修复 BIOS/ACPI 初始化逻辑与操作系统识别不兼容的问题(某些时候可以修复触控板问题)\n\n';

  @override
  String get autoGen5702 => 'B850,B650,B550,A520芯片组的CPU重命名(仅适用于Ryzen平台)';

  @override
  String get autoGen5703 =>
      '•\t适用于B850,B650,B550,A520芯片组的CPU重命名,修复AMD平台无法识别CPU导致的崩溃问题(预制SSDT补丁时才推荐使用)\n•\t定制SSDT补丁时,建议使用定制的SSDT-PLUG即可!(AMD Ryzen平台,在定制SSDT时,自动更名为SSDT-PLUG-ALT)\n';

  @override
  String get autoGen5704 => '修复电源管理(适用于Intel 12代及以上，部分AMD Ryzen等平台)';

  @override
  String get autoGen5705 =>
      '•\tmacOS 依赖 CPU 电源管理插件（PluginType）来调节 CPU 频率，提高能效和续航。\n•\t该补丁会修改 CPU 定义，使 macOS 认为它是 Apple 设备所需的 plugin-type = 1 处理器，从而正确加载 CPU 变频管理，提高性能和功耗控制。\n•\t适用于Intel Alder Lake 12代及以上,以及部分AMD Ryzen平台 \n';

  @override
  String get autoGen5706 => '禁用AWAC(现代计时器)(适用于Intel Coffee Lake 8代及以上)';

  @override
  String get autoGen5707 =>
      '•\t禁用AWAC(现代计时器),同时启用或仿冒传统RTC\n•\t适用于Intel Coffee Lake 8代及以上\n';

  @override
  String get autoGen5708 => '所有原生X99(C612)主板和大多数原生X79(C602)主板需要';

  @override
  String get autoGen5709 =>
      '•\t此 SSDT 适用于所有 X99 主板以及多数 X79 主板，主要功能是禁用 ACPI 中未使用的设备，从而防止 IOPCIFamily 引起内核崩溃（kernel panic）。\n•\t适用主板： 所有原生X99(C612)主板和大多数原生X79(C602)主板。\n';

  @override
  String get autoGen5710 => '启用或仿冒传统RTC计时器,并修复RTC范围(适用于所有原生X99(C612)和X299主板)';

  @override
  String get autoGen5711 =>
      '•\t启用或仿冒传统RTC计时器,并修复RTC范围。\n• 解决开机时间不正确、RTC 相关错误、睡眠唤醒问题等。\n•\t此 SSDT 适用于所有 X99(C612) 主板以及X299 主板\n';

  @override
  String get autoGen5712 => '添加DTGP支持';

  @override
  String get autoGen5713 =>
      '•\t注入硬件设备属性,修复部分显卡,声卡,雷电卡等ACPI问题(没有 DTGP 方法支持时，这些属性注入可能会失败或不起作用！)\n';

  @override
  String get autoGen5714 => '仿冒一个标准DMA控制器';

  @override
  String get autoGen5715 =>
      '•\t仿冒一个标准 DMA Controller（直接内存访问控制器）的虚拟设备控制器（PNP0200）, 补全 ACPI 资源表,让 macOS 正常识别 LPC 总线设备和 DMA 功能\n•\tHEDT/服务器平台通常不需要\n•\t添加缺失的部件,这只是一种完善方案,非必要!\n';

  @override
  String get autoGen5716 => '仿冒一个标准PWRB控制器';

  @override
  String get autoGen5717 =>
      '•\t仿冒一个标准 Power Button（PNP0C0C）设备,让 macOS 正常识别系统电源按钮、支持睡眠和唤醒\n•\t部分 BIOS/主板 ACPI 树里没有 PNP0C0C,macOS 无法正确处理电源按钮,可能导致无法睡眠、无法唤醒、菜单栏电源按钮不可用\n•\t添加缺失的部件,这只是一种完善方案,非必要!\n';

  @override
  String get autoGen5718 => '仿冒一个标准SLPB控制器';

  @override
  String get autoGen5719 =>
      '•\t仿冒一个标准 Sleep Button（PNP0C0E）设备，让 macOS 正确识别系统睡眠按钮，实现睡眠和唤醒功能\n•\t部分 BIOS/主板 ACPI 树里没有 PNP0C0E,macOS 无法正确处理睡眠按钮,可能导致无法睡眠、无法唤醒、菜单栏睡眠按钮不可用\n•\tPNP0C0E睡眠修正方法时,需要此部件!\n•\t添加缺失的部件,这只是一种完善方案,非必要!\n';

  @override
  String get autoGen5720 => '仿冒一个IGPU所需的MEM2设备';

  @override
  String get autoGen5721 =>
      '•\t添加 IGPU 所需的 MEM2 ACPI 设备,修复 IGPU 相关问题\n•\t补充核显内存映射，避免驱动初始化失败\n•\t适用范围: Haswell ~ Kaby Lake，仅核显系统。通常仅独显不需要此SSDT!\n';

  @override
  String get autoGen5722 => '无效路径';

  @override
  String get autoGen5723 => '没有找到有效的 .aml 或 .dat 文件';

  @override
  String get autoGen5724 => '正在批量反编译 SSDT.aml 文件...';

  @override
  String get autoGen5725 => '正在批量反编译 DSDT.aml 和 SSDT.aml 文件...';

  @override
  String get autoGen5726 => '正在单独反编译失败的.aml 文件...';

  @override
  String get autoGen5727 => '正在反编译其他.aml文件...';

  @override
  String get autoGen5728 => '注意：路径或文件名尽量不要包含中文或特殊字符,否则可能带来意外问题！';

  @override
  String get autoGen5729 => 'ACPI 导出工具未准备就绪';

  @override
  String get autoGen5730 => '正在导出 ACPI 表...';

  @override
  String get autoGen5731 => '当前平台不支持导出 ACPI 表';

  @override
  String get autoGen5732 => '等待输入 sudo 密码授权...';

  @override
  String get autoGen5733 => '已取消管理员授权';

  @override
  String get autoGen5734 => '未输入管理员密码';

  @override
  String get autoGen5735 => '管理员密码不正确';

  @override
  String get autoGen5736 => 'ACPI 表导出进程执行失败';

  @override
  String get autoGen5737 => '当前平台提取 ACPI 表为空或不支持导出 ACPI 表';

  @override
  String get autoGen5738 => '=> 未找到 DSDT，正在按签名导出…';

  @override
  String get autoGen5739 => 'DSDT 表导出失败';

  @override
  String get autoGen5740 => '正在更新表名…';

  @override
  String get autoGen5741 => '导出 ACPI 表成功!';

  @override
  String get autoGen5742 => '未提供有效 ACPI 表!';

  @override
  String get autoGen5743 => '未没找到要定位的十六进制数据!';

  @override
  String get autoGen5744 => '未找到唯一的填充标识!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: 无效的 table 参数';

  @override
  String get autoGen5746 => '最宽松';

  @override
  String get autoGen5747 => '仅长度';

  @override
  String get autoGen5748 => '表ID和长度,禁用标准化头部';

  @override
  String get autoGen5749 => '表ID和长度,启用标准化头部';

  @override
  String get autoGen5750 => 'Intel第1代Arrandale,第2代Sandy Bridge,第3代Ivy Bridge';

  @override
  String get autoGen5751 => 'Intel第4代Haswell,第5代Broadwell';

  @override
  String get autoGen5752 => 'Intel第6代Skylake,第7代Kaby Lake, 某些第4代Haswell';

  @override
  String get autoGen5753 => '自定义亮度,通常用于一些非标准设备或特殊需求设置';

  @override
  String get autoGen5754 => 'Intel第8代CoffeeLake ~ 10代,以及AMD笔记本';

  @override
  String get autoGen5755 => '其他（需要自定义 applbkl-name / applbkl-data 设备属性）,可能不受支持';

  @override
  String get autoGen5756 => 'ACPI 工具当前仅支持 Windows/macOS/Linux 平台';

  @override
  String get autoGen5757 =>
      '注意:旧版iasl-legacy仅支持macOS 10.6及更早版本，目前主流系统使用可能存在兼容性问题,谨慎使用!!!\n';

  @override
  String get autoGen5758 => '使用【iasl-legacy旧版编译器】';

  @override
  String get autoGen5759 => '编译失败!';

  @override
  String get autoGen5760 => ' 建议更换新版 iasl 或开启强制编译再试!';

  @override
  String get autoGen5761 => '存在';

  @override
  String get autoGen5762 => '不存在';

  @override
  String get autoGen5763 =>
      '注意:英特尔第1代Arrandale,第2代Sandy Bridge,第3代Ivy Bridge 默认使用 UID:14,但是有些机器使用UID: 14 会遇到最大亮度受限或其他问题.为了解决这些问题,必须设置正确的 iGPU（集成显卡）的设备路径，并且可能需要补充IGPU寄存器信息';

  @override
  String get autoGen5764 =>
      '请输入要使用的 iGPU ACPI 路径。每个路径元素的字符限制为 4 个字母数字字符（以字母或下划线开头），并用空格分隔。例如: SB.PCI0.GFX0\n';

  @override
  String get autoGen5765 =>
      '注意：已生成 NBCF 补丁(依赖BrightnessKeys.kext驱动),默认启用！如果在使用过程中遇到问题,请禁用该补丁!';

  @override
  String get autoGen5766 => '\n以下桥接无法解析：';

  @override
  String get autoGen5767 =>
      '=> 当前固件支持常见系统状态!如果不是AOAC机器,修复睡眠问题后,macOS可支持S3睡眠,反之不支持S3睡眠!';

  @override
  String get autoGen5768 => '补丁';

  @override
  String get autoGen5769 => '连接服务器超时';

  @override
  String get autoGen5770 => '下载已取消';

  @override
  String get autoGen5771 => '读取响应超时';

  @override
  String get autoGen5772 => 'Kext 复制成功';

  @override
  String get autoGen5773 => 'Web平台默认直接下载，暂不支持选择默认路径';

  @override
  String get autoGen5774 => '配置文件根节点不是 JSON 对象';

  @override
  String get autoGen5775 => '跟随系统';

  @override
  String get autoGen5776 => '关闭';

  @override
  String get autoGen5777 => '微软雅黑';

  @override
  String get autoGen5778 => '更纱黑体';

  @override
  String get autoGen5779 => '思源宋体';

  @override
  String get autoGen5780 => '等待刷新硬件信息';

  @override
  String get autoGen5781 => '正在加载硬件信息';

  @override
  String get autoGen5782 => '正在刷新硬件信息';

  @override
  String get autoGen5783 => '硬件信息加载完成';

  @override
  String get autoGen5784 => '硬件信息加载失败';

  @override
  String get autoGen5785 => '硬件信息暂不支持';

  @override
  String get autoGen5786 => '硬件信息导入完成';

  @override
  String get autoGen5787 => '失败';

  @override
  String get autoGen5788 => '不支持';

  @override
  String get autoGen5789 => '完成';

  @override
  String get autoGen5790 => '缓存';

  @override
  String get autoGen5791 => '当前平台不支持硬件信息查询';

  @override
  String get autoGen5792 => '当前为导入的外部硬件报告，请先刷新本机硬件信息后再导出';

  @override
  String get autoGen5793 => '暂无可导出的本机硬件信息';

  @override
  String get autoGen5794 => '硬件报告文件夹清理失败';

  @override
  String get autoGen5795 => '硬件报告文件夹创建失败';

  @override
  String get autoGen5796 => 'ACPI 表导出失败或不支持';

  @override
  String get autoGen5797 => '已取消管理员授权，未导出 ACPI 表';

  @override
  String get autoGen5798 => '未输入管理员密码，无法导出 ACPI 表';

  @override
  String get autoGen5799 => '管理员密码不正确，无法导出 ACPI 表';

  @override
  String get autoGen5800 => 'ACPI 表导出失败：未找到有效 ACPI 表';

  @override
  String get autoGen5801 => 'ACPI 表导出失败：导出进程执行失败';

  @override
  String get autoGen5802 => '硬件信息文件不是 JSON 对象';

  @override
  String get autoGen5803 => '硬件信息已导入';

  @override
  String get autoGen5804 => 'ACPI 表目录无效，定制 SSDT 不可用';

  @override
  String get autoGen5805 => '开始配置 EFI...';

  @override
  String get autoGen5806 => '正在根据硬件信息生成 ConfigModel...';

  @override
  String get autoGen5807 => '使用 EFI 原始 SSDT，跳过 SSDT 定制.';

  @override
  String get autoGen5808 => '已导入外部硬件报告但未提供 ACPI 表目录，已禁用定制 SSDT。';

  @override
  String get autoGen5809 => '正在输出 OpenCore EFI...';

  @override
  String get autoGen5810 => 'EFI 已写入，开始提取 ACPI 并定制 SSDT...';

  @override
  String get autoGen5811 => 'SSDT 定制流程结束.';

  @override
  String get autoGen5812 => 'SSDT 定制流程失败.';

  @override
  String get autoGen5813 => 'EFI 配置完成.';

  @override
  String get autoGen5814 => 'EFI 配置失败，请检查输出路径或日志.';

  @override
  String get autoGen5815 => '硬件自动生成 ConfigModel 规则重构中';

  @override
  String get autoGen5816 => 'tips 长度必须和 choices 一致';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/成功案例.md';

  @override
  String get autoGen5818 => 'assets/ssdt/平台补丁.md';

  @override
  String get autoGen5819 => 'assets/ssdt/声卡补丁.md';

  @override
  String get autoGen5820 => 'assets/ssdt/显卡仿冒.md';

  @override
  String get autoGen5821 => 'assets/ssdt/屏蔽设备.md';

  @override
  String get autoGen5822 => 'assets/ssdt/亮度补丁.md';

  @override
  String get autoGen5823 =>
      '  蓝牙驱动说明：\n  1. 当勾选Intel WiFi时，会根据macOS版本自动添加Intel蓝牙驱动，无需手动勾选！！！\n  2. 当勾选Broadcom WiFi时，会根据macOS版本自动添加Broadcom蓝牙驱动，无需手动勾选！！！\n  3. 当勾选Atheros WiFi时，会自动添加Atheros蓝牙驱动,无需手动勾选！！！\n  4. 没有勾选WiFi型号时或者未做说明的蓝牙型号,需要手动勾选！！！\n  5. 由于蓝牙走USB通道,如果添加驱动和补丁仍然不正常,请确保USB定制良好！！！\n  ';

  @override
  String get autoGen5824 =>
      '  常见HPET路径:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  此选项用于修复部分声卡IRQ问题!注意:如果你的声卡没有IRQ问题,请不要使用此功能!!!\n  ';

  @override
  String get autoGen5825 =>
      '  支持macOS版本:\n    •\tWireless USB Big Sur Adapter-V18版本支持macOS Catalina 10.15.x ~ macOS Tahoe 26.x (需要OCLP USB补丁)\n    •\tWireless USB Big Sur Adapter-V15版本支持OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  支持的USB WiFi如下:\n    •\t主要芯片为瑞昱Realtek 802.11n and 802.11ac USB Wi-Fi Adapter,更多具体型号可以参考作者说明\n  ';

  @override
  String get autoGen5826 =>
      '  AMD 独显仿冒(设备属性):\n   1. 需要补充填写显卡PCI路径,例如: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. 需要填写显卡仿冒设备ID(4位16进制),例如: 73BF\n   3. 显卡仿冒后,仍然需要考虑AMD显卡所需启动参数(可以在独显配置->AMD独显->按需勾选)\n   4. 工具预制了部分显卡设备ID,如果没有,请自行查找或者联系作者补充\n  ';

  @override
  String get autoGen5827 => '確認';

  @override
  String get autoGen5828 => '取消';

  @override
  String get autoGen5829 => '确定';
}
