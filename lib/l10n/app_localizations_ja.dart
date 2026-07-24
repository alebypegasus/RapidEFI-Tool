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
}
