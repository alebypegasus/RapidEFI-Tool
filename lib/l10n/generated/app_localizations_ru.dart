// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - Утилита конфигурации OpenCore EFI';

  @override
  String get navHardware => 'Оборудование';

  @override
  String get navManual => 'Ручная настройка EFI';

  @override
  String get navProcess => 'Обработка EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'История';

  @override
  String get navSettings => 'Настройки';

  @override
  String get navAbout => 'О программе';

  @override
  String get navSponsor => 'Поддержать разработчика';

  @override
  String get btnRefresh => 'Обновить';

  @override
  String get btnImportReport => 'Импорт отчёта';

  @override
  String get btnExportReport => 'Экспорт отчёта';

  @override
  String get btnExportAcpi => 'Экспорт ACPI';

  @override
  String get btnEfiSettings => 'Настройки EFI';

  @override
  String get btnExportEfi => 'Экспорт EFI';

  @override
  String get btnGenerateEfi => 'Сгенерировать EFI';

  @override
  String get btnBrowse => 'Обзор';

  @override
  String get btnChooseFile => 'Выбрать файл';

  @override
  String get btnCancel => 'Отмена';

  @override
  String get btnApply => 'Применить';

  @override
  String get btnSave => 'Сохранить';

  @override
  String get btnClose => 'Закрыть';

  @override
  String get btnCheckUpdates => 'Проверить обновления';

  @override
  String get btnChecking => 'Проверка...';

  @override
  String get btnSelectAll => 'Выбрать всё';

  @override
  String get btnDeselectAll => 'Снять выбор';

  @override
  String get btnCustomSsdt => 'Пользовательский SSDT';

  @override
  String get btnPrebuiltSsdt => 'Готовый SSDT';

  @override
  String get btnDumpAcpi => 'Дамп ACPI';

  @override
  String get btnSelectAcpis => 'Выбрать ACPI';

  @override
  String get btnSelectConfig => 'Выбрать config';

  @override
  String get btnMergeConfig => 'Объединить config';

  @override
  String get btnExecutePatch => 'Применить патч';

  @override
  String get btnOpenFolder => 'Открыть папку';

  @override
  String get hardwareReport => 'Отчёт об оборудовании';

  @override
  String get cpuArchitecture => 'Процессор (CPU)';

  @override
  String get motherboardChipset => 'Материнская плата и чипсет';

  @override
  String get graphicsDevice => 'Видеокарта (GPU)';

  @override
  String get audioCodec => 'Аудиоконтроллер';

  @override
  String get networkController => 'Сетевые адаптеры и Wi-Fi';

  @override
  String get storageDevice => 'Накопители';

  @override
  String get acpiTables => 'Таблицы ACPI';

  @override
  String get compatibilityStatus => 'Совместимость';

  @override
  String get compatible => 'Поддерживается';

  @override
  String get unsupported => 'Не поддерживается';

  @override
  String get requiresPatch => 'Требуется патч';

  @override
  String get details => 'Подробности';

  @override
  String get showDetailedReport => 'Подробный вид';

  @override
  String get platformConfig => 'Конфигурация платформы';

  @override
  String get cpuVendor => 'Производитель CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Форм-фактор';

  @override
  String get desktop => 'ПК (Desktop)';

  @override
  String get laptop => 'Ноутбук';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Сервер';

  @override
  String get processorGen => 'Поколение процессора';

  @override
  String get targetMacOs => 'Целевая версия macOS';

  @override
  String get smbiosModel => 'Целевая модель SMBIOS';

  @override
  String get motherboardSelector => 'Выбор материнской платы';

  @override
  String get brand => 'Бренд';

  @override
  String get model => 'Модель';

  @override
  String get outputDirectory => 'Папка сохранения';

  @override
  String get kextConfiguration => 'Конфигурация кекстов (Kexts)';

  @override
  String get bootArguments => 'Аргументы загрузки (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP включён (00000000)';

  @override
  String get sipDisabled => 'SIP отключён (03080000)';

  @override
  String get processEfiTitle => 'Обработка и пересборка EFI';

  @override
  String get chooseEfiPrompt =>
      'Выберите папку EFI или файл configModel для загрузки настроек';

  @override
  String get configModelFound => 'ConfigModel успешно найден и загружен';

  @override
  String get rebuildEfi => 'Пересобрать EFI';

  @override
  String get ssdtGeneratorTitle => 'Генератор SSDT и патчер ACPI';

  @override
  String get corePatches => 'Основные патчи';

  @override
  String get recommendedPatches => 'Рекомендуемые патчи';

  @override
  String get optionalPatches => 'Дополнительные патчи';

  @override
  String get compilationComplete => 'Компиляция завершена';

  @override
  String get mergeSuccess => 'Успешно внедрено в EFI';

  @override
  String get oclpTitle => 'Интеграция OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Root-патчи';

  @override
  String get graphicsAcceleration => 'Графическое ускорение';

  @override
  String get wirelessFix => 'Патч Wi-Fi и Bluetooth';

  @override
  String get postInstall => 'Шаги после установки';

  @override
  String get tahoeGuideTitle => 'Руководство по совместимости macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Адаптация ядра и звука Tahoe 26';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get appLanguage => 'Язык :';

  @override
  String get followSystem => 'Как в системе';

  @override
  String get themeMode => 'Режим темы :';

  @override
  String get themeColor => 'Цвет темы :';

  @override
  String get appFont => 'Шрифт приложения :';

  @override
  String get efiOptions => 'Параметры EFI :';

  @override
  String get addThemeToEfi => 'Добавить тему загрузки OpenCore в EFI';

  @override
  String get generateConfigModel => 'Создавать файл configModel в папке EFI';

  @override
  String get compressZipEfi => 'Сжимать EFI в ZIP-архив';

  @override
  String get checkForUpdates => 'Проверка обновлений :';

  @override
  String currentVersion(String version) {
    return 'Текущая версия: $version';
  }

  @override
  String get copyrightNotice => 'Авторские права и лицензия';

  @override
  String get exitAppTip => 'Нажмите назад ещё раз для выхода';

  @override
  String get updateAvailable => 'Доступна новая версия';

  @override
  String versionTag(String version) {
    return 'Версия: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Дата релиза: $date';
  }

  @override
  String get noUpdateFound => 'У вас установлена последняя версия';

  @override
  String get efiBuildSuccess => 'EFI успешно создана!';

  @override
  String get efiBuildFailed => 'Не удалось создать EFI';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get soundLayoutId => 'Audio Layout ID (alcid)';

  @override
  String get nvramBootArgs => 'Пользовательские boot-args';

  @override
  String get generateSerial => 'Сгенерировать серийный номер';

  @override
  String get navManualTab => 'Ручная настройка EFI';

  @override
  String get navAutoTab => 'Автоматическая настройка EFI';

  @override
  String get cpuSelection => 'Выбор процессора (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Процессоры Pentium или Celeron требуют спуфинга CPU; пожалуйста, включите это!\nПримечание: встройка (iGPU) Pentium/Celeron обычно не поддерживается!';

  @override
  String get platformSelection => 'Выбор платформы:';

  @override
  String get processorGeneration => 'Поколение процессора:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6 ядер / 12 потоков)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 ядер / 12 потоков) требует специального спуфинга CPU';

  @override
  String get amdCoresTitle => 'Ядра процессора AMD:';

  @override
  String get amdSpecialMb => 'Специальные материнские платы AMD:';

  @override
  String get usePrecastMmio => 'Использовать Precast MMIO';

  @override
  String get useRyzenGpu => 'Включить поддержку графики Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Бренд материнской платы:';

  @override
  String get motherboardModel => 'Модель материнской платы:';

  @override
  String get customMotherboard => 'Пользовательская / Универсальная плата';

  @override
  String get igpuConfig => 'Конфигурация встроенной графики (iGPU):';

  @override
  String get dgpuConfig => 'Конфигурация дискретной графики (dGPU):';

  @override
  String get audioConfig => 'Конфигурация звука:';

  @override
  String get audioCodecFix => 'Аудиокодек и Layout ID';

  @override
  String get fixIrq => 'Исправить конфликты IRQ';

  @override
  String get networkConfig => 'Конфигурация сети и Wi-Fi:';

  @override
  String get laptopDrivers => 'Драйверы для ноутбука:';

  @override
  String get touchpadDriver => 'Драйвер тачпада (I2C / PS2)';

  @override
  String get smbiosSelection => 'Целевая модель SMBIOS:';

  @override
  String get targetMacOsVersion => 'Целевая версия macOS:';

  @override
  String get bootArgsTitle => 'Аргументы загрузки (boot-args):';

  @override
  String get csrActiveConfigTitle => 'Защита целостности системы (SIP):';

  @override
  String get outputEfiTitle => 'Папка сохранения EFI:';

  @override
  String get selectOutputFolder => 'Выбрать папку сохранения';

  @override
  String get clearConfig => 'Очистить конфигурацию';

  @override
  String get importConfigModel => 'Импортировать configModel';

  @override
  String get importingConfigModel => 'Импорт configModel...';

  @override
  String get dragDropConfigModel =>
      'Перетащите файл configModel сюда\nили нажмите для выбора';

  @override
  String get clearAllHistory => 'Очистить всю историю';

  @override
  String get clearingHistory => 'Очистка истории...';

  @override
  String get noHistoryRecords => 'История пуста';

  @override
  String get overview => 'Обзор';

  @override
  String get platformPatches => 'Патчи платформы';

  @override
  String get audioPatches => 'Аудио патчи';

  @override
  String get gpuSpoofing => 'Спуфинг видеокарты';

  @override
  String get disableDevices => 'Отключение устройств';

  @override
  String get brightnessPatches => 'Патчи яркости';

  @override
  String get graphicsPatches => 'Графические патчи';

  @override
  String get wifiPatches => 'Патчи Wi-Fi';

  @override
  String get documentationGuides => 'Документация и руководства';

  @override
  String get aboutSupport => 'О программе и поддержка';

  @override
  String get hardwareTabTitle => 'Конфигурация оборудования';

  @override
  String get acpiFolderTitle => 'Папка ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Загрузка данных...';

  @override
  String get configuringEfiWait => 'Настройка EFI, пожалуйста, подождите...';

  @override
  String get summary => 'Сводка';

  @override
  String get recent => 'Недавние';

  @override
  String get efiConfig => 'Конфиг EFI';

  @override
  String get toolsAndGuides => 'Инструменты и гиды';

  @override
  String get checkUpdates => 'Проверить обновления';

  @override
  String get sponsorDeveloper => 'Поддержать разработчика';

  @override
  String get releaseNotes => 'История версий';

  @override
  String get searchPlaceholder => 'Поиск';

  @override
  String get initialSupportMacOs =>
      'Начальная нативно поддерживаемая версия macOS:';

  @override
  String get lastSupportMacOs =>
      'Последняя нативно поддерживаемая версия macOS:';

  @override
  String get oclpSupportMacOs =>
      'Версии macOS, поддерживаемые через патч OCLP:';

  @override
  String get cpuInfoTitle => '[Информация о процессоре]:';

  @override
  String get biosRecommendedEnabled =>
      '[Рекомендуемые настройки BIOS - Включено]:';

  @override
  String get biosRecommendedDisabled =>
      '[Рекомендуемые настройки BIOS - Отключено]:';

  @override
  String get historyExpanderDesc =>
      'EFI, созданные с помощью RapidEFI, автоматически сохраняются в историю.\nВы можете в любое время загрузить и настроить любой ранее созданный EFI.\n\nЭта функция поддерживается в RapidEFI V3.0.0 и выше.';

  @override
  String get gpuPresets => 'Пресеты';

  @override
  String get gpuByCpuModel => 'По модели процессора';

  @override
  String get selectCpuGeneration => 'Выберите поколение';

  @override
  String get selectCpuModel => 'Выберите процессор';

  @override
  String get cpuGenerationLabel => 'Поколение процессора';

  @override
  String get cpuModelLabel => 'Модель процессора';

  @override
  String get matchingIgpuTip =>
      'Отметьте при совпадении, иначе оставьте неотмеченным';

  @override
  String get selectPropertiesToApply => 'Выберите свойства для применения';

  @override
  String get motherboardConfigTitle => 'Конфигурация модели материнской платы:';

  @override
  String get motherboardConfigItems =>
      'Выберите элементы конфигурации для применения';

  @override
  String get selectModelToConfigure => '(Выберите модель для настройки)';

  @override
  String get pleaseSelect => 'Пожалуйста, выберите';

  @override
  String get selectAllDeselectAll => 'Выбрать / Снять все';

  @override
  String get deselectAll => 'Снять все';

  @override
  String get stuckOnEbFix =>
      'Исправление зависания на [EB] (Необязательно - рекомендуются настройки по умолчанию):';

  @override
  String get renameCurrentEfi => 'Переименовать текущий EFI';

  @override
  String get enterNewName => 'Введите новое имя';

  @override
  String get renameEfiTooltip => 'Переименовать EFI';

  @override
  String get adminPrivilegesRequired => 'Требуются права администратора';

  @override
  String get enterLoginPassword =>
      'Пожалуйста, введите пароль для входа в компьютер';

  @override
  String get importHardwareMaterials => 'Импортировать данные об оборудовании';

  @override
  String get currentBiosSettings => 'Текущие настройки BIOS';

  @override
  String get colorTheme => 'Цветовая тема';

  @override
  String get noValidHardwareReport =>
      'Действительный файл отчета об оборудовании не обнаружен';

  @override
  String get viewOnGitHub => 'Посмотреть на GitHub';

  @override
  String get downloadNow => 'Скачать сейчас';

  @override
  String get btnConfirm => 'Подтвердить';

  @override
  String get btnDeleteRecord => 'Удалить эту запись';

  @override
  String get currentEfiNamePrefix => 'Текущее имя EFI: ';

  @override
  String get close => 'Закрыть';

  @override
  String get applySelected => 'Применить выбранное';

  @override
  String get connectedGpuPrefix => 'Подключенный GPU: ';

  @override
  String get requiresSpoofIdPrefix => 'Требуется Spoof ID: ';

  @override
  String get selectPlatform => 'Поколение платформы';

  @override
  String get selectVendor => 'Бренд';

  @override
  String get selectModel => 'Модель материнской платы';

  @override
  String get btnImport => 'Импортировать';

  @override
  String get defaultLabel => 'По умолчанию';
}
