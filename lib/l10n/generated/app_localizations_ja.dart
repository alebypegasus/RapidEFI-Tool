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

  @override
  String get initialSupportMacOs => 'ネイティブ対応の初期 macOS バージョン：';

  @override
  String get lastSupportMacOs => 'ネイティブ対応の最新 macOS バージョン：';

  @override
  String get oclpSupportMacOs => 'OCLP パッチ対応 macOS バージョン：';

  @override
  String get cpuInfoTitle => '【CPU 情報】：';

  @override
  String get biosRecommendedEnabled => '【BIOS 推奨設定 - 有効】：';

  @override
  String get biosRecommendedDisabled => '【BIOS 推奨設定 - 無効】：';

  @override
  String get historyExpanderDesc =>
      'RapidEFI で生成された EFI は自動的に履歴にバックアップされます。\n過去に生成した EFI はいつでも再読み込みして調整できます。\n\nこの機能は RapidEFI V3.0.0 以降でサポートされています。';

  @override
  String get gpuPresets => 'プリセット';

  @override
  String get gpuByCpuModel => 'CPU モデル別';

  @override
  String get selectCpuGeneration => '世代を選択';

  @override
  String get selectCpuModel => 'CPU を選択';

  @override
  String get cpuGenerationLabel => 'CPU 世代';

  @override
  String get cpuModelLabel => 'CPU モデル';

  @override
  String get matchingIgpuTip => '該当する場合はチェックし、それ以外はチェックを外したままにしてください';

  @override
  String get selectPropertiesToApply => '適用するプロパティを選択';

  @override
  String get motherboardConfigTitle => 'マザーボードモデル構成：';

  @override
  String get motherboardConfigItems => '適用する構成項目を選択';

  @override
  String get selectModelToConfigure => '（構成するモデルを選択）';

  @override
  String get pleaseSelect => '選択してください';

  @override
  String get selectAllDeselectAll => 'すべて選択 / すべて解除';

  @override
  String get deselectAll => 'すべて解除';

  @override
  String get stuckOnEbFix => '[EB] フリーズ修正（オプション - デフォルト推奨）：';

  @override
  String get renameCurrentEfi => '現在の EFI の名前を変更';

  @override
  String get enterNewName => '新しい名前を入力';

  @override
  String get renameEfiTooltip => 'EFI の名前を変更';

  @override
  String get adminPrivilegesRequired => '管理者権限が必要です';

  @override
  String get enterLoginPassword => 'コンピューターのログインパスワードを入力してください';

  @override
  String get importHardwareMaterials => 'ハードウェア情報をインポート';

  @override
  String get currentBiosSettings => '現在の BIOS 設定';

  @override
  String get colorTheme => 'カラーテーマ';

  @override
  String get noValidHardwareReport => '有効なハードウェアレポートファイルが検出されませんでした';

  @override
  String get viewOnGitHub => 'GitHub で見る';

  @override
  String get downloadNow => '今すぐダウンロード';

  @override
  String get btnConfirm => '確認';

  @override
  String get btnDeleteRecord => 'この記録を削除';

  @override
  String get currentEfiNamePrefix => '現在の EFI 名：';

  @override
  String get close => '閉じる';

  @override
  String get applySelected => '選択項目を適用';

  @override
  String get connectedGpuPrefix => '接続された GPU：';

  @override
  String get requiresSpoofIdPrefix => '偽装 ID が必要：';

  @override
  String get selectPlatform => 'プラットフォーム世代';

  @override
  String get selectVendor => 'ブランド';

  @override
  String get selectModel => 'マザーボードモデル';

  @override
  String get btnImport => 'インポート';

  @override
  String get defaultLabel => 'デフォルト';

  @override
  String get wifiBluetoothDrivers => 'Wi-Fi＆Bluetooth ドライバ：';

  @override
  String get noWifiDriversByDefault => '(デフォルトでは Wi-Fi ドライバは構成されていません)';

  @override
  String get getIntelModifiedOclp => 'Intel 改変版 OCLP を取得';

  @override
  String get forLaptopSystems => '(ノート PC 向け)';

  @override
  String get basicConfig => '基本構成';

  @override
  String get advancedConfig => '詳細設定';

  @override
  String get portCustomization => 'ポートのカスタマイズ';

  @override
  String get displayEdid => 'EDIDを表示する';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'AMD dGPU スプーフ';

  @override
  String get intelWifi => 'インテル Wi-Fi';

  @override
  String get broadcomBrcm => 'ブロードコム (Brcm)';

  @override
  String get atherosWifi => 'アセロス';

  @override
  String get usbWifi => 'USB Wi-Fi';

  @override
  String get bluetoothDrivers => 'Bluetoothドライバー';

  @override
  String get debuggingTab => 'デバッグ';

  @override
  String get amfiSipTab => 'AMFI / SIP';

  @override
  String get igpuFixesTab => 'iGPUの修正';

  @override
  String get dgpuFixesTab => 'dGPU の修正';

  @override
  String get blackScreenFixesTab => '黒い画面の修正';

  @override
  String get above4gTab => '4G デコード以上';

  @override
  String get trackpadFixesTab => 'トラックパッドの修正';

  @override
  String get othersTab => 'その他';

  @override
  String get powerManagementTab => '電源管理';

  @override
  String get sleepHibernationTab => 'スリープ/冬眠';

  @override
  String get storageDiskTab => 'ストレージ/ディスク';

  @override
  String get cpuFixesTab => 'CPUの修正';

  @override
  String get amdPlatformTab => 'AMDプラットフォーム';

  @override
  String get usbFixesTab => 'USBの修正';

  @override
  String get sdCardTab => 'SDカード';

  @override
  String get brandTab => 'ブランド';

  @override
  String get specialMotherboardTab => '特殊マザーボード';

  @override
  String get sipSettingsTab => 'SIP設定';

  @override
  String get renameCpuTab => 'CPUの名前を変更する';

  @override
  String get uiScaleTab => 'UIスケール';

  @override
  String get acpiConfigTab => 'ACPI構成';

  @override
  String get booterConfigTab => 'ブート設定';

  @override
  String get kernelConfigTab => 'カーネル構成';

  @override
  String get uefiConfigTab => 'UEFI構成';

  @override
  String get lookupLayoutId => 'レイアウトIDの検索';

  @override
  String get visitChris1111Repo => 'chris1111 リポジトリにアクセス';

  @override
  String get supportedMacOsVersions => 'サポートされている macOS バージョン:';

  @override
  String get supportedUsbWifiChipsets => 'サポートされている USB Wi-Fi チップセット:';

  @override
  String get selectUtbMap => 'UTBマップを選択';

  @override
  String get selectUtbMapHint => 'USBToolBoxで作成したマッピングされたUTBMap.kextを選択します';

  @override
  String get reprocessEfiSubtitle => '(RapidEFI によって生成された EFI を再処理します)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI は、EFI フォルダー内に configModel ファイルを自動的に出力します。以下のこのファイルをインポートして、EFI 構成をリロードしてカスタマイズします。';

  @override
  String get reprocessEfiVersionNote => 'この機能は、RapidEFI V3.0.0 以降でサポートされています。';

  @override
  String get dropConfigModelHint => 'configModel ファイルをここにドロップするか、クリックして参照します';

  @override
  String get offLabel => 'オフ';

  @override
  String get onLabel => 'の上';

  @override
  String get githubRepository => 'GitHub リポジトリ';

  @override
  String get releasesAndUpdates => 'リリースとアップデート';

  @override
  String get projectDocumentation => 'プロジェクトのドキュメント';

  @override
  String get aboutSupportDetails =>
      'RapidEFI は、Hackintosh および macOS 愛好家向けに構築された、オープンソースの自動 OpenCore EFI ジェネレーター、ACPI/SSDT パッチャー、およびハードウェア分析ツールです。\n\n愛情を持って作成され、維持されています。進行中の開発をサポートするために、GitHub でプロジェクトにスターを付けてフォークしてください。';

  @override
  String get checkApplicableOptions => '(該当するオプションを確認してください)';

  @override
  String get optionalCheckApplicableOptions => '(オプション - 該当するオプションを確認してください)';

  @override
  String get appleAlcUsedByDefault => '(AppleALCドライバーがデフォルトで使用されます)';

  @override
  String get noEthernetDriverByDefault => '(デフォルトではイーサネットドライバーは追加されていません)';

  @override
  String get usbInjectAllByDefault => '(USBInjectAll がデフォルトで使用されます)';

  @override
  String get verboseModeByDefault =>
      '(-v 冗長モードはデフォルトで有効になります。無効にするにはチェックを外します)';

  @override
  String get optionalDriversSubtitle => '(オプションのドライバー - 必要でない限り必要ありません)';

  @override
  String get keepDefaultsSubtitle => '(特定のカスタマイズが必要でない限り、デフォルトのままにしてください)';

  @override
  String get optionalCheckDeviceBrand => 'オプション - デバイスのブランドが一致するかどうかを確認します';

  @override
  String get optionalCheckMotherboardModel =>
      'オプション - マザーボードのモデルが一致するかどうかを確認します';

  @override
  String get optionalConfigureSip => 'オプション - 必要に応じて SIP を構成します (デフォルトでは無効)';

  @override
  String get optionalCustomCpuName => 'オプション - カスタム CPU 名';

  @override
  String get optionalAdjustUiScale => 'オプション - OpenCore ブー​​ト UI スケールを調整します';

  @override
  String get acpiSsdtPatches => 'ACPI - SSDT パッチ';

  @override
  String get acpiPatches => 'ACPI - パッチ';

  @override
  String get kernelPatches => 'カーネル - パッチ';

  @override
  String get powerManagement => '電源管理';

  @override
  String get ssdApfsTrimPolicy => 'NVMe / SATA SSD APFS トリム ポリシー';

  @override
  String get kernelQuirksSubtitle => 'カーネル - 癖 (特定の修正が必要な場合を除き、デフォルト設定を推奨)';

  @override
  String get uefiDriversSubtitle => 'UEFI - ドライバー (特別な必要が生じない限り、デフォルト構成を維持します)';

  @override
  String get uefiOutputSubtitle => 'UEFI - 出力 (デフォルト設定を推奨)';

  @override
  String get method1Title => '方法 1: 名前を「GPRW から XPRW」に変更する (インスタント ウェイク修正)';

  @override
  String get method2Title => '方法 2: 「UPRW から XPRW」の名前を変更する (インスタント ウェイク修正)';

  @override
  String get method3Title => '方法 3: 「RTC 修正」の名前を変更する (RTC 電源オフ/CMOS リセットを修正)';

  @override
  String get method4Title =>
      '方法 4: 「バッテリー修正」の名前を変更する (16 ビットから 8 ビットへのバッテリー パッチをサポート)';

  @override
  String get pciPathLabel => 'dGPU PCI パス:';

  @override
  String get pciPathPlaceholder => 'PCI パスを入力してください';

  @override
  String get spoofedDeviceIdLabel => '偽装されたデバイス ID:';

  @override
  String get spoofedDeviceIdPlaceholder => 'スプーフィングするGPUデバイスを選択してください';

  @override
  String get injectDisplayEdidLabel =>
      '表示 EDID を挿入します (通常は 256 または 512 の 16 進文字):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'ディスプレイ EDID を入力します (通常は 256 または 512 の 16 進数文字、スペースと改行は使用可能)';

  @override
  String get failed => '失敗';

  @override
  String get method1 => '方法 1';

  @override
  String get method2 => '方法 2';

  @override
  String get method3 => '方法 3';

  @override
  String get method4 => '方法 4';

  @override
  String get optionalKextDrivers => 'オプションのKextドライバー';

  @override
  String get optionalKextSubTitle => 'ハードウェアに応じてオプションのkextドライバーを選択してください';

  @override
  String get brandConfigTab => 'ブランド';

  @override
  String get optionalSettings => 'オプション設定';

  @override
  String get optionalSettingsSubTitle => '追加のオプション設定を選択してください';

  @override
  String get optionalCheckMotherboard => '特別なマザーボードオプション';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI は EFI フォルダ内に configModel ファイルを自動的に出力します。\n以下でこのファイルをインポートして、EFI 構成を再ロードおよびカスタマイズします。\n\nこの機能は RapidEFI V3.0.0 以降でサポートされています。';

  @override
  String get releaseToReimportConfigModel => '離して configModel を再インポート';

  @override
  String get invalidConfigFileMessage =>
      '構成ファイルが無効です。有効な configModel ファイルを選択してください。';

  @override
  String get ethernetTitle => 'イーサネットドライバー：';

  @override
  String get usbTitle => 'USBドライバー：';

  @override
  String get ssdtCoreOfficial => '* コア（公式）';

  @override
  String get ssdtRecommendedFixes => '* 推奨（修正）';

  @override
  String get ssdtOptionalEnhancements => '* オプション（拡張）';

  @override
  String get platformDesktop => 'デスクトップ';

  @override
  String get platformLaptop => 'ノートパソコン';

  @override
  String get platformNucMini => 'NUC / ミニPC';

  @override
  String get platformHedtServer => 'HEDT / サーバー';
}
