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
  String get appTitle => 'RapidEFI - OpenCore EFI 構成ツール';

  @override
  String get navHardware => 'ハードウェア';

  @override
  String get navManual => '手動 EFI 構成';

  @override
  String get navProcess => 'EFI 修正';

  @override
  String get navSsdt => 'SSDT 生成';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => '履歴';

  @override
  String get navSettings => '設定';

  @override
  String get navAbout => '情報';

  @override
  String get navSponsor => '開発者を支援';

  @override
  String get btnRefresh => '更新';

  @override
  String get btnImportReport => 'レポートをインポート';

  @override
  String get btnExportReport => 'レポートをエクスポート';

  @override
  String get btnExportAcpi => 'ACPI をエクスポート';

  @override
  String get btnEfiSettings => 'EFI 設定';

  @override
  String get btnExportEfi => 'EFI をエクスポート';

  @override
  String get btnGenerateEfi => 'EFI を生成';

  @override
  String get btnBrowse => '参照';

  @override
  String get btnChooseFile => 'ファイルを選択';

  @override
  String get btnCancel => 'キャンセル';

  @override
  String get btnApply => '適用';

  @override
  String get btnSave => '保存';

  @override
  String get btnClose => '閉じる';

  @override
  String get btnCheckUpdates => 'アップデートを確認';

  @override
  String get btnChecking => '確認中...';

  @override
  String get btnSelectAll => 'すべて選択';

  @override
  String get btnDeselectAll => 'すべて解除';

  @override
  String get btnCustomSsdt => 'カスタム SSDT';

  @override
  String get btnPrebuiltSsdt => 'ビルド済み SSDT';

  @override
  String get btnDumpAcpi => 'ACPI をダンプ';

  @override
  String get btnSelectAcpis => 'ACPI を選択';

  @override
  String get btnSelectConfig => 'config を選択';

  @override
  String get btnMergeConfig => 'config をマージ';

  @override
  String get btnExecutePatch => 'パッチを適用';

  @override
  String get btnOpenFolder => 'フォルダを開く';

  @override
  String get hardwareReport => 'ハードウェア レポート';

  @override
  String get cpuArchitecture => 'プロセッサ (CPU)';

  @override
  String get motherboardChipset => 'マザーボード & チップセット';

  @override
  String get graphicsDevice => 'グラフィックス (GPU)';

  @override
  String get audioCodec => 'オーディオ コントローラ';

  @override
  String get networkController => 'ネットワーク & Wi-Fi';

  @override
  String get storageDevice => 'ストレージ デバイス';

  @override
  String get acpiTables => 'ACPI テーブル';

  @override
  String get compatibilityStatus => '互換性';

  @override
  String get compatible => '対応';

  @override
  String get unsupported => '非対応';

  @override
  String get requiresPatch => 'パッチが必要';

  @override
  String get details => '詳細';

  @override
  String get showDetailedReport => '詳細表示';

  @override
  String get platformConfig => 'プラットフォーム構成';

  @override
  String get cpuVendor => 'CPU ベンダー';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'フォームファクタ';

  @override
  String get desktop => 'デスクトップ';

  @override
  String get laptop => 'ノートPC';

  @override
  String get nucMiniPc => 'NUC / ミニPC';

  @override
  String get hedtServer => 'HEDT / サーバー';

  @override
  String get processorGen => 'プロセッサ世代';

  @override
  String get targetMacOs => '対象 macOS バージョン';

  @override
  String get smbiosModel => '対象 SMBIOS モデル';

  @override
  String get motherboardSelector => 'マザーボードの選択';

  @override
  String get brand => 'ブランド';

  @override
  String get model => 'モデル';

  @override
  String get outputDirectory => '出力ディレクトリ';

  @override
  String get kextConfiguration => 'Kext 構成';

  @override
  String get bootArguments => 'ブート引数 (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP 有効 (00000000)';

  @override
  String get sipDisabled => 'SIP 無効 (03080000)';

  @override
  String get processEfiTitle => 'EFI の修正と再構築';

  @override
  String get chooseEfiPrompt => 'EFI フォルダまたは configModel ファイルを選択して構成を読み込みます';

  @override
  String get configModelFound => 'ConfigModel が検出され正常に読み込まれました';

  @override
  String get rebuildEfi => 'EFI を再構築';

  @override
  String get ssdtGeneratorTitle => 'SSDT ジェネレーター & ACPI パッチャー';

  @override
  String get corePatches => 'コア パッチ';

  @override
  String get recommendedPatches => '推奨パッチ';

  @override
  String get optionalPatches => 'オプション パッチ';

  @override
  String get compilationComplete => 'コンパイル完了';

  @override
  String get mergeSuccess => 'EFI に正常にマージされました';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher 統合';

  @override
  String get rootPatching => 'Root パッチ適用';

  @override
  String get graphicsAcceleration => 'グラフィックス アクセラレーション';

  @override
  String get wirelessFix => 'Wi-Fi & Bluetooth 修正';

  @override
  String get postInstall => 'インストール後の手順';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 互換性ガイド';

  @override
  String get tahoeCompatibility => 'Tahoe 26 カーネルとオーディオ適応';

  @override
  String get settingsTitle => '設定';

  @override
  String get appLanguage => '言語 :';

  @override
  String get followSystem => 'システムに従う';

  @override
  String get themeMode => 'テーマ モード :';

  @override
  String get themeColor => 'テーマ カラー :';

  @override
  String get appFont => 'アプリのフォント :';

  @override
  String get efiOptions => 'EFI オプション :';

  @override
  String get addThemeToEfi => 'OpenCore ブート テーマを EFI に追加';

  @override
  String get generateConfigModel => 'EFI フォルダに configModel ファイルを生成';

  @override
  String get compressZipEfi => 'EFI を ZIP ファイルに圧縮';

  @override
  String get checkForUpdates => 'アップデートを確認 :';

  @override
  String currentVersion(String version) {
    return '現在のバージョン: $version';
  }

  @override
  String get copyrightNotice => '著作権とライセンス';

  @override
  String get exitAppTip => 'もう一度戻るを押して終了';

  @override
  String get updateAvailable => '新しいバージョンが利用可能です';

  @override
  String versionTag(String version) {
    return 'バージョン: $version';
  }

  @override
  String releaseDate(String date) {
    return 'リリース日: $date';
  }

  @override
  String get noUpdateFound => '最新バージョンを使用しています';

  @override
  String get efiBuildSuccess => 'EFI の生成に成功しました！';

  @override
  String get efiBuildFailed => 'EFI の生成に失敗しました';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get soundLayoutId => 'オーディオ Layout ID (alcid)';

  @override
  String get nvramBootArgs => 'カスタム boot-args';

  @override
  String get generateSerial => 'シリアルを生成';

  @override
  String get navManualTab => '手動 EFI 構成';

  @override
  String get navAutoTab => '自動 EFI 構成';

  @override
  String get cpuSelection => 'プロセッサ (CPU) の選択：';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'PentiumまたはCeleronプロセッサはCPUスプーフィングが必要です。有効にしてください！\n注：Pentium/Celeronの内蔵GPUは一般的に非対応です！';

  @override
  String get platformSelection => 'プラットフォームの選択：';

  @override
  String get processorGeneration => 'プロセッサ世代：';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6コア/12スレッド)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6コア/12スレッド) には特定のCPUスプーフィングが必要です';

  @override
  String get amdCoresTitle => 'AMD CPU コア数：';

  @override
  String get amdSpecialMb => 'AMD 特殊マザーボード：';

  @override
  String get usePrecastMmio => 'Precast MMIO を使用';

  @override
  String get useRyzenGpu => 'Ryzen 内蔵グラフィックスを有効化 (NootedRed)';

  @override
  String get motherboardBrand => 'マザーボードのブランド：';

  @override
  String get motherboardModel => 'マザーボードのモデル：';

  @override
  String get customMotherboard => 'カスタム / 汎用マザーボード';

  @override
  String get igpuConfig => '内蔵グラフィックス構成 (iGPU)：';

  @override
  String get dgpuConfig => '独立グラフィックス構成 (dGPU)：';

  @override
  String get audioConfig => 'オーディオ構成：';

  @override
  String get audioCodecFix => 'オーディオコーデックと Layout ID';

  @override
  String get fixIrq => 'IRQ 競合の修正';

  @override
  String get networkConfig => 'ネットワーク & Wi-Fi 構成：';

  @override
  String get laptopDrivers => 'ノートPC用ドライバ：';

  @override
  String get touchpadDriver => 'タッチパッドドライバ (I2C / PS2)';

  @override
  String get smbiosSelection => '対象 SMBIOS モデル：';

  @override
  String get targetMacOsVersion => '対象 macOS バージョン：';

  @override
  String get bootArgsTitle => 'ブート引数 (boot-args)：';

  @override
  String get csrActiveConfigTitle => 'システム整合性保護 (SIP)：';

  @override
  String get outputEfiTitle => 'EFI 出力フォルダ：';

  @override
  String get selectOutputFolder => '出力フォルダを選択';

  @override
  String get clearConfig => '構成をクリア';

  @override
  String get importConfigModel => 'configModel をインポート';

  @override
  String get importingConfigModel => 'configModel をインポート中...';

  @override
  String get dragDropConfigModel => 'ここに configModel ファイルをドロップ\nまたはクリックして参照';

  @override
  String get clearAllHistory => 'すべての履歴を消去';

  @override
  String get clearingHistory => '履歴を消去中...';

  @override
  String get noHistoryRecords => '履歴レコードはまだありません';

  @override
  String get overview => '概要';

  @override
  String get platformPatches => 'プラットフォームパッチ';

  @override
  String get audioPatches => 'オーディオパッチ';

  @override
  String get gpuSpoofing => 'GPU スプーフィング';

  @override
  String get disableDevices => 'デバイスの無効化';

  @override
  String get brightnessPatches => '輝度パッチ';

  @override
  String get graphicsPatches => 'グラフィックスパッチ';

  @override
  String get wifiPatches => 'Wi-Fi パッチ';

  @override
  String get documentationGuides => 'ドキュメントとガイド';

  @override
  String get aboutSupport => '情報とサポート';

  @override
  String get hardwareTabTitle => 'ハードウェア構成';

  @override
  String get acpiFolderTitle => 'ACPI フォルダ';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'データを読み込み中...';

  @override
  String get configuringEfiWait => 'EFI を構成中、しばらくお待ちください...';

  @override
  String get summary => '概要';

  @override
  String get recent => '履歴';

  @override
  String get efiConfig => 'EFI 構成';

  @override
  String get toolsAndGuides => 'ツールとガイド';

  @override
  String get checkUpdates => 'アップデートを確認';

  @override
  String get sponsorDeveloper => '開発者を支援';

  @override
  String get releaseNotes => 'リリースノート';

  @override
  String get searchPlaceholder => '検索';
}
