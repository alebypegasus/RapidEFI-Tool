// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - OpenCore EFI 설정 도구';

  @override
  String get navHardware => '하드웨어';

  @override
  String get navManual => '수동 EFI 설정';

  @override
  String get navProcess => 'EFI 수정';

  @override
  String get navSsdt => 'SSDT 생성';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => '기록';

  @override
  String get navSettings => '설정';

  @override
  String get navAbout => '정보';

  @override
  String get navSponsor => '개발자 후원';

  @override
  String get btnRefresh => '새로고침';

  @override
  String get btnImportReport => '보고서 가져오기';

  @override
  String get btnExportReport => '보고서 내보내기';

  @override
  String get btnExportAcpi => 'ACPI 내보내기';

  @override
  String get btnEfiSettings => 'EFI 설정';

  @override
  String get btnExportEfi => 'EFI 내보내기';

  @override
  String get btnGenerateEfi => 'EFI 생성';

  @override
  String get btnBrowse => '찾아보기';

  @override
  String get btnChooseFile => '파일 선택';

  @override
  String get btnCancel => '취소';

  @override
  String get btnApply => '적용';

  @override
  String get btnSave => '저장';

  @override
  String get btnClose => '닫기';

  @override
  String get btnCheckUpdates => '업데이트 확인';

  @override
  String get btnChecking => '확인 중...';

  @override
  String get btnSelectAll => '모두 선택';

  @override
  String get btnDeselectAll => '모두 선택 해제';

  @override
  String get btnCustomSsdt => '사용자 지정 SSDT';

  @override
  String get btnPrebuiltSsdt => '사전 빌드된 SSDT';

  @override
  String get btnDumpAcpi => 'ACPI 덤프';

  @override
  String get btnSelectAcpis => 'ACPI 선택';

  @override
  String get btnSelectConfig => 'config 선택';

  @override
  String get btnMergeConfig => 'config 병합';

  @override
  String get btnExecutePatch => '패치 적용';

  @override
  String get btnOpenFolder => '폴더 열기';

  @override
  String get hardwareReport => '하드웨어 보고서';

  @override
  String get cpuArchitecture => '프로세서 (CPU)';

  @override
  String get motherboardChipset => '메인보드 및 칩셋';

  @override
  String get graphicsDevice => '그래픽 (GPU)';

  @override
  String get audioCodec => '오디오 컨트롤러';

  @override
  String get networkController => '네트워크 및 Wi-Fi';

  @override
  String get storageDevice => '저장 장치';

  @override
  String get acpiTables => 'ACPI 테이블';

  @override
  String get compatibilityStatus => '호환성';

  @override
  String get compatible => '지원됨';

  @override
  String get unsupported => '지원되지 않음';

  @override
  String get requiresPatch => '패치 필요';

  @override
  String get details => '세부정보';

  @override
  String get showDetailedReport => '자세히 보기';

  @override
  String get platformConfig => '플랫폼 구성';

  @override
  String get cpuVendor => 'CPU 제조사';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => '폼 팩터';

  @override
  String get desktop => '데스크톱';

  @override
  String get laptop => '노트북';

  @override
  String get nucMiniPc => 'NUC / 미니 PC';

  @override
  String get hedtServer => 'HEDT / 서버';

  @override
  String get processorGen => '프로세서 세대';

  @override
  String get targetMacOs => '대상 macOS 버전';

  @override
  String get smbiosModel => '대상 SMBIOS 모델';

  @override
  String get motherboardSelector => '메인보드 선택';

  @override
  String get brand => '브랜드';

  @override
  String get model => '모델';

  @override
  String get outputDirectory => '출력 디렉토리';

  @override
  String get kextConfiguration => 'Kext 구성';

  @override
  String get bootArguments => '부팅 인수 (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP 활성화 (00000000)';

  @override
  String get sipDisabled => 'SIP 비활성화 (03080000)';

  @override
  String get processEfiTitle => 'EFI 수정 및 재구축';

  @override
  String get chooseEfiPrompt => '구성을 로드하려면 EFI 폴더 또는 configModel 파일을 선택하세요';

  @override
  String get configModelFound => 'ConfigModel을 감지하고 성공적으로 로드했습니다';

  @override
  String get rebuildEfi => 'EFI 재구축';

  @override
  String get ssdtGeneratorTitle => 'SSDT 생성기 및 ACPI 패처';

  @override
  String get corePatches => '핵심 패치';

  @override
  String get recommendedPatches => '권장 패치';

  @override
  String get optionalPatches => '선택 패치';

  @override
  String get compilationComplete => '컴파일 완료';

  @override
  String get mergeSuccess => 'EFI에 성공적으로 병합되었습니다';

  @override
  String get oclpTitle => 'OpenCore Legacy Patcher 통합';

  @override
  String get rootPatching => '루트 패치';

  @override
  String get graphicsAcceleration => '그래픽 가속';

  @override
  String get wirelessFix => 'Wi-Fi 및 Bluetooth 수정';

  @override
  String get postInstall => '설치 후 단계';

  @override
  String get tahoeGuideTitle => 'macOS Tahoe 26 호환성 가이드';

  @override
  String get tahoeCompatibility => 'Tahoe 26 커널 및 오디오 적응';

  @override
  String get settingsTitle => '설정';

  @override
  String get appLanguage => '언어 :';

  @override
  String get followSystem => '시스템 설정 따름';

  @override
  String get themeMode => '테마 모드 :';

  @override
  String get themeColor => '테마 색상 :';

  @override
  String get appFont => '앱 글꼴 :';

  @override
  String get efiOptions => 'EFI 옵션 :';

  @override
  String get addThemeToEfi => 'EFI에 OpenCore 부팅 테마 추가';

  @override
  String get generateConfigModel => 'EFI 폴더에 configModel 파일 생성';

  @override
  String get compressZipEfi => 'EFI를 ZIP 파일로 압축';

  @override
  String get checkForUpdates => '업데이트 확인 :';

  @override
  String currentVersion(String version) {
    return '현재 버전: $version';
  }

  @override
  String get copyrightNotice => '저작권 및 라이선스';

  @override
  String get exitAppTip => '종료하려면 뒤로 가기를 한 번 더 누르세요';

  @override
  String get updateAvailable => '새 버전 사용 가능';

  @override
  String versionTag(String version) {
    return '버전: $version';
  }

  @override
  String releaseDate(String date) {
    return '출시일: $date';
  }

  @override
  String get noUpdateFound => '최신 버전을 사용 중입니다';

  @override
  String get efiBuildSuccess => 'EFI가 성공적으로 생성되었습니다!';

  @override
  String get efiBuildFailed => 'EFI 생성 실패';

  @override
  String get copiedToClipboard => '클립보드에 복사됨';

  @override
  String get soundLayoutId => '오디오 Layout ID (alcid)';

  @override
  String get nvramBootArgs => '사용자 지정 boot-args';

  @override
  String get generateSerial => '시리얼 생성';

  @override
  String get navManualTab => '수동 EFI 구성';

  @override
  String get navAutoTab => '자동 EFI 구성';

  @override
  String get cpuSelection => '프로세서 (CPU) 선택:';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      '펜티엄 또는 셀러론 프로세서는 CPU 스푸핑이 필요합니다. 활성화하세요!\n참고: 펜티엄/셀러론 iGPU는 일반적으로 지원되지 않습니다!';

  @override
  String get platformSelection => '플랫폼 유형 선택:';

  @override
  String get processorGeneration => '프로세서 세대:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6코어/12스레드)';

  @override
  String get cometLakeU62Tip => 'Comet Lake U62 (6코어/12스레드)는 특정 CPU 스푸핑이 필요합니다';

  @override
  String get amdCoresTitle => 'AMD CPU 코어 수:';

  @override
  String get amdSpecialMb => 'AMD 특수 메인보드:';

  @override
  String get usePrecastMmio => 'Precast MMIO 사용';

  @override
  String get useRyzenGpu => 'Ryzen 내장 그래픽 활성화 (NootedRed)';

  @override
  String get motherboardBrand => '메인보드 브랜드:';

  @override
  String get motherboardModel => '메인보드 모델:';

  @override
  String get customMotherboard => '사용자 지정 / 범용 메인보드';

  @override
  String get igpuConfig => '내장 그래픽 구성 (iGPU):';

  @override
  String get dgpuConfig => '외장 그래픽 구성 (dGPU):';

  @override
  String get audioConfig => '오디오 구성:';

  @override
  String get audioCodecFix => '오디오 코덱 및 Layout ID';

  @override
  String get fixIrq => 'IRQ 충돌 수정';

  @override
  String get networkConfig => '네트워크 및 Wi-Fi 구성:';

  @override
  String get laptopDrivers => '노트북 드라이버:';

  @override
  String get touchpadDriver => '터치패드 드라이버 (I2C / PS2)';

  @override
  String get smbiosSelection => '대상 SMBIOS 모델:';

  @override
  String get targetMacOsVersion => '대상 macOS 버전:';

  @override
  String get bootArgsTitle => '부팅 인수 (boot-args):';

  @override
  String get csrActiveConfigTitle => '시스템 무결성 보호 (SIP):';

  @override
  String get outputEfiTitle => 'EFI 출력 폴더:';

  @override
  String get selectOutputFolder => '출력 폴더 선택';

  @override
  String get clearConfig => '구성 초기화';

  @override
  String get importConfigModel => 'configModel 가져오기';

  @override
  String get importingConfigModel => 'configModel 가져오는 중...';

  @override
  String get dragDropConfigModel =>
      '여기에 configModel 파일을 드래그 앤 드롭\n또는 클릭하여 찾아보기';

  @override
  String get clearAllHistory => '모든 기록 지우기';

  @override
  String get clearingHistory => '기록 지우는 중...';

  @override
  String get noHistoryRecords => '기록이 없습니다';

  @override
  String get overview => '개요';

  @override
  String get platformPatches => '플랫폼 패치';

  @override
  String get audioPatches => '오디오 패치';

  @override
  String get gpuSpoofing => 'GPU 스푸핑';

  @override
  String get disableDevices => '장치 비활성화';

  @override
  String get brightnessPatches => '밝기 패치';

  @override
  String get graphicsPatches => '그래픽 패치';

  @override
  String get wifiPatches => 'Wi-Fi 패치';

  @override
  String get documentationGuides => '문서 및 가이드';

  @override
  String get aboutSupport => '정보 및 지원';

  @override
  String get hardwareTabTitle => '하드웨어 구성';

  @override
  String get acpiFolderTitle => 'ACPI 폴더';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => '데이터 로드 중...';

  @override
  String get configuringEfiWait => 'EFI 구성 중, 잠시 기다려 주세요...';

  @override
  String get summary => '요약';

  @override
  String get recent => '최근';

  @override
  String get efiConfig => 'EFI 구성';

  @override
  String get toolsAndGuides => '도구 및 가이드';

  @override
  String get checkUpdates => '업데이트 확인';

  @override
  String get sponsorDeveloper => '개발자 후원';

  @override
  String get releaseNotes => '릴리스 노트';

  @override
  String get searchPlaceholder => '검색';

  @override
  String get initialSupportMacOs => '초기 기본 지원 macOS 버전:';

  @override
  String get lastSupportMacOs => '최신 기본 지원 macOS 버전:';

  @override
  String get oclpSupportMacOs => 'OCLP 패치 지원 macOS 버전:';

  @override
  String get cpuInfoTitle => '[CPU 정보]:';

  @override
  String get biosRecommendedEnabled => '[BIOS 권장 설정 - 활성화됨]:';

  @override
  String get biosRecommendedDisabled => '[BIOS 권장 설정 - 비활성화됨]:';

  @override
  String get historyExpanderDesc =>
      'RapidEFI로 생성된 EFI는 기록에 자동으로 백업됩니다.\n이전에 생성된 EFI를 언제든지 다시 로드하고 조정할 수 있습니다.\n\n이 기능은 RapidEFI V3.0.0 이상에서 지원됩니다.';

  @override
  String get gpuPresets => '사전 설정';

  @override
  String get gpuByCpuModel => 'CPU 모델별';

  @override
  String get selectCpuGeneration => '세대 선택';

  @override
  String get selectCpuModel => 'CPU 선택';

  @override
  String get cpuGenerationLabel => 'CPU 세대';

  @override
  String get cpuModelLabel => 'CPU 모델';

  @override
  String get matchingIgpuTip => '일치하는 경우 선택하고, 그렇지 않으면 선택 취소 상태로 둡니다';

  @override
  String get selectPropertiesToApply => '적용할 속성 선택';

  @override
  String get motherboardConfigTitle => '메인보드 모델 구성:';

  @override
  String get motherboardConfigItems => '적용할 구성 항목 선택';

  @override
  String get selectModelToConfigure => '(구성할 모델 선택)';

  @override
  String get pleaseSelect => '선택하세요';

  @override
  String get selectAllDeselectAll => '모두 선택 / 모두 선택 취소';

  @override
  String get deselectAll => '모두 선택 취소';

  @override
  String get stuckOnEbFix => '[EB] 멈춤 수정 (선택 사항 - 기본값 권장):';

  @override
  String get renameCurrentEfi => '현재 EFI 이름 변경';

  @override
  String get enterNewName => '새 이름 입력';

  @override
  String get renameEfiTooltip => 'EFI 이름 변경';

  @override
  String get adminPrivilegesRequired => '관리자 권한 필요';

  @override
  String get enterLoginPassword => '컴퓨터 로그인 비밀번호를 입력하세요';

  @override
  String get importHardwareMaterials => '하드웨어 자료 가져오기';

  @override
  String get currentBiosSettings => '현재 BIOS 설정';

  @override
  String get colorTheme => '색상 테마';

  @override
  String get noValidHardwareReport => '유효한 하드웨어 보고서 파일이 감지되지 않았습니다';

  @override
  String get viewOnGitHub => 'GitHub에서 보기';

  @override
  String get downloadNow => '지금 다운로드';

  @override
  String get btnConfirm => '확인';

  @override
  String get btnDeleteRecord => '이 기록 삭제';

  @override
  String get currentEfiNamePrefix => '현재 EFI 이름: ';

  @override
  String get close => '닫기';

  @override
  String get applySelected => '선택 항목 적용';

  @override
  String get connectedGpuPrefix => '연결된 GPU: ';

  @override
  String get requiresSpoofIdPrefix => '스푸프 ID 필요: ';

  @override
  String get selectPlatform => '플랫폼 세대';

  @override
  String get selectVendor => '브랜드';

  @override
  String get selectModel => '메인보드 모델';

  @override
  String get btnImport => '가져오기';

  @override
  String get defaultLabel => '기본값';
}
