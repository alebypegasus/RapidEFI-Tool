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
}
