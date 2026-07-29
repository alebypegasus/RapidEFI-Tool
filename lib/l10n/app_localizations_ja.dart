// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get recent => '最近';

  @override
  String get efiRelated => 'EFI関連';

  @override
  String get toolsAndGuides => 'ツールとガイド';

  @override
  String get navHistory => '履歴';

  @override
  String get navConfigureEFI => 'EFI構成';

  @override
  String get navProcessEFI => 'EFI加工';

  @override
  String get navCustomSSDT => 'カスタムSSDT';

  @override
  String get navOCLPPatch => 'OCLP-Xパッチ';

  @override
  String get navTahoeGuide => 'macOS Tahoe 26';

  @override
  String get navSettings => '設定';

  @override
  String get navSponsor => '開発者を支援';

  @override
  String get searchPlaceholder => '検索';

  @override
  String get darkMode => 'ダークモード';

  @override
  String get clickAgainToExit => 'もう一度クリックして終了';

  @override
  String currentOpenCoreVersion(Object version) {
    return '現在のOpenCoreバージョン: $version';
  }

  @override
  String get copyrightTitle => '著作権表示';

  @override
  String get copyrightText =>
      'Copyright (C) 2024 JeoJay\n\n利用規約:\n以下の条件に従い、個人または組織での使用が許可されます:\n\n1. 非営利目的:\n本ソフトウェアは完全無料でオープンソースであり、非営利目的に限られます。本ソフトウェアの販売は禁止されています。\n\n2. 帰属の明記:\n第三者のウェブサイトでの再配布、引用、または使用を行う場合は、出所を明示し、以下の情報を含める必要があります:\nDeveloped by JeoJay. Copyright (C) 2024 JeoJay. All rights reserved.\n\n3. 著作権表示の改変禁止:\n本ソフトウェアのコンテンツを再利用または使用する際、元の著作権表示および出所情報を変更または削除することはできません。\n\n免責事項:\n本ソフトウェアは「現状有姿」で提供され、明示的または黙示的な保証は行われません。著作権者は、本ソフトウェアの使用から生じるいかなる直接的または間接的な損害についても責任を負いません。';

  @override
  String get themeModeTitle => 'ダークモード:';

  @override
  String get themeModeSystem => 'システムに同期';

  @override
  String get themeModeLight => 'オフ';

  @override
  String get themeModeDark => 'オン';

  @override
  String get themeColorTitle => 'テーマカラー:';

  @override
  String get appFontTitle => 'アプリのフォント:';

  @override
  String get efiSettingsTitle => 'EFI出力オプション:';

  @override
  String get addOpenCoreTheme => 'EFI構成時にOpenCoreブートテーマを追加';

  @override
  String get generateConfigModel => 'EFIフォルダにconfigModelファイルを生成';

  @override
  String get zipEFI => 'EFIをZipファイルに圧縮';

  @override
  String get languageTitle => '言語設定:';

  @override
  String get languageSystem => 'システムに同期';

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
  String get versionUpdateTitle => 'バージョン更新:';

  @override
  String currentVersion(Object version) {
    return '現在のバージョン: $version';
  }

  @override
  String get checkUpdate => '更新を確認';

  @override
  String get checkingUpdate => '確認中...';

  @override
  String get settingSnippet =>
      '1. 「EFI構成時にOpenCoreブートテーマを追加」オプションはデフォルトで有効です。出力EFIフォルダにブートテーマが含まれます。テーマが不要な場合はチェックを外してください。\n\n2. 「EFIフォルダにconfigModelファイルを生成」オプションはデフォルトで有効です。このファイルは「EFI加工」セクションで現在のEFIを再編集・調整するために使用できます。\n\n3. 「EFIをZipファイルに圧縮」オプションは生成されたEFIをZipファイルに圧縮します。Zipファイルの圧縮により、特に性能の低いハードウェアでは出力完了までの時間に影響を与える場合があります。';

  @override
  String get fontMicrosoftYaHei => 'Microsoft YaHei';

  @override
  String get fontSarasaGothic => 'Sarasa Gothic';

  @override
  String get fontSourceHanSerif => 'Source Han Serif';

  @override
  String get cpuArchitecture => 'CPU アーキテクチャ';

  @override
  String get desktop => 'デスクトップ';

  @override
  String get laptop => 'ノート PC';

  @override
  String get hedt => 'サーバー';

  @override
  String get nuc => 'ミニ PC';

  @override
  String get amd => 'AMD プロセッサ';

  @override
  String get smbios => 'SMBIOS モデル';

  @override
  String get generateEFI => 'EFI 生成';

  @override
  String get clearSelection => '選択をクリア';

  @override
  String get exportConfig => '構成をエクスポート';

  @override
  String get selectTargetFolder => '出力先フォルダを選択';

  @override
  String get efiGenerateSuccess => 'EFI の生成に成功しました！';

  @override
  String efiGenerateFailed(Object error) {
    return 'EFI の生成に失敗しました: $error';
  }

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確定';

  @override
  String get save => '保存';

  @override
  String get delete => '削除';

  @override
  String get openFolder => 'フォルダを開く';

  @override
  String get date => '日付';

  @override
  String get actions => '操作';

  @override
  String get historyTitle => '履歴';

  @override
  String get historyDescription =>
      'RapidEFIで生成されたEFIは、ビルドが成功するたびに自動的にバックアップされます。必要に応じて、これらの記録に基づいて再編集および調整を行うことができます。';

  @override
  String get clearAllHistory => 'すべての履歴を消去';

  @override
  String get clearingHistory => '履歴を消去中...';

  @override
  String get noHistory => '履歴がありません';

  @override
  String get editEFI => 'EFIを編集';

  @override
  String get configuringEFI => 'EFIを構成中、お待ちください...';

  @override
  String get configureEFISuccess => 'EFI の構成に成功しました';

  @override
  String get configureEFIFailed => 'EFIの構成エラーが発生しました！\n出力先フォルダを変更してください。';

  @override
  String get sponsorTitle => '開発者を支援';

  @override
  String get visitBilibili => '作者のBilibili';

  @override
  String get visitGithub => 'GitHub を表示';

  @override
  String get buyCoffeeTitle => '開発者にコーヒーを一杯奢る';

  @override
  String get buyCoffeeText =>
      'このツールが役立った場合は、開発者を自由に支援してください！サポートありがとうございます！\n\n作者の連絡先: QQ 766264141 または WX: JeoJay127。これ以外のプライベートな連絡先はありません。詐欺にご注意ください！';

  @override
  String get successCasesTitle => 'RapidEFI成功事例';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 ガイド';

  @override
  String get oclpIntro => '概要';

  @override
  String get oclpGpu => 'GPU パッチ';

  @override
  String get oclpWifi => 'WiFi パッチ';

  @override
  String get ssdtPlatform => 'プラットフォームパッチ';

  @override
  String get ssdtAudio => 'オーディオパッチ';

  @override
  String get ssdtGpuSpoof => 'GPU 偽装';

  @override
  String get ssdtDisableDevice => 'デバイス無効化';

  @override
  String get ssdtBrightness => '輝度パッチ';

  @override
  String get manualEFIConfig => '手動EFI構成';

  @override
  String get autoEFIConfig => '自動EFI構成';

  @override
  String get cpuSelection => 'CPU 選択:';

  @override
  String get platformSelection => 'プラットフォーム選択:';

  @override
  String get platformInfo => 'プラットフォーム情報:';

  @override
  String get targetMacOSVersion => 'ターゲット macOS バージョン:';

  @override
  String get smbiosModelSetup => 'SMBIOS モデル設定:';

  @override
  String get motherboardModelConfig => 'マザーボードモデル構成:';

  @override
  String get selectMotherboardModelTip => '(マザーボードモデルを選択して構成を適用)';

  @override
  String get platformGen => 'プラットフォーム世代';

  @override
  String get vendor => 'ブランド';

  @override
  String get motherboardModel => 'マザーボードモデル';

  @override
  String get pleaseSelect => '選択してください';

  @override
  String get selected => '選択済み: ';

  @override
  String get applySelectedConfig => '選択した構成を適用';

  @override
  String get noMatchingConfigEntries => '一致する構成項目はありません';

  @override
  String get pentiumCeleron => 'Pentium / Celeron';

  @override
  String get pentiumCeleronTip =>
      'Pentium または Celeron プロセッサは CPU 偽装が必要です。有効にしてください。\n注意: Pentium/Celeron の内蔵グラフィックスは通常サポートされません。';

  @override
  String get u62CpuTitle => 'U62 タイプ CPU';

  @override
  String get u62CpuTip =>
      '第10世代 Comet Lake U62 CPU (例: i3-10110U, i5-10210U 等) - 有効にしてください';

  @override
  String get macOSVersionSnippet =>
      '生成された EFI は選択した macOS バージョンから OS X El Capitan 10.11 まで下位互換性があります。';

  @override
  String get amdCores => 'AMD コア数:';

  @override
  String get ryzen7000to9000 => '7000~9000 シリーズ CPU';

  @override
  String get useAmdIgpuOutput => 'AMD iGPU を画面出力に使用';

  @override
  String get igpuConfigTitle => 'iGPU 構成';

  @override
  String get dgpuConfigTitle => 'dGPU 構成';

  @override
  String get audioDriver => 'オーディオドライバー:';

  @override
  String get defaultAppleALCDriver => '(デフォルト: AppleALC ドライバーを使用)';

  @override
  String get alcLayoutId => 'ALC レイアウト ID:';

  @override
  String get queryLayoutId => 'レイアウトIDを検索';

  @override
  String get hpetAcpiPath => 'HPET ACPI パス (オーディオ IRQ 修正):';

  @override
  String get fixIrq => 'IRQ修正';

  @override
  String get selectAudioLayoutIdTitle => 'オーディオレイアウト ID を選択';

  @override
  String get selectAudioLayoutIdTip => '(マウスホイールで選択後、確定をクリック)';

  @override
  String get ethernetDriver => 'イーサネットドライバー:';

  @override
  String get defaultNoEthernetDriver => '(デフォルト: イーサネットドライバーなし)';

  @override
  String get loadingData => 'データを読み込み中...';

  @override
  String get refreshHardwareInfo => 'ハードウェア情報を更新';

  @override
  String get importHardwareInfo => 'ハードウェアデータをインポート';

  @override
  String get exportHardwareReport => 'ハードウェアレポートを出力';

  @override
  String get exportAcpiTables => 'ACPI テーブルを出力';

  @override
  String get efiSettings => 'EFI 設定';

  @override
  String get outputEFI => 'EFI を出力';

  @override
  String get summaryView => '概要';

  @override
  String get detailedView => '詳細';

  @override
  String get legendGreen => '緑: 最新 OS をサポート (macOS Tahoe 26)';

  @override
  String get legendYellow => '黄: 一部の OS バージョンをサポート';

  @override
  String get legendRed => '赤: 完全非互換';

  @override
  String get noAcpiImported => 'ACPI 未インポート';

  @override
  String get personalizedEfiTitle => 'カスタム EFI 設定';

  @override
  String get applySettings => '設定を適用';

  @override
  String get configureEFIError => 'EFI の構成中にエラーが発生しました。\n出力パスを変更してください';

  @override
  String get selectConfigItems => '一括適用する構成項目を選択';

  @override
  String get newVersionFound => '新しいバージョンが利用可能です';

  @override
  String versionTag(Object tag) {
    return 'バージョン: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'リリース日: $date';
  }

  @override
  String get downloadNow => '今すぐダウンロード';

  @override
  String get close => '閉じる';

  @override
  String get generatingEfiAndSsdt => 'EFI とカスタム SSDT を生成中...';

  @override
  String get configuringEfiTitle => 'EFI を構成中';

  @override
  String get configureEfiSuccessTitle => 'EFI の構成に成功しました';

  @override
  String get configureEfiErrorTitle => 'EFI の構成に失敗しました';

  @override
  String get outputDirectory => '出力ディレクトリ:';

  @override
  String get openEfiDirectory => 'EFI ディレクトリを開く';

  @override
  String get select => '選択';

  @override
  String get selectFile => 'ファイルを選択';

  @override
  String get selectDirectory => 'ディレクトリを選択';

  @override
  String get hardwareReport => 'ハードウェアレポート';

  @override
  String get acpiTablesDirectory => 'ACPI テーブルディレクトリ';

  @override
  String get noAcpiFolderTip =>
      'ACPI テーブルディレクトリがない場合、インポートしたレポートからカスタム SSDT を生成できません。';

  @override
  String get hasAcpiFolderTip => '選択した ACPI テーブルディレクトリを使用してカスタム SSDT を生成します。';

  @override
  String get adminRightsRequired => '管理者権限が必要です';

  @override
  String get enterSystemPassword => 'システムパスワードを入力してください';

  @override
  String get import => 'インポート';

  @override
  String get optionalSelectIfMatching => '(オプション - 該当する場合チェック)';

  @override
  String get selectIfMatching => '(該当する場合チェック)';

  @override
  String get baseConfig => '基本構成';

  @override
  String get advanceConfig => '詳細構成';

  @override
  String get connectorCustomization => 'コネクタカスタマイズ';

  @override
  String get displayEdid => 'ディスプレイ EDID';

  @override
  String get nvidiaDgpu => 'Nvidia dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'AMD dGPU 偽装';

  @override
  String get above4gTitle => 'Above 4G Decoding 設定';

  @override
  String get addNpciBootArg => 'ブート引数 npci=0x2000 を追加';

  @override
  String get above4gTip =>
      'BIOS で Above 4G Decoding が無効な場合に推奨。有効な場合はチェックを外してください。';

  @override
  String get personalizedEfiIntroTip =>
      'すべての項目はオプションです。出力 EFI はこれらの設定に基づいて生成されます。';

  @override
  String get ssdtType => 'SSDT タイプ:';

  @override
  String get customSsdt => 'カスタム SSDT';

  @override
  String get presetSsdt => 'プリセット SSDT';

  @override
  String get cpuTypeLabel => 'CPU タイプ:';

  @override
  String get platformTypeLabel => 'プラットフォームタイプ:';

  @override
  String get selectAll => 'すべて選択';

  @override
  String get basicOfficialRecommend => '* 基本 (公式推奨)';

  @override
  String get recommendFixes => '* 推奨 (機能修復)';

  @override
  String get optionalEnhancements => '* オプション (機能向上)';

  @override
  String get personalizedPlatformTip =>
      'CPU、プラットフォーム、情報が自動検出されました。誤りがある場合は手動で変更できます。';

  @override
  String get pciPathLabel => 'GPU PCI パス:';

  @override
  String get pciPathHint => 'PCI パスを入力';

  @override
  String get spoofGpuIdLabel => '偽装 GPU ID:';

  @override
  String get selectSpoofGpuPlaceholder => '偽装する GPU を選択';

  @override
  String get gpuSpoofDataLoadError => 'GPU 偽装データの読み込みに失敗しました';

  @override
  String get injectEdidTitle => 'ディスプレイ EDID を注入 (256 または 512 16進文字):';

  @override
  String get injectEdidHint => 'ディスプレイ EDID を入力 (16進形式、スペース可)';

  @override
  String get edidHexError => 'EDID data contains non-hexadecimal characters!';

  @override
  String get edidLengthError => 'EDID length is not a multiple of 256!';

  @override
  String get edidInvalidToast => 'EDIDデータが無効です。確認してから入力してください!';

  @override
  String get details => '詳細情報';

  @override
  String get clearAllSelection => '全選択解除';

  @override
  String applySelected(Object count) {
    return '選択を適用 ($count 項目)';
  }

  @override
  String get getModdedOclp => '改造版OCLPを取得';

  @override
  String get getIntelModdedOclp => 'Intel専用改造版OCLPを取得';

  @override
  String get soundDriverCardTitle => 'オーディオドライバ:';

  @override
  String get soundDriverDefaultTip => '(デフォルトはAppleALCドライバ)';

  @override
  String get hpetAcpiPathTitle => '高精度タイマーACPIパス(オーディオIRQ修正用):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'オーディオレイアウトID選択 (DB: $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip => '(ホイールで選択後、確定をクリック)';

  @override
  String get nicDriverCardTitle => 'ネットワークドライバ:';

  @override
  String get nicDriverDefaultTip => '(デフォルトはネットワークドライバなし)';

  @override
  String get wifiBtCardTitle => 'Wi-Fi & Bluetoothドライバ:';

  @override
  String get wifiBtDefaultTip => '(デフォルトはWi-Fiドライバなし)';

  @override
  String get usbCardTitle => 'USBドライバ:';

  @override
  String get usbDefaultTip => '(デフォルトはUSBInjectAll)';

  @override
  String get selectUtbMap => 'UTBMapを選択';

  @override
  String get selectUtbMapHint => 'USBToolBoxで作成したUTBMap.kextを選択';

  @override
  String get releaseUsbOwnershipText =>
      '\'UEFI->Quirks->ReleaseUsbOwnership\'を有効化...';

  @override
  String get bootArgsCardTitle => 'ブート引数:';

  @override
  String get bootArgsDefaultTip => '(デフォルトは-vモード有効)';

  @override
  String get debugCategory => 'デバッグ';

  @override
  String get amfiSipCategory => 'AMFI/SIP関連';

  @override
  String get igpuCategory => '内蔵グラフィックス';

  @override
  String get dgpuCategory => '独立グラフィックス';

  @override
  String get blackScreenFixCategory => '画面暗转修正';

  @override
  String get above4gCategory => 'Above 4G Decoding';

  @override
  String get touchpadFixCategory => 'タッチパッド修正';

  @override
  String get othersCategory => 'その他';

  @override
  String get optionalKextsCardTitle => 'オプションKexts:';

  @override
  String get optionalKextsDefaultTip => '(オプションのドライバ)';

  @override
  String get graphicsCategory => 'グラフィックス';

  @override
  String get powerManagementCategory => '電源管理';

  @override
  String get sleepCategory => 'スリープ';

  @override
  String get diskCategory => 'ディスク';

  @override
  String get cpuCategory => 'CPU関連';

  @override
  String get amdPlatformCategory => 'AMDプラットフォーム';

  @override
  String get usbCategory => 'USB関連';

  @override
  String get sdCardCategory => 'SDカード';

  @override
  String get optionalSettingsCardTitle => 'オプション設定:';

  @override
  String get optionalSettingsDefaultTip => '(通常はデフォルトのまま)';

  @override
  String get tabBrand => 'ブランド';

  @override
  String get tabSpecialMotherboard => '特殊マザーボード';

  @override
  String get tabSipSetting => 'SIP設定';

  @override
  String get tabCpuRename => 'CPU名変更';

  @override
  String get tabUiScale => 'OpenCore UIスケール';

  @override
  String get tabAcpiConfig => 'ACPI設定';

  @override
  String get tabBooterConfig => 'Booter設定';

  @override
  String get tabKernelConfig => 'Kernel設定';

  @override
  String get tabUefiConfig => 'UEFI設定';

  @override
  String get processEfiTitle => 'EFI加工';

  @override
  String get processEfiSubTitle => '(RapidEFIで設定したEFIを再加工)';

  @override
  String get processEfiExpanderText =>
      'RapidEFIで設定されたEFIは、出力フォルダにconfigModelファイルを生成します。このファイルをここに読み込むことで再編集できます。';

  @override
  String get clearCurrentConfig => '現在の設定をクリア';

  @override
  String get importConfigModelFile => 'configModelファイルを読み込む';

  @override
  String get importingConfigModel => 'configModelを読み込み中...';

  @override
  String get releaseToReimport => 'ドロップしてconfigModelを再読み込み';

  @override
  String get dragConfigModelArea => 'ここにconfigModelファイルをドラッグ\nまたはクリックして選択';

  @override
  String get importFailedToast =>
      '読み込んだ設定データが無効です。正しいconfigModelファイルを読み込んでください。';

  @override
  String get changeEfiTitle => 'EFIタイトルの変更';

  @override
  String get modifyCurrentEfiName => '現在のEFI名を変更';

  @override
  String originalEfiName(String name) {
    return '元のEFI名: $name';
  }

  @override
  String get enterModifiedName => '変更後の名前を入力してください';

  @override
  String get deleteRecord => 'この記録を削除';

  @override
  String get exportThisEfi => 'このEFIをエクスポート';

  @override
  String get releaseToIdentifyHardware => 'ドロップしてハードウェアレポートとACPIテーブルを自動認識します';

  @override
  String get dragHardwareReportHere =>
      'このツールでエクスポートされたハードウェアレポートフォルダをドラッグします\n(sysInfo.txtとACPIディレクトリを自動認識)';

  @override
  String get invalidHardwareReportToast => '有効なハードウェアレポートファイルが認識されませんでした';

  @override
  String optionalSuffix(String title) {
    return '$title (オプション)';
  }

  @override
  String get notSelected => '未選択';

  @override
  String get verifyingAdminPassword => '管理者パスワードを検証中...';

  @override
  String get hardwareReportAcpiMissing =>
      '外部ハードウェアレポートがインポートされましたが、ACPIテーブルディレクトリが提供されていないため、SSDTをカスタマイズできません。';

  @override
  String get hwMemory => 'メモリ';

  @override
  String get hwCompatible => '互換性あり';

  @override
  String hwDeviceID(String id) {
    return 'デバイスID: $id';
  }

  @override
  String hwType(String type) {
    return '種類: $type';
  }

  @override
  String hwCapacity(String cap) {
    return '容量: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'インターフェース: $bus';
  }

  @override
  String hwModel(String model) {
    return 'モデル: $model';
  }

  @override
  String get hwStorage => 'ストレージ';

  @override
  String get hwStorageController => 'ストレージ\nコントローラー';

  @override
  String get hwBluetooth => 'Bluetooth';

  @override
  String get hwAudioCard => 'オーディオカード';

  @override
  String get hwAudioLayoutId => 'レイアウトID:';

  @override
  String get hwNetworkCard => 'ネットワークカード';

  @override
  String get hwMonitor => 'モニター';

  @override
  String hwResolution(String res, String hz) {
    return '解像度: $res @ $hz Hz';
  }

  @override
  String hwMonitorSize(String size) {
    return '($sizeインチ)';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return '接続GPU: $gpu';
  }

  @override
  String get hwInput => '入力';

  @override
  String get hwSDCard => 'SDカード';

  @override
  String hwDevice(String dev) {
    return 'デバイス: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'シリアル番号: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return '内蔵: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'セキュアブート: $status';
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
  String get hwAHCIUnknown => 'AHCI: 不明';

  @override
  String get hwEnabled => '有効';

  @override
  String get hwDisabled => '無効';

  @override
  String get hwCurrentBiosSettings => '現在のBIOS設定';

  @override
  String get hwBiosNote =>
      'Hackintoshの注意事項：\n1. 赤いテキストについては、BIOSで設定を変更して青色になるようにしてください。\n2. 青いテキストは、ほとんどの場合で適切な設定を示しています。\nセキュアブート: 必ず無効にしてください (そうしないと、OCのような署名されていないブートローダーは正常に起動できません)。\nCSM: ほとんどの場合、無効にすることを推奨します (Intel 第4/第5世代モバイルiGPU、X99プラットフォーム、一部のRX460ではCSMを有効にする必要があります)。\nResizable BAR: BIOSで無効にすることを推奨します。\nAbove 4G Decoding: BIOSで有効にし、npciパラメータを削除することを推奨します。\nAHCI (SATAディスクモード): 必ず有効にしてください。';

  @override
  String hwBit(String arch) {
    return '$arch ビット';
  }

  @override
  String get hwVirtualizationEnabled => '仮想化: 有効';

  @override
  String get hwVirtualizationDisabled => '仮想化: 無効';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$coresコア$threadsスレッド';
  }

  @override
  String hwInstructionSet(String simd) {
    return '命令セット: $simd';
  }

  @override
  String hwCore(String core) {
    return 'コア: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'スプーフIDが必要: $id';
  }

  @override
  String get hwGPU => 'グラフィックカード';

  @override
  String get hwIncompatible => '非互換';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'マザーボード';

  @override
  String hwBrand(String brand) {
    return 'ブランド: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'チップセット: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALCは複数のレイアウトIDをサポートしています。異なるIDはオーディオインターフェイスの可用性に影響を与える可能性があります。';

  @override
  String get manualNvidiaInfoText =>
      'サポートされているNvidia GPUシリーズは次のとおりです:\n• Teslaシリーズ（8000〜300シリーズ）: macOS High Sierra 10.13.xまでネイティブサポート（NVCAPの修正が必要な場合があります）、以降のバージョンではOCLPパッチが必要です（Metal非対応）\n例: 8600GT, 9600GT, GT210, GT220, GT240など。古すぎるため推奨されません!\n• Keplerシリーズ（600〜800シリーズ）: macOS Big Sur 11.xまでネイティブサポート、以降のバージョンではOCLPパッチが必要です（Metal対応、真のドライバー）\nKeplerコア: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Blackなど\nKeplerコアプロフェッショナルカード: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000など\n• Fermi, Maxwell, Pascalシリーズ: macOS High Sierra 10.13.xまでWebdriverサポート。macOS Big Sur 11.x以降の場合、以下の起動引数を確認してOCLPパッチを適用してください（Metal非対応、偽のドライバー）\nFermiシリーズ: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740など\nMaxwellシリーズ: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980など\nPascalシリーズ: GTX1050, GTX1060, GTX1070, GTX1080など\n非対応のNvidia GPUシリーズ（11シリーズ以上は対応していません）:\n• 16〜50シリーズ: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070など';

  @override
  String get manualEdidInfoText =>
      '1. 通常、Intel 第6〜10世代iGPUのブラックスクリーン/信号なしの問題を修正するために使用されます（dGPUのEDIDはここでは処理されません）。（典型的な症状: キーボードのCaps Lockは機能するが、モニターは信号なしのブラックスクリーン）\n2. iGPUのHDMI出力を使用する500シリーズのデスクトップマザーボード（H510/B560/H570/Q570/Z590/W580）の場合、実際のモニターEDIDの注入が必須です。そうでない場合はブラックスクリーンの可能性が高くなります。\n3. モニターEDIDの取得方法:\nWindows環境で、RapidEFIツールまたはhdinfoツールを使用してEDIDを取得します（サードパーティ製ツールも使用できますが、EDIDのフォーマットはご自身で行う必要があります）:\n1). RapidEFI v4.x以降を開き、「EFI構成」->「EFI自動構成」->「詳細構成」をクリックします（hdinfoを使用する場合は「詳細構成」をクリック）。\n2). ハードウェア情報の自動検出が完了するのを待ち、モニターセクションの横にあるEDIDコードをクリックして取得します（クリップボードに正常にコピーされたというプロンプトが表示されます）。\n3). このページに戻り、入力ボックスにEDIDを貼り付けます。\n4. EDIDを注入する前に、「詳細構成」で対象のAAPL0Xインターフェイスを確認してください。不明な場合は、実際のHDMI修正プランに基づいて選択してください。\n5. EDIDデータは通常128バイト（256の16進文字）または256バイト（512の16進文字）です。そうでない場合は、入力前によく確認してください!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return '現在のFramebuffer: $fb。WhateverGreenのドキュメントに従ってframebuffer-conX-alldataを生成します。';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      '現在のFramebufferは構造化された推奨事項をサポートしていません。既存の生値を削除し、サポートされているiGPU基本構成を再選択してください。';

  @override
  String get manualAddConnectorTooltip => 'コネクタパッチを追加';

  @override
  String get manualConnectorLabel => 'コネクタ';

  @override
  String get manualIndexLabel => 'インデックス';

  @override
  String get manualBusIdLabel => 'バスID';

  @override
  String get manualConnectorTypeLabel => 'タイプ';

  @override
  String manualOldConnector(String label) {
    return '$label (レガシー)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'con$index パッチを削除';
  }

  @override
  String get manualUnparseableValue => '解析不可能な生値';

  @override
  String get manualDeleteAndReadd => '削除して構造化コネクタパッチを再追加してください';

  @override
  String get manualDeleteUnparseableTooltip => '解析不可能なパッチを削除';

  @override
  String get manualBatteryDriver => 'バッテリードライバー';

  @override
  String get manualKeyboardTouchpadDriver => 'キーボードとタッチパッドのドライバー';

  @override
  String get manualSensorDriver => 'センサードライバー (必要な場合を除き推奨されません)';

  @override
  String get manualKernelTrimStrategy => 'SSD Trim戦略';

  @override
  String get manualKernelPowerManagement => '電源管理';

  @override
  String get manualKernelDummyPowerManagement =>
      '電源管理の無効化(DummyPowerManagement)。NullCpuPowerManagement.kextの代わり';

  @override
  String get manualKernelQuirksDefault => 'Kernel - Quirksはデフォルトを維持することをお勧めします';

  @override
  String get manualUefiProvideConsoleGop =>
      'ProvideConsoleGopの癖はデフォルトで有効になっています';

  @override
  String get manualUefiDriversHfs => 'UEFI-Drivers (HFSドライバーの問題を修正)';

  @override
  String get manualUefiOutputBootUI => 'UEFI - Output (ブートUIの問題を修正)';

  @override
  String get manualSpecialMotherboardTip => 'オプション - マザーボードが一致する場合はチェック';

  @override
  String get manualCsrSettingTip => 'オプション - 必要に応じて設定、デフォルトでSIPは無効';

  @override
  String get manualRenameCpuNameTip => 'オプション - CPU名をカスタマイズ';

  @override
  String get manualRenameCpuNameLabel => 'CPU名を入力（空白でWindowsのCPU名を表示）:';

  @override
  String get manualRenameCpuNameHint => 'ここにCPU名を入力';

  @override
  String get manualBrandTip => 'オプション - ブランドが一致する場合はチェック';

  @override
  String get manualBooterPlan1 => 'プラン 1';

  @override
  String get manualBooterPlan2 => 'プラン 2';

  @override
  String get manualBooterPlan3 => 'プラン 3';

  @override
  String get manualBooterPlan4 => 'プラン 4';

  @override
  String get manualBooterEbFix => 'EB修正（オプション - 通常はデフォルトでOK）:';

  @override
  String get manualAcpiPatch => 'ACPI - パッチ';

  @override
  String get manualAcpiSsdt => 'ACPI - SSDT';

  @override
  String get manualBluetoothNvram => 'Bluetooth NVRAMパラメータ:';

  @override
  String get manualUsbWifiGithub => 'chris1111のリポジトリにアクセス';

  @override
  String get manualUsbWifiKexts => 'USB WiFiに必要なKextsを追加（クライアントのインストールも必要）';

  @override
  String get manualWifiCardSupport => 'Monterey 12以降はOCLPパッチが必要です!!!';

  @override
  String get manualWifiAtheros => 'Atheros';

  @override
  String get manualWifiIntel => 'Intel';

  @override
  String get manualWifiBrcm => 'Broadcom (Brcm)';

  @override
  String get manualWifiBluetoothDriver => 'Bluetoothドライバー';

  @override
  String get manualWifiItlwmPlan => 'プラン 2、itlwmを使用。プラン 1と競合します!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'プラン 1、AirportItlwmを使用。プラン 2と競合します!!!';

  @override
  String get manualWifiAddAllDrivers => 'すべてのWiFiドライバーを追加（サイズが大きい）';

  @override
  String get manualLaptopMainly => '（主にラップトップ用）';

  @override
  String get manualLaptopRelatedDrivers => 'ラップトップ関連ドライバー:';

  @override
  String get manualLaptopOtherFixes => 'その他の修正';

  @override
  String get manualLaptopOtherFixesTip => 'その他の修正（必要でない限り非推奨）';

  @override
  String get manualMotherboardSelectAll => 'すべて選択 / 選択解除';

  @override
  String get manualMotherboardDetails => '詳細';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total 選択済み)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return '$model から $count 個の設定を適用';
  }

  @override
  String get manualMotherboardFromMbconfs => 'mbconfsから';

  @override
  String get manualIgpuRemark => '⚠️ 備考';

  @override
  String get manualIgpuSelectCpu => 'CPUを選択';

  @override
  String get manualIgpuLoadConfig => 'CPUモデルからiGPU設定を読み込む';

  @override
  String get manualIgpuSelectProperties => '適用するプロパティを選択';

  @override
  String get manualIgpuPresetScheme => 'プリセットスキーム';

  @override
  String get manualIgpuSelectGen => '世代を選択';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return '選択中: $model  $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'CPUモデル';

  @override
  String get manualIgpuMatchOrNot => '一致する場合はチェック';

  @override
  String get manualIgpuCpuGen => 'CPU世代';

  @override
  String get manualIgpuByCpuModel => 'CPUモデル別';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return '$modelから$igpu iGPU設定を読み込み、$count個のプロパティを書き込みました';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return '$model ($igpu) から';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'CPUの世代とモデルを選択し、適用するプロパティをチェックしてください';

  @override
  String get manualIgpuModel => 'モデル';

  @override
  String get manualFakeGpuSelect => 'スプーフィングするGPUを選択';

  @override
  String get settingsThemeColors => 'カラーテーマ';

  @override
  String get settingsThemeDefault => 'デフォルト';

  @override
  String get sharedInvalidInput => '無効な入力';

  @override
  String sharedRequiresHexChars(String length) {
    return '$length桁の16進数文字が必要です';
  }

  @override
  String get sharedExample73BF => '例: 73BF';

  @override
  String get sharedTipsLengthMustMatch => 'tipsの長さはchoicesと一致する必要があります';

  @override
  String sharedCpuInfo(String description) {
    return '[CPU情報]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'ネイティブサポートされるmacOSの最終バージョン: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[BIOSで無効化を推奨]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'パッチでサポートされるmacOSのバージョン: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[BIOSで有効化を推奨]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'ネイティブサポートされるmacOSの初期バージョン: $version';
  }

  @override
  String get sharedInvalidAcpiPath => '無効なACPIパス';

  @override
  String get sharedFillAcpiPath => 'ACPIパスを入力';

  @override
  String get sharedFillPciPath => 'PCIパスを入力';

  @override
  String get sharedInvalidPciPath => '無効なPCIパス';

  @override
  String get sharedGetModifiedOclp => '変更されたOCLPを取得';

  @override
  String hwConfigModelGenerated(String details) {
    return 'ConfigModelが生成されました: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'ハードウェア情報の取得に失敗しました: $e';
  }

  @override
  String get hwAdminPwdIncorrect => '管理者パスワードが間違っています。ACPIテーブルをエクスポートできません';

  @override
  String get hwNoNativeInfoExportable => 'エクスポート可能なネイティブハードウェア情報がありません';

  @override
  String get hwOutputtingOpencore => 'OpenCore EFIを出力中...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'ネイティブACPIテーブルのエクスポートに失敗しました: $error';
  }

  @override
  String get hwSsdtProcessFailed => 'SSDTカスタマイズプロセスが失敗しました。';

  @override
  String get hwConfigRuleRefactoring => 'ハードウェアConfigModelの生成ルールをリファクタリング中';

  @override
  String get hwQueryUnsupported => '現在のプラットフォームはハードウェア情報のクエリをサポートしていません';

  @override
  String hwPreparingSsdt(String items) {
    return 'SSDTをカスタマイズする準備中: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'これはインポートされた外部ハードウェアレポートです。エクスポートする前にネイティブハードウェア情報を更新してください';

  @override
  String get hwRefreshingInfo => 'ハードウェア情報を更新中';

  @override
  String get hwSsdtProcessEnded => 'SSDTカスタマイズプロセスが終了しました。';

  @override
  String get hwInfoUnsupported => 'ハードウェア情報には現在対応していません';

  @override
  String get hwEfiWrittenExtracting =>
      'EFIの書き込みが完了しました。ACPIの抽出とSSDTのカスタマイズを開始します...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'EFIの構成に失敗しました: $error';
  }

  @override
  String get hwReportFolderCleanFailed => 'ハードウェアレポートフォルダーのクリーンアップに失敗しました';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'ハードウェアレポートフォルダーのクリーンアップに失敗しました: $error';
  }

  @override
  String get hwExportingNativeReport => 'ネイティブハードウェアレポートをエクスポート中...';

  @override
  String get hwAdminAuthCanceled => '管理者の承認がキャンセルされました。ACPIテーブルはエクスポートされません';

  @override
  String get hwImportedNoAcpiDir =>
      '外部ハードウェアレポートがインポートされましたが、ACPIテーブルディレクトリが指定されていません。SSDTカスタマイズは無効です。';

  @override
  String get hwExportAcpiUnsupported =>
      '現在のプラットフォームはACPIテーブルのエクスポートをサポートしていません';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'ハードウェアレポートが $reportDirectory にエクスポートされました、$msg';
  }

  @override
  String get hwInfoNotJson => 'ハードウェア情報ファイルがJSONオブジェクトではありません';

  @override
  String get hwUnsupported => '未対応';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'ACPIテーブルの一時ディレクトリのクリーンアップに失敗しました: $error';
  }

  @override
  String get hwEfiConfigDone => 'EFIの設定が完了しました。';

  @override
  String hwEfiConfigError(String error) {
    return 'EFIの設定中にエラーが発生しました: $error';
  }

  @override
  String get hwNativeAcpiExportFailed => 'ネイティブACPIテーブルのエクスポートに失敗しました';

  @override
  String get hwAcpiToolNotReady => 'ACPIエクスポートツールの準備ができていません';

  @override
  String get hwFailed => '失敗';

  @override
  String hwImportReportFailed(String e) {
    return 'ハードウェアレポートのインポートに失敗しました: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'ネイティブACPIテーブルのエクスポートが完了しました: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'ACPIテーブルのエクスポートに失敗しました: 有効なACPIテーブルが見つかりません';

  @override
  String get hwUsingOriginalSsdt => 'EFIの元のSSDTを使用し、SSDTのカスタマイズをスキップします。';

  @override
  String get hwWaitingRefresh => 'ハードウェア情報の更新を待機中';

  @override
  String get hwInfoLoaded => 'ハードウェア情報が正常にロードされました';

  @override
  String hwAcpiExportedTo(String path) {
    return 'ACPIテーブルが $path にエクスポートされました';
  }

  @override
  String get hwStartConfigEfi => 'EFIの設定を開始します...';

  @override
  String get hwInfoLoadFailed => 'ハードウェア情報の読み込みに失敗しました';

  @override
  String get hwCache => 'キャッシュ';

  @override
  String get hwInfoImportDone => 'ハードウェア情報のインポートが完了しました';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'ハードウェアレポートとACPIテーブルが $reportDirectory にエクスポートされました';
  }

  @override
  String get hwAcpiDirInvalid => 'ACPIテーブルディレクトリが無効です。SSDTカスタマイズは利用できません';

  @override
  String get hwExportingNativeAcpi => 'ネイティブACPIテーブルをエクスポート中...';

  @override
  String get hwGeneratingConfigModel => 'ハードウェア情報に基づいてConfigModelを生成中...';

  @override
  String get hwInfoImported => 'ハードウェア情報がインポートされました';

  @override
  String get hwAcpiExportFailedOrUnsup => 'ACPIテーブルのエクスポートに失敗したか、サポートされていません';

  @override
  String get hwReportFolderCreateFailed => 'ハードウェアレポートフォルダーの作成に失敗しました';

  @override
  String get hwNoAdminPwd => '管理者パスワードが入力されていません。ACPIテーブルをエクスポートできません';

  @override
  String get hwEfiConfigFailedCheck => 'EFIの設定に失敗しました。出力パスまたはログを確認してください。';

  @override
  String get hwLoadingInfo => 'ハードウェア情報をロード中';

  @override
  String get hwDone => '完了';

  @override
  String get hwAcpiExportFailedProcess =>
      'ACPIテーブルのエクスポートに失敗しました: エクスポートプロセスの実行に失敗しました';

  @override
  String get hwIgpuType => 'iGPU (内蔵グラフィックス)';

  @override
  String get hwGpuCompatible => '互換性あり';

  @override
  String get hwGpuIncompatibleNoDisplay => '互換性なし、直接画面出力なし';

  @override
  String get hwGpuIncompatible => '互換性なし';

  @override
  String get hwLaptop => 'ノートPC';

  @override
  String get hwGpuLoadingCompat => '互換性を読み込み中';

  @override
  String get hwGpuLimitedCompat => '限定的な互換性';

  @override
  String get hwClickToCopy => 'クリックしてコピー';

  @override
  String get hwCopiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get linkCantOpen => 'リンクを開けません';

  @override
  String get clickToCopy => 'クリックしてコピー';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get gpuCard => 'GPU';

  @override
  String gpuDeviceId(String id) {
    return 'デバイスID: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'コア: $codename';
  }

  @override
  String get gpuCompatible => '互換性あり';

  @override
  String get gpuIncompatible => '互換性なし';

  @override
  String get gpuIncompatibleNoDisplay => '互換性なし、直接出力なし';

  @override
  String get gpuLimitedCompat => '限定的な互換性';

  @override
  String get gpuLoadingCompat => '互換性を読み込み中';

  @override
  String gpuSpoofId(String id) {
    return 'スプーフIDが必要: $id';
  }

  @override
  String get bootArgVerbose => '-v 詳細モードを有効化（ブート時のデバッグ出力を表示）';

  @override
  String get bootArgKeepsyms =>
      'カーネルクラッシュ時にシンボル情報を出力。debug=0x100と併用。初回デバッグ時に強く推奨。';

  @override
  String get bootArgDebug0x100 =>
      'カーネルパニック時の自動再起動を防止し、クラッシュログを確認可能にする。初回デバッグ時に強く推奨。';

  @override
  String get bootArgWatchdog0 => 'ウォッチドッグを無効化し、デバッグ中の誤ったパニック再起動を防止。';

  @override
  String get bootArgSlide0 => 'KASLRを無効化し、メモリ競合によるカーネルパニックを修正。デバッグ用。';

  @override
  String get bootArgNoCompatCheck =>
      'ブート時のモデル互換性チェックをスキップして禁止サインを回避。インストール時には効果なし。';

  @override
  String get bootArgCpus1 =>
      'CPUコアを1つのみ有効化（X58/X79/X99/X299などのサーバーCPUのカーネルパニック対策）。';

  @override
  String get bootArgBetaFix =>
      '最新macOS（主にBeta版）で発生する可能性のある問題（音声、Bluetooth、CPU周波数の異常など）を修正。';

  @override
  String get bootArgAmfi0x80 =>
      '新しいGPU（HD4000以上、GT710などのKepler以上）またはWi-Fiドライバーのパッチ適用時にAMFIを無効化。SIP無効時のみ有効。';

  @override
  String get bootArgAmfiGetOut =>
      '古いGPU（GT240など）またはWi-Fiパッチ適用時にAMFIを無効化。amfi=0x80と同時使用不可。SIP無効時のみ有効。';

  @override
  String get bootArgIpcControl => 'AMFI無効後のアプリクラッシュ（百度クラウドなど）を修正。SIP無効時のみ有効。';

  @override
  String get bootArgAmfiPassBeta =>
      '最新のmacOS Tahoe 26でAMFIPass.kextを正常に動作させてAMFIセキュリティチェックを回避。';

  @override
  String get bootArgRevpatch =>
      'SIPまたはSecureBootModelを無効化後のmacOS OTA更新問題を修正し、カスタムCPU名の表示も修正。';

  @override
  String get bootArgDisableGfxFirmware =>
      'Apple Graphics Firmwareのロードを無効化して起動時のハングを防止（Intel iGPUのみ）。';

  @override
  String get bootArgWegNoIgpu =>
      'Intel iGPUを無効化（iGPUが動作しないか、ハードウェアアクセラレーションをサポートしない場合に推奨）。';

  @override
  String get bootArgIgfxVesa =>
      'Intel iGPUアクセラレーションを無効化（OCLPパッチ後に起動しない場合、デバッグ専用）。';

  @override
  String get bootArgIgfxRpsc =>
      'Intel iGPUのパフォーマンスを修正・改善（4K HEVCエンコード、解像度、FPS問題など）。';

  @override
  String get bootArgIgfxMpc =>
      'iGPUの解像度問題を修正し、最大ピクセルクロック制限を解除してmacOSのデフォルト制限を取り除く。';

  @override
  String get bootArgGfxfw2 =>
      'iGPUの完全ファームウェアロードを有効化してパフォーマンスを向上。起動不能になる場合があるため注意。';

  @override
  String get bootArgCdclk =>
      '10世代Ice LakeのCore Display Clock（CDCLK）周波数が低すぎることによるカーネルパニックを修正。';

  @override
  String get bootArgIgfxdbeo =>
      '10世代Ice Lakeでドライバーがプリ割り当てDVMTメモリサイズを誤って計算することによるカーネルパニックを修正。';

  @override
  String get bootArgIceLakeDisplay =>
      '10世代Ice Lakeノートパソコンの起動時に7〜15秒間続く画面乱れを修正。';

  @override
  String get bootArgIgfxNoTelemetry =>
      '起動時のiGPUテレメトリモジュールのロードを無効化。一部のノートPC（特にChromebook）で起動時にフリーズすることがある。';

  @override
  String get bootArgWegNoEgpu =>
      '外部GPU（dGPU）を無効化（Intel dual-GPUノートでdGPU（主にNVIDIA）が動作しない場合に推奨）。';

  @override
  String get bootArgNvDisable => 'NVIDIAドライバーを無効化（互換性のないNVIDIA GPUのデバッグ専用）。';

  @override
  String get bootArgUnfairGva =>
      'AMD GPUのハードウェアDRMサポートを修正（対応AMDGPUでDRM保護されたコンテンツを視聴可能にする）。';

  @override
  String get bootArgRadpg15 =>
      '古いAMD GPU（HD7750、HD7850などGCNコア）の表示乱れ（スクランブル/黄色い画面）を修正。';

  @override
  String get bootArgAmdNoAccel =>
      'ATI/AMD GPUアクセラレーションを無効化（OCLPパッチ後に起動しない場合、デバッグ専用）。';

  @override
  String get bootArgRaddvi => '古いAMD GPU（290X、370など）のDVI出力表示を修正。';

  @override
  String get bootArgRadcodec =>
      '公式非サポートのAMD GPU（RX550 Lexaコアなど）のVDAハードウェアビデオエンコードサポートを修正。';

  @override
  String get bootArgNgfxFermi =>
      'macOS Big Sur 11以降でFermi/Maxwell/Pascal世代の古いNVIDIA GPU（GT610、GTX750、GTX960、GTX1050）のドライバー問題を修正。システム起動後にOCLPのGPUパッチ適用が必要！Keplerは不要。';

  @override
  String get bootArgApplbkl3 => 'AMD Radeon RX 5000シリーズGPUのPWMバックライト制御を有効化。';

  @override
  String get bootArgAgdpmodIgnore =>
      '一部のGPUでのブラック画面や表示異常を修正するためAppleGraphicsDevicePolicy.kextの制限を完全に無視。WhateverGreen.kextと併用。';

  @override
  String get bootArgAgdpmodPikera =>
      'AMD Navi RX5XXX/RX6XXX GPU（RX5500、RX5600、RX5700、RX6600、RX6800、RX6900など）の起動時ブラック画面を修正。WhateverGreen.kextと併用。';

  @override
  String get bootArgAgdpmodVit9696 =>
      'RX470/RX570 GPUでスリープ/ウェイク後のブラック画面を修正するためboard-idチェックを無効化。WhateverGreen.kextと併用。';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Intel第3世代以下プラットフォームでVentura以降のAMD RX5XX/RX5XXX/RX6XXX GPUのブラック画面を修正。起動後にOCLPパッチを適用し、その後この引数を削除。';

  @override
  String get bootArgBrcmfx =>
      '一部のBroadcom Wi-FiカードのHK（香港）に変更することで速度低下を修正。ルーターのチャンネル変更でも改善可能。';

  @override
  String get bootArgVsmcgen => 'ramrodコードのハングとSMCエミュレーターの破損問題を修正。';

  @override
  String get bootArgSwdPanic =>
      'スリープ後の再起動を防いで、カーネルクラッシュログの収集とスリープ問題のデバッグを容易にする。';

  @override
  String get bootArgCtrsmt =>
      'Intel第12世代以降のハイブリッド（P+Eコア）CPUのトポロジー検出とスケジューリングを改善。パフォーマンス向上は保証されない。CpuTopologyRebuild.kext必須。';

  @override
  String get bootArgDarkwake0 =>
      'Darkwakeモードを完全に無効化し従来のスリープモードを使用。ウェイク時ブラック画面や自動ウェイク問題を主に修正。';

  @override
  String get bootArgForceRenderStandby =>
      'iGPU RC6レンダリングスタンバイを無効化し、スリープ中にiGPU RC6が引き起こすNVMeカーネルパニックを修正。';

  @override
  String get bootArgI2cForcePolling =>
      'I2Cトラックパッドを割り込み駆動モードではなくポーリングモードで動作させる（割り込みモードは通常SSDTのカスタマイズが必要）。';

  @override
  String get kextLiluDesc => 'macOSに拡張性と互換性を提供する必須基盤ドライバー。すべてのプラグイン型kextの依存関係。';

  @override
  String get kextVirtualSMCDesc =>
      '必須SMCエミュレーター。非Appleハードウェア上でApple SMCをシミュレートし、センサー、ファン制御、電源管理を提供。これがないとmacOSは動作しない。';

  @override
  String get kextWhateverGreenDesc =>
      'GPUグラフィクスドライバーサポート。ほとんどのユーザーに強く推奨。MacPro7,1でAMD dGPU（RX460、RX560以上）は除外可能。NootRX/NootedRedとは通常競合するため、インストール時は同時選択不可。';

  @override
  String get kextAppleALCDesc =>
      'AppleALCを使用してオンボードオーディオコーデックをスプーフィング（より完全なソリューション、推奨選択肢）。';

  @override
  String get kextVoodooHDADesc =>
      '万能オーディオドライバーVoodooHDA（ブート時ロード、macOS Big Sur 11.2.3以下のみサポート。それ以上のバージョンはシステムカーネル拡張フォルダーへの注入が必要）。';

  @override
  String get kextUSBInjectAllDesc =>
      '汎用USB注入ソリューション。USBカスタマイズを行っていない場合のデフォルト選択。';

  @override
  String get kextUSBToolBoxDesc =>
      'USBToolBoxソリューション。カスタマイズされたUTBMap.kextと組み合わせて使用。';

  @override
  String get kextBatteryV1Desc => 'バッテリードライバーソリューション1（Intel第3世代以下のノートPC向け）。';

  @override
  String get kextBatteryV2Desc => 'バッテリードライバーソリューション2（Intel第3世代以降のノートPC向け）。';

  @override
  String get kextAmbientLightDesc =>
      '環境光センサー（画面自動輝度）。環境光センサーがない場合は使用しないでください（問題が発生する可能性あり）。';

  @override
  String get kextAsusNBFnKeysDesc =>
      'ASUSノートPCのファン制御、電源管理、その他システムセンサーの最適化。非ASUS機器には非推奨。';

  @override
  String get kextLenovoDesc =>
      'Lenovoノートのファン制御、電源管理、その他システムセンサーの最適化。Lenovo以外の機器には非推奨。';

  @override
  String get kextDellDesc => 'Dellノート専用センサー、より正確なファン監視と制御。Dell以外の機器には非推奨。';

  @override
  String get kextNootRXDesc =>
      '公式非サポートのRX6XXX dGPU（RX6700、RX6750XT、RX6750GREなど）をサポート。WhateverGreenと競合するため、インストール時は同時選択不可。';

  @override
  String get kextBatteryFixDesc => 'バッテリー読み取り修正、一部のバッテリー表示問題を修復。';

  @override
  String get kextNVMeFixDesc =>
      '非Apple NVMe SSDの互換性を向上させ、アイドル時の消費電力を削減。互換性のないNVMeドライブはクラッシュが継続する場合あり。互換性の高いNVMeでもこのドライバーでカーネルパニックが発生することがあるため注意。';

  @override
  String get kextFeatureUnlockDesc =>
      '非サポートのMacモデルでユニバーサルコントロール、Sidecarなどの機能をアンロック。';

  @override
  String get kextHibernationFixDesc => '一般的なハイバネーションとスリープ関連の問題を修正。';

  @override
  String get kextHoRNDIS => 'macOSでUSB経由のAndroidデバイスのネットワークテザリングを使用可能にする。';

  @override
  String get kextCPUFriendDesc =>
      'CPU周波数スケーリングドライバー。主に第11世代以降のプラットフォームでMacPro7,1の周波数スケーリングサポートを提供。';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'CPUFriendの補完データドライバー。特定のマシンモデルのCPU周波数スケーリングデータを提供。';

  @override
  String get kextAppleIGHDA => '一部のシステムでIntel iGPU HDMI音声問題を修正。';

  @override
  String get kextNoTouchID =>
      'Apple IDとiCloudにログインできない問題を修正。通常は有線LANカードのないノートPC向け。';

  @override
  String get kextAppleRTCDesc =>
      '新しいプラットフォームでmacOS AppleRTCとPC BIOS間の競合を修正（RTCによるハング、突然の再起動、スリープからの即時ウェイクなど）。';

  @override
  String get kextPS2KBMouseDesc =>
      'PS/2キーボードとマウスドライバー（PS/2丸ポートを持つデスクトップマザーボード向け）。';

  @override
  String get kextPS2KeyboardDesc =>
      'PS/2キーボードドライバー（PS/2丸ポートを持つデスクトップマザーボード向け）。';

  @override
  String get kextPS2MouseDesc => 'PS/2マウスドライバー（PS/2丸ポートを持つデスクトップマザーボード向け）。';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Microsoft Surface専用キーボードおよびトラックパッドドライバー。';

  @override
  String get kextBrightnessKeysDesc => '輝度ショートカットキーの修正。';

  @override
  String get kextGenericUSBXHCIDesc =>
      '古いプラットフォームまたはAMDプラットフォームのUSB 3.0コントローラー互換性修正。';

  @override
  String get kextXLNCUSBFixDesc =>
      '古いAMDプラットフォーム（FM1/FM2/AM3）のUSBコントローラー互換性問題を修正。';

  @override
  String get kextRealtekCardReaderDesc =>
      'Realtek SDカードリーダードライバー（RealtekCardReaderFriendと組み合わせて使用）。';

  @override
  String get kextRadeonSensorDesc =>
      'AMD Radeon GPUのパフォーマンスを最適化するが、一部のシナリオでシステムクラッシュや起動不能が発生する可能性あり — 注意して選択。';

  @override
  String get hwStatusIdle => 'ハードウェア情報の更新を待機中';

  @override
  String get hwStatusLoading => 'ハードウェア情報を読み込み中';

  @override
  String get hwStatusRefreshing => 'ハードウェア情報を更新中';

  @override
  String get hwStatusComplete => 'ハードウェア情報の読み込みが完了しました';

  @override
  String get hwStatusFailed => 'ハードウェア情報の読み込みに失敗しました';

  @override
  String get hwStatusUnsupported => 'ハードウェア情報は現在サポートされていません';

  @override
  String get hwStatusImported => 'ハードウェア情報のインポートが完了しました';

  @override
  String get hwPlatformUnsupported => '現在のプラットフォームはハードウェア情報クエリをサポートしていません';

  @override
  String hwFetchFailed(String error) {
    return 'ハードウェア情報の取得に失敗しました: $error';
  }

  @override
  String get hwExportWarning =>
      'これはインポートされたレポートです。エクスポートする前にローカルハードウェア情報を更新してください。';

  @override
  String get hwNoLocalInfo => 'エクスポート可能なローカルハードウェア情報がありません';

  @override
  String get hwFolderCleanFailed => 'ハードウェアレポートフォルダーのクリーンアップに失敗しました';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'ハードウェアレポートフォルダーのクリーンアップに失敗しました: $error';
  }

  @override
  String get hwFolderCreateFailed => 'ハードウェアレポートフォルダーの作成に失敗しました';

  @override
  String get hwExporting => 'ローカルハードウェアレポートをエクスポート中...';

  @override
  String hwExportSuccess(String path) {
    return 'ハードウェアレポートとACPIテーブルが $path にエクスポートされました';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'ハードウェアレポートは $path にエクスポートされました、$error';
  }

  @override
  String get hwAcpiExporting => 'ローカルACPIテーブルをエクスポート中...';

  @override
  String get hwAcpiExportFailed => 'ローカルACPIテーブルのエクスポートに失敗しました';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'ローカルACPIテーブルのエクスポートが完了しました: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'ローカルACPIテーブルのエクスポートに失敗しました: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      '現在のプラットフォームはACPIテーブルのエクスポートをサポートしていません';

  @override
  String get hwAcpiAuthCancelled => '管理者権限がキャンセルされました。ACPIテーブルはエクスポートされていません。';

  @override
  String get hwAcpiNoPassword => '管理者パスワードが入力されていません。ACPIテーブルをエクスポートできません。';

  @override
  String get hwAcpiWrongPassword => '管理者パスワードが正しくありません。ACPIテーブルをエクスポートできません。';

  @override
  String get hwImportNotJson => 'ハードウェア情報ファイルがJSONオブジェクトではありません';

  @override
  String get hwImportSuccess => 'ハードウェア情報がインポートされました';

  @override
  String get hwImportAcpiInvalid => 'ACPIテーブルディレクトリが無効です。カスタムSSDTは利用できません。';

  @override
  String hwImportFailed(String error) {
    return 'ハードウェアレポートのインポートに失敗しました: $error';
  }

  @override
  String get hwConfigStart => 'EFIの構成を開始します...';

  @override
  String get hwConfigGenerating => 'ハードウェア情報からConfigModelを生成中...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'カスタムSSDTを準備中: $items';
  }

  @override
  String get hwConfigSsdtSkip => 'EFIオリジナルのSSDTを使用し、カスタムSSDTをスキップします。';

  @override
  String get hwConfigSsdtDisabled =>
      '外部ハードウェアレポートをインポートしましたが、ACPIテーブルディレクトリがありません。カスタムSSDTは無効です。';

  @override
  String get hwConfigExporting => 'OpenCore EFIを出力中...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'EFI構成に失敗しました: $error';
  }

  @override
  String get hwConfigRebuilding => 'ハードウェア自動生成ConfigModelルールをリファクタリング中';

  @override
  String get cpuUnknown => '不明';

  @override
  String get platDesktop => 'デスクトップ';

  @override
  String get platLaptop => 'ノートパソコン';

  @override
  String get platMini => 'ミニPC';

  @override
  String get platServer => 'サーバー';

  @override
  String get csrEnabled =>
      'システムのセキュリティを強化するためにSIPを有効にします。GPU/WiFi用のOCLPを使用しない場合に推奨します。';

  @override
  String get csrPartial => 'SIPを無効にする オプション1';

  @override
  String get csrPartialDesc =>
      'SIPを部分的に無効にします。Big Sur以降でGPU/WiFi用のOCLPを使用する場合に推奨します。';

  @override
  String get csrFully => 'SIPを無効にする オプション2';

  @override
  String get csrFullyDesc =>
      'SIPを完全に無効にします。Big Sur以降でGPU/WiFi用のOCLPを使用する場合に優先的に選択します。';

  @override
  String get uiScaleAuto => '自動適応: ディスプレイ解像度に基づいてOpenCoreブートUIスケールを自動調整します。';

  @override
  String get uiScaleStandard => '標準解像度: 720p、1080p、1440pディスプレイに適しています。';

  @override
  String get uiScaleHigh =>
      '高解像度: 4K/5Kディスプレイに適しています（OpenCoreブートメニューの小さなUI要素を修正します）。';

  @override
  String get procDefault => 'ProcessorTypeを変更しない';

  @override
  String get procKeep => 'システムのデフォルトCPUタイプ表示を維持する';

  @override
  String get brandAsus => 'ASUS';

  @override
  String get brandGigabyte => 'GIGABYTE';

  @override
  String get brandAsrock => 'ASRock';

  @override
  String get brandMsi => 'MSI';

  @override
  String get brandDell => 'Dell';

  @override
  String get brandLenovo => 'Lenovo';

  @override
  String get brandSony => 'VAIO';

  @override
  String get brandHp => 'HP';

  @override
  String get brandGoogle => 'Chromebook';

  @override
  String get brandMicrosoft => 'Microsoft Surface';

  @override
  String get mbNormal => '標準マザーボード';

  @override
  String get mbOemUsb => '一部のOEMマザーボードにはUSB所有権解放の問題があります：EHCIハンドオフの失敗';

  @override
  String get navAppGuide => 'アプリガイド';

  @override
  String get appGuideTitle => 'RapidEFI ユーザーガイド';

  @override
  String get logMsg001 => '=> LPC(B) が見つかりませんでした!作戦終了！';

  @override
  String get logMsg002 =>
      '有効な DSDT が見つかりません!最初に DSDT ファイルまたは DSDT を含むファイル ディレクトリを選択してください。';

  @override
  String get logMsg003 =>
      'IASL ツールの準備に失敗しました。まず、組み込みの iasl ツールを更新するか、使用してください。';

  @override
  String get logMsg004 => '有効な .aml ファイルが見つかりません!\\n';

  @override
  String get logMsg005 =>
      '有効な DSDT が見つかりません!最初に DSDT ファイルまたは DSDT を含むファイル ディレクトリを選択してください。';

  @override
  String get logMsg006 =>
      '現在複数の DSDT ファイルが検出されており、一度に処理できるのは 1 つだけです。 DSDT ファイルを 1 つ保持し、他のファイルを削除して再試行してください。\\n';

  @override
  String get logMsg007 => 'DSDT ファイルが無効です!有効な DSDT ファイルを再選択してください。';

  @override
  String logMsg008(String arg0) {
    return '$arg0 逆コンパイルに失敗しました!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'コンパイル結果: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'IntObj 型の処理中にエラーが発生しました: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'MethodObj タイプの処理中にエラーが発生しました: $arg0';
  }

  @override
  String get logMsg012 => 'IRQ 情報が見つかりません!';

  @override
  String get logMsg013 => '現在のオプションまたはカスタム IRQ は空です。 IRQ パッチを生成できません!';

  @override
  String get logMsg014 => '=> IRQ 情報が見つかりません!';

  @override
  String get logMsg015 =>
      'カスタム IRQ リストの形式が間違っています! ！ ！デバイスはスペースで区切って、IRQ はカンマで区切ってください。 ！ ！';

  @override
  String logMsg016(String arg0) {
    return '=> _HID 解析エラー: $arg0';
  }

  @override
  String get logMsg017 => '有効なデバイスが見つからないため、HPET 操作をスキップします。';

  @override
  String get logMsg018 => '有効な IRQ が指定されていないか、IRQ が空です。操作は中止されました!';

  @override
  String logMsg019(String arg0) {
    return '=> $arg0._CRS が見つかりません!作戦終了！';
  }

  @override
  String logMsg020(String arg0) {
    return '=> $arg0._CRS が見つかりません!';
  }

  @override
  String get logMsg021 => '=> _CRS は XCRS という名前になったようです。';

  @override
  String get logMsg022 =>
      '=> DSDT でのデバイスの _CRS から XCRS への名前変更を無効にし、再起動後に再試行してください。\\n';

  @override
  String get logMsg023 => '=> メモリアクセスタイプを決定できません!';

  @override
  String get logMsg024 => '=> Base または Length を整数に変換できません!';

  @override
  String get logMsg025 => '=> 見つかりません!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> デフォルト値 $arg0 を使用 => $arg1';
  }

  @override
  String get logMsg027 => '=> 見つかりません!';

  @override
  String get logMsg028 => '=> パッチするものは何もありません。';

  @override
  String logMsg029(String arg0, String arg1) {
    return '$arg0 の IRQ パッチ末尾 ($arg1) がありません!スキップされました…';
  }

  @override
  String get logMsg030 => '以下は一意ではない可能性があり、デフォルトでは無効になっています。 \\n';

  @override
  String get logMsg031 => '有効な UID が指定されていません。操作を中止してください。';

  @override
  String logMsg032(String arg0) {
    return '$arg0 はカスタム UID です。手動でのカスタマイズが必要か、まったくサポートされていない可能性があります。';
  }

  @override
  String get logMsg033 => '渡された ACPI テーブルに有効な iGPU パスが見つかりません!\\n';

  @override
  String logMsg034(String arg0) {
    return '注: iGPU パスは $arg0 と推測されます\\n 使用する前に確認してください。';
  }

  @override
  String logMsg035(String arg0) {
    return '注: iGPU パスは手動で $arg0 に設定されています。使用する前にパスが正しいか必ず確認してください。';
  }

  @override
  String get logMsg036 => '=> 指定された EC デバイスが見つかりました。偽造する必要はありません!\\n';

  @override
  String get logMsg037 => 'USBX 属性パッチを空にすることはできません。作戦終了！';

  @override
  String get logMsg038 => '有効なプロセッサ デバイスが見つかりません!';

  @override
  String get logMsg039 =>
      '=> 有効な PNP0B00 (RTC) デバイスが検出および検証されました。パッチや SSDT は必要ありません。作戦終了！';

  @override
  String get logMsg040 =>
      '=> ACPI000E (AWAC) デバイスが見つかりません。パッチも SSDT も必要ありません。作戦終了！';

  @override
  String get logMsg041 => '=> デバイスが見つかりません!作戦終了！';

  @override
  String get logMsg042 => '次のパスに一致するものが見つかりません:';

  @override
  String get logMsg043 => '一致するものが見つかりませんでした!';

  @override
  String get logMsg044 =>
      '現在の ACPI テーブルと一致させるには、デバイス パスが次の PciRoot() で始まる必要があることに注意してください。';

  @override
  String logMsg045(String arg0) {
    return '=> 見つかりません。有効な $arg0 テーブルではないようです!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 値が見つかりません!操作は中止されました!';
  }

  @override
  String get logMsg047 => 'リセット レジスタ アドレス値が見つかりません!操作は中止されました!';

  @override
  String logMsg048(String arg0) {
    return '$arg0 のプロセッサ ID を解決できません。パッチ適用を中止します。';
  }

  @override
  String logMsg049(String arg0) {
    return '$arg0 の最初の CPU はすでに一致しているため、APIC テーブルにパッチを適用する必要はありません。';
  }

  @override
  String get logMsg050 => '=> 一致するプロセッサが見つかりません!操作は中止されました!';

  @override
  String get logMsg051 => 'IMEIパッチを選択してください。';

  @override
  String logMsg052(String arg0) {
    return '=> IMEI デバイスが $arg0 で見つかりました。スプーフィングのためにブリッジする必要はありません。操作は中止されました!';
  }

  @override
  String get logMsg053 => '=> PCI ルートデバイスが見つかりません!操作は中止されました!';

  @override
  String get logMsg054 =>
      '=> SSDT スプーフィング IMEI が有効になっていないため、デバイス ID を DeviceProperties 経由で設定する必要があります。';

  @override
  String get logMsg055 =>
      'UNC (PNP0A03) デバイスが見つかりません! SSDT-UNC パッチは必要ありません。操作は中止されました! \\n';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: _STA メソッドが存在しません。';
  }

  @override
  String get logMsg057 =>
      '=> DMA (PNP0200) デバイスが上記の ACPI テーブルのいずれにも見つかりません。操作は中止されました! \\n';

  @override
  String get logMsg058 =>
      '=> _PTS メソッドが見つからないため、_PTS スケジューリング エントリと名前変更パッチは生成されません。';

  @override
  String get logMsg059 =>
      '=> _WAK メソッドが見つからないため、_WAK スケジューリング エントリと名前変更パッチは生成されません。';

  @override
  String get logMsg060 =>
      '=> スケジュール可能な _PTS/_WAK メソッドが見つからないため、SSDT-SleepHook がスキップされました!\\n';

  @override
  String get logMsg061 =>
      '=> _SST メソッドが上記の ACPI テーブルのいずれにも見つかりません!操作は中止されました! \\n';

  @override
  String get logMsg062 =>
      '=> PNP0C0D デバイスは上記の ACPI テーブルのいずれにも見つかりませんでした。操作は中止されました! \\n';

  @override
  String get logMsg063 =>
      '=> システムステータスはサポートされていません: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> 注: 現在のファームウェアは _S3 状態をサポートしていません。 BIOS 設定で S3 機能が無効になっていない場合、マシンは S3 スリープをサポートしていません。';

  @override
  String get logMsg065 => '=> 注: これは AOAC マシンであり、macOS は S3 スリープをサポートしていません。';

  @override
  String get logMsg066 => '=> 現在AOAC機かどうかは検出されておりませんので、ご自身でご確認ください！';

  @override
  String get logMsg067 => '低電力 S0 アイドル (V5) 値が見つかりません。';

  @override
  String get logMsg068 => '現在 AOAC マシンである macOS は S3 スリープをサポートしていません。';

  @override
  String get logMsg069 =>
      '=> 名前またはメソッド _S3 が見つかりません。現在の構成は S3 スリープをサポートしていません。作戦は終了しました！';

  @override
  String logMsg070(String arg0) {
    return '=> メソッド $arg0 が見つかりました!';
  }

  @override
  String get logMsg071 =>
      '=> 現在のメソッドは名前が変更されており、元の ACPI テーブルではない可能性があります。元の ACPI テーブルを再取得して、再試行してください。\\n';

  @override
  String get logMsg072 =>
      '=> LID (PNP0C0D) デバイスが上記の ACPI テーブルのいずれにも見つかりませんでした。操作は終了しました!\\n';

  @override
  String get logMsg073 =>
      '=> メソッド _LID が上記の ACPI テーブルのいずれにも見つかりませんでした。操作は終了しました!\\n';

  @override
  String get logMsg074 =>
      '=> PWRB (PNP0C0C) デバイスが上記の ACPI テーブルに見つかりませんでした。偽物だけ！ \\n';

  @override
  String logMsg075(String arg0) {
    return '=> SLPB デバイスを偽造する必要はありません。PNP0C0E デバイスが $arg0 で見つかりました。';
  }

  @override
  String logMsg076(String arg0) {
    return '=> PNP0C0E デバイス $arg0 には _STA メソッドがあります。';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E デバイス $arg0 には _STA メソッドが存在しません。';
  }

  @override
  String get logMsg078 => '=> 一致する XHC/XHCI/XDCI/CNVW デバイスが見つかりません。作戦終了！ \\n';

  @override
  String get logMsg079 => '=> GPRW メソッドが見つかりません!';

  @override
  String get logMsg080 =>
      '=> XPRWメソッドが見つかりました!現在のメソッドは名前が変更されており、元の ACPI テーブルではない可能性があります。元の ACPI テーブルを再取得して、再試行してください。\\n';

  @override
  String get logMsg081 => '=> XPRW メソッドが見つかりません!作戦終了！';

  @override
  String get logMsg082 => '=> UPRW メソッドが見つかりません!';

  @override
  String get logMsg083 =>
      '=> XPRWメソッドが見つかりました!現在のメソッドは名前が変更されており、元の ACPI テーブルではない可能性があります。元の ACPI テーブルを再取得して、再試行してください。\\n';

  @override
  String get logMsg084 => '=> XPRW メソッドが見つかりません!作戦終了！';

  @override
  String get logMsg085 => '=> GPI0 デバイスが見つかりません!作戦終了！ \\n';

  @override
  String get logMsg086 => '=> _STA メソッドが見つかりません!作戦終了！ \\n';

  @override
  String get logMsg087 =>
      '=> 現在のプロセッサの命名スキームは CPU の命名仕様に準拠しています。このSSDTは必要ありません。作戦は終了しました！';

  @override
  String get logMsg088 =>
      '=> PLTF デバイスはありません。現在の Intel プラットフォームではこの SSDT は必要ありません。作戦は中止されました...';

  @override
  String get logMsg089 =>
      '=> 要件を満たす CPU デバイスが見つからないため、SSDT-CPUR パッチは必要ありません。作戦終了！';

  @override
  String get logMsg090 =>
      '=> SSDT スプーフィング IMEI が有効になっていないため、デバイス ID を DeviceProperties 経由で設定する必要があります。';

  @override
  String get logMsg091 => '有効な ACPI デバイス パスが指定されていません。操作は中止されました!';

  @override
  String logMsg092(String arg0) {
    return '$arg0 に対応する _ON または _OFF メソッドが DSDT または SSDT で見つかりませんでした。操作は中止されました!';
  }

  @override
  String logMsg093(String arg0) {
    return '$arg0 に対応する _PS3 または _DSM メソッドが DSDT または SSDT で見つかりませんでした。操作は中止されました!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> デバイス $arg0 には _PRT メソッドがあります。これは実際のデバイスを隠している可能性があり、BRG0 ブリッジ デバイスを挿入します。';
  }

  @override
  String logMsg095(String arg0) {
    return '=> デバイス $arg0 は存在しません!';
  }

  @override
  String logMsg096(String arg0) {
    return '現在のデバイス パス $arg0 は実際のデバイスを隠している可能性があります。';
  }

  @override
  String logMsg097(String arg0) {
    return '=> グラフィックス カード デバイス $arg0 の _ADR アドレスにオーバーフローがあります。';
  }

  @override
  String logMsg098(String arg0) {
    return '=> 親デバイスのパス: $arg0 に戻り、BRG0 ブリッジ デバイスを挿入します。';
  }

  @override
  String logMsg099(String arg0) {
    return '不明なマスキング方法: $arg0、操作は中止されました。';
  }

  @override
  String logMsg100(String arg0) {
    return 'いくつかのメソッドが見つかりません: $arg0';
  }

  @override
  String get logMsg101 => '=> 有効なバスデバイスが見つからないため、操作は終了しました。';

  @override
  String get logMsg102 => '有効なグラフィックス カードの ACPI パスが指定されていません。作戦終了！';

  @override
  String get logMsg103 => '有効な偽造グラフィックス カード ID が提供されていません。作戦終了！';

  @override
  String get logMsg104 => '有効な偽造グラフィックス カード名が指定されていません。偽名は挿入されません。';

  @override
  String logMsg105(String arg0) {
    return '現在のグラフィックス カード パス $arg0 は実際のデバイスを隠している可能性があります。';
  }

  @override
  String logMsg106(String arg0) {
    return '=> デバイス $arg0 には _PRT メソッドがあり、実際のデバイスが隠蔽されている可能性があり、GFX0 デバイスを挿入します。';
  }

  @override
  String logMsg107(String arg0) {
    return '=> デバイス $arg0 が DSDT または SSDT に見つかりません!操作は中止されました!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> グラフィックス カード デバイス $arg0 の _ADR アドレスにオーバーフローがあります。';
  }

  @override
  String logMsg109(String arg0) {
    return '=> 親デバイスのパス: $arg0 に戻り、GFX0 デバイスを挿入します。';
  }

  @override
  String get logMsg110 => 'デバイス パスにアドレス _ADR オーバーフローがあります。';

  @override
  String get logMsg111 => '次のデバイスはプロパティの注入に影響を与える可能性があります。';

  @override
  String get logMsg112 => 'LPC(B)/SBRG を見つけています…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg0 で $arg1 が見つかりました';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg0 で $arg1 が見つかりました';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg0 で $arg1 が見つかりました';
  }

  @override
  String logMsg116(String arg0) {
    return '指定された DSDT パス: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return '指定された DSDT パスは無効です: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'ディレクトリ $arg0 から有効な ACPI テーブルを収集しています...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return '合計 $arg0 個の ACPI テーブルが見つかり、そのうち $arg1 が有効です。';
  }

  @override
  String get logMsg120 => 'DSDT 署名を持ついくつかのファイルが検証されました。';

  @override
  String logMsg121(String arg0) {
    return '事前に作成されたパッチを適用する必要があるかどうかを確認するために、$arg0 を逆コンパイルしようとしています...';
  }

  @override
  String get logMsg122 => '=> 事前に作成されたパッチを適用する必要はありません!\\n';

  @override
  String logMsg123(String arg0) {
    return '$arg0 を読み込んでいます...';
  }

  @override
  String get logMsg124 => '処理が完了しました!\\n';

  @override
  String get logMsg125 => '渡されたファイルまたはフォルダは存在しません!\\n';

  @override
  String get logMsg126 => '問題のある DSDT ファイルを処理しています...';

  @override
  String get logMsg127 => '利用可能な既成パッチを確認してください…';

  @override
  String logMsg128(String arg0) {
    return '$arg0 ファイルをメモリにロードしています...';
  }

  @override
  String get logMsg129 => 'パッチを 1 つずつ処理しています...\\n';

  @override
  String get logMsg130 => '=> 位置決め、適用中…';

  @override
  String get logMsg131 => '=> 前の質問の DSDT ファイルは正常に逆コンパイルされました。';

  @override
  String logMsg132(String arg0) {
    return '=> 修正されたファイルにパッチが適用され、ファイルは結果フォルダに保存されます:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return '有効な ACPI テーブルを $arg0 にロードしています...';
  }

  @override
  String get logMsg134 => 'すべての有効な ACPI テーブルの逆コンパイルが完了しました。';

  @override
  String logMsg135(String arg0) {
    return '合計所要時間: $arg0 秒\\n';
  }

  @override
  String logMsg136(String arg0) {
    return '$arg0.aml を正常にコンパイルしました。';
  }

  @override
  String logMsg137(String arg0) {
    return '$arg0.dsl ソース ファイルを削除します';
  }

  @override
  String logMsg138(String arg0) {
    return '=> デバイス $arg0 のスコープが見つかりません';
  }

  @override
  String logMsg139(String arg0) {
    return '=> $arg0 が見つかりません';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return '$arg0 ($arg1) デバイスを見つけています...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> $arg0 デバイスをターゲットにできません';
  }

  @override
  String logMsg142(String arg0) {
    return '=> $arg0 が見つかりました';
  }

  @override
  String get logMsg143 => '=> 認証を求めています _STA…';

  @override
  String get logMsg144 => '=> _STA は XSTA に名前が変更されました!他のチェックはスキップしてください…';

  @override
  String get logMsg145 =>
      '=> DSDT での _STA から XSTA へのデバイスの名前変更を無効にし、再起動後に再試行してください。\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 変数 $arg1';
  }

  @override
  String get logMsg147 => '=> _STA メソッド/名前が見つかりません';

  @override
  String logMsg148(String arg0) {
    return '=> インデックス $arg0 で _STA メソッドが見つかりました!';
  }

  @override
  String get logMsg149 => '=> _STA から XSTA への名前変更の生成';

  @override
  String get logMsg150 => '=> return文が複数ある、または戻り値がReturn(0x0F)ではない';

  @override
  String get logMsg151 => 'ACPI デバイス情報を収集しています...';

  @override
  String get logMsg152 => 'ACPI デバイス パスを収集しています...';

  @override
  String get logMsg153 => '孤立したデバイスを再チェックしています...';

  @override
  String logMsg154(String arg0) {
    return '現在のカスタム IRQ: $arg0';
  }

  @override
  String get logMsg155 => '=> 例: RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> _HID が見つかりました: $arg0';
  }

  @override
  String get logMsg157 => 'PNP0103 (HPET) デバイスを見つけています…';

  @override
  String logMsg158(String arg0) {
    return '=> $arg0 に配置';
  }

  @override
  String get logMsg159 => 'HPET の _CRS メソッド/名前を見つけています...';

  @override
  String logMsg160(String arg0) {
    return '=> $arg0._CRS にあります';
  }

  @override
  String logMsg161(String arg0) {
    return '=> インデックスで見つかりました: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> タイプ: $arg0';
  }

  @override
  String get logMsg163 => '=> Memory32Fixed をチェック中…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> $arg0 $arg1 を取得 => $arg2';
  }

  @override
  String get logMsg165 => 'IRQ パッチを作成しています...';

  @override
  String get logMsg166 => 'IRQをチェック中…';

  @override
  String get logMsg167 => 'IRQ が空です!スキップ...\\n';

  @override
  String get logMsg168 => '一致するものが見つかりませんでした。';

  @override
  String logMsg169(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg170 => '偽の HPET デバイスを作成しています...';

  @override
  String logMsg171(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> 使用される UID: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> 適用可能なプラットフォーム: $arg0';
  }

  @override
  String get logMsg174 => '有効な iGPU パスが指定されていません。自動的に検索しようとしています...';

  @override
  String get logMsg175 => '0x00020000 で iGPU デバイスを探しています…';

  @override
  String logMsg176(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> iGPU デバイスが $arg0 で見つかりました!';
  }

  @override
  String get logMsg178 => 'iGPU デバイスがアドレスで見つかりません!';

  @override
  String get logMsg179 => '一般的な iGPU 名を検索しています…';

  @override
  String logMsg180(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> 可能性のある iGPU デバイスが $arg0 で見つかりました';
  }

  @override
  String logMsg182(String arg0) {
    return 'iGPU デバイスの可能性が $arg0 で見つかりました\\n';
  }

  @override
  String logMsg183(String arg0) {
    return '指定された iGPU パスに従って、手動で $arg0 に設定されました \\n';
  }

  @override
  String logMsg184(String arg0) {
    return '無効な iGPU パス: $arg0';
  }

  @override
  String get logMsg185 => 'ネイティブ PNLF デバイスの ACPI テーブルをチェックしています...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> ネイティブ PNLF デバイスが $arg0 で見つかりました: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> ネイティブ PNLF の名前を XNLF に変更する必要があります。名前変更パッチが生成されています...';

  @override
  String get logMsg188 => '=> ネイティブ PNLF デバイスが見つかりません!';

  @override
  String get logMsg189 => '=> PNLF から XNLF への名前変更パッチを生成する必要はありません。';

  @override
  String logMsg190(String arg0) {
    return '$arg0 で名前 (NBCF、0x00) が検出されました。パッチを生成しています...';
  }

  @override
  String logMsg191(String arg0) {
    return '$arg0 で名前 (NBCF、ゼロ) が検出され、パッチを生成しています...';
  }

  @override
  String get logMsg192 => 'PNP0C09(EC) デバイスを見つけています...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 PNP0C09 (EC) デバイスが $arg0 で見つかりました';
  }

  @override
  String get logMsg194 => '=> 検証中...';

  @override
  String logMsg195(String arg0) {
    return '=> $arg0 が見つかりました';
  }

  @override
  String get logMsg196 => '=> PNP0C09 (EC) EC という名前のデバイス、名前変更が進行中';

  @override
  String get logMsg197 => '=> 有効な PNP0C09 (EC) デバイス';

  @override
  String get logMsg198 => '=> _STA は正しく有効になっており、名前の変更はスキップされます';

  @override
  String get logMsg199 => '=> 無効な PNP0C09 (EC) デバイス';

  @override
  String get logMsg200 => '=> 有効な PNP0C09 (EC) デバイスが見つかりません。EC デバイスを偽装してください';

  @override
  String logMsg201(String arg0) {
    return '$arg0.dsl を作成中…';
  }

  @override
  String logMsg202(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg203 => 'CPU 命名スキームを決定しています...';

  @override
  String logMsg204(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> プロセッサが見つかりました: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String get logMsg207 => '=> プロセッサ オブジェクトが見つかりません...';

  @override
  String get logMsg208 => '=> ACPI0007 デバイスが見つかりません…';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 ACPI0007 デバイスが見つかりました';
  }

  @override
  String logMsg210(String arg0) {
    return '=> $arg0 で親デバイスが見つかりました。処理中...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> $arg0 をチェック中…';
  }

  @override
  String get logMsg212 => '=> 見つかりません!飛び越える…';

  @override
  String get logMsg213 => '=> 見つかりません!飛び越える…';

  @override
  String logMsg214(String arg0) {
    return '$arg0 個の有効なプロセッサ デバイスを処理しています...';
  }

  @override
  String get logMsg215 => 'LPC 名の取得に失敗しました...';

  @override
  String logMsg216(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg217 => '=> RTC を偽造する必要があります!';

  @override
  String get logMsg218 => '=> _CRS をチェック中…';

  @override
  String get logMsg219 => '=> _CRS はバッファであり、RTC 範囲をチェックしています...';

  @override
  String get logMsg220 => '=> 値を調整できず、RTC 範囲を確認できません。';

  @override
  String get logMsg221 => '=> 値の収集に失敗しました。RTC 範囲を確認できません。';

  @override
  String get logMsg222 => '=> _CRS はメソッドであるため、RTC 範囲を検証できません。';

  @override
  String get logMsg223 => '=> _CRS から XCRS への名前変更を生成中…';

  @override
  String logMsg224(String arg0) {
    return '=> インデックス $arg0 で見つかりました';
  }

  @override
  String get logMsg225 => '=> 見つかりません';

  @override
  String logMsg226(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String logMsg227(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String get logMsg228 => 'RHUB/HUBN/URTH デバイスを収集しています...';

  @override
  String logMsg229(String arg0) {
    return '=> $arg0 個のデバイスが見つかりました';
  }

  @override
  String get logMsg230 => '=> 名前を変更する必要があります!';

  @override
  String logMsg231(String arg0) {
    return '=> $arg0 を確認: _STA メソッドが存在するかどうか';
  }

  @override
  String logMsg232(String arg0) {
    return '=> インデックス $arg0 で _STA メソッドが見つかりました!';
  }

  @override
  String get logMsg233 => '=> _STA から XSTA へのパッチを生成';

  @override
  String get logMsg234 => '=> _STA メソッドが見つかりません!';

  @override
  String logMsg235(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String get logMsg236 => '=> デバイス パスに _ADR アドレス オーバーフローがあります。';

  @override
  String get logMsg237 => '=> 次のデバイスが正しく機能するには、ブリッジの調整が必要な場合があります。';

  @override
  String get logMsg238 => 'PCI ブリッジ デバイスを収集しています...';

  @override
  String get logMsg239 => 'PCI ブリッジデバイスが空です!作戦は終了しました！';

  @override
  String get logMsg240 => 'ブリッジデバイスを構築しています...';

  @override
  String get logMsg241 => 'PCI ブリッジデバイスが空です!飛び越える…';

  @override
  String get logMsg242 => 'デバイスパスが一致しています…';

  @override
  String get logMsg243 => '一致するものが見つかりませんでした!';

  @override
  String logMsg244(String arg0) {
    return '=> $arg0 と一致します。ブリッジングは必要ありません';
  }

  @override
  String get logMsg245 => '一致するものが見つかりません!\\n';

  @override
  String get logMsg246 => 'ブリッジは必要ありません!\\n';

  @override
  String get logMsg247 => 'ブリッジデバイスを解決しています...';

  @override
  String get logMsg248 => '=> 解析できません!';

  @override
  String get logMsg249 => 'ブリッジ デバイスの解析中にエラーが発生しました!\\n';

  @override
  String logMsg250(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String get logMsg251 => 'ACPI0008 (ALS) デバイスを見つけています...';

  @override
  String logMsg252(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> $arg0 テーブルで ALS デバイスが見つかりました: $arg1!';
  }

  @override
  String get logMsg254 => '=> 偽造する必要はありません!\\n';

  @override
  String logMsg255(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String get logMsg256 => '_STA は正しく有効になっており、パッチは必要ありません。 \\n';

  @override
  String get logMsg257 => '見つかりません。パッチは必要ありません!\\n';

  @override
  String get logMsg258 => 'ACPI0008 (ALS) デバイスが見つかりません。偽造デバイスが必要です…';

  @override
  String logMsg259(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String get logMsg260 => 'XOSI スキームを検出しています...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> 自動検出: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'OSID メソッドを確認しています...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> オフセット $arg0 でメソッド $arg1 が見つかりました';
  }

  @override
  String get logMsg264 => '=> 見つからないため、OSID の名前を XSID に変更する必要はありません';

  @override
  String get logMsg265 => '_OSI を作成して XOSI に名前変更しています…';

  @override
  String logMsg266(String arg0) {
    return '$arg0 テーブルを探しています…';
  }

  @override
  String logMsg267(String arg0) {
    return '$arg0 テーブルが見つかりました。署名を検証しています...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 テーブルの署名検証に合格しました。';
  }

  @override
  String logMsg269(String arg0) {
    return '$arg0 値をチェックしています...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return '取得した $arg0 値: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return '取得したリセット レジスタ アドレス値: $arg0';
  }

  @override
  String get logMsg272 => 'パッチを適用する必要がある ACPI パッチは次のとおりです。';

  @override
  String get logMsg273 => 'APIC テーブルにパッチを適用しています...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> 修正された APIC プロセッサ ID: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> APIC テーブルのパッチ適用が完了しました。';

  @override
  String logMsg276(String arg0) {
    return '$arg0.dsl を作成中…';
  }

  @override
  String get logMsg277 => 'DMAR テーブルの予約済みメモリ領域をチェックしています...';

  @override
  String get logMsg278 => '=> 予約されたメモリ領域が見つかりません。DMAR にパッチを適用する必要はありません!\\n';

  @override
  String logMsg279(String arg0) {
    return '$arg0 の予約済みメモリ領域が見つかりました。新しいテーブルを生成しています...';
  }

  @override
  String get logMsg280 => 'アドレス 0x00160000 で IMEI デバイスを探しています...';

  @override
  String get logMsg281 => 'IMEI デバイスが見つかりません。デバイスを偽造する必要があります…';

  @override
  String get logMsg282 => '親デバイスを確認しています...';

  @override
  String get logMsg283 => '0x00020000 で iGPU デバイスを探しています…';

  @override
  String get logMsg284 => '=> iGPU デバイスが見つかりません!';

  @override
  String get logMsg285 => 'PCI ルート デバイスを見つけようとしています...';

  @override
  String logMsg286(String arg0) {
    return '=> PCI ルートデバイスが見つかりました: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> iGPU デバイスが見つかりました: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> 親デバイスを使用: $arg0';
  }

  @override
  String get logMsg289 => '偽のデバイス ID スキームを収集しています...';

  @override
  String logMsg290(String arg0) {
    return '=> 第 3 世代 Ivy Bridge プロセッサーに一致する 7 シリーズ マザーボード IMEI (device-id: $arg0) として偽造';
  }

  @override
  String logMsg291(String arg0) {
    return '=> 第 2 世代 Sandy Bridge プロセッサに一致する 6 シリーズ マザーボード IMEI (device-id: $arg0) として偽造';
  }

  @override
  String logMsg292(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String get logMsg293 => 'UNC (PNP0A03) デバイスを探しています...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 UNC デバイスが見つかりました';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> UNC デバイス $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> $arg0: _STA メソッドが存在するかどうかを確認します';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> $arg1 が見つかりました: インデックス $arg0 で _STA メソッド!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> $arg0 を生成: _STA から XSTA へのパッチ';
  }

  @override
  String logMsg299(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg300(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg301 => 'DTGP メソッドが存在するかどうかを確認しています...';

  @override
  String get logMsg302 => '=> DTGP メソッドが見つかりません!';

  @override
  String get logMsg303 => '=> DTGP メソッドが上記の ACPI テーブルのいずれにも見つかりません。 \\n';

  @override
  String logMsg304(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg305(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg306 => 'DMA (PNP0200) デバイスを探しています...';

  @override
  String get logMsg307 => '=> DMA (PNP0200) デバイスが見つかりません!';

  @override
  String logMsg308(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg309(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg310 => '_PTS メソッドの存在を確認しています...';

  @override
  String logMsg311(String arg0) {
    return '=> メソッド $arg0 が見つかりました!';
  }

  @override
  String get logMsg312 => '=> _PTS メソッドが見つかりません!';

  @override
  String get logMsg313 => '_WAK メソッドの存在を確認しています...';

  @override
  String logMsg314(String arg0) {
    return '=> メソッド $arg0 が見つかりました!';
  }

  @override
  String get logMsg315 => '=> _WAK メソッドが見つかりません!';

  @override
  String logMsg316(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String logMsg317(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg318 => '_SST メソッドの存在を確認しています...';

  @override
  String logMsg319(String arg0) {
    return '=> $arg0 に _SST メソッドが見つかりました!';
  }

  @override
  String get logMsg320 => '=> _SST メソッドが見つかりません!';

  @override
  String logMsg321(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String logMsg322(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg323 => 'PNP0C0D デバイスの存在を確認しています...';

  @override
  String logMsg324(String arg0) {
    return '=> PNP0C0D デバイスが $arg0 で見つかりました!';
  }

  @override
  String get logMsg325 => '=> PNP0C0D デバイスが見つかりません!';

  @override
  String logMsg326(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String logMsg327(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String logMsg328(String arg0) {
    return '$arg0 の存在を確認しています...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> $arg0 で $arg1 が見つかりました';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> $arg0 で $arg1 が見つかりました';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 が見つかりません';
  }

  @override
  String get logMsg332 => 'すべての ACPI テーブルがチェックされました。';

  @override
  String get logMsg333 => '=> システム状態のサポート: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> 現在のファームウェアは一般的なシステム状態をサポートしています。スリープの問題を修正した後、macOS は S3 スリープをサポートできるようになります。';

  @override
  String get logMsg335 => '低電力 S0 アイドル (V5) 値を確認しています...';

  @override
  String logMsg336(String arg0) {
    return '低電力 S0 アイドルの取得 (V5): $arg0';
  }

  @override
  String get logMsg337 => '現在は AOAC マシンではないため、macOS システム S3 のスリープには影響しません。';

  @override
  String get logMsg338 => '_S3 の存在を確認しています...';

  @override
  String logMsg339(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> $arg0 で _S3 という名前が見つかりました!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> $arg0 でメソッド _S3 が見つかりました!';
  }

  @override
  String get logMsg342 => '=> 名前またはメソッド _S3 が見つかりません';

  @override
  String logMsg343(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg344(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg345(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg346 => 'LID (PNP0C0D) デバイスを探しています...';

  @override
  String logMsg347(String arg0) {
    return '=> PNP0C0D デバイスが $arg0 で見つかりました!';
  }

  @override
  String get logMsg348 => '=> LID (PNP0C0D) デバイスが見つかりません!';

  @override
  String logMsg349(String arg0) {
    return '=> $arg0 でメソッド _LID が見つかりました!';
  }

  @override
  String get logMsg350 => '=> メソッド _LID が見つかりません!';

  @override
  String get logMsg351 => '_TTS メソッドの存在を確認しています...';

  @override
  String logMsg352(String arg0) {
    return '=> メソッド $arg0 が見つかりました!';
  }

  @override
  String get logMsg353 => '=> _TTS メソッドが見つかりません!';

  @override
  String get logMsg354 => 'ZTTS メソッドの存在を確認しています...';

  @override
  String get logMsg355 => '=> ZTTS メソッドが見つかりません!';

  @override
  String logMsg356(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String logMsg357(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg358 => 'PWRB (PNP0C0C) デバイスを探しています...';

  @override
  String get logMsg359 => '=> PWRB (PNP0C0C) デバイスが見つかりません!';

  @override
  String logMsg360(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg361(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg362 => 'SLPB (PNP0C0E) デバイスを探しています...';

  @override
  String get logMsg363 => '=> SLPB (PNP0C0E) デバイスが見つかりません!';

  @override
  String get logMsg364 =>
      '=> SLPB (PNP0C0E) デバイスが上記の ACPI テーブルに見つかりませんでした。偽物だけ！ \\n';

  @override
  String logMsg365(String arg0) {
    return '$arg0.sdl を作成しています...';
  }

  @override
  String logMsg366(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg367(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg368(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String get logMsg369 => 'PNP0C01 デバイスを探しています...';

  @override
  String get logMsg370 => '=> PNP0C01 デバイスが見つかりません!';

  @override
  String get logMsg371 => '=> PNP0C01 デバイスは上記の ACPI テーブルのいずれにも見つかりませんでした!\\n';

  @override
  String logMsg372(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg373 => 'XHC/XHCI/XDCI/CNVW デバイスを収集しています...';

  @override
  String logMsg374(String arg0) {
    return '=> $arg0 デバイスが PMEE をサポートしているかどうかを確認しています...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 は PMEE をサポートしていないため、スキップされます';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 は PMEE をサポートします';
  }

  @override
  String logMsg377(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg378 => 'GPRW メソッドの存在を確認しています...';

  @override
  String get logMsg379 => 'XPRW メソッドの存在を確認しています...';

  @override
  String logMsg380(String arg0) {
    return '=> GPRW メソッドが $arg0 で見つかりました!';
  }

  @override
  String logMsg381(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg382 => 'UPRW メソッドの存在を確認しています...';

  @override
  String get logMsg383 => 'XPRW メソッドの存在を確認しています...';

  @override
  String logMsg384(String arg0) {
    return '=> $arg0 で UPRW メソッドが見つかりました!';
  }

  @override
  String logMsg385(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg386 => 'GPI0 デバイスの存在を確認しています...';

  @override
  String logMsg387(String arg0) {
    return '=> GPI0 デバイスが $arg0 で見つかりました!';
  }

  @override
  String get logMsg388 => '_STA メソッドの存在を確認しています...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> $arg1 が見つかりました: インデックス $arg0 で _STA メソッド!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> $arg0 を生成: _STA から XSTA へのパッチ';
  }

  @override
  String logMsg391(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg392 => 'CPU 命名スキームを決定しています...';

  @override
  String logMsg393(String arg0) {
    return '$arg0 をチェックしています…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> プロセッサが見つかりました: $arg0';
  }

  @override
  String get logMsg395 => '=> プロセッサ オブジェクトが見つかりません...';

  @override
  String get logMsg396 => '=> ACPI0007 デバイスが見つかりません…';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 ACPI0007 デバイスが見つかりました';
  }

  @override
  String logMsg398(String arg0) {
    return '=> $arg0 で親デバイスが見つかりました。処理中...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> $arg0 をチェック中…';
  }

  @override
  String get logMsg400 => '=> 見つかりません!飛び越える…';

  @override
  String get logMsg401 => '=> 見つかりません!飛び越える…';

  @override
  String logMsg402(String arg0) {
    return '$arg0 個の有効なプロセッサ デバイスを処理しています...';
  }

  @override
  String logMsg403(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg404(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg405(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg406(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg407(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg408(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg409(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg410(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg411 => '偽のデバイス ID スキームを収集しています...';

  @override
  String logMsg412(String arg0) {
    return '=> 第 3 世代 Ivy Bridge プロセッサーに一致する 7 シリーズ マザーボード IMEI (device-id: $arg0) として偽造';
  }

  @override
  String logMsg413(String arg0) {
    return '=> 第 2 世代 Sandy Bridge プロセッサに一致する 6 シリーズ マザーボード IMEI (device-id: $arg0) として偽造';
  }

  @override
  String logMsg414(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg415(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg416(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg417(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg418(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg419(String arg0) {
    return 'デバイス $arg0 の _ON または _OFF メソッドを確認しています...';
  }

  @override
  String logMsg420(String arg0) {
    return 'デバイス $arg0 の _PS3 または _DSM メソッドをチェックしています...';
  }

  @override
  String logMsg421(String arg0) {
    return 'デバイス $arg0 をチェックしています...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> $arg0 に対応する _PRT メソッドが DSDT または SSDT で見つかりませんでした。';
  }

  @override
  String logMsg423(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> ブロックする必要がある $arg0 デバイス パス: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> シールド方法: $arg0 メソッド';
  }

  @override
  String logMsg426(String arg0) {
    return '=> デバイスの相対パスが絶対パスに変換されました: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> $arg0 で $arg1.$arg2 メソッドを検索します';
  }

  @override
  String logMsg428(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String get logMsg429 => '使用可能なバス デバイスを収集しています...';

  @override
  String logMsg430(String arg0) {
    return 'プリコンパイルされた $arg0.dsl を作成しています...';
  }

  @override
  String logMsg431(String arg0) {
    return 'グラフィックス デバイス $arg0 をチェックしています...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> $arg0 に対応する _PRT メソッドが DSDT または SSDT で見つかりませんでした。';
  }

  @override
  String logMsg433(String arg0) {
    return '$arg0.dsl を作成しています...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> グラフィックス カード デバイス パス: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> 偽造グラフィックス カード ID: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> 偽造グラフィックス カード名: $arg0';
  }

  @override
  String get logMsg437 => '=> 見つかりません!';

  @override
  String logMsg438(String arg0) {
    return '=> 一致した PCI パス: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> $arg0「$arg1」を $arg2 に更新します';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" は $arg2 にすでに存在します。スキップ...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> $arg0「$arg1」を $arg2 に追加します';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> $arg2 のキー「$arg0」の値を「$arg1」に更新します';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> キー「$arg0」の値はすでに最新であるため、$arg1 はスキップされます';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> キー「$arg0」値「$arg1」を $arg2 に追加します';
  }

  @override
  String logMsg445(String arg0) {
    return 'ハードウェア レポート フォルダーのクリーンアップに失敗しました: $arg0';
  }

  @override
  String get logMsg446 => 'ネイティブ ACPI テーブルのエクスポートに失敗しました';

  @override
  String logMsg447(String arg0) {
    return 'ネイティブ ACPI テーブルのエクスポートに失敗しました: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'ネイティブ ACPI テーブルのエクスポートに失敗しました: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'ACPI テーブルの一時ディレクトリのクリーンアップに失敗しました: $arg0';
  }

  @override
  String get logMsg450 => 'ネイティブ ハードウェア レポートをエクスポートしています...';

  @override
  String get logMsg451 => 'ネイティブ ACPI テーブルをエクスポートしています...';

  @override
  String logMsg452(String arg0) {
    return 'ネイティブ ACPI テーブルのエクスポートが完了しました: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'ソース ファイルが存在しません: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'ファイル保存エラー: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return '現在の OC バージョン: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'ZIP ファイルが存在しません: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 ファイルが正常に解凍されました';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'ファイル $arg0 の解凍中にエラーが発生しました: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'ファイルまたはディレクトリが存在しません: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return '圧縮が完了しました: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return '圧縮エラー: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'ディレクトリを削除: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'ファイルを削除: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return '削除に失敗しました: $arg0、$arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'ファイルは次の場所に正常に保存されました: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'ソース ディレクトリが存在しません: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return '準備されたフォルダー: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'フォルダー作成エラー: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'ディレクトリを開けませんでした。パスが存在しません: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'ディレクトリを開けませんでした: $arg0、$arg1';
  }

  @override
  String get autoGen5000 => '互換性がある';

  @override
  String get autoGen5001 => '限定的な互換性';

  @override
  String get autoGen5002 => '互換性がありません';

  @override
  String get autoGen5003 => '有効';

  @override
  String get autoGen5004 => 'オンにする';

  @override
  String get autoGen5005 => '未知';

  @override
  String get autoGen5006 => '有線ネットワークカード';

  @override
  String get autoGen5007 => '限定的な互換性\nmacOS Tahoe 26までをサポート\nAVX2 がありません';

  @override
  String get autoGen5008 =>
      '互換性がありません\nmacOS El Capitan 10.11までをサポート\nSSE4 がありません';

  @override
  String get autoGen5009 => 'デバイスIDがありません';

  @override
  String get autoGen5010 => 'NootedRed のサポート';

  @override
  String get autoGen5011 => '互換性の読み込み';

  @override
  String get autoGen5012 => 'ローエンドの Intel CPU コア グラフィックスはサポートされていません';

  @override
  String get autoGen5013 => 'VGA出力はサポートされていません';

  @override
  String get autoGen5014 => '偽造品のサポート';

  @override
  String get autoGen5015 => 'ネイティブサポート';

  @override
  String get autoGen5016 => 'AVX2 命令セットがありません';

  @override
  String get autoGen5017 => 'コア';

  @override
  String get autoGen5018 => '独立した';

  @override
  String get autoGen5019 => '核ディスプレイ';

  @override
  String get autoGen5020 => 'ASUS';

  @override
  String get autoGen5021 => 'ギガバイト';

  @override
  String get autoGen5022 => 'アスロック';

  @override
  String get autoGen5023 => 'MSI';

  @override
  String get autoGen5024 => 'デル';

  @override
  String get autoGen5025 => 'レノボ';

  @override
  String get autoGen5026 => 'ソニー';

  @override
  String get autoGen5027 => 'HP';

  @override
  String get autoGen5028 => 'グーグル';

  @override
  String get autoGen5029 => 'マイクロソフト';

  @override
  String get autoGen5030 => 'CPU 情報に基づいてプラットフォームの種類を識別できない';

  @override
  String get autoGen5031 => 'ノート';

  @override
  String get autoGen5032 => 'ミニホスト';

  @override
  String get autoGen5033 => 'ワークステーション';

  @override
  String get autoGen5034 =>
      'プラットフォーム コードは、CPU、マザーボード、コア ディスプレイに基づいて決定することはできません。';

  @override
  String get autoGen5035 => 'デバイスのブロック スキップ:';

  @override
  String get autoGen5036 => '有効なACPIパスがありません';

  @override
  String get autoGen5037 => 'カスタマイズする SSDT リスト:';

  @override
  String get autoGen5038 => 'ACPIテーブルの抽出に失敗しました';

  @override
  String get autoGen5039 => 'ACPIテーブルのロードに失敗しました';

  @override
  String get autoGen5040 => 'カスタム SSDT の結果は不完全です';

  @override
  String get autoGen5041 => 'カスタムSSDTで例外が発生しました';

  @override
  String get autoGen5042 => 'カスタム SSDT 一時ディレクトリのクリーンアップに失敗しました:';

  @override
  String get autoGen5043 => 'グラフィックス カード デバイス ID スプーフィング SSDT';

  @override
  String get autoGen5044 => '生成に失敗しました:';

  @override
  String get autoGen5045 => 'ACPI デバイス シールド SSDT';

  @override
  String get autoGen5046 => 'カスタム SSDT マージはスキップされました。';

  @override
  String get autoGen5047 => '現在の EFI で元の SSDT をフォールバックとして引き続き使用します。';

  @override
  String get autoGen5048 => 'グラフィックス カード デバイス ID のスプーフィングはスキップされました:';

  @override
  String get autoGen5049 => 'ハードウェア情報キャッシュはJSONオブジェクトではありません';

  @override
  String get autoGen5050 => 'ハードウェア情報がキャッシュからロードされました';

  @override
  String get autoGen5051 => 'ハードウェア情報がローカル キャッシュからロードされました';

  @override
  String get autoGen5052 => 'ハードウェア情報がインポートファイルからロードされました';

  @override
  String get autoGen5053 => 'ハードウェア情報の初期化';

  @override
  String get autoGen5054 => '現在のシステムはサポートされていません。Windows のみがサポートされています';

  @override
  String get autoGen5055 => 'ハードウェア情報の問い合わせ';

  @override
  String get autoGen5056 => 'ハードウェア情報のクエリが完了しました';

  @override
  String get autoGen5057 => 'sysInfo.exe がハードウェア情報を返しませんでした';

  @override
  String get autoGen5058 => 'sysInfo.exe によって返されるコンテンツは JSON オブジェクトではありません';

  @override
  String get autoGen5059 => 'sysInfo.exe クエリが完了しました';

  @override
  String get autoGen5060 => 'コアグラフィックスカード';

  @override
  String get autoGen5061 => '専用グラフィックスカード';

  @override
  String get autoGen5062 => 'すでにオンになっています';

  @override
  String get autoGen5063 => '不明なグラフィックカード';

  @override
  String get autoGen5064 => '統合された';

  @override
  String get autoGen5065 => 'ブロードコム';

  @override
  String get autoGen5066 => 'クアルコム';

  @override
  String get autoGen5067 => 'インテル';

  @override
  String get autoGen5068 => 'りんご';

  @override
  String get autoGen5069 => 'ゼロモーメント';

  @override
  String get autoGen5070 => '松下';

  @override
  String get autoGen5071 => '大安';

  @override
  String get autoGen5072 => 'バイオスター';

  @override
  String get autoGen5073 => 'カラフル';

  @override
  String get autoGen5074 => 'ゾタック';

  @override
  String get autoGen5075 => '耿生';

  @override
  String get autoGen5076 => '営中';

  @override
  String get autoGen5077 => 'スーパーマイクロ';

  @override
  String get autoGen5078 => '恩田';

  @override
  String get autoGen5079 => 'スパルタカス';

  @override
  String get autoGen5080 => '盤正';

  @override
  String get autoGen5081 => '中国南部';

  @override
  String get autoGen5082 => 'ジンユエ';

  @override
  String get autoGen5083 => 'ケ・ナオ';

  @override
  String get autoGen5084 => '郭朔';

  @override
  String get autoGen5085 => 'ジェットウェイ';

  @override
  String get autoGen5086 => 'ダイヤモンド';

  @override
  String get autoGen5087 => 'トップスター';

  @override
  String get autoGen5088 => 'ミンシュアン';

  @override
  String get autoGen5089 => 'メイジエ';

  @override
  String get autoGen5090 => 'エリート';

  @override
  String get autoGen5091 => 'フォックスコン';

  @override
  String get autoGen5092 => '少し';

  @override
  String get autoGen5093 => '双民';

  @override
  String get autoGen5094 => 'ウンジ';

  @override
  String get autoGen5095 => '銀河';

  @override
  String get autoGen5096 => '聖なる旗';

  @override
  String get autoGen5097 => 'サメ';

  @override
  String get autoGen5098 => 'セウォ';

  @override
  String get autoGen5099 => 'アドバンテック';

  @override
  String get autoGen5100 => 'アドリンク';

  @override
  String get autoGen5101 => '偉大なメカニック';

  @override
  String get autoGen5102 => '愛国者';

  @override
  String get autoGen5103 => 'ASL';

  @override
  String get autoGen5104 => 'エリング';

  @override
  String get autoGen5105 => 'サファイア';

  @override
  String get autoGen5106 => 'コンテック';

  @override
  String get autoGen5107 => '青雲';

  @override
  String get autoGen5108 => 'ファーウェイ';

  @override
  String get autoGen5109 => 'アワ';

  @override
  String get autoGen5110 => '赤飯';

  @override
  String get autoGen5111 => '栄光';

  @override
  String get autoGen5112 => 'サムスン';

  @override
  String get autoGen5113 => '機械的回転';

  @override
  String get autoGen5114 => 'メカニック';

  @override
  String get autoGen5115 => 'トール';

  @override
  String get autoGen5116 => 'Razer';

  @override
  String get autoGen5117 => 'エイサー';

  @override
  String get autoGen5118 => '東芝';

  @override
  String get autoGen5119 => '富士通';

  @override
  String get autoGen5120 => '青空';

  @override
  String get autoGen5121 => 'エイリアン';

  @override
  String get autoGen5122 => '神州';

  @override
  String get autoGen5123 => 'ハイアール';

  @override
  String get autoGen5124 => '中白';

  @override
  String get autoGen5125 => '玄龍';

  @override
  String get autoGen5126 => '未来人';

  @override
  String get autoGen5127 => 'キューブ';

  @override
  String get autoGen5128 => '玄パイ玄吉スター';

  @override
  String get autoGen5129 => '更新を確認しています。お待ちください...';

  @override
  String get autoGen5130 => 'アップデートを確認しました。後でもう一度お試しください';

  @override
  String get autoGen5131 => 'アップデートの確認に失敗しました。後でもう一度お試しください';

  @override
  String get autoGen5132 => 'リリース バージョン リストを取得できませんでした。後でもう一度お試しください。';

  @override
  String get autoGen5133 => 'リリース バージョン リストが空です';

  @override
  String get autoGen5134 => 'デスクトップ';

  @override
  String get autoGen5135 => 'サーバ';

  @override
  String get autoGen5136 =>
      'SIP をオンにしてシステムのセキュリティを強化します。通常、グラフィックス カード、WiFi、その他のドライバーを駆動するために OCLP を使用する必要がない場合は、このボックスをオンにすることをお勧めします。';

  @override
  String get autoGen5137 => 'SIP ソリューション 1 を無効にする';

  @override
  String get autoGen5138 =>
      'SIP が完全に無効になっていない限り、BigSur 以降のシステムでグラフィックス カードや WiFi などを駆動するために OCLP を使用する必要がある場合は、通常、ボックスにチェックを入れることをお勧めします。';

  @override
  String get autoGen5139 => 'SIP ソリューション 2 を無効にする';

  @override
  String get autoGen5140 =>
      'SIP を完全に無効にします。通常、BigSur 以降のシステムで OCLP を使用してグラフィックス カードや WiFi などを駆動する必要がある場合は、このオプションが優先されます。';

  @override
  String get autoGen5141 =>
      'アダプティブディスプレイ、ディスプレイ解像度に応じて OpenCore ブー​​トインターフェイスの表示比率を自動的に調整します';

  @override
  String get autoGen5142 =>
      '標準解像度モニター、720p、1080p、1440p およびその他の標準解像度モニターに適しています';

  @override
  String get autoGen5143 =>
      '高解像度ディスプレイ、4K や 5K などの高解像度ディスプレイに適しています (高解像度画面の OpenCore ブー​​ト ページで UI 要素が小さすぎる問題を効果的に改善できます)';

  @override
  String get autoGen5144 => 'ProcessorType を変更しないでください';

  @override
  String get autoGen5145 => 'システムのデフォルトの CPU タイプ表示を維持する';

  @override
  String get autoGen5146 =>
      'Intel および AMD プラットフォームの CPU 名変更オプション 1 (通常は 6 コア以下の CPU に適用されます)';

  @override
  String get autoGen5147 =>
      'Intel および AMD プラットフォームの CPU 名変更オプション 2 (通常は 8 コア以上の CPU に適用されます)';

  @override
  String get autoGen5148 =>
      'Intel および AMD プラットフォームの CPU 名変更の代替案 (通常は 8 コア以上の i7 および i9 シリーズ CPU に適用されます)';

  @override
  String get autoGen5149 => 'ASUS';

  @override
  String get autoGen5150 => 'ギガバイト';

  @override
  String get autoGen5151 => 'アスロック';

  @override
  String get autoGen5152 => 'MSI';

  @override
  String get autoGen5153 => 'デル';

  @override
  String get autoGen5154 => 'レノボ';

  @override
  String get autoGen5155 => 'ソニー(VAIO)';

  @override
  String get autoGen5156 => 'HP';

  @override
  String get autoGen5157 => 'Google(クロームブック)';

  @override
  String get autoGen5158 => 'マイクロソフト サーフェス';

  @override
  String get autoGen5159 => '通常のマザーボード';

  @override
  String get autoGen5160 =>
      'B850、B650、B550、および A520 マザーボード、550 シリーズ チップセット ノートブック';

  @override
  String get autoGen5161 => 'TRx40 マザーボード';

  @override
  String get autoGen5162 => 'X570マザーボード';

  @override
  String get autoGen5163 => 'X470 または B450 マザーボード 2020 年後半、または更新された BIOS';

  @override
  String get autoGen5164 => '6シリーズチップセット';

  @override
  String get autoGen5165 => 'Intel第3世代CPUと6シリーズチップセット（例：H61、HM65）を混在させる場合のチェック';

  @override
  String get autoGen5166 => '7シリーズチップセット';

  @override
  String get autoGen5167 => 'Intel第2世代CPUと7シリーズチップセット（例：B75、HM76）を混在させる場合のチェック';

  @override
  String get autoGen5168 => 'H110、B150、B250、Q270など';

  @override
  String get autoGen5169 =>
      '一部の OEM マザーボードには USB 所有権のリリースに関する問題があります: EHCI ハンドオフが失敗する';

  @override
  String get autoGen5170 => '2020 年の Z490 およびその他の BIOS アップデート';

  @override
  String get autoGen5171 =>
      '6 シリーズ チップセット (Intel 第 3 世代 CPU と 6 シリーズ チップセット (例: H61、HM65) を混在させる場合に確認してください)';

  @override
  String get autoGen5172 =>
      '7 シリーズ チップセット (Intel 第 2 世代 CPU と 7 シリーズ チップセット (例: B75、HM76) を混在させる場合に確認してください)';

  @override
  String get autoGen5173 =>
      'H110、B150、B250、Q270 など (一部の OEM マザーボードには USB 所有権の解放に関する問題があります: EHCI ハンドオフの失敗)';

  @override
  String get autoGen5174 => 'mbconfから';

  @override
  String get autoGen5175 => 'DVIダブルチェーン';

  @override
  String get autoGen5176 => 'DVIシングルチェーン';

  @override
  String get autoGen5177 =>
      'OS X Snow Leopard 10.6 ～ macOS High Sierra 10.13 をサポート';

  @override
  String get autoGen5178 =>
      'OS X Snow Leopard 10.6 ～ macOS High Sierra 10.13 をサポートし、コア グラフィックス + 独立したグラフィックス モデルに適しています';

  @override
  String get autoGen5179 =>
      'OS X Mountain Lion 10.8 ～ macOS Catalina 10.15 をサポート、Ivy Bridge アーキテクチャに適し、コアグラフィックスモデルのみ';

  @override
  String get autoGen5180 =>
      'OS X Mountain Lion 10.8 ～ macOS Catalina 10.15 をサポート、Ivy Bridge アーキテクチャ、コア ディスプレイ デコード + 独立したディスプレイ出力モデルに適しています';

  @override
  String get autoGen5181 =>
      'OS X Mavericks 10.9 ～ macOS Big Sur 11 をサポート、Haswell アーキテクチャに適した NVIDIA Maxwell および Pascal 独立グラフィックス';

  @override
  String get autoGen5182 =>
      'OS X Mavericks 10.9 ～ macOS Big Sur 11 をサポート、Haswell アーキテクチャのみのコアディスプレイモデルに適しています';

  @override
  String get autoGen5183 =>
      'OS X Mavericks 10.9 ～ macOS Big Sur 11 をサポート、Haswell アーキテクチャのコアグラフィックス + 独立したグラフィックスモデルに適しています';

  @override
  String get autoGen5184 =>
      'macOS El Capitan 10.11 ～ macOS Monterey 12 をサポートし、コア グラフィックス (または独立したグラフィックス) を備えたモデルに適しています。';

  @override
  String get autoGen5185 =>
      'macOS El Capitan 10.11 ～ macOS Monterey 12 をサポート、Broadwell アーキテクチャのコア ディスプレイ (または独立したディスプレイ) に適しています';

  @override
  String get autoGen5186 =>
      'macOS Sierra 10.12 ～ macOS Ventura 13 に対応。コアディスプレイ + 独立ディスプレイモデルに適しています。このモデルを使用すると、ほとんどのコア ディスプレイのみのユーザーで画面の色の異常が発生することに注意してください。このモデルは、コア ディスプレイのみのユーザーにはお勧めできません。';

  @override
  String get autoGen5187 =>
      'macOS Sierra 10.12 ～ macOS Ventura 13 をサポート、コア ディスプレイ デコード + 独立したディスプレイ出力モデルに適しています';

  @override
  String get autoGen5188 =>
      'macOS 10.14 ～ macOS Sequoia 15をサポート、コアグラフィックス（または独立したグラフィックス）を搭載したモデルに適しています';

  @override
  String get autoGen5189 =>
      'macOS 10.15 ～ macOS Tahoe 26 をサポート、i7-10700K 以下のプロセッサ コア ディスプレイ (または独立したディスプレイ付き) モデルに適しています';

  @override
  String get autoGen5190 =>
      'macOS 10.15 ～ macOS Tahoe 26 をサポート、i9-10850K 上位プロセッサ コア ディスプレイ (または独立したディスプレイ付き) モデルに適しています';

  @override
  String get autoGen5191 => 'macOS 10.5 ～ macOS El Capitan 10.11 をサポート';

  @override
  String get autoGen5192 => 'macOS 10.6 ～ macOS High Sierra 10.13 をサポート';

  @override
  String get autoGen5193 => 'macOS 10.7 ～ macOS High Sierra 10.13をサポート';

  @override
  String get autoGen5194 => 'macOS 10.8 ～ macOS Catalina 10.15をサポート';

  @override
  String get autoGen5195 => 'macOS 10.9 ～ macOS Big Sur 11をサポート';

  @override
  String get autoGen5196 => 'macOS High Sierra 10.13 ～ macOS Monterey 12 をサポート';

  @override
  String get autoGen5197 => 'macOS Mojave 10.14 ～ macOS Monterey 12 をサポート';

  @override
  String get autoGen5198 => 'OS X El Capitan 10.11 ～ macOS Big Sur 11 をサポート';

  @override
  String get autoGen5199 => 'OS X El Capitan 10.11 ～ macOS Monterey 12 をサポート';

  @override
  String get autoGen5200 => 'macOS Sierra 10.12 ～ macOS Monterey 12 をサポート';

  @override
  String get autoGen5201 =>
      'macOS Sierra 10.12 ～ macOS Monterey 12 をサポート (コア ディスプレイ HD 515 は公式には macOS Monterey 12 のみをサポート、偽物は最新の macOS Sequoia 15 をサポート)';

  @override
  String get autoGen5202 =>
      'macOS Sierra 10.12 ～ macOS Monterey 12 をサポート (コアディスプレイ Iris 540 は公式には macOS Monterey 12 のみをサポートし、偽造バージョンは最新の macOS Sequoia 15 をサポートします)';

  @override
  String get autoGen5203 =>
      'macOS Sierra 10.12 ～ macOS Monterey 12 をサポート (コアディスプレイ Iris 550 は公式には macOS Monterey 12 のみをサポートし、偽造バージョンは最新の macOS Sequoia 15 をサポートします)';

  @override
  String get autoGen5204 =>
      'macOS Sierra 10.12 ～ macOS Monterey 12 をサポート (コアディスプレイ HD530 は正式に macOS Monterey 12 のみをサポート、偽物は最新の macOS Sequoia 15 をサポート)';

  @override
  String get autoGen5205 => 'macOS High Sierra 10.13 ～ macOS Ventura 13 をサポート';

  @override
  String get autoGen5206 => 'macOS Mojave 10.14 ～ macOS Sequoia 15 をサポート';

  @override
  String get autoGen5207 => 'macOS Catalina 10.15 ～ macOS Tahoe 26をサポート';

  @override
  String get autoGen5208 => 'macOS Catalina 10.15 ～ macOS Sequoia 15をサポート';

  @override
  String get autoGen5209 =>
      'macOS 10.9 ～ macOS Monterey 12 をサポートし、スタンドアロン グラフィックスのみのモデルに適しています';

  @override
  String get autoGen5210 =>
      'macOS 10.13 ～ macOS Sequoia 15に対応。スタンドアロングラフィックスのみのモデルに適用。 Intel 第 11 世代以降では、通常このモデルが使用されます。 CPU周波数変換とターボ周波数は正常であり、追加のKextパッチは必要ありません（macOSシステムのターボ周波数が正常でない場合は、ネイティブSSDT-PLUGを抽出して使用してください）';

  @override
  String get autoGen5211 =>
      'macOS 10.15 ～ macOS Tahoe 26 をサポートし、A カード独立グラフィックス モデルに適しています。サポートされているドライバー不要の A カード (RX560、RX570、RX5500、RX6600 など) は、VDA ハード デコードを完全にサポートします。 Intel 第 11 世代以降では、このモデルが通常使用され、CPU ターボ周波数が正常ではなく、追加の Kext パッチが必要です。 [オプションの Kexts ドライバー] -> [CPU 関連] -> [CPU 可変周波数ドライバー、主に第 11 世代以降のプラットフォーム MacPro7,1 周波数変換サポートを提供] に移動して、このオプションを確認できます。';

  @override
  String get autoGen5212 => 'macOS の互換性範囲が設定されていません';

  @override
  String get autoGen5213 => 'デバイス ID は 4 文字である必要があります';

  @override
  String get autoGen5214 =>
      'コア ディスプレイ フレーム バッファー (Framebuffer) パッチ マスター スイッチを有効にする';

  @override
  String get autoGen5215 =>
      'ビデオ メモリを 1536M に変更します (1.5G ビデオ メモリ、Apple の公式デフォルト値、第 3 世代から第 10 世代の Intel コア ディスプレイ プラットフォームに適しています)';

  @override
  String get autoGen5216 =>
      'ビデオ メモリを 2048M に変更します (2G ビデオ メモリ、ツールのデフォルト値、第 3 世代から第 10 世代の Intel コア ディスプレイ プラットフォームに適しています)';

  @override
  String get autoGen5217 =>
      'ビデオ メモリを 3072M (3G ビデオ メモリ、第 3 世代から第 10 世代の Intel コア ディスプレイ プラットフォームに適しています) に変更します。';

  @override
  String get autoGen5218 =>
      'ビデオ メモリを 4095M に変更します (4G ビデオ メモリ、第 3 世代から第 10 世代の Intel コア ディスプレイ プラットフォームに適しています)';

  @override
  String get autoGen5219 =>
      '第 4 世代 Haswell プラットフォームでの 1080P 高解像度の画面のぼやけの問題を修正します (たとえば、高解像度の画面のぼやけは、値が十分に大きくないことが原因である可能性があります。このパッチは Haswell コア ディスプレイ専用のパッチです。1080P 以下の画面にはこの構成を使用することをお勧めします)。';

  @override
  String get autoGen5220 =>
      '第 4 世代 Haswell プラットフォームにおける 2K や 4K などの高解像度画面の問題を修正します (たとえば、値が十分に大きくないため、高解像度画面がぼやける場合があります。このパッチは Haswell コア ディスプレイ専用のパッチです。2K および 4K 画面にはこの構成を使用することをお勧めします)';

  @override
  String get autoGen5221 => 'Ivy Bridge高解像度画面候補パッチ';

  @override
  String get autoGen5222 => 'con0 インターフェイス パッチを有効にする';

  @override
  String get autoGen5223 => 'con1 インターフェイス パッチを有効にする';

  @override
  String get autoGen5224 => 'con2 インターフェイスのパッチ適用を有効にする';

  @override
  String get autoGen5225 => 'con3 インターフェイス パッチを有効にする';

  @override
  String get autoGen5226 => 'Ivy Bridge高解像度画面候補インターフェイスパッチ';

  @override
  String get autoGen5227 => 'Sandy Bridge ノートブックの高解像度画面 (解像度 1600x900 以上) パッチ';

  @override
  String get autoGen5228 => 'Ironlake/Arrandale ノートブック用のオプションのパッチ';

  @override
  String get autoGen5229 =>
      'HDMI 高解像度画面 60 fps ソリューションを修正 (場合によっては、Intel コア ディスプレイはデフォルトで HDMI 1.4 標準を使用する場合があります。このパラメータを有効にすると、HDMI 2.0 がより高い解像度とリフレッシュ レートをサポートするようになります (4K@60HZ のサポートなど)。';

  @override
  String get autoGen5230 =>
      'HDMI オーディオ出力を修復します (通常は適切な ALCID のみが必要ですが、このパラメータにより正しい HDMI オーディオ出力の問題が解決される場合があります)';

  @override
  String get autoGen5231 =>
      'デジタル サウンド用の DP から HDMI への変換パッチを無効にします (DisplayPort インターフェイスがコンバーターを介して HDMI インターフェイスに接続されている場合に、HDMI 接続の安定性と信頼性を確保します)';

  @override
  String get autoGen5232 =>
      'すべてのモニターでオンライン ステータスを強制します。これは、コア ディスプレイのマルチスクリーン出力に役立ちます。場合によっては、スリープから復帰した後の黒い画面や、起動時に画面を点灯させるためにモニター ケーブルを抜き差しする必要があるなどの問題を回避できます (通常、第 8 世代 Coffee Lake 以降のコア ディスプレイに適用されます)。';

  @override
  String get autoGen5233 =>
      'コア ディスプレイのパフォーマンスを向上します (例: コア ディスプレイの 4K hevc エンコード、解像度、fps が理想的な値に達しない問題を修正します)';

  @override
  String get autoGen5234 =>
      'コア ディスプレイの完全なファームウェアの読み込みを有効にし、コア ディスプレイの使用率を向上させ、コア ディスプレイのパフォーマンスを向上させます。このパラメータを追加すると、システムが入力できなくなる可能性があるため、使用には注意してください';

  @override
  String get autoGen5235 =>
      '外部 HDMI 高解像度ディスプレイを点灯しようとしたときに、第 6 世代 Skylake コア ディスプレイ、第 7 世代 Kaby Lake コア ディスプレイ、および第 8 世代 Coffee Lake コア ディスプレイ ドライバーによって引き起こされる無限ループの問題を修正しました (具体的な症状としては、HDMI ケーブルを接続した後、ノートブックの内部画面が黒くなりますが、バックライトは点灯し、システムが応答しなくなり、外部画面に出力が表示されなくなる)。';

  @override
  String get autoGen5236 =>
      '第 10 世代 Ice Lake プラットフォームでの低いコア ディスプレイ クロック (CDCLK) 周波数によって引き起こされるカーネル クラッシュの問題を修正';

  @override
  String get autoGen5237 =>
      'ドライバーが DVMT の事前割り当てメモリ サイズを誤って計算することが原因で発生する、第 10 世代 Ice Lake プラットフォームでのカーネル クラッシュを修正しました。';

  @override
  String get autoGen5238 =>
      '明るさスライダー (明るさスライダー) 設定を調整して、トランジションをよりスムーズかつ自然にし、ユーザー エクスペリエンスを向上させます。';

  @override
  String get autoGen5239 =>
      '第 7 世代 Kaby Lake、第 8 世代、および第 9 世代 Coffee Lake プラットフォームで macOS 13.4 以降を実行しているノートブックで、起動後 3 分間暗い画面が続く問題を修正しました。';

  @override
  String get autoGen5240 =>
      '第 7 世代 Kaby Lake、第 8 世代、および第 9 世代 Coffee Lake プラットフォームで macOS 13.3 以下を実行しているノートブックで、起動後 3 分間暗い画面が表示される問題を修正しました。';

  @override
  String get autoGen5241 =>
      'ノートブックの電源を入れたときに、第 10 世代 Ice Lake プラットフォームの画面が 7 ～ 15 秒間持続する問題を修正しました';

  @override
  String get autoGen5242 =>
      '第 10 世代 Ice Lake コア ディスプレイ HDMI 高解像度ディスプレイで、4K@60Hz および一部の 2K/4K 高リフレッシュ シナリオで黒い画面が表示され、信号がなくなり、解像度が正しく出力されない問題を修正しました (コア ディスプレイ (IGPU) の「最大ピクセル クロック オーバーライド」を強制的に有効にする)';

  @override
  String get autoGen5243 =>
      'Nuclear ディスプレイの不具合効果や画面のちらつきの問題 (Nuclear ディスプレイ HD530 など) を修復するために使用されます。';

  @override
  String get autoGen5244 =>
      '独立ディスプレイを無効にする (通常、デュアルグラフィックラップトップの独立ディスプレイを駆動できない場合、独立ディスプレイを無効にする必要があります)';

  @override
  String get autoGen5245 =>
      '高解像度画面の内部画面が誤った最大リンク レート値を返し、内部画面が点灯しているときに直接クラッシュするというラップトップ (Dell XPS 15 9570 やその他の高解像度画面のノートブックなど) の問題を修正しました (高解像度画面のノートブックではこのボックスをオンにすることをお勧めします)。';

  @override
  String get autoGen5246 =>
      'モニターの EDID を AAPL00 インターフェイス (通常はノートブックの内部画面) に挿入して、インターフェイスの黒い画面の問題を解決します (注: 最初に EDID 構成ページでモニターの EDID を挿入する必要があります。EDID は、「ディスプレイ構成」→「ディスプレイ EDID」ツールで入力できます。B560 などの 500 シリーズのマザーボードの場合、HDMI 出力を修復する場合は、モニターの EDID を挿入する必要があります。他の Intel プラットフォームでは、高い確率で黒い画面が表示される場合がありますが、画面がぼやけたり、紫色の画面になったり、黒い画面になったりする問題が修復される場合があります)。';

  @override
  String get autoGen5247 =>
      'モニターの EDID を AAPL01 インターフェイスに挿入して、インターフェイスの黒い画面と表示がない問題を修正します (注: 最初に EDID 構成ページでモニターの EDID を挿入する必要があります。EDID は、「ディスプレイ構成」→「ディスプレイ EDID」ツールで入力できます。B560 などの 500 シリーズのマザーボードは、HDMI 出力を修復するときにモニターの EDID を挿入する必要があります。そうしないと、黒い画面が発生する可能性が高くなります。その他の場合は、時々、 Intel プラットフォーム、コア ディスプレイのぼやけた画面、紫色の画面、または黒い画面の問題は修復される可能性があります)';

  @override
  String get autoGen5248 =>
      'モニターの EDID を AAPL02 インターフェイスに挿入して、インターフェイスの黒い画面と表示がない問題を修正します (注: 最初に EDID 構成ページでモニターの EDID を挿入する必要があります。EDID は、「ディスプレイ構成」→「ディスプレイ EDID」ツールで入力できます。B560 などの 500 シリーズのマザーボードは、HDMI 出力を修復するときにモニターの EDID を挿入する必要があります。そうしないと、黒い画面が発生する可能性が高くなります。 Intel プラットフォーム、コア ディスプレイのぼやけた画面、紫色の画面、または黒い画面の問題は修復される可能性があります)';

  @override
  String get autoGen5249 =>
      'LSPCON サポートを有効にし、DisplayPort を HDMI 2.0 出力に変換します (ポート 0 ～ 3 LSPCON 信号コンバーターが必要、第 6 世代 Skylake ～ 第 10 世代 Comet Lake、Ice Lake Intel プラットフォームに適しています)';

  @override
  String get autoGen5250 => 'ポート 0 LSPCON 信号コンバータ (LSPCON サポートを有効にする必要があります)';

  @override
  String get autoGen5251 => 'ポート 1 LSPCON 信号コンバータ (LSPCON サポートを有効にする必要があります)';

  @override
  String get autoGen5252 => 'ポート 2 LSPCON 信号コンバータ (LSPCON サポートを有効にする必要があります)';

  @override
  String get autoGen5253 => 'ポート 3 LSPCON 信号コンバータ (LSPCON サポートを有効にする必要があります)';

  @override
  String get autoGen5254 =>
      'フレームバッファ メモリを 9M に変更します (フレームバッファ メモリ サイズは高解像度画面に影響します。通常、framebuffer-stolenmem と組み合わせて使用​​されます)。';

  @override
  String get autoGen5255 =>
      '盗んだメモリを 19M に変更します (1080P 画面に適用、ツールのデフォルト値、確認する必要はありません。BIOS に DVMT パラメータがある場合は、64M に変更することをお勧めします。BIOS で DVMT パラメータが変更されている場合、このパラメータは削除できます)';

  @override
  String get autoGen5256 =>
      '盗んだメモリを 64M に変更します (2K または 4K 画面に適用されます。BIOS に DVMT パラメータがある場合は、64M 以上に変更することをお勧めします。BIOS で DVMT パラメータが変更されている場合、このパラメータは削除できます)';

  @override
  String get autoGen5257 =>
      '盗んだメモリを 128M に変更します (4K 画面に適用されます。BIOS に DVMT パラメータがある場合、高解像度画面の場合は 128M または 256M 以上に変更することをお勧めします。BIOS で DVMT パラメータが変更されている場合、このパラメータは削除できます)';

  @override
  String get autoGen5258 => 'con0 HDMI ポートを有効にする (HDMI インターフェース No. 0 が必要)';

  @override
  String get autoGen5259 =>
      'No. 0 HDMI インターフェース、第 6 世代から第 10 世代 HDMI の黒い画面の問題を修正するために使用されます (con0 HDMI ポートを有効にする必要があります)';

  @override
  String get autoGen5260 => 'con1 HDMI ポートを有効にする (HDMI インターフェース No. 1 が必要)';

  @override
  String get autoGen5261 =>
      'No. 1 HDMI インターフェイス。第 6 世代から第 10 世代 HDMI の黒い画面の問題を解決するために使用されます (con1 HDMI ポートを有効にする必要があります)。';

  @override
  String get autoGen5262 => 'con2 HDMI ポートを有効にする (HDMI インターフェース No. 2 が必要)';

  @override
  String get autoGen5263 =>
      'HDMI インターフェース No. 2、第 6 世代から第 10 世代 HDMI の黒い画面の問題を解決するために使用 (con2 HDMI ポートを有効にする必要があります)';

  @override
  String get autoGen5264 => 'ビデオメモリ/DVMTパラメータ';

  @override
  String get autoGen5265 => '第 4 世代 Haswell 固有のパラメータ';

  @override
  String get autoGen5266 => '第3世代Ivy Bridge高解像度画面候補パッチ';

  @override
  String get autoGen5267 => '第2世代Sandy Bridge高解像度画面候補パッチ';

  @override
  String get autoGen5268 => '第 1 世代 Arrandale ノートブック用のパッチ候補';

  @override
  String get autoGen5269 => 'HDMI/インターフェースの修理';

  @override
  String get autoGen5270 => '第 10 世代 Ice Lake の修正';

  @override
  String get autoGen5271 => '普遍的な修正';

  @override
  String get autoGen5272 => 'Ivy Bridge ノートブックの高解像度画面 (解像度 1600x900 以上) パッチ';

  @override
  String get autoGen5273 =>
      'con0 インターフェイス HDMI タイプ修正パッチを有効にして、第 6 世代から第 10 世代までの HDMI のブラック スクリーン、パープル スクリーン、オーディオの問題を修正します。';

  @override
  String get autoGen5274 =>
      'con1 インターフェイス HDMI タイプ修正パッチを有効にして、第 6 世代から第 10 世代までの HDMI のブラック スクリーン、パープル スクリーン、オーディオの問題を修正します。';

  @override
  String get autoGen5275 =>
      'con2 インターフェイス HDMI タイプ修正パッチを有効にして、第 6 世代から第 10 世代までの HDMI のブラック スクリーン、パープル スクリーン、オーディオの問題を修正します。';

  @override
  String get autoGen5276 =>
      'alc_codec.json 形式エラー: ルート ノードは Map<String, Dynamic> である必要があります';

  @override
  String get autoGen5277 =>
      '-v を有効にしてコードを実行します (コードがスタックしたときにエラーを特定するのに便利で、デバッグおよびブート段階に適しています)';

  @override
  String get autoGen5278 =>
      'Mac システムでは、カーネルのクラッシュが発生したときに、より多くのシンボル情報を出力すると便利です。これは、問題のトラブルシューティングに役立ちます。このパラメータは通常、debug=0x100 で使用されます (初めてデバッグおよび起動するときにチェックすることを強くお勧めします)';

  @override
  String get autoGen5279 =>
      'カーネルがクラッシュしたときの自動再起動を防止し、パニック クラッシュ ログを表示しやすくします (初めてデバッグおよび起動するときにこれを確認することを強くお勧めします)';

  @override
  String get autoGen5280 =>
      'ウォッチドッグ機能を無効にして、パニック クラッシュ リスタートが誤ってトリガーされるのを防ぎます (デバッグ ブートに適用)';

  @override
  String get autoGen5281 =>
      'カーネル アドレス空間のランダム化 (KASLR) を無効にして、カーネルと kext (カーネル拡張機能) が同じ固定メモリ マップにロードされるようにし、ランダムなスライド値によって引き起こされるメモリ競合によって引き起こされる初期起動時のカーネル クラッシュを回避します (デバッグ ブートに適用)';

  @override
  String get autoGen5282 =>
      'macOS の初回起動時にモデル チェックをスキップして、SMBIOS が低すぎる、または高すぎることによる禁止記号を回避し、システムが正常に起動できることを確認します (このパラメーターはインストール中にモデル チェックをスキップできないことに注意してください。インストール中に「macOS はサポートされていません」のようなメッセージが表示されます。この時点で、新しいシステムまたは古いシステムをサポートするために SMBIOS をより高いレベルまたはより低いレベルに変更できます)。';

  @override
  String get autoGen5283 =>
      'このパラメーターは、AMFI、比較的新しいグラフィックス カード (HD4000 以降、GT710 およびその他の Kepler コア以降など)、または WiFi ドライバーを無効にする場合に適用されます。 amfi_get_out_of_my_way=0x1 パラメーターと同時に使用しないように注意してください。 (このパラメータは SIP が無効な場合にのみ有効であり、SIP が有効になるとこのパラメータは自動的に削除されます)';

  @override
  String get autoGen5284 =>
      'AMFI (AMFI 無効) セキュリティ チェックをバイパスし続けるために、AMFIPass.kext が最新の macOS Tahoe 26 システムで適切に有効化およびアクティブ化できることを確認してください。 (注: 1. このパラメータは AMFI パラメータを無効にすると同時に使用できません。このパラメータは AMFIPass.kext と一緒に使用する必要があります。 2. このパラメータは通常、最新のシステムでのみ使用されます。必要な場合を除き、追加しないでください)';

  @override
  String get autoGen5285 =>
      'このパラメータは、AMFI が無効になっている場合、古いプラットフォーム、古いグラフィックス カード (GT240 など)、または WiFi ドライバーが使用されている場合に適用されます。 amfi=0x80 パラメータを同時に使用しないように注意してください。 (これは SIP が無効な場合にのみ有効であり、このパラメータは SIP が有効になると自動的に削除されます)';

  @override
  String get autoGen5286 =>
      'AMFI を無効にした後の一部のアプリケーション (Baidu Netdisk など) のクラッシュ問題を修正しました (これは SIP が無効な場合にのみ有効であり、このパラメータは SIP が有効になった後に自動的に削除されます)。';

  @override
  String get autoGen5287 =>
      '最新のシステム（主にベータ版）で発生する可能性のある問題を修正します（サウンドカード、Bluetooth、CPU周波数などの突然の異常など、システムドライバの例外。最新のベータ版システムを試す場合は、これを確認することを強くお勧めします）';

  @override
  String get autoGen5288 =>
      '1 つの CPU コアのみを有効にする (X58、X79、X99、X299 およびその他のマルチコア サーバー CPU コアのクラッシュ、初期のインストールおよびデバッグ段階に適用)';

  @override
  String get autoGen5289 =>
      'VT-d をオフにして (IOMMU を無効にします。BIOS が VT-d をオフにしないときに確認できます)、一部のマザーボードがシステムの起動後またはシステムに入った後にスタックする問題を解決します。';

  @override
  String get autoGen5290 =>
      'Apple グラフィックス ファームウェアのロードを無効にして、起動時のファームウェアのロード失敗や再試行ループによるスタックを回避します (Intel グラフィックスにのみ適用)';

  @override
  String get autoGen5291 =>
      'Intel コア ディスプレイを無効にする (コア ディスプレイを駆動できず、アクセラレーション ハード デコードがサポートされていない場合は確認することをお勧めします)';

  @override
  String get autoGen5292 =>
      '独立したグラフィックスを無効にする (通常、Intel デュアル グラフィックス ノートブックの独立したグラフィックス カード (N カードでよく使用される) を駆動できない場合は、チェックすることをお勧めします)';

  @override
  String get autoGen5293 =>
      'NVIDIA ドライバーを無効にする (互換性のない N カードをデバッグする場合にのみ適用されます)';

  @override
  String get autoGen5294 =>
      'Intel コア グラフィックス アクセラレーションを無効にします (例: OCLP を使用していて、コア グラフィックス パッチを適用した後に正常に起動できない場合、アクセラレーションなしでデバッグのみを確認できます)';

  @override
  String get autoGen5295 =>
      'Intel コア ディスプレイのパフォーマンスを修復して改善します (例: コア ディスプレイの 4K hevc エンコード、解像度、fps が理想的な値に達しない問題を修正します)';

  @override
  String get autoGen5296 =>
      '画面がオンになったときに直接クラッシュを引き起こす、Intel コア ディスプレイの最大リンク レート値の問題を修正しました ((特に Skylake、Kaby Lake、Coffee Lake、Comet Lake、黒い画面と信号がない、期待される 4K 解像度に達しないなど))';

  @override
  String get autoGen5297 =>
      'コア ディスプレイの解像度の問題を修正し、IGPU の「最大ピクセル クロック オーバーライド」を強制的に有効にし、macOS のデフォルトの解像度、リフレッシュ レート、その他の制限を解除します。';

  @override
  String get autoGen5298 =>
      '一部のラップトップの HDMI 出力で 4K 黒い画面が表示される問題を修正しました (通常、「gIOScreenLockState3」でスタックする ThinkPad P71/7700HQ/HD630/4K などのラップトップに適用されます)。';

  @override
  String get autoGen5299 =>
      '第 10 世代 Ice Lake プラットフォームでの低いコア ディスプレイ クロック (CDCLK) 周波数によって引き起こされるカーネル クラッシュの問題を修正';

  @override
  String get autoGen5300 =>
      'ドライバーが DVMT の事前割り当てメモリ サイズを誤って計算することが原因で発生する、第 10 世代 Ice Lake プラットフォームでのカーネル クラッシュの問題を修正しました。';

  @override
  String get autoGen5301 =>
      'ノートブックの電源を入れたときに、第 10 世代 Ice Lake プラットフォームの画面が 7 ～ 15 秒間持続する問題を修正しました';

  @override
  String get autoGen5302 =>
      '起動プロセス中にテレメトリ モジュールをロードするには、iGPU (コア グラフィックス) を無効にします。一部のノートブック (特に Chromebook) では、このモジュールをロードするときに起動フェーズ中にシステムがフリーズしたりフリーズしたりすることがあります (Intel Skylake 第 6 世代以降のノートブックに該当)';

  @override
  String get autoGen5303 =>
      'macOS Ventura 13.4 以下、第 7 世代 KBL、第 8 世代および第 9 世代 CFL ノートブック プラットフォームのバックライト レジスタを修正し、黒い画面または暗い画面が 3 分間続く問題を修正します (ノートブックに適用)';

  @override
  String get autoGen5304 =>
      'macOS Ventura 13.4 以降、第 7 世代 KBL、第 8 世代および第 9 世代 CFL ノートブック プラットフォームのバックライト レジスタを修正し、黒い画面または暗い画面が 3 分間続く問題を修正します (ノートブックに適用)';

  @override
  String get autoGen5305 =>
      '明るさスライダー (明るさスライダー) 設定を調整して、トランジションをよりスムーズかつ自然にし、ユーザー エクスペリエンスを向上させます (ノートブックに適用)';

  @override
  String get autoGen5306 =>
      'フレーム バッファをコピーする代わりに、2 番目の起動フェーズで Apple ロゴを描画します。外部モニターを接続すると、プログレスバーからログインデスクトップにスムーズに移行します。場合によっては、システムに入るときに黒い画面の問題が解決されることがあります。同時に、モニターケーブルを抜き差しして画面をオンにすると便利です。';

  @override
  String get autoGen5307 => 'X58 などのプラットフォーム カードの ACPI 構成開始の問題を修正';

  @override
  String get autoGen5308 => 'X58 などのプラットフォーム カードの ACPI 構成開始の問題を修正';

  @override
  String get autoGen5309 =>
      'AMD GPU でのハードウェア デジタル著作権管理 (DRM) サポートの問題を修正しました (ストリーミング サービスによって提供される高品質ビデオなどの DRM で保護されたデジタル コンテンツを、サポートされている AMD GPU で体験できるようになります)';

  @override
  String get autoGen5310 =>
      'ATI および AMD グラフィックス カード アクセラレーションを無効にします (例: OCLP を使用していて、パッチ適用後にグラフィックス カードが正常に起動できない場合は、デバッグ目的でのみアクセラレーションなしでチェックを入れることができます)';

  @override
  String get autoGen5311 =>
      'HD7750、HD7850 (メインコアは GCN シリーズ HD77XX、HD78XX、HD79XX) およびその他の古い A カードの画面の歪み、黄色の画面、その他の異常な表示問題を修復します';

  @override
  String get autoGen5312 =>
      'グラフィックス カード上の AppleGraphicsDevicePolicy.kext の制限や設定を完全に無視して、一部のグラフィックス カードが原因で発生する可能性のある黒い画面または異常な表示の問題を修正します。特定の制限がわからない場合は、互換性のないハードウェア構成 (特定のボード ID など) によって引き起こされる表示の問題や黒い画面現象を回避してください。このパラメータは WhateverGreen.kext と一緒に使用した場合にのみ有効となることに注意してください。ドライバー不要のネイティブ A カードの場合は、WhateverGreen.kext ドライバーを削除できるため、このパラメーターを追加する必要はありません。';

  @override
  String get autoGen5313 =>
      'AMD Navi コア RX5XXX、RX6XXX シリーズ グラフィックス カード (例: RX5500、RX5600、RX5700、RX6600、RX6800、RX6900 など) 起動時の黒い画面の問題を修正し、board-id を board-ix に置き換え、AppleGraphicsDevicePolicy のいくつかの制限をバイパスします。注: 1. WhateverGreen.kext と一緒に使用した場合にのみ有効になります。 2. BIOS SuperIO 設定でシリアル/COM ポートをオフにします。ドライバー不要のネイティブ A カードの場合は、WhateverGreen.kext ドライバーを削除できるため、このパラメーターを追加する必要はありません。';

  @override
  String get autoGen5314 =>
      'RX470 や RX570 などの一部のグラフィックス カードでスリープから復帰した後の黒い画面の問題を修正し、AppleGraphicsDevicePolicy のボード ID チェックを無効にし、一部のグラフィックス カードが原因で発生する可能性のある黒い画面または異常な表示の問題を修正します。このパラメータは WhateverGreen.kext と一緒に使用した場合にのみ有効になることに注意してください。ドライバーのないネイティブ A カードの場合は、WhateverGreen.kext ドライバーを削除できるため、このパラメーターを追加する必要はありません。';

  @override
  String get autoGen5315 =>
      'Intel 第 3 世代以下のプラットフォームを修復します。AMD RX5XX (例: RX560、RX570、RX580) シリーズ、AMD RX5XXX、RX6XXX (例: RX5500、RX6600) シリーズのドライバー不要グラフィックス カードでは、Ventura 以降のシステムでブラック スクリーンの問題が発生します (注: システムに入った後、OCLP を使用してグラフィックス カードにパッチを適用する必要があります。グラフィックス カードにパッチを適用した後、ブート パラメータを削除するか、代替パラメータを使用してください) EFI ディレクトリ内の config-after-post を使用して構成の名前を変更し、再起動してグラフィックス カードを駆動します。)';

  @override
  String get autoGen5316 =>
      '公式にサポートされていない AMD グラフィックス カード (例: RX550 Lexa コア) を修正して、VDA ハードウェア ビデオ エンコーディングをサポートする';

  @override
  String get autoGen5317 =>
      'Fermi、Maxwell、Pascal アーキテクチャの古い N カード (例: GT610、GTX750、GTX960、GTX1050) BigSur 11 以降のシステム グラフィックス カード ドライバーの問題を修復します (注: システムに入った後、OCLP を使用してグラフィックス カードにパッチを適用する必要があります!!! このパラメーターは Kepler コアには必要ありません!!!)';

  @override
  String get autoGen5318 =>
      '一部の Broadcom ワイヤレス ネットワーク カードの速度が遅い問題を修正しました (Broadcom WiFi の国コードを香港に変更します。ルーターのチャネルを変更して改善することもできます)';

  @override
  String get autoGen5319 => 'RAMROD コード、SMC シミュレータの損傷問題を修正';

  @override
  String get autoGen5320 =>
      'SIP (システム整合性保護) または SecureBootModel (セキュリティ モデル) を無効にした後の macOS システムの OTA アップデートの問題を修正し、カスタム CPU 名の表示の問題を修正します。';

  @override
  String get autoGen5321 =>
      'スリープ モードに入った後にデバイスを再起動するという問題が回避され、カーネル クラッシュ ログの取得とスリープの問題のトラブルシューティングが容易になります。';

  @override
  String get autoGen5322 =>
      'Intel 第 12 世代以降の大規模および小規模コア CPU のトポロジーの識別とスケジューリングを改善します。パフォーマンスの向上は保証されません。実際のテスト後に有効にすることをお勧めします (有効にするには、CpuTopologyRebuild.kext とともに使用する必要があることに注意してください)';

  @override
  String get autoGen5323 =>
      'Darkwake モードを完全に無効にし、システムを従来のスリープ モードにします。これは主に、黒い画面のウェイクアップや自動ウェイクアップなどの問題を修復するために使用されます。';

  @override
  String get autoGen5324 =>
      'iGPU RC6 レンダリング スタンバイを無効にし、スリープ中の RC6 コア ディスプレイによって引き起こされる NVMe カーネル パニックの問題を修正します。';

  @override
  String get autoGen5325 =>
      'AMD Radeon RX 5000 シリーズ グラフィックス カードの PWM バックライト制御を有効にする';

  @override
  String get autoGen5326 =>
      '古い A カード (290X、370 など) の DVI インターフェイス出力表示を修復および修正します。';

  @override
  String get autoGen5327 =>
      'I2C タイプのタッチ パネルを強制的に割り込み駆動モードではなくポーリング モードで動作させます (割り込みモードでは通常、カスタマイズされた SSDT が必要ですが、これは比較的複雑です。場合によっては、I2C タッチ パネルが使用できない問題は修正できる場合があります (VoodooI2C ドライバーで使用する必要があります)。';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (一部のマザーボードとファームウェアでは、MMIO 領域を処理するときに競合または非互換性の問題が発生する可能性があります。このオプションを有効にすると、これらの競合を解決し、システムの互換性と安定性を向上させることができます。このオプションは通常、OpenCore デバッグ バージョンと組み合わせて、一部のマザーボード (一部の X58、X79、X99、および AMD 7000 シリーズ プロセッサ マザーボード) のメモリ問題によって引き起こされるカード EB を解決するために MMIO をカスタマイズします)';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (メモリ属性テーブル (MAT) をサポートしていないファームウェア、特に OEM ファームウェアでチェックすることをお勧めします。これをオンにすると、NVRAM の正常な書き込みを保証するために、実行中に CR0 レジスタの書き込み保護が削除されます。通常は第 7 世代より前のプラットフォームに適用されます)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (ファームウェアによる上書きから UEFI サービスを保護し、通常は DevirtualiseMmio などによって引き起こされるカード EB 問題を修復するために使用されます。Z390、Z490 マザーボード、および第 10 世代 Ice Lake についてはチェックすることをお勧めします)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (OC 使用のための連続仮想メモリを確立し、それを分散物理メモリにマッピングします。 注: 第 10 世代 Comet Lake ASUS、Gigabyte、および AsRock マザーボードでは、このオプションをオンにすることはお勧めできません。';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (メモリ属性テーブル (MAT) をサポートするファームウェアでは、チェックすることをお勧めします。通常、SyncRuntimePermissions と組み合わせて使用​​されます。この項目は EnableWriteUnprotector と競合する可能性があります。2 つのうちの 1 つを選択することをお勧めします。通常は第 8 世代以降のプラットフォームに適用され、一部の古いプラットフォームにも適用されます)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (メモリ挿入時にハードウェアがアクセス許可を挿入できない問題を修正します。一般に、この問題は 2018 年以降のマザーボードに存在します。このオプションが原因で Windows に入ることができない場合は、オンにしてください。この項目は通常、RebuildAppleMemoryMap と組み合わせて使用​​されます)';

  @override
  String get autoGen5334 => '第2世代CPU - 第3世代マザーボードのハイブリッド';

  @override
  String get autoGen5335 => '第3世代CPU - 第2世代マザーボードのハイブリッド';

  @override
  String get autoGen5336 =>
      '当面はコア ディスプレイを駆動せずにインストールを完了します (これにより、コア ディスプレイ バッファ フレームの問題によって引き起こされる黒い画面やカーネル クラッシュの問題を回避できます)';

  @override
  String get autoGen5337 => '偽造されたデバイスID';

  @override
  String get autoGen5338 =>
      'コア ディスプレイは、出力ディスプレイ (独立したグラフィックス カード出力ディスプレイ) としてではなく、加速および計算タスクにのみ使用されます。';

  @override
  String get autoGen5339 => 'HD3000、HD P3000、およびその他のコア ディスプレイ';

  @override
  String get autoGen5340 => 'HD4000、HD P4000、およびその他のコア ディスプレイ';

  @override
  String get autoGen5341 => 'HD4400、HD4600、HD P4600 およびその他のコア ディスプレイ';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 およびその他のコア ディスプレイ';

  @override
  String get autoGen5343 => 'HD5600コアディスプレイ（P6200、P6300は偽造可能）';

  @override
  String get autoGen5344 => 'HD6000、Iris 6100、その他のコアディスプレイ';

  @override
  String get autoGen5345 =>
      'HD520、HD530、およびその他の偽造 HD620 コア ディスプレイ (Ventura 以降のシステムに適用)';

  @override
  String get autoGen5346 =>
      'HD520、HD530、およびその他の偽造 HD620 コア ディスプレイ (Ventura 以降のシステムに適用、代替品)';

  @override
  String get autoGen5347 =>
      'HD530、HD P530、およびその他の 500 シリーズ コア ディスプレイ (Monterey 以下のシステムに適用)';

  @override
  String get autoGen5348 => 'HD 630、HD P630 およびその他のコア ディスプレイ';

  @override
  String get autoGen5349 => 'HD 630、P630、およびその他の偽造 UHD630 コア ディスプレイ (オプション 1)';

  @override
  String get autoGen5350 => 'HD 630、P630、およびその他の偽造 UHD630 コア ディスプレイ (オプション 2)';

  @override
  String get autoGen5351 => 'UHD 630 核ディスプレイ出力ソリューション 1';

  @override
  String get autoGen5352 => 'UHD 630コアディスプレイ出力ケース2';

  @override
  String get autoGen5353 =>
      'Intel HD グラフィックス (例: i3 380M、i5 480M にはコア ディスプレイが内蔵されています)';

  @override
  String get autoGen5354 => 'HD3000 コア ディスプレイ出力ディスプレイ、1366x768 以下の解像度に適しています)';

  @override
  String get autoGen5355 => '1600X900 を超える解像度のサポートを有効にする';

  @override
  String get autoGen5356 => 'HD3000 核ディスプレイ出力ディスプレイ、1600x900 以上の解像度に適しています)';

  @override
  String get autoGen5357 =>
      'HD4000 コア ディスプレイ ドライバー ソリューション 1、1366x768 以下の解像度、LVDS リンク方式に適しています';

  @override
  String get autoGen5358 =>
      'HD4000 コア ディスプレイ ドライバー ソリューション 2、解像度 1600x900 以上の LVDS リンク モードに適しており、マルチスクリーン出力には追加のパッチ構成が必要な場合があります)';

  @override
  String get autoGen5359 =>
      'HD4000 コア ディスプレイ ドライバー ソリューション 3、eDP 接続のモニターに適しています)';

  @override
  String get autoGen5360 => 'HD4200、HD4400、HD4600コアディスプレイ';

  @override
  String get autoGen5361 => 'HD5000、HD5100、HD5200コアディスプレイ';

  @override
  String get autoGen5362 => 'HD5500コアディスプレイ';

  @override
  String get autoGen5363 => 'HD5600コアディスプレイ';

  @override
  String get autoGen5364 => 'HD6000コアディスプレイ';

  @override
  String get autoGen5365 =>
      'HD520、HD530、およびその他の偽造 HD620 コア ディスプレイ (Ventura 以降のシステム用)';

  @override
  String get autoGen5366 =>
      'HD 515、HD 520、HD 530、HD 540、HD 550、P530 コア ディスプレイ (Monterey 以下のシステムに適用)';

  @override
  String get autoGen5367 => 'HD 515 核ディスプレイの代替品';

  @override
  String get autoGen5368 => 'HD 510コアディスプレイ';

  @override
  String get autoGen5369 => 'HD 615、HD 620、HD 630、HD 640、HD 650 コアディスプレイ';

  @override
  String get autoGen5370 => 'HD/UHD 620 コア ディスプレイの代替品';

  @override
  String get autoGen5371 => 'UHD 617、UHD 620コアディスプレイ';

  @override
  String get autoGen5372 => 'UHD 630コアディスプレイ';

  @override
  String get autoGen5373 => 'UHD 620コアディスプレイ';

  @override
  String get autoGen5374 => 'Intel lris Plus 655 コアディスプレイ';

  @override
  String get autoGen5375 => 'G4/G7シリーズのコアディスプレイ';

  @override
  String get autoGen5376 => 'HD3000核ディスプレイ出力表示';

  @override
  String get autoGen5377 => 'HD4000核ディスプレイ出力表示';

  @override
  String get autoGen5378 =>
      'HD4200、HD4400、HD4600、HD P4600 およびその他のコア ディスプレイ (コア ディスプレイの詳細設定で第 4 世代コア ディスプレイ専用パッチを確認することをお勧めします。発生する可能性のある軽微な問題は修正されています)';

  @override
  String get autoGen5379 => 'HD 515コアディスプレイ';

  @override
  String get autoGen5380 => 'HD 520/530 コアディスプレイ';

  @override
  String get autoGen5381 => 'HD 540/550 コアディスプレイ';

  @override
  String get autoGen5382 => 'HD 580コアディスプレイ';

  @override
  String get autoGen5383 =>
      'HD P530 コア ディスプレイ (e3 1245v5 などにはコア ディスプレイが内蔵されています)';

  @override
  String get autoGen5384 => 'HD 615コアディスプレイ';

  @override
  String get autoGen5385 => 'HD 630、HD P630 コア ディスプレイ';

  @override
  String get autoGen5386 => 'HD 640/650 コアディスプレイ';

  @override
  String get autoGen5387 => 'HD/UHD 620コアディスプレイ';

  @override
  String get autoGen5388 => 'UHD 620/630コアディスプレイ';

  @override
  String get autoGen5389 => 'UHD 655コアディスプレイ';

  @override
  String get autoGen5390 =>
      'インスタント ウェイクアップの問題を解決するには、GPRW の名前を XPRW に変更します (注: USB キーボードでデバイスをウェイクアップできなくなる可能性があります。電源キーを使用してウェイクアップできます)。';

  @override
  String get autoGen5391 =>
      'インスタント ウェイクアップの問題を解決するには、UPRW の名前を XPRW に変更します (注: USB キーボードがデバイスをウェイクアップできなくなる可能性があります。電源キーを使用してウェイクアップできます)。';

  @override
  String get autoGen5392 => 'GPI0 デバイスが I2C トラックパッドをサポートできるようにする';

  @override
  String get autoGen5393 =>
      'macOS カーネル拡張機能に必要なドライバー。主に macOS のスケーラビリティと互換性を提供し、他の開発者が macOS を拡張するためのカーネル拡張機能を作成できるようにします。';

  @override
  String get autoGen5394 =>
      'たとえば、WhateverGreen、AppleALC、VirtualSMC などは、Lilu.kext を通じて、さまざまなグラフィックス カード、サウンド カード、仮想マシン管理などのサポートなど、macOS に対するさまざまな変更や機能強化を実装できます。';

  @override
  String get autoGen5395 =>
      '他のプラグインがその機能に依存する必要がある場合があるため、通常、Lilu.kext は最初にロードされる macOS カーネル拡張機能です。これにより、macOS の起動時にプラグインが正しくロードされるようになります。';

  @override
  String get autoGen5396 => '必須の基本ドライバー';

  @override
  String get autoGen5397 =>
      '実際の Apple ハードウェアでは、SMC はハードウェア センサー、ファン制御、電源管理、温度センサー、バッテリー ステータスなどのシステム管理機能を管理します。 VirtualSMC は、Apple 以外のハードウェア上でこれらの機能を提供し、これらのシステム上で macOS が適切に実行できるようにします。';

  @override
  String get autoGen5398 =>
      'Apple 以外のハードウェア上に実際に近い Mac 環境を作成するために、Lilu.kext、WhateverGreen などの他のカーネル拡張機能と組み合わせて使用​​されることがよくあります。';

  @override
  String get autoGen5399 => 'ドライバーが見つからないため、macOS が正常に実行できません。';

  @override
  String get autoGen5400 =>
      '主に GPU グラフィックス ドライバーのサポートを提供します。それらのほとんどはチェックすることを強くお勧めします (MacPro7、1 モデルおよび RX460、RX560 以降の AMD 独立グラフィックス ユーザーはチェックを削除できます)。通常、NootRX および NootedRed ドライバーと競合します。インストール段階で同時に選択しないでください。';

  @override
  String get autoGen5401 =>
      'NVIDIA、AMD、Intel グラフィックス カードなど、さまざまなグラフィックス カードをサポートします。この拡張機能は、ディスプレイと解像度が適切に動作するように、正しいフレームバッファを修正して構成できます。';

  @override
  String get autoGen5402 =>
      'HDMI および DisplayPort (DP) 接続のサポートを提供し、オーディオおよびビデオ出力が適切に動作することを保証します。';

  @override
  String get autoGen5403 => 'AppleALC を使用して内蔵サウンド カードを模倣します (比較的完璧で好ましい選択)';

  @override
  String get autoGen5404 =>
      'VoodooHDA ユニバーサル サウンド カードを使用します (起動時にロードされ、macOS BigSur 11.2.3 以下のみをサポートします。macOS のより高いバージョンでは、このドライバーをシステム カーネル拡張機能に追加して有効にする必要があります。著者のテストによると、最も高いサポートは macOS Tahoe 26.x 公式バージョンです)';

  @override
  String get autoGen5405 => '古いプラットフォームまたは AMD プラットフォーム用の USB 3.0 コントローラー互換性修正';

  @override
  String get autoGen5406 =>
      'Intel 第 3 世代より前の古いプラットフォームの CPU 電源管理によって引き起こされる再起動の問題を修正します (AppleIntelCPUPowerManagement カーネル クラッシュ ログ、ブート ロゴのスタック、システムに入った直後の再起動などとして表示されます)。';

  @override
  String get autoGen5407 =>
      'AMD Ryzen シリーズの CPU 電源管理を修正 (AMD Ryzen シリーズにのみ適用可能。電源管理が原因で再起動の問題が発生する場合は、チェック ボックスを削除することを検討できます)';

  @override
  String get autoGen5408 => 'バッテリー駆動ソリューション 1 (第 3 世代以降のプラットフォームのノートブックに適用)';

  @override
  String get autoGen5409 => 'バッテリー駆動ソリューション 2 (第 3 世代以降のプラットフォームのノートブックに適用)';

  @override
  String get autoGen5410 =>
      '環境光センサー (自動画面の明るさ)。環境光センサーがない場合は使用しないでください。問題が発生する可能性があります。';

  @override
  String get autoGen5411 =>
      'Asus ノートブックのファン制御、電源管理、その他のシステムセンサーの最適化などは、Asus 以外での使用は推奨されません。';

  @override
  String get autoGen5412 =>
      'Lenovo ノートブックのファン制御、電源管理、その他のシステムセンサーの最適化などは、Lenovo 以外のマシンには推奨されません。';

  @override
  String get autoGen5413 =>
      'ファンをより正確に監視および制御するための、Dell ノートパソコン用の特別なセンサー。デル以外のマシンには推奨されません。';

  @override
  String get autoGen5414 =>
      'AMD プロセッサのセンサー情報 (温度、消費電力、周波数など) を macOS 監視ツールに公開できるようにします。このドライバーは、AMD Ryzen シリーズ プロセッサーと一部の AMD FX シリーズ プロセッサーをサポートします。他の AMD プロセッサでは、予期しない問題が発生する可能性があります。同時に、Sequoia 15 以降のシステムの一部のプラットフォームには互換性の問題がある可能性があるため、慎重に選択してください。';

  @override
  String get autoGen5415 =>
      'RX6700、RX6750XT、RX6750GRE、およびその他の公式にはサポートされていない RX6XXX シリーズの独立したグラフィックスをサポートするために使用されます。 WhateverGreen ドライバーと競合があります。インストール段階で両方を選択しないでください。';

  @override
  String get autoGen5416 =>
      'Navi 21 (Big Sur 以降)、Navi 22/23 (Monterey 以降) をサポートし、RX6650、RX6950 およびその他のグラフィックス カードもサポート';

  @override
  String get autoGen5417 =>
      'macOS を初めてインストールするときにこのドライバーを追加すると、システムに入れなくなる可能性があります。インストール完了後に追加することをお勧めします。';

  @override
  String get autoGen5418 =>
      'AMD Ryzen 2000～5000 シリーズのコア ディスプレイ Edge および Chrome ブラウザがハードウェア アクセラレーションをオフにしないことによって引き起こされる速度の問題を修正します (AMD Ryzen シリーズにのみ適用され、主に OpenGL レンダリングの使用を削減し、QQ、Chrome ブラウザの通常の使用が減少します。このドライバを使用すると、他のアプリケーションが正常に動作しなくなる可能性があります。ご自身で判断してください)';

  @override
  String get autoGen5419 => 'バッテリー読み取りの修復、いくつかのバッテリー表示の問題を修正';

  @override
  String get autoGen5420 =>
      'Apple 以外の NVMe SSD との互換性が向上し、アイドル時のエネルギー消費が削減されました';

  @override
  String get autoGen5421 =>
      'Samsung などの互換性のないブラックリストに登録された NVMe ディスクでは、タイムアウト クラッシュの問題を効果的に解決できません';

  @override
  String get autoGen5422 =>
      '互換性の良い NVMe SSD でこのドライバーを使用すると、カーネル クラッシュが発生する可能性があるため、通常は注意して使用してください。';

  @override
  String get autoGen5423 =>
      'AMFI をバイパスまたは無効にする機能を強化します。注: このドライバーを追加すると、一部のアプリケーションが開かなかったり、クラッシュしたりする可能性があります。現時点では、ドライバーを削除し、AMFI 起動パラメーター (amfi=0x80 など) を無効にすることのみを使用できます。';

  @override
  String get autoGen5424 => 'NVMeソリッドステートドライブが外部ディスクとして認識される問題を修正しました';

  @override
  String get autoGen5425 =>
      'サポートされていない Mac 上でユニバーサル コントロール、ナビゲーション、その他の機能のロックを解除します';

  @override
  String get autoGen5426 => '一般的な休止状態とスリープ関連の問題を修正する';

  @override
  String get autoGen5427 =>
      'macOS が USB 接続経由で Android デバイスのテザリング機能を使用できるようにします';

  @override
  String get autoGen5428 =>
      'CPU 可変周波数ドライバー。主に第 11 世代以降のプラットフォームに MacPro7,1 周波数変換サポートを提供します。';

  @override
  String get autoGen5429 =>
      'CPUFriend には、特定のモデルの CPU 周波数変換データを提供するデータ ドライバーが搭載されています。';

  @override
  String get autoGen5430 => 'Intel 第 12 世代以降の CPU サイズとコア構成を最適化';

  @override
  String get autoGen5431 =>
      'シングルコアのパフォーマンスは向上しますが、マルチコアのパフォーマンスが低下する可能性があります。第 12 世代以降のプラットフォームにのみ適用されます。';

  @override
  String get autoGen5432 => 'CPU TSC 同期ソリューション 1、通常は優先されます';

  @override
  String get autoGen5433 => 'マルチコア X79、X99、X299、および AMD プラットフォームで一般的に使用されます';

  @override
  String get autoGen5434 =>
      '操作のスタック、起動ロゴのスタック、オーディオとビデオの異常な同期、スリープからの復帰の失敗などの問題を修正するために使用されます。';

  @override
  String get autoGen5435 =>
      'CPU TSC 同期ソリューション 2、通常 AMD Ryzen および一部の Intel プラットフォームで使用されます';

  @override
  String get autoGen5436 =>
      '操作の遅れ、時折発生するクラッシュ、オーディオとビデオの同期異常、スリープ解除の失敗などの問題を修正するために使用されます。';

  @override
  String get autoGen5437 =>
      'AMD Ryzen プラットフォーム CPU のマルチコア クロック同期の問題を修正します (AMD Ryzen シリーズにのみ適用され、操作ラグ、ブート ロゴのスタックなどの問題を修正するために使用されます。このドライバーを追加すると、予期しない問題が発生する可能性があります。慎重に選択してください)';

  @override
  String get autoGen5438 =>
      'CPU TSC 同期ソリューション 3、通常は古い Intel プラットフォームと古い macOS システムで使用されます';

  @override
  String get autoGen5439 =>
      'マルチコア X79、X99、X299 およびその他のプラットフォームに適しており、操作ラグや起動ロゴの固着などの問題を修正するために使用されます。';

  @override
  String get autoGen5440 => 'インテル コア ディスプレイ HDMI オーディオの問題をいくつか修正しました';

  @override
  String get autoGen5441 =>
      '通常、ローカル有線ネットワーク カードのないノートブックに使用される Apple ID と iCloud にログインできない問題を修正';

  @override
  String get autoGen5442 =>
      '新しいプラットフォーム macOS AppleRTC と PC BIOS の間の競合 (RTC が原因でフリーズ、突然の再起動、休止状態からの突然の復帰など) を修正します。';

  @override
  String get autoGen5443 =>
      'PS インターフェイス タイプのキーボードおよびマウス ドライバー (デスクトップ マザーボード PS ラウンド ポート キーボードおよびマウス ドライバー)';

  @override
  String get autoGen5444 =>
      'PSインターフェースタイプのキーボードドライバー（デスクトップマザーボードPSラウンドポートキーボードドライバー）';

  @override
  String get autoGen5445 =>
      'PSインターフェースタイプマウスドライバー（デスクトップマザーボードPSラウンドポートマウスドライバー）';

  @override
  String get autoGen5446 => 'Microsoft Surface 専用キーボード タッチパッド ドライバー';

  @override
  String get autoGen5447 => '明るさのショートカットキーの修正';

  @override
  String get autoGen5448 =>
      'AMD Radeon グラフィックス カードのパフォーマンスを最適化しますが、特定のシナリオではシステムがクラッシュしたり、起動に失敗したりする可能性があるため、慎重に確認してください。';

  @override
  String get autoGen5449 =>
      'RadeonGadget.app が AMD グラフィックス カードの GPU 温度およびその他の情報を読み取ることを許可します。';

  @override
  String get autoGen5450 =>
      'AMD GPU 温度およびその他の情報を VirtualSMC にエクスポートし、監視ツールで読み取ることができるようにします。';

  @override
  String get autoGen5451 =>
      'AMD FM1/FM2/AM3 などの古いプラットフォームでの USB コントローラーの互換性の問題を修正しました。';

  @override
  String get autoGen5452 =>
      'ユニバーサル USB インジェクション ソリューション、USB がカスタマイズされていない場合のデフォルトの選択肢';

  @override
  String get autoGen5453 =>
      'USBToolBox ソリューション。通常はカスタマイズされた UTBMap.kext とともに使用されます。';

  @override
  String get autoGen5454 =>
      'Intel 第 3 世代以降のアップデートされたプラットフォームでの USB3.0 の問題を修正 (300 シリーズ チップセット (H370、B360、H310、Z390 [10.14 以降のシステムには不要]、X79、X99、ASRock Intel マザーボード [B460/Z490+ を除く]) に必要)';

  @override
  String get autoGen5455 =>
      'AMD FM1、FM2、AM3、およびその他の古いプラットフォームでの EHCI USB2.0 互換性の問題を修正';

  @override
  String get autoGen5456 =>
      'AMD FM1、FM2、AM3、およびその他の古いプラットフォームでの XHCI USB3.0 互換性の問題を修正';

  @override
  String get autoGen5457 =>
      'Intel 第 3 世代以降のプラットフォーム Ventura 13 以降のシステムの CPU 電源管理を修正';

  @override
  String get autoGen5458 =>
      'Realtek シリーズ SD カード リーダー ドライバー (RealtekCardReaderFriend で使用)';

  @override
  String get autoGen5459 =>
      'Realtek カード リーダーの互換性を向上させる RealtekCardReader サポート ドライバー';

  @override
  String get autoGen5460 => 'SDHC メモリ カード デバイス ドライバ、eMMC および MMC メモリ カードをサポート';

  @override
  String get autoGen5461 => '100M 有線ネットワーク カード ドライバー';

  @override
  String get autoGen5462 =>
      'RTL8101E、RTL8102E、RTL8103E、RTL8401E、RTL8105E、RTL8402、RTL8106E、RTL8106EUS、RTL8107E、RTL8139ネットワークカードをサポート';

  @override
  String get autoGen5463 => '通常、従来の古いプラットフォームに使用されます';

  @override
  String get autoGen5464 => 'ギガビットネットワークカードドライバー';

  @override
  String get autoGen5465 =>
      'Intel 82540 ～ 82547、82578 ～ 82579、82574L、82571 ～ 82574、82583、I217-V およびその他のネットワーク カードをサポート';

  @override
  String get autoGen5466 => 'ギガビット有線ネットワークカードドライバー';

  @override
  String get autoGen5467 =>
      'BCM5722、BCM5754、BCM5754M、BCM5755、BCM5755M、BCM57788、BCM5787、BCM5787M、BCM5906、BCM5906Mおよびその他のネットワークカードをサポート';

  @override
  String get autoGen5468 =>
      'AR8131、AR8132、AR8151、AR8152 およびその他のネットワーク カードをサポート';

  @override
  String get autoGen5469 =>
      'Realtek RTL8111 / 8168 B / C / D / E / F / G / Hをサポート、Killer E2500以降のネットワークカードをサポート';

  @override
  String get autoGen5470 =>
      'RealtekRTL8111 の新しいバージョンのドライバーは 10.13.x 以降のシステムのみをサポートする可能性があります';

  @override
  String get autoGen5471 =>
      'AR816x、AR817x、Killer E220x、Killer E2400 およびその他のネットワーク カードをサポート';

  @override
  String get autoGen5472 => 'ギガビット (2.5G をサポート) 有線ネットワーク カード ドライバー';

  @override
  String get autoGen5473 =>
      'すべての IGC 準拠デバイス (i225、i226、i226-V およびその他の有線ネットワーク カード) をサポートします。一部のデバイスの PCI ID が IOPCIMatch リストにない場合があります。テストのために自分で追加します。';

  @override
  String get autoGen5474 =>
      'AppleEthernetE1000 ドライバーと比較して、パフォーマンスと安定性が優れています (i226-V は、Monterey システムで AppleEthernetE1000 を使用するとカーネル パニックを引き起こす可能性があります)';

  @override
  String get autoGen5475 =>
      'Intel 82575、82576、82580、dh89xxcc、i350、i354、i210、および i211 ネットワーク カードをサポート';

  @override
  String get autoGen5476 =>
      '不安定性の問題が発生する可能性があります。Big Sur バージョンを使用し、SmallTree を使用することをお勧めします。';

  @override
  String get autoGen5477 => '通常、macOS Monterey 12 以降のシステムに適用されます。';

  @override
  String get autoGen5478 => 'インテル 5 シリーズをサポート: 82578LM、82578LC、82578DM、82578DC';

  @override
  String get autoGen5479 => 'インテル 6 および 7 シリーズをサポート: 82579LM、82579V';

  @override
  String get autoGen5480 =>
      'インテル 8 および 9 シリーズをサポート: I217LM、I217V、I218LM、I218V、I218LM2、I218V2、I218LM3';

  @override
  String get autoGen5481 =>
      'インテル 100 シリーズをサポート: I219V、I219LM、I219V2、I219LM2、I219LM3';

  @override
  String get autoGen5482 => 'インテル 200 シリーズをサポート: I219LM、I219V';

  @override
  String get autoGen5483 => 'インテル 300 シリーズをサポート: I219LM、I219V';

  @override
  String get autoGen5484 =>
      'ドライバーは、acidanthera によって保守されています。 OS X 10.6 ～ 10.8 は IntelSnowMausi を使用します';

  @override
  String get autoGen5485 =>
      'このドライバーは Laura Müller によって提供されます。 OS X 10.6 ～ 10.8 は IntelSnowMausi を使用します';

  @override
  String get autoGen5486 =>
      'RTL8125 古いドライバー、Realtek RTL8125 シリーズ イーサネット カードをサポート';

  @override
  String get autoGen5487 => 'ギガビット (2.5G、5G をサポート) 有線ネットワーク カード ドライバー';

  @override
  String get autoGen5488 =>
      'RTL812x 用の新しいドライバー、Realtek RTL8125、RTL8126 シリーズのイーサネット カードをサポート';

  @override
  String get autoGen5489 =>
      'サポートされているモデル: RTL8125A、RTL8125B、RTL8125BP、RTL8125CP、RTL8126A';

  @override
  String get autoGen5490 =>
      'Intel i211 有線ネットワーク カードをサポート。このモデルは AMD マザーボードで一般的です';

  @override
  String get autoGen5491 =>
      '通常、macOS Big Sur 以下に適用されますが、macOS Monterey は不安定になる可能性があります';

  @override
  String get autoGen5492 => '対応OS：';

  @override
  String get autoGen5493 => '10G (10G サポート) 有線ネットワーク カード ドライバー';

  @override
  String get autoGen5494 => 'インテル X520 をサポート、';

  @override
  String get autoGen5495 => 'macOS 10.13 以降のシステムのみをサポートします';

  @override
  String get autoGen5496 => 'BIOS UEFI 設定で WoL をオフにすることをお勧めします';

  @override
  String get autoGen5497 =>
      'Catalina 10.15 以前のシステムのインストール中にディスク ユーティリティが SATA ディスクを認識しない問題を修正しました。';

  @override
  String get autoGen5498 =>
      'Big Sur 11 以降のシステムのインストールプロセス中にディスクユーティリティが SATA ディスクを認識しない問題を修正しました';

  @override
  String get autoGen5499 => 'AMD プラットフォーム Adob​​e Family Bucket に関連する互換性の問題を修正';

  @override
  String get autoGen5500 =>
      'macOS High Sierra 10.13 ～ macOS Tathoe 26.x をサポート (通常は HeliPort クライアントで使用)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (注: Sequoia 15 システムを通常に使用するには、OCLP Intel 固有の修正バージョンを適用する必要があります!!!)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4 以降';

  @override
  String get autoGen5503 =>
      '主にいくつかの Bluetooth デバイスの問題を修正します (一部の Broadcom およびその他の USB Bluetooth デバイスに適用されます)';

  @override
  String get autoGen5504 => 'Qualcomm WiFi、macOS Big Sur 11.x 以下をサポート';

  @override
  String get autoGen5505 => 'クアルコム (アセロス)-AR9285';

  @override
  String get autoGen5506 => 'クアルコム (アセロス)-AR9380';

  @override
  String get autoGen5507 => 'クアルコム (アセロス)-AR9485';

  @override
  String get autoGen5508 => 'クアルコム (アセロス)-AR9565';

  @override
  String get autoGen5509 => 'クアルコム (アセロス)-AR9463';

  @override
  String get autoGen5510 => 'クアルコム (アセロス)-AR9462';

  @override
  String get autoGen5511 => 'Touch ID を無効にしてシステム リソースの無駄を減らし、安定性を向上させます。';

  @override
  String get autoGen5512 => '通常、指紋認識機能を備えた macOS Big Sur 11 以前のノートブックに適しています。';

  @override
  String get autoGen5513 =>
      'TRIM ポリシーはデフォルトで構成されます (つまり、SetApfsTrimTimeout = -1)。';

  @override
  String get autoGen5514 =>
      '1. APFS システムは、macOS のデフォルトの TRIM タイムアウトに基づいて TRIM 操作を実行します。これは、TRIM をサポートするほとんどの SSD に適用されます。';

  @override
  String get autoGen5515 =>
      '2. TRIM をサポートする SSD では、macOS が TRIM の実行を自動的に管理します。これにより、削除されたデータ ブロックがクリーンアップされ、SSD の書き込みがより効率的になり、頻繁な書き込み増幅が回避され、書き込み速度が向上します。';

  @override
  String get autoGen5516 =>
      '3.TRIM は未使用のブロックを定期的にクリーンアップして SSD の磨耗を軽減し、SSD の耐用年数を延ばします。';

  @override
  String get autoGen5517 =>
      '4. TRIM を完全にはサポートしていない一部のサードパーティ SSD では、TRIM の実行時に遅延やフリーズが発生し、起動プロセスが非常に遅くなる場合があります。';

  @override
  String get autoGen5518 =>
      'TRIM 機能を完全に無効にします (つまり、SetApfsTrimTimeout = 0 を設定します)。';

  @override
  String get autoGen5519 => 'TRIM を無効にする利点:';

  @override
  String get autoGen5520 =>
      '1. 起動速度を向上させます。 TRIM をサポートしていない、または部分的にサポートしているサードパーティ製 SSD の場合、macOS は起動中に TRIM 操作を試行するため遅延が発生する可能性があります。 TRIM を無効にすると、この遅延がなくなり、起動速度が向上します。';

  @override
  String get autoGen5521 => '2. 互換性を向上させます。一部の SSD は互換性が低く、異常クラッシュのリスクを軽減できます。';

  @override
  String get autoGen5522 =>
      '3. 非 TRIM SSD の寿命を延ばします。 TRIM をサポートしていない SSD では、TRIM を強制的に有効にすると、摩耗が促進され、寿命に影響を及ぼす可能性があります。 TRIM を無効にすると、そのような SSD の寿命を延ばすことができます。';

  @override
  String get autoGen5523 => 'TRIM を無効にすることのデメリット:';

  @override
  String get autoGen5524 =>
      '1.SSDのパフォーマンスが低下します。一部の SSD には TRIM ガベージ コレクション メカニズムがありません。 SSD はデータを削除した後、時間内に空きブロックをクリーンアップしてマークすることができないため、書き込み速度が遅くなる可能性があります。';

  @override
  String get autoGen5525 =>
      '2. ディスク容量の管理効率が低下します。これを無効にすると、SSD コントローラーはガベージ コレクションに多くの時間とリソースを必要とするため、断片化が増加し、スペース管理効率が低下する可能性があります。';

  @override
  String get autoGen5526 =>
      '3. SSD の寿命が短くなります。 TRIM をサポートする SSD の場合、TRIM を無効にすると、SSD は書き込みプロセスを最適化できなくなり、ストレージ ブロックの磨耗が増加し、TRIM をサポートする SSD の寿命が短くなります。';

  @override
  String get autoGen5527 =>
      'TRIM を無効にすると起動速度がいくらか向上しますが、TRIM をサポートする最新の SSD では、長期的なパフォーマンスと安定性を確保するために TRIM をオンにしておくことが推奨されます。通常、この速度の向上はわずかであり、互換性のない一部の SSD に対してのみ重大な影響を及ぼします。';

  @override
  String get autoGen5528 =>
      'CPU 可変周波数ドライバー。ここでは主に第 11 世代から第 14 世代の MacPro7、1 可変周波数サポートを提供します。';

  @override
  String get autoGen5529 => 'Realtek SD カード リーダーとそのサポート ドライバー';

  @override
  String get autoGen5530 =>
      '第 3 世代以下の古いプラットフォーム、キーボード、マウス、タッチパッドなど、PS/2 バス プロトコルに基づいて接続された入力デバイスに適しています。ある程度のマルチタッチ機能を実現できますが、サポートは限定的です。';

  @override
  String get autoGen5531 =>
      '第 3 世代以降のプラットフォーム、キーボード、マウス、タッチパッドなど、PS/2 バス プロトコルに基づいて接続された入力デバイスに適しています。サブドライバーを通じて PS/2 タッチパッドのサポートを提供し、ある程度のマルチタッチ機能を実現できますが、サポートは限定的です。';

  @override
  String get autoGen5532 =>
      'PS2 キーボードは、I2C バス プロトコルに基づいて接続されたタッチパッド、タッチ スクリーン、センサー、その他の入力デバイスに適しています。 macOS のネイティブ タッチ エクスペリエンスをシミュレートするマルチタッチ ジェスチャ サポートを提供します。';

  @override
  String get autoGen5533 =>
      'RMI4 プロトコル バス プロトコルに基づいて接続された Synaptics タッチパッドに適した PS2 キーボード。 Synaptics デバイスのサポートを強化し、macOS のネイティブ タッチパッドと同様のマルチタッチおよびジェスチャ機能を提供することに重点を置きます。';

  @override
  String get autoGen5534 =>
      'PS2 キーボード。RMI4 プロトコルを使用する I2C バスベースのタッチ デバイスおよび Synaptics タッチパッドに適しています。 RMII2C は、VoodooI2C と VoodooRMI の利点を組み合わせています。';

  @override
  String get autoGen5535 => 'PS/2バスプロトコル接続に基づく丸いキーボードとマウスのドライバー';

  @override
  String get autoGen5536 =>
      'Microsoft Surface 専用キーボード、タッチパッド、タッチ スクリーン ドライバーの組み合わせ。';

  @override
  String get autoGen5537 => 'Broadcom BCM94360 ドライバ不要シリーズ';

  @override
  String get autoGen5538 =>
      'Apple AirMac および Fenvi ドライバー不要のカード、Ventura 以下はドライバー不要で、パッチは Sonoma 14 と Sequoia 15 をサポートしています。注: Sonoma 14 以降のシステムを通常に使用するには、OCLP によるパッチを適用する必要があります。 ！ ！';

  @override
  String get autoGen5539 => 'Broadcom BCM943XX ドライバ不要シリーズ';

  @override
  String get autoGen5540 =>
      'Apple AirMac と Fenvi、Catalina 以下以外のカードはドライバー不要で、パッチは Sonoma 14 と Sequoia 15 をサポートしています。注: Sonoma 14 以降のシステムを通常に使用するには、OCLP によるパッチを適用する必要があります。 ！ ！';

  @override
  String get autoGen5541 => '古いブロードコム BCM4331';

  @override
  String get autoGen5542 =>
      'Monterey 12 以降のシステムを通常に使用するには、OCLP パッチを使用する必要があることに注意してください。 ！ ！';

  @override
  String get autoGen5543 => '古いブロードコム BCM43224';

  @override
  String get autoGen5544 => 'Qualcomm (Atheros) WiFi モデル ドライバー';

  @override
  String get autoGen5545 => 'クアルコム WiFi 手動オプション';

  @override
  String get autoGen5546 => 'Qualcomm (Atheros) WiFi Big Sur とそれに続く依存関係';

  @override
  String get autoGen5547 =>
      'macOS Big Sur 11 以下のシステムは、HS80211Family を使用して特定のモデルのドライバーを照合します。';

  @override
  String get autoGen5548 => 'Qualcomm (Atheros) WiFi Monterey 以降の依存関係';

  @override
  String get autoGen5549 =>
      'macOS Monterey 12 以降のシステムは IO80211ElCap の組み合わせを使用します';

  @override
  String get autoGen5550 =>
      'Surface Pro 7 および Book 3 シリーズの「システム環境設定」でのバッテリー認識の問題を修正しました。';

  @override
  String get autoGen5551 =>
      '一部の HP ブランド コンピューターのリアルタイム クロックを開始するときに POST エラーが発生する問題を修正しました。';

  @override
  String get autoGen5552 => 'RTC ウェイクアップ プランを無効にし、スリープ後の自動ウェイクアップの問題を修正します';

  @override
  String get autoGen5553 => 'ジェネレーション 0-Penryn-775 プラットフォーム';

  @override
  String get autoGen5554 => '第 1 世代 - Lynnfield-1156 プラットフォーム';

  @override
  String get autoGen5555 => '第 2 世代 - Sandy Bridge - 1155 プラットフォーム';

  @override
  String get autoGen5556 => '第 3 世代 - Ivy Bridge - 1155 プラットフォーム';

  @override
  String get autoGen5557 => '第4世代Haswell-1150プラットフォーム';

  @override
  String get autoGen5558 => '第 5 世代 - Broadwell-1150 プラットフォーム';

  @override
  String get autoGen5559 => '第6世代-Skylake-1151プラットフォーム';

  @override
  String get autoGen5560 => '第 7 世代 - Kaby Lake - 1151 プラットフォーム';

  @override
  String get autoGen5561 => '第8世代-Coffee Lake-1151プラットフォーム';

  @override
  String get autoGen5562 => '第9世代-Coffee Lake-1151プラットフォーム';

  @override
  String get autoGen5563 => '第 10 世代 - Comet Lake - 1200 プラットフォーム';

  @override
  String get autoGen5564 => '第 11 世代 - Rocket Lake - 1200 プラットフォーム';

  @override
  String get autoGen5565 => '第12世代-Alder Lake-1700プラットフォーム';

  @override
  String get autoGen5566 => '第 13 世代 - Raptor Lake-1700 プラットフォーム';

  @override
  String get autoGen5567 => '第 14 世代 - Raptor Lake Refresh - 1700 プラットフォーム';

  @override
  String get autoGen5568 => '第 15 世代 - Arrow Lake - 1851 プラットフォーム';

  @override
  String get autoGen5569 => 'ジェネレーション 0-ペンリン-ノートブック';

  @override
  String get autoGen5570 => '第 1 世代 - クラークスフィールド&アランデール - ノートブック';

  @override
  String get autoGen5571 => '2代目-Sandy Bridge-ノート';

  @override
  String get autoGen5572 => '3代目-Ivy Bridge-ノートブック';

  @override
  String get autoGen5573 => '第 4 世代 - Haswell - ラップトップ';

  @override
  String get autoGen5574 => '第5世代-Broadwell-ノートブック';

  @override
  String get autoGen5575 => '第6世代-Skylake-ノートブック';

  @override
  String get autoGen5576 => '第7世代 - Kaby Lake - ノートブック';

  @override
  String get autoGen5577 => '第 8 世代-Coffee Lake-ノートブック';

  @override
  String get autoGen5578 => '第9世代-Coffee Lake-ノートブック';

  @override
  String get autoGen5579 => '第 10 世代 - Comet Lake - ラップトップ';

  @override
  String get autoGen5580 => '第 10 世代 - Ice Lake - ラップトップ';

  @override
  String get autoGen5581 => '11代目-タイガーレイク-ノート';

  @override
  String get autoGen5582 => '12代目-アルダーレイク-ノート';

  @override
  String get autoGen5583 => '13代目-Raptor Lake-ノート';

  @override
  String get autoGen5584 => '14代目-Raptor Lake Refresh-手帳';

  @override
  String get autoGen5585 => '世代 0-Penryn-mini ホスト';

  @override
  String get autoGen5586 => '初代 - クラークスフィールド&アランデール - ミニホスト';

  @override
  String get autoGen5587 => '2代目-Sandy Bridge-ミニホスト';

  @override
  String get autoGen5588 => '第 3 世代 - Ivy Bridge - ミニホスト';

  @override
  String get autoGen5589 => '第4世代-Haswell-miniホスト';

  @override
  String get autoGen5590 => '第5世代-Broadwell-ミニホスト';

  @override
  String get autoGen5591 => '第6世代-Skylake-miniホスト';

  @override
  String get autoGen5592 => '第7世代 - Kaby Lake - ミニホスト';

  @override
  String get autoGen5593 => '8代目-Coffee Lake-ミニホスト';

  @override
  String get autoGen5594 => '9代目-Coffee Lake-ミニホスト';

  @override
  String get autoGen5595 => '10代目-Comet Lake-ミニホスト';

  @override
  String get autoGen5596 => '第10世代 - Ice Lake - ミニホスト';

  @override
  String get autoGen5597 => '11代目 - Tiger Lake - ミニホスト';

  @override
  String get autoGen5598 => '12代目-Alder Lake-ミニホスト';

  @override
  String get autoGen5599 => '13代目 - Raptor Lake - ミニホスト';

  @override
  String get autoGen5600 => '第14世代 - Raptor Lake Refresh - ミニホスト';

  @override
  String get autoGen5601 => '第 1 世代 - Nehalem&Westmere-X58 プラットフォーム';

  @override
  String get autoGen5602 => '第2世代-Sandy Bridge-E-X79プラットフォーム';

  @override
  String get autoGen5603 => '第 3 世代 - Ivy Bridge - E-X79 プラットフォーム';

  @override
  String get autoGen5604 => '第4世代Haswell-E-X99プラットフォーム';

  @override
  String get autoGen5605 => '第 5 世代 - Broadwell-E-X99 プラットフォーム';

  @override
  String get autoGen5606 => '第6世代-Skylake-X&W-X299プラットフォーム';

  @override
  String get autoGen5607 => '第 10 世代 - Cascade Lake - X&W プラットフォーム';

  @override
  String get autoGen5608 => 'ブルドーザー (15 時間) およびジャガー (16 時間) - ノートブック';

  @override
  String get autoGen5609 => 'Ryzen ノートブック';

  @override
  String get autoGen5610 => 'ブルドーザー (15 時間) およびジャガー (16 時間) - ミニ ホスト';

  @override
  String get autoGen5611 => 'Ryzen-miniホスト';

  @override
  String get autoGen5612 => 'Ryzen および Threadripper (17 時間および 19 時間) - サーバー';

  @override
  String get autoGen5613 => 'テスト';

  @override
  String get autoGen5614 => 'NVRAMテスト';

  @override
  String get autoGen5615 => 'ホームディレクトリを取得できません';

  @override
  String get autoGen5616 => 'ソースディレクトリが存在しません';

  @override
  String get autoGen5617 => 'デスクトップディレクトリを取得できません';

  @override
  String get autoGen5618 => 'パスチェックが失敗し、空のパスが返される';

  @override
  String get autoGen5619 => 'plist ファイル情報の取得に失敗し、返された結果は不完全でした。';

  @override
  String get autoGen5620 =>
      '注: NormalizeHeaders が有効になっており、テーブル ID に印刷不可能な文字が含まれています。';

  @override
  String get autoGen5621 =>
      '注: NormalizeHeaders が有効になっておらず、テーブル ID に「?」が含まれています。キャラクター！';

  @override
  String get autoGen5622 => 'ターゲットの config.plist ファイルが選択されていません!';

  @override
  String get autoGen5623 => '=> config.plist タイプを決定できません!';

  @override
  String get autoGen5624 => '=> SSDT テーブルが見つかりません!飛び越える...';

  @override
  String get autoGen5625 => '=> 重複する SSDT テーブルが見つかりません!';

  @override
  String get autoGen5626 => '=> パッチが見つかりません!飛び越える...';

  @override
  String get autoGen5627 => '=> 重複したパッチが見つかりません!';

  @override
  String get autoGen5628 => '=> ドロップパッチが見つかりません!飛び越える...';

  @override
  String get autoGen5629 => '=> 重複したドロップ パッチが見つかりません!';

  @override
  String get autoGen5630 => '=> 更新する必要のある Quirk 構成は見つかりませんでした。飛び越える...';

  @override
  String get autoGen5631 => '=> ターゲットの Quirks 構成を確認しています...';

  @override
  String get autoGen5632 => '現在の構成構成ファイルをバックアップしています...';

  @override
  String get autoGen5633 => 'SSDT ファイルをコピーする準備をしています...';

  @override
  String get autoGen5634 => '構成は正常に保存されました。';

  @override
  String get autoGen5635 => 'マージが完了しました!';

  @override
  String get autoGen5636 => 'マージに失敗しました!';

  @override
  String get autoGen5637 => '注: マージ プロセス中に潜在的なエラーが見つかったので、確認して修正してください。';

  @override
  String get autoGen5638 => '注: 現在の構成は、ターゲット EFI モードをオーバーライドするように設定されていません。';

  @override
  String get autoGen5639 => '次のことを手動で行う必要があります。';

  @override
  String get autoGen5640 => 'ルート辞書要素が見つかりません';

  @override
  String get autoGen5641 => 'サウンドカードの修復によく使用される IRQ 競合を排除します。';

  @override
  String get autoGen5642 =>
      '• HPET (高精度イベント タイマー) は、システム タイミングに使用されるハードウェア モジュールです。\n• macOS では、一部のマザーボード HPET デバイスが IRQ (割り込み要求) の競合を引き起こす可能性があり、オーディオ デバイスの通常の動作に影響を及ぼし、システムが不安定になったり、起動できなくなったりすることがあります。\n• このパッチは、HPET 関連の ACPI デバイス定義を調整して IRQ の競合を回避し、macOS が HPET タイマーを正しく使用できるようにし、サウンド カードの問題を修正し、システムの安定性を向上させます。';

  @override
  String get autoGen5643 =>
      'EC の偽造と USB 電源属性の注入 (Intel 第 6 世代以降のデスクトップ コンピュータに適用)';

  @override
  String get autoGen5644 =>
      '• Intel第6世代以降のデスクトップコンピュータに適用可能\n• このパッチは、システムの元の EC デバイスを無効にし、仮想 EC デバイスを作成して macOS に互換性のある EC が存在すると思わせるようにし、EC デバイスの欠落によって引き起こされる起動の問題を解決します。 \n• 潜在的な問題を修正するために必要な USB 電源プロパティを追加しました。マージと同等: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'EC を偽造するだけで、既存の EC には影響せず、USB 電源属性も同時に注入します (Intel 第 6 世代以降のノートブックに適用)';

  @override
  String get autoGen5646 =>
      '• Intel 第 6 世代以降のノートブックに適用可能\n• ノートブックに適しており、既存の EC を削除または変更するのではなく、元の EC デバイスの損傷を回避し、ノートブックの電源管理やキーボード バックライトなどの機能異常を防ぐために、新しい仮想 EC を別途作成します。\n• 潜在的な問題を修正するために必要な USB 電源プロパティを追加しました。マージと同等: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 => '偽造 EC (Intel 第 5 世代以下のデスクトップ コンピューターに適用)';

  @override
  String get autoGen5648 =>
      '• Intel 第 5 世代以下のデスクトップに適しています。\n• このパッチは、システムの元の EC デバイスを無効にし、仮想 EC デバイスを作成して macOS に互換性のある EC が存在すると思わせるようにし、EC デバイスの欠落によって引き起こされる起動の問題を解決します。';

  @override
  String get autoGen5649 =>
      '偽造 EC のみ、既存の EC には影響しません (Intel 第 5 世代以下のノートブックに適用)';

  @override
  String get autoGen5650 =>
      '• Intel 第 5 世代以下のノートブックに適用可能\n• 既存の EC を削除または変更するのではなく、元の EC デバイスの損傷を回避し、ノートブックの電源管理やキーボードのバックライトなどの機能異常を防ぐために、新しい仮想 EC を別途作成します。';

  @override
  String get autoGen5651 => 'USB 電源属性の修正 (Intel 第 6 世代以降のプラットフォームに適用)';

  @override
  String get autoGen5652 =>
      '• Intel Skylake 第 6 世代以降、サーバー Haswell-E 第 4 世代以降、AMD Ryzen およびその他のプラットフォームに適用可能\n• Intel Skylake 以降のプロセッサでは、USB デバイスに適切に電力が供給され認識されるように、macOS には特定の USB 電源プロパティが必要です。\n• このパッチは、macOS 要件に準拠するように USB ポートの電源管理を修正し、USB デバイスの異常認識、電力供給不足、ホットプラグできないなどの問題を解決します。\n• ノートブックの場合: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml 2 つの組み合わせは SSDT-EC-USBX-LAPTOP.aml と同等です。\n• デスクトップの場合: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml 2 つの組み合わせは SSDT-EC-USBX-DESKTOP.aml と同等です。';

  @override
  String get autoGen5653 => 'CPUコアの識別により、周波数調整と省エネ補正が可能';

  @override
  String get autoGen5654 =>
      '• SSDT-PLUG は、Intel Haswell 第 4 世代 ～ 第 11 世代、サーバー Haswell-E 第 4 世代以降のプラットフォームに適しています (SSDT-PLUG をカスタマイズすると、ツールが自動的に検出して生成します)。\n• SSDT-PLUG-ALT は、Intel Alder Lake 第 12 世代以降および AMD Ryzen プラットフォームに適しています (SSDT-PLUG をカスタマイズすると、ツールが自動的に検出して生成し、名前を SSDT-PLUG-ALT に変更します)。\n• macOS は、CPU 電源管理プラグイン (PluginType) に依存して CPU 周波数を調整し、エネルギー効率とバッテリー寿命を向上させます。\n• このパッチは CPU 定義を変更し、macOS が Apple デバイスに必要なプラグイン タイプ = 1 のプロセッサであると認識するようにします。これにより、CPU 周波数管理が正しく読み込まれ、パフォーマンスと消費電力の制御が向上します。';

  @override
  String get autoGen5655 =>
      'NVRAM サポートを有効にする (通常は Intel ネイティブ 300 シリーズ マザーボードの場合)';

  @override
  String get autoGen5656 =>
      '• Intel Coffee Lake第8世代～第9世代プラットフォームに適用\n• ネイティブ 300 シリーズ マザーボード (Z370、B360 など) は、macOS で NVRAM を正しく使用しない可能性があり、その結果、一部の機能 (iMessage、ボリューム メモリ、ブート パラメータなど) が保存されません。\n• このパッチはマザーボードの PMC (電源管理コントローラー) を有効にし、追加の EmuVariableUEFI ドライバーを必要とせずに macOS がネイティブ NVRAM を通常どおり使用できるようにします。';

  @override
  String get autoGen5657 =>
      'バックライトをサポートするために PNLF デバイスを追加します (ノートブックおよびオールインワンのみ)';

  @override
  String get autoGen5658 =>
      '• macOS では、ノートブックの画面の明るさを正しく制御するには、PNLF デバイス (パネルの明るさ) が必要です。\n• このパッチは ACPI に PNLF デバイスを作成し、macOS が画面の明るさを調整し、システム環境設定で明るさの制御オプションを表示できるようにします。\n• ノートブックや一部のオールインワンコンピュータに適しており、輝度調整ができない問題を解決します。\n• UID = 14、適用対象: Intel 第 1 世代 Arrandale、第 2 世代 Sandy Bridge、第 3 世代 Ivy Bridge\n  注: UID: 14 を使用する一部のマシンでは、最大輝度の制限やその他の問題が発生します。これらの問題を解決するには、iGPU (統合グラフィックス カード) の正しいデバイス パスを設定する必要があり、場合によっては IGPU レジスタ情報を補足する必要があります。\n• UID = 15、適用対象: Intel 第 4 世代 Haswell、第 5 世代 Broadwell\n• UID = 16、適用対象: Intel 第 6 世代 Skylake、第 7 世代 Kaby Lake、一部の第 4 世代 Haswell\n• UID = 17、次の用途に適しています: カスタムの明るさ。通常、一部の非標準デバイスまたは特殊なニーズのある Hackintosh 設定に使用されます。\n• UID = 18、次の用途に適しています: カスタムの明るさ。通常、一部の非標準デバイスまたは特殊なニーズのある Hackintosh 設定に使用されます。\n• UID = 19、適用対象: Intel 第 8 世代 CoffeeLake 以降、第 10 世代未満、および AMD ノートブック\n• UID = 99、適用対象: その他 (カスタム applbkl-name / applbkl-data デバイス プロパティが必要)、まったく機能しない可能性があります。';

  @override
  String get autoGen5659 =>
      '画面のバックライト調整に必要なセンサーのサポートを提供します (ノートブックおよびオールインワン コンピューターにのみ適用可能)';

  @override
  String get autoGen5660 =>
      '• Apple のネイティブ センサー (周囲光センサー、ALS) 機能をシミュレートして有効にし、画面の明るさを自動的に調整するために使用されます。\n• お使いのデバイス (一部のハイエンドノートブックなど) に実際に ALS が搭載されており、問題がある場合は、SSDT-ALS0 を追加して自動輝度調整機能を修正してみてください。そうでない場合は、SSDT-ALS0 を追加することはお勧めできません。\n• 適用対象: オールインワン PC (AIO) およびラップトップのみ';

  @override
  String get autoGen5661 =>
      'macOS は Windows に偽装し、ブロックされているデバイス (I2C タッチパッドなど) のロックを解除します';

  @override
  String get autoGen5662 =>
      '• _OSI (オペレーティング システム インターフェイス) は、オペレーティング システムがサポートする機能をレポートできるようにする ACPI のメソッドです。\n• 一部のマザーボード ファームウェアは、_OSI 戻り値に基づいて特定のデバイスを有効にするかどうかを決定する場合がありますが、この値は macOS によって認識されず、機能が失われる可能性があります。\n• このパッチは、ファームウェアに macOS も Windows であると認識させ、I2C タッチパッド、バッテリー管理などの隠れた機能を有効にします。';

  @override
  String get autoGen5663 => 'USBポートのリセットと修正';

  @override
  String get autoGen5664 =>
      '• 一部の OEM は ACPI 仕様に違反しており、macOS の起動時に問題が発生します。この問題を解決するには、RHUB デバイスをシャットダウンし、macOS に強制的にポートを手動で再構築させる必要があります。\n• このパッチは、macOS の起動時に USB コントローラ (EHC1、EHC2、その他の USB デバイスのシールドと名前変更を含む) をリセットするため、すべての USB ポートが正しく識別され、USB マッピング (UTBMap.kext など) とともに使用されて、USB デバイスが適切に動作するようになります。\n• 通常、デスクトップ 400 シリーズ マザーボード (Asus など) およびモバイル IceLake プラットフォーム (Dell、Lenovo など) に適しています。';

  @override
  String get autoGen5665 => '欠落している PCI デバイス パスのブリッジを作成する';

  @override
  String get autoGen5666 =>
      '• 一部のマザーボードまたはデバイスの PCI デバイス パスが macOS で正しく認識されず、グラフィックス カード、サウンド カード、ワイヤレス ネットワーク カードなどのデバイスが正しく動作しなくなる可能性があります。\n• このパッチは、これらのデバイスに正しい PCI ブリッジを作成し、macOS がこれらの PCI デバイスを正しく認識して使用できるようにします。';

  @override
  String get autoGen5667 =>
      'APIC テーブルを修正して CPU カーネル パニック問題を解決します (HEDT サーバー プラットフォームに該当)';

  @override
  String get autoGen5668 =>
      '• APIC テーブルのプロセッサ ID を修復または書き換えて、macOS が CPU コアの数と数を正しく識別できるようにし、カーネル パニックやコア識別エラーを回避できるようにします。\n• パッチを当てたテーブルをロードする前に、元の APIC テーブルをファームウェアで削除する必要があります。\n• X58、X79、X99、X299 およびその他の Intel サーバー (HEDT) プラットフォームに適用できます。';

  @override
  String get autoGen5669 =>
      'DMAR 予約メモリ領域を削除し、システム起動の問題とネットワーク カードの互換性の問題を修正します。';

  @override
  String get autoGen5670 =>
      '• DMAR (DMA Remapping Table) は、IOMMU (Input-Output Memory Management Unit) をサポートする Intel VT-d 仮想化テクノロジの一部です。\n• このパッチは、問題の原因となっている DMAR テーブルの予約メモリ領域を削除するため、macOS が DMAR を誤って読み取り、システムの起動に失敗することを防ぎます。\n• VT-d 互換性のサポートを提供し、VT-d が macOS Big Sur 以降、特に DriverKit によって駆動されるハードウェアで適切に動作するようにします。\n• macOS は VT-d をサポートしていますが、一部のマザーボードまたは BIOS が提供する DMAR テーブルとの互換性の問題があり、ACPI DMAR テーブル (AppleACPICPU、IOPCI、AppleVTD 関連のログの場所でスタック) を解析する際に、macOS でカーネルのクラッシュ、起動の遅延、システムの不安定性などの問題が発生する可能性があります。\n• サポートされるハードウェア範囲: I225 ネットワーク カード、Aquantia ネットワーク カード、一部の WiFi デバイスなど。\n• パッチを当てたテーブルをロードする前に、元の DMAR テーブルをファームウェアで削除する必要があります。\n• 適用可能な CPU: VT-d テクノロジーをサポートする任意のプロセッサ。';

  @override
  String get autoGen5671 => 'システムバス SMBus サポートを追加';

  @override
  String get autoGen5672 =>
      '• macOS では、次のような特定のサービスを適切に実行するために SMBus (システム管理バス) デバイスが必要です。\n  I2C タッチパッド、バッテリー管理、光感知による自動輝度調整、一部の Wi-Fi/Bluetooth デバイス\n• SSDT-SBUS-MCHC は、SBUS (システム管理バス) および MCHC (メモリ コントローラー) デバイスを ACPI に追加することで、macOS にこれがネイティブ Apple デバイスであると認識させ、関連機能が適切に動作するようにします。\n• デバイスの I2C タッチパッド、バッテリー情報、自動輝度調整が使用できない場合は、このパッチを有効にしてみてください。';

  @override
  String get autoGen5673 =>
      'コア グラフィックス アクセラレーションの失敗の問題を修正しました (通常は Ivy Bridge と Sandy Bridge に適用されます)。';

  @override
  String get autoGen5674 =>
      '• Intel Management Engine (略して IMEI) は、管理エンジンへの接続に使用されるハードウェア インターフェイスです。これは、古いプラットフォーム (Sandy/Ivy) および一部のマザーボードに MEI/IMEI/HECI デバイスがない場合にのみ必要です。\n• Intel 第 3 世代 Ivy Bridge プロセッサーと 6 シリーズ マザーボードが混在している場合に適用されます (例: i3 3225 プロセッサー、H61 マザーボード)、コア グラフィックス アクセラレーションの問題\n• Intel 第 2 世代 Sandy Bridge プロセッサーと 7 シリーズ マザーボードが混在している場合に適用されます (例: i5 2500k プロセッサー、B75 マザーボード)、コア グラフィックス アクセラレーションの問題\n• 7 シリーズ マザーボードと組み合わせた Intel 第 3 世代 Ivy Bridge プロセッサ、および 6 シリーズ マザーボードと組み合わせた Intel 第 2 世代 Sandy Bridge プロセッサには、この SSDT は必要ありません。\n• Intel 第 4 世代 Haswell 以降のプラットフォームでは通常、MEI/IMEI/HECI デバイスを正しく実装できるため、この SSDT は必要ありません。';

  @override
  String get autoGen5675 => 'シャットダウンして再起動するか、電源が供給されずにシャットダウンする問題を修正';

  @override
  String get autoGen5676 =>
      '• 一部のマザーボードでは、macOS のシャットダウン (S5) 時に USB コントローラの電源が完全にオフにならず、正常にシャットダウンできない (シャットダウンが再起動になるか、電源が供給されない状態でシャットダウンする) 場合がある問題を修正しました。\n• ACPI 名前変更パッチが必要: _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      '現在のシステムステータスを確認します。主に、S3 スリープがサポートされているかどうかを確認します (カスタマイズされていない SSDT)。';

  @override
  String get autoGen5678 =>
      '• 現在のマシンが AOAC マシン (カスタマイズされていない SSDT) であるかどうかを確認します。\n• 現在の BIOS 設定でシステム ステータスを確認します。主に、S3 スリープがサポートされているかどうかを確認します (カスタマイズされていない SSDT)。\n• 注: S3 スリープと互換性があるのは、非 AOAC マシンのみです。 AOAC マシンは S3 スリープと競合し、S3 スリープをサポートしません。\n• チェックの結果、非 AOAC マシン (AOAC マシンは S3 スリープをサポートしていません。以下は読まないでください) のシステム ステータスが S3 スリープをサポートしていないことが示された場合は、次の状況が考えられます。\n  1. マザーボードのファームウェアは S3 スリープをサポートしていますが、BIOS 設定で S3 スリープが有効になっていません。有効にすると、S3 スリープをサポートできるようになります。\n  2. マザーボードのファームウェアは S3 を物理的に去勢しませんが、DSDT は _S3 メソッドを定義しません。 _S3 メソッドを完了すると、S3 のスリープ問題が解決される可能性があります。\n  3. マザーボードのファームウェアは S3 を物理的に去勢しており、S3 スリープをまったくサポートしていません。 _S3 メソッドが完了しても、S3 スリープ問題は修復できません。';

  @override
  String get autoGen5679 => 'AOAC マシン (カスタマイズされていない SSDT) であるかどうかを確認します。';

  @override
  String get autoGen5680 =>
      '• FACP.aml に基づいて AOAC マシン (カスタマイズされていない SSDT) であるかどうかを確認します。\n• 注: S3 スリープと互換性があるのは、非 AOAC マシンのみです。 AOAC マシンは S3 スリープと競合し、S3 スリープをサポートしません。 AOAC マシンはノートブックでは一般的です。\n• AOAC マシンが S3 スリープに入ると、スリープ後に復帰できず、クラッシュ状態になり、強制的にシャットダウンすることしかできないように見える場合があります。 S3 スリープを無効にすることをお勧めします。\n• AOAC マシンでは、次の解決策を検討することをお勧めします。\n  1. BIOS のロックを解除し、AOAC を無効にします (通常は実行が困難ですが、最も安定しています)\n  2. S3 スリープを無効にする (BIOS で S3 スリープを無効にする、または S3 スリープを無効にする場合は SSDT-S3-DISABLE)\n  3. 独立したグラフィック電源をオフにします。\n  4.NVMeFix.kextを使用してSSDのAPSTを有効にします\n  5. ASPM を有効にする (BIOS 詳細オプションで ASPM が有効になり、SSDT パッチで L1 が有効になります)';

  @override
  String get autoGen5681 => 'USBコントローラーによるスリープからの復帰の問題を修正';

  @override
  String get autoGen5682 =>
      '• インスタント ウェイクアップの問題を解決するには、GPRW の名前を XPRW に変更します (注: USB キーボードでデバイスをウェイクアップできなくなる可能性があります。電源キーを使用してウェイクアップできます)。\n• ほとんどのプラットフォームは GPRW 方式を使用し、UPRW 方式を提供および使用しているプラットフォームはほとんどないため、SSDT-GPRW がより一般的に使用されます。\n• Skylake 以降のプラットフォームで利用可能';

  @override
  String get autoGen5683 =>
      '• インスタント ウェイクアップの問題を解決するには、GPRW の名前を XPRW に変更します (注: USB キーボードでデバイスをウェイクアップできなくなる可能性があります。電源キーを使用してウェイクアップできます)。\n• ほとんどのプラットフォームは GPRW 方式を使用し、UPRW 方式を提供および使用するプラットフォームはほとんどないため、SSDT-UPRW はほとんど使用されません。\n• Skylake 以降のプラットフォームで利用可能';

  @override
  String get autoGen5684 => 'スリープ ボタンのスリープ問題を修正 (ノートブックに適用)';

  @override
  String get autoGen5685 =>
      '• 一部のコンピュータがスリープ ボタン SLPB (PNP0C0E) を使用してスリープに入ると、ACPI が誤ったパラメータを送信し、macOS がシャットダウンであると誤って認識します。これにより、直接再起動、スリープ後のクラッシュ、またはスリープは成功したがシステム ステータスが破損する可能性があります。\n• スリープ ボタンを押すと「蓋が閉じている」ふりをして、危険な PNP0C0E スリープを安全で安定した PNP0C0D スリープに強制します。\n• 通常はラップトップに適しています';

  @override
  String get autoGen5686 => 'ウェイクアップ後に画面をオンにするために任意のキーを押す必要がある問題を修正しました';

  @override
  String get autoGen5687 =>
      '• 一部のマシンがウェイクアップ後に画面をオンにするために任意のキーを押す必要がある問題を修正しました。';

  @override
  String get autoGen5688 => '起動後の電源ボタンの異常な呼吸ライトの問題を修正 (Lenovo ノートブックに適用)';

  @override
  String get autoGen5689 =>
      '• 一部の Lenovo ノートブックで起動後、A 面の呼吸ライトと電源ボタンの呼吸ライトが通常に戻らない問題を修正しました。\n• 一部の Lenovo ラップトップでウェイクアップ後に F4 マイク インジケーター ライトのステータスが異常になる問題を修正しました。\n• 主に Lenovo シリーズのノートブックに適用されますが、他のブランドのノートブックには通常適用されません。';

  @override
  String get autoGen5690 =>
      'システム S3 スリープ状態を無効にする (S3 スリープ ウェイクアップ クラッシュ、再起動、またはシャットダウンの問題を修正)';

  @override
  String get autoGen5691 =>
      '• macOS システムが起動したときのシステムのクラッシュ、再起動、またはシャットダウンを避けるために、macOS システムでは S3 スリープ状態のみを無効にしてください。\n• 無効にすると、macOS のみが S3 スリープをサポートしなくなります (スリープ ボタンをクリックするか、モニターが省電力モードになり、画面がオフになりますが、ホストは引き続き動作し、ファンの動作は停止しません)。\n• macOS で S3 スリープ状態を無効にした後は、macOS のシステム設定を変更する必要はなくなり、省エネモードをオフにする必要もありません (その前に、システム設定を変更する必要がある場合があります -> 非アクティブ時にディスプレイをオフにする -> 決してしない)\n• 該当するシナリオ: スリープの問題が修復されない場合、macOS システム設定で省エネモードがオンになります (「非アクティブ時にディスプレイをオフにする -> 10 分間」)。システムがスリープ状態に入った後、macOS システムが復帰すると、システムがクラッシュ、再起動、またはシャットダウンする可能性があります。現時点では、S3 スリープ状態を無効にして問題を解決できます。\n• ACPI 名前変更パッチが必要: _S3 -> XS3';

  @override
  String get autoGen5692 =>
      '一部のハードウェアが使用不能になる問題を修正するために、ホット リスタートがコールド リスタートに変更されました。';

  @override
  String get autoGen5693 =>
      '• ホット リスタートがコールド リスタートに変更されました。これにより、一部のプラットフォームで Windows から macOS に再起動した後に一部のハードウェアが使用できなくなる問題が修正されます。 (例: サウンドカード、WiFi、Bluetooth)\n• 注: SSDT-FACP.aml は生成されません。 ACPI-Patch のみが生成されます。';

  @override
  String get autoGen5694 => 'グラフィックスデバイスIDマッピング';

  @override
  String get autoGen5695 =>
      '• AMD グラフィックス カードのデバイス ID マッピング シナリオに使用され、ACPI を介して互換性のあるデバイス ID を挿入し、システムが対応するグラフィックス ドライバーをロードできるようにします。\n• RapidEFI 互換性データでデバイス ID マッピングが必要であると明示的にマークされているモデルにのみ推奨されます。';

  @override
  String get autoGen5696 => 'ACPIデバイスのシールド';

  @override
  String get autoGen5697 =>
      '• 互換性のないグラフィックス カード、NVMe コントローラー、その他の拡張デバイスなど、macOS ドライバーへの引き継ぎに適していない PCI デバイスを ACPI レイヤーで処理するために使用されます。\n• ラップトップは、最初に電力レベルの非アクティブ化を試みます。ファームウェアが電源供給方式をサポートしていない場合は、ドライバー層にダウングレードして回避します。\n• デスクトップ、NUC、および HEDT は、マシンのファームウェアには通常存在しない独立したグラフィックス電源方式への依存を避けるために、デフォルトで汎用回避方式を使用します。\n• すべてのシナリオには有効な ACPI パスが必要です。ハードウェアが ACPI パスの欠落を報告した場合、デバイスは自動的にスキップされます。';

  @override
  String get autoGen5698 =>
      '偽造された有線ネットワーク カード機器 (有線ネットワーク カードを搭載していないノートブックに該当)';

  @override
  String get autoGen5699 =>
      '• Hackintosh システム用の NullEthernet 偽仮想ネットワーク カードを提供し、iMessage、Facetime、iCloud およびその他の Apple サービスの内蔵ネットワーク機器への依存を解決します。';

  @override
  String get autoGen5700 => 'ラップトップの I2C タッチパッドの問題を修正 (ラップトップに適用)';

  @override
  String get autoGen5701 =>
      '• ACPI ハードウェア ノードのマウントを修復し、デバイスが macOS システムで有効になっていることを確認し、一部の I2C タッチパッドが正常に認識されない問題を修正します。\n• SSDT-GPI0 は、ハードウェア デバイスをマウントするドライバーの問題を解決します。 SSDT-XOSI は主に、BIOS/ACPI 初期化ロジックとオペレーティング システム認識の間の非互換性の問題を解決するために使用されます (タッチパッドの問題を解決できる場合もあります)。';

  @override
  String get autoGen5702 =>
      'B850、B650、B550、A520 チップセットの CPU 名前変更 (Ryzen プラットフォームのみ)';

  @override
  String get autoGen5703 =>
      '• B850、B650、B550、および A520 チップセットの CPU 名前変更に適用して、AMD プラットフォームが CPU を認識できないことによって引き起こされるクラッシュ問題を修正します (事前に作成された SSDT パッチを使用する場合にのみ推奨)\n• SSDT パッチをカスタマイズする場合は、カスタマイズされた SSDT-PLUG を使用することをお勧めします。 (AMD Ryzen プラットフォームは、SSDT をカスタマイズするとその名前が自動的に SSDT-PLUG-ALT に変更されます)';

  @override
  String get autoGen5704 =>
      '電源管理の修正 (Intel 第 12 世代以降、一部の AMD Ryzen およびその他のプラットフォームに適用)';

  @override
  String get autoGen5705 =>
      '• macOS は、CPU 電源管理プラグイン (PluginType) に依存して CPU 周波数を調整し、エネルギー効率とバッテリー寿命を向上させます。\n• このパッチは CPU 定義を変更し、macOS が Apple デバイスに必要なプラグイン タイプ = 1 のプロセッサであると認識するようにします。これにより、CPU 周波数管理が正しく読み込まれ、パフォーマンスと消費電力の制御が向上します。\n• Intel Alder Lake 第 12 世代以降および一部の AMD Ryzen プラットフォームに適用可能';

  @override
  String get autoGen5706 =>
      'AWAC (モダンタイマー) を無効にする (Intel Coffee Lake 第 8 世代以降で利用可能)';

  @override
  String get autoGen5707 =>
      '• 従来の RTC を有効またはスプーフィングしている間は、AWAC (モダン タイマー) を無効にします。\n• Intel Coffee Lake 第 8 世代以降と互換性があります。';

  @override
  String get autoGen5708 =>
      'すべてのネイティブ X99 (C612) マザーボードおよびほとんどのネイティブ X79 (C602) マザーボードで必要';

  @override
  String get autoGen5709 =>
      '• この SSDT は、すべての X99 マザーボードとほとんどの X79 マザーボードに適用できます。その主な機能は、ACPI で未使用のデバイスを無効にして、IOPCIFamily がカーネル パニックを引き起こすのを防ぐことです。\n• 適用可能なマザーボード: すべてのネイティブ X99 (C612) マザーボードおよびほとんどのネイティブ X79 (C602) マザーボード。';

  @override
  String get autoGen5710 =>
      'レガシー RTC タイマーを有効または偽装し、RTC 範囲を修正します (すべてのネイティブ X99 (C612) および X299 マザーボードに適用されます)';

  @override
  String get autoGen5711 =>
      '• 従来の RTC タイマーを有効または偽装し、RTC 範囲を修正します。\n• 不正な起動時間、RTC 関連のエラー、スリープ ウェイクアップの問題などを解決します。\n• このSSDTは、X299マザーボードだけでなく、すべてのX99(C612)マザーボードにも適用できます。';

  @override
  String get autoGen5712 => 'DTGP サポートを追加';

  @override
  String get autoGen5713 =>
      '• ハードウェア デバイス属性を挿入して、グラフィック カード、サウンド カード、Thunderbolt カードなどの一部の ACPI 問題を修正します (DTGP メソッドがサポートされていない場合、これらの属性の挿入は失敗するか機能しない可能性があります)。';

  @override
  String get autoGen5714 => '標準 DMA コントローラの偽造';

  @override
  String get autoGen5715 =>
      '• 標準の DMA コントローラ (ダイレクト メモリ アクセス コントローラ) を模倣し、ACPI リソース テーブルを完成させ、macOS が LPC バス デバイスと DMA 機能を適切に識別できるようにする仮想デバイス コントローラ (PNP0200)。\n• 通常、HEDT/サーバー プラットフォームには必要ありません。\n• 不足している部品を追加します。これは単なる完璧な解決策であり、必須ではありません。';

  @override
  String get autoGen5716 => '標準 PWRB コントローラの偽造';

  @override
  String get autoGen5717 =>
      '• 標準の電源ボタン (PNP0C0C) デバイスを偽造して、macOS がシステムの電源ボタンを正常に認識し、スリープとウェイクアップをサポートできるようにします。\n• 一部の BIOS/マザーボードの ACPI ツリーには PNP0C0C がなく、macOS は電源ボタンを正しく処理できません。その結果、スリープできなくなったり、ウェイクアップできなくなったり、メニュー バーの電源ボタンが使用できなくなったりする可能性があります。\n• 不足している部品を追加します。これは単なる完璧な解決策であり、必須ではありません。';

  @override
  String get autoGen5718 => '標準 SLPB コントローラの偽造';

  @override
  String get autoGen5719 =>
      '• 標準のスリープ ボタン (PNP0C0E) デバイスを偽造して、macOS がシステムのスリープ ボタンを正しく識別し、スリープおよびウェイク機能を実装できるようにします。\n• 一部の BIOS/マザーボード ACPI ツリーには PNP0C0E がなく、macOS がスリープ ボタンを正しく処理できないため、スリープできなくなったり、ウェイクアップできなくなったり、メニュー バーのスリープ ボタンが使用できなくなったりする可能性があります。\n• この部品は PNP0C0E スリープ補正メソッドに必要です。\n• 不足している部品を追加します。これは単なる完璧な解決策であり、必須ではありません。';

  @override
  String get autoGen5720 => 'IGPUを模倣するにはMEM2デバイスが必要です';

  @override
  String get autoGen5721 =>
      '• IGPU に必要な MEM2 ACPI デバイスを追加し、IGPU 関連の問題を修正\n• ドライバーの初期化の失敗を回避するために、コア ディスプレイ メモリ マッピングを補足します。\n• 適用範囲: Haswell ～ Kaby Lake、コアグラフィックスシステムのみ。通常、この SSDT を必要としないのはディスクリート グラフィックスだけです。';

  @override
  String get autoGen5722 => '無効なパス';

  @override
  String get autoGen5723 => '有効な .aml または .dat ファイルが見つかりません';

  @override
  String get autoGen5724 => 'SSDT.aml ファイルをバッチで逆コンパイルしています...';

  @override
  String get autoGen5725 => 'DSDT.aml および SSDT.aml ファイルをバッチで逆コンパイルしています...';

  @override
  String get autoGen5726 => '失敗した .aml ファイルを個別に逆コンパイルしています...';

  @override
  String get autoGen5727 => '他の .aml ファイルを逆コンパイルしています...';

  @override
  String get autoGen5728 =>
      '注: パスまたはファイル名に中国語や特殊文字を含めないように注意してください。含めると、予期しない問題が発生する可能性があります。';

  @override
  String get autoGen5729 => 'ACPI エクスポート ツールの準備ができていません';

  @override
  String get autoGen5730 => 'ACPI テーブルをエクスポートしています...';

  @override
  String get autoGen5731 => '現在のプラットフォームは ACPI テーブルのエクスポートをサポートしていません';

  @override
  String get autoGen5732 => 'sudo パスワード認証を待っています...';

  @override
  String get autoGen5733 => '管理者権限が取り消されました';

  @override
  String get autoGen5734 => '管理者パスワードが入力されていません';

  @override
  String get autoGen5735 => '管理者のパスワードが間違っています';

  @override
  String get autoGen5736 => 'ACPIテーブルのエクスポートプロセスが失敗しました';

  @override
  String get autoGen5737 =>
      '現在のプラットフォームで抽出された ACPI テーブルが空であるか、ACPI テーブルのエクスポートをサポートしていません。';

  @override
  String get autoGen5738 => '=> DSDT が見つかりません。署名によってエクスポートしています...';

  @override
  String get autoGen5739 => 'DSDT テーブルのエクスポートに失敗しました';

  @override
  String get autoGen5740 => 'テーブル名を更新しています...';

  @override
  String get autoGen5741 => 'ACPI テーブルが正常にエクスポートされました。';

  @override
  String get autoGen5742 => '有効な ACPI テーブルが提供されていません!';

  @override
  String get autoGen5743 => '検索する 16 進データが見つかりませんでした。';

  @override
  String get autoGen5744 => '一意の塗りつぶし ID が見つかりません!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: 無効なテーブルパラメータ';

  @override
  String get autoGen5746 => '最も緩い';

  @override
  String get autoGen5747 => '長さのみ';

  @override
  String get autoGen5748 => 'テーブル ID と長さ、正規化されたヘッダーを無効にする';

  @override
  String get autoGen5749 => 'テーブル ID と長さ、正規化されたヘッダーを有効にする';

  @override
  String get autoGen5750 =>
      'Intel 第 1 世代 Arrandale、第 2 世代 Sandy Bridge、第 3 世代 Ivy Bridge';

  @override
  String get autoGen5751 => 'Intel第4世代Haswell、第5世代Broadwell';

  @override
  String get autoGen5752 =>
      'Intel 第 6 世代 Skylake、第 7 世代 Kaby Lake、第 4 世代 Haswell の一部';

  @override
  String get autoGen5753 => 'カスタムの明るさ。通常、一部の非標準機器または特別なニーズの設定に使用されます。';

  @override
  String get autoGen5754 => 'Intel 第 8 世代 CoffeeLake ～ 第 10 世代、および AMD ノートブック';

  @override
  String get autoGen5755 =>
      'その他 (カスタム applbkl-name / applbkl-data デバイス プロパティが必要) はサポートされていない可能性があります';

  @override
  String get autoGen5756 =>
      'ACPI ツールは現在、Windows/macOS/Linux プラットフォームのみをサポートしています';

  @override
  String get autoGen5757 =>
      '注: iasl-legacy の古いバージョンは、macOS 10.6 以前のバージョンのみをサポートします。現在の主流システムとの互換性の問題がある可能性があるため、注意して使用してください。';

  @override
  String get autoGen5758 => '[iasl-legacy 旧バージョン コンパイラ] を使用する';

  @override
  String get autoGen5759 => 'コンパイルに失敗しました!';

  @override
  String get autoGen5760 =>
      '新しいバージョンの iasl に変更するか、強制コンパイルを有効にして再試行することをお勧めします。';

  @override
  String get autoGen5761 => '存在する';

  @override
  String get autoGen5762 => '存在しません';

  @override
  String get autoGen5763 =>
      '注: Intel 第 1 世代 Arrandale、第 2 世代 Sandy Bridge、第 3 世代 Ivy Bridge はデフォルトで UID: 14 を使用しますが、UID: 14 を使用する一部のマシンでは最大輝度の制限やその他の問題が発生します。これらの問題を解決するには、iGPU (統合グラフィックス カード) の正しいデバイス パスを設定する必要があり、場合によっては IGPU レジスタ情報を補足する必要があります。';

  @override
  String get autoGen5764 =>
      '使用する iGPU ACPI パスを入力してください。各パス要素の文字制限は、スペースで区切られた 4 文字の英数字 (文字またはアンダースコアで始まる) です。例: SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      '注: NBCF パッチが生成されており (BrightnessKeys.kext ドライバーに応じて)、デフォルトで有効になっています。使用中に問題が発生した場合は、このパッチを無効にしてください。';

  @override
  String get autoGen5766 => '次のブリッジは解決できません:';

  @override
  String get autoGen5767 =>
      '=> 現在のファームウェアは一般的なシステム状態をサポートしています。 AOAC マシンではない場合、スリープの問題を修正した後、macOS は S3 スリープをサポートできますが、それ以外の場合は S3 スリープをサポートしません。';

  @override
  String get autoGen5768 => 'パッチ';

  @override
  String get autoGen5769 => 'サーバーへの接続がタイムアウトしました';

  @override
  String get autoGen5770 => 'ダウンロードがキャンセルされました';

  @override
  String get autoGen5771 => '読み取り応答タイムアウト';

  @override
  String get autoGen5772 => 'Kext が正常にコピーされました';

  @override
  String get autoGen5773 =>
      'Web プラットフォームはデフォルトで直接ダウンロードされ、現時点ではデフォルト パスの選択をサポートしていません。';

  @override
  String get autoGen5774 => '構成ファイルのルートノードはJSONオブジェクトではありません';

  @override
  String get autoGen5775 => 'システムに従ってください';

  @override
  String get autoGen5776 => '閉鎖';

  @override
  String get autoGen5777 => 'マイクロソフト弥平';

  @override
  String get autoGen5778 => 'ブラックボディをアップデート';

  @override
  String get autoGen5779 => '思源ソンティ';

  @override
  String get autoGen5780 => 'ハードウェア情報の更新を待機しています';

  @override
  String get autoGen5781 => 'ハードウェア情報の読み込み';

  @override
  String get autoGen5782 => 'ハードウェア情報の更新';

  @override
  String get autoGen5783 => 'ハードウェア情報の読み込みが完了しました';

  @override
  String get autoGen5784 => 'ハードウェア情報の読み込みに失敗しました';

  @override
  String get autoGen5785 => 'ハードウェア情報はまだサポートされていません';

  @override
  String get autoGen5786 => 'ハードウェア情報のインポートが完了しました';

  @override
  String get autoGen5787 => '失敗';

  @override
  String get autoGen5788 => 'サポートされていません';

  @override
  String get autoGen5789 => '仕上げる';

  @override
  String get autoGen5790 => 'キャッシュ';

  @override
  String get autoGen5791 => '現在のプラットフォームはハードウェア情報のクエリをサポートしていません';

  @override
  String get autoGen5792 =>
      '現在のレポートは、インポートされた外部ハードウェア レポートです。エクスポートする前に、ローカルのハードウェア情報を更新してください。';

  @override
  String get autoGen5793 => '現在、エクスポート可能なローカル ハードウェア情報はありません。';

  @override
  String get autoGen5794 => 'ハードウェアレポートフォルダーのクリーンアップが失敗しました';

  @override
  String get autoGen5795 => 'ハードウェアレポートフォルダーの作成に失敗しました';

  @override
  String get autoGen5796 => 'ACPI テーブルのエクスポートが失敗したか、サポートされていません';

  @override
  String get autoGen5797 => '管理者権限が取り消されており、ACPIテーブルはエクスポートされていません';

  @override
  String get autoGen5798 => '管理者パスワードを入力しないとACPIテーブルをエクスポートできません';

  @override
  String get autoGen5799 => '管理者のパスワードが間違っているため、ACPI テーブルをエクスポートできません。';

  @override
  String get autoGen5800 => 'ACPI テーブルのエクスポートに失敗しました: 有効な ACPI テーブルが見つかりません';

  @override
  String get autoGen5801 => 'ACPI テーブルのエクスポートに失敗しました: エクスポート プロセスが失敗しました。';

  @override
  String get autoGen5802 => 'ハードウェア情報ファイルはJSONオブジェクトではありません';

  @override
  String get autoGen5803 => 'ハードウェア情報がインポートされました';

  @override
  String get autoGen5804 => 'ACPI テーブル カタログが無効です。カスタム SSDT は使用できません';

  @override
  String get autoGen5805 => 'EFI の構成を開始します...';

  @override
  String get autoGen5806 => 'ハードウェア情報に基づいて ConfigModel を生成しています...';

  @override
  String get autoGen5807 => 'EFI raw SSDT を使用し、SSDT のカスタマイズをスキップします。';

  @override
  String get autoGen5808 =>
      '外部ハードウェア レポートがインポートされましたが、ACPI テーブル カタログが提供されず、カスタム SSDT が無効になりました。';

  @override
  String get autoGen5809 => 'OpenCore EFI をエクスポートしています...';

  @override
  String get autoGen5810 => 'EFI が書き込まれました。ACPI の抽出と SSDT のカスタマイズを開始します...';

  @override
  String get autoGen5811 => 'SSDT のカスタマイズ プロセスが終了します。';

  @override
  String get autoGen5812 => 'SSDT のカスタマイズ プロセスが失敗しました。';

  @override
  String get autoGen5813 => 'EFI設定が完了しました。';

  @override
  String get autoGen5814 => 'EFI 構成に失敗しました。出力パスまたはログを確認してください。';

  @override
  String get autoGen5815 => 'ハードウェアは ConfigModel ルールを自動的に生成し、再構築されます。';

  @override
  String get autoGen5816 => 'チップの長さは選択肢と同じでなければなりません';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'アセット/ssdt/プラットフォームパッチ.md';

  @override
  String get autoGen5819 => 'アセット/ssdt/サウンドカード patch.md';

  @override
  String get autoGen5820 => '資産/ssdt/グラフィックスカード偽造.md';

  @override
  String get autoGen5821 => '資産/ssdt/シールドデバイス.md';

  @override
  String get autoGen5822 => 'アセット/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'Bluetooth ドライバーの説明:\n  1. Intel WiFi にチェックを入れると、macOS のバージョンに応じて Intel Bluetooth ドライバーが自動的に追加されるため、手動でチェックする必要はありません。 ！ ！\n  2. Broadcom WiFi にチェックを入れると、macOS のバージョンに応じて Broadcom Bluetooth ドライバーが自動的に追加されるため、手動でチェックする必要はありません。 ！ ！\n  3. Atheros WiFi にチェックを入れると、Atheros Bluetooth ドライバーが自動的に追加されるため、手動でチェックする必要はありません。 ！ ！\n  4. WiFi モデルがチェックされていない場合、または Bluetooth モデルが説明されていない場合は、手動でチェックする必要があります。 ！ ！\n  5. Bluetooth は USB チャネルを使用するため、ドライバーとパッチを追加しても正しく動作しない場合は、USB が適切にカスタマイズされていることを確認してください。 ！ ！';

  @override
  String get autoGen5824 =>
      '一般的な HPET パス:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  このオプションは、サウンド カードの IRQ 問題の一部を修正するために使用されます。注: サウンド カードに IRQ 問題がない場合は、この機能を使用しないでください。';

  @override
  String get autoGen5825 =>
      'サポートされている macOS バージョン:\n    • ワイヤレス USB Big Sur アダプター - V18 バージョンは、macOS Catalina 10.15.x ～ macOS Tahoe 26.x をサポートします (OCLP USB パッチが必要)\n    • ワイヤレス USB Big Sur アダプター - V15 バージョンは、OS X Mavericks 10.9 ～ macOS Catalina 10.15.x をサポートします。\n  サポートされている USB WiFi は次のとおりです。\n    • メインチップは Realtek 802.11n および 802.11ac USB Wi-Fi アダプターです。より具体的なモデルについては、作成者の説明を参照してください。';

  @override
  String get autoGen5826 =>
      'AMD ディスクリート グラフィックスの偽造品 (デバイスのプロパティ):\n   1. グラフィックス カードの PCI パスを入力する必要があります。例: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. グラフィックス カードの偽造デバイス ID (16 進数 4 桁) を入力する必要があります。例: 73BF\n   3. グラフィックス カードが偽造された後も、AMD グラフィックス カードに必要な起動パラメータを考慮する必要があります (必要に応じて、[独立したグラフィックス構成] -> [AMD 独立したグラフィックス] -> [確認] に移動できます)。\n   4. このツールには、いくつかのグラフィックス カード デバイス ID が事前に用意されています。そうでない場合は、自分で見つけるか、補足情報について著者に問い合わせてください。';

  @override
  String get autoGen5827 => '確認する';

  @override
  String get autoGen5828 => 'キャンセル';

  @override
  String get autoGen5829 => 'もちろん';
}
