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

  @override
  String get wifiBluetoothDrivers => 'Драйверы Wi-Fi и Bluetooth:';

  @override
  String get noWifiDriversByDefault =>
      '(По умолчанию драйверы Wi-Fi не настроены)';

  @override
  String get getIntelModifiedOclp => 'Получить модифицированный OCLP для Intel';

  @override
  String get forLaptopSystems => '(Для ноутбуков)';

  @override
  String get basicConfig => 'Базовая конфигурация';

  @override
  String get advancedConfig => 'Расширенная конфигурация';

  @override
  String get portCustomization => 'Настройка порта';

  @override
  String get displayEdid => 'Отобразить EDID';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'Подделка AMD dGPU';

  @override
  String get intelWifi => 'Интел Wi-Fi';

  @override
  String get broadcomBrcm => 'Бродком (Брцм)';

  @override
  String get atherosWifi => 'Атерос';

  @override
  String get usbWifi => 'USB Wi-Fi';

  @override
  String get bluetoothDrivers => 'Драйверы Bluetooth';

  @override
  String get debuggingTab => 'Отладка';

  @override
  String get amfiSipTab => 'АМФИ/СИП';

  @override
  String get igpuFixesTab => 'Исправления iGPU';

  @override
  String get dgpuFixesTab => 'Исправления dGPU';

  @override
  String get blackScreenFixesTab => 'Исправления черного экрана';

  @override
  String get above4gTab => 'Декодирование выше 4G';

  @override
  String get trackpadFixesTab => 'Исправления трекпада';

  @override
  String get othersTab => 'Другие';

  @override
  String get powerManagementTab => 'Управление питанием';

  @override
  String get sleepHibernationTab => 'Сон/Гибернация';

  @override
  String get storageDiskTab => 'Хранилище/Диск';

  @override
  String get cpuFixesTab => 'Исправления процессора';

  @override
  String get amdPlatformTab => 'Платформа AMD';

  @override
  String get usbFixesTab => 'USB-фиксы';

  @override
  String get sdCardTab => 'SD-карта';

  @override
  String get brandTab => 'Бренд';

  @override
  String get specialMotherboardTab => 'Специальная материнская плата';

  @override
  String get sipSettingsTab => 'SIP-настройки';

  @override
  String get renameCpuTab => 'Переименовать процессор';

  @override
  String get uiScaleTab => 'Масштаб пользовательского интерфейса';

  @override
  String get acpiConfigTab => 'Конфигурация ACPI';

  @override
  String get booterConfigTab => 'Конфигурация загрузчика';

  @override
  String get kernelConfigTab => 'Конфигурация ядра';

  @override
  String get uefiConfigTab => 'Конфигурация UEFI';

  @override
  String get lookupLayoutId => 'Идентификатор макета поиска';

  @override
  String get visitChris1111Repo => 'Посетите репозиторий chris1111';

  @override
  String get supportedMacOsVersions => 'Поддерживаемые версии MacOS:';

  @override
  String get supportedUsbWifiChipsets => 'Поддерживаемые чипсеты USB Wi-Fi:';

  @override
  String get selectUtbMap => 'Выберите UTBMap';

  @override
  String get selectUtbMapHint =>
      'Выберите сопоставленный UTBMap.kext, созданный с помощью USBToolBox.';

  @override
  String get reprocessEfiSubtitle =>
      '(Повторно обработайте EFI, созданный RapidEFI)';

  @override
  String get reprocessEfiDetails =>
      'RapidEFI автоматически выводит файл configModel в папке EFI. Импортируйте этот файл ниже, чтобы перезагрузить и настроить конфигурацию EFI.';

  @override
  String get reprocessEfiVersionNote =>
      'Эта функция поддерживается в RapidEFI V3.0.0 и выше.';

  @override
  String get dropConfigModelHint =>
      'Перетащите сюда файл configModel или нажмите, чтобы просмотреть.';

  @override
  String get offLabel => 'Выключенный';

  @override
  String get onLabel => 'На';

  @override
  String get githubRepository => 'Репозиторий GitHub';

  @override
  String get releasesAndUpdates => 'Релизы и обновления';

  @override
  String get projectDocumentation => 'Проектная документация';

  @override
  String get aboutSupportDetails =>
      'RapidEFI — это автоматизированный генератор EFI OpenCore с открытым исходным кодом, средство исправления ACPI/SSDT и инструмент анализа оборудования, созданный для энтузиастов Hackintosh и macOS.\n\nСоздано и поддерживается с любовью. Поставьте звездочку и создайте форк проекта на GitHub, чтобы поддержать текущую разработку!';

  @override
  String get checkApplicableOptions => '(Отметьте подходящие варианты)';

  @override
  String get optionalCheckApplicableOptions =>
      '(Необязательно — отметьте применимые варианты)';

  @override
  String get appleAlcUsedByDefault =>
      '(Драйвер AppleALC используется по умолчанию)';

  @override
  String get noEthernetDriverByDefault =>
      '(Драйвер Ethernet не добавлен по умолчанию)';

  @override
  String get usbInjectAllByDefault =>
      '(USBInjectAll используется по умолчанию)';

  @override
  String get verboseModeByDefault =>
      '(-v подробный режим включен по умолчанию; снимите флажок, чтобы отключить)';

  @override
  String get optionalDriversSubtitle =>
      '(Дополнительные драйверы — не нужны, если не требуются)';

  @override
  String get keepDefaultsSubtitle =>
      '(Сохраняйте значения по умолчанию, если не требуется специальная настройка)';

  @override
  String get optionalCheckDeviceBrand =>
      'Необязательно: проверьте, соответствует ли марка вашего устройства';

  @override
  String get optionalCheckMotherboardModel =>
      'Необязательно — проверьте, соответствует ли модель материнской платы';

  @override
  String get optionalConfigureSip =>
      'Необязательно — настройте SIP по мере необходимости (по умолчанию отключено)';

  @override
  String get optionalCustomCpuName => 'Необязательно — пользовательское имя ЦП';

  @override
  String get optionalAdjustUiScale =>
      'Необязательно: отрегулируйте масштаб пользовательского интерфейса загрузки OpenCore.';

  @override
  String get acpiSsdtPatches => 'ACPI — патчи SSDT';

  @override
  String get acpiPatches => 'ACPI — Патчи';

  @override
  String get kernelPatches => 'Ядро — Патчи';

  @override
  String get powerManagement => 'Управление питанием';

  @override
  String get ssdApfsTrimPolicy => 'Политика обрезки APFS для NVMe/SATA SSD';

  @override
  String get kernelQuirksSubtitle =>
      'Ядро — особенности (рекомендуются настройки по умолчанию, если не требуются специальные исправления)';

  @override
  String get uefiDriversSubtitle =>
      'UEFI — Драйверы (сохраняйте конфигурации по умолчанию, если не возникнут особые потребности)';

  @override
  String get uefiOutputSubtitle =>
      'UEFI — вывод (рекомендуются настройки по умолчанию)';

  @override
  String get method1Title =>
      'Способ 1: переименуйте «GPRW в XPRW» (исправление мгновенного пробуждения)';

  @override
  String get method2Title =>
      'Способ 2. Переименуйте «UPRW в XPRW» (исправление мгновенного пробуждения)';

  @override
  String get method3Title =>
      'Способ 3: переименовать «RTC Fix» (исправить выключение RTC/сброс CMOS)';

  @override
  String get method4Title =>
      'Способ 4: переименуйте «Battery Fix» (поддержка 16-битных и 8-битных патчей батареи)';

  @override
  String get pciPathLabel => 'Путь PCI dGPU:';

  @override
  String get pciPathPlaceholder => 'Введите путь PCI';

  @override
  String get spoofedDeviceIdLabel => 'Поддельный идентификатор устройства:';

  @override
  String get spoofedDeviceIdPlaceholder =>
      'Выберите устройство графического процессора для подделки';

  @override
  String get injectDisplayEdidLabel =>
      'Вставить EDID дисплея (обычно 256 или 512 шестнадцатеричных символов):';

  @override
  String get injectDisplayEdidPlaceholder =>
      'Введите отображаемый EDID (обычно 256 или 512 шестнадцатеричных символов; допускаются пробелы и переводы строк).';

  @override
  String get failed => 'Не удалось';

  @override
  String get method1 => 'Метод 1';

  @override
  String get method2 => 'Метод 2';

  @override
  String get method3 => 'Метод 3';

  @override
  String get method4 => 'Метод 4';

  @override
  String get optionalKextDrivers => 'Дополнительные драйверы Kext';

  @override
  String get optionalKextSubTitle =>
      'Выберите дополнительные драйверы kext в зависимости от вашего оборудования';

  @override
  String get brandConfigTab => 'Бренд';

  @override
  String get optionalSettings => 'Дополнительные настройки';

  @override
  String get optionalSettingsSubTitle =>
      'Выберите дополнительные опциональные конфигурации';

  @override
  String get optionalCheckMotherboard => 'Особые параметры материнской платы';

  @override
  String get processEfiExpanderTip =>
      'RapidEFI автоматически создает файл configModel внутри папки EFI.\nИмпортируйте этот файл ниже, чтобы перезагрузить и настроить конфигурацию EFI.\n\nЭта функция поддерживается в RapidEFI V3.0.0 и выше.';

  @override
  String get releaseToReimportConfigModel =>
      'Отпустите, чтобы повторно импортировать configModel';

  @override
  String get invalidConfigFileMessage =>
      'Неверный файл конфигурации. Пожалуйста, выберите действительный файл configModel.';

  @override
  String get ethernetTitle => 'Драйверы Ethernet:';

  @override
  String get usbTitle => 'Драйверы USB:';

  @override
  String get ssdtCoreOfficial => '* Основной (Официальный)';

  @override
  String get ssdtRecommendedFixes => '* Рекомендуемые (Исправления)';

  @override
  String get ssdtOptionalEnhancements => '* Дополнительно (Улучшения)';

  @override
  String get platformDesktop => 'Настольный ПК';

  @override
  String get platformLaptop => 'Ноутбук';

  @override
  String get platformNucMini => 'NUC / Мини-ПК';

  @override
  String get platformHedtServer => 'HEDT / Сервер';
}
