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
  String get details => '세부 정보';

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
}
