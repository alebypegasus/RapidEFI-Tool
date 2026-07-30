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
  String get recent => 'Недавний';

  @override
  String get efiRelated => 'Связанные с EFI';

  @override
  String get toolsAndGuides => 'Инструменты и руководства';

  @override
  String get navHistory => 'История';

  @override
  String get navConfigureEFI => 'Настроить EFI';

  @override
  String get navProcessEFI => 'Процесс EFI';

  @override
  String get navCustomSSDT => 'Пользовательский SSDT';

  @override
  String get navOCLPPatch => 'Патч OCLP-X';

  @override
  String get navTahoeGuide => 'macOS Тахо 26';

  @override
  String get navSettings => 'Настройки';

  @override
  String get navSponsor => 'Спонсор Разработчик';

  @override
  String get searchPlaceholder => 'Поиск';

  @override
  String get darkMode => 'Темный режим';

  @override
  String get clickAgainToExit => 'Нажмите еще раз, чтобы выйти';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'Текущая версия OpenCore: $version';
  }

  @override
  String get copyrightTitle => 'Заявление об авторских правах';

  @override
  String get copyrightText =>
      'Авторские права (C) 2024, JeoJay\n\nЛицензия:\nРазрешено для индивидуального или корпоративного использования при следующих условиях:\n\n1. Некоммерческое использование:\nЭто программное обеспечение полностью бесплатное и с открытым исходным кодом, предназначено исключительно для некоммерческого использования. Продажа данного программного обеспечения запрещена.\n\n2. Атрибуция:\nЛюбая форма переиздания, цитирования или использования на сторонних веб-сайтах должна явно указывать источник и включать следующую информацию:\nРазработано JeoJay. Авторские права (C) 2024, JeoJay. Все права защищены.\n\n3. Не изменяйте декларации об авторских правах:\nПри репостинге или использовании любого содержимого этого программного обеспечения исходное уведомление об авторских правах и информацию об авторстве не должны изменяться или удаляться.\n\nОтказ от ответственности:\nЭто программное обеспечение предоставляется «как есть», без каких-либо гарантий, явных или подразумеваемых. Владелец авторских прав не несет ответственности за любой прямой или косвенный ущерб, возникший в результате использования данного программного обеспечения.';

  @override
  String get themeModeTitle => 'Темный режим:';

  @override
  String get themeModeSystem => 'Следовать за системой';

  @override
  String get themeModeLight => 'Выключенный';

  @override
  String get themeModeDark => 'На';

  @override
  String get themeColorTitle => 'Цвет темы:';

  @override
  String get appFontTitle => 'Шрифт приложения:';

  @override
  String get efiSettingsTitle => 'Варианты вывода EFI:';

  @override
  String get addOpenCoreTheme =>
      'Добавьте тему загрузки OpenCore при настройке EFI.';

  @override
  String get generateConfigModel => 'Создайте файл configModel в папке EFI.';

  @override
  String get zipEFI => 'Сжать EFI в Zip-файл';

  @override
  String get languageTitle => 'Язык:';

  @override
  String get languageSystem => 'Следовать за системой';

  @override
  String get languageEn => 'Английский';

  @override
  String get languagePtBR => 'Португальский (Бразилия)';

  @override
  String get languagePtPT => 'Португальский (Португалия)';

  @override
  String get languageZhCN => 'Китайский (упрощенный)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => 'японский';

  @override
  String get languageEs => 'испанский';

  @override
  String get languageFr => 'Французский';

  @override
  String get languageAr => 'арабский';

  @override
  String get languageHi => 'хинди';

  @override
  String get languageRu => 'Русский';

  @override
  String get languageIt => 'итальянский';

  @override
  String get versionUpdateTitle => 'Обновление версии:';

  @override
  String currentVersion(Object version) {
    return 'Текущая версия: $version';
  }

  @override
  String get checkUpdate => 'Проверьте наличие обновлений';

  @override
  String get checkingUpdate => 'Проверка...';

  @override
  String get settingSnippet =>
      '1. Опция «Добавить тему загрузки OpenCore при настройке EFI» включена по умолчанию. Тема загрузки будет включена в выходную папку EFI. Снимите флажок, если не требуется.\n\n2. Опция «Создать файл configModel в папке EFI» включена по умолчанию. Этот файл можно использовать для повторного редактирования и настройки текущего EFI в разделе «Обработка EFI».\n\n3. Опция «Сжать EFI в Zip-файл» сжимает выходной EFI в Zip-файл. Обратите внимание, что сжатие Zip-файлов может повлиять на общий ход вывода EFI, особенно на оборудовании с низкой производительностью.';

  @override
  String get fontMicrosoftYaHei => 'Майкрософт ЯХей';

  @override
  String get fontSarasaGothic => 'Сараса Готика';

  @override
  String get fontSourceHanSerif => 'Источник Хан Сериф';

  @override
  String get cpuArchitecture => 'Архитектура ЦП';

  @override
  String get desktop => 'Рабочий стол';

  @override
  String get laptop => 'Ноутбук';

  @override
  String get hedt => 'Сервер';

  @override
  String get nuc => 'Мини-ПК';

  @override
  String get amd => 'Процессор AMD';

  @override
  String get smbios => 'Модель SMBIOS';

  @override
  String get generateEFI => 'Создать EFI';

  @override
  String get clearSelection => 'Очистить выбор';

  @override
  String get exportConfig => 'Экспортировать конфигурацию';

  @override
  String get selectTargetFolder => 'Выберите целевой каталог';

  @override
  String get efiGenerateSuccess => 'EFI успешно создан!';

  @override
  String efiGenerateFailed(Object error) {
    return 'Не удалось создать EFI: $error';
  }

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'Подтверждать';

  @override
  String get save => 'Сохранять';

  @override
  String get delete => 'Удалить';

  @override
  String get openFolder => 'Открыть папку';

  @override
  String get date => 'Дата';

  @override
  String get actions => 'Действия';

  @override
  String get historyTitle => 'История';

  @override
  String get historyDescription =>
      'Для файлов EFI, созданных RapidEFI, автоматически создается резервная копия после каждой успешной сборки. При необходимости вы можете повторно редактировать и корректировать выходные данные на основе этих записей.';

  @override
  String get clearAllHistory => 'Очистить всю историю';

  @override
  String get clearingHistory => 'Очистка истории...';

  @override
  String get noHistory => 'Нет записей в истории';

  @override
  String get editEFI => 'Редактировать EFI';

  @override
  String get configuringEFI => 'Настройка EFI, пожалуйста, подождите...';

  @override
  String get configureEFISuccess => 'EFI настроен успешно';

  @override
  String get configureEFIFailed =>
      'Ошибка настройки EFI!\nПожалуйста, измените выходной каталог EFI.';

  @override
  String get sponsorTitle => 'Спонсор Разработчик';

  @override
  String get visitBilibili => 'Авторское Билибили';

  @override
  String get visitGithub => 'Посетите GitHub';

  @override
  String get buyCoffeeTitle => 'Купите разработчику кофе';

  @override
  String get buyCoffeeText =>
      'Если этот инструмент вам помог, смело спонсируйте разработчика! Спасибо за вашу поддержку!\n\nКонтакт автора: QQ 766264141 или WX: JeoJay127. Других способов частной связи не существует, остерегайтесь мошенников!';

  @override
  String get successCasesTitle => 'Случаи успеха RapidEFI';

  @override
  String get tahoeGuideTitle => 'Руководство по macOS Tahoe 26';

  @override
  String get oclpIntro => 'Введение';

  @override
  String get oclpGpu => 'Патч графического процессора';

  @override
  String get oclpWifi => 'Wi-Fi патч';

  @override
  String get ssdtPlatform => 'Патч платформы';

  @override
  String get ssdtAudio => 'Аудио патч';

  @override
  String get ssdtGpuSpoof => 'Подмена графического процессора';

  @override
  String get ssdtDisableDevice => 'Отключить устройство';

  @override
  String get ssdtBrightness => 'Патч яркости';

  @override
  String get manualEFIConfig => 'Ручная настройка EFI';

  @override
  String get autoEFIConfig => 'Автоматическая конфигурация EFI';

  @override
  String get cpuSelection => 'Выбор процессора:';

  @override
  String get platformSelection => 'Выбор платформы:';

  @override
  String get platformInfo => 'Информация о платформе:';

  @override
  String get targetMacOSVersion => 'Целевая версия macOS:';

  @override
  String get smbiosModelSetup => 'Настройка модели SMBIOS:';

  @override
  String get motherboardModelConfig => 'Конфигурация модели материнской платы:';

  @override
  String get selectMotherboardModelTip =>
      '(Выберите модель материнской платы, чтобы применить конфигурацию)';

  @override
  String get platformGen => 'Генерация платформы';

  @override
  String get vendor => 'Бренд';

  @override
  String get motherboardModel => 'Модель материнской платы';

  @override
  String get pleaseSelect => 'Пожалуйста, выберите';

  @override
  String get selected => 'Выбрано:';

  @override
  String get applySelectedConfig => 'Применить выбранную конфигурацию';

  @override
  String get noMatchingConfigEntries =>
      'Нет соответствующих записей конфигурации';

  @override
  String get pentiumCeleron => 'Пентиум/Целерон';

  @override
  String get pentiumCeleronTip =>
      'Процессоры Pentium или Celeron требуют подмены ЦП! Пожалуйста, включите.\nПримечание. iGPU Pentium/Celeron обычно не поддерживаются!';

  @override
  String get u62CpuTitle => 'Тип U62 ЦП';

  @override
  String get u62CpuTip =>
      'Процессор Comet Lake U62 10-го поколения (например, i3-10110U, i5-10210U, i7-10510U и т. д.) — включите!';

  @override
  String get macOSVersionSnippet =>
      'Сгенерированный EFI обратно совместим с выбранной версией macOS вплоть до OS X El Capitan 10.11.';

  @override
  String get amdCores => 'Количество ядер AMD:';

  @override
  String get ryzen7000to9000 => 'Процессоры серии 7000~9000';

  @override
  String get useAmdIgpuOutput => 'Используйте AMD iGPU для вывода на дисплей';

  @override
  String get igpuConfigTitle => 'Конфигурация iGPU';

  @override
  String get dgpuConfigTitle => 'Конфигурация dGPU';

  @override
  String get audioDriver => 'Аудио драйвер:';

  @override
  String get defaultAppleALCDriver =>
      '(По умолчанию: используется драйвер AppleALC)';

  @override
  String get alcLayoutId => 'Идентификатор макета ALC:';

  @override
  String get queryLayoutId => 'Идентификатор макета запроса';

  @override
  String get hpetAcpiPath => 'Путь HPET ACPI (исправление звукового IRQ):';

  @override
  String get fixIrq => 'Исправить прерывание';

  @override
  String get selectAudioLayoutIdTitle => 'Выберите идентификатор аудиомакета';

  @override
  String get selectAudioLayoutIdTip =>
      '(Для выбора используйте колесо прокрутки, затем нажмите «Подтвердить»)';

  @override
  String get ethernetDriver => 'Ethernet-драйвер:';

  @override
  String get defaultNoEthernetDriver =>
      '(По умолчанию: драйвер Ethernet не добавлен)';

  @override
  String get loadingData => 'Загрузка данных...';

  @override
  String get refreshHardwareInfo => 'Обновить информацию об оборудовании';

  @override
  String get importHardwareInfo => 'Импорт данных об оборудовании';

  @override
  String get exportHardwareReport => 'Экспорт отчета об оборудовании';

  @override
  String get exportAcpiTables => 'Экспорт таблиц ACPI';

  @override
  String get efiSettings => 'Настройки ЕФИ';

  @override
  String get outputEFI => 'Экспортировать EFI';

  @override
  String get summaryView => 'Краткое содержание';

  @override
  String get detailedView => 'Подробный';

  @override
  String get legendGreen =>
      'Зеленый: поддержка последней версии ОС (macOS Tahoe 26).';

  @override
  String get legendYellow => 'Желтый: поддерживает некоторые версии ОС.';

  @override
  String get legendRed => 'Красный: Полная несовместимость.';

  @override
  String get noAcpiImported => 'Нет импорта ACPI';

  @override
  String get personalizedEfiTitle => 'Персонализированные настройки EFI';

  @override
  String get applySettings => 'Применить настройки';

  @override
  String get configureEFIError =>
      'Ошибка настройки EFI!\nПожалуйста, измените путь вывода';

  @override
  String get selectConfigItems =>
      'Выберите элементы конфигурации для применения';

  @override
  String get newVersionFound => 'Доступна новая версия';

  @override
  String versionTag(Object tag) {
    return 'Версия: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'Дата выхода: $date';
  }

  @override
  String get downloadNow => 'Скачать сейчас';

  @override
  String get close => 'Закрывать';

  @override
  String get generatingEfiAndSsdt =>
      'Генерация EFI и пользовательского SSDT, подождите...';

  @override
  String get configuringEfiTitle => 'Настройка EFI';

  @override
  String get configureEfiSuccessTitle => 'EFI настроен успешно';

  @override
  String get configureEfiErrorTitle => 'Конфигурация EFI не удалась';

  @override
  String get outputDirectory => 'Выходной каталог:';

  @override
  String get openEfiDirectory => 'Открыть каталог EFI';

  @override
  String get select => 'Выбирать';

  @override
  String get selectFile => 'Выберите файл';

  @override
  String get selectDirectory => 'Выберите каталог';

  @override
  String get hardwareReport => 'Отчет об оборудовании';

  @override
  String get acpiTablesDirectory => 'Каталог таблиц ACPI';

  @override
  String get noAcpiFolderTip =>
      'Без каталога таблиц ACPI пользовательский SSDT не может быть создан из импортированного отчета.';

  @override
  String get hasAcpiFolderTip =>
      'Выбранный каталог таблиц ACPI будет использоваться для пользовательского SSDT.';

  @override
  String get adminRightsRequired => 'Требуются права администратора';

  @override
  String get enterSystemPassword => 'Пожалуйста, введите свой системный пароль';

  @override
  String get import => 'Импорт';

  @override
  String get optionalSelectIfMatching =>
      '(Необязательно — проверьте совпадение)';

  @override
  String get selectIfMatching => '(проверьте совпадение)';

  @override
  String get baseConfig => 'Базовая конфигурация';

  @override
  String get advanceConfig => 'Расширенная конфигурация';

  @override
  String get connectorCustomization => 'Настройка соединителя';

  @override
  String get displayEdid => 'Отобразить EDID';

  @override
  String get nvidiaDgpu => 'NVIDIA dGPU';

  @override
  String get amdDgpu => 'AMD dGPU';

  @override
  String get amdDgpuSpoof => 'Подделка AMD dGPU';

  @override
  String get above4gTitle => 'Выше настроек декодирования 4G';

  @override
  String get addNpciBootArg => 'Добавьте аргумент загрузки npci=0x2000.';

  @override
  String get above4gTip =>
      'Рекомендуется, если декодирование выше 4G отключено в BIOS. Снимите флажок, если он включен.';

  @override
  String get personalizedEfiIntroTip =>
      'Все поля являются необязательными. Выходной EFI сгенерирует соответствующие файлы на основе этих настроек.';

  @override
  String get ssdtType => 'Тип SSDT:';

  @override
  String get customSsdt => 'Пользовательский SSDT';

  @override
  String get presetSsdt => 'Предустановленный SSDT';

  @override
  String get cpuTypeLabel => 'Тип процессора:';

  @override
  String get platformTypeLabel => 'Тип платформы:';

  @override
  String get selectAll => 'Выбрать все';

  @override
  String get basicOfficialRecommend => '* Базовый (официальная рекомендация)';

  @override
  String get recommendFixes => '* Рекомендовать (исправления функций)';

  @override
  String get optionalEnhancements => '* Необязательно (улучшения)';

  @override
  String get personalizedPlatformTip =>
      'Тип ЦП, тип платформы и информация определяются аппаратным обеспечением; отрегулируйте вручную ниже, если это неправильно.';

  @override
  String get pciPathLabel => 'Путь PCI графического процессора:';

  @override
  String get pciPathHint => 'Введите путь PCI';

  @override
  String get spoofGpuIdLabel =>
      'Поддельный идентификатор графического процессора:';

  @override
  String get selectSpoofGpuPlaceholder =>
      'Выберите графический процессор для подделки';

  @override
  String get gpuSpoofDataLoadError =>
      'Не удалось загрузить данные подделки графического процессора.';

  @override
  String get injectEdidTitle =>
      'Вставить EDID дисплея (256 или 512 шестнадцатеричных символов):';

  @override
  String get injectEdidHint =>
      'Введите EDID дисплея (шестнадцатеричный формат, допустимы пробелы)';

  @override
  String get edidHexError =>
      'Данные EDID содержат нешестнадцатеричные символы!';

  @override
  String get edidLengthError => 'Длина EDID не кратна 256!';

  @override
  String get edidInvalidToast =>
      'Данные EDID недействительны, пожалуйста, проверьте перед вводом!';

  @override
  String get details => 'Подробности';

  @override
  String get clearAllSelection => 'Очистить все выделение';

  @override
  String applySelected(Object count) {
    return 'Применить выбранное ($count элементов)';
  }

  @override
  String get getModdedOclp => 'Получить модифицированный OCLP';

  @override
  String get getIntelModdedOclp => 'Получите модифицированный OCLP Intel';

  @override
  String get soundDriverCardTitle => 'Аудио драйвер:';

  @override
  String get soundDriverDefaultTip =>
      '(По умолчанию используется драйвер AppleALC)';

  @override
  String get hpetAcpiPathTitle => 'Путь HPET ACPI (исправление звукового IRQ):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'Выберите идентификатор аудиомакета (DB: $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip =>
      '(Прокрутите колесико, затем нажмите «Подтвердить»)';

  @override
  String get nicDriverCardTitle => 'Драйвер сетевой карты:';

  @override
  String get nicDriverDefaultTip =>
      '(По умолчанию драйвер сетевой карты не добавлен)';

  @override
  String get wifiBtCardTitle => 'Драйвер Wi-Fi и Bluetooth:';

  @override
  String get wifiBtDefaultTip =>
      '(По умолчанию драйвер Wi-Fi отсутствует, при необходимости настройте вручную)';

  @override
  String get usbCardTitle => 'USB-драйвер:';

  @override
  String get usbDefaultTip => '(по умолчанию используется USBInjectAll)';

  @override
  String get selectUtbMap => 'Выберите UTBMap';

  @override
  String get selectUtbMapHint => 'Выберите UTBMap.kext, созданный USBToolBox.';

  @override
  String get releaseUsbOwnershipText =>
      'Включите причуду «UEFI->Quirks->ReleaseUsbOwnership», чтобы освободить право владения USB-контроллером из прошивки...';

  @override
  String get bootArgsCardTitle => 'Аргументы загрузки:';

  @override
  String get bootArgsDefaultTip =>
      '(По умолчанию включен подробный режим -v, снимите флажок, если он не нужен)';

  @override
  String get debugCategory => 'Отлаживать';

  @override
  String get amfiSipCategory => 'АМФИ/СИП';

  @override
  String get igpuCategory => 'iGPU';

  @override
  String get dgpuCategory => 'дГПУ';

  @override
  String get blackScreenFixCategory => 'Исправления черного экрана';

  @override
  String get above4gCategory => 'Декодирование выше 4G';

  @override
  String get touchpadFixCategory => 'Исправления тачпада';

  @override
  String get othersCategory => 'Другие';

  @override
  String get optionalKextsCardTitle => 'Дополнительные кексы:';

  @override
  String get optionalKextsDefaultTip =>
      '(Дополнительные драйверы, не добавляйте без необходимости)';

  @override
  String get graphicsCategory => 'Графика';

  @override
  String get powerManagementCategory => 'Управление питанием';

  @override
  String get sleepCategory => 'Спать';

  @override
  String get diskCategory => 'Диск';

  @override
  String get cpuCategory => 'Процессор';

  @override
  String get amdPlatformCategory => 'Платформа AMD';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'SD-карта';

  @override
  String get optionalSettingsCardTitle => 'Дополнительные настройки:';

  @override
  String get optionalSettingsDefaultTip =>
      '(Обычно сохраняйте значения по умолчанию, если это не требуется)';

  @override
  String get tabBrand => 'Бренд';

  @override
  String get tabSpecialMotherboard => 'Специальная материнская плата';

  @override
  String get tabSipSetting => 'SIP-настройки';

  @override
  String get tabCpuRename => 'Переименование процессора';

  @override
  String get tabUiScale => 'Масштаб пользовательского интерфейса OpenCore';

  @override
  String get tabAcpiConfig => 'Конфигурация ACPI';

  @override
  String get tabBooterConfig => 'Конфигурация загрузки';

  @override
  String get tabKernelConfig => 'Конфигурация ядра';

  @override
  String get tabUefiConfig => 'Конфигурация UEFI';

  @override
  String get processEfiTitle => 'Процесс EFI';

  @override
  String get processEfiSubTitle =>
      '(Повторная обработка EFI, настроенная RapidEFI)';

  @override
  String get processEfiExpanderText =>
      'EFI, настроенный с помощью инструмента RapidEFI, создаст файл с именем configModel в выходной папке EFI. Импортируйте этот файл сюда, чтобы снова отредактировать текущий EFI.\n\nЭта функция поддерживает только RapidEFI V3.0.0 и выше.';

  @override
  String get clearCurrentConfig => 'Очистить текущую конфигурацию';

  @override
  String get importConfigModelFile => 'Импортировать файл модели конфигурации';

  @override
  String get importingConfigModel => 'Импорт модели конфигурации...';

  @override
  String get releaseToReimport =>
      'Отпустите мышь, чтобы повторно импортировать configModel.';

  @override
  String get dragConfigModelArea =>
      'Перетащите сюда файл configModel.\nили нажмите, чтобы выбрать файл';

  @override
  String get importFailedToast =>
      'Импортированные данные конфигурации недействительны. Повторно импортируйте действительный файл configModel.';

  @override
  String get changeEfiTitle => 'Изменить заголовок EFI';

  @override
  String get modifyCurrentEfiName => 'Изменить текущее имя EFI';

  @override
  String originalEfiName(String name) {
    return 'Исходное имя EFI: $name';
  }

  @override
  String get enterModifiedName => 'Пожалуйста, введите измененное имя';

  @override
  String get deleteRecord => 'Удалить эту запись';

  @override
  String get exportThisEfi => 'Экспортируйте этот EFI';

  @override
  String get releaseToIdentifyHardware =>
      'Релиз для автоматического определения отчета об оборудовании и таблиц ACPI.';

  @override
  String get dragHardwareReportHere =>
      'Перетащите папку отчета об оборудовании, экспортированную этим инструментом.\n(автоматически определяет sysInfo.txt и каталог ACPI)';

  @override
  String get invalidHardwareReportToast =>
      'Действительный файл отчета об оборудовании не распознан';

  @override
  String optionalSuffix(String title) {
    return '$title (Необязательно)';
  }

  @override
  String get notSelected => 'Не выбрано';

  @override
  String get verifyingAdminPassword => 'Проверка пароля администратора...';

  @override
  String get hardwareReportAcpiMissing =>
      'Отчет о внешнем оборудовании импортирован, но каталог таблицы ACPI не указан, SSDT невозможно настроить.';

  @override
  String get hwMemory => 'Память';

  @override
  String get hwCompatible => 'Совместимый';

  @override
  String hwDeviceID(String id) {
    return 'Идентификатор устройства: $id';
  }

  @override
  String hwType(String type) {
    return 'Тип: $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'Вместимость: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'Интерфейс: $bus';
  }

  @override
  String hwModel(String model) {
    return 'Модель: $model';
  }

  @override
  String get hwStorage => 'Хранилище';

  @override
  String get hwStorageController => 'Хранение\nКонтроллер';

  @override
  String get hwBluetooth => 'Bluetooth';

  @override
  String get hwAudioCard => 'Звуковая карта';

  @override
  String get hwAudioLayoutId => 'Идентификатор макета:';

  @override
  String get hwNetworkCard => 'Сетевая карта';

  @override
  String get hwMonitor => 'Монитор';

  @override
  String hwResolution(String res, String hz) {
    return 'Разрешение: $res @ $hz Гц';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'Подключенный графический процессор: $gpu';
  }

  @override
  String get hwInput => 'Вход';

  @override
  String get hwSDCard => 'SD-карта';

  @override
  String hwDevice(String dev) {
    return 'Устройство: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'Серийный номер: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'Встроенный: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'Безопасная загрузка: $status';
  }

  @override
  String hwCSM(String status) {
    return 'ЦСМ: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'Изменяемый размер панели: $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'Декодирование выше 4G: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'АХКИ: $status';
  }

  @override
  String get hwAHCIUnknown => 'АХКИ: Неизвестно';

  @override
  String get hwEnabled => 'Включено';

  @override
  String get hwDisabled => 'Неполноценный';

  @override
  String get hwCurrentBiosSettings => 'Текущие настройки BIOS';

  @override
  String get hwBiosNote =>
      'Примечания Хакинтоша:\n1. Если текст красного цвета, обязательно включите или выключите его в BIOS, чтобы он оставался синим.\n2. Синий текст в большинстве случаев указывает на соответствующие настройки.\nБезопасная загрузка: должна быть отключена (в противном случае неподписанная прошивка, такая как загрузчик OC, не сможет нормально запуститься).\nCSM (модуль поддержки совместимости): в большинстве случаев рекомендуется отключить (мобильный IGPU Intel 4/5-го поколения, платформы X99 и некоторые видеокарты RX460 могут потребовать включения CSM, в противном случае произойдет разрыв экрана или сбой при загрузке).\nИзменяемый размер BAR: рекомендуется отключить в BIOS (если он не отключен, убедитесь, что для ResizeAppleGpuBars установлено значение 0 в Booter->Quirks, чтобы избежать проблем с загрузкой).\nДекодирование выше 4G: рекомендуется включить в BIOS и удалить автоматически проверяемый параметр npci=0x2000. Если этой опции нет в BIOS, рекомендуем проверить npci=0x2000 или npci=0x3000. Примечание. Параметры декодирования BIOS выше 4G и npci являются взаимоисключающими!\nAHCI (режим диска SATA): должен быть включен (в противном случае диски могут не распознаваться или появится запрещающий символ).';

  @override
  String hwBit(String arch) {
    return '$arch Бит';
  }

  @override
  String get hwVirtualizationEnabled => 'Виртуализация: включена';

  @override
  String get hwVirtualizationDisabled => 'Виртуализация: отключена';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores Ядра $threads Нити';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'Набор инструкций: $simd';
  }

  @override
  String hwCore(String core) {
    return 'Ядро: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'Требуется идентификатор подделки: $id';
  }

  @override
  String get hwGPU => 'графический процессор';

  @override
  String get hwIncompatible => 'Несовместимый';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'Материнская плата';

  @override
  String hwBrand(String brand) {
    return 'Бренд: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'Чипсет: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALC поддерживает несколько идентификаторов макета. Различные идентификаторы могут влиять на доступность аудиоинтерфейса.';

  @override
  String get manualNvidiaInfoText =>
      'Поддерживаются следующие серии графических процессоров Nvidia:\n• Серия Tesla (серии 8000–300): встроенная поддержка до macOS High Sierra 10.13.x (может потребоваться исправление NVCAP), для более высоких версий требуется исправление OCLP (без поддержки Metal).\nПримеры: 8600GT, 9600GT, GT210, GT220, GT240 и т. д. Слишком старо, не рекомендуется!\n• Серия Kepler (серии 600–800): встроенная поддержка до macOS Big Sur 11.x, для более поздних версий требуется исправление OCLP (поддерживает Metal, настоящий драйвер)\nЯдро Kepler: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black и т. д.\nПрофессиональные карты ядра Kepler: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000 и т. д.\n• Серии Fermi, Maxwell, Pascal: Webdriver поддерживается до macOS High Sierra 10.13.x. Для macOS Big Sur 11.x и более поздних версий проверьте приведенные ниже аргументы загрузки и примените исправление OCLP (без поддержки Metal, поддельный драйвер)\nСерия Fermi: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740 и т. д.\nСерия Maxwell: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980 и т. д.\nСерия Паскаль: GTX1050, GTX1060, GTX1070, GTX1080 и т. д.\nНеподдерживаемые серии графических процессоров Nvidia (серии 11 и выше НЕ поддерживаются):\n• Серии 16–50: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070 и т. д.';

  @override
  String get manualEdidInfoText =>
      '1. Обычно используется для устранения проблемы с черным экраном или отсутствием сигнала на iGPU Intel 6-10-го поколения (EDID dGPU здесь не обрабатывается). (Типичный симптом: индикатор Caps Lock на клавиатуре работает, но на мониторе отображается черный экран без сигнала)\n2. Для настольных материнских плат серии 500 (H510/B560/H570/Q570/Z590/W580), использующих HDMI-выход iGPU, введение реального EDID монитора является обязательным, в противном случае весьма вероятен черный экран.\n3. Как получить EDID монитора:\nВ Windows используйте инструмент RapidEFI или инструмент hdinfo, чтобы получить EDID (вы можете использовать сторонние инструменты, но форматировать EDID необходимо самостоятельно):\n1). Откройте RapidEFI v4.x или более поздней версии, нажмите «Настроить EFI» -> «Автоматическая настройка EFI» -> «Детальная конфигурация» (или нажмите «Детальная конфигурация», если используется hdinfo).\n2). Дождитесь завершения автоматического определения информации об оборудовании, затем щелкните код EDID рядом с разделом «Монитор», чтобы получить его (появится сообщение об успешном копировании в буфер обмена).\n3). Вернитесь на эту страницу и вставьте EDID в поле ввода.\n4. Прежде чем вводить EDID, проверьте целевой интерфейс AAPL0X в «Расширенной конфигурации»; если вы не уверены, выберите на основе фактического плана исправления HDMI.\n5. Данные EDID обычно имеют размер 128 байт (256 шестнадцатеричных символов) или 256 байтов (512 шестнадцатеричных символов). Если это не так, пожалуйста, проверьте еще раз перед вводом!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'Текущий кадровый буфер: $fb. Генерация данных Framebuffer-conX-all в соответствии с документамиWhateverGreen.';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'Текущий Framebuffer не поддерживает структурированные рекомендации; удалите существующие необработанные значения и повторно выберите поддерживаемую базовую конфигурацию iGPU.';

  @override
  String get manualAddConnectorTooltip => 'Добавить патч соединителя';

  @override
  String get manualConnectorLabel => 'Разъем';

  @override
  String get manualIndexLabel => 'Индекс';

  @override
  String get manualBusIdLabel => 'Идентификатор автобуса';

  @override
  String get manualConnectorTypeLabel => 'Тип';

  @override
  String manualOldConnector(String label) {
    return '$label (Устаревший)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'Удалить патч con$index';
  }

  @override
  String get manualUnparseableValue =>
      'Необработанное значение невозможно разобрать';

  @override
  String get manualDeleteAndReadd =>
      'Удалите и заново добавьте патчи структурированного соединителя.';

  @override
  String get manualDeleteUnparseableTooltip =>
      'Удалить неразбираемый патч соединителя';

  @override
  String get manualBatteryDriver => 'Драйвер батареи';

  @override
  String get manualKeyboardTouchpadDriver => 'Драйвер клавиатуры и тачпада';

  @override
  String get manualSensorDriver =>
      'Драйвер датчика (не рекомендуется, если нет необходимости)';

  @override
  String get manualKernelTrimStrategy => 'Стратегия обрезки SSD';

  @override
  String get manualKernelPowerManagement => 'Управление питанием';

  @override
  String get manualKernelDummyPowerManagement =>
      'Отключить управление питанием (DummyPowerManagement), устраняет проблемы с перезагрузкой, вызванные управлением питанием ЦП (например, паника ядра AppleIntelCPUPowerManagement, зависание при загрузке логотипа или перезагрузка сразу после входа в систему). Для 4-го поколения и выше это предпочтительная альтернатива NullCpuPowerManagement.kext.';

  @override
  String get manualKernelQuirksDefault =>
      'Ядро — Quirks рекомендуется оставить по умолчанию, если нет необходимости или если вы не знаете, что означает каждый элемент.';

  @override
  String get manualUefiProvideConsoleGop =>
      'Функция ProvideConsoleGop включена по умолчанию, чтобы исправить отсутствие отображения пользовательского интерфейса загрузки OpenCore. Если он по-прежнему не отображается, попробуйте снять этот флажок';

  @override
  String get manualUefiDriversHfs =>
      'Драйверы UEFI (исправление пользовательского интерфейса загрузки OpenCore, который не отображается из-за драйвера HFS)';

  @override
  String get manualUefiOutputBootUI =>
      'UEFI — вывод (исправление пользовательского интерфейса загрузки OpenCore, который не отображается)';

  @override
  String get manualSpecialMotherboardTip =>
      'Необязательно — проверьте, соответствует ли ваша материнская плата описанию.';

  @override
  String get manualCsrSettingTip =>
      'Необязательно – настраивается по необходимости, по умолчанию SIP отключен.';

  @override
  String get manualRenameCpuNameTip =>
      'Необязательно — настроить имя процессора';

  @override
  String get manualRenameCpuNameLabel =>
      'Введите имя процессора (оставьте пустым, чтобы отобразить имя процессора Windows):';

  @override
  String get manualRenameCpuNameHint => 'Введите здесь имя процессора';

  @override
  String get manualBrandTip =>
      'Необязательно — проверьте, соответствует ли бренд описанию';

  @override
  String get manualBooterPlan1 => 'План 1';

  @override
  String get manualBooterPlan2 => 'План 2';

  @override
  String get manualBooterPlan3 => 'План 3';

  @override
  String get manualBooterPlan4 => 'План 4';

  @override
  String get manualBooterEbFix =>
      'Застряло на исправлении EB (необязательно — обычно по умолчанию подходит):';

  @override
  String get manualAcpiPatch => 'ACPI — исправление';

  @override
  String get manualAcpiSsdt => 'ACPI — SSDT';

  @override
  String get manualBluetoothNvram => 'Параметры Bluetooth NVRAM:';

  @override
  String get manualUsbWifiGithub => 'Посетите репозиторий автора chris1111';

  @override
  String get manualUsbWifiKexts =>
      'Добавьте необходимые Kexts для USB WiFi (Примечание: вам также необходимо установить клиент Wireless USB Big Sur Adaptor на macOS. Перезагрузите, если это не подействует)';

  @override
  String get manualWifiCardSupport =>
      'Предоставленные драйверы поддерживают macOS Mojave 10.14 ~ macOS Sequoia 15! Обратите внимание, что для правильной работы Monterey 12 и выше требуется патч OCLP!!!';

  @override
  String get manualWifiAtheros => 'Атерос';

  @override
  String get manualWifiIntel => 'Интел';

  @override
  String get manualWifiBrcm => 'Бродком (Брцм)';

  @override
  String get manualWifiBluetoothDriver => 'Bluetooth-драйвер';

  @override
  String get manualWifiItlwmPlan =>
      'План 2: используйте itlwm (требуется HeliPort), драйвер Intel WiFi. Конфликтует с Планом 1, НЕ используйте вместе!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'План 1: используйте AirportItlwm, драйвер Intel WiFi, добавляет все кексты WiFi (большого размера, выбирайте внимательно). Конфликтует с Планом 2, НЕ используйте вместе!!!';

  @override
  String get manualWifiAddAllDrivers =>
      'Добавьте все драйверы Wi-Fi (большого размера, выбирайте внимательно)';

  @override
  String get manualLaptopMainly => '(В основном для ноутбуков)';

  @override
  String get manualLaptopRelatedDrivers => 'Драйверы для ноутбука:';

  @override
  String get manualLaptopOtherFixes => 'Другие исправления';

  @override
  String get manualLaptopOtherFixesTip =>
      'Другие исправления (не рекомендуется, если нет необходимости)';

  @override
  String get manualMotherboardSelectAll => 'Выбрать все/Нет';

  @override
  String get manualMotherboardDetails => 'Подробности';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total выбрано)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return 'Применил $count конфигов из $model';
  }

  @override
  String get manualMotherboardFromMbconfs => 'Из мбконфс';

  @override
  String get manualIgpuRemark => '⚠️ Примечание';

  @override
  String get manualIgpuSelectCpu => 'Выберите процессор';

  @override
  String get manualIgpuLoadConfig =>
      'Загрузите конфигурацию iGPU из модели процессора';

  @override
  String get manualIgpuSelectProperties => 'Выберите свойства для применения';

  @override
  String get manualIgpuPresetScheme => 'Предустановленная схема';

  @override
  String get manualIgpuSelectGen => 'Выберите поколение';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'Выбрано: $model $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'Модель процессора';

  @override
  String get manualIgpuMatchOrNot => 'Проверьте, совпадают ли';

  @override
  String get manualIgpuCpuGen => 'поколение ЦП';

  @override
  String get manualIgpuByCpuModel => 'По модели процессора';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return 'Загрузил $igpu конфигурацию iGPU из $model, прописал $count свойства.';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return 'Из $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'Выберите поколение и модель ЦП, затем проверьте свойства, которые нужно применить.';

  @override
  String get manualIgpuModel => 'Модель';

  @override
  String get manualFakeGpuSelect =>
      'Выберите графический процессор для подделки';

  @override
  String get settingsThemeColors => 'Цветовая тема';

  @override
  String get settingsThemeDefault => 'По умолчанию';

  @override
  String get sharedInvalidInput => 'Неверный ввод';

  @override
  String sharedRequiresHexChars(String length) {
    return 'Требуется $length шестнадцатеричных символов.';
  }

  @override
  String get sharedExample73BF => 'Пример: 73BF';

  @override
  String get sharedTipsLengthMustMatch =>
      'Длина чаевых должна соответствовать выбранному варианту.';

  @override
  String sharedCpuInfo(String description) {
    return '[Информация о процессоре]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'Последняя версия macOS, поддерживаемая изначально: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[BIOS рекомендуется отключить]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'Версия macOS, поддерживаемая патчем: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[BIOS рекомендуется включить]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'Исходная версия macOS, поддерживаемая изначально: $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'Неверный путь ACPI';

  @override
  String get sharedFillAcpiPath => 'Заполните путь ACPI';

  @override
  String get sharedFillPciPath => 'Заполните путь PCI';

  @override
  String get sharedInvalidPciPath => 'Неверный путь PCI';

  @override
  String get sharedGetModifiedOclp => 'Получить модифицированный OCLP';

  @override
  String hwConfigModelGenerated(String details) {
    return 'Создана ConfigModel: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'Не удалось получить информацию об оборудовании: $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'Неверный пароль администратора, невозможно экспортировать таблицы ACPI';

  @override
  String get hwNoNativeInfoExportable =>
      'Нет встроенной информации об оборудовании, доступной для экспорта.';

  @override
  String get hwOutputtingOpencore => 'Вывод OpenCore EFI...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'Ошибка экспорта собственных таблиц ACPI: $error';
  }

  @override
  String get hwSsdtProcessFailed => 'Процесс настройки SSDT не удался.';

  @override
  String get hwConfigRuleRefactoring =>
      'Рефакторинг правил генерации аппаратной ConfigModel';

  @override
  String get hwQueryUnsupported =>
      'Текущая платформа не поддерживает запрос информации об оборудовании.';

  @override
  String hwPreparingSsdt(String items) {
    return 'Подготовка к настройке SSDT: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'Это отчет об импортированном внешнем оборудовании. Перед экспортом обновите информацию о собственном оборудовании.';

  @override
  String get hwRefreshingInfo => 'Обновление информации об оборудовании';

  @override
  String get hwSsdtProcessEnded => 'Процесс настройки SSDT завершен.';

  @override
  String get hwInfoUnsupported =>
      'Информация об оборудовании в настоящее время не поддерживается';

  @override
  String get hwEfiWrittenExtracting =>
      'EFI написан, начинаем извлекать ACPI и настраивать SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'Не удалось настроить EFI: $error';
  }

  @override
  String get hwReportFolderCleanFailed =>
      'Не удалось очистить папку с отчетами об оборудовании.';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'Не удалось очистить папку с отчетами об оборудовании: $error';
  }

  @override
  String get hwExportingNativeReport => 'Экспорт отчета об оборудовании...';

  @override
  String get hwAdminAuthCanceled =>
      'Авторизация администратора отменена, таблицы ACPI не экспортированы';

  @override
  String get hwImportedNoAcpiDir =>
      'Отчет о внешнем оборудовании импортирован, но каталог таблиц ACPI не предоставлен, настройка SSDT отключена.';

  @override
  String get hwExportAcpiUnsupported =>
      'Текущая платформа не поддерживает экспорт таблиц ACPI.';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'Отчет об оборудовании экспортирован в $reportDirectory, $msg';
  }

  @override
  String get hwInfoNotJson =>
      'Файл информации об оборудовании не является объектом JSON.';

  @override
  String get hwUnsupported => 'Не поддерживается';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'Не удалось очистить временный каталог таблиц ACPI: $error';
  }

  @override
  String get hwEfiConfigDone => 'Настройка EFI завершена.';

  @override
  String hwEfiConfigError(String error) {
    return 'Ошибка настройки EFI: $error';
  }

  @override
  String get hwNativeAcpiExportFailed =>
      'Не удалось экспортировать собственные таблицы ACPI.';

  @override
  String get hwAcpiToolNotReady => 'Инструмент экспорта ACPI не готов';

  @override
  String get hwFailed => 'Неуспешный';

  @override
  String hwImportReportFailed(String e) {
    return 'Не удалось импортировать отчет об оборудовании: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'Экспорт собственных таблиц ACPI завершен: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'Ошибка экспорта таблиц ACPI: не найдено допустимых таблиц ACPI.';

  @override
  String get hwUsingOriginalSsdt =>
      'Использование оригинального EFI SSDT без настройки SSDT.';

  @override
  String get hwWaitingRefresh =>
      'Ожидание обновления информации об оборудовании';

  @override
  String get hwInfoLoaded => 'Информация об оборудовании успешно загружена';

  @override
  String hwAcpiExportedTo(String path) {
    return 'Таблицы ACPI экспортированы в $path';
  }

  @override
  String get hwStartConfigEfi => 'Запускаем настройку EFI...';

  @override
  String get hwInfoLoadFailed =>
      'Не удалось загрузить информацию об оборудовании.';

  @override
  String get hwCache => 'Кэш';

  @override
  String get hwInfoImportDone => 'Импорт информации об оборудовании завершен.';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'Отчет об оборудовании и таблицы ACPI экспортированы в $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid =>
      'Каталог таблиц ACPI недействителен, настройка SSDT недоступна';

  @override
  String get hwExportingNativeAcpi => 'Экспорт собственных таблиц ACPI...';

  @override
  String get hwGeneratingConfigModel =>
      'Генерация ConfigModel на основе информации об оборудовании...';

  @override
  String get hwInfoImported => 'Информация об оборудовании импортирована.';

  @override
  String get hwAcpiExportFailedOrUnsup =>
      'Экспорт таблиц ACPI не выполнен или не поддерживается.';

  @override
  String get hwReportFolderCreateFailed =>
      'Не удалось создать папку с отчетами об оборудовании.';

  @override
  String get hwNoAdminPwd =>
      'Пароль администратора не введен, невозможно экспортировать таблицы ACPI';

  @override
  String get hwEfiConfigFailedCheck =>
      'Не удалось настроить EFI. Проверьте выходной путь или журналы.';

  @override
  String get hwLoadingInfo => 'Загрузка информации об оборудовании';

  @override
  String get hwDone => 'Сделанный';

  @override
  String get hwAcpiExportFailedProcess =>
      'Ошибка экспорта таблиц ACPI: не удалось выполнить процесс экспорта.';

  @override
  String get hwIgpuType => 'iGPU';

  @override
  String get hwGpuCompatible => 'Совместимый';

  @override
  String get hwGpuIncompatibleNoDisplay =>
      'Несовместимо, нет прямого подключения дисплея';

  @override
  String get hwGpuIncompatible => 'Несовместимый';

  @override
  String get hwLaptop => 'Ноутбук';

  @override
  String get hwGpuLoadingCompat => 'Загрузка совместимости';

  @override
  String get hwGpuLimitedCompat => 'Ограниченная совместимость';

  @override
  String get hwClickToCopy => 'Нажмите, чтобы скопировать';

  @override
  String get hwCopiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get linkCantOpen => 'Не могу открыть ссылку';

  @override
  String get clickToCopy => 'Нажмите, чтобы скопировать';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get gpuCard => 'графический процессор';

  @override
  String gpuDeviceId(String id) {
    return 'Идентификатор устройства: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'Ядро: $codename';
  }

  @override
  String get gpuCompatible => 'Совместимый';

  @override
  String get gpuIncompatible => 'Несовместимый';

  @override
  String get gpuIncompatibleNoDisplay => 'Несовместим, нет прямого дисплея';

  @override
  String get gpuLimitedCompat => 'Ограниченная совместимость';

  @override
  String get gpuLoadingCompat => 'Загрузка совместимости';

  @override
  String gpuSpoofId(String id) {
    return 'Требуется поддельный идентификатор: $id';
  }

  @override
  String get bootArgVerbose =>
      'Включить подробный режим -v (показывает выходные данные отладки во время загрузки, что полезно для отладки проблем при запуске)';

  @override
  String get bootArgKeepsyms =>
      'Распечатайте символы сбоя ядра, чтобы помочь в диагностике проблем. Обычно используется с debug=0x100. Настоятельно рекомендуется во время начальной отладки загрузки.';

  @override
  String get bootArgDebug0x100 =>
      'Запретите автоматический перезапуск при панике ядра, что позволит вам просматривать журналы сбоев. Настоятельно рекомендуется во время начальной отладки загрузки.';

  @override
  String get bootArgWatchdog0 =>
      'Отключите сторожевой таймер, чтобы предотвратить случайный перезапуск, вызванный паникой, во время отладки загрузки.';

  @override
  String get bootArgSlide0 =>
      'Отключите KASLR, чтобы устранить конфликты памяти, вызывающие панику ядра при ранней загрузке. Используется для отладки.';

  @override
  String get bootArgNoCompatCheck =>
      'Пропустите проверку совместимости модели во время загрузки, чтобы избежать появления запрещенного символа. Примечание: не обходит проверку модели установщика.';

  @override
  String get bootArgCpus1 =>
      'Включите только 1 ядро ​​ЦП (для многоядерных серверных ЦП X58/X79/X99/X299 с проблемами паники ядра во время отладки ранней установки).';

  @override
  String get bootArgBetaFix =>
      'Исправьте проблемы, которые могут возникнуть в последней версии macOS (в основном бета-версии), например, проблемы со звуком, Bluetooth, аномалии частоты процессора. Настоятельно рекомендуется для бета-версий.';

  @override
  String get bootArgAmfi0x80 =>
      'Отключите AMFI для новых графических процессоров (HD4000+, GT710+ Kepler) или при обновлении драйверов Wi-Fi. НЕ используйте с amfi_get_out_of_my_way=0x1. Эффективно только при отключенном SIP.';

  @override
  String get bootArgAmfiGetOut =>
      'Отключите AMFI для старых графических процессоров (например, GT240) или при обновлении драйверов Wi-Fi. НЕ используйте с amfi=0x80. Эффективно только при отключенном SIP.';

  @override
  String get bootArgIpcControl =>
      'Исправьте сбои приложения (например, Baidu Netdisk) после отключения AMFI. Эффективно только при отключенном SIP.';

  @override
  String get bootArgAmfiPassBeta =>
      'Убедитесь, что AMFIPass.kext работает в последней версии macOS Tahoe 26, чтобы продолжать обходить проверки безопасности AMFI.';

  @override
  String get bootArgRevpatch =>
      'Устраните проблемы с обновлением macOS OTA после отключения SIP или SecureBootModel, а также исправьте отображение пользовательского имени процессора.';

  @override
  String get bootArgDisableGfxFirmware =>
      'Отключите загрузку прошивки Apple Graphics, чтобы избежать зависаний во время запуска из-за сбоя загрузки прошивки (только Intel iGPU).';

  @override
  String get bootArgWegNoIgpu =>
      'Отключите Intel iGPU (рекомендуется, если iGPU не может управляться или не поддерживает аппаратное ускорение).';

  @override
  String get bootArgIgfxVesa =>
      'Отключите ускорение Intel iGPU (используйте, если система не запускается после применения исправления OCLP iGPU, только отладка).';

  @override
  String get bootArgIgfxRpsc =>
      'Исправьте и улучшите производительность Intel iGPU (например, исправьте проблемы с кодировкой 4K HEVC, разрешением и частотой кадров).';

  @override
  String get bootArgIgfxMpc =>
      'Устраните проблемы с разрешением iGPU, принудительно переопределив максимальную частоту пикселей и удалив ограничения разрешения/частоты обновления macOS по умолчанию.';

  @override
  String get bootArgGfxfw2 =>
      'Включите полную загрузку прошивки iGPU, чтобы улучшить использование и производительность. Может привести к сбою загрузки — используйте с осторожностью.';

  @override
  String get bootArgCdclk =>
      'Исправлена ​​паника ядра на Ice Lake 10-го поколения из-за слишком низкой частоты Core Display Clock (CDCLK).';

  @override
  String get bootArgIgfxdbeo =>
      'Исправлена ​​паника ядра на Ice Lake 10-го поколения, из-за которой драйвер неправильно рассчитывал размер предварительно выделенной памяти DVMT.';

  @override
  String get bootArgIceLakeDisplay =>
      'Исправлено повреждение дисплея, продолжавшееся 7–15 секунд на ноутбуках Ice Lake 10-го поколения при загрузке.';

  @override
  String get bootArgIgfxNoTelemetry =>
      'Отключите загрузку модуля телеметрии iGPU во время загрузки. Некоторые ноутбуки (особенно Chromebook) могут зависать при загрузке при загрузке этого модуля.';

  @override
  String get bootArgWegNoEgpu =>
      'Отключите дискретный графический процессор (рекомендуется, если dGPU на ноутбуках Intel с двумя графическими процессорами (обычно NVIDIA) не может управляться).';

  @override
  String get bootArgNvDisable =>
      'Отключите драйвер NVIDIA (только для отладки несовместимых графических процессоров NVIDIA).';

  @override
  String get bootArgUnfairGva =>
      'Исправлена ​​аппаратная поддержка DRM на графических процессорах AMD (включает контент, защищенный DRM, например потоковую передачу, на поддерживаемых графических процессорах AMD).';

  @override
  String get bootArgRadpg15 =>
      'Исправлено повреждение изображения (зашифрованный/желтый экран) на старых графических процессорах AMD (HD7750, HD7850 с ядрами GCN, такими как HD77XX/HD78XX/HD79XX).';

  @override
  String get bootArgAmdNoAccel =>
      'Отключите ускорение графического процессора ATI/AMD (используйте, если система не запускается после исправления OCLP GPU, только отладка).';

  @override
  String get bootArgRaddvi =>
      'Исправлено отображение выхода DVI на старых графических процессорах AMD (290X, 370 и т. д.).';

  @override
  String get bootArgRadcodec =>
      'Исправлена ​​поддержка аппаратного кодирования видео VDA для официально неподдерживаемых графических процессоров AMD (например, ядра RX550 Lexa).';

  @override
  String get bootArgNgfxFermi =>
      'Устраните проблемы с драйверами графического процессора для старых карт NVIDIA Fermi/Maxwell/Pascal (GT610, GTX750, GTX960, GTX1050) в macOS Big Sur 11+. После входа в систему необходимо применить патч OCLP GPU! Кеплеру это НЕ нужно.';

  @override
  String get bootArgApplbkl3 =>
      'Включите управление подсветкой PWM для графических процессоров AMD Radeon RX серии 5000.';

  @override
  String get bootArgAgdpmodIgnore =>
      'Устраните проблемы с черным экраном или отображением на некоторых графических процессорах, полностью игнорируя ограничения AppleGraphicsDevicePolicy.kext. Используйте с WhateverGreen.kext.';

  @override
  String get bootArgAgdpmodPikera =>
      'Исправьте черный экран при загрузке графических процессоров AMD Navi RX5XXX/RX6XXX (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900 и т. д.), заменив board-id на board-ix. Используйте с WhateverGreen.kext.';

  @override
  String get bootArgAgdpmodVit9696 =>
      'Исправьте черный экран после сна/пробуждения на графических процессорах RX470/RX570, отключив проверку идентификатора платы в AppleGraphicsDevicePolicy. Используйте с WhateverGreen.kext.';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Исправлен черный экран на Ventura+ для графических процессоров AMD RX5XX/RX5XXX/RX6XXX с собственной поддержкой на процессорах Intel 3-го поколения или старше. Примените исправление OCLP GPU после загрузки, затем удалите этот аргумент.';

  @override
  String get bootArgBrcmfx =>
      'Исправьте низкую скорость на некоторых картах Broadcom Wi-Fi, изменив код страны на HK. Также можно улучшить, изменив канал роутера.';

  @override
  String get bootArgVsmcgen =>
      'Исправлено зависание кода шомпола и проблемы с повреждением эмулятора SMC.';

  @override
  String get bootArgSwdPanic =>
      'Запретите перезапуск устройства после сна, чтобы собирать журналы сбоев ядра и устранять проблемы сна.';

  @override
  String get bootArgCtrsmt =>
      'Улучшите обнаружение топологии и планирование для гибридных (P+E) процессоров Intel 12-го поколения+. Прирост производительности не гарантирован — проверьте перед включением. Требуется CpuTopologyRebuild.kext.';

  @override
  String get bootArgDarkwake0 =>
      'Полностью отключите режим Darkwake и используйте традиционный спящий режим. В первую очередь устраняет проблемы с черным экраном пробуждения и автоматическим пробуждением.';

  @override
  String get bootArgForceRenderStandby =>
      'Отключите режим ожидания рендеринга iGPU RC6, чтобы исправить панику ядра NVMe, вызванную iGPU RC6 во время сна.';

  @override
  String get bootArgI2cForcePolling =>
      'Заставьте трекпад I2C использовать режим опроса вместо режима, управляемого прерываниями (режим прерываний обычно требует настройки SSDT).';

  @override
  String get kextLiluDesc =>
      'Требуемый базовый драйвер, обеспечивающий расширяемость и совместимость с macOS. От него зависят все кексты типа плагина.';

  @override
  String get kextVirtualSMCDesc =>
      'Требуется эмулятор SMC. Имитирует Apple SMC на оборудовании стороннего производителя, обеспечивая датчики, управление вентиляторами и управление питанием. macOS не может работать без этого.';

  @override
  String get kextWhateverGreenDesc =>
      'Поддержка графического драйвера графического процессора. Настоятельно рекомендуется для большинства пользователей. MacPro7,1 с AMD dGPU (RX460, RX560+) можно снять. Обычно конфликтует с NootRX/NootedRed — не выбирайте вместе при установке.';

  @override
  String get kextAppleALCDesc =>
      'Используйте AppleALC для подмены встроенного аудиокодека (более полное решение, предпочтительный вариант).';

  @override
  String get kextVoodooHDADesc =>
      'Универсальный аудиодрайвер VoodooHDA (загружается во время загрузки, поддерживает только macOS Big Sur 11.2.3 и ниже; более высокие версии требуют внедрения в папку расширений ядра системы).';

  @override
  String get kextUSBInjectAllDesc =>
      'Общее решение для внедрения USB, выбор по умолчанию, если настройка USB не выполнена.';

  @override
  String get kextUSBToolBoxDesc =>
      'Решение USBToolBox, обычно используемое вместе с настроенным UTBMap.kext.';

  @override
  String get kextBatteryV1Desc =>
      'Решение 1 для драйвера батареи (для ноутбуков с платформами Intel 3-го поколения или более старых).';

  @override
  String get kextBatteryV2Desc =>
      'Решение 2 для драйвера батареи (для ноутбуков с платформой Intel 3-го поколения или более новой).';

  @override
  String get kextAmbientLightDesc =>
      'Датчик внешней освещенности (автоматическая яркость экрана). Не используйте, если у вас нет датчика внешней освещенности, так как это может вызвать проблемы.';

  @override
  String get kextAsusNBFnKeysDesc =>
      'Управление вентилятором ноутбука ASUS, управление питанием и другие оптимизации системных датчиков. Не рекомендуется для компьютеров сторонних производителей.';

  @override
  String get kextLenovoDesc =>
      'Управление вентилятором ноутбука Lenovo, управление питанием и другие оптимизации системных датчиков. Не рекомендуется для машин сторонних производителей.';

  @override
  String get kextDellDesc =>
      'Специальный датчик для ноутбука Dell для более точного мониторинга и управления вентилятором. Не рекомендуется для компьютеров сторонних производителей.';

  @override
  String get kextNootRXDesc =>
      'Поддержка официально неподдерживаемых dGPU RX6XXX (RX6700, RX6750XT, RX6750GRE и т. д.). Конфликтует с WhatseverGreen — не выбирайте вместе при установке.';

  @override
  String get kextBatteryFixDesc =>
      'Исправление чтения батареи, устраняет некоторые проблемы с отображением батареи.';

  @override
  String get kextNVMeFixDesc =>
      'Улучшите совместимость твердотельных накопителей NVMe сторонних производителей и сократите энергопотребление в режиме ожидания. Несовместимые диски NVMe все равно могут выйти из строя. Совместимые диски NVMe могут вызвать панику ядра при использовании этого драйвера — используйте с осторожностью.';

  @override
  String get kextFeatureUnlockDesc =>
      'Разблокируйте Universal Control, Sidecar и другие функции на неподдерживаемых моделях Mac.';

  @override
  String get kextHibernationFixDesc =>
      'Устраните распространенные проблемы, связанные с гибернацией и сном.';

  @override
  String get kextHoRNDIS =>
      'Разрешите macOS использовать сетевое модем устройства Android через USB.';

  @override
  String get kextCPUFriendDesc =>
      'Драйвер масштабирования частоты ЦП, в первую очередь обеспечивающий поддержку масштабирования частоты для MacPro7,1 на платформах 11-го поколения и более новых.';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'Сопутствующий драйвер данных CPUFriend, предоставляющий данные масштабирования частоты ЦП для конкретных моделей компьютеров.';

  @override
  String get kextAppleIGHDA =>
      'Исправлены проблемы со звуком Intel iGPU HDMI в некоторых системах.';

  @override
  String get kextNoTouchID =>
      'Исправлена ​​невозможность входа в Apple ID и iCloud, обычно для ноутбуков без локальной проводной сетевой карты.';

  @override
  String get kextAppleRTCDesc =>
      'Устраните конфликты между macOS AppleRTC и BIOS ПК на новых платформах, например, RTC, вызывающий зависания, внезапные перезагрузки или немедленный выход из спящего режима.';

  @override
  String get kextPS2KBMouseDesc =>
      'Драйвер клавиатуры и мыши PS/2 (для материнских плат настольных ПК с круглыми портами PS/2).';

  @override
  String get kextPS2KeyboardDesc =>
      'Драйвер клавиатуры PS/2 (для материнских плат настольных ПК с круглыми портами клавиатуры PS/2).';

  @override
  String get kextPS2MouseDesc =>
      'Драйвер мыши PS/2 (для материнских плат настольных ПК с круглыми портами мыши PS/2).';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Специальный драйвер клавиатуры и трекпада Microsoft Surface.';

  @override
  String get kextBrightnessKeysDesc => 'Исправление сочетания клавиш яркости.';

  @override
  String get kextGenericUSBXHCIDesc =>
      'Исправление совместимости контроллера USB 3.0 для старых платформ или платформ AMD.';

  @override
  String get kextXLNCUSBFixDesc =>
      'Исправлены проблемы совместимости USB-контроллера на старых платформах AMD (FM1/FM2/AM3).';

  @override
  String get kextRealtekCardReaderDesc =>
      'Драйвер устройства чтения карт SD Realtek (используйте с RealtekCardReaderFriend).';

  @override
  String get kextRadeonSensorDesc =>
      'Оптимизирует производительность графического процессора AMD Radeon, но в некоторых сценариях может привести к сбою системы или сбою загрузки — используйте с осторожностью.';

  @override
  String get hwStatusIdle => 'Ожидание обновления информации об оборудовании';

  @override
  String get hwStatusLoading => 'Загрузка информации об оборудовании';

  @override
  String get hwStatusRefreshing => 'Обновление информации об оборудовании';

  @override
  String get hwStatusComplete => 'Информация об оборудовании загружена';

  @override
  String get hwStatusFailed =>
      'Не удалось загрузить информацию об оборудовании.';

  @override
  String get hwStatusUnsupported =>
      'Информация об оборудовании не поддерживается';

  @override
  String get hwStatusImported => 'Информация об оборудовании импортирована.';

  @override
  String get hwPlatformUnsupported =>
      'Текущая платформа не поддерживает запрос информации об оборудовании.';

  @override
  String hwFetchFailed(String error) {
    return 'Не удалось получить информацию об оборудовании: $error';
  }

  @override
  String get hwExportWarning =>
      'Это импортированный отчет. Перед экспортом обновите информацию о локальном оборудовании.';

  @override
  String get hwNoLocalInfo =>
      'Нет информации о местном оборудовании, доступной для экспорта.';

  @override
  String get hwFolderCleanFailed =>
      'Не удалось очистить папку с отчетами об оборудовании.';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'Не удалось очистить папку с отчетами об оборудовании: $error';
  }

  @override
  String get hwFolderCreateFailed =>
      'Не удалось создать папку с отчетами об оборудовании.';

  @override
  String get hwExporting => 'Экспорт отчета о локальном оборудовании...';

  @override
  String hwExportSuccess(String path) {
    return 'Отчет об оборудовании и таблицы ACPI экспортированы в $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'Отчет об оборудовании экспортирован в $path, $error';
  }

  @override
  String get hwAcpiExporting => 'Экспорт локальных таблиц ACPI...';

  @override
  String get hwAcpiExportFailed =>
      'Не удалось экспортировать локальные таблицы ACPI.';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'Экспортировано локальных таблиц ACPI: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'Не удалось экспортировать локальные таблицы ACPI: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'Текущая платформа не поддерживает экспорт таблиц ACPI.';

  @override
  String get hwAcpiAuthCancelled =>
      'Авторизация администратора отменена. Таблицы ACPI не экспортированы.';

  @override
  String get hwAcpiNoPassword =>
      'Пароль администратора не указан. Невозможно экспортировать таблицы ACPI.';

  @override
  String get hwAcpiWrongPassword =>
      'Неправильный пароль администратора. Невозможно экспортировать таблицы ACPI.';

  @override
  String get hwImportNotJson =>
      'Файл информации об оборудовании не является объектом JSON.';

  @override
  String get hwImportSuccess => 'Информация об оборудовании импортирована.';

  @override
  String get hwImportAcpiInvalid =>
      'Неверный каталог таблиц ACPI. Пользовательский SSDT недоступен.';

  @override
  String hwImportFailed(String error) {
    return 'Не удалось импортировать отчет об оборудовании: $error';
  }

  @override
  String get hwConfigStart => 'Запускаем настройку EFI...';

  @override
  String get hwConfigGenerating =>
      'Генерация ConfigModel на основе информации об оборудовании...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'Подготовка пользовательского SSDT: $items';
  }

  @override
  String get hwConfigSsdtSkip =>
      'Использование оригинального EFI SSDT. Пропуск пользовательского SSDT.';

  @override
  String get hwConfigSsdtDisabled =>
      'Импортирован отчет о внешнем оборудовании без каталога таблиц ACPI. Пользовательский SSDT отключен.';

  @override
  String get hwConfigExporting => 'Экспорт OpenCore EFI...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'Ошибка конфигурации EFI: $error';
  }

  @override
  String get hwConfigRebuilding =>
      'Правила автоматического создания аппаратного обеспечения ConfigModel подвергаются рефакторингу.';

  @override
  String get cpuUnknown => 'Неизвестный';

  @override
  String get platDesktop => 'Рабочий стол';

  @override
  String get platLaptop => 'Ноутбук';

  @override
  String get platMini => 'Мини-ПК';

  @override
  String get platServer => 'Сервер';

  @override
  String get csrEnabled =>
      'Включите SIP для повышения безопасности системы. Рекомендуется, если вы не используете OCLP для исправлений GPU/WiFi.';

  @override
  String get csrPartial => 'Отключить вариант SIP 1';

  @override
  String get csrPartialDesc =>
      'Частично отключить SIP. Рекомендуется для Big Sur или новее при использовании OCLP для патчей GPU/WiFi.';

  @override
  String get csrFully => 'Отключить вариант SIP 2';

  @override
  String get csrFullyDesc =>
      'Полностью отключить SIP. Предпочтительно для Big Sur или новее при использовании OCLP для патчей GPU/WiFi.';

  @override
  String get uiScaleAuto =>
      'Автоадаптация: автоматическая настройка масштаба пользовательского интерфейса загрузки OpenCore в зависимости от разрешения экрана.';

  @override
  String get uiScaleStandard =>
      'Стандартное разрешение: подходит для дисплеев 720p, 1080p, 1440p.';

  @override
  String get uiScaleHigh =>
      'Высокое разрешение: подходит для дисплеев 4K/5K (исправлены мелкие элементы пользовательского интерфейса в меню загрузки OpenCore).';

  @override
  String get procDefault => 'Не изменяйте тип процессора';

  @override
  String get procKeep =>
      'Сохранять отображение типа процессора системы по умолчанию';

  @override
  String get brandAsus => 'Асус';

  @override
  String get brandGigabyte => 'ГИГАБАЙТ';

  @override
  String get brandAsrock => 'ASRock';

  @override
  String get brandMsi => 'МСИ';

  @override
  String get brandDell => 'Делл';

  @override
  String get brandLenovo => 'Леново';

  @override
  String get brandSony => 'ВАИО';

  @override
  String get brandHp => 'HP';

  @override
  String get brandGoogle => 'Хромбук';

  @override
  String get brandMicrosoft => 'Microsoft Поверхность';

  @override
  String get mbNormal => 'Стандартная материнская плата';

  @override
  String get mbOemUsb =>
      'На некоторых материнских платах OEM возникают проблемы с выпуском права владения USB: сбой переключения EHCI.';

  @override
  String get navAppGuide => 'Руководство по приложению';

  @override
  String get appGuideTitle => 'Руководство пользователя RapidEFI';

  @override
  String get logMsg001 => '=> Не удалось найти LPC(B)! Операция прекращена!';

  @override
  String get logMsg002 =>
      'Действительный DSDT не найден! Пожалуйста, сначала выберите файл DSDT или каталог файлов, содержащий DSDT!';

  @override
  String get logMsg003 =>
      'Не удалось подготовить инструмент IASL! Пожалуйста, сначала обновите или используйте встроенный инструмент IASL!';

  @override
  String get logMsg004 => 'Действительный файл .aml не найден!\\n';

  @override
  String get logMsg005 =>
      'Действительный DSDT не найден! Пожалуйста, сначала выберите файл DSDT или каталог файлов, содержащий DSDT!';

  @override
  String get logMsg006 =>
      'В настоящее время обнаружено несколько файлов DSDT, и одновременно разрешена обработка только одного. Пожалуйста, сохраните один файл DSDT, удалите остальные и повторите попытку.\\n';

  @override
  String get logMsg007 =>
      'Неверный файл DSDT! Пожалуйста, повторно выберите действительный файл DSDT!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 Декомпиляция не удалась!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'Результат компиляции: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'Произошла ошибка при обработке типа IntObj: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'Ошибка обработки типа MethodObj: $arg0';
  }

  @override
  String get logMsg012 => 'Информация о IRQ не найдена!';

  @override
  String get logMsg013 =>
      'Текущие параметры или пользовательские IRQ пусты! Невозможно сгенерировать патч IRQ!';

  @override
  String get logMsg014 => '=> Информация об IRQ не найдена!';

  @override
  String get logMsg015 =>
      'Неправильный формат пользовательского списка IRQ! ! ! Разделяйте устройства пробелами, а IRQ - запятыми! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> Ошибка анализа _HID: $arg0';
  }

  @override
  String get logMsg017 =>
      'Действительные устройства не найдены, операция HPET пропущена!';

  @override
  String get logMsg018 =>
      'Не было предоставлено действительных IRQ или они пусты! Операция прервана!';

  @override
  String logMsg019(String arg0) {
    return '=> Невозможно найти $arg0._CRS! Операция прекращена!';
  }

  @override
  String logMsg020(String arg0) {
    return '=> Невозможно найти $arg0._CRS!';
  }

  @override
  String get logMsg021 => '=> _CRS, похоже, был назван XCRS!';

  @override
  String get logMsg022 =>
      '=> Пожалуйста, отключите переименование устройства из _CRS в XCRS в DSDT и повторите попытку после перезапуска!\\n';

  @override
  String get logMsg023 => '=> Невозможно определить тип доступа к памяти!';

  @override
  String get logMsg024 =>
      '=> Невозможно преобразовать базу или длину в целое число!';

  @override
  String get logMsg025 => '=> Не найдено!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> Использовать значение по умолчанию $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> Не найдено!';

  @override
  String get logMsg028 => '=> Нечего патчить!';

  @override
  String logMsg029(String arg0, String arg1) {
    return 'Отсутствует окончание патча IRQ ($arg1) для $arg0! Пропущено…';
  }

  @override
  String get logMsg030 =>
      'Следующие пункты не могут быть уникальными и по умолчанию отключены! \\п';

  @override
  String get logMsg031 => 'Не указан действительный UID. Прервите операцию!';

  @override
  String logMsg032(String arg0) {
    return '$arg0 — это собственный UID, который может потребовать ручной настройки или вообще не поддерживаться!';
  }

  @override
  String get logMsg033 =>
      'В переданной таблице ACPI не найден действительный путь к iGPU!\\n';

  @override
  String logMsg034(String arg0) {
    return 'Примечание. Путь iGPU предполагается как $arg0\\n Пожалуйста, проверьте перед использованием!';
  }

  @override
  String logMsg035(String arg0) {
    return 'Примечание. Путь iGPU вручную установлен на $arg0. Перед использованием обязательно проверьте правильность пути!';
  }

  @override
  String get logMsg036 =>
      '=> Найдено названное EC-устройство, подделывать не нужно!\\n';

  @override
  String get logMsg037 =>
      'Патч атрибута USBX не может быть пустым! Операция прекращена!';

  @override
  String get logMsg038 => 'Не найдено допустимое процессорное устройство!';

  @override
  String get logMsg039 =>
      '=> Действительное устройство PNP0B00 (RTC) найдено и проверено, никаких патчей или SSDT не требуется! Операция прекращена!';

  @override
  String get logMsg040 =>
      '=> Устройство ACPI000E (AWAC) не найдено, патч или SSDT не требуется! Операция прекращена!';

  @override
  String get logMsg041 => '=> Устройство не найдено! Операция прекращена!';

  @override
  String get logMsg042 => 'Для следующего пути не найдено совпадений:';

  @override
  String get logMsg043 => 'Совпадений не найдено!';

  @override
  String get logMsg044 =>
      'Обратите внимание, что путь к устройству должен начинаться со следующего PciRoot(), чтобы соответствовать текущей таблице ACPI:';

  @override
  String logMsg045(String arg0) {
    return '=> Не найдено, это неверная таблица $arg0!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 значение не найдено! Операция прервана!';
  }

  @override
  String get logMsg047 =>
      'Значение адреса регистра сброса не найдено! Операция прервана!';

  @override
  String logMsg048(String arg0) {
    return 'Невозможно определить идентификатор процессора в $arg0, установка исправлений прерывается.';
  }

  @override
  String logMsg049(String arg0) {
    return 'Первый процессор в $arg0 уже соответствует, нет необходимости исправлять таблицу APIC!';
  }

  @override
  String get logMsg050 =>
      '=> Соответствие процессору не найдено! Операция прервана!';

  @override
  String get logMsg051 => 'Пожалуйста, выберите патч IMEI!';

  @override
  String logMsg052(String arg0) {
    return '=> Устройство IMEI найдено по адресу $arg0, мост для подделки не требуется! Операция прервана!';
  }

  @override
  String get logMsg053 =>
      '=> Корневое устройство PCI не найдено! Операция прервана!';

  @override
  String get logMsg054 =>
      '=> Подмена IMEI SSDT не включена, идентификатор устройства должен быть установлен через DeviceProperties!';

  @override
  String get logMsg055 =>
      'Устройство UNC (PNP0A03) не найдено! Патч SSDT-UNC не требуется! Операция прервана! \\п';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: метод _STA не существует!';
  }

  @override
  String get logMsg057 =>
      '=> Устройство DMA (PNP0200) не найдено ни в одной из приведенных выше таблиц ACPI! Операция прервана! \\п';

  @override
  String get logMsg058 =>
      '=> Метод _PTS не найден, запись планирования _PTS и патч переименования не будут созданы!';

  @override
  String get logMsg059 =>
      '=> Метод _WAK не найден, запись планирования _WAK и патч переименования не будут созданы!';

  @override
  String get logMsg060 =>
      '=> Планируемый метод _PTS/_WAK не найден, SSDT-SleepHook пропущен!\\n';

  @override
  String get logMsg061 =>
      '=> Метод _SST не найден ни в одной из приведенных выше таблиц ACPI! Операция прервана! \\п';

  @override
  String get logMsg062 =>
      '=> Устройство PNP0C0D не обнаружено ни в одной из приведенных выше таблиц ACPI! Операция прервана! \\п';

  @override
  String get logMsg063 =>
      '=> Состояние системы не поддерживается: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> Примечание. Текущая прошивка не поддерживает состояние _S3. Если в настройках BIOS не отключена функция S3, значит, аппарат не поддерживает режим сна S3!';

  @override
  String get logMsg065 =>
      '=> Примечание. Это машина AOAC, и macOS не поддерживает режим сна S3!';

  @override
  String get logMsg066 =>
      '=> В настоящее время не обнаружено, является ли это машиной AOAC, пожалуйста, подтвердите сами!';

  @override
  String get logMsg067 =>
      'Значение низкой мощности S0 на холостом ходу (V5) не найдено!';

  @override
  String get logMsg068 =>
      'В настоящее время это машина AOAC, macOS не поддерживает режим сна S3!';

  @override
  String get logMsg069 =>
      '=> Имя или метод _S3 не найдены, текущая конфигурация не поддерживает спящий режим S3! Операция прекращена!';

  @override
  String logMsg070(String arg0) {
    return '=> Метод $arg0 найден!';
  }

  @override
  String get logMsg071 =>
      '=> Текущий метод переименован и может не совпадать с исходной таблицей ACPI! Пожалуйста, повторно получите исходную таблицу ACPI и повторите попытку!\\n';

  @override
  String get logMsg072 =>
      '=> Устройство LID (PNP0C0D) не обнаружено ни в одной из приведенных выше таблиц ACPI! Операция прекращена!\\n';

  @override
  String get logMsg073 =>
      '=> Метод _LID не найден ни в одной из приведенных выше таблиц ACPI! Операция прекращена!\\n';

  @override
  String get logMsg074 =>
      '=> Устройство PWRB (PNP0C0C) не найдено в приведенной выше таблице ACPI! Просто фейк! \\п';

  @override
  String logMsg075(String arg0) {
    return '=> Не нужно подделывать устройство SLPB, устройство PNP0C0E обнаружено в $arg0!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> PNP0C0E Устройство $arg0 имеет метод _STA!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E Устройство $arg0 не существует. Метод _STA!';
  }

  @override
  String get logMsg078 =>
      '=> Подходящие устройства XHC/XHCI/XDCI/CNVW не найдены! Операция прекращена! \\п';

  @override
  String get logMsg079 => '=> Метод GPRW не найден!';

  @override
  String get logMsg080 =>
      '=> Метод XPRW найден! Текущий метод переименован и, возможно, не является исходной таблицей ACPI! Пожалуйста, повторно получите исходную таблицу ACPI и повторите попытку!\\n';

  @override
  String get logMsg081 => '=> Метод XPRW не найден! Операция прекращена!';

  @override
  String get logMsg082 => '=> Метод UPRW не найден!';

  @override
  String get logMsg083 =>
      '=> Метод XPRW найден! Текущий метод переименован и, возможно, не является исходной таблицей ACPI! Пожалуйста, повторно получите исходную таблицу ACPI и повторите попытку!\\n';

  @override
  String get logMsg084 => '=> Метод XPRW не найден! Операция прекращена!';

  @override
  String get logMsg085 =>
      '=> Устройство GPI0 не найдено! Операция прекращена! \\п';

  @override
  String get logMsg086 => '=> Метод _STA не найден! Операция прекращена! \\п';

  @override
  String get logMsg087 =>
      '=> Текущая схема именования процессоров соответствует спецификации именования процессоров! Нет необходимости в этом SSDT! Операция прекращена!';

  @override
  String get logMsg088 =>
      '=> Устройство PLTF отсутствует, текущая платформа Intel не требует этого SSDT! Операция прекращена...';

  @override
  String get logMsg089 =>
      '=> Не обнаружено процессорного устройства, соответствующего требованиям, патч SSDT-CPUR не требуется! Операция прекращена!';

  @override
  String get logMsg090 =>
      '=> Подмена IMEI SSDT не включена, идентификатор устройства должен быть установлен через DeviceProperties!';

  @override
  String get logMsg091 =>
      'Не указан действительный путь к устройству ACPI! Операция прервана!';

  @override
  String logMsg092(String arg0) {
    return 'Соответствующий метод _ON или _OFF для $arg0 не найден в DSDT или SSDT! Операция прервана!';
  }

  @override
  String logMsg093(String arg0) {
    return 'Метод _PS3 или _DSM, соответствующий $arg0, не найден в DSDT или SSDT! Операция прервана!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> Для устройства $arg0 существует метод _PRT, который может скрыть реальное устройство и внедрить мостовое устройство BRG0!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> Устройство $arg0 не существует!';
  }

  @override
  String logMsg096(String arg0) {
    return 'Текущий путь к устройству $arg0 может скрыть настоящее устройство!';
  }

  @override
  String logMsg097(String arg0) {
    return '=> Переполнение адреса _ADR видеокарты $arg0!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> Вернитесь к пути родительского устройства: $arg0 и добавьте мостовое устройство BRG0!';
  }

  @override
  String logMsg099(String arg0) {
    return 'Неизвестный метод маскировки: $arg0, операция прервана.';
  }

  @override
  String logMsg100(String arg0) {
    return 'Некоторые методы не найдены: $arg0';
  }

  @override
  String get logMsg101 =>
      '=> Невозможно найти действительное шинное устройство, операция прекращена!';

  @override
  String get logMsg102 =>
      'Не указан действительный путь ACPI видеокарты! Операция прекращена!';

  @override
  String get logMsg103 =>
      'Не предоставлен действительный идентификатор поддельной видеокарты! Операция прекращена!';

  @override
  String get logMsg104 =>
      'Не указано действительное имя поддельной видеокарты! Никакие фальшивые имена вводиться не будут!';

  @override
  String logMsg105(String arg0) {
    return 'Текущий путь к видеокарте $arg0 может скрыть настоящее устройство!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> Устройство $arg0 имеет метод _PRT, который может скрыть настоящее устройство и внедрить устройство GFX0!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> Устройство $arg0 не найдено в DSDT или SSDT! Операция прервана!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> Переполнение адреса _ADR видеокарты $arg0!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> Вернитесь к пути родительского устройства: $arg0 и добавьте устройство GFX0!';
  }

  @override
  String get logMsg110 => 'В пути устройства имеется переполнение адреса _ADR!';

  @override
  String get logMsg111 =>
      'Следующие устройства могут влиять на внедрение свойств:';

  @override
  String get logMsg112 => 'Обнаружение LPC(B)/SBRG…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 найдено в $arg0';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 найдено в $arg0';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 найдено в $arg0';
  }

  @override
  String logMsg116(String arg0) {
    return 'Указан путь DSDT: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'Указанный путь DSDT недействителен: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'Сбор действительных таблиц ACPI из каталога $arg0...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'Всего найдено $arg0 таблиц ACPI, из них $arg1 действительны:';
  }

  @override
  String get logMsg120 => 'Было проверено несколько файлов с подписями DSDT:';

  @override
  String logMsg121(String arg0) {
    return 'Собираемся декомпилировать $arg0, чтобы проверить, нужно ли применять готовые исправления...';
  }

  @override
  String get logMsg122 => '=> Нет необходимости применять готовые патчи!\\n';

  @override
  String logMsg123(String arg0) {
    return 'Загрузка $arg0...';
  }

  @override
  String get logMsg124 => 'Обработка завершена!\\n';

  @override
  String get logMsg125 => 'Переданный файл или папка не существует!\\n';

  @override
  String get logMsg126 => 'Обработка проблемных файлов DSDT...';

  @override
  String get logMsg127 => 'Проверьте доступные готовые патчи…';

  @override
  String logMsg128(String arg0) {
    return 'Загрузка файла $arg0 в память...';
  }

  @override
  String get logMsg129 => 'Обработка патчей по одному...\\n';

  @override
  String get logMsg130 => '=> Позиционируем, применяем…';

  @override
  String get logMsg131 =>
      '=> Файл DSDT из предыдущего вопроса был успешно декомпилирован!';

  @override
  String logMsg132(String arg0) {
    return '=> Патч был применен к измененному файлу, и файл сохранен в папке «Результаты»:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return 'Загрузка действительных таблиц ACPI в $arg0...';
  }

  @override
  String get logMsg134 => 'Декомпиляция всех допустимых таблиц ACPI завершена!';

  @override
  String logMsg135(String arg0) {
    return 'Общее затраченное время: $arg0 секунд\\n';
  }

  @override
  String logMsg136(String arg0) {
    return 'Компиляция $arg0.aml успешно завершена!';
  }

  @override
  String logMsg137(String arg0) {
    return 'Удалить исходный файл $arg0.dsl';
  }

  @override
  String logMsg138(String arg0) {
    return '=> Область не найдена для устройства $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> Невозможно найти $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return 'Обнаружение устройства $arg0 ($arg1)...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> Невозможно настроить таргетинг ни на одно $arg0 устройство.';
  }

  @override
  String logMsg142(String arg0) {
    return '=> найдено $arg0';
  }

  @override
  String get logMsg143 => '=> Требуется подтверждение _STA…';

  @override
  String get logMsg144 =>
      '=> _STA переименован в XSTA! Пропустить другие проверки…';

  @override
  String get logMsg145 =>
      '=> Пожалуйста, отключите переименование устройства из _STA в XSTA в DSDT и повторите попытку после перезапуска!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 переменная $arg1';
  }

  @override
  String get logMsg147 => '=> Метод/имя _STA не найдено';

  @override
  String logMsg148(String arg0) {
    return '=> Найден метод _STA по индексу $arg0!';
  }

  @override
  String get logMsg149 => '=> Генерация переименования _STA в XSTA';

  @override
  String get logMsg150 =>
      '=> Имеется несколько операторов возврата или возвращаемое значение не является Return (0x0F)';

  @override
  String get logMsg151 => 'Сбор информации об устройстве ACPI...';

  @override
  String get logMsg152 => 'Сбор путей к устройствам ACPI...';

  @override
  String get logMsg153 => 'Повторная проверка потерянных устройств...';

  @override
  String logMsg154(String arg0) {
    return 'Текущие пользовательские IRQ: $arg0';
  }

  @override
  String get logMsg155 => '=> Пример: RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> Найдено _HID: $arg0';
  }

  @override
  String get logMsg157 => 'Обнаружение устройства PNP0103 (HPET)…';

  @override
  String logMsg158(String arg0) {
    return '=> расположен в $arg0';
  }

  @override
  String get logMsg159 => 'Поиск метода/имени _CRS для HPET...';

  @override
  String logMsg160(String arg0) {
    return '=> Расположен по адресу $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> Найдено по индексу: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> Тип: $arg0';
  }

  @override
  String get logMsg163 => '=> Проверка памяти32Fixed…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> Получить $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'Создание патча IRQ...';

  @override
  String get logMsg166 => 'Проверка IRQ…';

  @override
  String get logMsg167 => 'IRQ пуст! Пропустить...\\n';

  @override
  String get logMsg168 => 'Совпадение не найдено.';

  @override
  String logMsg169(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg170 => 'Создание поддельного устройства HPET...';

  @override
  String logMsg171(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> Используемый UID: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> Применимые платформы: $arg0';
  }

  @override
  String get logMsg174 =>
      'Не указан действительный путь к iGPU, попытка найти автоматически...';

  @override
  String get logMsg175 => 'Ищем устройство iGPU по адресу 0x00020000…';

  @override
  String logMsg176(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> Устройство iGPU найдено в $arg0!';
  }

  @override
  String get logMsg178 => 'Устройство iGPU не найдено по адресу!';

  @override
  String get logMsg179 => 'Поиск распространенных имен iGPU…';

  @override
  String logMsg180(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> Возможное устройство iGPU найдено в $arg0';
  }

  @override
  String logMsg182(String arg0) {
    return 'Возможное устройство iGPU найдено в $arg0\\n';
  }

  @override
  String logMsg183(String arg0) {
    return 'Ему вручную присвоено значение $arg0 в соответствии с заданным путем iGPU \\n';
  }

  @override
  String logMsg184(String arg0) {
    return 'Неверный путь к iGPU: $arg0';
  }

  @override
  String get logMsg185 =>
      'Проверка таблицы ACPI для собственного устройства PNLF...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> Собственное устройство PNLF найдено в $arg0: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> Родной PNLF необходимо переименовать в XNLF, создается патч переименования...';

  @override
  String get logMsg188 => '=> Родное устройство PNLF не найдено!';

  @override
  String get logMsg189 =>
      '=> Нет необходимости создавать патч для переименования PNLF в XNLF!';

  @override
  String logMsg190(String arg0) {
    return 'Имя (NBCF, 0x00), обнаруженное в $arg0, генерирует исправление...';
  }

  @override
  String logMsg191(String arg0) {
    return 'Имя (NBCF, ноль) обнаружено в $arg0, генерируется исправление...';
  }

  @override
  String get logMsg192 => 'Обнаружение устройства PNP0C09(EC)...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 Устройства PNP0C09 (EC) найдены в $arg0';
  }

  @override
  String get logMsg194 => '=> Проверка...';

  @override
  String logMsg195(String arg0) {
    return '=> найдено $arg0';
  }

  @override
  String get logMsg196 =>
      '=> Устройство PNP0C09 (EC) с именем EC, происходит переименование';

  @override
  String get logMsg197 => '=> Действительное устройство PNP0C09 (EC)';

  @override
  String get logMsg198 =>
      '=> _STA включен правильно, переименование отсутствует';

  @override
  String get logMsg199 => '=> Недопустимое устройство PNP0C09 (EC)';

  @override
  String get logMsg200 =>
      '=> Не найдено действительное устройство PNP0C09 (EC), просто подделайте устройство EC.';

  @override
  String logMsg201(String arg0) {
    return 'Создание $arg0.dsl…';
  }

  @override
  String logMsg202(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg203 => 'Определение схемы именования ЦП...';

  @override
  String logMsg204(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> Найден процессор: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> Объект процессора не найден...';

  @override
  String get logMsg208 => '=> Устройство ACPI0007 не найдено…';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 Найдены устройства ACPI0007';
  }

  @override
  String logMsg210(String arg0) {
    return '=> Найдено родительское устройство по адресу $arg0, обработка...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> Проверка $arg0…';
  }

  @override
  String get logMsg212 => '=> Не найдено! перепрыгни…';

  @override
  String get logMsg213 => '=> Не найдено! перепрыгни…';

  @override
  String logMsg214(String arg0) {
    return 'Обработка $arg0 действительных процессорных устройств...';
  }

  @override
  String get logMsg215 => 'Не удалось получить имя LPC...';

  @override
  String logMsg216(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg217 => '=> Нужно подделать RTC!';

  @override
  String get logMsg218 => '=> Проверка _CRS…';

  @override
  String get logMsg219 => '=> _CRS — буфер, проверяющий диапазон RTC...';

  @override
  String get logMsg220 =>
      '=> Невозможно настроить значение, невозможно проверить диапазон RTC.';

  @override
  String get logMsg221 =>
      '=> Не удалось собрать значение, невозможно проверить диапазон RTC.';

  @override
  String get logMsg222 =>
      '=> _CRS — это метод, который не может проверить диапазон RTC!';

  @override
  String get logMsg223 => '=> Генерация переименования _CRS в XCRS…';

  @override
  String logMsg224(String arg0) {
    return '=> Найдено по индексу $arg0';
  }

  @override
  String get logMsg225 => '=> не найдено';

  @override
  String logMsg226(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String get logMsg228 => 'Сбор устройств RHUB/HUBN/URTH...';

  @override
  String logMsg229(String arg0) {
    return '=> найдено $arg0 устройств';
  }

  @override
  String get logMsg230 => '=> Нужно переименовать!';

  @override
  String logMsg231(String arg0) {
    return '=> Проверка $arg0: существует ли метод _STA';
  }

  @override
  String logMsg232(String arg0) {
    return '=> Найден метод _STA по индексу $arg0!';
  }

  @override
  String get logMsg233 => '=> Создать патч из _STA в XSTA';

  @override
  String get logMsg234 => '=> Метод _STA не найден!';

  @override
  String logMsg235(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String get logMsg236 =>
      '=> В пути устройства имеется переполнение адреса _ADR!';

  @override
  String get logMsg237 =>
      '=> Для правильной работы следующих устройств может потребоваться настройка моста:';

  @override
  String get logMsg238 => 'Собираем устройства моста PCI...';

  @override
  String get logMsg239 => 'Устройство моста PCI пусто! Операция прекращена!';

  @override
  String get logMsg240 => 'Устройство моста...';

  @override
  String get logMsg241 => 'Устройство моста PCI пусто! перепрыгни…';

  @override
  String get logMsg242 => 'Соответствующие пути к устройствам…';

  @override
  String get logMsg243 => 'Ничего не найдено!';

  @override
  String logMsg244(String arg0) {
    return '=> соответствует $arg0, мост не требуется';
  }

  @override
  String get logMsg245 => 'Совпадение не найдено!\\n';

  @override
  String get logMsg246 => 'Никакого моста не требуется!\\n';

  @override
  String get logMsg247 => 'Разрешение мостового устройства...';

  @override
  String get logMsg248 => '=> Невозможно разобрать!';

  @override
  String get logMsg249 => 'Ошибка при анализе мостового устройства!\\n';

  @override
  String logMsg250(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String get logMsg251 => 'Обнаружение устройства ACPI0008 (ALS)...';

  @override
  String logMsg252(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> Найдено устройство ALS в таблице $arg0: $arg1!';
  }

  @override
  String get logMsg254 => '=> Не нужно подделывать!\\n';

  @override
  String logMsg255(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String get logMsg256 =>
      '_STA включен правильно, никаких патчей не требуется! \\п';

  @override
  String get logMsg257 => 'Не найдено, патч не требуется!\\n';

  @override
  String get logMsg258 =>
      'Устройство ACPI0008 (ALS) не найдено, требуется поддельное устройство…';

  @override
  String logMsg259(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String get logMsg260 => 'Обнаружение схемы XOSI...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> Автоматически обнаружено: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'Проверка метода OSID...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> Найден метод $arg1 по смещению $arg0';
  }

  @override
  String get logMsg264 => '=> Не найден, переименовывать OSID в XSID не нужно.';

  @override
  String get logMsg265 => 'Создание _OSI для переименования XOSI…';

  @override
  String logMsg266(String arg0) {
    return 'Ищу $arg0 стол…';
  }

  @override
  String logMsg267(String arg0) {
    return 'Найдена $arg0 таблица, проверка подписи...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 проверка подписи таблицы пройдена!';
  }

  @override
  String logMsg269(String arg0) {
    return 'Проверка значения $arg0...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'Получено значение $arg0: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'Получено значение адреса регистра сброса: $arg0';
  }

  @override
  String get logMsg272 =>
      'Исправления ACPI, которые необходимо установить, следующие:';

  @override
  String get logMsg273 => 'Исправление таблицы APIC...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> Исправлен идентификатор процессора APIC: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> Исправление таблицы APIC завершено!';

  @override
  String logMsg276(String arg0) {
    return 'Создание $arg0.dsl…';
  }

  @override
  String get logMsg277 =>
      'Проверка зарезервированной области памяти таблицы DMAR...';

  @override
  String get logMsg278 =>
      '=> Зарезервированная область памяти не найдена, патчить DMAR не нужно!\\n';

  @override
  String logMsg279(String arg0) {
    return 'Обнаружено $arg0 зарезервированных областей памяти, создается новая таблица...';
  }

  @override
  String get logMsg280 => 'Ищем устройство IMEI по адресу 0x00160000...';

  @override
  String get logMsg281 =>
      'IMEI устройства не найден, необходимо подделать устройство…';

  @override
  String get logMsg282 => 'Проверка родительского устройства...';

  @override
  String get logMsg283 => 'Ищем устройство iGPU по адресу 0x00020000…';

  @override
  String get logMsg284 => '=> Устройство iGPU не найдено!';

  @override
  String get logMsg285 => 'Попытка найти корневое устройство PCI...';

  @override
  String logMsg286(String arg0) {
    return '=> Найдено корневое устройство PCI: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> Найдено устройство iGPU: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> Использовать родительское устройство: $arg0';
  }

  @override
  String get logMsg289 => 'Сбор поддельных схем идентификаторов устройств...';

  @override
  String logMsg290(String arg0) {
    return '=> Поддельный IMEI материнской платы серии 7 (идентификатор устройства: $arg0), соответствующий процессору Ivy Bridge 3-го поколения.';
  }

  @override
  String logMsg291(String arg0) {
    return '=> Поддельный IMEI материнской платы серии 6 (идентификатор устройства: $arg0), соответствующий процессору Sandy Bridge 2-го поколения.';
  }

  @override
  String logMsg292(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String get logMsg293 => 'Ищем устройство UNC (PNP0A03)...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 Обнаружено UNC-устройство';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> UNC-устройство $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> Проверьте, существует ли метод $arg0: _STA';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> Найдено $arg1: метод _STA по индексу $arg0!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> Создать $arg0: патч _STA для XSTA';
  }

  @override
  String logMsg299(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg300(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg301 => 'Проверка существования метода DTGP...';

  @override
  String get logMsg302 => '=> Метод DTGP не найден!';

  @override
  String get logMsg303 =>
      '=> Метод DTGP не найден ни в одной из приведенных выше таблиц ACPI! \\п';

  @override
  String logMsg304(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg305(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg306 => 'Ищем устройство DMA (PNP0200)...';

  @override
  String get logMsg307 => '=> Устройство DMA (PNP0200) не найдено!';

  @override
  String logMsg308(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg309(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg310 => 'Проверка существования метода _PTS...';

  @override
  String logMsg311(String arg0) {
    return '=> Метод $arg0 найден!';
  }

  @override
  String get logMsg312 => '=> Метод _PTS не найден!';

  @override
  String get logMsg313 => 'Проверка существования метода _WAK...';

  @override
  String logMsg314(String arg0) {
    return '=> Метод $arg0 найден!';
  }

  @override
  String get logMsg315 => '=> Метод _WAK не найден!';

  @override
  String logMsg316(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg318 => 'Проверка существования метода _SST...';

  @override
  String logMsg319(String arg0) {
    return '=> Найден метод _SST в $arg0!';
  }

  @override
  String get logMsg320 => '=> Метод _SST не найден!';

  @override
  String logMsg321(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg323 => 'Проверка наличия устройства PNP0C0D...';

  @override
  String logMsg324(String arg0) {
    return '=> Устройство PNP0C0D найдено в $arg0!';
  }

  @override
  String get logMsg325 => '=> Устройство PNP0C0D не найдено!';

  @override
  String logMsg326(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return 'Проверка существования $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> Найдено $arg1 в $arg0';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> Найдено $arg1 в $arg0';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 не найдено';
  }

  @override
  String get logMsg332 => 'Все таблицы ACPI проверены!';

  @override
  String get logMsg333 => '=> Поддержка состояния системы: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> Текущая прошивка поддерживает общие состояния системы! После устранения проблемы со сном macOS сможет поддерживать режим сна S3!';

  @override
  String get logMsg335 =>
      'Проверка значения низкой мощности S0 на холостом ходу (V5)...';

  @override
  String logMsg336(String arg0) {
    return 'Получить низкую мощность S0 в режиме ожидания (V5): $arg0';
  }

  @override
  String get logMsg337 =>
      'В настоящее время это не машина AOAC и не влияет на спящий режим S3 системы macOS!';

  @override
  String get logMsg338 => 'Проверка существования _S3...';

  @override
  String logMsg339(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> Имя _S3 найдено в $arg0!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> Найден метод _S3 в $arg0!';
  }

  @override
  String get logMsg342 => '=> Имя или метод _S3 не найдены';

  @override
  String logMsg343(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg344(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg345(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg346 => 'Ищем устройство LID (PNP0C0D)...';

  @override
  String logMsg347(String arg0) {
    return '=> Устройство PNP0C0D найдено в $arg0!';
  }

  @override
  String get logMsg348 => '=> Устройство LID (PNP0C0D) не найдено!';

  @override
  String logMsg349(String arg0) {
    return '=> Найден метод _LID в $arg0!';
  }

  @override
  String get logMsg350 => '=> Метод _LID не найден!';

  @override
  String get logMsg351 => 'Проверка существования метода _TTS...';

  @override
  String logMsg352(String arg0) {
    return '=> Метод $arg0 найден!';
  }

  @override
  String get logMsg353 => '=> Метод _TTS не найден!';

  @override
  String get logMsg354 => 'Проверка существования метода ZTTS...';

  @override
  String get logMsg355 => '=> Метод ZTTS не найден!';

  @override
  String logMsg356(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg358 => 'Ищем устройство PWRB (PNP0C0C)...';

  @override
  String get logMsg359 => '=> Устройство PWRB (PNP0C0C) не найдено!';

  @override
  String logMsg360(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg361(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg362 => 'Ищем устройство SLPB (PNP0C0E)...';

  @override
  String get logMsg363 => '=> Устройство SLPB (PNP0C0E) не найдено!';

  @override
  String get logMsg364 =>
      '=> Устройство SLPB (PNP0C0E) не найдено в приведенной выше таблице ACPI! Просто фейк! \\п';

  @override
  String logMsg365(String arg0) {
    return 'Создание $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg367(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg368(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String get logMsg369 => 'Ищу устройство PNP0C01...';

  @override
  String get logMsg370 => '=> Устройство PNP0C01 не найдено!';

  @override
  String get logMsg371 =>
      '=> Устройство PNP0C01 не найдено ни в одной из приведенных выше таблиц ACPI!\\n';

  @override
  String logMsg372(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg373 => 'Сбор устройств XHC/XHCI/XDCI/CNVW...';

  @override
  String logMsg374(String arg0) {
    return '=> Проверка, поддерживает ли $arg0 устройство PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 не поддерживает PMEE, пропускается';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 поддерживает PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg378 => 'Проверка существования метода GPRW...';

  @override
  String get logMsg379 => 'Проверка существования метода XPRW...';

  @override
  String logMsg380(String arg0) {
    return '=> Метод GPRW найден в $arg0!';
  }

  @override
  String logMsg381(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg382 => 'Проверка существования метода UPRW...';

  @override
  String get logMsg383 => 'Проверка существования метода XPRW...';

  @override
  String logMsg384(String arg0) {
    return '=> Метод UPRW найден в $arg0!';
  }

  @override
  String logMsg385(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg386 => 'Проверка наличия устройства GPI0...';

  @override
  String logMsg387(String arg0) {
    return '=> Устройство GPI0 найдено в $arg0!';
  }

  @override
  String get logMsg388 => 'Проверка существования метода _STA...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> Найдено $arg1: метод _STA по индексу $arg0!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> Создать $arg0: патч _STA для XSTA';
  }

  @override
  String logMsg391(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg392 => 'Определение схемы именования ЦП...';

  @override
  String logMsg393(String arg0) {
    return 'Проверка $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> Найден процессор: $arg0';
  }

  @override
  String get logMsg395 => '=> Объект процессора не найден...';

  @override
  String get logMsg396 => '=> Устройство ACPI0007 не найдено…';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 Найдены устройства ACPI0007';
  }

  @override
  String logMsg398(String arg0) {
    return '=> Найдено родительское устройство по адресу $arg0, обработка...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> Проверка $arg0…';
  }

  @override
  String get logMsg400 => '=> Не найдено! перепрыгни…';

  @override
  String get logMsg401 => '=> Не найдено! перепрыгни…';

  @override
  String logMsg402(String arg0) {
    return 'Обработка $arg0 действительных процессорных устройств...';
  }

  @override
  String logMsg403(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg404(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg405(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg406(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg407(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg408(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg409(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg410(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg411 => 'Сбор поддельных схем идентификаторов устройств...';

  @override
  String logMsg412(String arg0) {
    return '=> Поддельный IMEI материнской платы серии 7 (идентификатор устройства: $arg0), соответствующий процессору Ivy Bridge 3-го поколения.';
  }

  @override
  String logMsg413(String arg0) {
    return '=> Поддельный IMEI материнской платы серии 6 (идентификатор устройства: $arg0), соответствующий процессору Sandy Bridge 2-го поколения.';
  }

  @override
  String logMsg414(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg415(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg416(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg417(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg418(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg419(String arg0) {
    return 'Проверка устройства $arg0 на наличие метода _ON или _OFF...';
  }

  @override
  String logMsg420(String arg0) {
    return 'Проверка устройства $arg0 на наличие методов _PS3 или _DSM...';
  }

  @override
  String logMsg421(String arg0) {
    return 'Проверка устройства $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> Метод _PRT, соответствующий $arg0, не найден в DSDT или SSDT!';
  }

  @override
  String logMsg423(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 путь к устройству, которое необходимо заблокировать: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> Метод экранирования: метод $arg0';
  }

  @override
  String logMsg426(String arg0) {
    return '=> Относительный путь устройства преобразован в абсолютный путь: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> Найти $arg1.$arg2 метод в $arg0';
  }

  @override
  String logMsg428(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String get logMsg429 => 'Сбор возможных шинных устройств...';

  @override
  String logMsg430(String arg0) {
    return 'Создание предварительно скомпилированного $arg0.dsl...';
  }

  @override
  String logMsg431(String arg0) {
    return 'Проверка графического устройства $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> Метод _PRT, соответствующий $arg0, не найден в DSDT или SSDT!';
  }

  @override
  String logMsg433(String arg0) {
    return 'Создание $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> Путь к устройству видеокарты: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> Идентификатор поддельной видеокарты: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> Имя поддельной видеокарты: $arg0';
  }

  @override
  String get logMsg437 => '=> Не найдено!';

  @override
  String logMsg438(String arg0) {
    return '=> Путь PCI соответствует: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> Обновить $arg0 \"$arg1\" до $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 «$arg1» уже существует в $arg2, пропустите...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> Добавьте $arg0 «$arg1» к $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> Обновите значение ключа «$arg0» на «$arg1» в $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> Значение ключа «$arg0» уже актуально, пропуская $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> Добавить значение ключа «$arg0» «$arg1» к $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return 'Ошибка очистки папки отчетов об оборудовании: $arg0';
  }

  @override
  String get logMsg446 => 'Не удалось экспортировать собственную таблицу ACPI.';

  @override
  String logMsg447(String arg0) {
    return 'Не удалось экспортировать собственную таблицу ACPI: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'Не удалось экспортировать собственную таблицу ACPI: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'Ошибка очистки временного каталога таблицы ACPI: $arg0';
  }

  @override
  String get logMsg450 => 'Экспорт отчета об оборудовании...';

  @override
  String get logMsg451 => 'Экспорт собственных таблиц ACPI...';

  @override
  String logMsg452(String arg0) {
    return 'Экспорт собственной таблицы ACPI завершен: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'Исходный файл не существует: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'Ошибка сохранения файла: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'Текущая версия ОС: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'ZIP-файл не существует: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 файл успешно распакован';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'Ошибка при распаковке файла $arg0: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'Файл или каталог не существует: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'Сжатие завершено: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'Ошибка сжатия: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'Удалить каталог: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'Удалить файл: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'Удаление не удалось: $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'Файл успешно сохранен в: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'Исходный каталог не существует: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'Папка подготовлена: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'Ошибка создания папки: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'Не удалось открыть каталог, путь не существует: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'Не удалось открыть каталог: $arg0, $arg1';
  }

  @override
  String get autoGen5000 => 'совместимый';

  @override
  String get autoGen5001 => 'Ограниченная совместимость';

  @override
  String get autoGen5002 => 'Не совместимо';

  @override
  String get autoGen5003 => 'Включено';

  @override
  String get autoGen5004 => 'включать';

  @override
  String get autoGen5005 => 'неизвестный';

  @override
  String get autoGen5006 => 'Проводная сетевая карта';

  @override
  String get autoGen5007 =>
      'Ограниченная совместимость\nПоддерживается до macOS Tahoe 26.\nОтсутствует AVX2';

  @override
  String get autoGen5008 =>
      'Не совместимо\nПоддерживается до macOS El Capitan 10.11.\nОтсутствует SSE4';

  @override
  String get autoGen5009 => 'Отсутствует идентификатор устройства';

  @override
  String get autoGen5010 => 'Поддержка NootedRed';

  @override
  String get autoGen5011 => 'Совместимость загрузки';

  @override
  String get autoGen5012 =>
      'Графическое ядро ​​процессора Intel младшего класса не поддерживается.';

  @override
  String get autoGen5013 => 'Выход VGA не поддерживается';

  @override
  String get autoGen5014 => 'Поддержка контрафакта';

  @override
  String get autoGen5015 => 'Встроенная поддержка';

  @override
  String get autoGen5016 => 'Отсутствует набор инструкций AVX2.';

  @override
  String get autoGen5017 => 'основной';

  @override
  String get autoGen5018 => 'независимый';

  @override
  String get autoGen5019 => 'Ядерная экспозиция';

  @override
  String get autoGen5020 => 'Асус';

  @override
  String get autoGen5021 => 'Гигабайт';

  @override
  String get autoGen5022 => 'ASRock';

  @override
  String get autoGen5023 => 'МСИ';

  @override
  String get autoGen5024 => 'Делл';

  @override
  String get autoGen5025 => 'Леново';

  @override
  String get autoGen5026 => 'Сони';

  @override
  String get autoGen5027 => 'HP';

  @override
  String get autoGen5028 => 'Google';

  @override
  String get autoGen5029 => 'Майкрософт';

  @override
  String get autoGen5030 =>
      'Невозможно определить тип платформы на основе информации о процессоре.';

  @override
  String get autoGen5031 => 'блокнот';

  @override
  String get autoGen5032 => 'Мини-хост';

  @override
  String get autoGen5033 => 'рабочая станция';

  @override
  String get autoGen5034 =>
      'Код платформы не может быть определен на основе ЦП, материнской платы и основного дисплея.';

  @override
  String get autoGen5035 => 'Пропуск блокировки устройства:';

  @override
  String get autoGen5036 => 'Отсутствует действительный путь ACPI';

  @override
  String get autoGen5037 => 'Список SSDT для настройки:';

  @override
  String get autoGen5038 => 'Не удалось извлечь таблицу ACPI';

  @override
  String get autoGen5039 => 'Ошибка загрузки таблицы ACPI';

  @override
  String get autoGen5040 => 'Результаты пользовательского SSDT неполны';

  @override
  String get autoGen5041 => 'Исключение произошло в пользовательском SSDT';

  @override
  String get autoGen5042 =>
      'Очистка временного каталога пользовательского SSDT не удалась:';

  @override
  String get autoGen5043 => 'Подмена идентификатора устройства видеокарты SSDT';

  @override
  String get autoGen5044 => 'Не удалось создать:';

  @override
  String get autoGen5045 => 'ACPI Device Shield SSDT';

  @override
  String get autoGen5046 => 'Пользовательское объединение SSDT пропущено.';

  @override
  String get autoGen5047 =>
      'Продолжайте использовать исходный SSDT в текущем EFI в качестве запасного варианта.';

  @override
  String get autoGen5048 =>
      'Подмена идентификатора устройства видеокарты пропущена:';

  @override
  String get autoGen5049 =>
      'Кэш информации об оборудовании не является объектом JSON.';

  @override
  String get autoGen5050 => 'Информация об оборудовании загружена из кэша.';

  @override
  String get autoGen5051 =>
      'Информация об оборудовании загружена из локального кэша.';

  @override
  String get autoGen5052 =>
      'Информация об оборудовании загружена из файла импорта.';

  @override
  String get autoGen5053 => 'Инициализация информации об оборудовании';

  @override
  String get autoGen5054 =>
      'Текущая система не поддерживается, поддерживается только Windows';

  @override
  String get autoGen5055 => 'Запрос информации об оборудовании';

  @override
  String get autoGen5056 => 'Запрос информации об оборудовании завершен';

  @override
  String get autoGen5057 => 'sysInfo.exe не вернул информацию об оборудовании';

  @override
  String get autoGen5058 =>
      'Содержимое, возвращаемое sysInfo.exe, не является объектом JSON.';

  @override
  String get autoGen5059 => 'Запрос sysInfo.exe завершен';

  @override
  String get autoGen5060 => 'основная видеокарта';

  @override
  String get autoGen5061 => 'Дискретная видеокарта';

  @override
  String get autoGen5062 => 'Уже включено';

  @override
  String get autoGen5063 => 'Неизвестная видеокарта';

  @override
  String get autoGen5064 => 'интегрированный';

  @override
  String get autoGen5065 => 'Бродком';

  @override
  String get autoGen5066 => 'Квалкомм';

  @override
  String get autoGen5067 => 'Интел';

  @override
  String get autoGen5068 => 'яблоко';

  @override
  String get autoGen5069 => 'Нулевой момент';

  @override
  String get autoGen5070 => 'Мацусита';

  @override
  String get autoGen5071 => 'Наверное';

  @override
  String get autoGen5072 => 'Биостар';

  @override
  String get autoGen5073 => 'Красочный';

  @override
  String get autoGen5074 => 'Зотак';

  @override
  String get autoGen5075 => 'Гэншэн';

  @override
  String get autoGen5076 => 'Инчжун';

  @override
  String get autoGen5077 => 'Супер Микро';

  @override
  String get autoGen5078 => 'Затем';

  @override
  String get autoGen5079 => 'Спартак';

  @override
  String get autoGen5080 => 'Паньчжэн';

  @override
  String get autoGen5081 => 'Южный Китай';

  @override
  String get autoGen5082 => 'Цзинъюэ';

  @override
  String get autoGen5083 => 'Разум';

  @override
  String get autoGen5084 => 'Гошуо';

  @override
  String get autoGen5085 => 'Джетвей';

  @override
  String get autoGen5086 => 'алмаз';

  @override
  String get autoGen5087 => 'главная звезда';

  @override
  String get autoGen5088 => 'Минсюань';

  @override
  String get autoGen5089 => 'Мэйдзе';

  @override
  String get autoGen5090 => 'Элита';

  @override
  String get autoGen5091 => 'Фоксконн';

  @override
  String get autoGen5092 => 'немного';

  @override
  String get autoGen5093 => 'Шуанмин';

  @override
  String get autoGen5094 => 'Ынджи';

  @override
  String get autoGen5095 => 'ГАЛАКТИКА';

  @override
  String get autoGen5096 => 'священный флаг';

  @override
  String get autoGen5097 => 'Акула';

  @override
  String get autoGen5098 => 'Проверьте это';

  @override
  String get autoGen5099 => 'Адвантех';

  @override
  String get autoGen5100 => 'АДЛИНК';

  @override
  String get autoGen5101 => 'Великий механик';

  @override
  String get autoGen5102 => 'патриот';

  @override
  String get autoGen5103 => 'АСЛ';

  @override
  String get autoGen5104 => 'Эрининг';

  @override
  String get autoGen5105 => 'сапфир';

  @override
  String get autoGen5106 => 'Контек';

  @override
  String get autoGen5107 => 'Цинъюнь';

  @override
  String get autoGen5108 => 'Хуавей';

  @override
  String get autoGen5109 => 'Просо';

  @override
  String get autoGen5110 => 'красный рис';

  @override
  String get autoGen5111 => 'слава';

  @override
  String get autoGen5112 => 'Samsung';

  @override
  String get autoGen5113 => 'механическая революция';

  @override
  String get autoGen5114 => 'механик';

  @override
  String get autoGen5115 => 'Тор';

  @override
  String get autoGen5116 => 'Рейзер';

  @override
  String get autoGen5117 => 'Асер';

  @override
  String get autoGen5118 => 'Тошиба';

  @override
  String get autoGen5119 => 'Фуджицу';

  @override
  String get autoGen5120 => 'голубое небо';

  @override
  String get autoGen5121 => 'чужак';

  @override
  String get autoGen5122 => 'Шэньчжоу';

  @override
  String get autoGen5123 => 'Хайер';

  @override
  String get autoGen5124 => 'Чжунбай';

  @override
  String get autoGen5125 => 'Сюаньлун';

  @override
  String get autoGen5126 => 'будущие люди';

  @override
  String get autoGen5127 => 'Куб';

  @override
  String get autoGen5128 => 'Сюаньпай Сюаньцзи Стар';

  @override
  String get autoGen5129 => 'Проверяем наличие обновлений, подождите...';

  @override
  String get autoGen5130 =>
      'Только что проверил наличие обновлений, повторите попытку позже.';

  @override
  String get autoGen5131 =>
      'Не удалось проверить наличие обновлений. Повторите попытку позже.';

  @override
  String get autoGen5132 =>
      'Не удалось получить список версий выпуска. Повторите попытку позже.';

  @override
  String get autoGen5133 => 'Список версий выпуска пуст.';

  @override
  String get autoGen5134 => 'Рабочий стол';

  @override
  String get autoGen5135 => 'сервер';

  @override
  String get autoGen5136 =>
      'Включите SIP, чтобы повысить безопасность системы. Рекомендуется установить этот флажок, если вам обычно не требуется использовать OCLP для управления видеокартами, WiFi и другими драйверами.';

  @override
  String get autoGen5137 => 'Отключить первое решение SIP';

  @override
  String get autoGen5138 =>
      'Если SIP не отключен полностью, обычно рекомендуется установить флажок, когда такие системы, как BigSur и выше, должны использовать OCLP для управления видеокартами, Wi-Fi и т. д.';

  @override
  String get autoGen5139 => 'Отключить SIP-решение два';

  @override
  String get autoGen5140 =>
      'Полностью отключить SIP. Обычно, когда такие системы, как BigSur и выше, должны использовать OCLP для управления видеокартами, Wi-Fi и т. д., этот вариант является предпочтительным.';

  @override
  String get autoGen5141 =>
      'Адаптивный дисплей, автоматически регулирует соотношение сторон загрузочного интерфейса OpenCore в соответствии с разрешением экрана.';

  @override
  String get autoGen5142 =>
      'Монитор стандартного разрешения, подходит для мониторов 720p, 1080p, 1440p и других мониторов стандартного разрешения.';

  @override
  String get autoGen5143 =>
      'Дисплей высокого разрешения, подходящий для дисплеев с высоким разрешением, таких как 4K и 5K (может эффективно решить проблему слишком маленьких элементов пользовательского интерфейса на загрузочной странице OpenCore для экранов с высоким разрешением)';

  @override
  String get autoGen5144 => 'Не изменяйте тип процессора';

  @override
  String get autoGen5145 =>
      'Сохранять отображение типа процессора системы по умолчанию';

  @override
  String get autoGen5146 =>
      'Вариант изменения имени ЦП платформ Intel и AMD, вариант 1 (обычно применим к ЦП с 6 ядрами и ниже)';

  @override
  String get autoGen5147 =>
      'Вариант изменения названия процессора платформы Intel и AMD 2 (обычно применим к 8-ядерным процессорам и выше)';

  @override
  String get autoGen5148 =>
      'Альтернативные варианты изменения имени процессора платформы Intel и AMD (обычно применимы к процессорам серий i7 и i9 с 8 ядрами и выше)';

  @override
  String get autoGen5149 => 'Асус';

  @override
  String get autoGen5150 => 'ГИГАБАЙТ';

  @override
  String get autoGen5151 => 'ASRock';

  @override
  String get autoGen5152 => 'МСИ';

  @override
  String get autoGen5153 => 'Делл';

  @override
  String get autoGen5154 => 'Леново';

  @override
  String get autoGen5155 => 'Сони (ВАИО)';

  @override
  String get autoGen5156 => 'HP';

  @override
  String get autoGen5157 => 'Google (Хромбук)';

  @override
  String get autoGen5158 => 'Microsoft Поверхность';

  @override
  String get autoGen5159 => 'Обычная материнская плата';

  @override
  String get autoGen5160 =>
      'Материнские платы B850, B650, B550 и A520, ноутбуки с чипсетом серии 550';

  @override
  String get autoGen5161 => 'материнская плата TRx40';

  @override
  String get autoGen5162 => 'материнская плата X570';

  @override
  String get autoGen5163 =>
      'Материнская плата X470 или B450 конца 2020 г. или обновленный BIOS';

  @override
  String get autoGen5164 => 'чипсет 6 серии';

  @override
  String get autoGen5165 =>
      'Проверьте при сочетании процессора Intel 3-го поколения и набора микросхем серии 6 (например: H61, HM65)';

  @override
  String get autoGen5166 => 'чипсет 7 серии';

  @override
  String get autoGen5167 =>
      'Проверьте при сочетании процессоров Intel 2-го поколения и наборов микросхем 7-й серии (например: B75, HM76)';

  @override
  String get autoGen5168 => 'Х110,Б150,Б250,К270 и т. д.';

  @override
  String get autoGen5169 =>
      'На некоторых OEM-материнских платах возникают проблемы с разрешением владельца USB: сбой передачи управления EHCI.';

  @override
  String get autoGen5170 => 'Z490 и другие обновления BIOS в 2020 году';

  @override
  String get autoGen5171 =>
      'Набор микросхем серии 6 (проверьте при сочетании ЦП Intel 3-го поколения и наборов микросхем серии 6 (например: H61, HM65))';

  @override
  String get autoGen5172 =>
      'Набор микросхем серии 7 (проверьте при сочетании ЦП Intel 2-го поколения и наборов микросхем серии 7 (например: B75, HM76))';

  @override
  String get autoGen5173 =>
      'H110, B150, B250, Q270 и т. д. (На некоторых материнских платах OEM возникают проблемы с выпуском USB-владения: сбой переключения EHCI)';

  @override
  String get autoGen5174 => 'из мбконфс';

  @override
  String get autoGen5175 => 'Двойная цепь DVI';

  @override
  String get autoGen5176 => 'Одинарная цепь DVI';

  @override
  String get autoGen5177 =>
      'Поддерживает OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13.';

  @override
  String get autoGen5178 =>
      'Поддерживает OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, подходит для моделей базовой графики + независимых графических моделей.';

  @override
  String get autoGen5179 =>
      'Поддерживает OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, подходит для архитектуры Ivy Bridge, только модели с базовой графикой.';

  @override
  String get autoGen5180 =>
      'Поддерживает OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, подходит для архитектуры Ivy Bridge, базовое декодирование дисплея + независимые модели вывода дисплея';

  @override
  String get autoGen5181 =>
      'Поддерживает OS X Mavericks 10.9 ~ macOS Big Sur 11, подходит для архитектуры Haswell, NVIDIA Maxwell и независимой графики Pascal.';

  @override
  String get autoGen5182 =>
      'Поддерживает OS X Mavericks 10.9 ~ macOS Big Sur 11, подходит только для моделей с основным дисплеем на архитектуре Haswell.';

  @override
  String get autoGen5183 =>
      'Поддерживает OS X Mavericks 10.9 ~ macOS Big Sur 11, подходит для базовой графики архитектуры Haswell + независимых графических моделей.';

  @override
  String get autoGen5184 =>
      'Поддерживает macOS El Capitan 10.11 ~ macOS Monterey 12, подходит для моделей с основной графикой (или независимой графикой)';

  @override
  String get autoGen5185 =>
      'Поддерживает macOS El Capitan 10.11 ~ macOS Monterey 12, подходит для основного дисплея с архитектурой Broadwell (или с независимым дисплеем)';

  @override
  String get autoGen5186 =>
      'Поддерживает macOS Sierra 10.12 ~ macOS Ventura 13. Подходит для моделей с основным дисплеем и независимым дисплеем. Следует отметить, что при использовании этой модели у большинства пользователей, использующих только основной дисплей, цвет экрана будет ненормальным. Эта модель не рекомендуется для основных пользователей, использующих только дисплей.';

  @override
  String get autoGen5187 =>
      'Поддерживает macOS Sierra 10.12 ~ macOS Ventura 13, подходит для декодирования основного дисплея + независимых моделей вывода дисплея.';

  @override
  String get autoGen5188 =>
      'Поддерживает macOS 10.14 ~ macOS Sequoia 15, подходит для моделей с базовой графикой (или независимой графикой)';

  @override
  String get autoGen5189 =>
      'Поддерживает macOS 10.15 ~ macOS Tahoe 26, подходит для моделей i7-10700K и ниже с дисплеем ядра процессора (или с независимым дисплеем).';

  @override
  String get autoGen5190 =>
      'Поддерживает macOS 10.15 ~ macOS Tahoe 26, подходит для моделей i9-10850K с дисплеем с более высоким процессорным ядром (или с независимым дисплеем).';

  @override
  String get autoGen5191 => 'Поддержка macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 => 'Поддержка macOS 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5193 => 'Поддержка macOS 10.7 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5194 => 'Поддержка macOS 10.8 ~ macOS Catalina 10.15';

  @override
  String get autoGen5195 => 'Поддержка macOS 10.9 ~ macOS Big Sur 11';

  @override
  String get autoGen5196 =>
      'Поддержка macOS High Sierra 10.13 ~ macOS Monterey 12';

  @override
  String get autoGen5197 => 'Поддержка macOS Mojave 10.14 ~ macOS Monterey 12';

  @override
  String get autoGen5198 =>
      'Поддержка OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 =>
      'Поддержка OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 => 'Поддержка macOS Sierra 10.12 ~ macOS Monterey 12';

  @override
  String get autoGen5201 =>
      'Поддержка macOS Sierra 10.12 ~ macOS Monterey 12 (базовый дисплей HD 515 официально поддерживает только macOS Monterey 12, подделка поддерживает новейшую версию macOS Sequoia 15)';

  @override
  String get autoGen5202 =>
      'Поддерживает macOS Sierra 10.12 ~ macOS Monterey 12 (основной дисплей Iris 540 официально поддерживает только macOS Monterey 12, а поддельная версия поддерживает новейшую macOS Sequoia 15)';

  @override
  String get autoGen5203 =>
      'Поддерживает macOS Sierra 10.12 ~ macOS Monterey 12 (основной дисплей Iris 550 официально поддерживает только macOS Monterey 12, а поддельная версия поддерживает новейшую macOS Sequoia 15)';

  @override
  String get autoGen5204 =>
      'Поддержка macOS Sierra 10.12 ~ macOS Monterey 12 (базовый дисплей HD530 официально поддерживает только macOS Monterey 12, подделка поддерживает новейшую версию macOS Sequoia 15)';

  @override
  String get autoGen5205 =>
      'Поддержка macOS High Sierra 10.13 ~ macOS Ventura 13';

  @override
  String get autoGen5206 => 'Поддержка macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 => 'Поддержка macOS Catalina 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 => 'Поддержка macOS Catalina 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'Поддерживает macOS 10.9 ~ macOS Monterey 12, подходит для моделей только с автономной графикой.';

  @override
  String get autoGen5210 =>
      'Поддерживает macOS 10.13 ~ macOS Sequoia 15. Применимо к автономным моделям только с графикой. Для Intel 11-го поколения и выше обычно используется эта модель. Преобразование частоты процессора и турбо-частота являются нормальными, и дополнительный патч Kext не требуется (если турбо-частота системы macOS не является нормальной, извлеките и используйте собственный SSDT-PLUG)';

  @override
  String get autoGen5211 =>
      'Поддерживает macOS 10.15 ~ macOS Tahoe 26, подходит для моделей с независимой графикой A-card. Поддерживаемые карты A без драйверов (такие как RX560, RX570, RX5500, RX6600) прекрасно поддерживают жесткое декодирование VDA. Для Intel 11-го поколения и выше обычно используется эта модель, турбочастота процессора не в норме и требуется дополнительный патч Kext. Вы можете перейти к [Дополнительный драйвер Kexts]->[Связанный с процессором]->[Драйвер переменной частоты процессора, в основном обеспечивает поддержку преобразования частоты для платформ MacPro7,1 11-го поколения и выше], чтобы проверить эту опцию.';

  @override
  String get autoGen5212 => 'Диапазон совместимости macOS не настроен';

  @override
  String get autoGen5213 =>
      'идентификатор устройства должен состоять из 4 символов';

  @override
  String get autoGen5214 =>
      'Включить главный переключатель исправления кадрового буфера основного дисплея (Framebuffer)';

  @override
  String get autoGen5215 =>
      'Измените видеопамять до 1536 МБ (видеопамять 1,5 ГБ, официальное значение Apple по умолчанию, подходит для платформ Intel Core 3-10 поколений)';

  @override
  String get autoGen5216 =>
      'Измените видеопамять на 2048M (видеопамять 2G, значение инструмента по умолчанию, подходит для платформ дисплея Intel Core от 3-го до 10-го поколения)';

  @override
  String get autoGen5217 =>
      'Измените видеопамять на 3072M (видеопамять 3G, подходит для платформ дисплея Intel Core 3-10 поколений)';

  @override
  String get autoGen5218 =>
      'Измените видеопамять на 4095M (видеопамять 4G, подходит для платформ Intel Core Display от 3-го до 10-го поколения)';

  @override
  String get autoGen5219 =>
      'Устраните проблему размытия экрана с высоким разрешением 1080P на платформе Haswell 4-го поколения (например, размытие экрана с высоким разрешением может быть связано с тем, что значение недостаточно велико. Этот патч представляет собой специальный патч для основного дисплея Haswell. Рекомендуется использовать эту конфигурацию для экранов с разрешением 1080P и ниже).';

  @override
  String get autoGen5220 =>
      'Устранена проблема с экранами с высоким разрешением, такими как 2K и 4K, на платформе Haswell 4-го поколения (например, экран с высоким разрешением может быть размытым, поскольку значение недостаточно велико. Этот патч представляет собой специальный патч для основного дисплея Haswell. Рекомендуется использовать эту конфигурацию для экранов 2K и 4K).';

  @override
  String get autoGen5221 =>
      'Патч-кандидат на экран высокого разрешения Ivy Bridge';

  @override
  String get autoGen5222 => 'Включить патч интерфейса con0';

  @override
  String get autoGen5223 => 'Включить патч интерфейса con1';

  @override
  String get autoGen5224 => 'Включить исправление интерфейса con2';

  @override
  String get autoGen5225 => 'Включить патч интерфейса con3';

  @override
  String get autoGen5226 =>
      'Патч интерфейса кандидата на экран высокого разрешения Ivy Bridge';

  @override
  String get autoGen5227 =>
      'Патч для экрана высокого разрешения ноутбука Sandy Bridge (разрешение 1600x900 и выше)';

  @override
  String get autoGen5228 =>
      'Дополнительные патчи для ноутбуков Ironlake/Arrandale';

  @override
  String get autoGen5229 =>
      'Исправлено решение для экрана высокого разрешения HDMI с частотой 60 кадров в секунду (в некоторых случаях основной дисплей Intel может использовать стандарт HDMI 1.4 по умолчанию. Включите этот параметр, чтобы заставить HDMI 2.0 поддерживать более высокое разрешение и частоту обновления, например поддержку 4K при 60 Гц)';

  @override
  String get autoGen5230 =>
      'Восстановить аудиовыход HDMI (обычно требуется только соответствующий alcid, этот параметр иногда может решить проблему правильного аудиовыхода HDMI)';

  @override
  String get autoGen5231 =>
      'Отключить патч преобразования DP в HDMI для цифрового звука (обеспечивает стабильность и надежность соединения HDMI, когда интерфейс DisplayPort подключен к интерфейсу HDMI через преобразователь)';

  @override
  String get autoGen5232 =>
      'Принудительно установить онлайн-статус на всех мониторах, что полезно для многоэкранного вывода основного дисплея. В некоторых случаях это позволяет избежать таких проблем, как черный экран после пробуждения от сна или необходимость подключать и отключать кабель монитора для подсветки экрана при запуске (обычно применимо к дисплеям Coffee Lake 8-го поколения и выше).';

  @override
  String get autoGen5233 =>
      'Улучшите производительность основного дисплея (например: исправьте проблему с кодированием 4K hevc основного дисплея, разрешением и частотой кадров, не достигающими идеальных значений).';

  @override
  String get autoGen5234 =>
      'Включите полную загрузку встроенного ПО основного дисплея, улучшите использование основного дисплея и улучшите его производительность. Добавление этого параметра может привести к тому, что система не сможет войти, поэтому используйте его с осторожностью.';

  @override
  String get autoGen5235 =>
      'Исправлена ​​проблема с бесконечным циклом, вызванная основным дисплеем Skylake 6-го поколения, основным дисплеем Kaby Lake 7-го поколения и основным драйвером дисплея Coffee Lake 8-го поколения при попытке включить внешний дисплей HDMI с высоким разрешением (конкретные симптомы заключаются в том, что после подключения кабеля HDMI внутренний экран ноутбука становится черным, но имеет подсветку, система перестает отвечать на запросы, а на внешний экран нет вывода)';

  @override
  String get autoGen5236 =>
      'Исправлена ​​проблема сбоя ядра, вызванная низкой частотой Core Display Clock (CDCLK) на платформе Ice Lake 10-го поколения.';

  @override
  String get autoGen5237 =>
      'Исправлен сбой ядра на платформе Ice Lake 10-го поколения, вызванный неправильным расчетом драйвером размера предварительно выделенной памяти DVMT.';

  @override
  String get autoGen5238 =>
      'Отрегулируйте настройки ползунка яркости (Brightness Slider), чтобы сделать переходы более плавными и естественными и улучшить взаимодействие с пользователем.';

  @override
  String get autoGen5239 =>
      'Исправлена ​​проблема с темным экраном, продолжавшимся 3 минуты после запуска на ноутбуках под управлением macOS 13.4 или более поздней версии на платформах Kaby Lake 7-го поколения, 8-го поколения и Coffee Lake 9-го поколения.';

  @override
  String get autoGen5240 =>
      'Исправлена ​​проблема, из-за которой на ноутбуках под управлением macOS 13.3 и более ранних версий на платформах Kaby Lake 7-го поколения, 8-го поколения и 9-го поколения Coffee Lake в течение 3 минут после загрузки отображался темный экран.';

  @override
  String get autoGen5241 =>
      'Исправлена ​​проблема, из-за которой экран на платформе Ice Lake 10-го поколения оставался неизменным в течение 7–15 секунд при включении ноутбука.';

  @override
  String get autoGen5242 =>
      'Исправлена ​​проблема, из-за которой на основном дисплее Ice Lake 10-го поколения HDMI-дисплей с высоким разрешением отображался черный экран, без сигнала, а разрешение не могло быть правильно выведено в 4K при 60 Гц и в некоторых сценариях с высокой частотой обновления 2K/4K (принудительно включать «переопределение максимальной частоты пикселей» основного дисплея (IGPU))';

  @override
  String get autoGen5243 =>
      'Используется для устранения эффектов сбоев ядерного дисплея или проблем с мерцанием экрана (например, ядерного дисплея HD530).';

  @override
  String get autoGen5244 =>
      'Отключите независимый дисплей (обычно, когда независимый дисплей ноутбука с двумя видеокартами не может управляться, независимый дисплей необходимо отключить)';

  @override
  String get autoGen5245 =>
      'Исправлена ​​проблема ноутбуков (таких как Dell XPS 15 9570 и других ноутбуков с экраном высокого разрешения), когда внутренний экран экрана высокого разрешения возвращает неправильное значение максимальной скорости соединения, что приводит к прямому сбою при включении внутреннего экрана (рекомендуется установить этот флажок для ноутбуков с экраном высокого разрешения).';

  @override
  String get autoGen5246 =>
      'Вставьте EDID монитора в интерфейс AAPL00 (обычно внутренний экран ноутбука), чтобы устранить проблему с черным экраном интерфейса (примечание: сначала необходимо ввести EDID монитора на странице конфигурации EDID! Вы можете ввести EDID в инструменте «Конфигурация дисплея» -> «Отображение EDID». Для материнских плат серии 500, таких как B560, при ремонте выхода HDMI необходимо ввести EDID монитора, в противном случае высокая вероятность черного экрана. Иногда на других платформах Intel проблема размытого экрана, фиолетового экрана или черного экрана может быть устранена)';

  @override
  String get autoGen5247 =>
      'Вставьте EDID монитора в интерфейс AAPL01, чтобы исправить черный экран и устранить проблемы с отображением интерфейса (Примечание: сначала необходимо ввести EDID монитора на странице конфигурации EDID! Вы можете ввести EDID в инструменте «Конфигурация дисплея» -> «Отображение EDID». Материнские платы серии 500, такие как B560, должны вводить EDID монитора при ремонте выхода HDMI, в противном случае существует высокая вероятность появления черного экрана. Иногда на других платформах Intel можно устранить проблему с размытым экраном основного дисплея, фиолетовым экраном или черным экраном)';

  @override
  String get autoGen5248 =>
      'Вставьте EDID монитора в интерфейс AAPL02, чтобы исправить черный экран и устранить проблемы с отображением интерфейса (Примечание: сначала необходимо ввести EDID монитора на странице конфигурации EDID! Вы можете ввести EDID в инструменте «Конфигурация дисплея» -> «Отображение EDID». Материнские платы серии 500, такие как B560, должны вводить EDID монитора при ремонте выхода HDMI, в противном случае существует высокая вероятность появления черного экрана. Иногда на других платформах Intel можно устранить проблему с размытым экраном основного дисплея, фиолетовым экраном или черным экраном)';

  @override
  String get autoGen5249 =>
      'Включите поддержку LSPCON и преобразуйте выход DisplayPort в выход HDMI 2.0 (требуется преобразователь сигналов LSPCON портов 0–3, подходящий для платформ Intel Skylake 6-го поколения ~ 10-го поколения Comet Lake, Ice Lake)';

  @override
  String get autoGen5250 =>
      'Преобразователь сигналов LSPCON порта 0 (необходимо включить поддержку LSPCON)';

  @override
  String get autoGen5251 =>
      'Преобразователь сигналов LSPCON порта 1 (необходимо включить поддержку LSPCON)';

  @override
  String get autoGen5252 =>
      'Преобразователь сигналов LSPCON порта 2 (необходимо включить поддержку LSPCON)';

  @override
  String get autoGen5253 =>
      'Преобразователь сигналов LSPCON порта 3 (необходимо включить поддержку LSPCON)';

  @override
  String get autoGen5254 =>
      'Измените размер памяти фреймбуфера до 9 МБ (размер памяти фреймбуфера повлияет на экраны с высоким разрешением, обычно используется вместе с Framebuffer-stolenmem)';

  @override
  String get autoGen5255 =>
      'Измените украденную память на 19 МБ (применимо к экрану 1080P, значение инструмента по умолчанию, проверять не нужно. Если в BIOS есть параметр DVMT, рекомендуется изменить его на 64 МБ. Если параметр DVMT изменен в BIOS, этот параметр можно удалить)';

  @override
  String get autoGen5256 =>
      'Измените украденную память на 64 МБ (применимо к экранам 2 КБ или 4 КБ. Если в BIOS есть параметр DVMT, рекомендуется изменить его на 64 МБ или выше. Если параметр DVMT изменен в BIOS, этот параметр можно удалить)';

  @override
  String get autoGen5257 =>
      'Измените украденную память на 128 МБ (применимо к экранам 4К. Если в BIOS есть параметр DVMT, рекомендуется изменить его на 128 МБ или 256 МБ или выше для экранов с высоким разрешением. Если параметры DVMT изменены в BIOS, этот параметр можно удалить)';

  @override
  String get autoGen5258 =>
      'Включить порт con0 HDMI (требуется интерфейс HDMI № 0)';

  @override
  String get autoGen5259 =>
      'Интерфейс HDMI № 0, используемый для решения проблемы черного экрана HDMI 6-10 поколений (необходимо включить порт HDMI con0)';

  @override
  String get autoGen5260 =>
      'Включить порт con1 HDMI (требуется интерфейс HDMI № 1)';

  @override
  String get autoGen5261 =>
      'Интерфейс HDMI № 1, используемый для решения проблемы черного экрана HDMI 6-10 поколений (необходимо включить порт HDMI con1)';

  @override
  String get autoGen5262 =>
      'Включить порт con2 HDMI (требуется интерфейс HDMI № 2)';

  @override
  String get autoGen5263 =>
      'Интерфейс HDMI № 2, используемый для устранения проблемы с черным экраном HDMI 6-10 поколений (необходимо включить порт HDMI con2)';

  @override
  String get autoGen5264 => 'Параметры видеопамяти/DVMT';

  @override
  String get autoGen5265 => 'Особые параметры Haswell 4-го поколения';

  @override
  String get autoGen5266 =>
      'Патч-кандидат на экран высокого разрешения Ivy Bridge 3-го поколения';

  @override
  String get autoGen5267 =>
      'Патч-кандидат на экран высокого разрешения Sandy Bridge 2-го поколения';

  @override
  String get autoGen5268 =>
      'Кандидатский патч для ноутбуков Arrandale 1-го поколения.';

  @override
  String get autoGen5269 => 'Ремонт HDMI/интерфейса';

  @override
  String get autoGen5270 => 'Исправление Ледяного озера 10-го поколения.';

  @override
  String get autoGen5271 => 'Универсальное исправление';

  @override
  String get autoGen5272 =>
      'Патч для экрана высокого разрешения ноутбука Ivy Bridge (разрешение 1600x900 и выше)';

  @override
  String get autoGen5273 =>
      'Включите исправление типа HDMI для интерфейса con0, чтобы исправить черный экран HDMI 6-го и 10-го поколения, фиолетовый экран и проблемы со звуком.';

  @override
  String get autoGen5274 =>
      'Включите исправление типа HDMI для интерфейса con1, чтобы исправить черный экран HDMI 6-го и 10-го поколения, фиолетовый экран и проблемы со звуком.';

  @override
  String get autoGen5275 =>
      'Включите исправление типа HDMI для интерфейса con2, чтобы исправить черный экран HDMI 6-го и 10-го поколения, фиолетовый экран и проблемы со звуком.';

  @override
  String get autoGen5276 =>
      'Ошибка формата alc_codec.json: корневой узел должен быть Map<String, Dynamic>';

  @override
  String get autoGen5277 =>
      'Включите -v для запуска кода (удобно находить ошибки, когда код зависает, подходит для этапов отладки и загрузки)';

  @override
  String get autoGen5278 =>
      'Для системы Mac удобно печатать больше информации о символах при сбое ядра, что полезно при устранении неполадок. Этот параметр обычно используется с параметром debug=0x100 (настоятельно рекомендуется проверить его при первой отладке и загрузке)';

  @override
  String get autoGen5279 =>
      'Запретить автоматический перезапуск при сбое ядра, что упрощает просмотр журналов сбоев Panic (настоятельно рекомендуется проверить это при отладке и первой загрузке)';

  @override
  String get autoGen5280 =>
      'Отключите функцию сторожевого таймера, чтобы предотвратить случайный запуск аварийного перезапуска (применимо для отладки загрузки).';

  @override
  String get autoGen5281 =>
      'Отключите рандомизацию адресного пространства ядра (KASLR), чтобы гарантировать, что ядро ​​и kext (расширение ядра) загружаются в одну и ту же фиксированную карту памяти, чтобы избежать сбоев ядра при раннем запуске, вызванных конфликтами памяти, вызванными случайными значениями слайдов (применимо для отладки загрузки).';

  @override
  String get autoGen5282 =>
      'Пропустите проверку модели при первом запуске macOS, чтобы избежать символов запрета из-за слишком низкого или слишком высокого SMBIOS, и убедитесь, что система может загружаться нормально (обратите внимание, что этот параметр не может пропустить проверку модели во время установки. Во время установки появится сообщение, подобное «macOS не поддерживается». В это время вы можете изменить SMBIOS на более высокий или более низкий уровень для поддержки новой или старой системы)';

  @override
  String get autoGen5283 =>
      'Этот параметр применим для отключения AMFI, относительно новых видеокарт (таких как HD4000 и выше, GT710 и других ядер Kepler и выше) или драйверов WiFi. Обратите внимание: не используйте его одновременно с параметром amfi_get_out_of_my_way=0x1! (Этот параметр вступит в силу только в том случае, если SIP отключен, и этот параметр будет автоматически удален после включения SIP)';

  @override
  String get autoGen5284 =>
      'Убедитесь, что файл AMFIPass.kext правильно включен и активирован в последней версии системы macOS Tahoe 26, чтобы продолжать обходить проверки безопасности AMFI (AMFI Disabled). (Примечание: 1. Этот параметр нельзя использовать одновременно с параметром отключения AMFI, и этот параметр необходимо использовать с AMFIPass.kext. 2. Этот параметр обычно используется только в последних системах, не добавляйте его без необходимости)';

  @override
  String get autoGen5285 =>
      'Этот параметр применим, когда AMFI отключен, используются старые платформы, старые видеокарты (например, GT240) или драйверы WiFi. Обратите внимание: не следует одновременно использовать параметр amfi=0x80! (Он вступает в силу только тогда, когда SIP отключен, и этот параметр автоматически удаляется после включения SIP)';

  @override
  String get autoGen5286 =>
      'Исправлена ​​проблема сбоя некоторых приложений (например: Baidu Netdisk) после отключения AMFI (она вступит в силу только в том случае, если SIP отключен, и этот параметр будет автоматически удален после включения SIP).';

  @override
  String get autoGen5287 =>
      'Устраните проблемы, которые могут возникнуть в последней версии системы (в основном в бета-версии) (исключение системного драйвера, например: внезапная неисправность звуковой карты, Bluetooth, частоты процессора и т. д. Настоятельно рекомендуется проверить это при использовании последней бета-версии системы)';

  @override
  String get autoGen5288 =>
      'Включите только 1 ядро ​​ЦП (применимо к X58, X79, X99, X299 и другим сбоям ядра ЦП многоядерного сервера, ранним этапам установки и отладки)';

  @override
  String get autoGen5289 =>
      'Отключите VT-d (отключите IOMMU, вы можете проверить это, когда BIOS не отключает VT-d), чтобы решить проблему зависания некоторых материнских плат после запуска или входа в систему.';

  @override
  String get autoGen5290 =>
      'Отключите загрузку прошивки Apple Graphics, чтобы избежать зависания из-за сбоя загрузки прошивки или цикла повторных попыток во время запуска (применимо только к графике Intel).';

  @override
  String get autoGen5291 =>
      'Отключить основной дисплей Intel (рекомендуется проверить, если основной дисплей не может управляться и ускоренное жесткое декодирование не поддерживается)';

  @override
  String get autoGen5292 =>
      'Отключите независимую графику (обычно, когда независимая видеокарта Intel с двумя графическими процессорами для ноутбуков [обычно используется в картах N] не может управляться, рекомендуется проверить это)';

  @override
  String get autoGen5293 =>
      'Отключить драйвер NVIDIA (применимо только при отладке несовместимых карт N)';

  @override
  String get autoGen5294 =>
      'Отключите ускорение основной графики Intel (например: при использовании OCLP и невозможности нормально запуститься после установки патча основной графики, вы можете проверить это, без ускорения, только для отладки)';

  @override
  String get autoGen5295 =>
      'Восстановите и улучшите производительность основного дисплея Intel (например: устраните проблему с кодировкой 4K hevc основного дисплея, разрешением и частотой кадров, не достигающими идеальных значений).';

  @override
  String get autoGen5296 =>
      'Исправлена ​​проблема с максимальным значением скорости соединения дисплея Intel Core, приводившая к прямому сбою при включении экрана ((особенно на Skylake, Kaby Lake, Coffee Lake, Comet Lake, черный экран и отсутствие сигнала, не достижение ожидаемого разрешения 4K и т. д.)';

  @override
  String get autoGen5297 =>
      'Исправьте проблему с разрешением основного дисплея, принудительно включите «переопределение максимальной частоты пикселей» IGPU и снимите разрешение по умолчанию, частоту обновления и другие ограничения macOS.';

  @override
  String get autoGen5298 =>
      'Устранена проблема с черным экраном 4K на выходе HDMI на некоторых ноутбуках (обычно применимо к ноутбукам, таким как ThinkPad P71/7700HQ/HD630/4K, застрявшим в `giOScreenLockState3`)';

  @override
  String get autoGen5299 =>
      'Исправлена ​​проблема сбоя ядра, вызванная низкой частотой Core Display Clock (CDCLK) на платформе Ice Lake 10-го поколения.';

  @override
  String get autoGen5300 =>
      'Исправлена ​​проблема сбоя ядра на платформе Ice Lake 10-го поколения, вызванная неправильным расчетом драйвером размера предварительно выделенной памяти DVMT.';

  @override
  String get autoGen5301 =>
      'Исправлена ​​проблема, из-за которой экран на платформе Ice Lake 10-го поколения оставался неизменным в течение 7–15 секунд при включении ноутбука.';

  @override
  String get autoGen5302 =>
      'Отключите iGPU (основную графику), чтобы загрузить модуль телеметрии во время процесса запуска. Некоторые ноутбуки (особенно Chromebook) могут привести к зависанию системы на этапе запуска при загрузке этого модуля (применимо к ноутбукам Intel Skylake 6-го поколения и выше).';

  @override
  String get autoGen5303 =>
      'Исправьте регистр подсветки на macOS Ventura 13.4 и ниже, платформах ноутбуков KBL 7-го поколения, CFL 8-го и 9-го поколений, а также устраните проблему черного экрана или темного экрана, продолжающегося в течение 3 минут (применимо к ноутбукам).';

  @override
  String get autoGen5304 =>
      'Исправьте регистр подсветки на macOS Ventura 13.4 и более поздних версиях, платформах ноутбуков KBL 7-го поколения, CFL 8-го и 9-го поколений, а также устраните проблему черного экрана или темного экрана, продолжающегося в течение 3 минут (применимо к ноутбукам).';

  @override
  String get autoGen5305 =>
      'Отрегулируйте настройки ползунка яркости (ползунка яркости), чтобы сделать переходы более плавными и естественными для улучшения взаимодействия с пользователем (применимо к ноутбукам)';

  @override
  String get autoGen5306 =>
      'Нарисуйте логотип Apple на втором этапе запуска вместо копирования буфера кадра. При подключении внешнего монитора плавный переход от индикатора выполнения к рабочему столу входа в систему. В некоторых случаях это может решить проблему черного экрана при входе в систему. В то же время полезно подключать и отключать кабель монитора, чтобы включить экран.';

  @override
  String get autoGen5307 =>
      'Устранена проблема начала конфигурации ACPI для платформ, таких как X58,';

  @override
  String get autoGen5308 =>
      'Устранена проблема начала конфигурации ACPI для платформ, таких как X58,';

  @override
  String get autoGen5309 =>
      'Исправлена ​​проблема аппаратной поддержки управления цифровыми правами (DRM) на графических процессорах AMD (позволяет воспроизводить цифровой контент с защитой DRM, например высококачественное видео, предоставляемое потоковыми сервисами, на поддерживаемых графических процессорах AMD).';

  @override
  String get autoGen5310 =>
      'Отключить ускорение видеокарты ATI и AMD (например: при использовании OCLP и видеокарта не может нормально запуститься после исправления, вы можете проверить это, ускорения нет, только для отладки)';

  @override
  String get autoGen5311 =>
      'Ремонт HD7750, HD7850 (основное ядро ​​- серии GCN HD77XX, HD78XX, HD79XX) и других старых искажений экрана A-карты, желтого экрана и других ненормальных проблем с отображением.';

  @override
  String get autoGen5312 =>
      'Устраните черный экран или проблемы с ненормальным отображением, которые могут быть вызваны некоторыми видеокартами, полностью игнорируя ограничения или настройки AppleGraphicsDevicePolicy.kext на видеокарте. Если вы не уверены в конкретных ограничениях, избегайте проблем с отображением или появления черного экрана, вызванных несовместимыми конфигурациями оборудования (например, определенным идентификатором платы). Обратите внимание на этот параметр, который вступит в силу только при использовании с WhateverGreen.kext. Для карт A без драйверов можно удалить драйвер WhateverGreen.kext, поэтому добавлять этот параметр не требуется.';

  @override
  String get autoGen5313 =>
      'Устраните проблему черного экрана при запуске видеокарт серии AMD Navi Core RX5XXX, RX6XXX (например: RX5500, RX5600, RX5700, RX6600, RX6800, RX6900 и т. д.), замените board-id на board-ix и обойдите некоторые ограничения AppleGraphicsDevicePolicy. Примечание. 1. Это вступит в силу только при использовании с WhateverGreen.kext. 2. BIOS Отключите последовательный/COM-порт в настройках SuperIO. Для карт A без драйверов можно удалить драйвер WhateverGreen.kext, поэтому добавлять этот параметр не требуется.';

  @override
  String get autoGen5314 =>
      'Устраните проблему с черным экраном после выхода из спящего режима для некоторых видеокарт, таких как RX470 и RX570, отключите проверку идентификатора платы в AppleGraphicsDevicePolicy, а также исправьте черный экран или проблемы с ненормальным отображением, которые могут быть вызваны некоторыми видеокартами. Обратите внимание, что этот параметр вступит в силу только при использовании с WhateverGreen.kext. Для карт A без драйверов драйвер WhateverGreen.kext можно удалить, поэтому добавлять этот параметр не требуется.';

  @override
  String get autoGen5315 =>
      'Ремонт платформ Intel 3-го поколения и ниже. Серии AMD RX5XX (например: RX560, RX570, RX580), серии AMD RX5XXX, RX6XXX (например: RX5500, RX6600) без драйверов имеют проблему с черным экраном в системах Ventura и выше (Примечание: вам необходимо использовать OCLP для исправления видеокарты после входа в систему! После исправления видеокарты удалите параметр загрузки или используйте альтернативную конфигурацию после публикации в каталоге EFI, чтобы переименовать конфигурацию, и перезапустите, чтобы управлять видеокартой!)';

  @override
  String get autoGen5316 =>
      'Исправьте официально неподдерживаемые видеокарты AMD (например: ядро ​​RX550 Lexa) для поддержки аппаратного кодирования видео VDA.';

  @override
  String get autoGen5317 =>
      'Ремонт старой карты N с архитектурой Fermi, Maxwell, Pascal (например: GT610, GTX750, GTX960, GTX1050) Проблема с драйвером системной видеокарты BigSur 11 или выше (Примечание: вам необходимо использовать OCLP для исправления видеокарты после входа в систему!!! Этот параметр не требуется для ядра Kepler!!!)';

  @override
  String get autoGen5318 =>
      'Исправлена ​​проблема низкой скорости некоторых беспроводных сетевых карт Broadcom (измените код страны Broadcom WiFi на Гонконг, вы также можете изменить канал маршрутизатора, чтобы улучшить его)';

  @override
  String get autoGen5319 =>
      'Исправить код шомпола, проблему повреждения симулятора SMC.';

  @override
  String get autoGen5320 =>
      'Устраните проблему обновления OTA системы macOS после отключения SIP (защита целостности системы) или SecureBootModel (модель безопасности), а также устраните проблему отображения пользовательского имени процессора.';

  @override
  String get autoGen5321 =>
      'Избегайте проблем с перезапуском устройства после перехода в спящий режим, что упрощает получение журналов сбоев ядра и устранение проблем со сном.';

  @override
  String get autoGen5322 =>
      'Улучшите идентификацию топологии и планирование процессоров Intel 12-го поколения и более поздних версий с большим и малым ядром. Улучшение производительности не гарантировано. Рекомендуется включить его после фактического тестирования (обратите внимание, что его необходимо использовать с CpuTopologyRebuild.kext, чтобы он вступил в силу).';

  @override
  String get autoGen5323 =>
      'Полностью отключите режим Darkwake и позвольте системе перейти в традиционный спящий режим. В основном он используется для устранения таких проблем, как пробуждение при черном экране и автоматическое пробуждение.';

  @override
  String get autoGen5324 =>
      'Отключите режим ожидания рендеринга iGPU RC6 и устраните проблему паники ядра NVMe, вызванную отображением ядра RC6 во время сна.';

  @override
  String get autoGen5325 =>
      'Включить ШИМ-управление подсветкой для видеокарт AMD Radeon RX серии 5000';

  @override
  String get autoGen5326 =>
      'Восстановите и исправьте отображение выхода интерфейса DVI старых карт A (290X, 370 и т. д.).';

  @override
  String get autoGen5327 =>
      'Заставьте сенсорную панель типа I2C работать в режиме опроса вместо режима, управляемого прерываниями (режим прерываний обычно требует настройки SSDT, что относительно сложно. Иногда проблему непригодности сенсорной панели I2C можно решить (ее необходимо использовать с драйвером VoodooI2C)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (Некоторые материнские платы и встроенное ПО могут иметь конфликты или проблемы несовместимости при работе с областью MMIO. Включение этой опции может помочь разрешить эти конфликты и улучшить совместимость и стабильность системы. Эта опция обычно сочетается с версией OpenCore Debug для настройки MMIO для решения проблемы EB карты, вызванной проблемами с памятью на некоторых материнских платах (например: некоторые материнские платы с процессорами серии X58, X79, X99 и AMD 7000))';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (Рекомендуется проверять на прошивках, не поддерживающих таблицу атрибутов памяти (MAT), особенно на OEM-прошивках. После включения защита от записи в регистре CR0 будет удалена во время выполнения, чтобы обеспечить нормальную запись NVRAM. Обычно применимо к платформам до 7-го поколения)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (защищает службы UEFI от перезаписи прошивкой, обычно используется для устранения проблем с EB карты, вызванных DevirtualiseMmio и т. д. Рекомендуется проверить его на материнских платах Z390, Z490 и Ice Lake 10-го поколения)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (устанавливает непрерывную виртуальную память для использования OC и сопоставляет ее с распределенной физической памятью. Примечание. Не рекомендуется проверять эту опцию на материнских платах Comet Lake ASUS, Gigabyte и AsRock 10-го поколения.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (На прошивках, поддерживающих таблицу атрибутов памяти (MAT), рекомендуется ее проверить. Обычно используется совместно с SyncRuntimePermissions. Этот пункт может конфликтовать с EnableWriteUnprotector. Рекомендуется выбирать один из двух. Обычно применимо к платформам после 8-го поколения, а также применимо к некоторым старым платформам)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (исправляет проблему, связанную с тем, что оборудование не может вводить разрешения при вставке памяти. Обычно эта проблема существует на материнских платах после 2018 года. Если вы не можете войти в Windows из-за этой опции, включите ее. Этот элемент обычно используется вместе с RebuildAppleMemoryMap)';

  @override
  String get autoGen5334 =>
      'ЦП 2-го поколения — гибрид материнской платы 3-го поколения';

  @override
  String get autoGen5335 =>
      'ЦП 3-го поколения - гибрид материнской платы 2-го поколения';

  @override
  String get autoGen5336 =>
      'Завершите установку, пока не управляя основным дисплеем (это поможет избежать проблем с черным экраном и сбоем ядра, вызванных проблемой с кадром буфера основного дисплея)';

  @override
  String get autoGen5337 => 'Поддельный идентификатор устройства';

  @override
  String get autoGen5338 =>
      'Основной дисплей используется только для задач ускорения и вычислений, а не в качестве вывода вывода (независимый вывод вывода видеокарты)';

  @override
  String get autoGen5339 => 'HD3000, HD P3000 и другие основные дисплеи';

  @override
  String get autoGen5340 => 'HD4000, HD P4000 и другие основные дисплеи';

  @override
  String get autoGen5341 =>
      'HD4400, HD4600, HD P4600 и другие основные дисплеи';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 и другие основные дисплеи';

  @override
  String get autoGen5343 =>
      'Основной дисплей HD5600 (P6200, P6300 можно подделать)';

  @override
  String get autoGen5344 => 'HD6000, Iris 6100 и другие основные дисплеи';

  @override
  String get autoGen5345 =>
      'HD520, HD530 и другие поддельные базовые дисплеи HD620 (применимо к системам Ventura и выше)';

  @override
  String get autoGen5346 =>
      'HD520, HD530 и другие поддельные основные дисплеи HD620 (применимо к системам Ventura и выше, альтернатива)';

  @override
  String get autoGen5347 =>
      'HD530, HD P530 и другие базовые дисплеи серии 500 (применимо к системам Monterey и ниже)';

  @override
  String get autoGen5348 => 'HD 630, HD P630 и другие основные дисплеи';

  @override
  String get autoGen5349 =>
      'HD 630, P630 и другие поддельные основные дисплеи UHD630 (вариант 1)';

  @override
  String get autoGen5350 =>
      'HD 630, P630 и другие поддельные основные дисплеи UHD630 (вариант 2)';

  @override
  String get autoGen5351 =>
      'Первое решение для вывода ядерного дисплея UHD 630';

  @override
  String get autoGen5352 => 'Корпус вывода основного дисплея UHD 630 2';

  @override
  String get autoGen5353 =>
      'Intel HD Graphics (например: i3 380M, i5 480M поставляется со встроенным основным дисплеем)';

  @override
  String get autoGen5354 =>
      'Выходной дисплей основного дисплея HD3000, подходит для разрешений 1366x768 и ниже)';

  @override
  String get autoGen5355 => 'Включить поддержку разрешений выше 1600X900.';

  @override
  String get autoGen5356 =>
      'Выходной дисплей ядерного дисплея HD3000, подходит для разрешений 1600x900 и выше)';

  @override
  String get autoGen5357 =>
      'Первое решение драйвера основного дисплея HD4000, подходящее для разрешения 1366x768 и ниже, метод соединения LVDS';

  @override
  String get autoGen5358 =>
      'Второе решение драйвера основного дисплея HD4000, подходит для режима связи LVDS с разрешением 1600x900 и выше, многоэкранный вывод может потребовать дополнительных конфигураций исправлений)';

  @override
  String get autoGen5359 =>
      'Третье решение основного драйвера дисплея HD4000, подходит для мониторов с подключением eDP)';

  @override
  String get autoGen5360 => 'Основной дисплей HD4200, HD4400, HD4600';

  @override
  String get autoGen5361 => 'Основной дисплей HD5000, HD5100, HD5200';

  @override
  String get autoGen5362 => 'Основной дисплей HD5500';

  @override
  String get autoGen5363 => 'Основной дисплей HD5600';

  @override
  String get autoGen5364 => 'Основной дисплей HD6000';

  @override
  String get autoGen5365 =>
      'HD520, HD530 и другие поддельные основные дисплеи HD620 (для систем Ventura и выше)';

  @override
  String get autoGen5366 =>
      'HD 515, HD 520, HD 530, HD 540, HD 550, основной дисплей P530 (применимо к системам Monterey и ниже)';

  @override
  String get autoGen5367 => 'Альтернатива ядерному дисплею HD 515';

  @override
  String get autoGen5368 => 'Основной дисплей HD 510';

  @override
  String get autoGen5369 =>
      'HD 615, HD 620, HD 630, HD 640, HD 650 основной дисплей';

  @override
  String get autoGen5370 => 'Альтернативный основной дисплей HD/UHD 620';

  @override
  String get autoGen5371 => 'UHD 617, основной дисплей UHD 620';

  @override
  String get autoGen5372 => 'Основной дисплей UHD 630';

  @override
  String get autoGen5373 => 'Основной дисплей UHD 620';

  @override
  String get autoGen5374 => 'Основной дисплей Intel lris Plus 655';

  @override
  String get autoGen5375 => 'Основной дисплей серии G4/G7';

  @override
  String get autoGen5376 => 'Дисплей вывода ядерного дисплея HD3000';

  @override
  String get autoGen5377 => 'HD4000 ядерный дисплей выходной дисплей';

  @override
  String get autoGen5378 =>
      'HD4200, HD4400, HD4600, HD P4600 и другие основные дисплеи (рекомендуется проверить специальный патч для основного дисплея 4-го поколения в расширенной конфигурации основного дисплея, и незначительные проблемы, которые могут возникнуть, исправлены)';

  @override
  String get autoGen5379 => 'Основной дисплей HD 515';

  @override
  String get autoGen5380 => 'Основной дисплей HD 520/530';

  @override
  String get autoGen5381 => 'Основной дисплей HD 540/550';

  @override
  String get autoGen5382 => 'Основной дисплей HD 580';

  @override
  String get autoGen5383 =>
      'Основной дисплей HD P530 (например, e3 1245v5 поставляется со встроенным основным дисплеем)';

  @override
  String get autoGen5384 => 'Основной дисплей HD 615';

  @override
  String get autoGen5385 => 'HD 630, основной дисплей HD P630';

  @override
  String get autoGen5386 => 'Основной дисплей HD 640/650';

  @override
  String get autoGen5387 => 'Основной дисплей HD/UHD 620';

  @override
  String get autoGen5388 => 'Основной дисплей UHD 620/630';

  @override
  String get autoGen5389 => 'Основной дисплей UHD 655';

  @override
  String get autoGen5390 =>
      'Переименуйте GPRW в XPRW, чтобы устранить проблему мгновенного пробуждения (примечание: это может привести к тому, что USB-клавиатура не сможет вывести устройство из спящего режима, вы можете разбудить его с помощью клавиши питания)';

  @override
  String get autoGen5391 =>
      'Переименуйте UPRW в XPRW, чтобы устранить проблему мгновенного пробуждения (примечание: это может привести к тому, что USB-клавиатура не сможет вывести устройство из спящего режима, вы можете разбудить его с помощью клавиши питания)';

  @override
  String get autoGen5392 =>
      'Включите устройства GPI0 для поддержки трекпадов I2C.';

  @override
  String get autoGen5393 =>
      'Необходимый драйвер для расширений ядра macOS, который в основном обеспечивает масштабируемость и совместимость с macOS, что позволяет другим разработчикам писать расширения ядра для расширения macOS.';

  @override
  String get autoGen5394 =>
      'Например, WhatseverGreen, AppleALC, VirtualSMC и т. д. могут реализовывать различные модификации и улучшения macOS через Lilu.kext, например поддержку различных видеокарт, звуковых карт, управление виртуальными машинами и т. д.';

  @override
  String get autoGen5395 =>
      'Lilu.kext обычно является первым загружаемым расширением ядра macOS, поскольку другим плагинам может потребоваться его функциональность. Это гарантирует правильную загрузку плагина при запуске macOS.';

  @override
  String get autoGen5396 => 'Основные базовые драйверы';

  @override
  String get autoGen5397 =>
      'На реальном оборудовании Apple SMC отвечает за управление функциями управления системой, такими как аппаратные датчики, управление вентиляторами, управление питанием, датчики температуры и состояние батареи. VirtualSMC предоставляет эти функции на оборудовании сторонних производителей, чтобы гарантировать правильную работу macOS в этих системах.';

  @override
  String get autoGen5398 =>
      'Часто используется в сочетании с другими расширениями ядра, такими как Lilu.kext, WhateverGreen и т. д., для создания почти реальной среды Mac на оборудовании сторонних производителей.';

  @override
  String get autoGen5399 =>
      'Драйвер отсутствует, и macOS не может работать должным образом.';

  @override
  String get autoGen5400 =>
      'В основном он обеспечивает поддержку графических драйверов графического процессора. Большинство из них настоятельно рекомендуется проверить (модели MacPro7, 1 и пользователи независимой графики AMD RX460, RX560 и выше могут снять флажок). Обычно конфликтует с драйверами NootRX и NootedRed. Не выбирайте их одновременно на этапе установки.';

  @override
  String get autoGen5401 =>
      'Поддерживает различные видеокарты, включая видеокарты NVIDIA, AMD и Intel. Это расширение может исправить и настроить правильный фреймбуфер, чтобы отображение и разрешение работали правильно.';

  @override
  String get autoGen5402 =>
      'Обеспечивает поддержку подключений HDMI и DisplayPort (DP) для обеспечения правильной работы аудио- и видеовыходов.';

  @override
  String get autoGen5403 =>
      'Используйте AppleALC для имитации встроенной звуковой карты (относительно идеальный вариант, предпочтительный вариант)';

  @override
  String get autoGen5404 =>
      'Используйте универсальную звуковую карту VoodooHDA (загружается во время загрузки, поддерживает только macOS BigSur 11.2.3 и ниже. Для более высоких версий macOS необходимо добавить этот драйвер в расширение ядра системы. Согласно тесту автора, наибольшая поддержка поддерживается официальной версией macOS Tahoe 26.x)';

  @override
  String get autoGen5405 =>
      'Исправление совместимости контроллера USB 3.0 для старых платформ или платформ AMD.';

  @override
  String get autoGen5406 =>
      'Устранена проблема с перезапуском, вызванная управлением питанием ЦП на старых платформах до Intel 3-го поколения (отображаемая в виде журнала сбоев ядра AppleIntelCPUPowerManagement, зависшего логотипа загрузки, перезагрузки сразу после входа в систему и т. д.).';

  @override
  String get autoGen5407 =>
      'Исправить управление питанием процессора серии AMD Ryzen (применимо только к серии AMD Ryzen; если из-за управления питанием возникают проблемы с перезапуском, вы можете снять флажок)';

  @override
  String get autoGen5408 =>
      'Решение с аккумулятором 1 (применимо к ноутбукам третьего поколения и более старым платформам)';

  @override
  String get autoGen5409 =>
      'Решение с аккумулятором 2 (применимо к ноутбукам третьего поколения и более новым платформам)';

  @override
  String get autoGen5410 =>
      'Датчик внешней освещенности (автоматическая яркость экрана), если у вас нет датчика внешней освещенности, не используйте его, иначе это может вызвать проблемы';

  @override
  String get autoGen5411 =>
      'Управление вентилятором ноутбука Asus, управление питанием, оптимизация других системных датчиков и т. д. не рекомендуются для использования лицами, не являющимися производителями Asus.';

  @override
  String get autoGen5412 =>
      'Управление вентилятором ноутбука Lenovo, управление питанием, оптимизация других системных датчиков и т. д. не рекомендуются для компьютеров сторонних производителей.';

  @override
  String get autoGen5413 =>
      'Специальный датчик для ноутбуков Dell для более точного мониторинга и управления вентиляторами. Не рекомендуется для компьютеров сторонних производителей.';

  @override
  String get autoGen5414 =>
      'Позволяет передавать информацию датчиков процессоров AMD (например, температуру, энергопотребление, частоту и т. д.) инструментам мониторинга macOS. Этот драйвер поддерживает процессоры серии AMD Ryzen и некоторые процессоры серии AMD FX. Другие процессоры AMD могут вызвать непредвиденные проблемы. В то же время на некоторых платформах систем Sequoia 15 и выше могут возникнуть проблемы совместимости, поэтому выбирайте внимательно.';

  @override
  String get autoGen5415 =>
      'Используется для поддержки RX6700, RX6750XT, RX6750GRE и других официально неподдерживаемых независимых видеокарт серии RX6XXX. Возник конфликт с драйвером WhatseverGreen. Не выбирайте оба на этапе установки.';

  @override
  String get autoGen5416 =>
      'Поддерживает Navi 21 (Big Sur и выше), Navi 22/23 (Monterey и выше), а также поддерживает RX6650, RX6950 и другие видеокарты.';

  @override
  String get autoGen5417 =>
      'Добавление этого драйвера при первой установке macOS может привести к невозможности входа в систему. Рекомендуется добавить его после завершения установки.';

  @override
  String get autoGen5418 =>
      'Устранена проблема медленности, вызванная тем, что процессор AMD Ryzen серий 2000–5000 с основным дисплеем Edge и браузером Chrome не отключают аппаратное ускорение (применимо только к серии AMD Ryzen, в основном сокращается использование рендеринга OpenGL, нормальное использование QQ, браузера Chrome. Использование этого драйвера может привести к неправильной работе других приложений, принимайте собственное решение).';

  @override
  String get autoGen5419 =>
      'Ремонт чтения батареи, исправление некоторых проблем с отображением батареи';

  @override
  String get autoGen5420 =>
      'Улучшена совместимость с твердотельными накопителями NVMe сторонних производителей и снижено энергопотребление в режиме ожидания.';

  @override
  String get autoGen5421 =>
      'Несовместимые диски NVMe, занесенные в черный список от Samsung и других производителей, не могут эффективно решить проблему сбоя по истечении времени ожидания.';

  @override
  String get autoGen5422 =>
      'Использование этого драйвера с твердотельным накопителем NVMe с хорошей совместимостью может привести к сбою ядра, поэтому большую часть времени используйте его с осторожностью.';

  @override
  String get autoGen5423 =>
      'Расширьте возможности обхода или отключения AMFI. Примечание. Добавление этого драйвера может привести к сбою или сбою открытия некоторых приложений. В это время вы можете попробовать удалить драйвер и использовать только параметры запуска AMFI (например, amfi=0x80).';

  @override
  String get autoGen5424 =>
      'Исправлена ​​проблема, из-за которой твердотельные накопители NVMe распознавались как внешние диски.';

  @override
  String get autoGen5425 =>
      'Разблокируйте универсальные элементы управления, навигацию и другие функции на неподдерживаемых компьютерах Mac.';

  @override
  String get autoGen5426 =>
      'Устранение распространенных проблем, связанных с гибернацией и сном.';

  @override
  String get autoGen5427 =>
      'Разрешить macOS использовать функцию привязки устройства Android через USB-соединение.';

  @override
  String get autoGen5428 =>
      'Драйвер переменной частоты ЦП, в основном обеспечивает поддержку преобразования частоты MacPro7,1 для платформ 11-го поколения и выше.';

  @override
  String get autoGen5429 =>
      'CPUFriend оснащен драйвером данных для предоставления данных преобразования частоты процессора для конкретных моделей.';

  @override
  String get autoGen5430 =>
      'Оптимизация размера процессора Intel 12-го поколения и более поздних версий и конфигураций ядер.';

  @override
  String get autoGen5431 =>
      'Это может улучшить одноядерную производительность, но может привести к снижению многоядерной производительности. Это применимо только к платформам 12-го поколения и выше.';

  @override
  String get autoGen5432 =>
      'Первое решение для синхронизации TSC ЦП, обычно предпочтительнее';

  @override
  String get autoGen5433 =>
      'Обычно используется в многоядерных платформах X79, X99, X299 и AMD.';

  @override
  String get autoGen5434 =>
      'Используется для устранения таких проблем, как зависание работы, зависание логотипа загрузки, ненормальная синхронизация аудио и видео, невозможность выхода из спящего режима и т. д.';

  @override
  String get autoGen5435 =>
      'Решение для синхронизации CPU TSC 2, обычно используемое на AMD Ryzen и некоторых платформах Intel.';

  @override
  String get autoGen5436 =>
      'Используется для устранения таких проблем, как задержки в работе, случайные сбои, нарушения синхронизации аудио и видео, сбои пробуждения во время сна и т. д.';

  @override
  String get autoGen5437 =>
      'Устраните проблему многоядерной синхронизации часов процессора платформы AMD Ryzen (применимо только к серии AMD Ryzen, используется для устранения таких проблем, как задержка в работе, зависание логотипа загрузки и т. д. Добавление этого драйвера может вызвать непредвиденные проблемы, выбирайте внимательно)';

  @override
  String get autoGen5438 =>
      'Третье решение синхронизации CPU TSC, обычно используемое на старых платформах Intel и старых системах macOS.';

  @override
  String get autoGen5439 =>
      'Подходит для многоядерных X79, X99, X299 и других платформ, используется для устранения таких проблем, как задержка работы и застревание логотипа загрузки.';

  @override
  String get autoGen5440 =>
      'Исправлены некоторые проблемы со звуком Intel Core Display HDMI.';

  @override
  String get autoGen5441 =>
      'Устранить проблему невозможности входа в Apple ID и iCloud, обычно используемые для ноутбуков без локальных проводных сетевых карт.';

  @override
  String get autoGen5442 =>
      'Устраните конфликты между новой платформой macOS AppleRTC и BIOS ПК, такие как RTC, вызывающие зависания, внезапные перезапуски или внезапные выходы из спящего режима.';

  @override
  String get autoGen5443 =>
      'Драйвер клавиатуры и мыши типа интерфейса PS (драйвер клавиатуры и мыши с круглым портом PS для материнской платы настольного компьютера)';

  @override
  String get autoGen5444 =>
      'Драйвер клавиатуры типа интерфейса PS (драйвер клавиатуры с круглым портом PS для материнской платы настольного компьютера)';

  @override
  String get autoGen5445 =>
      'Драйвер мыши типа интерфейса PS (драйвер мыши с круглым портом PS для материнской платы настольного компьютера)';

  @override
  String get autoGen5446 =>
      'Драйвер сенсорной панели специальной клавиатуры Microsoft Surface';

  @override
  String get autoGen5447 => 'Исправление сочетания клавиш яркости';

  @override
  String get autoGen5448 =>
      'Оптимизируйте производительность видеокарты AMD Radeon, но некоторые сценарии могут привести к сбою или невозможности запуска системы, поэтому проверьте внимательно.';

  @override
  String get autoGen5449 =>
      'Разрешить RadeonGadget.app считывать температуру графического процессора видеокарты AMD и другую информацию';

  @override
  String get autoGen5450 =>
      'Экспортируйте температуру графического процессора AMD и другую информацию в VirtualSMC, чтобы инструменты мониторинга могли ее прочитать.';

  @override
  String get autoGen5451 =>
      'Исправлены проблемы совместимости USB-контроллера на старых платформах, таких как AMD FM1/FM2/AM3.';

  @override
  String get autoGen5452 =>
      'Универсальное решение для внедрения USB, выбор по умолчанию, если USB не настроен';

  @override
  String get autoGen5453 =>
      'Решение USBToolBox, обычно используемое с настроенным UTBMap.kext';

  @override
  String get autoGen5454 =>
      'Устраните проблему USB3.0 на обновленных платформах Intel 3-го поколения и более поздних (требуется для наборов микросхем серии 300 (H370, B360, H310, Z390 [не требуется для систем 10.14 и выше], материнских плат Intel X79, X99, ASRock [кроме B460/Z490+])';

  @override
  String get autoGen5455 =>
      'Исправление проблем совместимости EHCI USB2.0 на AMD FM1, FM2, AM3 и других старых платформах.';

  @override
  String get autoGen5456 =>
      'Исправление проблем совместимости XHCI USB3.0 на AMD FM1, FM2, AM3 и других старых платформах.';

  @override
  String get autoGen5457 =>
      'Исправлено управление питанием ЦП платформ Intel 3-го поколения и более старых систем Ventura 13 и выше.';

  @override
  String get autoGen5458 =>
      'Драйвер устройства чтения SD-карт серии Realtek (используется с RealtekCardReaderFriend)';

  @override
  String get autoGen5459 =>
      'Драйвер, поддерживающий RealtekCardReader, для улучшения совместимости устройств чтения карт Realtek';

  @override
  String get autoGen5460 =>
      'Драйвер устройства карты памяти SDHC, поддерживает карты памяти eMMC и MMC.';

  @override
  String get autoGen5461 => 'Драйвер проводной сетевой карты 100M';

  @override
  String get autoGen5462 =>
      'Поддержка сетевых карт RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139.';

  @override
  String get autoGen5463 =>
      'Обычно используется для традиционных старых платформ.';

  @override
  String get autoGen5464 => 'Драйвер гигабитной сетевой карты';

  @override
  String get autoGen5465 =>
      'Поддержка Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V и других сетевых карт.';

  @override
  String get autoGen5466 => 'Драйвер гигабитной проводной сетевой карты';

  @override
  String get autoGen5467 =>
      'Поддерживает BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M и другие сетевые карты.';

  @override
  String get autoGen5468 =>
      'Поддерживает AR8131, AR8132, AR8151, AR8152 и другие сетевые карты.';

  @override
  String get autoGen5469 =>
      'Поддерживает Realtek RTL8111/8168 B/C/D/E/F/G/H, поддерживает сетевые карты Killer E2500 и выше.';

  @override
  String get autoGen5470 =>
      'Драйвер новой версии RealtekRTL8111 может поддерживать только системы 10.13.x и выше.';

  @override
  String get autoGen5471 =>
      'Поддерживает AR816x, AR817x, Killer E220x, Killer E2400 и другие сетевые карты.';

  @override
  String get autoGen5472 =>
      'Драйвер проводной сетевой карты Gigabit (поддержка 2,5G)';

  @override
  String get autoGen5473 =>
      'Поддерживает все IGC-совместимые устройства (i225, i226, i226-V и другие проводные сетевые карты). Идентификатор PCI некоторых устройств может отсутствовать в списке IOPCIMatch. Добавьте его самостоятельно для тестирования.';

  @override
  String get autoGen5474 =>
      'По сравнению с драйвером AppleEthernetE1000 он имеет более высокую производительность и стабильность (i226-V может вызвать панику ядра при использовании AppleEthernetE1000 в системе Монтерей).';

  @override
  String get autoGen5475 =>
      'Поддержка сетевых карт Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 и i211.';

  @override
  String get autoGen5476 =>
      'Могут возникнуть проблемы с нестабильностью, рекомендуется остаться в версии Big Sur и использовать SmallTree.';

  @override
  String get autoGen5477 =>
      'Обычно применимо к системам macOS Monterey 12 и более поздних версий.';

  @override
  String get autoGen5478 =>
      'Поддержка Intel серии 5: 82578LM, 82578LC, 82578DM, 82578DC';

  @override
  String get autoGen5479 => 'Поддержка серий Intel 6 и 7: 82579LM, 82579V';

  @override
  String get autoGen5480 =>
      'Поддержка серий Intel 8 и 9: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3.';

  @override
  String get autoGen5481 =>
      'Поддержка серии Intel 100: I219V, I219LM, I219V2, I219LM2, I219LM3.';

  @override
  String get autoGen5482 => 'Поддержка серии Intel 200: I219LM, I219V';

  @override
  String get autoGen5483 => 'Поддержка Intel серии 300: I219LM, I219V';

  @override
  String get autoGen5484 =>
      'Драйвер поддерживается ацидантерой. OS X 10.6 ~ 10.8 использует IntelSnowMausi';

  @override
  String get autoGen5485 =>
      'Этот драйвер предоставлен Лаурой Мюллер. OS X 10.6 ~ 10.8 использует IntelSnowMausi';

  @override
  String get autoGen5486 =>
      'Старый драйвер RTL8125, поддерживает Ethernet-карты серии Realtek RTL8125.';

  @override
  String get autoGen5487 =>
      'Драйвер проводной сетевой карты Gigabit (поддерживает 2,5G, 5G)';

  @override
  String get autoGen5488 =>
      'Новый драйвер для RTL812x, поддерживает Ethernet-карты серий Realtek RTL8125 и RTL8126.';

  @override
  String get autoGen5489 =>
      'Поддерживаемые модели: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A.';

  @override
  String get autoGen5490 =>
      'Поддерживает проводную сетевую карту Intel i211, эта модель часто встречается на материнских платах AMD.';

  @override
  String get autoGen5491 =>
      'Обычно применимо к macOS Big Sur и более ранним версиям, macOS Monterey может работать нестабильно.';

  @override
  String get autoGen5492 => 'Совместимость: ОС';

  @override
  String get autoGen5493 =>
      'Драйвер проводной сетевой карты 10G (поддержка 10G)';

  @override
  String get autoGen5494 => 'Поддерживает Intel X520,';

  @override
  String get autoGen5495 => 'Поддерживает только системы macOS 10.13 и выше.';

  @override
  String get autoGen5496 =>
      'Рекомендуется отключить WoL в настройках BIOS UEFI.';

  @override
  String get autoGen5497 =>
      'Исправлена ​​проблема, из-за которой дисковая утилита не распознавала диски SATA во время установки систем Catalina 10.15 и более ранних версий.';

  @override
  String get autoGen5498 =>
      'Исправлена ​​проблема, из-за которой Дисковая утилита не распознавала диски SATA в процессе установки систем Big Sur 11 и более поздних версий.';

  @override
  String get autoGen5499 =>
      'Устранение проблем совместимости, связанных с платформой AMD Adobe Family Bucket.';

  @override
  String get autoGen5500 =>
      'Поддерживает macOS High Sierra 10.13 ~ macOS Tathoe 26.x (обычно используется с клиентом HeliPort)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (Примечание: для нормального использования системы Sequoia 15 необходимо установить модифицированную версию OCLP для Intel, прежде чем ее можно будет использовать!!!)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4 и более поздние версии';

  @override
  String get autoGen5503 =>
      'В основном устраняет некоторые проблемы с устройствами Bluetooth (применимо к некоторым устройствам Broadcom и другим USB-устройствам Bluetooth).';

  @override
  String get autoGen5504 =>
      'Qualcomm WiFi, поддержка macOS Big Sur 11.x и более ранних версий';

  @override
  String get autoGen5505 => 'Qualcomm (Атерос)-AR9285';

  @override
  String get autoGen5506 => 'Qualcomm (Атерос)-AR9380';

  @override
  String get autoGen5507 => 'Qualcomm (Атерос)-AR9485';

  @override
  String get autoGen5508 => 'Qualcomm (Атерос)-AR9565';

  @override
  String get autoGen5509 => 'Qualcomm (Атерос)-AR9463';

  @override
  String get autoGen5510 => 'Qualcomm (Атерос)-AR9462';

  @override
  String get autoGen5511 =>
      'Отключите Touch ID, чтобы уменьшить потери системных ресурсов и повысить стабильность.';

  @override
  String get autoGen5512 =>
      'Обычно подходит для ноутбуков с функцией распознавания отпечатков пальцев и ниже macOS Big Sur 11.';

  @override
  String get autoGen5513 =>
      'Политика TRIM настроена по умолчанию (то есть SetApfsTrimTimeout = -1).';

  @override
  String get autoGen5514 =>
      '1. Система APFS выполняет операции TRIM на основе тайм-аута TRIM по умолчанию в macOS, который применим к большинству твердотельных накопителей, поддерживающих TRIM.';

  @override
  String get autoGen5515 =>
      '2. На твердотельных накопителях, поддерживающих TRIM, macOS автоматически управляет выполнением TRIM, что помогает очищать удаленные блоки данных, повышая эффективность записи на твердотельный накопитель, позволяя избежать частого усиления записи и повышая скорость записи.';

  @override
  String get autoGen5516 =>
      '3.TRIM будет регулярно очищать неиспользуемые блоки, чтобы уменьшить износ SSD, тем самым продлевая срок службы SSD.';

  @override
  String get autoGen5517 =>
      '4. Некоторые твердотельные накопители сторонних производителей, которые не полностью поддерживают TRIM, могут испытывать задержки или даже зависания при выполнении TRIM, в результате чего процесс загрузки становится очень медленным.';

  @override
  String get autoGen5518 =>
      'Полностью отключите функцию TRIM (т.е. установите SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => 'Преимущества отключения TRIM:';

  @override
  String get autoGen5520 =>
      '1. Улучшите скорость загрузки. Для твердотельных накопителей сторонних производителей, которые не поддерживают или частично поддерживают TRIM, macOS может вызывать задержки из-за попыток выполнения операций TRIM во время запуска. Отключение TRIM может устранить эту задержку и повысить скорость загрузки.';

  @override
  String get autoGen5521 =>
      '2. Улучшение совместимости. Некоторые твердотельные накопители с плохой совместимостью могут снизить риск нештатных сбоев.';

  @override
  String get autoGen5522 =>
      '3. Продлите срок службы твердотельных накопителей, отличных от TRIM. На твердотельных накопителях, которые не поддерживают TRIM, принудительное включение TRIM может ускорить износ и повлиять на срок службы. Отключение TRIM может продлить срок службы таких SSD.';

  @override
  String get autoGen5523 => 'Недостатки отключения TRIM:';

  @override
  String get autoGen5524 =>
      '1. Производительность SSD снижается. Некоторые твердотельные накопители не имеют механизма сбора мусора TRIM. SSD не может вовремя очистить и пометить свободные блоки после удаления данных, из-за чего может снизиться скорость записи.';

  @override
  String get autoGen5525 =>
      '2. Снижается эффективность управления дисковым пространством. После его отключения контроллеру SSD требуется больше времени и ресурсов для сборки мусора, что может привести к повышенной фрагментации и снижению эффективности управления пространством.';

  @override
  String get autoGen5526 =>
      '3. Сократите срок службы SSD. Для SSD, поддерживающих TRIM, после отключения TRIM SSD не сможет оптимизировать процесс записи, что увеличит износ блоков хранения, тем самым сокращая срок службы SSD, поддерживающего TRIM.';

  @override
  String get autoGen5527 =>
      'Хотя отключение TRIM может привести к некоторому повышению скорости загрузки, для современных твердотельных накопителей, поддерживающих TRIM, рекомендуется оставлять TRIM включенным для обеспечения долгосрочной производительности и стабильности. Это увеличение скорости обычно невелико и оказывает существенное влияние только на некоторые несовместимые твердотельные накопители.';

  @override
  String get autoGen5528 =>
      'Драйвер переменной частоты процессора, здесь в основном обеспечивает поддержку переменной частоты MacPro7,1 с 11 по 14 поколение.';

  @override
  String get autoGen5529 =>
      'Устройство чтения карт памяти Realtek SD и поддерживающий его драйвер';

  @override
  String get autoGen5530 =>
      'Подходит для старых платформ 3-го поколения и ниже, устройств ввода, подключенных по протоколу шины PS/2, таких как клавиатура, мышь, сенсорная панель и т. д. Он может реализовать определенную степень функции мультитач, но поддержка ограничена.';

  @override
  String get autoGen5531 =>
      'Подходит для платформ 3-го поколения и выше, устройств ввода, подключенных на основе протокола шины PS/2, таких как клавиатура, мышь, сенсорная панель и т. д. Обеспечивает поддержку сенсорной панели PS/2 через дополнительный драйвер и может обеспечить определенную степень функции мультитач, но поддержка ограничена.';

  @override
  String get autoGen5532 =>
      'Клавиатура PS2 подходит для тачпадов, сенсорных экранов, датчиков и других устройств ввода, подключенных по протоколу шины I2C. Обеспечивает поддержку мультитач-жестов для имитации естественного сенсорного взаимодействия macOS.';

  @override
  String get autoGen5533 =>
      'Клавиатура PS2, подходит для сенсорной панели Synaptics, подключенной на основе протокола шины RMI4. Сосредоточьтесь на улучшении поддержки устройств Synaptics, обеспечивая возможности мультитач и жестов, аналогичные встроенной сенсорной панели macOS.';

  @override
  String get autoGen5534 =>
      'Клавиатура PS2, подходящая для сенсорных устройств на базе шины I2C и сенсорных панелей Synaptics, использующих протокол RMI4. RMII2C сочетает в себе преимущества VoodooI2C и VoodooRMI.';

  @override
  String get autoGen5535 =>
      'Круглый драйвер клавиатуры и мыши на основе подключения по протоколу шины PS/2.';

  @override
  String get autoGen5536 =>
      'Комбинация выделенной клавиатуры Microsoft Surface, сенсорной панели и драйвера сенсорного экрана.';

  @override
  String get autoGen5537 => 'Серия Broadcom BCM94360 без драйверов';

  @override
  String get autoGen5538 =>
      'Карты Apple AirPort и Fenvi без драйверов, Ventura и ниже не требуют драйверов, а патч поддерживает Sonoma 14 и Sequoia 15! Примечание. В системах Sonoma 14 и выше необходимо установить исправление OCLP, прежде чем их можно будет использовать в обычном режиме! ! !';

  @override
  String get autoGen5539 => 'Серия Broadcom BCM943XX без драйверов';

  @override
  String get autoGen5540 =>
      'Карты, отличные от Apple AirPort и Fenvi, Catalina и ниже, не требуют драйверов, а патч поддерживает Sonoma 14 и Sequoia 15! Примечание. В системах Sonoma 14 и выше необходимо установить исправление OCLP, прежде чем их можно будет использовать в обычном режиме! ! !';

  @override
  String get autoGen5541 => 'Старый Broadcom BCM4331';

  @override
  String get autoGen5542 =>
      'Обратите внимание, что в системах Monterey 12 или выше необходимо использовать исправление OCLP, прежде чем их можно будет использовать в обычном режиме! ! !';

  @override
  String get autoGen5543 => 'Старый Broadcom BCM43224';

  @override
  String get autoGen5544 => 'Драйвер модели Qualcomm (Atheros) WiFi';

  @override
  String get autoGen5545 => 'Ручной вариант Qualcomm WiFi';

  @override
  String get autoGen5546 =>
      'Qualcomm (Atheros) WiFi Big Sur и следующие зависимости';

  @override
  String get autoGen5547 =>
      'В системах macOS Big Sur 11 и более ранних версий используется семейство HS80211 для соответствия драйверам конкретной модели.';

  @override
  String get autoGen5548 =>
      'Зависимости Qualcomm (Atheros) WiFi Monterey и выше';

  @override
  String get autoGen5549 =>
      'В системах macOS Monterey 12 и выше используется комбинация IO80211ElCap.';

  @override
  String get autoGen5550 =>
      'Исправлена ​​проблема с распознаванием батареи в «Системных настройках» для серий Surface Pro 7 и Book 3.';

  @override
  String get autoGen5551 =>
      'Исправлена ​​проблема ошибки POST при запуске часов реального времени на некоторых компьютерах марки HP.';

  @override
  String get autoGen5552 =>
      'Отключите план пробуждения RTC и устраните проблему автоматического пробуждения после сна.';

  @override
  String get autoGen5553 => 'Платформа поколения 0-Пенрин-775';

  @override
  String get autoGen5554 => 'Платформа поколения 1-Lynnfield-1156';

  @override
  String get autoGen5555 => '2-е поколение - платформа Sandy Bridge-1155.';

  @override
  String get autoGen5556 => '3-е поколение – платформа Ivy Bridge-1155.';

  @override
  String get autoGen5557 => 'Платформа 4-го поколения Haswell-1150';

  @override
  String get autoGen5558 => 'Платформа 5-го поколения Broadwell-1150';

  @override
  String get autoGen5559 => '6-е поколение – платформа Skylake-1151.';

  @override
  String get autoGen5560 => 'Платформа 7-го поколения Kaby Lake-1151';

  @override
  String get autoGen5561 => 'Платформа Coffee Lake-1151 8-го поколения';

  @override
  String get autoGen5562 => 'Платформа 9-го поколения Coffee Lake-1151';

  @override
  String get autoGen5563 => 'Платформа Comet Lake-1200 10-го поколения';

  @override
  String get autoGen5564 => 'Платформа Rocket Lake-1200 11-го поколения';

  @override
  String get autoGen5565 => '12-е поколение — платформа «Ольха Лейк-1700».';

  @override
  String get autoGen5566 => '13-е поколение – платформа Raptor Lake-1700.';

  @override
  String get autoGen5567 =>
      '14-е поколение – платформа Raptor Lake Refresh-1700.';

  @override
  String get autoGen5568 => 'Платформа 15-го поколения — Arrow Lake-1851';

  @override
  String get autoGen5569 => 'Блокнот Penryn поколения 0';

  @override
  String get autoGen5570 => 'Ноутбук 1-го поколения Clarksfield&Arrandale';

  @override
  String get autoGen5571 => 'Ноутбук Sandy Bridge 2-го поколения';

  @override
  String get autoGen5572 => 'Ноутбук Ivy Bridge 3-го поколения';

  @override
  String get autoGen5573 => 'Ноутбук Haswell 4-го поколения';

  @override
  String get autoGen5574 => 'Ноутбук Broadwell 5-го поколения';

  @override
  String get autoGen5575 => 'Ноутбук Skylake 6-го поколения';

  @override
  String get autoGen5576 => 'Ноутбук 7-го поколения Kaby Lake';

  @override
  String get autoGen5577 => 'Ноутбук 8-го поколения Coffee Lake';

  @override
  String get autoGen5578 => 'Ноутбук 9-го поколения Coffee Lake';

  @override
  String get autoGen5579 => 'Ноутбук 10-го поколения Comet Lake';

  @override
  String get autoGen5580 => 'Ноутбук 10-го поколения — Ice Lake';

  @override
  String get autoGen5581 => 'Ноутбук 11-го поколения Tiger Lake';

  @override
  String get autoGen5582 => 'Ноутбук 12-го поколения Alder Lake';

  @override
  String get autoGen5583 => 'Ноутбук Raptor Lake 13-го поколения';

  @override
  String get autoGen5584 => 'Ноутбук Raptor Lake Refresh 14-го поколения';

  @override
  String get autoGen5585 => 'Хост поколения 0-Пенрин-мини';

  @override
  String get autoGen5586 =>
      '1-е поколение - Кларксфилд и Аррандейл - мини-хост';

  @override
  String get autoGen5587 => '2 поколение-Sandy Bridge-мини-хост';

  @override
  String get autoGen5588 => '3-е поколение-Ivy Bridge-мини-хост';

  @override
  String get autoGen5589 => 'Хост Haswell-мини 4-го поколения';

  @override
  String get autoGen5590 => 'Хост Broadwell-mini 5-го поколения';

  @override
  String get autoGen5591 => 'Хост Skylake-мини 6-го поколения';

  @override
  String get autoGen5592 => '7 поколение-Kaby Lake-мини-хозяин';

  @override
  String get autoGen5593 => '8-е поколение-Coffee Lake-мини-ведущий';

  @override
  String get autoGen5594 => '9-е поколение-Coffee Lake-мини-ведущий';

  @override
  String get autoGen5595 => 'Хост Comet Lake-мини 10-го поколения';

  @override
  String get autoGen5596 => '10-е поколение-Ледяное озеро-мини-хозяин';

  @override
  String get autoGen5597 => '11 поколение-Tiger Lake-мини-хозяин';

  @override
  String get autoGen5598 => '12 поколение-Ольховое озеро-мини-хозяин';

  @override
  String get autoGen5599 => '13 поколение-Raptor Lake-мини-хозяин';

  @override
  String get autoGen5600 => '14 поколение-Raptor Lake Refresh-мини-хост';

  @override
  String get autoGen5601 => 'Платформа поколения 1-Nehalem&Westmere-X58';

  @override
  String get autoGen5602 => 'Платформа Sandy Bridge-E-X79 2-го поколения.';

  @override
  String get autoGen5603 => 'Платформа Ivy Bridge-E-X79 третьего поколения.';

  @override
  String get autoGen5604 => 'Платформа 4-го поколения Haswell-E-X99';

  @override
  String get autoGen5605 => 'Платформа 5-го поколения Broadwell-E-X99';

  @override
  String get autoGen5606 => 'Платформа Skylake-X&W-X299 6-го поколения';

  @override
  String get autoGen5607 => 'Платформа Cascade Lake-X&W 10-го поколения';

  @override
  String get autoGen5608 => 'Бульдозер(15ч) и Ягуар(16ч)-Блокнот';

  @override
  String get autoGen5609 => 'Ryzen-ноутбук';

  @override
  String get autoGen5610 => 'Бульдозер(15ч) и Ягуар(16ч)-мини-хост';

  @override
  String get autoGen5611 => 'Ryzen-мини-хост';

  @override
  String get autoGen5612 => 'Ryzen и Threadripper(17ч и 19ч)-Сервер';

  @override
  String get autoGen5613 => 'тест';

  @override
  String get autoGen5614 => 'тест nvram';

  @override
  String get autoGen5615 => 'Невозможно получить домашний каталог';

  @override
  String get autoGen5616 => 'Исходный каталог не существует';

  @override
  String get autoGen5617 => 'Невозможно получить каталог рабочего стола';

  @override
  String get autoGen5618 => 'Проверка пути не удалась и возвращает пустой путь';

  @override
  String get autoGen5619 =>
      'Не удалось получить информацию о файле plist, возвращенный результат был неполным.';

  @override
  String get autoGen5620 =>
      'ПРИМЕЧАНИЕ. NormalizeHeaders включен, а идентификатор таблицы содержит непечатаемые символы!';

  @override
  String get autoGen5621 =>
      'Примечание. NormalizeHeaders не включен, а идентификатор таблицы содержит символ «?»!';

  @override
  String get autoGen5622 => 'Целевой файл config.plist не выбран!';

  @override
  String get autoGen5623 => '=> Невозможно определить тип config.plist!';

  @override
  String get autoGen5624 => '=> Таблица SSDT не найдена! перепрыгни...';

  @override
  String get autoGen5625 => '=> Повторяющаяся таблица SSDT не найдена!';

  @override
  String get autoGen5626 => '=> Патч не найден! перепрыгни...';

  @override
  String get autoGen5627 => '=> Повторяющийся патч не найден!';

  @override
  String get autoGen5628 => '=> Дроп-патч не найден! перепрыгни...';

  @override
  String get autoGen5629 => '=> Повторяющийся патч Drop не найден!';

  @override
  String get autoGen5630 =>
      '=> Не обнаружено конфигураций Quirks, которые необходимо обновить! перепрыгни...';

  @override
  String get autoGen5631 => '=> Проверка целевой конфигурации Quirks...';

  @override
  String get autoGen5632 =>
      'Резервное копирование текущего файла конфигурации...';

  @override
  String get autoGen5633 => 'Подготовка к копированию файлов SSDT...';

  @override
  String get autoGen5634 => 'Конфигурация успешно сохранена!';

  @override
  String get autoGen5635 => 'Объединение завершено!';

  @override
  String get autoGen5636 => 'Объединение не удалось!';

  @override
  String get autoGen5637 =>
      'Примечание. В процессе слияния обнаруживаются потенциальные ошибки, проверьте и исправьте их!';

  @override
  String get autoGen5638 =>
      'Примечание. Текущая конфигурация не настроена на переопределение целевого режима EFI!';

  @override
  String get autoGen5639 => 'Вам необходимо сделать следующее вручную:';

  @override
  String get autoGen5640 => 'Элемент корневого словаря не найден';

  @override
  String get autoGen5641 =>
      'Устранение конфликтов IRQ, часто используемых при ремонте звуковой карты.';

  @override
  String get autoGen5642 =>
      '• HPET (таймер событий высокой точности) — это аппаратный модуль, используемый для системной синхронизации.\n• В macOS некоторые устройства HPET на материнской плате могут вызывать конфликты IRQ (запроса прерывания), которые влияют на нормальную работу аудиоустройства, вызывая нестабильную работу системы или даже невозможность ее запуска.\n• Этот патч настраивает определения устройств ACPI, связанных с HPET, чтобы избежать конфликтов IRQ, гарантировать, что macOS может правильно использовать таймеры HPET, исправить проблемы со звуковой картой и повысить стабильность системы.';

  @override
  String get autoGen5643 =>
      'Поддельные атрибуты EC и вставки USB-питания (применимо к настольным компьютерам Intel 6-го поколения и выше)';

  @override
  String get autoGen5644 =>
      '• Применимо к настольным компьютерам Intel 6-го поколения и выше.\n• Этот патч отключит исходное EC-устройство системы, а затем создаст виртуальное EC-устройство, чтобы «обмануть» macOS, заставив его думать, что совместимое EC-устройство существует, тем самым решая проблемы с запуском, вызванные отсутствием EC-устройств. \n• Добавлены необходимые свойства питания USB для устранения потенциальных проблем. Эквивалент слияния: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml.';

  @override
  String get autoGen5645 =>
      'Только подделывает EC, не влияет на существующие EC и одновременно добавляет атрибуты питания USB (применимо к ноутбукам Intel 6-го поколения и выше)';

  @override
  String get autoGen5646 =>
      '• Применимо к ноутбукам Intel 6-го поколения и выше.\n• Подходит для ноутбуков: он не удаляет и не изменяет существующий EC, а создает новый виртуальный EC отдельно, чтобы избежать повреждения исходного EC-устройства и предотвратить функциональные нарушения, такие как управление питанием ноутбука и подсветка клавиатуры.\n• Добавлены необходимые свойства питания USB для устранения потенциальных проблем. Эквивалент слияния: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml.';

  @override
  String get autoGen5647 =>
      'Поддельный EC (применимо к настольным компьютерам Intel 5-го поколения и ниже)';

  @override
  String get autoGen5648 =>
      '• Подходит для настольных компьютеров Intel 5-го поколения и ниже.\n• Этот патч отключит исходное EC-устройство системы, а затем создаст виртуальное EC-устройство, чтобы «обмануть» macOS, заставив его думать, что совместимое EC-устройство существует, тем самым решая проблемы с запуском, вызванные отсутствием EC-устройств.';

  @override
  String get autoGen5649 =>
      'Только поддельный EC, не влияет на существующие EC (применимо к ноутбукам Intel 5-го поколения и ниже)';

  @override
  String get autoGen5650 =>
      '• Применимо к ноутбукам Intel 5-го поколения и ниже.\n• Он не удаляет и не изменяет существующий EC, а создает новый виртуальный EC отдельно, чтобы избежать повреждения исходного EC-устройства и предотвратить функциональные нарушения, такие как управление питанием ноутбука и подсветка клавиатуры.';

  @override
  String get autoGen5651 =>
      'Коррекция атрибутов питания USB (применимо к платформам Intel 6-го поколения и новее)';

  @override
  String get autoGen5652 =>
      '• Применимо к Intel Skylake 6-го поколения и выше, серверам Haswell-E 4-го поколения и выше, AMD Ryzen и другим платформам.\n• Начиная с процессоров Intel Skylake и более новых, macOS требует определенных свойств питания USB, чтобы обеспечить правильное питание и распознавание USB-устройств.\n• Этот патч исправляет управление питанием USB-портов в соответствии с требованиями macOS и решает такие проблемы, как некорректное распознавание USB-устройств, недостаточное питание и невозможность горячего подключения.\n• Для ноутбуков: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml. Комбинация этих двух эквивалентна SSDT-EC-USBX-LAPTOP.aml.\n• Для настольных компьютеров: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml. Комбинация этих двух эквивалентна SSDT-EC-USBX-DESKTOP.aml.';

  @override
  String get autoGen5653 =>
      'Идентификация ядра ЦП, позволяющая регулировать частоту и коррекцию энергосбережения';

  @override
  String get autoGen5654 =>
      '• SSDT-PLUG подходит для платформ Intel Haswell 4-го поколения ~ 11-го поколения, серверных Haswell-E 4-го поколения и выше (при настройке SSDT-PLUG инструмент автоматически обнаруживает и генерирует его!)\n• SSDT-PLUG-ALT подходит для Intel Alder Lake 12-го поколения и выше, а также платформы AMD Ryzen (при настройке SSDT-PLUG инструмент автоматически обнаруживает, генерирует его и переименовывает в SSDT-PLUG-ALT!)\n• macOS использует плагин управления питанием ЦП (PluginType) для регулировки частоты ЦП, повышения энергоэффективности и увеличения срока службы батареи.\n• Этот патч изменит определение ЦП, так что macOS будет считать, что это процессор типа плагина = 1, необходимый устройствам Apple, тем самым правильно загружая управление частотой ЦП и улучшая контроль производительности и энергопотребления.';

  @override
  String get autoGen5655 =>
      'Включить поддержку NVRAM (обычно для материнских плат Intel серии 300).';

  @override
  String get autoGen5656 =>
      '• Применимо к платформам Intel Coffee Lake 8–9 поколений.\n• Собственные материнские платы серии 300 (такие как Z370, B360) могут неправильно использовать NVRAM в macOS, в результате чего некоторые функции (например, iMessage, объем памяти, параметры загрузки и т. д.) не сохраняются.\n• Этот патч активирует PMC (контроллер управления питанием) материнской платы, позволяя macOS нормально использовать встроенную NVRAM без необходимости использования дополнительного драйвера EmuVariableUEFI.';

  @override
  String get autoGen5657 =>
      'Добавьте устройство PNLF для поддержки подсветки (только для ноутбуков и моноблоков)';

  @override
  String get autoGen5658 =>
      '• Для macOS требуется устройство PNLF (Яркость панели) для правильного управления яркостью экрана ноутбука.\n• Этот патч создаст устройство PNLF в ACPI, что позволит macOS регулировать яркость экрана и параметры управления яркостью дисплея в Системных настройках.\n• Подходит для ноутбуков и некоторых компьютеров «все в одном» для решения проблемы недоступной регулировки яркости.\n• UID = 14, применимо к: Intel Arrandale 1-го поколения, Sandy Bridge 2-го поколения, Ivy Bridge 3-го поколения.\n  Примечание. Некоторые машины, использующие UID: 14, могут столкнуться с ограничением максимальной яркости или другими проблемами. Чтобы решить эти проблемы, необходимо установить правильный путь к устройству iGPU (встроенной видеокарты), а также, возможно, потребуется дополнить информацию о регистре IGPU.\n• UID = 15, применимо к: Intel Haswell 4-го поколения, Broadwell 5-го поколения.\n• UID = 16, применимо к: Intel Skylake 6-го поколения, Kaby Lake 7-го поколения, некоторым Haswell 4-го поколения.\n• UID = 17, применимо к: пользовательской яркости, обычно используется для некоторых нестандартных устройств или настроек Hackintosh с особыми потребностями.\n• UID = 18, подходит для: Пользовательской яркости, обычно используется для некоторых нестандартных устройств или настроек Hackintosh с особыми потребностями.\n• UID = 19, применимо к: Intel CoffeeLake 8-го поколения и выше, младше 10-го поколения и ноутбукам AMD.\n• UID = 99, применяется к: Другие (требуются пользовательские свойства устройства applbkl-name/applbkl-data), может не работать вообще';

  @override
  String get autoGen5659 =>
      'Обеспечивает поддержку датчиков, необходимую для регулировки подсветки экрана (применимо только к ноутбукам и компьютерам «все в одном»).';

  @override
  String get autoGen5660 =>
      '• Используется для имитации и включения функции встроенного датчика Apple (датчика окружающего освещения, ALS) для автоматической регулировки яркости экрана.\n• Если ваше устройство действительно имеет ALS (например, некоторые ноутбуки высокого класса) и возникли проблемы, вы можете попробовать добавить SSDT-ALS0 для исправления функции автоматической регулировки яркости, в противном случае добавлять не рекомендуется.\n• Применимо к: только моноблокам (AIO) и ноутбукам.';

  @override
  String get autoGen5661 =>
      'macOS маскируется под Windows и разблокирует заблокированные устройства (например, сенсорные панели I2C)';

  @override
  String get autoGen5662 =>
      '• _OSI (Интерфейс операционной системы) — это метод ACPI, который позволяет операционной системе сообщать, какие функции она поддерживает.\n• Некоторые прошивки материнской платы могут принимать решение о включении определенных устройств на основе возвращаемого значения _OSI, которое может не распознаваться macOS, что приводит к потере функциональности.\n• Патч «обманывает» прошивку, заставляя ее думать, что macOS — это также Windows, тем самым активируя скрытые функции, такие как: сенсорная панель I2C, управление батареей и т. д.';

  @override
  String get autoGen5663 => 'Сброс и исправление USB-порта';

  @override
  String get autoGen5664 =>
      '• Некоторые OEM-производители нарушают спецификацию ACPI, что приводит к проблемам при загрузке macOS. Чтобы решить эту проблему, устройство RHUB необходимо выключить и заставить macOS перестроить порт вручную.\n• Этот патч сбрасывает контроллер USB (включая экранирование и переименование EHC1, EHC2 и других USB-устройств) при запуске macOS, чтобы все порты USB можно было правильно идентифицировать, и используется с сопоставлением USB (например: UTBMap.kext), чтобы гарантировать правильную работу USB-устройств.\n• Обычно подходит для настольных материнских плат серии 400 (Asus и т. д.) и мобильных платформ IceLake (Dell, Lenovo и т. д.).';

  @override
  String get autoGen5665 =>
      'Создайте мост для отсутствующего пути устройства PCI.';

  @override
  String get autoGen5666 =>
      '• Пути устройств PCI некоторых материнских плат или устройств могут неправильно распознаваться в macOS, что приводит к сбоям в работе устройств (например, видеокарт, звуковых карт, беспроводных сетевых карт и т. д.).\n• Этот патч создаст правильные мосты PCI для этих устройств, гарантируя, что macOS сможет правильно распознавать и использовать эти устройства PCI.';

  @override
  String get autoGen5667 =>
      'Исправьте таблицу APIC, чтобы решить проблему паники ядра ЦП (применимо к серверной платформе HEDT).';

  @override
  String get autoGen5668 =>
      '• Исправьте или перезапишите идентификатор процессора в таблице APIC, чтобы macOS могла правильно определить число и количество ядер ЦП и избежать паники ядра или ошибок идентификации ядра.\n• Исходную таблицу APIC необходимо удалить из встроенного ПО, прежде чем можно будет загрузить исправленную таблицу.\n• Применимо к X58, X79, X99, X299 и другим серверным платформам Intel (HEDT).';

  @override
  String get autoGen5669 =>
      'Удалите зарезервированную область памяти DMAR, устраните проблемы с запуском системы и проблемы совместимости сетевых карт.';

  @override
  String get autoGen5670 =>
      '• DMAR (таблица перераспределения DMA) является частью технологии виртуализации Intel VT-d для поддержки IOMMU (блок управления памятью ввода-вывода).\n• Этот патч удалит зарезервированную область памяти в таблице DMAR, которая вызывает проблему, тем самым предотвращая неправильное чтение DMAR macOS и сбой загрузки системы.\n• Обеспечить поддержку совместимости VT-d, чтобы VT-d правильно работал в macOS Big Sur и более поздних версиях, особенно с использованием оборудования, управляемого DriverKit.\n• macOS поддерживает VT-d, но существуют проблемы совместимости с таблицей DMAR, предоставляемой некоторыми материнскими платами или BIOS, что может привести к сбоям ядра macOS, задержкам запуска, нестабильности системы и другим проблемам при анализе таблицы ACPI DMAR (зависание в местах журналов, связанных с AppleACPICPU, IOPCI, AppleVTD).\n• Диапазон поддерживаемого оборудования: сетевая карта I225, сетевая карта Aquantia, некоторые устройства Wi-Fi и т. д.\n• Исходную таблицу DMAR необходимо удалить из встроенного ПО, прежде чем можно будет загрузить исправленную таблицу.\n• Применимый ЦП: Любой процессор, поддерживающий технологию VT-d.';

  @override
  String get autoGen5671 => 'Добавить поддержку системной шины SMBus';

  @override
  String get autoGen5672 =>
      '• macOS требует устройства SMBus (системной шины управления) для правильного запуска определенных служб, таких как:\n  Сенсорная панель I2C, управление зарядом батареи, светочувствительная автоматическая регулировка яркости, некоторые устройства Wi-Fi/Bluetooth\n• SSDT-SBUS-MCHC заставляет macOS думать, что это собственное устройство Apple, добавляя устройства SBUS (системная шина управления) и MCHC (контроллер памяти) к ACPI, обеспечивая правильную работу связанных функций.\n• Если сенсорную панель I2C устройства, информацию о батарее и автоматическую регулировку яркости использовать невозможно, попробуйте включить этот патч.';

  @override
  String get autoGen5673 =>
      'Устранить проблему сбоя ускорения базовой графики (обычно применимо к Ivy Bridge и Sandy Bridge).';

  @override
  String get autoGen5674 =>
      '• Intel Management Engine (сокращенно IMEI) — это аппаратный интерфейс, используемый для подключения к механизму управления. Это необходимо только в том случае, если на старых платформах (Sandy/Ivy) и некоторых материнских платах отсутствуют устройства MEI/IMEI/HECI.\n• Применимо к процессору Intel Ivy Bridge 3-го поколения и материнской плате серии 6 при совместном использовании (например: процессор i3 3225, материнская плата H61), проблема с ускорением базовой графики.\n• Применимо к процессору Intel Sandy Bridge 2-го поколения и материнской плате серии 7 при совместном использовании (например: процессор i5 2500k, материнская плата B75), проблема с ускорением основной графики.\n• Для процессоров Intel Ivy Bridge 3-го поколения в сочетании с материнскими платами серии 7 и процессоров Intel Sandy Bridge 2-го поколения в сочетании с материнскими платами серии 6 этот SSDT не требуется!\n• Платформы Intel Haswell 4-го поколения и более новые обычно могут правильно реализовывать устройства MEI/IMEI/HECI и не нуждаются в SSDT!';

  @override
  String get autoGen5675 =>
      'Устранить проблему выключения и перезапуска или выключения без источника питания.';

  @override
  String get autoGen5676 =>
      '• Исправлена проблема, из-за которой некоторые материнские платы иногда не полностью отключают питание USB-контроллера при выключении macOS (S5), что приводит к невозможности нормального завершения работы (выключение становится перезапуском или выключением без питания).\n• Требуется исправление переименования ACPI: _PTS -> ZPTS.';

  @override
  String get autoGen5677 =>
      'Проверьте текущий статус системы, главным образом, чтобы проверить, поддерживается ли спящий режим S3 (ненастраиваемый SSDT)';

  @override
  String get autoGen5678 =>
      '• Проверьте, является ли текущий компьютер машиной AOAC (ненастраиваемый SSDT).\n• Проверьте состояние системы в текущих настройках BIOS, главным образом, чтобы проверить, поддерживается ли спящий режим S3 (ненастраиваемый SSDT).\n• Примечание. Только компьютеры, не поддерживающие AOAC, совместимы со спящим режимом S3. Машины AOAC конфликтуют со спящим режимом S3 и не поддерживают спящий режим S3!\n• Если результат проверки показывает, что системный статус машины, не поддерживающей AOAC (машина AOAC не поддерживает спящий режим S3, не читайте ниже), не поддерживает спящий режим S3, могут возникнуть следующие ситуации:\n  1. Прошивка материнской платы поддерживает спящий режим S3, но спящий режим S3 не включен в настройках BIOS. После его включения можно поддерживать режим сна S3.\n  2. Прошивка материнской платы физически не кастрирует S3, но DSDT не определяет метод _S3. Выполнение метода _S3 может решить проблему сна S3.\n  3. Прошивка материнской платы физически кастрирует S3 и вообще не поддерживает S3 Sleep. Даже если метод _S3 завершен, проблему сна S3 устранить невозможно.';

  @override
  String get autoGen5679 =>
      'Проверьте, является ли это машиной AOAC (ненастраиваемый SSDT).';

  @override
  String get autoGen5680 =>
      '• Проверьте, является ли это компьютером AOAC (ненастраиваемый SSDT) на основе FACP.aml.\n• Примечание. Только компьютеры, не поддерживающие AOAC, совместимы со спящим режимом S3. Машины AOAC конфликтуют со спящим режимом S3 и не поддерживают спящий режим S3! Машины AOAC часто используются в ноутбуках.\n• Когда машина AOAC переходит в режим сна S3, может показаться, что ее невозможно разбудить после сна, и она находится в состоянии сбоя, и ее можно только принудительно выключить. Рекомендуется отключить сон S3.\n• Машины AOAC рекомендуют рассмотреть следующие решения:\n  1. Разблокировать биос и отключить AOAC (обычно это сложно сделать, но самое стабильное)\n  2. Отключите спящий режим S3 (отключите спящий режим S3 в BIOS или SSDT-S3-DISABLE, чтобы отключить спящий режим S3)\n  3. Выключите независимый источник питания видеокарты.\n  4. Используйте NVMeFix.kext, чтобы включить APST SSD.\n  5. Включите ASPM (дополнительные параметры BIOS включают ASPM, патч SSDT включает L1)';

  @override
  String get autoGen5681 =>
      'Исправлена ​​проблема выхода из режима сна из-за USB-контроллера.';

  @override
  String get autoGen5682 =>
      '• Переименуйте GPRW в XPRW, чтобы устранить проблему мгновенного пробуждения (примечание: это может привести к тому, что USB-клавиатура не сможет вывести устройство из спящего режима; его можно вывести из режима сна с помощью клавиши питания).\n• SSDT-GPRW используется чаще, поскольку большинство платформ используют метод GPRW, и очень немногие платформы предоставляют и используют метод UPRW.\n• Доступно для Skylake и более новых платформ.';

  @override
  String get autoGen5683 =>
      '• Переименуйте GPRW в XPRW, чтобы устранить проблему мгновенного пробуждения (примечание: это может привести к тому, что USB-клавиатура не сможет вывести устройство из спящего режима; его можно вывести из режима сна с помощью клавиши питания).\n• SSDT-UPRW используется редко, поскольку большинство платформ используют метод GPRW, и очень немногие платформы предоставляют и используют метод UPRW.\n• Доступно для Skylake и более новых платформ.';

  @override
  String get autoGen5684 =>
      'Исправление проблемы со сном кнопки сна (применимо к ноутбукам)';

  @override
  String get autoGen5685 =>
      '• Когда некоторые компьютеры переходят в спящий режим с помощью кнопки сна SLPB (PNP0C0E), ACPI передает неверные параметры, в результате чего macOS ошибочно считает, что это завершение работы. Это может привести к: прямому перезапуску, сбою после сна или успешному переходу в режим сна, но поврежденному состоянию системы.\n• При нажатии кнопки сна изображайте, что крышка закрыта, переводя опасный режим сна PNP0C0E в безопасный и стабильный режим сна PNP0C0D.\n• Обычно подходит для ноутбуков';

  @override
  String get autoGen5686 =>
      'Исправлена ​​проблема, из-за которой вам нужно было нажать любую клавишу, чтобы включить экран после пробуждения.';

  @override
  String get autoGen5687 =>
      '• Исправлена ​​проблема, из-за которой на некоторых машинах после пробуждения нужно было нажать любую клавишу, чтобы включить экран.';

  @override
  String get autoGen5688 =>
      'Устраните проблему с ненормальным световым индикатором кнопки питания после пробуждения (применимо к ноутбукам Lenovo).';

  @override
  String get autoGen5689 =>
      '• Исправлена проблема, из-за которой индикатор дыхания на стороне A и индикатор дыхания на кнопке питания не возвращались в нормальное состояние после пробуждения на некоторых ноутбуках Lenovo.\n• Исправлена проблема, из-за которой состояние индикатора микрофона F4 было ненормальным после пробуждения на некоторых ноутбуках Lenovo.\n• В основном применимо к ноутбукам серии Lenovo, ноутбуки других марок обычно неприменимы.';

  @override
  String get autoGen5690 =>
      'Отключить состояние сна S3 системы (исправить сбой при пробуждении во время сна S3, проблемы с перезапуском или выключением)';

  @override
  String get autoGen5691 =>
      '• Отключайте состояние сна S3 только в системе macOS, чтобы избежать сбоя, перезагрузки или завершения работы системы при пробуждении системы macOS.\n• Если отключено, только macOS больше не поддерживает спящий режим S3 (при нажатии кнопки спящего режима или переходе монитора в режим энергосбережения экран выключается, но хост все равно будет работать, а вентилятор не перестанет работать).\n• После отключения режима сна S3 в macOS вам больше не нужно изменять какие-либо системные настройки macOS, и вам не нужно отключать режим энергосбережения (перед этим вам может потребоваться изменить настройки системы -> выключить дисплей в неактивном состоянии -> никогда)\n• Применимые сценарии: если проблема со сном не устранена, в настройках системы macOS включается режим энергосбережения («Выключить дисплей при неактивности -> 10 минут»). После того, как система перейдет в спящий режим, при пробуждении системы macOS может произойти сбой, перезагрузка или выключение системы. В это время вы можете отключить спящий режим S3, чтобы устранить проблему.\n• Требуется исправление переименования ACPI: _S3 -> XS3.';

  @override
  String get autoGen5692 =>
      'Горячий перезапуск заменен на холодный, чтобы устранить проблему недоступности некоторого оборудования.';

  @override
  String get autoGen5693 =>
      '• Горячий перезапуск заменен на холодный, что устраняет проблему, связанную с тем, что некоторое оборудование становится недоступным после перезапуска с Windows на macOS на некоторых платформах. (Например: звуковая карта, Wi-Fi, Bluetooth)\n• Примечание. SSDT-FACP.aml не создается! Генерируется только ACPI-Patch!';

  @override
  String get autoGen5694 =>
      'Сопоставление идентификаторов графических устройств';

  @override
  String get autoGen5695 =>
      '• Используется в сценариях сопоставления идентификаторов устройств видеокарт AMD, вводя идентификаторы совместимых устройств через ACPI, чтобы позволить системе загрузить соответствующий графический драйвер.\n• Рекомендуется только для моделей, явно отмеченных в данных совместимости RapidEFI как требующие сопоставления идентификатора устройства.';

  @override
  String get autoGen5696 => 'Экранирование устройства ACPI';

  @override
  String get autoGen5697 =>
      '• Используется для обработки устройств PCI на уровне ACPI, которые не подходят для передачи драйверу macOS, например несовместимых видеокарт, контроллеров NVMe или других устройств расширения.\n• Ноутбуки сначала пробуют деактивацию на уровне мощности; если прошивка не поддерживает метод питания, во избежание этого происходит переход на уровень драйвера.\n• Настольные компьютеры, NUC и HEDT по умолчанию используют универсальные методы обхода, чтобы не полагаться на независимые методы графической мощности, которые обычно не существуют в микропрограмме машины.\n• Для всех сценариев требуется действительный путь ACPI; если оборудование сообщает об отсутствии пути ACPI, устройство автоматически пропускается.';

  @override
  String get autoGen5698 =>
      'Поддельное оборудование для проводных сетевых карт (применимо к ноутбукам без проводных сетевых карт)';

  @override
  String get autoGen5699 =>
      '• Предоставляет поддельную виртуальную сетевую карту NullEthernet для систем Hackintosh, чтобы устранить зависимость iMessage, Facetime, iCloud и других сервисов Apple от встроенного сетевого оборудования.';

  @override
  String get autoGen5700 =>
      'Устранить проблему с сенсорной панелью I2C ноутбука (применимо к ноутбукам)';

  @override
  String get autoGen5701 =>
      '• Путем исправления монтажа аппаратного узла ACPI, обеспечения включения устройства в системе macOS и устранения проблемы, связанной с невозможностью нормального распознавания некоторых сенсорных панелей I2C.\n• SSDT-GPI0 решает проблему установки драйверов аппаратных устройств. SSDT-XOSI в основном используется для решения проблемы несовместимости между логикой инициализации BIOS/ACPI и распознаванием операционной системы (иногда это может решить проблему с тачпадом)';

  @override
  String get autoGen5702 =>
      'Переименование ЦП для чипсетов B850, B650, B550, A520 (только для платформ Ryzen)';

  @override
  String get autoGen5703 =>
      '• Применимо к переименованию ЦП наборов микросхем B850, B650, B550 и A520 для устранения проблемы сбоя, вызванной тем, что платформа AMD не может распознать ЦП (рекомендуется только при использовании готовых исправлений SSDT).\n• При настройке патча SSDT рекомендуется использовать настроенный SSDT-PLUG! (Платформа AMD Ryzen автоматически меняет свое имя на SSDT-PLUG-ALT при настройке SSDT)';

  @override
  String get autoGen5704 =>
      'Исправлено управление питанием (применимо к Intel 12-го поколения и выше, некоторым AMD Ryzen и другим платформам).';

  @override
  String get autoGen5705 =>
      '• macOS использует плагин управления питанием ЦП (PluginType) для регулировки частоты ЦП, повышения энергоэффективности и увеличения срока службы батареи.\n• Этот патч изменит определение ЦП, так что macOS будет считать, что это процессор типа плагина = 1, необходимый устройствам Apple, тем самым правильно загружая управление частотой ЦП и улучшая контроль производительности и энергопотребления.\n• Применимо к Intel Alder Lake 12-го поколения и выше, а также к некоторым платформам AMD Ryzen.';

  @override
  String get autoGen5706 =>
      'Отключить AWAC (современный таймер) (доступно для Intel Coffee Lake 8-го поколения и выше)';

  @override
  String get autoGen5707 =>
      '• Отключите AWAC (современный таймер) при включении или подмене устаревших часов реального времени.\n• Совместимость с Intel Coffee Lake 8-го поколения и выше.';

  @override
  String get autoGen5708 =>
      'Требуется для всех материнских плат X99 (C612) и большинства материнских плат X79 (C602).';

  @override
  String get autoGen5709 =>
      '• Этот SSDT применим ко всем материнским платам X99 и большинству материнских плат X79. Его основная функция — отключить неиспользуемые устройства в ACPI, чтобы IOPCIFamily не вызывал панику ядра.\n• Применимые материнские платы: все материнские платы X99 (C612) и большинство материнских плат X79 (C602).';

  @override
  String get autoGen5710 =>
      'Включите или подделайте устаревший таймер RTC и исправьте диапазон RTC (применимо ко всем материнским платам X99 (C612) и X299)';

  @override
  String get autoGen5711 =>
      '• Включите или подделайте устаревшие таймеры RTC и исправьте диапазон RTC.\n• Устранение неправильного времени загрузки, ошибок, связанных с часами реального времени, проблем с выходом из сна и т. д.\n• Этот SSDT применим ко всем материнским платам X99 (C612), а также к материнским платам X299.';

  @override
  String get autoGen5712 => 'Добавить поддержку DTGP';

  @override
  String get autoGen5713 =>
      '• Внедрение атрибутов аппаратного устройства для устранения некоторых проблем ACPI с видеокартами, звуковыми картами, картами Thunderbolt и т. д. (При отсутствии поддержки метода DTGP внедрение атрибутов может завершиться неудачей или не работать!)';

  @override
  String get autoGen5714 => 'Подделка стандартного контроллера DMA';

  @override
  String get autoGen5715 =>
      '• Контроллер виртуальных устройств (PNP0200), который имитирует стандартный контроллер DMA (контроллер прямого доступа к памяти), дополняет таблицу ресурсов ACPI и позволяет macOS правильно идентифицировать устройства шины LPC и функции DMA.\n• Обычно не требуется для HEDT/серверных платформ.\n• Добавьте недостающие детали, это просто идеальное решение, в этом нет необходимости!';

  @override
  String get autoGen5716 => 'Подделка стандартного контроллера PWRB';

  @override
  String get autoGen5717 =>
      '• Подделайте стандартное устройство с кнопкой питания (PNP0C0C), чтобы macOS могла нормально распознавать кнопку питания системы и поддерживать режим сна и пробуждения.\n• В некоторых деревьях ACPI BIOS/материнской платы PNP0C0C отсутствует, и macOS не может правильно обрабатывать кнопку питания, что может привести к невозможности перехода в спящий режим, невозможности пробуждения и недоступности кнопки питания в строке меню.\n• Добавьте недостающие детали, это просто идеальное решение, в этом нет необходимости!';

  @override
  String get autoGen5718 => 'Подделка стандартного контроллера SLPB';

  @override
  String get autoGen5719 =>
      '• Подделайте стандартное устройство с кнопкой сна (PNP0C0E), чтобы macOS могла правильно идентифицировать кнопку сна системы и реализовать функции сна и пробуждения.\n• В некоторых деревьях ACPI BIOS/материнской платы PNP0C0E отсутствует, и macOS не может правильно обрабатывать кнопку сна, что может привести к невозможности перехода в режим сна, невозможности пробуждения и недоступности кнопки сна в строке меню.\n• Эта часть необходима для метода коррекции сна PNP0C0E!\n• Добавьте недостающие детали, это просто идеальное решение, в этом нет необходимости!';

  @override
  String get autoGen5720 => 'Устройство MEM2, необходимое для имитации IGPU';

  @override
  String get autoGen5721 =>
      '• Добавьте устройство MEM2 ACPI, необходимое для IGPU, и устраните проблемы, связанные с IGPU.\n• Дополните сопоставление памяти основного дисплея, чтобы избежать сбоя инициализации драйвера.\n• Область применения: Haswell ~ Kaby Lake, только базовая графическая система. Обычно этот SSDT не нужен только дискретной графике!';

  @override
  String get autoGen5722 => 'Неверный путь';

  @override
  String get autoGen5723 => 'Не найден действительный файл .aml или .dat.';

  @override
  String get autoGen5724 => 'Декомпиляция файлов SSDT.aml в пакетном режиме...';

  @override
  String get autoGen5725 =>
      'Пакетная декомпиляция файлов DSDT.aml и SSDT.aml...';

  @override
  String get autoGen5726 =>
      'Декомпиляция неудачных файлов .aml по отдельности...';

  @override
  String get autoGen5727 => 'Декомпиляция других файлов .aml...';

  @override
  String get autoGen5728 =>
      'Примечание. Старайтесь не включать китайские или специальные символы в путь или имя файла, иначе это может вызвать непредвиденные проблемы!';

  @override
  String get autoGen5729 => 'Инструмент экспорта ACPI не готов';

  @override
  String get autoGen5730 => 'Экспорт таблиц ACPI...';

  @override
  String get autoGen5731 =>
      'Текущая платформа не поддерживает экспорт таблиц ACPI.';

  @override
  String get autoGen5732 => 'Ожидание авторизации пароля sudo...';

  @override
  String get autoGen5733 => 'Авторизация администратора отменена';

  @override
  String get autoGen5734 => 'Пароль администратора не введен';

  @override
  String get autoGen5735 => 'Пароль администратора неверен';

  @override
  String get autoGen5736 => 'Не удалось выполнить экспорт таблицы ACPI.';

  @override
  String get autoGen5737 =>
      'Таблица ACPI, извлеченная текущей платформой, пуста или не поддерживает экспорт таблицы ACPI.';

  @override
  String get autoGen5738 => '=> DSDT не найден, экспорт по сигнатуре...';

  @override
  String get autoGen5739 => 'Не удалось экспортировать таблицу DSDT.';

  @override
  String get autoGen5740 => 'Обновление имени таблицы...';

  @override
  String get autoGen5741 => 'Экспортируйте таблицу ACPI успешно!';

  @override
  String get autoGen5742 => 'Не предоставлена ​​действительная таблица ACPI!';

  @override
  String get autoGen5743 =>
      'Шестнадцатеричные данные, которые необходимо найти, не найдены!';

  @override
  String get autoGen5744 => 'Уникальный идентификатор заполнения не найден!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: неверный параметр таблицы';

  @override
  String get autoGen5746 => 'самый свободный';

  @override
  String get autoGen5747 => 'только длина';

  @override
  String get autoGen5748 =>
      'Идентификатор и длина таблицы, отключить нормализованные заголовки';

  @override
  String get autoGen5749 =>
      'Идентификатор и длина таблицы, включить нормализованные заголовки';

  @override
  String get autoGen5750 =>
      'Intel Arrandale 1-го поколения, Sandy Bridge 2-го поколения, Ivy Bridge 3-го поколения';

  @override
  String get autoGen5751 =>
      'Intel Haswell 4-го поколения, Broadwell 5-го поколения';

  @override
  String get autoGen5752 =>
      'Intel Skylake 6-го поколения, Kaby Lake 7-го поколения, некоторые Haswell 4-го поколения';

  @override
  String get autoGen5753 =>
      'Пользовательская яркость, обычно используется для некоторого нестандартного оборудования или настроек особых потребностей.';

  @override
  String get autoGen5754 =>
      'Intel CoffeeLake 8-го поколения ~ 10-го поколения и ноутбуки AMD';

  @override
  String get autoGen5755 =>
      'Другие (требуются пользовательские свойства устройства applbkl-name/applbkl-data), могут не поддерживаться.';

  @override
  String get autoGen5756 =>
      'Инструменты ACPI в настоящее время поддерживают только платформы Windows/macOS/Linux.';

  @override
  String get autoGen5757 =>
      'Примечание. Старая версия iasl-legacy поддерживает только macOS 10.6 и более ранние версии. Могут возникнуть проблемы совместимости с текущими основными системами, поэтому используйте с осторожностью!!!';

  @override
  String get autoGen5758 =>
      'Используйте [компилятор старой версии iasl-legacy]';

  @override
  String get autoGen5759 => 'Компиляция не удалась!';

  @override
  String get autoGen5760 =>
      'Рекомендуется перейти на новую версию IASL или включить принудительную компиляцию и повторить попытку!';

  @override
  String get autoGen5761 => 'существовать';

  @override
  String get autoGen5762 => 'не существует';

  @override
  String get autoGen5763 =>
      'Примечание. Intel Arrandale 1-го поколения, Sandy Bridge 2-го поколения, Ivy Bridge 3-го поколения по умолчанию используют UID: 14, но на некоторых машинах, использующих UID: 14, возникнет ограничение максимальной яркости или другие проблемы. Чтобы решить эти проблемы, необходимо установить правильный путь к устройству iGPU (встроенной видеокарты), а также, возможно, потребуется дополнить информацию о регистре IGPU.';

  @override
  String get autoGen5764 =>
      'Введите путь ACPI iGPU для использования. Максимальное количество символов для каждого элемента пути — 4 буквенно-цифровых символа (начинающихся с буквы или подчеркивания), разделенных пробелами. Например: SB.PCI0.GFX0.';

  @override
  String get autoGen5765 =>
      'Примечание. Патч NBCF создан (зависит от драйвера BrightnessKeys.kext), включен по умолчанию! Если у вас возникнут проблемы во время использования, пожалуйста, отключите этот патч!';

  @override
  String get autoGen5766 => 'Следующий мост не может быть решен:';

  @override
  String get autoGen5767 =>
      '=> Текущая прошивка поддерживает общие состояния системы! Если это не машина AOAC, после устранения проблемы со спящим режимом macOS сможет поддерживать спящий режим S3, в противном случае он не поддерживает спящий режим S3!';

  @override
  String get autoGen5768 => 'пластырь';

  @override
  String get autoGen5769 => 'Время соединения с сервером истекло';

  @override
  String get autoGen5770 => 'Загрузка отменена';

  @override
  String get autoGen5771 => 'Чтение тайм-аута ответа';

  @override
  String get autoGen5772 => 'Кекст успешно скопирован';

  @override
  String get autoGen5773 =>
      'Веб-платформа по умолчанию загружает напрямую и в настоящее время не поддерживает выбор пути по умолчанию.';

  @override
  String get autoGen5774 =>
      'Корневой узел файла конфигурации не является объектом JSON.';

  @override
  String get autoGen5775 => 'Следуйте системе';

  @override
  String get autoGen5776 => 'закрытие';

  @override
  String get autoGen5777 => 'Майкрософт Яхей';

  @override
  String get autoGen5778 => 'Обновить черное тело';

  @override
  String get autoGen5779 => 'Сиюань Сонгти';

  @override
  String get autoGen5780 => 'Ожидание обновления информации об оборудовании';

  @override
  String get autoGen5781 => 'Загрузка информации об оборудовании';

  @override
  String get autoGen5782 => 'Обновление информации об оборудовании';

  @override
  String get autoGen5783 => 'Загрузка информации об оборудовании завершена';

  @override
  String get autoGen5784 => 'Не удалось загрузить информацию об оборудовании';

  @override
  String get autoGen5785 => 'Информация об оборудовании пока не поддерживается';

  @override
  String get autoGen5786 => 'Импорт информации об оборудовании завершен.';

  @override
  String get autoGen5787 => 'неудача';

  @override
  String get autoGen5788 => 'Не поддерживается';

  @override
  String get autoGen5789 => 'Заканчивать';

  @override
  String get autoGen5790 => 'кэш';

  @override
  String get autoGen5791 =>
      'Текущая платформа не поддерживает запрос информации об оборудовании.';

  @override
  String get autoGen5792 =>
      'Текущий отчет представляет собой импортированный отчет о внешнем оборудовании. Перед экспортом обновите информацию о локальном оборудовании.';

  @override
  String get autoGen5793 =>
      'В настоящее время нет экспортируемой информации о локальном оборудовании.';

  @override
  String get autoGen5794 => 'Очистка папки отчетов об оборудовании не удалась';

  @override
  String get autoGen5795 => 'Не удалось создать папку отчетов об оборудовании.';

  @override
  String get autoGen5796 =>
      'Экспорт таблицы ACPI не выполнен или не поддерживается.';

  @override
  String get autoGen5797 =>
      'Авторизация администратора отменена, таблица ACPI не экспортирована.';

  @override
  String get autoGen5798 =>
      'Невозможно экспортировать таблицу ACPI без ввода пароля администратора.';

  @override
  String get autoGen5799 =>
      'Пароль администратора неверен, и таблицу ACPI невозможно экспортировать.';

  @override
  String get autoGen5800 =>
      'Ошибка экспорта таблицы ACPI: не найдена допустимая таблица ACPI.';

  @override
  String get autoGen5801 =>
      'Ошибка экспорта таблицы ACPI: процесс экспорта не выполнен.';

  @override
  String get autoGen5802 =>
      'Файл информации об оборудовании не является объектом JSON.';

  @override
  String get autoGen5803 => 'Информация об оборудовании импортирована.';

  @override
  String get autoGen5804 =>
      'Каталог таблиц ACPI недействителен, пользовательский SSDT недоступен.';

  @override
  String get autoGen5805 => 'Начать настройку EFI...';

  @override
  String get autoGen5806 =>
      'Генерация ConfigModel на основе информации об оборудовании...';

  @override
  String get autoGen5807 =>
      'Используйте EFI raw SSDT, пропустите настройку SSDT.';

  @override
  String get autoGen5808 =>
      'Отчет о внешнем оборудовании импортирован, но каталог таблиц ACPI не предоставлен, пользовательский SSDT отключен.';

  @override
  String get autoGen5809 => 'Экспорт OpenCore EFI...';

  @override
  String get autoGen5810 =>
      'EFI написан, начните извлекать ACPI и настраивать SSDT...';

  @override
  String get autoGen5811 => 'Процесс настройки SSDT завершается.';

  @override
  String get autoGen5812 => 'Процесс настройки SSDT не удался.';

  @override
  String get autoGen5813 => 'Настройка EFI завершена.';

  @override
  String get autoGen5814 =>
      'Не удалось настроить EFI. Проверьте выходной путь или журналы.';

  @override
  String get autoGen5815 =>
      'Оборудование автоматически генерирует правила ConfigModel и восстанавливается.';

  @override
  String get autoGen5816 => 'Длина кончиков должна быть такой же, как и выбор.';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'активы/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'активы/ssdt/звуковая карта patch.md';

  @override
  String get autoGen5820 => 'активы/ssdt/видеокарта counterfeit.md';

  @override
  String get autoGen5821 => 'активы/ssdt/shielding device.md';

  @override
  String get autoGen5822 => 'активы/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'Инструкции по драйверу Bluetooth:\n  1. Если установлен флажок Intel WiFi, драйвер Intel Bluetooth будет автоматически добавлен в соответствии с версией macOS, нет необходимости проверять его вручную! ! !\n  2. Если флажок Broadcom WiFi установлен, драйвер Broadcom Bluetooth будет автоматически добавлен в соответствии с версией macOS, нет необходимости проверять его вручную! ! !\n  3. Если установлен флажок Atheros WiFi, драйвер Atheros Bluetooth будет добавлен автоматически, нет необходимости проверять его вручную! ! !\n  4. Если модель WiFi не проверена или модель Bluetooth не объяснена, необходимо проверить ее вручную! ! !\n  5. Поскольку Bluetooth использует канал USB, если после добавления драйверов и исправлений он по-прежнему не работает должным образом, убедитесь, что USB правильно настроен! ! !';

  @override
  String get autoGen5824 =>
      'Распространенные пути HPET:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  Эта опция используется для устранения некоторых проблем с IRQ звуковой карты! Примечание: Если ваша звуковая карта не имеет проблем с IRQ, пожалуйста, не используйте эту функцию!!!';

  @override
  String get autoGen5825 =>
      'Поддерживаемые версии MacOS:\n    • Версия беспроводного USB-адаптера Big Sur-V18 поддерживает macOS Catalina 10.15.x ~ macOS Tahoe 26.x (требуется патч OCLP USB).\n    • Версия беспроводного USB-адаптера Big Sur-V15 поддерживает OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  Поддерживается USB WiFi следующим образом:\n    • Основной чип — USB-адаптер Wi-Fi Realtek 802.11n и 802.11ac. Более конкретные модели смотрите в инструкции автора.';

  @override
  String get autoGen5826 =>
      'Подделка дискретной графики AMD (свойства устройства):\n   1. Вам необходимо указать путь PCI видеокарты, например: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. Вам необходимо ввести поддельный идентификатор устройства видеокарты (4 цифры в шестнадцатеричном формате), например: 73BF\n   3. После того, как видеокарта будет подделана, вам все равно необходимо учитывать параметры запуска, необходимые для видеокарты AMD (вы можете перейти в Независимая конфигурация графики -> Независимая графика AMD -> Проверить при необходимости)\n   4. Инструмент заранее подготовил некоторые идентификаторы видеокарт. Если нет, найдите его самостоятельно или свяжитесь с автором для получения дополнительной информации.';

  @override
  String get autoGen5827 => 'Подтверждать';

  @override
  String get autoGen5828 => 'Отмена';

  @override
  String get autoGen5829 => 'Конечно';
}
