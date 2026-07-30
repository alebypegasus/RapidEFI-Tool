// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get recent => 'Reciente';

  @override
  String get efiRelated => 'Relacionado con EFI';

  @override
  String get toolsAndGuides => 'Herramientas y guías';

  @override
  String get navHistory => 'Historia';

  @override
  String get navConfigureEFI => 'Configurar EFI';

  @override
  String get navProcessEFI => 'Proceso EFI';

  @override
  String get navCustomSSDT => 'SSDT personalizado';

  @override
  String get navOCLPPatch => 'Parche OCLP-X';

  @override
  String get navTahoeGuide => 'macOS Tahoe 26';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get navSponsor => 'Desarrollador patrocinador';

  @override
  String get searchPlaceholder => 'Buscar';

  @override
  String get darkMode => 'Modo oscuro';

  @override
  String get clickAgainToExit => 'Haga clic nuevamente para salir';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'Versión actual de OpenCore: $version';
  }

  @override
  String get copyrightTitle => 'Declaración de derechos de autor';

  @override
  String get copyrightText =>
      'Copyright (C) 2024 JeoJay\n\nLicencia:\nPermitido para uso individual u organizacional bajo las siguientes condiciones:\n\n1. Uso no comercial:\nEste software es completamente gratuito y de código abierto, estrictamente para uso no comercial. Está prohibido vender este software.\n\n2. Atribución:\nCualquier forma de republicación, cita o uso en sitios web de terceros debe indicar explícitamente la fuente e incluir la siguiente información:\nDesarrollado por JeoJay. Copyright (C) 2024 JeoJay. Reservados todos los derechos.\n\n3. No modifique las declaraciones de derechos de autor:\nAl volver a publicar o utilizar cualquier contenido de este software, el aviso de derechos de autor original y la información de atribución no deben modificarse ni eliminarse.\n\nDescargo de responsabilidad:\nEste software se proporciona \"tal cual\", sin garantía de ningún tipo, expresa o implícita. El propietario de los derechos de autor no será responsable de ningún daño directo o indirecto que surja del uso de este software.';

  @override
  String get themeModeTitle => 'Modo oscuro:';

  @override
  String get themeModeSystem => 'Seguir el sistema';

  @override
  String get themeModeLight => 'Apagado';

  @override
  String get themeModeDark => 'En';

  @override
  String get themeColorTitle => 'Color del tema:';

  @override
  String get appFontTitle => 'Fuente de la aplicación:';

  @override
  String get efiSettingsTitle => 'Opciones de salida EFI:';

  @override
  String get addOpenCoreTheme =>
      'Agregue el tema de arranque OpenCore al configurar EFI';

  @override
  String get generateConfigModel =>
      'Genere el archivo configModel en la carpeta EFI';

  @override
  String get zipEFI => 'Comprimir EFI en un archivo Zip';

  @override
  String get languageTitle => 'Idioma:';

  @override
  String get languageSystem => 'Seguir el sistema';

  @override
  String get languageEn => 'Inglés';

  @override
  String get languagePtBR => 'Portugués (Brasil)';

  @override
  String get languagePtPT => 'Portugués (Portugal)';

  @override
  String get languageZhCN => 'Chino (simplificado)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => 'japonés';

  @override
  String get languageEs => 'Español';

  @override
  String get languageFr => 'Francés';

  @override
  String get languageAr => 'árabe';

  @override
  String get languageHi => 'hindi';

  @override
  String get languageRu => 'ruso';

  @override
  String get languageIt => 'italiano';

  @override
  String get versionUpdateTitle => 'Actualización de versión:';

  @override
  String currentVersion(Object version) {
    return 'Versión actual: $version';
  }

  @override
  String get checkUpdate => 'Buscar actualizaciones';

  @override
  String get checkingUpdate => 'De cheques...';

  @override
  String get settingSnippet =>
      '1. La opción \'Agregar tema de arranque OpenCore al configurar EFI\' está habilitada de forma predeterminada. Se incluirá un tema de inicio en la carpeta EFI de salida. Desmarque si no es necesario.\n\n2. La opción \'Generar archivo configModel en la carpeta EFI\' está habilitada de forma predeterminada. Este archivo se puede utilizar para volver a editar y ajustar el EFI actual en la sección \'Proceso EFI\'.\n\n3. La opción \'Comprimir EFI en un archivo Zip\' comprime el EFI de salida en un archivo Zip. Tenga en cuenta que la compresión de archivos Zip puede afectar el progreso general de la salida EFI, especialmente en hardware de menor rendimiento.';

  @override
  String get fontMicrosoftYaHei => 'Microsoft Ya Hei';

  @override
  String get fontSarasaGothic => 'Sarasa Gótica';

  @override
  String get fontSourceHanSerif => 'Fuente Han Serif';

  @override
  String get cpuArchitecture => 'Arquitectura de CPU';

  @override
  String get desktop => 'De oficina';

  @override
  String get laptop => 'Computadora portátil';

  @override
  String get hedt => 'Servidor';

  @override
  String get nuc => 'miniordenador';

  @override
  String get amd => 'Procesador AMD';

  @override
  String get smbios => 'SMBIOS Model';

  @override
  String get generateEFI => 'Generar EFI';

  @override
  String get clearSelection => 'Borrar selección';

  @override
  String get exportConfig => 'Exportar configuración';

  @override
  String get selectTargetFolder => 'Seleccionar directorio de destino';

  @override
  String get efiGenerateSuccess => '¡EFI generado con éxito!';

  @override
  String efiGenerateFailed(Object error) {
    return 'Error en la generación de EFI: $error';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get save => 'Ahorrar';

  @override
  String get delete => 'Borrar';

  @override
  String get openFolder => 'Abrir carpeta';

  @override
  String get date => 'Fecha';

  @override
  String get actions => 'Comportamiento';

  @override
  String get historyTitle => 'Historia';

  @override
  String get historyDescription =>
      'Se realiza una copia de seguridad automática de los EFI generados por RapidEFI después de cada compilación exitosa. Puede volver a editar y ajustar la salida en función de estos registros cuando sea necesario.';

  @override
  String get clearAllHistory => 'Borrar todo el historial';

  @override
  String get clearingHistory => 'Borrando historial...';

  @override
  String get noHistory => 'Sin registros históricos';

  @override
  String get editEFI => 'Editar EFI';

  @override
  String get configuringEFI => 'Configurando EFI, espere...';

  @override
  String get configureEFISuccess => 'EFI configurado correctamente';

  @override
  String get configureEFIFailed =>
      '¡Error al configurar EFI!\nCambie el directorio de salida de EFI.';

  @override
  String get sponsorTitle => 'Desarrollador patrocinador';

  @override
  String get visitBilibili => 'Bilibili del autor';

  @override
  String get visitGithub => 'Visita GitHub';

  @override
  String get buyCoffeeTitle => 'Cómprele un café al desarrollador';

  @override
  String get buyCoffeeText =>
      'Si esta herramienta te ayudó, ¡no dudes en patrocinar al desarrollador! ¡Gracias por su apoyo!\n\nContacto del autor: QQ 766264141 o WX: JeoJay127. No existen otros métodos de contacto privado, ¡cuidado con las estafas!';

  @override
  String get successCasesTitle => 'Casos de éxito de RapidEFI';

  @override
  String get tahoeGuideTitle => 'Guía de macOS Tahoe 26';

  @override
  String get oclpIntro => 'Introducción';

  @override
  String get oclpGpu => 'Parche de GPU';

  @override
  String get oclpWifi => 'Parche WiFi';

  @override
  String get ssdtPlatform => 'Parche de plataforma';

  @override
  String get ssdtAudio => 'Parche de audio';

  @override
  String get ssdtGpuSpoof => 'Suplantación de GPU';

  @override
  String get ssdtDisableDevice => 'Desactivar dispositivo';

  @override
  String get ssdtBrightness => 'Parche de brillo';

  @override
  String get manualEFIConfig => 'Configuración manual de EFI';

  @override
  String get autoEFIConfig => 'Configuración automática de EFI';

  @override
  String get cpuSelection => 'Selección de CPU:';

  @override
  String get platformSelection => 'Selección de plataforma:';

  @override
  String get platformInfo => 'Información de la plataforma:';

  @override
  String get targetMacOSVersion => 'Versión de destino de macOS:';

  @override
  String get smbiosModelSetup => 'Configuración del modelo SMBIOS:';

  @override
  String get motherboardModelConfig =>
      'Configuración del modelo de placa base:';

  @override
  String get selectMotherboardModelTip =>
      '(Seleccione el modelo de placa base para aplicar la configuración)';

  @override
  String get platformGen => 'Generación de plataforma';

  @override
  String get vendor => 'Marca';

  @override
  String get motherboardModel => 'Modelo de placa base';

  @override
  String get pleaseSelect => 'Por favor seleccione';

  @override
  String get selected => 'Seleccionado:';

  @override
  String get applySelectedConfig => 'Aplicar configuración seleccionada';

  @override
  String get noMatchingConfigEntries =>
      'No hay entradas de configuración coincidentes';

  @override
  String get pentiumCeleron => 'Pentium/Celerón';

  @override
  String get pentiumCeleronTip =>
      '¡Los procesadores Pentium o Celeron requieren suplantación de CPU! Por favor habilítelo.\nNota: ¡Las iGPU Pentium/Celeron generalmente no son compatibles!';

  @override
  String get u62CpuTitle => 'CPU tipo U62';

  @override
  String get u62CpuTip =>
      'CPU Comet Lake U62 de décima generación (por ejemplo, i3-10110U, i5-10210U, i7-10510U, etc.): ¡habilítelo!';

  @override
  String get macOSVersionSnippet =>
      'El EFI generado es compatible con versiones anteriores de macOS seleccionadas hasta OS X El Capitan 10.11.';

  @override
  String get amdCores => 'Número de núcleos AMD:';

  @override
  String get ryzen7000to9000 => 'CPU de la serie 7000~9000';

  @override
  String get useAmdIgpuOutput => 'Utilice AMD iGPU para la salida de pantalla';

  @override
  String get igpuConfigTitle => 'Configuración de iGPU';

  @override
  String get dgpuConfigTitle => 'Configuración de dGPU';

  @override
  String get audioDriver => 'Controlador de audio:';

  @override
  String get defaultAppleALCDriver =>
      '(Predeterminado: utiliza el controlador AppleALC)';

  @override
  String get alcLayoutId => 'ID de diseño de ALC:';

  @override
  String get queryLayoutId => 'ID de diseño de consulta';

  @override
  String get hpetAcpiPath => 'Ruta HPET ACPI (arreglar IRQ de audio):';

  @override
  String get fixIrq => 'Reparar IRQ';

  @override
  String get selectAudioLayoutIdTitle => 'Seleccionar ID de diseño de audio';

  @override
  String get selectAudioLayoutIdTip =>
      '(Utilice la rueda de desplazamiento para seleccionar y luego haga clic en confirmar)';

  @override
  String get ethernetDriver => 'Controlador Ethernet:';

  @override
  String get defaultNoEthernetDriver =>
      '(Predeterminado: no se agregó ningún controlador Ethernet)';

  @override
  String get loadingData => 'Cargando datos...';

  @override
  String get refreshHardwareInfo => 'Actualizar información de hardware';

  @override
  String get importHardwareInfo => 'Importar datos de hardware';

  @override
  String get exportHardwareReport => 'Informe de exportación de hardware';

  @override
  String get exportAcpiTables => 'Exportar tablas ACPI';

  @override
  String get efiSettings => 'Configuración de EFI';

  @override
  String get outputEFI => 'Exportar EFI';

  @override
  String get summaryView => 'Resumen';

  @override
  String get detailedView => 'Detallado';

  @override
  String get legendGreen =>
      'Verde: admite el último sistema operativo (macOS Tahoe 26)';

  @override
  String get legendYellow =>
      'Amarillo: admite algunas versiones del sistema operativo';

  @override
  String get legendRed => 'Rojo: Completamente incompatible';

  @override
  String get noAcpiImported => 'No se importa ACPI';

  @override
  String get personalizedEfiTitle => 'Configuración EFI personalizada';

  @override
  String get applySettings => 'Aplicar configuración';

  @override
  String get configureEFIError =>
      '¡Error al configurar EFI!\nPor favor cambie la ruta de salida';

  @override
  String get selectConfigItems =>
      'Seleccione los elementos de configuración para aplicar';

  @override
  String get newVersionFound => 'Nueva versión disponible';

  @override
  String versionTag(Object tag) {
    return 'Versión: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'Fecha de lanzamiento: $date';
  }

  @override
  String get downloadNow => 'Descargar ahora';

  @override
  String get close => 'Cerca';

  @override
  String get generatingEfiAndSsdt =>
      'Generando EFI y SSDT personalizado, espere...';

  @override
  String get configuringEfiTitle => 'Configurar EFI';

  @override
  String get configureEfiSuccessTitle => 'EFI configurado correctamente';

  @override
  String get configureEfiErrorTitle => 'Error de configuración de EFI';

  @override
  String get outputDirectory => 'Directorio de salida:';

  @override
  String get openEfiDirectory => 'Abrir directorio EFI';

  @override
  String get select => 'Seleccionar';

  @override
  String get selectFile => 'Seleccionar archivo';

  @override
  String get selectDirectory => 'Seleccionar directorio';

  @override
  String get hardwareReport => 'Informe de hardware';

  @override
  String get acpiTablesDirectory => 'Directorio de tablas ACPI';

  @override
  String get noAcpiFolderTip =>
      'Sin el directorio de tablas ACPI, no se puede generar SSDT personalizado a partir del informe importado.';

  @override
  String get hasAcpiFolderTip =>
      'El directorio de tablas ACPI seleccionado se utilizará para SSDT personalizado.';

  @override
  String get adminRightsRequired => 'Derechos de administrador requeridos';

  @override
  String get enterSystemPassword =>
      'Por favor ingrese la contraseña de su sistema';

  @override
  String get import => 'Importar';

  @override
  String get optionalSelectIfMatching => '(Opcional: verifique si coincide)';

  @override
  String get selectIfMatching => '(Marque si coincide)';

  @override
  String get baseConfig => 'Configuración básica';

  @override
  String get advanceConfig => 'Configuración avanzada';

  @override
  String get connectorCustomization => 'Personalización del conector';

  @override
  String get displayEdid => 'Mostrar EDID';

  @override
  String get nvidiaDgpu => 'GPU Nvidia';

  @override
  String get amdDgpu => 'GPU AMD';

  @override
  String get amdDgpuSpoof => 'Parodia de la dGPU de AMD';

  @override
  String get above4gTitle =>
      'Por encima de la configuración de decodificación 4G';

  @override
  String get addNpciBootArg => 'Agregue el argumento de arranque npci=0x2000';

  @override
  String get above4gTip =>
      'Recomendado si la decodificación superior a 4G está desactivada en BIOS. Desmarque si está habilitado.';

  @override
  String get personalizedEfiIntroTip =>
      'Todos los campos son opcionales. La salida EFI generará los archivos correspondientes en función de esta configuración.';

  @override
  String get ssdtType => 'Tipo SSDT:';

  @override
  String get customSsdt => 'SSDT personalizado';

  @override
  String get presetSsdt => 'SSDT preestablecido';

  @override
  String get cpuTypeLabel => 'Tipo de procesador:';

  @override
  String get platformTypeLabel => 'Tipo de plataforma:';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get basicOfficialRecommend => '* Básico (Recomendación Oficial)';

  @override
  String get recommendFixes => '* Recomendar (correcciones de funciones)';

  @override
  String get optionalEnhancements => '* Opcional (Mejoras)';

  @override
  String get personalizedPlatformTip =>
      'El tipo de CPU, el tipo de plataforma y la información se detectan desde el hardware; ajuste manualmente a continuación si es incorrecto.';

  @override
  String get pciPathLabel => 'Ruta PCI de la GPU:';

  @override
  String get pciPathHint => 'Ingrese la ruta PCI';

  @override
  String get spoofGpuIdLabel => 'ID de GPU falso:';

  @override
  String get bluetoothNvramDefaultTitle =>
      'Bluetooth NVRAM 1 (Default. Automatically added with the Bluetooth driver)';

  @override
  String get bluetoothNvramAxTitle =>
      'Bluetooth NVRAM 2 (Only for Intel AX200/AX201 cards)';

  @override
  String get uefiHfsPlusLegacyTip =>
      'Uses HfsPlusLegacy. Suitable for old systems (3rd gen or earlier), especially Celeron/Pentium. If OpenCore menu does not appear, try HfsPlus or OpenHfsPlus.';

  @override
  String get uefiHfsPlusTip =>
      'Uses HfsPlus. Suitable for 3rd gen and newer systems. Recommended by default. If the menu does not appear, try HfsPlusLegacy or OpenHfsPlus.';

  @override
  String get uefiOpenHfsPlusTip =>
      'Uses OpenHfsPlus. Suitable for 3rd gen and newer, recommended for newer Celeron/Pentium. Avoid if not necessary. If the menu does not appear, try HfsPlusLegacy or HfsPlus.';

  @override
  String get selectSpoofGpuPlaceholder => 'Seleccione GPU para falsificar';

  @override
  String get gpuSpoofDataLoadError =>
      'No se pudieron cargar datos falsos de GPU';

  @override
  String get injectEdidTitle =>
      'Inyectar EDID de pantalla (256 o 512 caracteres hexadecimales):';

  @override
  String get injectEdidHint =>
      'Ingrese Display EDID (formato hexadecimal, espacios permitidos)';

  @override
  String get edidHexError =>
      '¡Los datos EDID contienen caracteres no hexadecimales!';

  @override
  String get edidLengthError => '¡La longitud EDID no es múltiplo de 256!';

  @override
  String get edidInvalidToast =>
      'Los datos EDID no son válidos, verifíquelos antes de ingresar.';

  @override
  String get details => 'Detalles';

  @override
  String get clearAllSelection => 'Borrar toda la selección';

  @override
  String applySelected(Object count) {
    return 'Aplicar seleccionados ($count elementos)';
  }

  @override
  String get getModdedOclp => 'Obtener OCLP modificado';

  @override
  String get getIntelModdedOclp => 'Obtenga OCLP modificado por Intel';

  @override
  String get soundDriverCardTitle => 'Controlador de audio:';

  @override
  String get soundDriverDefaultTip =>
      '(El valor predeterminado utiliza el controlador AppleALC)';

  @override
  String get hpetAcpiPathTitle => 'Ruta HPET ACPI (arreglar IRQ de audio):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'Seleccione ID de diseño de audio (DB: $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip =>
      '(Desplácese con la rueda y luego haga clic en confirmar)';

  @override
  String get nicDriverCardTitle => 'Controlador de tarjeta de red:';

  @override
  String get nicDriverDefaultTip =>
      '(Por defecto no se agrega ningún controlador de tarjeta de red)';

  @override
  String get wifiBtCardTitle => 'Controlador de Wi-Fi y Bluetooth:';

  @override
  String get wifiBtDefaultTip =>
      '(Por defecto no hay controlador Wi-Fi, configúrelo manualmente si es necesario)';

  @override
  String get usbCardTitle => 'Controlador USB:';

  @override
  String get usbDefaultTip => '(El valor predeterminado usa USBInjectAll)';

  @override
  String get selectUtbMap => 'Seleccione UTBMap';

  @override
  String get selectUtbMapHint => 'Seleccione UTBMap.kext creado por USBToolBox';

  @override
  String get releaseUsbOwnershipText =>
      'Habilite la peculiaridad \'UEFI->Quirks->ReleaseUsbOwnership\' para liberar la propiedad del controlador USB del firmware...';

  @override
  String get bootArgsCardTitle => 'Argumentos de arranque:';

  @override
  String get bootArgsDefaultTip =>
      '(El valor predeterminado habilita el modo detallado -v, desmarque si no es necesario)';

  @override
  String get debugCategory => 'Depurar';

  @override
  String get amfiSipCategory => 'AMFI/SIP';

  @override
  String get igpuCategory => 'iGPU';

  @override
  String get dgpuCategory => 'dGPU';

  @override
  String get blackScreenFixCategory => 'Correcciones de pantalla negra';

  @override
  String get above4gCategory => 'Por encima de la decodificación 4G';

  @override
  String get touchpadFixCategory => 'Correcciones del panel táctil';

  @override
  String get othersCategory => 'Otros';

  @override
  String get optionalKextsCardTitle => 'Textos opcionales:';

  @override
  String get optionalKextsDefaultTip =>
      '(Controladores opcionales, no los agregue a menos que sea necesario)';

  @override
  String get graphicsCategory => 'Gráficos';

  @override
  String get powerManagementCategory => 'Gestión de energía';

  @override
  String get sleepCategory => 'Dormir';

  @override
  String get diskCategory => 'Disco';

  @override
  String get cpuCategory => 'UPC';

  @override
  String get amdPlatformCategory => 'Plataforma AMD';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'Tarjeta SD';

  @override
  String get optionalSettingsCardTitle => 'Configuraciones opcionales:';

  @override
  String get optionalSettingsDefaultTip =>
      '(Por lo general, mantenga los valores predeterminados a menos que sea necesario)';

  @override
  String get tabBrand => 'Marca';

  @override
  String get tabSpecialMotherboard => 'Placa base especial';

  @override
  String get tabSipSetting => 'Configuración SIP';

  @override
  String get tabCpuRename => 'Cambiar nombre de CPU';

  @override
  String get tabUiScale => 'Escala de interfaz de usuario OpenCore';

  @override
  String get tabAcpiConfig => 'Configuración ACPI';

  @override
  String get tabBooterConfig => 'Configuración de arranque';

  @override
  String get tabKernelConfig => 'Configuración del núcleo';

  @override
  String get tabUefiConfig => 'Configuración UEFI';

  @override
  String get processEfiTitle => 'Proceso EFI';

  @override
  String get processEfiSubTitle => '(Reprocesar EFI configurado por RapidEFI)';

  @override
  String get processEfiExpanderText =>
      'EFI configurado con la herramienta RapidEFI generará un archivo llamado configModel en la carpeta de salida de EFI. Importe este archivo aquí para editar el EFI actual nuevamente.\n\nEsta función solo es compatible con RapidEFI V3.0.0 y superiores.';

  @override
  String get clearCurrentConfig => 'Borrar configuración actual';

  @override
  String get importConfigModelFile =>
      'Importar archivo de modelo de configuración';

  @override
  String get importingConfigModel => 'Importando modelo de configuración...';

  @override
  String get releaseToReimport =>
      'Suelte el mouse para volver a importar configModel';

  @override
  String get dragConfigModelArea =>
      'Arrastre el archivo configModel aquí\no haga clic para seleccionar el archivo';

  @override
  String get importFailedToast =>
      'Los datos de configuración importados no son válidos; vuelva a importar un archivo configModel válido.';

  @override
  String get changeEfiTitle => 'Cambiar título de EFI';

  @override
  String get modifyCurrentEfiName => 'Modificar el nombre EFI actual';

  @override
  String originalEfiName(String name) {
    return 'Nombre EFI original: $name';
  }

  @override
  String get enterModifiedName => 'Por favor ingrese el nombre modificado';

  @override
  String get deleteRecord => 'Eliminar este registro';

  @override
  String get exportThisEfi => 'Exportar este EFI';

  @override
  String get releaseToIdentifyHardware =>
      'Versión para identificar automáticamente el informe de hardware y las tablas ACPI';

  @override
  String get dragHardwareReportHere =>
      'Arrastra la carpeta de informes de hardware exportada por esta herramienta.\n(identifica automáticamente sysInfo.txt y el directorio ACPI)';

  @override
  String get invalidHardwareReportToast =>
      'No se reconoce el archivo de informe de hardware válido';

  @override
  String optionalSuffix(String title) {
    return '$title (Opcional)';
  }

  @override
  String get notSelected => 'No seleccionado';

  @override
  String get verifyingAdminPassword =>
      'Verificando contraseña de administrador...';

  @override
  String get hardwareReportAcpiMissing =>
      'Se importó el informe de hardware externo, pero no se proporcionó el directorio de la tabla ACPI, SSDT no se puede personalizar.';

  @override
  String get hwMemory => 'Memoria';

  @override
  String get hwCompatible => 'Compatible';

  @override
  String hwDeviceID(String id) {
    return 'ID del dispositivo: $id';
  }

  @override
  String hwType(String type) {
    return 'Tipo: $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'Capacidad: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'Interfaz: $bus';
  }

  @override
  String hwModel(String model) {
    return 'Modelo: $model';
  }

  @override
  String get hwStorage => 'Almacenamiento';

  @override
  String get hwStorageController => 'Almacenamiento\nControlador';

  @override
  String get hwBluetooth => 'bluetooth';

  @override
  String get hwAudioCard => 'Tarjeta de sonido';

  @override
  String get hwAudioLayoutId => 'ID de diseño:';

  @override
  String get hwNetworkCard => 'Tarjeta de red';

  @override
  String get hwMonitor => 'Monitor';

  @override
  String hwResolution(String res, String hz) {
    return 'Resolución: $res @ $hz Hz';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'GPU conectada: $gpu';
  }

  @override
  String get hwInput => 'Aporte';

  @override
  String get hwSDCard => 'Tarjeta SD';

  @override
  String hwDevice(String dev) {
    return 'Dispositivo: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'Número de serie: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'Incorporado: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'Arranque seguro: $status';
  }

  @override
  String hwCSM(String status) {
    return 'CSM: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'BARRA redimensionable: $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'Por encima de la decodificación 4G: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'AHCI: $status';
  }

  @override
  String get hwAHCIUnknown => 'AHCI: Desconocido';

  @override
  String get hwEnabled => 'Activado';

  @override
  String get hwDisabled => 'Desactivado';

  @override
  String get hwCurrentBiosSettings => 'Configuración actual del BIOS';

  @override
  String get hwBiosNote =>
      'Notas de Hackintosh:\n1. Para todo el texto rojo, asegúrese de activarlo o desactivarlo en BIOS para mantenerlo azul.\n2. El texto azul indica la configuración adecuada en la mayoría de los casos.\nArranque seguro: debe estar deshabilitado (de lo contrario, el firmware sin firmar, como el gestor de arranque OC, no puede iniciarse normalmente).\nCSM (Módulo de soporte de compatibilidad): se recomienda desactivarlo en la mayoría de los casos (la IGPU móvil Intel de 4.ª y 5.ª generación, las plataformas X99 y algunas tarjetas gráficas RX460 pueden necesitar CSM activado; de lo contrario, se producirá rotura de pantalla o fallo de arranque).\nBAR redimensionable: se recomienda deshabilitarla en BIOS (si no está deshabilitada, asegúrese de que ResizeAppleGpuBars esté configurado en 0 en Booter->Quirks para evitar problemas de arranque).\nDecodificación superior a 4G: se recomienda habilitarlo en BIOS y eliminar el parámetro npci=0x2000 verificado automáticamente. Si esta opción no está en BIOS, se recomienda marcar npci=0x2000 o npci=0x3000. Nota: ¡Los parámetros de decodificación BIOS superiores a 4G y npci son mutuamente excluyentes!\nAHCI (modo de disco SATA): debe estar habilitado (de lo contrario, es posible que no se reconozcan los discos o aparezca un símbolo de prohibición).';

  @override
  String hwBit(String arch) {
    return '$arch Bit';
  }

  @override
  String get hwVirtualizationEnabled => 'Virtualización: habilitada';

  @override
  String get hwVirtualizationDisabled => 'Virtualización: deshabilitada';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores Núcleos $threads Hilos';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'Conjunto de instrucciones: $simd';
  }

  @override
  String hwCore(String core) {
    return 'Núcleo: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'Se requiere identificación falsa: $id';
  }

  @override
  String get hwGPU => 'GPU';

  @override
  String get hwIncompatible => 'Incompatible';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'Placa madre';

  @override
  String hwBrand(String brand) {
    return 'Marca: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'Conjunto de chips: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALC admite múltiples ID de diseño. Diferentes ID pueden afectar la disponibilidad de la interfaz de audio.';

  @override
  String get manualNvidiaInfoText =>
      'Las series de GPU Nvidia compatibles son las siguientes:\n• Serie Tesla (series 8000 - 300): compatible de forma nativa hasta macOS High Sierra 10.13.x (puede necesitar corrección NVCAP), las versiones superiores requieren parche OCLP (no es compatible con Metal)\nEjemplos: 8600GT, 9600GT, GT210, GT220, GT240, etc. ¡Demasiado viejo, no recomendado!\n• Serie Kepler (series 600 - 800): compatible de forma nativa hasta macOS Big Sur 11.x, las versiones superiores requieren un parche OCLP (compatible con Metal, controlador verdadero)\nNúcleo Kepler: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black, etc.\nTarjetas profesionales con núcleo Kepler: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000, etc.\n• Serie Fermi, Maxwell, Pascal: Webdriver compatible hasta macOS High Sierra 10.13.x. Para macOS Big Sur 11.x y superior, verifique los argumentos de arranque a continuación y aplique el parche OCLP (sin soporte para Metal, controlador falso)\nSerie Fermi: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740, etc.\nSerie Maxwell: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980, etc.\nSerie Pascal: GTX1050, GTX1060, GTX1070, GTX1080, etc.\nSerie de GPU Nvidia no compatible (las series 11 y superiores NO son compatibles):\n• Serie 16 ~ 50: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070, etc.';

  @override
  String get manualEdidInfoText =>
      '1. Generalmente se usa para solucionar el problema de pantalla negra/sin señal de la iGPU Intel de sexta a décima generación (dGPU EDID no se maneja aquí). (Síntoma típico: la luz de bloqueo de mayúsculas del teclado funciona, pero el monitor muestra una pantalla negra sin señal)\n2. Para las placas base de escritorio de la serie 500 (H510/B560/H570/Q570/Z590/W580) que utilizan salida HDMI iGPU, es obligatorio inyectar EDID de monitor real; de lo contrario, es muy probable que aparezca una pantalla negra.\n3. Cómo obtener el EDID del monitor:\nEn Windows, use la herramienta RapidEFI o hdinfo para obtener el EDID (puede usar herramientas de terceros, pero debe formatear el EDID usted mismo):\n1). Abra RapidEFI v4.x o superior, haga clic en \"Configurar EFI\" -> \"Configurar automáticamente EFI\" -> \"Configuración detallada\" (o haga clic en \"Configuración detallada\" si usa hdinfo).\n2). Espere a que finalice la detección automática de información de hardware, luego haga clic en el código EDID al lado de la sección Monitor para obtenerlo (le indicará que se copió correctamente en el portapapeles).\n3). Regrese a esta página y pegue el EDID en el cuadro de entrada.\n4. Antes de inyectar EDID, verifique la interfaz AAPL0X de destino en \"Configuración avanzada\"; Si no está seguro, elija según el plan de reparación HDMI real.\n5. Los datos EDID suelen tener 128 bytes (256 caracteres hexadecimales) o 256 bytes (512 caracteres hexadecimales). Si no es así, ¡verifique dos veces antes de ingresar!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'Búfer de cuadros actual: $fb. Generando framebuffer-conX-alldata según los documentos de WhichGreen.';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'Framebuffer actual no admite recomendaciones estructuradas; elimine los valores sin procesar existentes y vuelva a seleccionar una configuración base de iGPU compatible.';

  @override
  String get manualAddConnectorTooltip => 'Agregar parche de conector';

  @override
  String get manualConnectorLabel => 'Conector';

  @override
  String get manualIndexLabel => 'Índice';

  @override
  String get manualBusIdLabel => 'Identificación del autobús';

  @override
  String get manualConnectorTypeLabel => 'Tipo';

  @override
  String manualOldConnector(String label) {
    return '$label (heredado)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'Eliminar parche con$index';
  }

  @override
  String get manualUnparseableValue => 'Valor bruto no analizable';

  @override
  String get manualDeleteAndReadd =>
      'Elimine y vuelva a agregar parches de conectores estructurados.';

  @override
  String get manualDeleteUnparseableTooltip =>
      'Eliminar parche de conector no analizable';

  @override
  String get manualBatteryDriver => 'Controlador de batería';

  @override
  String get manualKeyboardTouchpadDriver =>
      'Controlador de teclado y panel táctil';

  @override
  String get manualSensorDriver =>
      'Controlador de sensor (no recomendado a menos que sea necesario)';

  @override
  String get manualKernelTrimStrategy => 'Estrategia de recorte de SSD';

  @override
  String get manualKernelPowerManagement => 'Gestión de energía';

  @override
  String get manualKernelDummyPowerManagement =>
      'Deshabilitar la administración de energía (DummyPowerManagement), soluciona problemas de reinicio causados ​​por la administración de energía de la CPU (por ejemplo, pánico del kernel AppleIntelCPUPowerManagement, atascado en el logotipo de inicio o reinicio justo después de ingresar al sistema). Para 4.ª generación y superiores, esta es la alternativa preferida a NullCpuPowerManagement.kext.';

  @override
  String get manualKernelQuirksDefault =>
      'Kernel: se recomienda mantener Quirks por defecto, a menos que sea necesario o sepas lo que significa cada elemento.';

  @override
  String get manualUefiProvideConsoleGop =>
      'La peculiaridad de ProvideConsoleGop está habilitada de forma predeterminada para corregir que la interfaz de usuario de arranque de OpenCore no se muestre. Si aún no aparece, intenta desmarcar esto.';

  @override
  String get manualUefiDriversHfs =>
      'Controladores UEFI (se corrige que la interfaz de usuario de arranque de OpenCore no se muestre debido al controlador HFS)';

  @override
  String get manualUefiOutputBootUI =>
      'UEFI: salida (se corrige que la interfaz de usuario de arranque de OpenCore no se muestra)';

  @override
  String get manualSpecialMotherboardTip =>
      'Opcional: compruebe si su placa base coincide con la descripción';

  @override
  String get manualCsrSettingTip =>
      'Opcional: configurado según las necesidades, SIP está deshabilitado de forma predeterminada';

  @override
  String get manualRenameCpuNameTip =>
      'Opcional: personalizar el nombre de la CPU';

  @override
  String get manualRenameCpuNameLabel =>
      'Ingrese el nombre de la CPU (déjelo en blanco para mostrar el nombre de la CPU de Windows):';

  @override
  String get manualRenameCpuNameHint => 'Introduzca aquí el nombre de la CPU';

  @override
  String get manualBrandTip =>
      'Opcional: compruebe si la marca coincide con la descripción.';

  @override
  String get manualBooterPlan1 => 'Plano 1';

  @override
  String get manualBooterPlan2 => 'Plano 2';

  @override
  String get manualBooterPlan3 => 'Plano 3';

  @override
  String get manualBooterPlan4 => 'Plano 4';

  @override
  String get manualBooterEbFix =>
      'Atascado en la corrección de EB (opcional; por lo general, el valor predeterminado está bien):';

  @override
  String get manualAcpiPatch => 'ACPI - Parche';

  @override
  String get manualAcpiSsdt => 'ACPI - SSDT';

  @override
  String get manualBluetoothNvram => 'Parámetros de NVRAM de Bluetooth:';

  @override
  String get manualUsbWifiGithub => 'Visita el repositorio del autor chris1111';

  @override
  String get manualUsbWifiKexts =>
      'Agregue los Kexts necesarios para WiFi USB (Nota: también necesita instalar el cliente del Adaptador inalámbrico USB Big Sur en macOS. Reinicie si no surte efecto)';

  @override
  String get manualWifiCardSupport =>
      '¡Los controladores proporcionados son compatibles con macOS Mojave 10.14 ~ macOS Sequoia 15! Tenga en cuenta que Monterey 12 y superiores requieren un parche OCLP para funcionar correctamente.';

  @override
  String get manualWifiAtheros => 'Atero';

  @override
  String get manualWifiIntel => 'Intel';

  @override
  String get manualWifiBrcm => 'Broadcom (Brcm)';

  @override
  String get manualWifiBluetoothDriver => 'Controlador Bluetooth';

  @override
  String get manualWifiItlwmPlan =>
      'Plan 2, use itlwm (requiere HeliPort), controlador Intel WiFi. En conflicto con el Plan 1, ¡¡¡NO lo usen juntos!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'Plan 1, use AirportItlwm, el controlador Intel WiFi, agrega todos los kexts WiFi (tamaño grande, elija con cuidado). En conflicto con el Plan 2, ¡¡¡NO lo usen juntos!!!';

  @override
  String get manualWifiAddAllDrivers =>
      'Agregue todos los controladores WiFi (tamaño grande, elija con cuidado)';

  @override
  String get manualLaptopMainly => '(Principalmente para portátiles)';

  @override
  String get manualLaptopRelatedDrivers =>
      'Controladores relacionados con portátiles:';

  @override
  String get manualLaptopOtherFixes => 'Otras correcciones';

  @override
  String get manualLaptopOtherFixesTip =>
      'Otras correcciones (no recomendadas a menos que sean necesarias)';

  @override
  String get manualMotherboardSelectAll => 'Seleccionar Todo/Ninguno';

  @override
  String get manualMotherboardDetails => 'Detalles';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total Seleccionado)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return 'Se aplicaron configuraciones $count de $model';
  }

  @override
  String get manualMotherboardFromMbconfs => 'De mbconfs';

  @override
  String get manualIgpuRemark => '⚠️ Observación';

  @override
  String get manualIgpuSelectCpu => 'Seleccione CPU';

  @override
  String get manualIgpuLoadConfig =>
      'Cargue la configuración de iGPU desde el modelo de CPU';

  @override
  String get manualIgpuSelectProperties =>
      'Seleccione propiedades para aplicar';

  @override
  String get manualIgpuPresetScheme => 'Esquema preestablecido';

  @override
  String get manualIgpuSelectGen => 'Seleccionar Generación';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'Seleccionado: $model $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'Modelo de CPU';

  @override
  String get manualIgpuMatchOrNot => 'comprobar si coincide';

  @override
  String get manualIgpuCpuGen => 'Generación de CPU';

  @override
  String get manualIgpuByCpuModel => 'Por modelo de CPU';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return 'Cargué $igpu configuración de iGPU desde $model, escribiendo propiedades $count';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return 'Desde $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'Seleccione la generación y el modelo de CPU, luego verifique las propiedades para aplicar';

  @override
  String get manualIgpuModel => 'Modelo';

  @override
  String get manualFakeGpuSelect => 'Seleccione GPU para falsificar';

  @override
  String get settingsThemeColors => 'Tema de color';

  @override
  String get settingsThemeDefault => 'Por defecto';

  @override
  String get sharedInvalidInput => 'Entrada no válida';

  @override
  String sharedRequiresHexChars(String length) {
    return 'Requiere $length caracteres hexadecimales';
  }

  @override
  String get sharedExample73BF => 'Ejemplo: 73BF';

  @override
  String get sharedTipsLengthMustMatch =>
      'La longitud de las puntas debe coincidir con las opciones';

  @override
  String sharedCpuInfo(String description) {
    return '[Información de la CPU]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'Última versión de macOS compatible de forma nativa: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[BIOS recomendado para deshabilitar]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'Versión de macOS compatible con el parche: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[BIOS recomendado para habilitar]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'Versión inicial de macOS compatible de forma nativa: $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'Ruta ACPI no válida';

  @override
  String get sharedFillAcpiPath => 'Complete la ruta ACPI';

  @override
  String get sharedFillPciPath => 'Complete la ruta PCI';

  @override
  String get sharedInvalidPciPath => 'Ruta PCI no válida';

  @override
  String get sharedGetModifiedOclp => 'Obtener OCLP modificado';

  @override
  String hwConfigModelGenerated(String details) {
    return 'Modelo de configuración generado: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'No se pudo obtener información del hardware: $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'Contraseña de administrador incorrecta, no se pueden exportar tablas ACPI';

  @override
  String get hwNoNativeInfoExportable =>
      'No hay información de hardware nativo disponible para exportar';

  @override
  String get hwOutputtingOpencore => 'Generando OpenCore EFI...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'Error al exportar tablas ACPI nativas: $error';
  }

  @override
  String get hwSsdtProcessFailed =>
      'El proceso de personalización de SSDT falló.';

  @override
  String get hwConfigRuleRefactoring =>
      'Refactorización de reglas de generación de Hardware ConfigModel';

  @override
  String get hwQueryUnsupported =>
      'La plataforma actual no admite consultas de información de hardware';

  @override
  String hwPreparingSsdt(String items) {
    return 'Preparándose para personalizar SSDT: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'Este es un informe de hardware externo importado. Actualice primero la información del hardware nativo antes de exportar.';

  @override
  String get hwRefreshingInfo => 'Actualización de información de hardware';

  @override
  String get hwSsdtProcessEnded =>
      'El proceso de personalización de SSDT finalizó.';

  @override
  String get hwInfoUnsupported =>
      'Información de hardware actualmente no compatible';

  @override
  String get hwEfiWrittenExtracting =>
      'EFI escrito, comenzando a extraer ACPI y personalizar SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'No se pudo configurar EFI: $error';
  }

  @override
  String get hwReportFolderCleanFailed =>
      'No se pudo limpiar la carpeta de informes de hardware';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'No se pudo limpiar la carpeta de informes de hardware: $error';
  }

  @override
  String get hwExportingNativeReport =>
      'Exportando informe de hardware nativo...';

  @override
  String get hwAdminAuthCanceled =>
      'Autorización de administrador cancelada, tablas ACPI no exportadas';

  @override
  String get hwImportedNoAcpiDir =>
      'Se importó el informe de hardware externo, pero no se proporcionó el directorio de tablas ACPI, la personalización de SSDT está deshabilitada.';

  @override
  String get hwExportAcpiUnsupported =>
      'La plataforma actual no admite la exportación de tablas ACPI';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'Informe de hardware exportado a $reportDirectory, $msg';
  }

  @override
  String get hwInfoNotJson =>
      'El archivo de información de hardware no es un objeto JSON';

  @override
  String get hwUnsupported => 'No compatible';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'No se pudo limpiar el directorio temporal de las tablas ACPI: $error';
  }

  @override
  String get hwEfiConfigDone => 'Configuración EFI completa.';

  @override
  String hwEfiConfigError(String error) {
    return 'Error al configurar EFI: $error';
  }

  @override
  String get hwNativeAcpiExportFailed =>
      'Error al exportar tablas ACPI nativas';

  @override
  String get hwAcpiToolNotReady =>
      'La herramienta de exportación ACPI no está lista';

  @override
  String get hwFailed => 'Fallido';

  @override
  String hwImportReportFailed(String e) {
    return 'No se pudo importar el informe de hardware: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'Exportación de tablas ACPI nativas completada: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'Error al exportar tablas ACPI: no se encontraron tablas ACPI válidas';

  @override
  String get hwUsingOriginalSsdt =>
      'Usando EFI SSDT original, omitiendo la personalización de SSDT.';

  @override
  String get hwWaitingRefresh =>
      'Esperando actualización de información de hardware';

  @override
  String get hwInfoLoaded => 'Información de hardware cargada exitosamente';

  @override
  String hwAcpiExportedTo(String path) {
    return 'Tablas ACPI exportadas a $path';
  }

  @override
  String get hwStartConfigEfi => 'Iniciando la configuración de EFI...';

  @override
  String get hwInfoLoadFailed =>
      'No se pudo cargar la información del hardware';

  @override
  String get hwCache => 'Cache';

  @override
  String get hwInfoImportDone =>
      'Importación de información de hardware completa';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'Informe de hardware y tablas ACPI exportadas a $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid =>
      'El directorio de tablas ACPI no es válido, la personalización SSDT no está disponible';

  @override
  String get hwExportingNativeAcpi => 'Exportando tablas ACPI nativas...';

  @override
  String get hwGeneratingConfigModel =>
      'Generando ConfigModel basado en información de hardware...';

  @override
  String get hwInfoImported => 'Información de hardware importada';

  @override
  String get hwAcpiExportFailedOrUnsup =>
      'La exportación de tablas ACPI falló o no es compatible';

  @override
  String get hwReportFolderCreateFailed =>
      'No se pudo crear la carpeta de informes de hardware';

  @override
  String get hwNoAdminPwd =>
      'Contraseña de administrador no ingresada, no se pueden exportar tablas ACPI';

  @override
  String get hwEfiConfigFailedCheck =>
      'Error en la configuración de EFI; verifique la ruta de salida o los registros.';

  @override
  String get hwLoadingInfo => 'Cargando información de hardware';

  @override
  String get hwDone => 'Hecho';

  @override
  String get hwAcpiExportFailedProcess =>
      'Error en la exportación de tablas ACPI: error en la ejecución del proceso de exportación';

  @override
  String get hwIgpuType => 'iGPU';

  @override
  String get hwGpuCompatible => 'Compatible';

  @override
  String get hwGpuIncompatibleNoDisplay =>
      'Incompatible, sin conexión de pantalla directa';

  @override
  String get hwGpuIncompatible => 'Incompatible';

  @override
  String get hwLaptop => 'Computadora portátil';

  @override
  String get hwGpuLoadingCompat => 'Compatibilidad de carga';

  @override
  String get hwGpuLimitedCompat => 'Compatibilidad limitada';

  @override
  String get hwClickToCopy => 'Haga clic para copiar';

  @override
  String get hwCopiedToClipboard => 'Copiado al portapapeles';

  @override
  String get linkCantOpen => 'No se puede abrir el enlace';

  @override
  String get clickToCopy => 'Haga clic para copiar';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get gpuCard => 'GPU';

  @override
  String gpuDeviceId(String id) {
    return 'ID del dispositivo: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'Núcleo: $codename';
  }

  @override
  String get gpuCompatible => 'Compatible';

  @override
  String get gpuIncompatible => 'Incompatible';

  @override
  String get gpuIncompatibleNoDisplay =>
      'Incompatible, sin visualización directa';

  @override
  String get gpuLimitedCompat => 'Compatibilidad limitada';

  @override
  String get gpuLoadingCompat => 'Compatibilidad de carga';

  @override
  String gpuSpoofId(String id) {
    return 'Se requiere identificación falsa: $id';
  }

  @override
  String get bootArgVerbose =>
      'Habilite el modo detallado -v (muestra el resultado de depuración durante el arranque, útil para depurar problemas de inicio)';

  @override
  String get bootArgKeepsyms =>
      'Imprima símbolos de falla del kernel para ayudar a diagnosticar problemas. Generalmente se usa con depuración = 0x100. Altamente recomendado durante la depuración inicial del arranque.';

  @override
  String get bootArgDebug0x100 =>
      'Evite el reinicio automático en caso de pánico del kernel, lo que le permitirá ver los registros de fallos. Altamente recomendado durante la depuración inicial del arranque.';

  @override
  String get bootArgWatchdog0 =>
      'Desactive el mecanismo de vigilancia para evitar reinicios accidentales provocados por pánico durante la depuración del arranque.';

  @override
  String get bootArgSlide0 =>
      'Deshabilite KASLR para solucionar conflictos de memoria que causan pánicos en el inicio temprano del kernel. Utilizado para depurar.';

  @override
  String get bootArgNoCompatCheck =>
      'Omita la verificación de compatibilidad del modelo durante el arranque para evitar el símbolo prohibido. Nota: no omite la verificación del modelo del instalador.';

  @override
  String get bootArgCpus1 =>
      'Habilite solo 1 núcleo de CPU (para CPU de servidor multinúcleo X58/X79/X99/X299 con problemas de pánico del kernel durante la depuración temprana de la instalación).';

  @override
  String get bootArgBetaFix =>
      'Soluciona problemas que pueden aparecer en la última versión de macOS (principalmente Beta), como anomalías de audio, Bluetooth y frecuencia de la CPU. Altamente recomendado en versiones Beta.';

  @override
  String get bootArgAmfi0x80 =>
      'Deshabilite AMFI para GPU más nuevas (HD4000+, GT710+ Kepler) o cuando parchee controladores de Wi-Fi. NO lo use con amfi_get_out_of_my_way=0x1. Sólo es efectivo con SIP deshabilitado.';

  @override
  String get bootArgAmfiGetOut =>
      'Deshabilite AMFI para GPU más antiguas (por ejemplo, GT240) o cuando parchee controladores de Wi-Fi. NO lo use con amfi=0x80. Sólo es efectivo con SIP deshabilitado.';

  @override
  String get bootArgIpcControl =>
      'Solucione fallas de aplicaciones (por ejemplo, Baidu Netdisk) después de deshabilitar AMFI. Sólo es efectivo con SIP deshabilitado.';

  @override
  String get bootArgAmfiPassBeta =>
      'Asegúrese de que AMFIPass.kext funcione en la última versión de macOS Tahoe 26 para continuar eludiendo los controles de seguridad de AMFI.';

  @override
  String get bootArgRevpatch =>
      'Solucione los problemas de actualización de macOS OTA después de deshabilitar SIP o SecureBootModel y corrija la visualización personalizada del nombre de la CPU.';

  @override
  String get bootArgDisableGfxFirmware =>
      'Desactive la carga del firmware de gráficos de Apple para evitar bloqueos durante el inicio debido a una falla en la carga del firmware (solo Intel iGPU).';

  @override
  String get bootArgWegNoIgpu =>
      'Desactive Intel iGPU (recomendado cuando la iGPU no se puede controlar o no admite aceleración de hardware).';

  @override
  String get bootArgIgfxVesa =>
      'Deshabilite la aceleración Intel iGPU (úsela cuando el sistema no se inicie después de aplicar el parche OCLP iGPU, solo depuración).';

  @override
  String get bootArgIgfxRpsc =>
      'Repare y mejore el rendimiento de Intel iGPU (por ejemplo, solucione problemas de codificación, resolución y FPS de 4K HEVC).';

  @override
  String get bootArgIgfxMpc =>
      'Solucione los problemas de resolución de iGPU forzando la anulación del reloj máximo de píxeles y eliminando los límites predeterminados de resolución/frecuencia de actualización de macOS.';

  @override
  String get bootArgGfxfw2 =>
      'Habilite la carga completa del firmware de la iGPU para mejorar la utilización y el rendimiento. Puede provocar fallos en el arranque; utilícelo con precaución.';

  @override
  String get bootArgCdclk =>
      'Se corrigió el pánico del kernel en Ice Lake de décima generación debido a que la frecuencia del Core Display Clock (CDCLK) era demasiado baja.';

  @override
  String get bootArgIgfxdbeo =>
      'Se corrigió el pánico del kernel en Ice Lake de décima generación donde el controlador calcula incorrectamente el tamaño de memoria preasignada de DVMT.';

  @override
  String get bootArgIceLakeDisplay =>
      'Corrija la corrupción de la pantalla que dura entre 7 y 15 segundos en las computadoras portátiles Ice Lake de décima generación al arrancar.';

  @override
  String get bootArgIgfxNoTelemetry =>
      'Deshabilite la carga del módulo de telemetría iGPU durante el arranque. Algunas computadoras portátiles (especialmente las Chromebook) pueden bloquearse en el arranque cuando se carga este módulo.';

  @override
  String get bootArgWegNoEgpu =>
      'Desactive la GPU discreta (recomendado cuando la dGPU en portátiles Intel con doble GPU, normalmente NVIDIA, no se puede controlar).';

  @override
  String get bootArgNvDisable =>
      'Deshabilite el controlador NVIDIA (solo para depurar GPU NVIDIA incompatibles).';

  @override
  String get bootArgUnfairGva =>
      'Se corrige la compatibilidad con DRM de hardware en las GPU AMD (habilita contenido protegido con DRM, como la transmisión en streaming en las GPU AMD compatibles).';

  @override
  String get bootArgRadpg15 =>
      'Se corrigió la corrupción de la pantalla (pantalla codificada/amarilla) en GPU AMD más antiguas (HD7750, HD7850 con núcleos GCN como HD77XX/HD78XX/HD79XX).';

  @override
  String get bootArgAmdNoAccel =>
      'Deshabilite la aceleración de GPU ATI/AMD (úsela cuando el sistema no se inicie después del parche de GPU OCLP, solo depuración).';

  @override
  String get bootArgRaddvi =>
      'Repare la visualización de salida DVI en GPU AMD más antiguas (290X, 370, etc.).';

  @override
  String get bootArgRadcodec =>
      'Se corrigió la compatibilidad con la codificación de video del hardware VDA para GPU AMD no compatibles oficialmente (por ejemplo, RX550 Lexa core).';

  @override
  String get bootArgNgfxFermi =>
      'Solucione problemas del controlador de GPU para tarjetas NVIDIA Fermi/Maxwell/Pascal más antiguas (GT610, GTX750, GTX960, GTX1050) en macOS Big Sur 11+. ¡Debe aplicar el parche OCLP GPU después de ingresar al sistema! Kepler NO necesita esto.';

  @override
  String get bootArgApplbkl3 =>
      'Habilite el control de retroiluminación PWM para las GPU AMD Radeon RX serie 5000.';

  @override
  String get bootArgAgdpmodIgnore =>
      'Solucione problemas de visualización o pantalla negra en algunas GPU ignorando por completo las restricciones de AppleGraphicsDevicePolicy.kext. Úselo con AnyGreen.kext.';

  @override
  String get bootArgAgdpmodPikera =>
      'Se corrigió la pantalla negra en el arranque de las GPU AMD Navi RX5XXX/RX6XXX (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.) reemplazando board-id con board-ix. Úselo con AnyGreen.kext.';

  @override
  String get bootArgAgdpmodVit9696 =>
      'Se corrige la pantalla negra después de la suspensión/activación en las GPU RX470/RX570 deshabilitando la verificación de identificación de la placa en AppleGraphicsDevicePolicy. Úselo con AnyGreen.kext.';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Se corrigió la pantalla negra en Ventura+ para GPU AMD RX5XX/RX5XXX/RX6XXX con soporte nativo en Intel de 3.ª generación o anterior. Aplique el parche OCLP GPU después del arranque y luego elimine este argumento.';

  @override
  String get bootArgBrcmfx =>
      'Corrija la velocidad lenta en algunas tarjetas Wi-Fi de Broadcom cambiando el código de país a HK. También puedes mejorar cambiando el canal del enrutador.';

  @override
  String get bootArgVsmcgen =>
      'Solucione problemas de corrupción del emulador SMC y bloqueo del código de baqueta.';

  @override
  String get bootArgSwdPanic =>
      'Evite el reinicio del dispositivo después de la suspensión para ayudar a recopilar registros de fallas del kernel y depurar problemas de suspensión.';

  @override
  String get bootArgCtrsmt =>
      'Mejore la detección y programación de topología para CPU híbridas (P+E) Intel de 12.ª generación o más. Aumento de rendimiento no garantizado: pruebe antes de habilitarlo. Requiere CpuTopologyRebuild.kext.';

  @override
  String get bootArgDarkwake0 =>
      'Desactive completamente el modo Darkwake y utilice el modo de suspensión tradicional. Principalmente soluciona problemas de activación de pantalla negra y activación automática.';

  @override
  String get bootArgForceRenderStandby =>
      'Desactive el modo de espera de procesamiento de iGPU RC6 para solucionar el pánico del kernel NVMe causado por iGPU RC6 durante el modo de suspensión.';

  @override
  String get bootArgI2cForcePolling =>
      'Fuerce el trackpad I2C a usar el modo de sondeo en lugar del modo controlado por interrupción (el modo de interrupción generalmente requiere personalización SSDT).';

  @override
  String get kextLiluDesc =>
      'Controlador básico requerido que proporciona extensibilidad y compatibilidad para macOS. Todos los kexts de tipo complemento dependen de ello.';

  @override
  String get kextVirtualSMCDesc =>
      'Requerido emulador SMC. Simula Apple SMC en hardware que no es de Apple, proporcionando sensores, control de ventilador y administración de energía. macOS no puede ejecutarse sin esto.';

  @override
  String get kextWhateverGreenDesc =>
      'Compatibilidad con el controlador de gráficos GPU. Altamente recomendado para la mayoría de los usuarios. MacPro7,1 con dGPU AMD (RX460, RX560+) puede desmarcarse. Generalmente entra en conflicto con NootRX/NootedRed; no los seleccione juntos durante la instalación.';

  @override
  String get kextAppleALCDesc =>
      'Utilice AppleALC para falsificar el códec de audio integrado (solución más completa, opción preferida).';

  @override
  String get kextVoodooHDADesc =>
      'Controlador de audio universal VoodooHDA (cargado durante el arranque, solo es compatible con macOS Big Sur 11.2.3 y versiones inferiores; las versiones superiores requieren inyección en la carpeta de extensión del kernel del sistema).';

  @override
  String get kextUSBInjectAllDesc =>
      'Solución genérica de inyección de USB, la opción predeterminada cuando no se ha realizado la personalización del USB.';

  @override
  String get kextUSBToolBoxDesc =>
      'Solución USBToolBox, que normalmente se utiliza junto con un UTBMap.kext personalizado.';

  @override
  String get kextBatteryV1Desc =>
      'Solución de controlador de batería 1 (para portátiles con Intel de tercera generación o plataformas anteriores).';

  @override
  String get kextBatteryV2Desc =>
      'Solución de controlador de batería 2 (para portátiles con Intel de tercera generación o plataformas más nuevas).';

  @override
  String get kextAmbientLightDesc =>
      'Sensor de luz ambiental (brillo de pantalla automático). No lo use si no tiene un sensor de luz ambiental, ya que puede causar problemas.';

  @override
  String get kextAsusNBFnKeysDesc =>
      'Control del ventilador de la computadora portátil ASUS, administración de energía y otras optimizaciones de los sensores del sistema. No recomendado para máquinas que no sean ASUS.';

  @override
  String get kextLenovoDesc =>
      'Control del ventilador de la computadora portátil Lenovo, administración de energía y otras optimizaciones de los sensores del sistema. No recomendado para máquinas que no sean Lenovo.';

  @override
  String get kextDellDesc =>
      'Sensor dedicado para computadora portátil Dell para un monitoreo y control más precisos del ventilador. No recomendado para máquinas que no sean Dell.';

  @override
  String get kextNootRXDesc =>
      'Admite dGPU RX6XXX oficialmente no compatibles (RX6700, RX6750XT, RX6750GRE, etc.). Entra en conflicto con AnyGreen: no seleccione juntos durante la instalación.';

  @override
  String get kextBatteryFixDesc =>
      'Corrección de lectura de batería, repara ciertos problemas de visualización de la batería.';

  @override
  String get kextNVMeFixDesc =>
      'Mejore la compatibilidad con SSD NVMe que no sean de Apple y reduzca el consumo de energía en inactividad. Las unidades NVMe incompatibles aún pueden fallar. Las unidades NVMe compatibles pueden sufrir problemas de kernel con este controlador; úselo con precaución.';

  @override
  String get kextFeatureUnlockDesc =>
      'Desbloquee Universal Control, Sidecar y otras funciones en modelos de Mac no compatibles.';

  @override
  String get kextHibernationFixDesc =>
      'Solucione problemas comunes relacionados con la hibernación y el sueño.';

  @override
  String get kextHoRNDIS =>
      'Permita que macOS use la conexión de red de dispositivos Android a través de USB.';

  @override
  String get kextCPUFriendDesc =>
      'Controlador de escalado de frecuencia de CPU, que proporciona principalmente soporte de escalado de frecuencia para MacPro7,1 en plataformas de 11.ª generación y más nuevas.';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'Controlador de datos complementario CPUFriend, que proporciona datos de escala de frecuencia de CPU para modelos de máquina específicos.';

  @override
  String get kextAppleIGHDA =>
      'Solucione problemas de audio HDMI de Intel iGPU en algunos sistemas.';

  @override
  String get kextNoTouchID =>
      'Se solucionó la imposibilidad de iniciar sesión en Apple ID e iCloud, generalmente en computadoras portátiles sin una tarjeta de red cableada local.';

  @override
  String get kextAppleRTCDesc =>
      'Solucione conflictos entre macOS AppleRTC y BIOS de PC en plataformas más nuevas, por ejemplo, RTC que provoca bloqueos, reinicios repentinos o reactivación inmediata del modo de suspensión.';

  @override
  String get kextPS2KBMouseDesc =>
      'Controlador de teclado y mouse PS/2 (para placas base de escritorio con puertos redondos PS/2).';

  @override
  String get kextPS2KeyboardDesc =>
      'Controlador de teclado PS/2 (para placas base de escritorio con puertos de teclado redondos PS/2).';

  @override
  String get kextPS2MouseDesc =>
      'Controlador de mouse PS/2 (para placas base de escritorio con puertos de mouse redondos PS/2).';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Controlador de trackpad y teclado dedicado de Microsoft Surface.';

  @override
  String get kextBrightnessKeysDesc =>
      'Corrección de la tecla de método abreviado de brillo.';

  @override
  String get kextGenericUSBXHCIDesc =>
      'Corrección de compatibilidad del controlador USB 3.0 para plataformas antiguas o AMD.';

  @override
  String get kextXLNCUSBFixDesc =>
      'Solucione problemas de compatibilidad del controlador USB en plataformas AMD antiguas (FM1/FM2/AM3).';

  @override
  String get kextRealtekCardReaderDesc =>
      'Controlador del lector de tarjetas SD Realtek (uso con RealtekCardReaderFriend).';

  @override
  String get kextRadeonSensorDesc =>
      'Optimice el rendimiento de la GPU AMD Radeon, pero puede causar fallas en el sistema o en el arranque en algunos escenarios; úselo con precaución.';

  @override
  String get hwStatusIdle => 'Esperando actualizar la información del hardware';

  @override
  String get hwStatusLoading => 'Cargando información de hardware';

  @override
  String get hwStatusRefreshing => 'Actualización de información de hardware';

  @override
  String get hwStatusComplete => 'Información de hardware cargada';

  @override
  String get hwStatusFailed => 'No se pudo cargar la información del hardware';

  @override
  String get hwStatusUnsupported => 'Información de hardware no compatible';

  @override
  String get hwStatusImported => 'Información de hardware importada';

  @override
  String get hwPlatformUnsupported =>
      'La plataforma actual no admite consultas de información de hardware';

  @override
  String hwFetchFailed(String error) {
    return 'No se pudo recuperar la información del hardware: $error';
  }

  @override
  String get hwExportWarning =>
      'Este es un informe importado. Actualice la información del hardware local antes de exportar.';

  @override
  String get hwNoLocalInfo =>
      'No hay información de hardware local disponible para exportar';

  @override
  String get hwFolderCleanFailed =>
      'No se pudo limpiar la carpeta de informes de hardware';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'No se pudo limpiar la carpeta de informes de hardware: $error';
  }

  @override
  String get hwFolderCreateFailed =>
      'No se pudo crear la carpeta de informes de hardware';

  @override
  String get hwExporting => 'Exportando informe de hardware local...';

  @override
  String hwExportSuccess(String path) {
    return 'Informe de hardware y tablas ACPI exportadas a $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'Informe de hardware exportado a $path, $error';
  }

  @override
  String get hwAcpiExporting => 'Exportando tablas ACPI locales...';

  @override
  String get hwAcpiExportFailed =>
      'No se pudieron exportar tablas ACPI locales';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'Tablas ACPI locales exportadas: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'No se pudieron exportar tablas ACPI locales: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'La plataforma actual no admite la exportación de tablas ACPI';

  @override
  String get hwAcpiAuthCancelled =>
      'Autorización de administrador cancelada. Tablas ACPI no exportadas.';

  @override
  String get hwAcpiNoPassword =>
      'No se proporcionó ninguna contraseña de administrador. No se pueden exportar tablas ACPI.';

  @override
  String get hwAcpiWrongPassword =>
      'Contraseña de administrador incorrecta. No se pueden exportar tablas ACPI.';

  @override
  String get hwImportNotJson =>
      'El archivo de información de hardware no es un objeto JSON';

  @override
  String get hwImportSuccess => 'Información de hardware importada';

  @override
  String get hwImportAcpiInvalid =>
      'Directorio de tablas ACPI no válido. SSDT personalizado no disponible.';

  @override
  String hwImportFailed(String error) {
    return 'No se pudo importar el informe de hardware: $error';
  }

  @override
  String get hwConfigStart => 'Iniciando la configuración de EFI...';

  @override
  String get hwConfigGenerating =>
      'Generando ConfigModel a partir de información de hardware...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'Preparando SSDT personalizado: $items';
  }

  @override
  String get hwConfigSsdtSkip =>
      'Utilizando SSDT EFI original. Saltarse SSDT personalizado.';

  @override
  String get hwConfigSsdtDisabled =>
      'Informe de hardware externo importado sin directorio de tablas ACPI. SSDT personalizado deshabilitado.';

  @override
  String get hwConfigExporting => 'Exportando OpenCore EFI...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'Error en la configuración de EFI: $error';
  }

  @override
  String get hwConfigRebuilding =>
      'Se están refactorizando las reglas de ConfigModel de generación automática de hardware';

  @override
  String get cpuUnknown => 'Desconocido';

  @override
  String get platDesktop => 'De oficina';

  @override
  String get platLaptop => 'Computadora portátil';

  @override
  String get platMini => 'miniordenador';

  @override
  String get platServer => 'Servidor';

  @override
  String get csrEnabled =>
      'Habilite SIP para mejorar la seguridad del sistema. Recomendado si no utiliza OCLP para parches de GPU/WiFi.';

  @override
  String get csrPartial => 'Deshabilitar la opción SIP 1';

  @override
  String get csrPartialDesc =>
      'Desactive parcialmente SIP. Recomendado para Big Sur o posterior cuando se usa OCLP para parches de GPU/WiFi.';

  @override
  String get csrFully => 'Deshabilitar la opción SIP 2';

  @override
  String get csrFullyDesc =>
      'Desactive SIP por completo. Preferido para Big Sur o más nuevo cuando se usa OCLP para parches de GPU/WiFi.';

  @override
  String get uiScaleAuto =>
      'Adaptación automática: ajusta automáticamente la escala de la interfaz de usuario de arranque de OpenCore según la resolución de la pantalla.';

  @override
  String get uiScaleStandard =>
      'Resolución estándar: adecuada para pantallas de 720p, 1080p y 1440p.';

  @override
  String get uiScaleHigh =>
      'Alta resolución: Adecuado para pantallas 4K/5K (corrige pequeños elementos de la interfaz de usuario en el menú de inicio de OpenCore).';

  @override
  String get procDefault => 'No modificar el tipo de procesador';

  @override
  String get procKeep =>
      'Mantener la visualización del tipo de CPU predeterminada del sistema';

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
  String get brandLenovo => 'lenovo';

  @override
  String get brandSony => 'VAIO';

  @override
  String get brandHp => 'caballos de fuerza';

  @override
  String get brandGoogle => 'Chromebook';

  @override
  String get brandMicrosoft => 'Superficie de Microsoft';

  @override
  String get mbNormal => 'Placa base estándar';

  @override
  String get mbOemUsb =>
      'Algunas placas base OEM tienen problemas de liberación de propiedad del USB: falla en la transferencia de EHCI';

  @override
  String get navAppGuide => 'Guía de aplicaciones';

  @override
  String get appGuideTitle => 'Guía del usuario de RapidEFI';

  @override
  String get logMsg001 =>
      '=> ¡No se pudo encontrar LPC(B)! ¡Operación terminada!';

  @override
  String get logMsg002 =>
      '¡No se encontró ningún DSDT válido! ¡Primero seleccione un archivo DSDT o un directorio de archivos que contenga DSDT!';

  @override
  String get logMsg003 =>
      '¡La preparación de la herramienta iasl falló! ¡Actualice o utilice primero la herramienta iasl incorporada!';

  @override
  String get logMsg004 => '¡No se encontró ningún archivo .aml válido!\\n';

  @override
  String get logMsg005 =>
      '¡No se encontró ningún DSDT válido! ¡Primero seleccione un archivo DSDT o un directorio de archivos que contenga DSDT!';

  @override
  String get logMsg006 =>
      'Actualmente se detectan varios archivos DSDT y solo se permite procesar uno a la vez. Conserve un archivo DSDT, elimine los demás e inténtelo de nuevo.\\n';

  @override
  String get logMsg007 =>
      '¡Archivo DSDT no válido! ¡Vuelva a seleccionar un archivo DSDT válido!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 ¡Falló la descompilación!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'Resultado de la compilación: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'Se produjo un error al procesar el tipo IntObj: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'Error al procesar el tipo MethodObj: $arg0';
  }

  @override
  String get logMsg012 => '¡No se encontró información de IRQ!';

  @override
  String get logMsg013 =>
      '¡Las opciones actuales o las IRQ personalizadas están vacías! ¡No se puede generar el parche IRQ!';

  @override
  String get logMsg014 => '=> ¡No se encontró información de IRQ!';

  @override
  String get logMsg015 =>
      '¡El formato de lista IRQ personalizado es incorrecto! ! ! ¡Separe los dispositivos con espacios y las IRQ con comas! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> _Error de análisis de HID: $arg0';
  }

  @override
  String get logMsg017 =>
      '¡No se encontró ningún dispositivo válido, omitiendo la operación HPET!';

  @override
  String get logMsg018 =>
      '¡No se proporcionaron IRQ válidas o las IRQ están vacías! ¡Operación abortada!';

  @override
  String logMsg019(String arg0) {
    return '=> No se puede localizar $arg0._CRS! ¡Operación terminada!';
  }

  @override
  String logMsg020(String arg0) {
    return '=> No se puede localizar $arg0._CRS!';
  }

  @override
  String get logMsg021 => '=> ¡_CRS parece haber sido llamado XCRS!';

  @override
  String get logMsg022 =>
      '=> ¡Desactive el cambio de nombre del dispositivo de _CRS a XCRS en DSDT y vuelva a intentarlo después de reiniciar!\\n';

  @override
  String get logMsg023 =>
      '=> ¡No se puede determinar el tipo de acceso a la memoria!';

  @override
  String get logMsg024 =>
      '=> ¡No se puede convertir la base o la longitud a un número entero!';

  @override
  String get logMsg025 => '=> ¡No encontrado!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> Usar el valor predeterminado $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> ¡No encontrado!';

  @override
  String get logMsg028 => '=> ¡Nada que parchear!';

  @override
  String logMsg029(String arg0, String arg1) {
    return '¡Falta el final del parche IRQ ($arg1) para $arg0! Saltado…';
  }

  @override
  String get logMsg030 =>
      'Es posible que lo siguiente no sea único y esté deshabilitado de forma predeterminada. \\norte';

  @override
  String get logMsg031 =>
      'No se proporcionó ningún UID válido, ¡interrumpa la operación!';

  @override
  String logMsg032(String arg0) {
    return '$arg0 es un UID personalizado que puede requerir personalización manual o puede que no sea compatible en absoluto.';
  }

  @override
  String get logMsg033 =>
      '¡No se encontró una ruta iGPU válida en la tabla ACPI pasada!\\n';

  @override
  String logMsg034(String arg0) {
    return 'Nota: La ruta de la iGPU se supone que es $arg0\\n ¡Verifique antes de usarla!';
  }

  @override
  String logMsg035(String arg0) {
    return 'Nota: La ruta de la iGPU se ha configurado manualmente en $arg0. ¡Asegúrese de confirmar si la ruta es correcta antes de usarla!';
  }

  @override
  String get logMsg036 =>
      '=> Se encontró un dispositivo EC con nombre, ¡no es necesario falsificarlo!\\n';

  @override
  String get logMsg037 =>
      '¡El parche de atributos USBX no puede estar vacío! ¡Operación terminada!';

  @override
  String get logMsg038 =>
      '¡No se encontró ningún dispositivo procesador válido!';

  @override
  String get logMsg039 =>
      '=> Se ha encontrado y verificado un dispositivo PNP0B00 (RTC) válido, ¡no se requiere parche ni SSDT! ¡Operación terminada!';

  @override
  String get logMsg040 =>
      '=> ¡No se encontró el dispositivo ACPI000E (AWAC), no se requiere parche ni SSDT! ¡Operación terminada!';

  @override
  String get logMsg041 =>
      '=> ¡No se encontró ningún dispositivo! ¡Operación terminada!';

  @override
  String get logMsg042 =>
      'No se encontró ninguna coincidencia para la siguiente ruta:';

  @override
  String get logMsg043 => '¡No se encontraron coincidencias!';

  @override
  String get logMsg044 =>
      'Tenga en cuenta que la ruta del dispositivo debe comenzar con el siguiente PciRoot() para que coincida con la tabla ACPI actual:';

  @override
  String logMsg045(String arg0) {
    return '=> ¡No encontrado, no parece ser una tabla $arg0 válida!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return '$arg0 valor no encontrado! ¡Operación abortada!';
  }

  @override
  String get logMsg047 =>
      'Restablecer el valor de la dirección de registro no encontrado. ¡Operación abortada!';

  @override
  String logMsg048(String arg0) {
    return 'No se puede resolver la ID del procesador en $arg0, se cancela la aplicación de parches';
  }

  @override
  String logMsg049(String arg0) {
    return 'La primera CPU en $arg0 ya coincide, ¡no es necesario parchear la tabla APIC!';
  }

  @override
  String get logMsg050 =>
      '=> ¡No se encontró ninguna coincidencia para el procesador! ¡Operación abortada!';

  @override
  String get logMsg051 => '¡Seleccione el parche IMEI!';

  @override
  String logMsg052(String arg0) {
    return '=> Dispositivo IMEI encontrado en $arg0, ¡no es necesario realizar un puente para suplantación de identidad! ¡Operación abortada!';
  }

  @override
  String get logMsg053 =>
      '=> ¡No se encontró el dispositivo raíz PCI! ¡Operación abortada!';

  @override
  String get logMsg054 =>
      '=> La suplantación de IMEI de SSDT no está habilitada, la identificación del dispositivo debe configurarse a través de DeviceProperties.';

  @override
  String get logMsg055 =>
      '¡No se encontró el dispositivo UNC (PNP0A03)! ¡No se requiere parche SSDT-UNC! ¡Operación abortada! \\norte';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: ¡El método _STA no existe!';
  }

  @override
  String get logMsg057 =>
      '=> ¡El dispositivo DMA (PNP0200) no se encuentra en ninguna de las tablas ACPI anteriores! ¡Operación abortada! \\norte';

  @override
  String get logMsg058 =>
      '=> ¡No se encuentra el método _PTS, la entrada de programación _PTS y el parche de cambio de nombre no se generarán!';

  @override
  String get logMsg059 =>
      '=> ¡No se encuentra el método _WAK, la entrada de programación _WAK y el parche de cambio de nombre no se generarán!';

  @override
  String get logMsg060 =>
      '=> ¡No se encontró el método _PTS/_WAK programable, se omitió SSDT-SleepHook!\\n';

  @override
  String get logMsg061 =>
      '=> ¡El método _SST no se encuentra en ninguna de las tablas ACPI anteriores! ¡Operación abortada! \\norte';

  @override
  String get logMsg062 =>
      '=> ¡El dispositivo PNP0C0D no se encontró en ninguna de las tablas ACPI anteriores! ¡Operación abortada! \\norte';

  @override
  String get logMsg063 =>
      '=> El estado del sistema no es compatible: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> Nota: El firmware actual no admite el estado _S3. Si la configuración del BIOS no desactiva la función S3, entonces la máquina no admite la suspensión S3.';

  @override
  String get logMsg065 =>
      '=> Nota: ¡Esta es una máquina AOAC y macOS no admite la suspensión S3!';

  @override
  String get logMsg066 =>
      '=> Actualmente no se detecta si se trata de una máquina AOAC, ¡confírmelo usted mismo!';

  @override
  String get logMsg067 =>
      '¡No se encontró el valor de baja potencia S0 inactivo (V5)!';

  @override
  String get logMsg068 =>
      'Actualmente es una máquina AOAC, ¡macOS no admite la suspensión S3!';

  @override
  String get logMsg069 =>
      '=> Nombre o método _S3 no encontrado, ¡la configuración actual no admite la suspensión de S3! ¡La operación ha sido terminada!';

  @override
  String logMsg070(String arg0) {
    return '=> ¡Método $arg0 encontrado!';
  }

  @override
  String get logMsg071 =>
      '=> ¡Se ha cambiado el nombre del método actual y es posible que no sea la tabla ACPI original! ¡Vuelva a obtener la tabla ACPI original e inténtelo de nuevo!\\n';

  @override
  String get logMsg072 =>
      '=> ¡El dispositivo LID (PNP0C0D) no se encontró en ninguna de las tablas ACPI anteriores! ¡Operación terminada!\\n';

  @override
  String get logMsg073 =>
      '=> ¡El método _LID no se encontró en ninguna de las tablas ACPI anteriores! ¡Operación terminada!\\n';

  @override
  String get logMsg074 =>
      '=> ¡El dispositivo PWRB (PNP0C0C) no se encontró en la tabla ACPI anterior! ¡Solo uno falso! \\norte';

  @override
  String logMsg075(String arg0) {
    return '=> ¡No es necesario falsificar el dispositivo SLPB, se ha encontrado el dispositivo PNP0C0E en $arg0!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> PNP0C0E ¡El dispositivo $arg0 tiene el método _STA!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> PNP0C0E El dispositivo $arg0 no existe _¡Método STA!';
  }

  @override
  String get logMsg078 =>
      '=> ¡No se encontraron dispositivos XHC/XHCI/XDCI/CNVW coincidentes! ¡Operación terminada! \\norte';

  @override
  String get logMsg079 => '=> ¡Método GPRW no encontrado!';

  @override
  String get logMsg080 =>
      '=> ¡Método XPRW encontrado! Se ha cambiado el nombre del método actual y es posible que no sea la tabla ACPI original. ¡Vuelva a obtener la tabla ACPI original e inténtelo de nuevo!\\n';

  @override
  String get logMsg081 =>
      '=> ¡Método XPRW no encontrado! ¡Operación terminada!';

  @override
  String get logMsg082 => '=> ¡Método UPRW no encontrado!';

  @override
  String get logMsg083 =>
      '=> ¡Método XPRW encontrado! Se ha cambiado el nombre del método actual y es posible que no sea la tabla ACPI original. ¡Vuelva a obtener la tabla ACPI original e inténtelo de nuevo!\\n';

  @override
  String get logMsg084 =>
      '=> ¡Método XPRW no encontrado! ¡Operación terminada!';

  @override
  String get logMsg085 =>
      '=> ¡Dispositivo GPI0 no encontrado! ¡Operación terminada! \\norte';

  @override
  String get logMsg086 =>
      '=> ¡Método _STA no encontrado! ¡Operación terminada! \\norte';

  @override
  String get logMsg087 =>
      '=> ¡El esquema de nomenclatura actual del procesador cumple con la especificación de nomenclatura de la CPU! ¡No es necesario este SSDT! ¡La operación ha sido terminada!';

  @override
  String get logMsg088 =>
      '=> ¡No hay ningún dispositivo PLTF, la plataforma Intel actual no requiere este SSDT! La operación ha sido terminada...';

  @override
  String get logMsg089 =>
      '=> No se encontró ningún dispositivo de CPU que cumpliera con los requisitos, ¡no se requiere ningún parche SSDT-CPUR! ¡Operación terminada!';

  @override
  String get logMsg090 =>
      '=> La suplantación de IMEI de SSDT no está habilitada, la identificación del dispositivo debe configurarse a través de DeviceProperties.';

  @override
  String get logMsg091 =>
      '¡No se proporcionó una ruta de dispositivo ACPI válida! ¡Operación abortada!';

  @override
  String logMsg092(String arg0) {
    return '¡El método _ON o _OFF correspondiente para $arg0 no se encontró en DSDT o SSDT! ¡Operación abortada!';
  }

  @override
  String logMsg093(String arg0) {
    return '¡El método _PS3 o _DSM correspondiente a $arg0 no se encontró en DSDT o SSDT! ¡Operación abortada!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> ¡Existe un método _PRT para el dispositivo $arg0, que puede haber ocultado el dispositivo real e inyectará un dispositivo puente BRG0!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> ¡El dispositivo $arg0 no existe!';
  }

  @override
  String logMsg096(String arg0) {
    return 'La ruta del dispositivo actual $arg0 puede ocultar el dispositivo real.';
  }

  @override
  String logMsg097(String arg0) {
    return '=> ¡Hay un desbordamiento en la dirección _ADR del dispositivo de tarjeta gráfica $arg0!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> ¡Regrese a la ruta del dispositivo principal: $arg0 e inyecte un dispositivo puente BRG0!';
  }

  @override
  String logMsg099(String arg0) {
    return 'Método de enmascaramiento desconocido: $arg0, operación cancelada.';
  }

  @override
  String logMsg100(String arg0) {
    return 'Algunos métodos no encontrados: $arg0';
  }

  @override
  String get logMsg101 =>
      '=> ¡No se puede encontrar un dispositivo de bus válido, la operación ha finalizado!';

  @override
  String get logMsg102 =>
      '¡No se proporcionó una ruta ACPI de tarjeta gráfica válida! ¡Operación terminada!';

  @override
  String get logMsg103 =>
      '¡No se proporciona una identificación de tarjeta gráfica falsificada válida! ¡Operación terminada!';

  @override
  String get logMsg104 =>
      '¡No se proporcionó ningún nombre válido de tarjeta gráfica falsificada! ¡No se inyectarán nombres falsos!';

  @override
  String logMsg105(String arg0) {
    return '¡La ruta actual de la tarjeta gráfica $arg0 puede ocultar el dispositivo real!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> ¡El dispositivo $arg0 tiene un método _PRT, que puede haber ocultado el dispositivo real e inyectará un dispositivo GFX0!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> ¡Dispositivo $arg0 no encontrado en DSDT o SSDT! ¡Operación abortada!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> ¡Hay un desbordamiento en la dirección _ADR del dispositivo de tarjeta gráfica $arg0!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> ¡Regrese a la ruta del dispositivo principal: $arg0 e inyecte un dispositivo GFX0!';
  }

  @override
  String get logMsg110 =>
      '¡Hay una dirección _ADR desbordada en la ruta del dispositivo!';

  @override
  String get logMsg111 =>
      'Los siguientes dispositivos pueden afectar la inyección de propiedad:';

  @override
  String get logMsg112 => 'Localizando LPC(B)/SBRG…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 encontrado en $arg0';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 encontrado en $arg0';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 encontrado en $arg0';
  }

  @override
  String logMsg116(String arg0) {
    return 'Ruta DSDT proporcionada: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'La ruta DSDT proporcionada no es válida: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'Recopilando tablas ACPI válidas del directorio $arg0...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'Se encontraron un total de $arg0 tablas ACPI, de las cuales $arg1 son ​​válidas:';
  }

  @override
  String get logMsg120 => 'Se verificaron varios archivos con firmas DSDT:';

  @override
  String logMsg121(String arg0) {
    return 'A punto de descompilar $arg0 para verificar si es necesario aplicar parches prefabricados...';
  }

  @override
  String get logMsg122 =>
      '=> ¡No es necesario aplicar parches prefabricados!\\n';

  @override
  String logMsg123(String arg0) {
    return 'Cargando $arg0...';
  }

  @override
  String get logMsg124 => '¡Procesamiento completado!\\n';

  @override
  String get logMsg125 => '¡El archivo o carpeta pasado no existe!\\n';

  @override
  String get logMsg126 => 'Manejando archivos DSDT problemáticos...';

  @override
  String get logMsg127 => 'Consulte los parches prefabricados disponibles...';

  @override
  String logMsg128(String arg0) {
    return 'Cargando el archivo $arg0 en la memoria...';
  }

  @override
  String get logMsg129 => 'Procesando parches uno por uno...\\n';

  @override
  String get logMsg130 => '=> Posicionado, aplicando…';

  @override
  String get logMsg131 =>
      '=> ¡El archivo DSDT de la pregunta anterior se descompiló correctamente!';

  @override
  String logMsg132(String arg0) {
    return '=> El parche se ha aplicado al archivo modificado y el archivo se guarda en la carpeta Resultados:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return 'Cargando tablas ACPI válidas en $arg0...';
  }

  @override
  String get logMsg134 =>
      '¡Se completó la descompilación de todas las tablas ACPI válidas!';

  @override
  String logMsg135(String arg0) {
    return 'Tiempo total empleado: $arg0 segundos\\n';
  }

  @override
  String logMsg136(String arg0) {
    return '¡Compilando $arg0.aml exitosamente!';
  }

  @override
  String logMsg137(String arg0) {
    return 'Eliminar el archivo fuente $arg0.dsl';
  }

  @override
  String logMsg138(String arg0) {
    return '=> Alcance no encontrado para el dispositivo $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> No se puede localizar $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return 'Localizando el dispositivo $arg0 ($arg1)...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> No se puede apuntar a ningún $arg0 dispositivo';
  }

  @override
  String logMsg142(String arg0) {
    return '=> encontrado $arg0';
  }

  @override
  String get logMsg143 => '=> Buscando verificación _STA…';

  @override
  String get logMsg144 =>
      '=> ¡_STA ha sido renombrado a XSTA! Saltarse otros controles...';

  @override
  String get logMsg145 =>
      '=> ¡Desactive el cambio de nombre del dispositivo de _STA a XSTA en DSDT y vuelva a intentarlo después de reiniciar!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 variable $arg1';
  }

  @override
  String get logMsg147 => '=> _STA método/nombre no encontrado';

  @override
  String logMsg148(String arg0) {
    return '=> ¡Encontramos el método _STA en el índice $arg0!';
  }

  @override
  String get logMsg149 => '=> Generando cambio de nombre de _STA a XSTA';

  @override
  String get logMsg150 =>
      '=> Hay varias declaraciones de devolución o el valor de retorno no es Devolución (0x0F)';

  @override
  String get logMsg151 => 'Recopilando información del dispositivo ACPI...';

  @override
  String get logMsg152 => 'Recopilando rutas de dispositivos ACPI...';

  @override
  String get logMsg153 => 'Volviendo a comprobar los dispositivos huérfanos...';

  @override
  String logMsg154(String arg0) {
    return 'IRQ personalizadas actuales: $arg0';
  }

  @override
  String get logMsg155 => '=> Ejemplo: RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> Encontrado _HID: $arg0';
  }

  @override
  String get logMsg157 => 'Localizando el dispositivo PNP0103 (HPET)…';

  @override
  String logMsg158(String arg0) {
    return '=> posicionado en $arg0';
  }

  @override
  String get logMsg159 => 'Localizando el método/nombre _CRS para HPET...';

  @override
  String logMsg160(String arg0) {
    return '=> Ubicado en $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> Encontrado en el índice: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> Tipo: $arg0';
  }

  @override
  String get logMsg163 => '=> Comprobando la memoria32Fixed…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> Obtener $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'Creando parche IRQ...';

  @override
  String get logMsg166 => 'Comprobando IRQ...';

  @override
  String get logMsg167 => '¡La IRQ está vacía! Saltar...\\n';

  @override
  String get logMsg168 => 'No se encontró ninguna coincidencia.';

  @override
  String logMsg169(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg170 => 'Creando un dispositivo HPET falso...';

  @override
  String logMsg171(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> UID utilizado: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> Plataformas aplicables: $arg0';
  }

  @override
  String get logMsg174 =>
      'No se proporcionó una ruta de iGPU válida, intentando encontrarla automáticamente...';

  @override
  String get logMsg175 => 'Buscando dispositivo iGPU en 0x00020000…';

  @override
  String logMsg176(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> ¡Dispositivo iGPU encontrado en $arg0!';
  }

  @override
  String get logMsg178 => '¡Dispositivo iGPU no encontrado por dirección!';

  @override
  String get logMsg179 => 'Buscando nombres comunes de iGPU...';

  @override
  String logMsg180(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> Posible dispositivo iGPU encontrado en $arg0';
  }

  @override
  String logMsg182(String arg0) {
    return 'Posible dispositivo iGPU encontrado en $arg0\\n';
  }

  @override
  String logMsg183(String arg0) {
    return 'Se ha configurado manualmente en $arg0 según la ruta de iGPU proporcionada \\n';
  }

  @override
  String logMsg184(String arg0) {
    return 'Ruta de iGPU no válida: $arg0';
  }

  @override
  String get logMsg185 =>
      'Comprobando la tabla ACPI para el dispositivo PNLF nativo...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> Dispositivo PNLF nativo encontrado en $arg0: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> Es necesario cambiar el nombre del PNLF nativo a XNLF, se está generando un parche para cambiar el nombre...';

  @override
  String get logMsg188 => '=> ¡No se encontró el dispositivo PNLF nativo!';

  @override
  String get logMsg189 =>
      '=> ¡No es necesario generar el parche de cambio de nombre de PNLF a XNLF!';

  @override
  String logMsg190(String arg0) {
    return 'Nombre (NBCF, 0x00) detectado en $arg0, generando parche...';
  }

  @override
  String logMsg191(String arg0) {
    return 'Nombre (NBCF, Zero) detectado en $arg0, generando parche...';
  }

  @override
  String get logMsg192 => 'Localizando el dispositivo PNP0C09(EC)...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 Dispositivos PNP0C09 (EC) encontrados en $arg0';
  }

  @override
  String get logMsg194 => '=> Verificando...';

  @override
  String logMsg195(String arg0) {
    return '=> encontrado $arg0';
  }

  @override
  String get logMsg196 =>
      '=> Dispositivo PNP0C09 (EC) denominado EC, cambio de nombre en curso';

  @override
  String get logMsg197 => '=> Dispositivo válido PNP0C09 (EC)';

  @override
  String get logMsg198 =>
      '=> _STA está habilitado correctamente, omitiendo el cambio de nombre';

  @override
  String get logMsg199 => '=> Dispositivo PNP0C09 (EC) no válido';

  @override
  String get logMsg200 =>
      '=> No se encontró ningún dispositivo PNP0C09 (EC) válido, solo falsifique un dispositivo EC';

  @override
  String logMsg201(String arg0) {
    return 'Creando $arg0.dsl…';
  }

  @override
  String logMsg202(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg203 =>
      'Determinando el esquema de nomenclatura de la CPU...';

  @override
  String logMsg204(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> Procesador encontrado: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> No se encontró ningún objeto Procesador...';

  @override
  String get logMsg208 => '=> Dispositivo ACPI0007 no encontrado…';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 Dispositivos ACPI0007 encontrados';
  }

  @override
  String logMsg210(String arg0) {
    return '=> Dispositivo principal encontrado en $arg0, procesando...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> Comprobando $arg0…';
  }

  @override
  String get logMsg212 => '=> ¡No encontrado! salte por encima…';

  @override
  String get logMsg213 => '=> ¡No encontrado! salte por encima…';

  @override
  String logMsg214(String arg0) {
    return 'Procesando $arg0 dispositivos procesadores válidos...';
  }

  @override
  String get logMsg215 => 'No se pudo obtener el nombre de LPC...';

  @override
  String logMsg216(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg217 => '=> ¡Necesitamos falsificar RTC!';

  @override
  String get logMsg218 => '=> Comprobando _CRS…';

  @override
  String get logMsg219 => '=> _CRS es un búfer, verificando el rango de RTC...';

  @override
  String get logMsg220 =>
      '=> No se puede ajustar el valor, no se puede verificar el rango de RTC.';

  @override
  String get logMsg221 =>
      '=> No se pudo recopilar el valor, no se pudo verificar el rango de RTC.';

  @override
  String get logMsg222 =>
      '=> ¡_CRS es un método y no puede verificar el rango de RTC!';

  @override
  String get logMsg223 => '=> Generando cambio de nombre de _CRS a XCRS…';

  @override
  String logMsg224(String arg0) {
    return '=> Encontrado en el índice $arg0';
  }

  @override
  String get logMsg225 => '=> no encontrado';

  @override
  String logMsg226(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String get logMsg228 => 'Recolectando dispositivos RHUB/HUBN/URTH...';

  @override
  String logMsg229(String arg0) {
    return '=> $arg0 dispositivos encontrados';
  }

  @override
  String get logMsg230 => '=> ¡Necesita cambiar el nombre!';

  @override
  String logMsg231(String arg0) {
    return '=> Verifique $arg0: si existe el método _STA';
  }

  @override
  String logMsg232(String arg0) {
    return '=> ¡Encontramos el método _STA en el índice $arg0!';
  }

  @override
  String get logMsg233 => '=> Generar parche de _STA a XSTA';

  @override
  String get logMsg234 => '=> ¡Método _STA no encontrado!';

  @override
  String logMsg235(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String get logMsg236 =>
      '=> ¡Hay un desbordamiento de dirección _ADR en la ruta del dispositivo!';

  @override
  String get logMsg237 =>
      '=> Los siguientes dispositivos pueden requerir ajustes de puente para funcionar correctamente:';

  @override
  String get logMsg238 => 'Recopilando dispositivos de puente PCI...';

  @override
  String get logMsg239 =>
      '¡El dispositivo puente PCI está vacío! ¡La operación ha sido terminada!';

  @override
  String get logMsg240 => 'Dispositivo de puente de construcción...';

  @override
  String get logMsg241 =>
      '¡El dispositivo puente PCI está vacío! salte por encima…';

  @override
  String get logMsg242 => 'Rutas de dispositivos coincidentes...';

  @override
  String get logMsg243 => '¡No se encontró ninguna coincidencia!';

  @override
  String logMsg244(String arg0) {
    return '=> coincide con $arg0, no se requiere puente';
  }

  @override
  String get logMsg245 => '¡No se encontró ninguna coincidencia!\\n';

  @override
  String get logMsg246 => '¡No se requiere puente!\\n';

  @override
  String get logMsg247 => 'Resolviendo dispositivo puente...';

  @override
  String get logMsg248 => '=> ¡No se puede analizar!';

  @override
  String get logMsg249 => '¡Error al analizar el dispositivo puente!\\n';

  @override
  String logMsg250(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String get logMsg251 => 'Localizando el dispositivo ACPI0008 (ALS)...';

  @override
  String logMsg252(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> Dispositivo ALS encontrado en la tabla $arg0: $arg1!';
  }

  @override
  String get logMsg254 => '=> ¡No es necesario falsificar!\\n';

  @override
  String logMsg255(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String get logMsg256 =>
      '_STA está habilitado correctamente, ¡no se requiere parche! \\norte';

  @override
  String get logMsg257 => '¡No encontrado, no se requiere parche!\\n';

  @override
  String get logMsg258 =>
      'Dispositivo ACPI0008 (ALS) no encontrado, se requiere dispositivo falsificado...';

  @override
  String logMsg259(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String get logMsg260 => 'Detectando esquema XOSI...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> Detectado automáticamente: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'Comprobando el método OSID...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> Método encontrado $arg1 en el desplazamiento $arg0';
  }

  @override
  String get logMsg264 =>
      '=> No encontrado, no es necesario cambiar el nombre de OSID a XSID';

  @override
  String get logMsg265 => 'Creando _OSI para cambiar el nombre de XOSI…';

  @override
  String logMsg266(String arg0) {
    return 'Buscando la tabla $arg0…';
  }

  @override
  String logMsg267(String arg0) {
    return 'Encontrada tabla $arg0, verificando firma...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 ¡verificación de firma de tabla aprobada!';
  }

  @override
  String logMsg269(String arg0) {
    return 'Comprobando el valor $arg0...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'Valor obtenido $arg0: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'Valor de dirección de registro de reinicio obtenido: $arg0';
  }

  @override
  String get logMsg272 =>
      'Los parches ACPI que deben parchearse son los siguientes:';

  @override
  String get logMsg273 => 'Parchando la tabla APIC...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> ID del procesador APIC corregido: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> ¡Parche de la tabla APIC completado!';

  @override
  String logMsg276(String arg0) {
    return 'Creando $arg0.dsl…';
  }

  @override
  String get logMsg277 =>
      'Comprobando el área de memoria reservada de la tabla DMAR...';

  @override
  String get logMsg278 =>
      '=> ¡No se encontró ningún área de memoria reservada, no es necesario parchear DMAR!\\n';

  @override
  String logMsg279(String arg0) {
    return 'Se encontraron $arg0 áreas de memoria reservadas, generando nueva tabla...';
  }

  @override
  String get logMsg280 =>
      'Buscando dispositivo IMEI en la dirección 0x00160000...';

  @override
  String get logMsg281 =>
      'Dispositivo IMEI no encontrado, es necesario falsificar el dispositivo...';

  @override
  String get logMsg282 => 'Verificando el dispositivo principal...';

  @override
  String get logMsg283 => 'Buscando dispositivo iGPU en 0x00020000…';

  @override
  String get logMsg284 => '=> ¡Dispositivo iGPU no encontrado!';

  @override
  String get logMsg285 => 'Intentando localizar el dispositivo raíz PCI...';

  @override
  String logMsg286(String arg0) {
    return '=> Dispositivo raíz PCI encontrado: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> Dispositivo iGPU encontrado: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> Usar dispositivo principal: $arg0';
  }

  @override
  String get logMsg289 =>
      'Recopilando esquemas de identificación de dispositivos falsos...';

  @override
  String logMsg290(String arg0) {
    return '=> Falsificado como IMEI de la placa base de la serie 7 (ID del dispositivo: $arg0) para que coincida con el procesador Ivy Bridge de tercera generación';
  }

  @override
  String logMsg291(String arg0) {
    return '=> Falsificado como IMEI de la placa base de la serie 6 (ID del dispositivo: $arg0) para que coincida con el procesador Sandy Bridge de segunda generación';
  }

  @override
  String logMsg292(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String get logMsg293 => 'Buscando dispositivo UNC (PNP0A03)...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 Dispositivos UNC encontrados';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> Dispositivo UNC $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> Compruebe si $arg0: el método _STA existe';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> Encontrado $arg1: ¡Método _STA en el índice $arg0!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> Generar $arg0: _STA al parche XSTA';
  }

  @override
  String logMsg299(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg300(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg301 => 'Comprobando si existe el método DTGP...';

  @override
  String get logMsg302 => '=> ¡Método DTGP no encontrado!';

  @override
  String get logMsg303 =>
      '=> ¡El método DTGP no se encuentra en ninguna de las tablas ACPI anteriores! \\norte';

  @override
  String logMsg304(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg305(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg306 => 'Buscando dispositivo DMA (PNP0200)...';

  @override
  String get logMsg307 => '=> ¡Dispositivo DMA (PNP0200) no encontrado!';

  @override
  String logMsg308(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg309(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg310 => 'Comprobando la existencia del método _PTS...';

  @override
  String logMsg311(String arg0) {
    return '=> ¡Método $arg0 encontrado!';
  }

  @override
  String get logMsg312 => '=> ¡Método _PTS no encontrado!';

  @override
  String get logMsg313 => 'Comprobando la existencia del método _WAK...';

  @override
  String logMsg314(String arg0) {
    return '=> ¡Método $arg0 encontrado!';
  }

  @override
  String get logMsg315 => '=> ¡Método _WAK no encontrado!';

  @override
  String logMsg316(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg318 => 'Comprobando la existencia del método _SST...';

  @override
  String logMsg319(String arg0) {
    return '=> ¡Encontré el método _SST en $arg0!';
  }

  @override
  String get logMsg320 => '=> ¡Método _SST no encontrado!';

  @override
  String logMsg321(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg323 => 'Comprobando la presencia del dispositivo PNP0C0D...';

  @override
  String logMsg324(String arg0) {
    return '=> ¡Dispositivo PNP0C0D encontrado en $arg0!';
  }

  @override
  String get logMsg325 => '=> ¡Dispositivo PNP0C0D no encontrado!';

  @override
  String logMsg326(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return 'Comprobando la existencia de $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> Encontrado $arg1 en $arg0';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> Encontrado $arg1 en $arg0';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 no encontrado';
  }

  @override
  String get logMsg332 => '¡Todas las tablas ACPI verificadas!';

  @override
  String get logMsg333 =>
      '=> Estado del sistema de soporte: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> ¡El firmware actual admite estados comunes del sistema! Después de solucionar el problema de suspensión, macOS puede admitir la suspensión S3.';

  @override
  String get logMsg335 =>
      'Comprobando el valor de baja potencia S0 inactivo (V5)...';

  @override
  String logMsg336(String arg0) {
    return 'Obtener S0 de bajo consumo inactivo (V5): $arg0';
  }

  @override
  String get logMsg337 =>
      '¡Actualmente no es una máquina AOAC y no afecta la suspensión del sistema macOS S3!';

  @override
  String get logMsg338 => 'Comprobando la existencia de _S3...';

  @override
  String logMsg339(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> ¡Nombre _S3 encontrado en $arg0!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> ¡Método encontrado _S3 en $arg0!';
  }

  @override
  String get logMsg342 => '=> Nombre o Método _S3 no encontrado';

  @override
  String logMsg343(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg344(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg345(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg346 => 'Buscando dispositivo LID (PNP0C0D)...';

  @override
  String logMsg347(String arg0) {
    return '=> ¡Dispositivo PNP0C0D encontrado en $arg0!';
  }

  @override
  String get logMsg348 => '=> ¡Dispositivo LID (PNP0C0D) no encontrado!';

  @override
  String logMsg349(String arg0) {
    return '=> ¡Método encontrado _LID en $arg0!';
  }

  @override
  String get logMsg350 => '=> ¡Método _LID no encontrado!';

  @override
  String get logMsg351 => 'Comprobando la existencia del método _TTS...';

  @override
  String logMsg352(String arg0) {
    return '=> ¡Método $arg0 encontrado!';
  }

  @override
  String get logMsg353 => '=> ¡Método _TTS no encontrado!';

  @override
  String get logMsg354 => 'Comprobando la existencia del método ZTTS...';

  @override
  String get logMsg355 => '=> ¡Método ZTTS no encontrado!';

  @override
  String logMsg356(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg358 => 'Buscando dispositivo PWRB (PNP0C0C)...';

  @override
  String get logMsg359 => '=> ¡Dispositivo PWRB (PNP0C0C) no encontrado!';

  @override
  String logMsg360(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg361(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg362 => 'Buscando dispositivo SLPB (PNP0C0E)...';

  @override
  String get logMsg363 => '=> ¡Dispositivo SLPB (PNP0C0E) no encontrado!';

  @override
  String get logMsg364 =>
      '=> ¡El dispositivo SLPB (PNP0C0E) no se encontró en la tabla ACPI anterior! ¡Solo uno falso! \\norte';

  @override
  String logMsg365(String arg0) {
    return 'Creando $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg367(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg368(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String get logMsg369 => 'Buscando dispositivo PNP0C01...';

  @override
  String get logMsg370 => '=> ¡Dispositivo PNP0C01 no encontrado!';

  @override
  String get logMsg371 =>
      '=> ¡El dispositivo PNP0C01 no se encontró en ninguna de las tablas ACPI anteriores!\\n';

  @override
  String logMsg372(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg373 => 'Recopilando dispositivos XHC/XHCI/XDCI/CNVW...';

  @override
  String logMsg374(String arg0) {
    return '=> Comprobando si el dispositivo $arg0 es compatible con PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 no es compatible con PMEE, omitido';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 apoya PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg378 => 'Comprobando la existencia del método GPRW...';

  @override
  String get logMsg379 => 'Comprobando la existencia del método XPRW...';

  @override
  String logMsg380(String arg0) {
    return '=> ¡Método GPRW encontrado en $arg0!';
  }

  @override
  String logMsg381(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg382 => 'Comprobando la existencia del método UPRW...';

  @override
  String get logMsg383 => 'Comprobando la existencia del método XPRW...';

  @override
  String logMsg384(String arg0) {
    return '=> ¡Método UPRW encontrado en $arg0!';
  }

  @override
  String logMsg385(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg386 => 'Comprobando la presencia del dispositivo GPI0...';

  @override
  String logMsg387(String arg0) {
    return '=> ¡Dispositivo GPI0 encontrado en $arg0!';
  }

  @override
  String get logMsg388 => 'Comprobando la existencia del método _STA...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> Encontrado $arg1: ¡Método _STA en el índice $arg0!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> Generar $arg0: _STA al parche XSTA';
  }

  @override
  String logMsg391(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg392 =>
      'Determinando el esquema de nomenclatura de la CPU...';

  @override
  String logMsg393(String arg0) {
    return 'Comprobando $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> Procesador encontrado: $arg0';
  }

  @override
  String get logMsg395 => '=> No se encontró ningún objeto Procesador...';

  @override
  String get logMsg396 => '=> Dispositivo ACPI0007 no encontrado…';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 Dispositivos ACPI0007 encontrados';
  }

  @override
  String logMsg398(String arg0) {
    return '=> Dispositivo principal encontrado en $arg0, procesando...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> Comprobando $arg0…';
  }

  @override
  String get logMsg400 => '=> ¡No encontrado! salte por encima…';

  @override
  String get logMsg401 => '=> ¡No encontrado! salte por encima…';

  @override
  String logMsg402(String arg0) {
    return 'Procesando $arg0 dispositivos procesadores válidos...';
  }

  @override
  String logMsg403(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg404(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg405(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg406(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg407(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg408(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg409(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg410(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg411 =>
      'Recopilando esquemas de identificación de dispositivos falsos...';

  @override
  String logMsg412(String arg0) {
    return '=> Falsificado como IMEI de la placa base de la serie 7 (ID del dispositivo: $arg0) para que coincida con el procesador Ivy Bridge de tercera generación';
  }

  @override
  String logMsg413(String arg0) {
    return '=> Falsificado como IMEI de la placa base de la serie 6 (ID del dispositivo: $arg0) para que coincida con el procesador Sandy Bridge de segunda generación';
  }

  @override
  String logMsg414(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg415(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg416(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg417(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg418(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg419(String arg0) {
    return 'Comprobando el dispositivo $arg0 para un método _ON o _OFF...';
  }

  @override
  String logMsg420(String arg0) {
    return 'Comprobando el dispositivo $arg0 para los métodos _PS3 o _DSM...';
  }

  @override
  String logMsg421(String arg0) {
    return 'Comprobando dispositivo $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> ¡El método _PRT correspondiente a $arg0 no se encontró en DSDT o SSDT!';
  }

  @override
  String logMsg423(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 ruta del dispositivo que debe bloquearse: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> Método de blindaje: método $arg0';
  }

  @override
  String logMsg426(String arg0) {
    return '=> La ruta relativa del dispositivo se ha convertido en ruta absoluta: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> Buscar $arg1.$arg2 método en $arg0';
  }

  @override
  String logMsg428(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String get logMsg429 => 'Recopilando posibles dispositivos de bus...';

  @override
  String logMsg430(String arg0) {
    return 'Creando precompilado $arg0.dsl...';
  }

  @override
  String logMsg431(String arg0) {
    return 'Comprobando el dispositivo gráfico $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> ¡El método _PRT correspondiente a $arg0 no se encontró en DSDT o SSDT!';
  }

  @override
  String logMsg433(String arg0) {
    return 'Creando $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> Ruta del dispositivo de la tarjeta gráfica: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> ID de tarjeta gráfica falsificada: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> Nombre de tarjeta gráfica falsificada: $arg0';
  }

  @override
  String get logMsg437 => '=> ¡No encontrado!';

  @override
  String logMsg438(String arg0) {
    return '=> Ruta PCI coincidente: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> Actualizar $arg0 \"$arg1\" a $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" ya existe en $arg2, omitir...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> Añadir $arg0 \"$arg1\" a $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> Actualizar el valor de la clave \"$arg0\" a \"$arg1\" en $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> El valor de la clave \"$arg0\" ya está actualizado, omitiendo $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> Agregar clave \"$arg0\" valor \"$arg1\" a $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return 'Error al limpiar la carpeta de informes de hardware: $arg0';
  }

  @override
  String get logMsg446 => 'Error al exportar la tabla ACPI nativa';

  @override
  String logMsg447(String arg0) {
    return 'Error al exportar la tabla ACPI nativa: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'Error al exportar la tabla ACPI nativa: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'Error al limpiar el directorio temporal de la tabla ACPI: $arg0';
  }

  @override
  String get logMsg450 => 'Exportando informe de hardware nativo...';

  @override
  String get logMsg451 => 'Exportando tablas ACPI nativas...';

  @override
  String logMsg452(String arg0) {
    return 'Exportación de la tabla ACPI nativa completada: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'El archivo fuente no existe: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'Error al guardar el archivo: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'Versión actual de OC: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'El archivo ZIP no existe: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 archivo descomprimido exitosamente';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'Error al descomprimir el archivo $arg0: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'El archivo o directorio no existe: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'Compresión completada: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'Error de compresión: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'Eliminar directorio: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'Eliminar archivo: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'Error al eliminar: $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'Archivo guardado exitosamente en: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'El directorio de origen no existe: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'Carpeta preparada: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'Error al crear carpeta: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'No se pudo abrir el directorio, la ruta no existe: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'No se pudo abrir el directorio: $arg0, $arg1';
  }

  @override
  String get autoGen5000 => 'compatible';

  @override
  String get autoGen5001 => 'Compatibilidad limitada';

  @override
  String get autoGen5002 => 'No compatible';

  @override
  String get autoGen5003 => 'Activado';

  @override
  String get autoGen5004 => 'encender';

  @override
  String get autoGen5005 => 'desconocido';

  @override
  String get autoGen5006 => 'Tarjeta de red cableada';

  @override
  String get autoGen5007 =>
      'Compatibilidad limitada\nAdmite hasta macOS Tahoe 26\nFalta AVX2';

  @override
  String get autoGen5008 =>
      'No compatible\nAdmite hasta macOS El Capitán 10.11\nFalta SSE4';

  @override
  String get autoGen5009 => 'Falta ID del dispositivo';

  @override
  String get autoGen5010 => 'Soporte notado rojo';

  @override
  String get autoGen5011 => 'Carga de compatibilidad';

  @override
  String get autoGen5012 =>
      'Los gráficos centrales de CPU Intel de gama baja no son compatibles';

  @override
  String get autoGen5013 => 'La salida VGA no es compatible';

  @override
  String get autoGen5014 => 'Soporte de falsificación';

  @override
  String get autoGen5015 => 'Soporte nativo';

  @override
  String get autoGen5016 => 'Falta el conjunto de instrucciones AVX2';

  @override
  String get autoGen5017 => 'centro';

  @override
  String get autoGen5018 => 'independiente';

  @override
  String get autoGen5019 => 'exhibición nuclear';

  @override
  String get autoGen5020 => 'ASUS';

  @override
  String get autoGen5021 => 'gigabytes';

  @override
  String get autoGen5022 => 'ASRock';

  @override
  String get autoGen5023 => 'MSI';

  @override
  String get autoGen5024 => 'Dell';

  @override
  String get autoGen5025 => 'lenovo';

  @override
  String get autoGen5026 => 'sony';

  @override
  String get autoGen5027 => 'caballos de fuerza';

  @override
  String get autoGen5028 => 'Google';

  @override
  String get autoGen5029 => 'microsoft';

  @override
  String get autoGen5030 =>
      'No se puede identificar el tipo de plataforma según la información de la CPU';

  @override
  String get autoGen5031 => 'computadora portátil';

  @override
  String get autoGen5032 => 'Minianfitrión';

  @override
  String get autoGen5033 => 'puesto de trabajo';

  @override
  String get autoGen5034 =>
      'El código de plataforma no se puede determinar en función de la CPU, la placa base y la pantalla central.';

  @override
  String get autoGen5035 => 'Saltar bloqueo de dispositivo:';

  @override
  String get autoGen5036 => 'Falta una ruta ACPI válida';

  @override
  String get autoGen5037 => 'Lista SSDT para personalizar:';

  @override
  String get autoGen5038 => 'Error al extraer la tabla ACPI';

  @override
  String get autoGen5039 => 'Error al cargar la tabla ACPI';

  @override
  String get autoGen5040 =>
      'Los resultados de SSDT personalizados están incompletos';

  @override
  String get autoGen5041 => 'Se produjo una excepción en SSDT personalizado';

  @override
  String get autoGen5042 =>
      'Error en la limpieza del directorio temporal SSDT personalizado:';

  @override
  String get autoGen5043 =>
      'SSDT de suplantación de ID de dispositivo de tarjeta gráfica';

  @override
  String get autoGen5044 => 'No se pudo generar:';

  @override
  String get autoGen5045 => 'Escudo de dispositivo ACPI SSDT';

  @override
  String get autoGen5046 => 'Se omitió la fusión de SSDT personalizada,';

  @override
  String get autoGen5047 =>
      'Continúe usando el SSDT original en EFI actual como alternativa.';

  @override
  String get autoGen5048 =>
      'Se omitió la suplantación de ID del dispositivo de la tarjeta gráfica:';

  @override
  String get autoGen5049 =>
      'La caché de información de hardware no es un objeto JSON';

  @override
  String get autoGen5050 =>
      'La información del hardware se ha cargado desde la caché.';

  @override
  String get autoGen5051 =>
      'La información del hardware se ha cargado desde la caché local.';

  @override
  String get autoGen5052 =>
      'La información del hardware se ha cargado desde el archivo de importación.';

  @override
  String get autoGen5053 => 'Inicializar información de hardware';

  @override
  String get autoGen5054 =>
      'El sistema actual no es compatible, solo se admite Windows';

  @override
  String get autoGen5055 => 'Consultar información de hardware';

  @override
  String get autoGen5056 => 'Consulta de información de hardware completada';

  @override
  String get autoGen5057 => 'sysInfo.exe no devolvió información de hardware';

  @override
  String get autoGen5058 =>
      'El contenido devuelto por sysInfo.exe no es un objeto JSON';

  @override
  String get autoGen5059 => 'Consulta sysInfo.exe completada';

  @override
  String get autoGen5060 => 'tarjeta gráfica central';

  @override
  String get autoGen5061 => 'Tarjeta gráfica discreta';

  @override
  String get autoGen5062 => 'Ya encendido';

  @override
  String get autoGen5063 => 'Tarjeta gráfica desconocida';

  @override
  String get autoGen5064 => 'integrado';

  @override
  String get autoGen5065 => 'Broadcom';

  @override
  String get autoGen5066 => 'Qualcomm';

  @override
  String get autoGen5067 => 'Intel';

  @override
  String get autoGen5068 => 'manzana';

  @override
  String get autoGen5069 => 'momento cero';

  @override
  String get autoGen5070 => 'matsushita';

  @override
  String get autoGen5071 => 'Supongo';

  @override
  String get autoGen5072 => 'Biostar';

  @override
  String get autoGen5073 => 'Vistoso';

  @override
  String get autoGen5074 => 'Zotac';

  @override
  String get autoGen5075 => 'Gengsheng';

  @override
  String get autoGen5076 => 'yingzhong';

  @override
  String get autoGen5077 => 'Súper Micro';

  @override
  String get autoGen5078 => 'Entonces';

  @override
  String get autoGen5079 => 'Espartaco';

  @override
  String get autoGen5080 => 'Panzheng';

  @override
  String get autoGen5081 => 'sur de china';

  @override
  String get autoGen5082 => 'jingyue';

  @override
  String get autoGen5083 => 'la mente';

  @override
  String get autoGen5084 => 'guoshuo';

  @override
  String get autoGen5085 => 'Pasarela';

  @override
  String get autoGen5086 => 'diamante';

  @override
  String get autoGen5087 => 'estrella superior';

  @override
  String get autoGen5088 => 'Mingxuan';

  @override
  String get autoGen5089 => 'Meijie';

  @override
  String get autoGen5090 => 'Élite';

  @override
  String get autoGen5091 => 'Foxconn';

  @override
  String get autoGen5092 => 'un poco';

  @override
  String get autoGen5093 => 'shuangmin';

  @override
  String get autoGen5094 => 'Eunjie';

  @override
  String get autoGen5095 => 'GALAXIA';

  @override
  String get autoGen5096 => 'bandera santa';

  @override
  String get autoGen5097 => 'Tiburón';

  @override
  String get autoGen5098 => 'Échale un vistazo';

  @override
  String get autoGen5099 => 'advantech';

  @override
  String get autoGen5100 => 'ADLINK';

  @override
  String get autoGen5101 => 'Gran mecánico';

  @override
  String get autoGen5102 => 'patriota';

  @override
  String get autoGen5103 => 'ASL';

  @override
  String get autoGen5104 => 'Erying';

  @override
  String get autoGen5105 => 'zafiro';

  @override
  String get autoGen5106 => 'Contec';

  @override
  String get autoGen5107 => 'Qingyun';

  @override
  String get autoGen5108 => 'Huawei';

  @override
  String get autoGen5109 => 'Mijo';

  @override
  String get autoGen5110 => 'arroz rojo';

  @override
  String get autoGen5111 => 'gloria';

  @override
  String get autoGen5112 => 'Samsung';

  @override
  String get autoGen5113 => 'revolución mecánica';

  @override
  String get autoGen5114 => 'mecánico';

  @override
  String get autoGen5115 => 'Thor';

  @override
  String get autoGen5116 => 'Razer';

  @override
  String get autoGen5117 => 'Acer';

  @override
  String get autoGen5118 => 'toshiba';

  @override
  String get autoGen5119 => 'fujitsu';

  @override
  String get autoGen5120 => 'cielo azul';

  @override
  String get autoGen5121 => 'extranjero';

  @override
  String get autoGen5122 => 'Shenzhen';

  @override
  String get autoGen5123 => 'Haier';

  @override
  String get autoGen5124 => 'zhongbai';

  @override
  String get autoGen5125 => 'xuanlong';

  @override
  String get autoGen5126 => 'futuros humanos';

  @override
  String get autoGen5127 => 'Cubo';

  @override
  String get autoGen5128 => 'Estrella Xuanpai Xuanji';

  @override
  String get autoGen5129 => 'Buscando actualizaciones, espere...';

  @override
  String get autoGen5130 =>
      'Acabo de buscar actualizaciones, inténtelo de nuevo más tarde.';

  @override
  String get autoGen5131 =>
      'No se han podido buscar actualizaciones, inténtelo de nuevo más tarde';

  @override
  String get autoGen5132 =>
      'No se pudo obtener la lista de versiones de lanzamiento. Vuelva a intentarlo más tarde.';

  @override
  String get autoGen5133 => 'La lista de versiones de lanzamiento está vacía';

  @override
  String get autoGen5134 => 'De oficina';

  @override
  String get autoGen5135 => 'servidor';

  @override
  String get autoGen5136 =>
      'Active SIP para mejorar la seguridad del sistema. Se recomienda marcar esta casilla cuando normalmente no necesita utilizar OCLP para controlar tarjetas gráficas, WiFi y otros controladores.';

  @override
  String get autoGen5137 => 'Deshabilitar la solución SIP uno';

  @override
  String get autoGen5138 =>
      'A menos que SIP esté completamente deshabilitado, generalmente se recomienda marcar la casilla cuando sistemas como BigSur y superiores necesiten usar OCLP para controlar tarjetas gráficas, WiFi, etc.';

  @override
  String get autoGen5139 => 'Deshabilitar la solución SIP dos';

  @override
  String get autoGen5140 =>
      'Desactive completamente SIP. Por lo general, cuando sistemas como BigSur y superiores necesitan usar OCLP para controlar tarjetas gráficas, WiFi, etc., se prefiere esta opción.';

  @override
  String get autoGen5141 =>
      'Pantalla adaptable, ajusta automáticamente la relación de visualización de la interfaz de arranque OpenCore según la resolución de la pantalla';

  @override
  String get autoGen5142 =>
      'Monitor de resolución estándar, adecuado para 720p, 1080p, 1440p y otros monitores de resolución estándar';

  @override
  String get autoGen5143 =>
      'Pantalla de alta resolución, adecuada para pantallas de alta resolución como 4K y 5K (puede mejorar efectivamente el problema de los elementos de interfaz de usuario demasiado pequeños en la página de inicio de OpenCore para pantallas de alta resolución)';

  @override
  String get autoGen5144 => 'No modificar el tipo de procesador';

  @override
  String get autoGen5145 =>
      'Mantener la visualización del tipo de CPU predeterminada del sistema';

  @override
  String get autoGen5146 =>
      'Opción 1 de modificación del nombre de la CPU de las plataformas Intel y AMD (generalmente aplicable a CPU con 6 núcleos o menos)';

  @override
  String get autoGen5147 =>
      'Opción 2 de modificación del nombre de la CPU de las plataformas Intel y AMD (generalmente aplicable a CPU de 8 núcleos y superiores)';

  @override
  String get autoGen5148 =>
      'Alternativas de modificación de nombres de CPU de plataformas Intel y AMD (generalmente aplicables a CPU de las series i7 e i9 con 8 núcleos y superiores)';

  @override
  String get autoGen5149 => 'ASUS';

  @override
  String get autoGen5150 => 'GIGABYTE';

  @override
  String get autoGen5151 => 'ASRock';

  @override
  String get autoGen5152 => 'MSI';

  @override
  String get autoGen5153 => 'Dell';

  @override
  String get autoGen5154 => 'lenovo';

  @override
  String get autoGen5155 => 'Sony (VAIO)';

  @override
  String get autoGen5156 => 'caballos de fuerza';

  @override
  String get autoGen5157 => 'Google (Chromebook)';

  @override
  String get autoGen5158 => 'Superficie de Microsoft';

  @override
  String get autoGen5159 => 'placa base normal';

  @override
  String get autoGen5160 =>
      'Placas base B850, B650, B550 y A520, portátiles con chipset serie 550';

  @override
  String get autoGen5161 => 'placa base TRx40';

  @override
  String get autoGen5162 => 'placa base x570';

  @override
  String get autoGen5163 =>
      'Placa base X470 o B450 de finales de 2020 o BIOS actualizada';

  @override
  String get autoGen5164 => 'conjunto de chips de la serie 6';

  @override
  String get autoGen5165 =>
      'Verifique al combinar CPU Intel de tercera generación y chipset de la serie 6 (por ejemplo: H61, HM65)';

  @override
  String get autoGen5166 => 'conjunto de chips de la serie 7';

  @override
  String get autoGen5167 =>
      'Verifique al mezclar CPU Intel de segunda generación y conjuntos de chips de la serie 7 (por ejemplo: B75, HM76)';

  @override
  String get autoGen5168 => 'H110, B150, B250, Q270, etc.';

  @override
  String get autoGen5169 =>
      'Algunas placas base OEM tienen problemas de liberación de propiedad del USB: falla la transferencia de EHCI';

  @override
  String get autoGen5170 => 'Z490 y otras actualizaciones de BIOS en 2020';

  @override
  String get autoGen5171 =>
      'Conjunto de chips de la serie 6 (verifique al mezclar CPU Intel de tercera generación y conjuntos de chips de la serie 6 (por ejemplo: H61, HM65))';

  @override
  String get autoGen5172 =>
      'Conjunto de chips de la serie 7 (verifique al mezclar CPU Intel de segunda generación y conjuntos de chips de la serie 7 (por ejemplo: B75, HM76))';

  @override
  String get autoGen5173 =>
      'H110, B150, B250, Q270, etc. (Algunas placas base OEM tienen problemas de liberación de propiedad del USB: falla de transferencia de EHCI)';

  @override
  String get autoGen5174 => 'de mbconfs';

  @override
  String get autoGen5175 => 'DVI doble cadena';

  @override
  String get autoGen5176 => 'cadena única DVI';

  @override
  String get autoGen5177 =>
      'Compatible con OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5178 =>
      'Compatible con OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, adecuado para gráficos centrales + modelos de gráficos independientes';

  @override
  String get autoGen5179 =>
      'Compatible con OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adecuado para la arquitectura Ivy Bridge, solo modelos de gráficos principales';

  @override
  String get autoGen5180 =>
      'Compatible con OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adecuado para la arquitectura Ivy Bridge, decodificación de pantalla central + modelos de salida de pantalla independientes';

  @override
  String get autoGen5181 =>
      'Compatible con OS X Mavericks 10.9 ~ macOS Big Sur 11, adecuado para gráficos independientes de arquitectura Haswell NVIDIA Maxwell y Pascal';

  @override
  String get autoGen5182 =>
      'Compatible con OS X Mavericks 10.9 ~ macOS Big Sur 11, adecuado solo para modelos de pantalla principales con arquitectura Haswell';

  @override
  String get autoGen5183 =>
      'Compatible con OS X Mavericks 10.9 ~ macOS Big Sur 11, adecuado para gráficos centrales de arquitectura Haswell + modelos de gráficos independientes';

  @override
  String get autoGen5184 =>
      'Compatible con macOS El Capitan 10.11 ~ macOS Monterey 12, adecuado para modelos con gráficos centrales (o gráficos independientes)';

  @override
  String get autoGen5185 =>
      'Compatible con macOS El Capitan 10.11 ~ macOS Monterey 12, adecuado para pantalla central de arquitectura Broadwell (o con pantalla independiente)';

  @override
  String get autoGen5186 =>
      'Compatible con macOS Sierra 10.12 ~ macOS Ventura 13. Adecuado para modelos de pantalla central + pantalla independiente. Cabe señalar que al utilizar este modelo, la mayoría de los usuarios que solo utilizan pantallas principales experimentarán un color de pantalla anormal. Este modelo no se recomienda para usuarios de pantallas principales.';

  @override
  String get autoGen5187 =>
      'Compatible con macOS Sierra 10.12 ~ macOS Ventura 13, adecuado para decodificación de pantalla central + modelos de salida de pantalla independientes';

  @override
  String get autoGen5188 =>
      'Compatible con macOS 10.14 ~ macOS Sequoia 15, adecuado para modelos con gráficos centrales (o gráficos independientes)';

  @override
  String get autoGen5189 =>
      'Compatible con macOS 10.15 ~ macOS Tahoe 26, adecuado para modelos de pantalla central de procesador i7-10700K y inferiores (o con pantalla independiente)';

  @override
  String get autoGen5190 =>
      'Compatible con macOS 10.15 ~ macOS Tahoe 26, adecuado para modelos con pantalla de núcleo de procesador superior i9-10850K (o con pantalla independiente)';

  @override
  String get autoGen5191 => 'Support macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 =>
      'Compatible con macOS 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5193 =>
      'Compatible con macOS 10.7 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5194 => 'Compatible con macOS 10.8 ~ macOS Catalina 10.15';

  @override
  String get autoGen5195 => 'Compatible con macOS 10.9 ~ macOS Big Sur 11';

  @override
  String get autoGen5196 =>
      'Compatible con macOS High Sierra 10.13 ~ macOS Monterey 12';

  @override
  String get autoGen5197 =>
      'Compatible con macOS Mojave 10.14 ~ macOS Monterey 12';

  @override
  String get autoGen5198 => 'Support OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 => 'Support OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 =>
      'Compatible con macOS Sierra 10.12 ~ macOS Monterey 12';

  @override
  String get autoGen5201 =>
      'Compatible con macOS Sierra 10.12 ~ macOS Monterey 12 (la pantalla central HD 515 oficialmente solo es compatible con macOS Monterey 12, la falsificación es compatible con el último macOS Sequoia 15)';

  @override
  String get autoGen5202 =>
      'Compatible con macOS Sierra 10.12 ~ macOS Monterey 12 (la pantalla principal Iris 540 oficialmente solo es compatible con macOS Monterey 12 y la versión falsificada es compatible con el último macOS Sequoia 15)';

  @override
  String get autoGen5203 =>
      'Compatible con macOS Sierra 10.12 ~ macOS Monterey 12 (la pantalla principal Iris 550 oficialmente solo es compatible con macOS Monterey 12 y la versión falsificada es compatible con el último macOS Sequoia 15)';

  @override
  String get autoGen5204 =>
      'Compatible con macOS Sierra 10.12 ~ macOS Monterey 12 (la pantalla central HD530 oficialmente solo es compatible con macOS Monterey 12, la falsificación es compatible con el último macOS Sequoia 15)';

  @override
  String get autoGen5205 =>
      'Compatible con macOS High Sierra 10.13 ~ macOS Ventura 13';

  @override
  String get autoGen5206 =>
      'Compatible con macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 =>
      'Compatible con macOS Catalina 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 =>
      'Compatible con macOS Catalina 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'Compatible con macOS 10.9 ~ macOS Monterey 12, adecuado para modelos con gráficos independientes únicamente';

  @override
  String get autoGen5210 =>
      'Compatible con macOS 10.13 ~ macOS Sequoia 15. Aplicable solo a modelos con gráficos independientes. Para Intel de 11.ª generación y superiores, se suele utilizar este modelo. La conversión de frecuencia de la CPU y la frecuencia turbo son normales y no se necesita ningún parche Kext adicional (si la frecuencia turbo del sistema macOS no es normal, extraiga y utilice el SSDT-PLUG nativo)';

  @override
  String get autoGen5211 =>
      'Admite macOS 10.15 ~ macOS Tahoe 26, adecuado para modelos de gráficos independientes de tarjeta A. Las tarjetas A sin controladores compatibles (como RX560, RX570, RX5500, RX6600) admitirán perfectamente la decodificación física VDA. Para Intel de 11.a generación y superiores, generalmente se usa este modelo, la frecuencia turbo de la CPU no es normal y se requiere un parche Kext adicional. Puede ir a [Controlador Kexts opcional]->[Relacionado con la CPU]->[controlador de frecuencia variable de la CPU, proporciona principalmente soporte de conversión de frecuencia MacPro7,1 para plataformas de 11.ª generación y superiores] para marcar esta opción.';

  @override
  String get autoGen5212 => 'Rango de compatibilidad de macOS no configurado';

  @override
  String get autoGen5213 => 'El ID del dispositivo debe tener 4 caracteres.';

  @override
  String get autoGen5214 =>
      'Habilitar el interruptor maestro del parche del búfer de cuadros de visualización principal (Framebuffer)';

  @override
  String get autoGen5215 =>
      'Modifique la memoria de video a 1536 M (memoria de video de 1,5 G, el valor predeterminado oficial de Apple, adecuado para plataformas de pantalla central Intel de tercera a décima generación)';

  @override
  String get autoGen5216 =>
      'Modifique la memoria de video a 2048M (memoria de video 2G, valor predeterminado de la herramienta, adecuado para plataformas de pantalla Intel Core de tercera a décima generación)';

  @override
  String get autoGen5217 =>
      'Modifique la memoria de video a 3072M (memoria de video 3G, adecuada para plataformas de visualización Intel Core de tercera a décima generación)';

  @override
  String get autoGen5218 =>
      'Modifique la memoria de video a 4095M (memoria de video 4G, adecuada para plataformas de pantalla Intel Core de tercera a décima generación)';

  @override
  String get autoGen5219 =>
      'Solucione el problema de desenfoque de pantalla de alta resolución de 1080P en la plataforma Haswell de cuarta generación (por ejemplo, el desenfoque de pantalla de alta resolución puede deberse a que el valor no es lo suficientemente grande. Este parche es un parche dedicado para la pantalla principal de Haswell. Se recomienda usar esta configuración para pantallas de 1080P e inferiores).';

  @override
  String get autoGen5220 =>
      'Solucione el problema de las pantallas de alta resolución, como 2K y 4K, en la plataforma Haswell de cuarta generación (por ejemplo, la pantalla de alta resolución puede aparecer borrosa porque el valor no es lo suficientemente grande. Este parche es un parche dedicado para la pantalla principal de Haswell. Se recomienda utilizar esta configuración para pantallas de 2K y 4k).';

  @override
  String get autoGen5221 =>
      'Parche candidato para pantalla de alta resolución de Ivy Bridge';

  @override
  String get autoGen5222 => 'Habilitar el parche de interfaz con0';

  @override
  String get autoGen5223 => 'Habilitar el parche de interfaz con1';

  @override
  String get autoGen5224 => 'Habilitar parches de interfaz con2';

  @override
  String get autoGen5225 => 'Habilitar parche de interfaz con3';

  @override
  String get autoGen5226 =>
      'Parche de interfaz candidato para pantalla de alta resolución de Ivy Bridge';

  @override
  String get autoGen5227 =>
      'Parche de pantalla de alta resolución del portátil Sandy Bridge (resolución de 1600x900 y superior)';

  @override
  String get autoGen5228 =>
      'Parches opcionales para portátiles Ironlake/Arrandale';

  @override
  String get autoGen5229 =>
      'Repare la solución HDMI de pantalla de alta resolución de 60 fps (en algunos casos, la pantalla Intel Core puede usar el estándar HDMI 1.4 de forma predeterminada. Habilite este parámetro para forzar que HDMI 2.0 admita una resolución y frecuencia de actualización más altas, como por ejemplo 4K@60HZ)';

  @override
  String get autoGen5230 =>
      'Repare la salida de audio HDMI (generalmente solo se necesita el ácido adecuado; este parámetro a veces puede solucionar el problema de la salida de audio HDMI correcta)';

  @override
  String get autoGen5231 =>
      'Desactive el parche de conversión de DP a HDMI para sonido digital (garantiza la estabilidad y confiabilidad de la conexión HDMI cuando la interfaz DisplayPort está conectada a la interfaz HDMI a través de un convertidor)';

  @override
  String get autoGen5232 =>
      'Fuerce el estado en línea en todos los monitores, lo cual es útil para la salida de pantallas múltiples de la pantalla principal. En algunos casos, puede evitar problemas como una pantalla negra después de despertarse del modo de suspensión o la necesidad de enchufar y desenchufar el cable del monitor para iluminar la pantalla al iniciar (generalmente aplicable a Coffee Lake de octava generación y pantallas centrales superiores).';

  @override
  String get autoGen5233 =>
      'Mejorar el rendimiento de la pantalla principal (por ejemplo: solucionar el problema de que la codificación, resolución y fps 4K hevc de la pantalla principal no alcanzan los valores ideales)';

  @override
  String get autoGen5234 =>
      'Habilite la carga completa del firmware de la pantalla principal, mejore la utilización de la pantalla principal y mejore el rendimiento de la pantalla principal. Agregar este parámetro puede causar que el sistema no pueda ingresar, así que úselo con precaución';

  @override
  String get autoGen5235 =>
      'Se solucionó el problema de bucle sin fin causado por la pantalla central Skylake de sexta generación, la pantalla central Kaby Lake de séptima generación y el controlador de pantalla central Coffee Lake de octava generación al intentar iluminar una pantalla HDMI externa de alta resolución (los síntomas específicos son que después de conectar el cable HDMI, la pantalla interna de la computadora portátil se vuelve negra pero tiene luz de fondo, el sistema deja de responder y no hay salida en la pantalla externa)';

  @override
  String get autoGen5236 =>
      'Solucione el problema de falla del kernel causado por la baja frecuencia del Core Display Clock (CDCLK) en la plataforma Ice Lake de décima generación';

  @override
  String get autoGen5237 =>
      'Se corrigió un fallo del kernel en la plataforma Ice Lake de décima generación causado por el controlador que calculaba incorrectamente el tamaño de memoria preasignada de DVMT.';

  @override
  String get autoGen5238 =>
      'Ajuste la configuración del Control deslizante de brillo (Control deslizante de brillo) para que las transiciones sean más suaves y naturales para mejorar la experiencia del usuario.';

  @override
  String get autoGen5239 =>
      'Se solucionó el problema de una pantalla oscura que duraba 3 minutos después del inicio en portátiles con macOS 13.4 o superior en las plataformas Kaby Lake de 7.ª generación, 8.ª y Coffee Lake de 9.ª generación.';

  @override
  String get autoGen5240 =>
      'Se solucionó el problema por el cual las computadoras portátiles con macOS 13.3 y versiones anteriores en las plataformas Kaby Lake de séptima generación, octava generación y Coffee Lake de novena generación tenían una pantalla oscura durante 3 minutos después del arranque.';

  @override
  String get autoGen5241 =>
      'Se solucionó el problema por el cual la pantalla en la plataforma Ice Lake de décima generación persiste durante 7 a 15 segundos cuando se enciende la computadora portátil.';

  @override
  String get autoGen5242 =>
      'Se solucionó el problema de que la pantalla HDMI de alta resolución con núcleo Ice Lake de décima generación tenía una pantalla negra, sin señal y la resolución no se podía emitir correctamente en 4K@60Hz y algunos escenarios de actualización alta de 2K/4K (obligado a habilitar la \"anulación del reloj de píxeles máximo\" de la pantalla central (IGPU))';

  @override
  String get autoGen5243 =>
      'Se utiliza para reparar efectos de falla de la pantalla nuclear o problemas de parpadeo de la pantalla (como la pantalla nuclear HD530)';

  @override
  String get autoGen5244 =>
      'Deshabilite la pantalla independiente (generalmente cuando no se puede controlar la pantalla independiente de una computadora portátil con gráficos duales, es necesario deshabilitar la pantalla independiente)';

  @override
  String get autoGen5245 =>
      'Se solucionó el problema de las computadoras portátiles (como Dell XPS 15 9570 y otras portátiles con pantalla de alta resolución) en las que la pantalla interna de alta resolución devuelve un valor de velocidad de enlace máximo incorrecto, lo que provoca un bloqueo directo cuando la pantalla interna está encendida (se recomienda marcar esta casilla para portátiles con pantalla de alta resolución)';

  @override
  String get autoGen5246 =>
      'Inyecte el EDID del monitor en la interfaz AAPL00 (generalmente la pantalla interna de una computadora portátil) para solucionar el problema de la pantalla negra de la interfaz (nota: ¡primero debe inyectar el EDID del monitor en la página de configuración EDID! Puede completar el EDID en la herramienta \"Configuración de pantalla\" -> \"Mostrar EDID\". Para placas base de la serie 500 como B560, al reparar la salida HDMI, debe inyectar el EDID del monitor; de lo contrario, existe una alta probabilidad de una pantalla negra A veces, para otras plataformas Intel, el problema de la pantalla borrosa, la pantalla morada o la pantalla negra se puede reparar)';

  @override
  String get autoGen5247 =>
      'Inyecte el EDID del monitor en la interfaz AAPL01 para arreglar la pantalla negra y no hay problemas de visualización de la interfaz (Nota: ¡primero debe inyectar el EDID del monitor en la página de configuración EDID! Puede completar el EDID en la herramienta \"Configuración de pantalla\" -> \"Mostrar EDID\". Las placas base de la serie 500, como B560, deben inyectar el EDID del monitor al reparar la salida HDMI; de lo contrario, existe una alta probabilidad de que aparezca una pantalla negra. A veces, para otros Intel plataformas, el problema de pantalla principal borrosa, pantalla morada o pantalla negra puede repararse)';

  @override
  String get autoGen5248 =>
      'Inyecte el EDID del monitor en la interfaz AAPL02 para arreglar la pantalla negra y no hay problemas de visualización de la interfaz (Nota: ¡primero debe inyectar el EDID del monitor en la página de configuración EDID! Puede completar el EDID en la herramienta \"Configuración de pantalla\" -> \"Mostrar EDID\". Las placas base de la serie 500, como B560, deben inyectar el EDID del monitor al reparar la salida HDMI; de lo contrario, existe una alta probabilidad de que aparezca una pantalla negra. A veces, para otros Intel plataformas, el problema de pantalla principal borrosa, pantalla morada o pantalla negra puede repararse)';

  @override
  String get autoGen5249 =>
      'Habilite la compatibilidad con LSPCON y convierta DisplayPort a salida HDMI 2.0 (requiere un convertidor de señal LSPCON del puerto 0 ~ 3, adecuado para plataformas Skylake ~ 10.a generación Comet Lake e Ice Lake Intel)';

  @override
  String get autoGen5250 =>
      'Convertidor de señal LSPCON del puerto 0 (es necesario habilitar la compatibilidad con LSPCON)';

  @override
  String get autoGen5251 =>
      'Convertidor de señal LSPCON del puerto 1 (es necesario habilitar la compatibilidad con LSPCON)';

  @override
  String get autoGen5252 =>
      'Convertidor de señal LSPCON del puerto 2 (es necesario habilitar la compatibilidad con LSPCON)';

  @override
  String get autoGen5253 =>
      'Convertidor de señal LSPCON del puerto 3 (es necesario habilitar la compatibilidad con LSPCON)';

  @override
  String get autoGen5254 =>
      'Modifique la memoria framebuffer a 9 M (el tamaño de la memoria framebuffer afectará las pantallas de alta resolución, generalmente se usa junto con framebuffer-stolenmem)';

  @override
  String get autoGen5255 =>
      'Modifique la memoria robada a 19 M (aplicable a la pantalla 1080P, valor predeterminado de la herramienta, no es necesario verificar. Si hay un parámetro DVMT en el BIOS, se recomienda modificarlo a 64 M. Si el parámetro DVMT se cambia en el BIOS, este parámetro se puede eliminar)';

  @override
  String get autoGen5256 =>
      'Modifique la memoria robada a 64 M (aplicable a pantallas de 2k o 4k. Si hay un parámetro DVMT en el BIOS, se recomienda modificarlo a 64 M o superior. Si el parámetro DVMT se cambia en el BIOS, este parámetro se puede eliminar)';

  @override
  String get autoGen5257 =>
      'Modifique la memoria robada a 128 M (aplicable a pantallas de 4k. Si hay un parámetro DVMT en el BIOS, se recomienda modificarlo a 128 M o 256 M o más para pantallas de alta resolución. Si los parámetros DVMT se cambian en el BIOS, este parámetro se puede eliminar)';

  @override
  String get autoGen5258 =>
      'Habilite el puerto HDMI con0 (requiere la interfaz HDMI No. 0)';

  @override
  String get autoGen5259 =>
      'Interfaz HDMI No. 0, utilizada para solucionar el problema de la pantalla negra del HDMI de sexta a décima generación (es necesario habilitar el puerto HDMI con0)';

  @override
  String get autoGen5260 =>
      'Habilite el puerto HDMI con1 (requiere la interfaz HDMI No. 1)';

  @override
  String get autoGen5261 =>
      'Interfaz HDMI n.° 1, utilizada para solucionar el problema de la pantalla negra del HDMI de sexta a décima generación (es necesario habilitar el puerto HDMI con1)';

  @override
  String get autoGen5262 =>
      'Habilite el puerto HDMI con2 (requiere la interfaz HDMI No. 2)';

  @override
  String get autoGen5263 =>
      'Interfaz HDMI n.° 2, utilizada para solucionar el problema de la pantalla negra del HDMI de sexta a décima generación (es necesario habilitar el puerto HDMI con2)';

  @override
  String get autoGen5264 => 'Parámetros de memoria de vídeo/DVMT';

  @override
  String get autoGen5265 =>
      'Parámetros específicos de Haswell de cuarta generación';

  @override
  String get autoGen5266 =>
      'Parche candidato para pantalla de alta resolución Ivy Bridge de tercera generación';

  @override
  String get autoGen5267 =>
      'Parche candidato de pantalla de alta resolución Sandy Bridge de segunda generación';

  @override
  String get autoGen5268 =>
      'Parche candidato para portátiles Arrandale de 1.ª generación';

  @override
  String get autoGen5269 => 'Reparación de interfaz/HDMI';

  @override
  String get autoGen5270 => 'Solución de Ice Lake de décima generación';

  @override
  String get autoGen5271 => 'arreglo universal';

  @override
  String get autoGen5272 =>
      'Parche de pantalla de alta resolución para portátiles Ivy Bridge (resolución de 1600x900 y superior)';

  @override
  String get autoGen5273 =>
      'Habilite el parche de corrección de tipo HDMI de la interfaz con0 para solucionar problemas de pantalla negra, pantalla morada y audio de HDMI de 6.ª a 10.ª generación.';

  @override
  String get autoGen5274 =>
      'Habilite el parche de corrección de tipo HDMI de la interfaz con1 para solucionar problemas de pantalla negra, pantalla morada y audio de HDMI de 6.ª a 10.ª generación';

  @override
  String get autoGen5275 =>
      'Habilite el parche de corrección de tipo HDMI de la interfaz con2 para solucionar problemas de pantalla negra, pantalla morada y audio de HDMI de 6.ª a 10.ª generación.';

  @override
  String get autoGen5276 =>
      'Error de formato alc_codec.json: el nodo raíz debe ser Mapa<Cadena, dinámica>';

  @override
  String get autoGen5277 =>
      'Habilite -v para ejecutar el código (conveniente para localizar errores cuando el código está bloqueado, adecuado para la etapa de depuración y arranque)';

  @override
  String get autoGen5278 =>
      'Es conveniente que el sistema Mac imprima más información de símbolos cuando ocurre una falla del kernel, lo cual es útil para solucionar problemas. Este parámetro generalmente se usa con depuración = 0x100 (se recomienda verificarlo al depurar y arrancar por primera vez)';

  @override
  String get autoGen5279 =>
      'Evite el reinicio automático cuando el kernel falla, lo que facilita la visualización de los registros de fallas de pánico (se recomienda verificar esto al depurar y arrancar por primera vez).';

  @override
  String get autoGen5280 =>
      'Deshabilite la función de vigilancia para evitar la activación accidental del reinicio por pánico (aplicable al inicio de depuración)';

  @override
  String get autoGen5281 =>
      'Deshabilite la aleatorización del espacio de direcciones del kernel (KASLR) para garantizar que el kernel y kext (extensión del kernel) se carguen en el mismo mapa de memoria fijo para evitar fallas del kernel en el inicio temprano causadas por conflictos de memoria causados ​​por valores de diapositiva aleatorios (aplicable al inicio de depuración)';

  @override
  String get autoGen5282 =>
      'Omita la verificación del modelo durante el primer inicio de macOS para evitar símbolos de prohibición debido a SMBIOS demasiado bajo o demasiado alto, y asegúrese de que el sistema se pueda iniciar normalmente (tenga en cuenta que este parámetro no puede omitir la verificación del modelo durante la instalación. Aparecerá un mensaje similar a \"macOS no es compatible\" durante la instalación. En este momento, puede cambiar el SMBIOS a un nivel superior o inferior para admitir el sistema nuevo o antiguo)';

  @override
  String get autoGen5283 =>
      'Este parámetro es aplicable para deshabilitar AMFI, tarjetas gráficas relativamente nuevas (como HD4000 y superiores, GT710 y otros núcleos Kepler y superiores) o controladores WiFi. ¡Tenga en cuenta no usarlo con el parámetro amfi_get_out_of_my_way=0x1 al mismo tiempo! (Este parámetro solo tendrá efecto si SIP está deshabilitado, y este parámetro se eliminará automáticamente después de que SIP esté habilitado)';

  @override
  String get autoGen5284 =>
      'Asegúrese de que AMFIPass.kext se pueda habilitar y activar correctamente en el último sistema macOS Tahoe 26 para continuar eludiendo los controles de seguridad de AMFI (AMFI deshabilitado). (Nota: 1. Este parámetro no se puede usar al mismo tiempo que el parámetro deshabilitar AMFI, y este parámetro debe usarse con AMFIPass.kext. 2. Este parámetro generalmente solo se usa en los sistemas más recientes, no lo agregue a menos que sea necesario)';

  @override
  String get autoGen5285 =>
      'Este parámetro es aplicable cuando AMFI está deshabilitado, se utilizan plataformas antiguas, tarjetas gráficas antiguas (como GT240) o controladores WiFi. ¡Tenga en cuenta no utilizar el parámetro amfi=0x80 al mismo tiempo! (Solo tiene efecto cuando SIP está deshabilitado y este parámetro se elimina automáticamente después de habilitar SIP)';

  @override
  String get autoGen5286 =>
      'Se solucionó el problema de bloqueo de algunas aplicaciones (por ejemplo: Baidu Netdisk) después de deshabilitar AMFI (solo tendrá efecto si SIP está deshabilitado y este parámetro se eliminará automáticamente después de habilitar SIP)';

  @override
  String get autoGen5287 =>
      'Solucione los problemas que pueden ocurrir en el sistema más reciente (principalmente la versión Beta) (excepción del controlador del sistema, como: anomalía repentina en la tarjeta de sonido, Bluetooth, frecuencia de la CPU, etc. Se recomienda verificar esto cuando pruebe la última versión Beta del sistema)';

  @override
  String get autoGen5288 =>
      'Habilite solo 1 núcleo de CPU (aplicable a X58, X79, X99, X299 y otros fallos del núcleo de CPU de servidor multinúcleo, etapas tempranas de instalación y depuración)';

  @override
  String get autoGen5289 =>
      'Apague VT-d (deshabilite IOMMU, puede verificarlo cuando el BIOS no apaga VT-d) para resolver el problema de que algunas placas base se atasquen después de iniciar o ingresar al sistema.';

  @override
  String get autoGen5290 =>
      'Deshabilite la carga del firmware de gráficos de Apple para evitar quedarse atascado debido a una falla en la carga del firmware o un ciclo de reintento durante el inicio (solo aplicable a los gráficos Intel)';

  @override
  String get autoGen5291 =>
      'Deshabilite la pantalla central Intel (se recomienda verificar cuando la pantalla central no se puede controlar y no se admite la decodificación dura acelerada)';

  @override
  String get autoGen5292 =>
      'Deshabilite los gráficos independientes (generalmente cuando no se puede controlar la tarjeta gráfica independiente de computadora portátil con gráficos duales Intel [comúnmente utilizada en tarjetas N], se recomienda verificarla)';

  @override
  String get autoGen5293 =>
      'Deshabilite el controlador NVIDIA (solo aplicable al depurar tarjetas N incompatibles)';

  @override
  String get autoGen5294 =>
      'Deshabilite la aceleración de gráficos centrales de Intel (por ejemplo: cuando usa OCLP y no puede iniciar normalmente después de parchear el parche de gráficos centrales, puede verificarlo, sin aceleración, solo para depuración)';

  @override
  String get autoGen5295 =>
      'Reparar y mejorar el rendimiento de la pantalla central Intel (por ejemplo: solucionar el problema de que la codificación, la resolución y los fps de la pantalla central 4K hevc no alcanzan los valores ideales)';

  @override
  String get autoGen5296 =>
      'Se solucionó el problema con el valor máximo de velocidad de enlace de la pantalla Intel Core, que causaba un bloqueo directo cuando se encendía la pantalla ((especialmente en Skylake, Kaby Lake, Coffee Lake, Comet Lake, pantalla negra y sin señal, sin alcanzar la resolución 4K esperada, etc.)';

  @override
  String get autoGen5297 =>
      'Solucione el problema de resolución de la pantalla principal, fuerce la habilitación de la \"anulación del reloj de píxeles máximo\" de la IGPU y elimine la resolución predeterminada, la frecuencia de actualización y otras restricciones de macOS.';

  @override
  String get autoGen5298 =>
      'Solucione el problema de la pantalla negra 4K en la salida HDMI de algunas computadoras portátiles (generalmente aplicable a computadoras portátiles, como ThinkPad P71/7700HQ/HD630/4K atascada en `gIOScreenLockState3`)';

  @override
  String get autoGen5299 =>
      'Solucione el problema de falla del kernel causado por la baja frecuencia del Core Display Clock (CDCLK) en la plataforma Ice Lake de décima generación';

  @override
  String get autoGen5300 =>
      'Se solucionó un problema de falla del kernel en la plataforma Ice Lake de décima generación causado por el controlador que calculaba incorrectamente el tamaño de memoria preasignada de DVMT.';

  @override
  String get autoGen5301 =>
      'Se solucionó el problema por el cual la pantalla en la plataforma Ice Lake de décima generación persiste durante 7 a 15 segundos cuando se enciende la computadora portátil.';

  @override
  String get autoGen5302 =>
      'Deshabilite iGPU (gráficos principales) para cargar el módulo de telemetría durante el proceso de inicio. Algunas computadoras portátiles (especialmente las Chromebook) pueden hacer que el sistema se congele o se congele durante la fase de inicio al cargar este módulo (aplicable a las computadoras portátiles Intel Skylake de sexta generación y superiores)';

  @override
  String get autoGen5303 =>
      'Solucione el registro de retroiluminación en macOS Ventura 13.4 y versiones anteriores, KBL de 7.ª generación y plataformas de portátiles CFL de 8.ª y 9.ª generación, y solucione el problema de la pantalla negra o la pantalla oscura que dura 3 minutos (aplicable a portátiles)';

  @override
  String get autoGen5304 =>
      'Repare el registro de retroiluminación en macOS Ventura 13.4 y superior, KBL de 7.ª generación y plataformas de portátiles CFL de 8.ª y 9.ª generación, y solucione el problema de la pantalla negra o la pantalla oscura que dura 3 minutos (aplicable a portátiles)';

  @override
  String get autoGen5305 =>
      'Ajuste la configuración del control deslizante de brillo (control deslizante de brillo) para que las transiciones sean más suaves y naturales para mejorar la experiencia del usuario (aplicable a portátiles)';

  @override
  String get autoGen5306 =>
      'Dibuja el logotipo de Apple en la segunda fase de inicio en lugar de copiar el búfer de fotogramas. Al conectar un monitor externo, realice una transición fluida desde la barra de progreso al escritorio de inicio de sesión. En algunos casos, puede solucionar el problema de la pantalla negra al ingresar al sistema. Al mismo tiempo, resulta útil enchufar y desenchufar el cable del monitor para encender la pantalla.';

  @override
  String get autoGen5307 =>
      'Solucione el problema de inicio de configuración ACPI de tarjetas de plataforma como X58,';

  @override
  String get autoGen5308 =>
      'Solucione el problema de inicio de configuración ACPI de tarjetas de plataforma como X58,';

  @override
  String get autoGen5309 =>
      'Se solucionó el problema de compatibilidad con la administración de derechos digitales (DRM) de hardware en las GPU AMD (permite que el contenido digital protegido con DRM, como videos de alta calidad proporcionados por servicios de transmisión, se experimente en las GPU AMD compatibles)';

  @override
  String get autoGen5310 =>
      'Deshabilite la aceleración de la tarjeta gráfica ATI y AMD (por ejemplo: cuando usa OCLP y la tarjeta gráfica no puede iniciarse normalmente después del parche, puede verificarlo, sin aceleración, solo para depuración)';

  @override
  String get autoGen5311 =>
      'Repare HD7750, HD7850 (el núcleo principal es la serie GCN HD77XX, HD78XX, HD79XX) y otras distorsiones de pantalla de tarjeta A antiguas, pantalla amarilla y otros problemas de visualización anormales';

  @override
  String get autoGen5312 =>
      'Solucione la pantalla negra o los problemas de visualización anormales que pueden ser causados ​​por algunas tarjetas gráficas, ignorando por completo las restricciones o configuraciones de AppleGraphicsDevicePolicy.kext en la tarjeta gráfica. Cuando no esté seguro de las restricciones específicas, evite problemas de visualización o fenómenos de pantalla negra causados ​​por configuraciones de hardware incompatibles (como una identificación de placa específica). Preste atención a este parámetro, que solo tendrá efecto cuando se use con AnyGreen.kext. Para las tarjetas A sin controlador nativo, puede eliminar el controlador WhichGreen.kext, por lo que no es necesario agregar este parámetro.';

  @override
  String get autoGen5313 =>
      'Solucione el problema de la pantalla negra cuando se inician las tarjetas gráficas AMD Navi core RX5XXX, RX6XXX (por ejemplo: RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.), reemplace board-id con board-ix y omita algunas restricciones de AppleGraphicsDevicePolicy. Nota: 1. Sólo tendrá efecto cuando se use con AnyGreen.kext. 2. BIOS Apague el puerto serie/COM en la configuración de SuperIO. Para las tarjetas A sin controlador nativo, puede eliminar el controlador WhichGreen.kext, por lo que no es necesario agregar este parámetro.';

  @override
  String get autoGen5314 =>
      'Solucione el problema de la pantalla negra después de despertarse del modo de suspensión para algunas tarjetas gráficas como RX470 y RX570, deshabilite la verificación de identificación de la placa en AppleGraphicsDevicePolicy y solucione la pantalla negra o los problemas de visualización anormales que pueden ser causados ​​por algunas tarjetas gráficas. Tenga en cuenta que este parámetro solo tendrá efecto cuando se use con AnyGreen.kext. Para las tarjetas A sin controlador nativo, el controlador WhichGreen.kext se puede eliminar, por lo que no es necesario agregar este parámetro.';

  @override
  String get autoGen5315 =>
      'Reparar plataformas Intel de 3.ª generación e inferiores Las tarjetas gráficas sin controlador de las series AMD RX5XX (por ejemplo: RX560, RX570, RX580), AMD RX5XXX, RX6XXX (por ejemplo: RX5500, RX6600) tienen un problema de pantalla negra en los sistemas Ventura y superiores (Nota: ¡debe usar OCLP para parchear la tarjeta gráfica después de ingresar al sistema! Después de parchear la tarjeta gráfica, elimine el parámetro de arranque o use la configuración alternativa después de la publicación en el directorio EFI para cambiar el nombre de la configuración y reiniciar para controlar la tarjeta gráfica).';

  @override
  String get autoGen5316 =>
      'Repare las tarjetas gráficas AMD oficialmente no compatibles (por ejemplo: RX550 Lexa core) para que admitan la codificación de vídeo por hardware VDA.';

  @override
  String get autoGen5317 =>
      'Repare la tarjeta N antigua de arquitectura Fermi, Maxwell, Pascal (por ejemplo: GT610, GTX750, GTX960, GTX1050) Problema con el controlador de la tarjeta gráfica del sistema BigSur 11 o superior (Nota: ¡¡¡Debe usar OCLP para parchear la tarjeta gráfica después de ingresar al sistema!!! ¡¡¡Este parámetro no es necesario para el núcleo Kepler!!!)';

  @override
  String get autoGen5318 =>
      'Se solucionó el problema de baja velocidad de algunas tarjetas de red inalámbrica Broadcom (cambie el código de país de Broadcom WiFi a Hong Kong, también puede cambiar el canal del enrutador para mejorarlo)';

  @override
  String get autoGen5319 =>
      'Arreglar el código de baqueta y el problema de daño del simulador SMC';

  @override
  String get autoGen5320 =>
      'Solucione el problema de actualización OTA del sistema macOS después de deshabilitar SIP (Protección de integridad del sistema) o SecureBootModel (modelo de seguridad) y solucione el problema de visualización del nombre de CPU personalizado';

  @override
  String get autoGen5321 =>
      'Evite el problema de reiniciar el dispositivo después de ingresar al modo de suspensión, lo que facilita la obtención de registros de fallas del kernel y la resolución de problemas de suspensión.';

  @override
  String get autoGen5322 =>
      'Mejore la identificación y programación de la topología de las CPU de núcleos grandes y pequeños de Intel de 12.ª generación y posteriores. La mejora del rendimiento no está garantizada. Se recomienda habilitarlo después de la prueba real (tenga en cuenta que debe usarse con CpuTopologyRebuild.kext para que surta efecto)';

  @override
  String get autoGen5323 =>
      'Desactive completamente el modo Darkwake y deje que el sistema entre en el modo de suspensión tradicional. Se utiliza principalmente para reparar problemas como el despertar de pantalla negra y el despertar automático.';

  @override
  String get autoGen5324 =>
      'Deshabilite el modo de espera de procesamiento de iGPU RC6 y solucione el problema de pánico del kernel NVMe causado por la pantalla del núcleo RC6 durante la suspensión';

  @override
  String get autoGen5325 =>
      'Habilite el control de retroiluminación PWM para tarjetas gráficas AMD Radeon RX serie 5000';

  @override
  String get autoGen5326 =>
      'Reparar y corregir la visualización de salida de la interfaz DVI de tarjetas A antiguas (290X, 370, etc.)';

  @override
  String get autoGen5327 =>
      'Fuerce el panel táctil tipo I2C a funcionar en modo de sondeo en lugar de modo controlado por interrupción (el modo de interrupción generalmente requiere SSDT personalizado, lo cual es relativamente complicado. A veces, el problema de que el panel táctil I2C no se pueda utilizar se puede solucionar (debe usarse con el controlador VoodooI2C)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (Algunas placas base y firmware pueden tener conflictos o problemas de incompatibilidad al manejar el área MMIO. Habilitar esta opción puede ayudar a resolver estos conflictos y mejorar la compatibilidad y estabilidad del sistema. Esta opción generalmente se combina con la versión OpenCore Debug para personalizar MMIO para resolver la tarjeta EB causada por problemas de memoria en algunas placas base (por ejemplo: algunas placas base con procesadores de las series X58, X79, X99 y AMD 7000))';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (se recomienda verificarlo en firmware que no admite la tabla de atributos de memoria (MAT), especialmente firmware OEM. Después de encenderlo, la protección contra escritura en el registro CR0 se eliminará durante la ejecución para garantizar la escritura normal de NVRAM. Generalmente aplicable a plataformas anteriores a la séptima generación)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (protege los servicios UEFI contra la sobrescritura del firmware, generalmente se usa para reparar problemas de EB de tarjetas causados ​​por DevirtualiseMmio, etc. Se recomienda verificarlo para placas base Z390, Z490 y Ice Lake de décima generación)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (Establece memoria virtual continua para uso de OC y la asigna a memoria física dispersa. Nota: No se recomienda marcar esta opción para placas base Comet Lake ASUS, Gigabyte y AsRock de décima generación.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (en el firmware que admite la tabla de atributos de memoria (MAT), se recomienda verificarlo. Generalmente se usa junto con SyncRuntimePermissions. Este elemento puede entrar en conflicto con EnableWriteUnprotector. Se recomienda elegir uno de los dos. Generalmente se aplica a plataformas posteriores a la octava generación y también se aplica a algunas plataformas antiguas)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (soluciona el problema de que el hardware no puede inyectar permisos al inyectar memoria. Generalmente, este problema existe en las placas base después de 2018. Si no puede ingresar a Windows debido a esta opción, actívela. Este elemento generalmente se usa junto con RebuildAppleMemoryMap)';

  @override
  String get autoGen5334 =>
      'CPU de segunda generación - placa base híbrida de tercera generación';

  @override
  String get autoGen5335 =>
      'CPU de tercera generación: placa base híbrida de segunda generación';

  @override
  String get autoGen5336 =>
      'Complete la instalación sin controlar la pantalla principal por el momento (esto puede evitar problemas de pantalla negra y fallas del kernel causados ​​por el problema del marco del búfer de la pantalla principal)';

  @override
  String get autoGen5337 => 'Identificación de dispositivo falsificada';

  @override
  String get autoGen5338 =>
      'La pantalla principal solo se usa para tareas de aceleración y cálculo, no como pantalla de salida (pantalla de salida de tarjeta gráfica independiente)';

  @override
  String get autoGen5339 => 'HD3000, HD P3000 y otras pantallas principales';

  @override
  String get autoGen5340 => 'HD4000, HD P4000 y otras pantallas principales';

  @override
  String get autoGen5341 =>
      'HD4400, HD4600, HD P4600 y otras pantallas principales';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 y otras pantallas principales';

  @override
  String get autoGen5343 =>
      'Pantalla central HD5600 (P6200, P6300 se pueden falsificar)';

  @override
  String get autoGen5344 => 'HD6000, Iris 6100 y otras pantallas principales';

  @override
  String get autoGen5345 =>
      'HD520, HD530 y otras pantallas centrales HD620 falsificadas (aplicable a sistemas Ventura y superiores)';

  @override
  String get autoGen5346 =>
      'HD520, HD530 y otras pantallas centrales HD620 falsificadas (aplicable a sistemas Ventura y superiores, alternativa)';

  @override
  String get autoGen5347 =>
      'HD530, HD P530 y otras pantallas centrales de la serie 500 (aplicables a sistemas Monterey e inferiores)';

  @override
  String get autoGen5348 => 'HD 630, HD P630 y otras pantallas principales';

  @override
  String get autoGen5349 =>
      'HD 630, P630 y otras pantallas centrales UHD630 falsificadas (Opción 1)';

  @override
  String get autoGen5350 =>
      'HD 630, P630 y otras pantallas centrales UHD630 falsificadas (Opción 2)';

  @override
  String get autoGen5351 =>
      'Solución de salida de pantalla nuclear UHD 630 uno';

  @override
  String get autoGen5352 => 'Caja de salida de pantalla UHD 630 core 2';

  @override
  String get autoGen5353 =>
      'Gráficos Intel HD (por ejemplo: i3 380M, i5 480M vienen con pantalla central incorporada)';

  @override
  String get autoGen5354 =>
      'Pantalla de salida de pantalla central HD3000, adecuada para resoluciones de 1366x768 e inferiores)';

  @override
  String get autoGen5355 =>
      'Habilitar soporte para resoluciones superiores a 1600X900';

  @override
  String get autoGen5356 =>
      'Pantalla de salida de pantalla nuclear HD3000, adecuada para resoluciones de 1600x900 y superiores)';

  @override
  String get autoGen5357 =>
      'Solución uno de controlador de pantalla central HD4000, adecuada para resolución de 1366x768 e inferior, método de enlace LVDS';

  @override
  String get autoGen5358 =>
      'Solución dos del controlador de pantalla central HD4000, adecuada para modo de enlace LVDS de resolución 1600x900 y superior, la salida multipantalla puede requerir más configuraciones de parches)';

  @override
  String get autoGen5359 =>
      'Solución tres del controlador de pantalla central HD4000, adecuada para monitores con conexión eDP)';

  @override
  String get autoGen5360 => 'Pantalla central HD4200, HD4400, HD4600';

  @override
  String get autoGen5361 => 'Pantalla central HD5000, HD5100, HD5200';

  @override
  String get autoGen5362 => 'Pantalla central HD5500';

  @override
  String get autoGen5363 => 'Pantalla central HD5600';

  @override
  String get autoGen5364 => 'Pantalla central HD6000';

  @override
  String get autoGen5365 =>
      'HD520, HD530 y otras pantallas centrales HD620 falsificadas (para sistemas Ventura y superiores)';

  @override
  String get autoGen5366 =>
      'Pantalla central HD 515, HD 520, HD 530, HD 540, HD 550, P530 (aplicable a sistemas Monterey e inferiores)';

  @override
  String get autoGen5367 => 'Alternativa de pantalla nuclear HD 515';

  @override
  String get autoGen5368 => 'Pantalla central HD 510';

  @override
  String get autoGen5369 =>
      'Pantalla central HD 615, HD 620, HD 630, HD 640, HD 650';

  @override
  String get autoGen5370 => 'Alternativa de pantalla HD/UHD de 620 núcleos';

  @override
  String get autoGen5371 => 'Pantalla central UHD 617, UHD 620';

  @override
  String get autoGen5372 => 'Pantalla central UHD 630';

  @override
  String get autoGen5373 => 'Pantalla central UHD 620';

  @override
  String get autoGen5374 => 'Pantalla Intel lris Plus de 655 núcleos';

  @override
  String get autoGen5375 => 'Pantalla principal de la serie G4/G7';

  @override
  String get autoGen5376 => 'Pantalla de salida de pantalla nuclear HD3000';

  @override
  String get autoGen5377 => 'Pantalla de salida de pantalla nuclear HD4000';

  @override
  String get autoGen5378 =>
      'HD4200, HD4400, HD4600, HD P4600 y otras pantallas centrales (se recomienda verificar el parche dedicado de la pantalla central de cuarta generación en la configuración avanzada de la pantalla principal, y se han solucionado los problemas menores que pueden ocurrir)';

  @override
  String get autoGen5379 => 'Pantalla central HD 515';

  @override
  String get autoGen5380 => 'Pantalla central HD 520/530';

  @override
  String get autoGen5381 => 'Pantalla central HD 540/550';

  @override
  String get autoGen5382 => 'Pantalla central HD 580';

  @override
  String get autoGen5383 =>
      'Pantalla central HD P530 (como la e3 1245v5 viene con pantalla central incorporada)';

  @override
  String get autoGen5384 => 'Pantalla central HD 615';

  @override
  String get autoGen5385 => 'Pantalla central HD 630, HD P630';

  @override
  String get autoGen5386 => 'Pantalla central HD 640/650';

  @override
  String get autoGen5387 => 'Pantalla HD/UHD de 620 núcleos';

  @override
  String get autoGen5388 => 'Pantalla central UHD 620/630';

  @override
  String get autoGen5389 => 'Pantalla central UHD 655';

  @override
  String get autoGen5390 =>
      'Cambie el nombre de GPRW a XPRW para solucionar el problema de activación instantánea (nota: puede causar que el teclado USB no pueda activar el dispositivo, puede activarlo mediante la tecla de encendido)';

  @override
  String get autoGen5391 =>
      'Cambie el nombre de UPRW a XPRW para solucionar el problema de activación instantánea (nota: puede causar que el teclado USB no pueda activar el dispositivo, puede activarlo mediante la tecla de encendido)';

  @override
  String get autoGen5392 =>
      'Habilite los dispositivos GPI0 para que admitan trackpads I2C';

  @override
  String get autoGen5393 =>
      'Un controlador necesario para las extensiones del kernel de macOS, que proporciona principalmente escalabilidad y compatibilidad para macOS, lo que permite a otros desarrolladores escribir extensiones del kernel para extender macOS.';

  @override
  String get autoGen5394 =>
      'Por ejemplo, WhicheverGreen, AppleALC, VirtualSMC, etc. pueden implementar varias modificaciones y mejoras en macOS a través de Lilu.kext, como la compatibilidad con diferentes tarjetas gráficas, tarjetas de sonido, administración de máquinas virtuales, etc.';

  @override
  String get autoGen5395 =>
      'Lilu.kext suele ser la primera extensión del kernel de macOS que se carga, ya que es posible que otros complementos deban depender de su funcionalidad. Esto garantiza que el complemento se cargue correctamente cuando se inicia macOS.';

  @override
  String get autoGen5396 => 'Controladores básicos esenciales';

  @override
  String get autoGen5397 =>
      'En hardware Apple real, SMC es responsable de administrar las funciones de administración del sistema, como sensores de hardware, control de ventiladores, administración de energía, sensores de temperatura y estado de la batería. VirtualSMC proporciona estas funciones en hardware que no es de Apple para garantizar que macOS pueda ejecutarse correctamente en estos sistemas.';

  @override
  String get autoGen5398 =>
      'A menudo se usa junto con otras extensiones del kernel como Lilu.kext, WhichGreen, etc. para crear un entorno Mac casi real en hardware que no sea de Apple.';

  @override
  String get autoGen5399 =>
      'Falta el controlador y macOS no puede ejecutarse correctamente.';

  @override
  String get autoGen5400 =>
      'Proporciona principalmente compatibilidad con controladores de gráficos GPU. Se recomienda encarecidamente verificar la mayoría de ellos (los modelos MacPro7, 1 y RX460, RX560 y superiores, los usuarios de gráficos independientes de AMD pueden eliminar la marca). Suele entrar en conflicto con los controladores NootRX y NootedRed. No los seleccione al mismo tiempo durante la etapa de instalación.';

  @override
  String get autoGen5401 =>
      'Admite una variedad de tarjetas gráficas, incluidas tarjetas gráficas NVIDIA, AMD e Intel. Esta extensión puede arreglar y configurar el Framebuffer correcto para que la pantalla y la resolución funcionen correctamente.';

  @override
  String get autoGen5402 =>
      'Proporciona soporte para conexiones HDMI y DisplayPort (DP) para garantizar que las salidas de audio y vídeo funcionen correctamente.';

  @override
  String get autoGen5403 =>
      'Utilice AppleALC para imitar la tarjeta de sonido incorporada (opción preferida relativamente perfecta)';

  @override
  String get autoGen5404 =>
      'Utilice la tarjeta de sonido universal VoodooHDA (cargada durante el arranque, solo es compatible con macOS BigSur 11.2.3 y versiones inferiores. Las versiones superiores de macOS deben agregar este controlador a la extensión del kernel del sistema para que surta efecto. Según la prueba del autor, el mayor soporte es la versión oficial de macOS Tahoe 26.x)';

  @override
  String get autoGen5405 =>
      'Corrección de compatibilidad del controlador USB 3.0 para plataformas antiguas o plataformas AMD';

  @override
  String get autoGen5406 =>
      'Solucione el problema de reinicio causado por la administración de energía de la CPU de plataformas antiguas anteriores a la tercera generación de Intel (que se muestra como el registro de fallas del kernel AppleIntelCPUPowerManagement, o el logotipo de inicio atascado, o el reinicio justo después de ingresar al sistema, etc.)';

  @override
  String get autoGen5407 =>
      'Repare la administración de energía de la CPU de la serie AMD Ryzen (solo aplicable a la serie AMD Ryzen; si hay problemas de reinicio causados ​​por la administración de energía, puede considerar eliminar la casilla de verificación)';

  @override
  String get autoGen5408 =>
      'Solución de unidad de batería 1 (aplicable a portátiles de tercera generación y plataformas anteriores)';

  @override
  String get autoGen5409 =>
      'Solución de unidad de batería 2 (aplicable a portátiles de tercera generación y plataformas más nuevas)';

  @override
  String get autoGen5410 =>
      'Sensor de luz ambiental (brillo de pantalla automático), si no tienes sensor de luz ambiental no lo uses, de lo contrario puede causar problemas';

  @override
  String get autoGen5411 =>
      'El control del ventilador de la computadora portátil Asus, la administración de energía y otras optimizaciones de sensores del sistema, etc., no se recomiendan para usuarios que no sean de Asus.';

  @override
  String get autoGen5412 =>
      'El control del ventilador de la computadora portátil Lenovo, la administración de energía y otras optimizaciones de sensores del sistema, etc., no se recomiendan para máquinas que no sean Lenovo.';

  @override
  String get autoGen5413 =>
      'Sensor especial para portátiles Dell para monitorear y controlar con mayor precisión los ventiladores. No recomendado para máquinas que no sean Dell.';

  @override
  String get autoGen5414 =>
      'Permite que la información de los sensores de los procesadores AMD (como temperatura, consumo de energía, frecuencia, etc.) quede expuesta a las herramientas de monitoreo de macOS. Este controlador es compatible con los procesadores de la serie AMD Ryzen y algunos procesadores de la serie AMD FX. Otros procesadores AMD pueden causar problemas inesperados. Al mismo tiempo, algunas plataformas de los sistemas Sequoia 15 y superiores pueden tener problemas de compatibilidad, así que elija con cuidado.';

  @override
  String get autoGen5415 =>
      'Se utiliza para admitir RX6700, RX6750XT, RX6750GRE y otros gráficos independientes de la serie RX6XXX oficialmente no compatibles. Hay un conflicto con el controlador Which Green. No seleccione ambos en la etapa de instalación.';

  @override
  String get autoGen5416 =>
      'Admite Navi 21 (Big Sur y superior), Navi 22/23 (Monterey y superior) y también admite RX6650, RX6950 y otras tarjetas gráficas';

  @override
  String get autoGen5417 =>
      'Agregar este controlador al instalar macOS por primera vez puede provocar la imposibilidad de ingresar al sistema. Se recomienda agregarlo después de completar la instalación.';

  @override
  String get autoGen5418 =>
      'Solucione el problema de lentitud causado por la pantalla central AMD Ryzen serie 2000~5000, Edge y el navegador Chrome que no desactivan la aceleración de hardware (solo aplicable a la serie AMD Ryzen, reduciendo principalmente el uso de renderizado OpenGL, uso normal de QQ, navegador Chrome. El uso de este controlador puede causar que otras aplicaciones no funcionen correctamente, tome su propia decisión)';

  @override
  String get autoGen5419 =>
      'Reparación de lectura de batería, soluciona algunos problemas de visualización de la batería.';

  @override
  String get autoGen5420 =>
      'Compatibilidad mejorada con SSD NVMe que no son de Apple y menor consumo de energía en inactividad';

  @override
  String get autoGen5421 =>
      'Los discos NVMe incompatibles incluidos en la lista negra de Samsung y otros no pueden solucionar eficazmente el problema del bloqueo del tiempo de espera';

  @override
  String get autoGen5422 =>
      'El uso de este controlador con un SSD NVMe con buena compatibilidad puede causar un fallo del kernel, así que utilícelo con precaución la mayor parte del tiempo.';

  @override
  String get autoGen5423 =>
      'Mejore la capacidad de omitir o desactivar AMFI. Nota: Agregar este controlador puede provocar que algunas aplicaciones no se abran o bloqueen. En este momento, puede intentar eliminar el controlador y usar solo los parámetros de inicio deshabilitados de AMFI (como amfi=0x80)';

  @override
  String get autoGen5424 =>
      'Se solucionó el problema por el cual las unidades de estado sólido NVMe se reconocían como discos externos.';

  @override
  String get autoGen5425 =>
      'Desbloquee controles universales, navegación y otras funciones en Mac no compatibles';

  @override
  String get autoGen5426 =>
      'Solucionar problemas comunes relacionados con la hibernación y el sueño';

  @override
  String get autoGen5427 =>
      'Permitir que macOS use la función de anclaje a red de un dispositivo Android a través de una conexión USB';

  @override
  String get autoGen5428 =>
      'Controlador de frecuencia variable de CPU, proporciona principalmente soporte de conversión de frecuencia MacPro7,1 para plataformas de 11.ª generación y superiores.';

  @override
  String get autoGen5429 =>
      'CPUFriend está equipado con un controlador de datos para proporcionar datos de conversión de frecuencia de CPU para modelos específicos.';

  @override
  String get autoGen5430 =>
      'Optimice el tamaño de la CPU y las configuraciones de núcleo de Intel de 12.ª generación y posteriores';

  @override
  String get autoGen5431 =>
      'Puede mejorar el rendimiento de un solo núcleo, pero puede provocar una disminución del rendimiento de varios núcleos. Solo es aplicable a plataformas de 12.ª generación y superiores.';

  @override
  String get autoGen5432 =>
      'La solución de sincronización CPU TSC uno, generalmente preferida';

  @override
  String get autoGen5433 =>
      'Comúnmente utilizado en plataformas multinúcleo X79, X99, X299 y AMD.';

  @override
  String get autoGen5434 =>
      'Se utiliza para solucionar problemas como funcionamiento atascado, logotipo de inicio atascado, sincronización anormal de audio y video, falla al despertar del modo de suspensión, etc.';

  @override
  String get autoGen5435 =>
      'Solución de sincronización CPU TSC 2, generalmente utilizada en AMD Ryzen y algunas plataformas Intel';

  @override
  String get autoGen5436 =>
      'Se utiliza para solucionar problemas como retrasos en la operación, fallas ocasionales, anomalías en la sincronización de audio y video, fallas en el modo de activación del sueño, etc.';

  @override
  String get autoGen5437 =>
      'Solucione el problema de sincronización del reloj multinúcleo de la CPU de la plataforma AMD Ryzen (solo aplicable a la serie AMD Ryzen, se utiliza para solucionar problemas como retrasos en la operación, logotipo de inicio atascado, etc. Agregar este controlador puede causar problemas inesperados, elija con cuidado)';

  @override
  String get autoGen5438 =>
      'Solución de sincronización CPU TSC tres, generalmente utilizada en plataformas Intel más antiguas y sistemas macOS más antiguos';

  @override
  String get autoGen5439 =>
      'Adecuado para multinúcleo X79, X99, X299 y otras plataformas, utilizado para solucionar problemas como retrasos en la operación y logotipo de arranque atascado';

  @override
  String get autoGen5440 =>
      'Se corrigieron algunos problemas de audio HDMI de Intel Core Display';

  @override
  String get autoGen5441 =>
      'Solucione el problema de no poder iniciar sesión en Apple ID e iCloud, que generalmente se usan para portátiles sin tarjetas de red cableadas locales.';

  @override
  String get autoGen5442 =>
      'Solucione conflictos entre la nueva plataforma macOS AppleRTC y el BIOS de la PC, como que RTC cause congelaciones, reinicios repentinos o reactivaciones repentinas después de la hibernación.';

  @override
  String get autoGen5443 =>
      'Controlador de teclado y mouse tipo interfaz PS (controlador de mouse y teclado de puerto redondo PS de placa base de escritorio)';

  @override
  String get autoGen5444 =>
      'Controlador de teclado tipo interfaz PS (controlador de teclado de puerto redondo PS de placa base de escritorio)';

  @override
  String get autoGen5445 =>
      'Controlador de mouse tipo interfaz PS (controlador de mouse de puerto redondo PS de placa base de escritorio)';

  @override
  String get autoGen5446 =>
      'Controlador del panel táctil del teclado dedicado de Microsoft Surface';

  @override
  String get autoGen5447 =>
      'Corrección de teclas de método abreviado de brillo';

  @override
  String get autoGen5448 =>
      'Optimice el rendimiento de la tarjeta gráfica AMD Radeon, pero ciertos escenarios pueden provocar que el sistema falle o no se inicie, así que compruébelo con atención.';

  @override
  String get autoGen5449 =>
      'Permitir que RadeonGadget.app lea la temperatura de la GPU de la tarjeta gráfica AMD y otra información';

  @override
  String get autoGen5450 =>
      'Exporte la temperatura de la GPU AMD y otra información a VirtualSMC para que las herramientas de monitoreo la lean.';

  @override
  String get autoGen5451 =>
      'Se corrigieron problemas de compatibilidad del controlador USB en plataformas más antiguas como AMD FM1/FM2/AM3.';

  @override
  String get autoGen5452 =>
      'Solución de inyección USB universal, la opción predeterminada cuando el USB no está personalizado';

  @override
  String get autoGen5453 =>
      'Solución USBToolBox, generalmente utilizada con UTBMap.kext personalizado';

  @override
  String get autoGen5454 =>
      'Solucione el problema de USB3.0 en plataformas Intel de 3.ª generación y posteriores actualizadas (requerido para conjuntos de chips de la serie 300 (H370, B360, H310, Z390 [no requerido para sistemas 10.14 y superiores], X79, X99, placas base ASRock Intel [excepto B460/Z490+])';

  @override
  String get autoGen5455 =>
      'Solucione problemas de compatibilidad de EHCI USB2.0 en AMD FM1, FM2, AM3 y otras plataformas antiguas';

  @override
  String get autoGen5456 =>
      'Solucione problemas de compatibilidad con XHCI USB3.0 en AMD FM1, FM2, AM3 y otras plataformas antiguas';

  @override
  String get autoGen5457 =>
      'Reparar la administración de energía de la CPU de las plataformas Intel de 3.ª generación y anteriores, sistemas Ventura 13 y superiores';

  @override
  String get autoGen5458 =>
      'Controlador del lector de tarjetas SD de la serie Realtek (usado con RealtekCardReaderFriend)';

  @override
  String get autoGen5459 =>
      'Controlador compatible con RealtekCardReader para mejorar la compatibilidad del lector de tarjetas Realtek';

  @override
  String get autoGen5460 =>
      'Controlador de dispositivo de tarjeta de memoria SDHC, compatible con tarjetas de memoria eMMC y MMC';

  @override
  String get autoGen5461 => 'Controlador de tarjeta de red cableada de 100M';

  @override
  String get autoGen5462 =>
      'Compatible con tarjetas de red RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139.';

  @override
  String get autoGen5463 =>
      'Generalmente se utiliza para plataformas antiguas tradicionales.';

  @override
  String get autoGen5464 => 'Controlador de tarjeta de red Gigabit';

  @override
  String get autoGen5465 =>
      'Admite Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V y otras tarjetas de red';

  @override
  String get autoGen5466 => 'Controlador de tarjeta de red cableada Gigabit';

  @override
  String get autoGen5467 =>
      'Admite BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M y otras tarjetas de red.';

  @override
  String get autoGen5468 =>
      'Admite AR8131, AR8132, AR8151, AR8152 y otras tarjetas de red';

  @override
  String get autoGen5469 =>
      'Admite Realtek RTL8111 / 8168 B / C / D / E / F / G / H, admite tarjetas de red Killer E2500 y superiores';

  @override
  String get autoGen5470 =>
      'El controlador de la nueva versión RealtekRTL8111 solo admite sistemas 10.13.x y superiores';

  @override
  String get autoGen5471 =>
      'Admite AR816x, AR817x, Killer E220x, Killer E2400 y otras tarjetas de red';

  @override
  String get autoGen5472 =>
      'Controlador de tarjeta de red cableada Gigabit (compatible con 2,5G)';

  @override
  String get autoGen5473 =>
      'Admite todos los dispositivos compatibles con IGC (i225, i226, i226-V y otras tarjetas de red cableadas). Es posible que el ID de PCI de algunos dispositivos no esté en la lista IOPCIMatch. Agréguelo usted mismo para probarlo.';

  @override
  String get autoGen5474 =>
      'En comparación con el controlador AppleEthernetE1000, tiene mejor rendimiento y estabilidad (i226-V puede causar pánico en el kernel cuando se utiliza AppleEthernetE1000 en el sistema Monterey)';

  @override
  String get autoGen5475 =>
      'Admite tarjetas de red Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 e i211';

  @override
  String get autoGen5476 =>
      'Puede haber problemas de inestabilidad, se recomienda permanecer en la versión Big Sur y usar SmallTree';

  @override
  String get autoGen5477 =>
      'Normalmente aplicable a sistemas macOS Monterey 12 y superiores';

  @override
  String get autoGen5478 =>
      'Compatible con Intel serie 5: 82578LM, 82578LC, 82578DM, 82578DC';

  @override
  String get autoGen5479 =>
      'Compatible con Intel series 6 y 7: 82579LM, 82579V';

  @override
  String get autoGen5480 =>
      'Compatible con Intel series 8 y 9: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3';

  @override
  String get autoGen5481 =>
      'Compatible con Intel serie 100: I219V, I219LM, I219V2, I219LM2, I219LM3';

  @override
  String get autoGen5482 => 'Compatible con Intel serie 200: I219LM, I219V';

  @override
  String get autoGen5483 => 'Compatible con Intel serie 300: I219LM, I219V';

  @override
  String get autoGen5484 =>
      'El conductor es mantenido por acidanthera. OS X 10.6 ~ 10.8 usa IntelSnowMausi';

  @override
  String get autoGen5485 =>
      'Este controlador lo proporciona Laura Müller. OS X 10.6 ~ 10.8 usa IntelSnowMausi';

  @override
  String get autoGen5486 =>
      'Controlador antiguo RTL8125, compatible con tarjetas Ethernet de la serie Realtek RTL8125';

  @override
  String get autoGen5487 =>
      'Controlador de tarjeta de red cableada Gigabit (compatible con 2,5G, 5G)';

  @override
  String get autoGen5488 =>
      'Nuevo controlador para RTL812x, compatible con tarjetas Ethernet de las series Realtek RTL8125 y RTL8126';

  @override
  String get autoGen5489 =>
      'Modelos compatibles: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A';

  @override
  String get autoGen5490 =>
      'Admite tarjeta de red con cable Intel i211, este modelo es común en las placas base AMD';

  @override
  String get autoGen5491 =>
      'Generalmente aplicable a macOS Big Sur e inferiores, macOS Monterey puede ser inestable';

  @override
  String get autoGen5492 => 'Compatibilidad: SO';

  @override
  String get autoGen5493 =>
      'Controlador de tarjeta de red cableada 10G (compatible con 10G)';

  @override
  String get autoGen5494 => 'Compatible con Intel X520,';

  @override
  String get autoGen5495 =>
      'Solo es compatible con sistemas macOS 10.13 y superiores';

  @override
  String get autoGen5496 =>
      'Se recomienda desactivar WoL en la configuración BIOS UEFI';

  @override
  String get autoGen5497 =>
      'Se solucionó el problema por el cual la utilidad de disco no reconoce los discos SATA durante la instalación de sistemas Catalina 10.15 y anteriores.';

  @override
  String get autoGen5498 =>
      'Se solucionó el problema por el cual la Utilidad de Discos no reconoce los discos SATA durante el proceso de instalación de los sistemas Big Sur 11 y superiores.';

  @override
  String get autoGen5499 =>
      'Solucionar problemas de compatibilidad relacionados con la plataforma AMD Adobe Family Bucket';

  @override
  String get autoGen5500 =>
      'Compatible con macOS High Sierra 10.13 ~ macOS Tathoe 26.x (usualmente usado con el cliente HeliPort)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (Nota: ¡¡¡El sistema Sequoia 15 debe parchearse con la versión modificada específica de OCLP Intel antes de poder usarse normalmente!!!)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4 y superior';

  @override
  String get autoGen5503 =>
      'Soluciona principalmente algunos problemas de dispositivos Bluetooth (aplicable a algunos dispositivos Broadcom y otros dispositivos USB Bluetooth)';

  @override
  String get autoGen5504 =>
      'Qualcomm WiFi, compatible con macOS Big Sur 11.x y versiones anteriores';

  @override
  String get autoGen5505 => 'Qualcomm (Atheros)-AR9285';

  @override
  String get autoGen5506 => 'Qualcomm (Atheros)-AR9380';

  @override
  String get autoGen5507 => 'Qualcomm (Atheros)-AR9485';

  @override
  String get autoGen5508 => 'Qualcomm (Atheros)-AR9565';

  @override
  String get autoGen5509 => 'Qualcomm (Atheros)-AR9463';

  @override
  String get autoGen5510 => 'Qualcomm (Atheros)-AR9462';

  @override
  String get autoGen5511 =>
      'Desactive Touch ID para reducir el desperdicio de recursos del sistema y mejorar la estabilidad';

  @override
  String get autoGen5512 =>
      'Generalmente adecuado para portátiles con reconocimiento de huellas dactilares y versiones inferiores a macOS Big Sur 11';

  @override
  String get autoGen5513 =>
      'La política TRIM está configurada de forma predeterminada (es decir, SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1. El sistema APFS realiza operaciones TRIM basadas en el tiempo de espera TRIM predeterminado de macOS, que es aplicable a la mayoría de los SSD que admiten TRIM.';

  @override
  String get autoGen5515 =>
      '2. En los SSD que admiten TRIM, macOS administra automáticamente la ejecución de TRIM, lo que ayuda a limpiar los bloques de datos eliminados, lo que hace que la escritura en SSD sea más eficiente, evita la amplificación de escritura frecuente y mejora la velocidad de escritura.';

  @override
  String get autoGen5516 =>
      '3.TRIM limpiará periódicamente los bloques no utilizados para reducir el desgaste del SSD, extendiendo así la vida útil del SSD.';

  @override
  String get autoGen5517 =>
      '4. Algunos SSD de terceros que no son totalmente compatibles con TRIM pueden experimentar retrasos o incluso congelaciones al ejecutar TRIM, lo que hace que el proceso de arranque se vuelva muy lento.';

  @override
  String get autoGen5518 =>
      'Deshabilite completamente la funcionalidad TRIM (es decir, establezca SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => 'Beneficios de desactivar TRIM:';

  @override
  String get autoGen5520 =>
      '1. Mejorar la velocidad de arranque. Para los SSD de terceros que no admiten TRIM o lo admiten parcialmente, macOS puede causar retrasos debido a que se intentan operaciones TRIM durante el inicio. Deshabilitar TRIM puede eliminar este retraso y mejorar la velocidad de arranque.';

  @override
  String get autoGen5521 =>
      '2. Mejorar la compatibilidad. Algunos SSD con poca compatibilidad pueden reducir el riesgo de fallas anormales.';

  @override
  String get autoGen5522 =>
      '3. Extienda la vida útil de los SSD que no son TRIM. En los SSD que no admiten TRIM, habilitar TRIM a la fuerza puede acelerar el desgaste y afectar la vida útil. Deshabilitar TRIM puede extender la vida útil de dichos SSD.';

  @override
  String get autoGen5523 => 'Desventajas de desactivar TRIM:';

  @override
  String get autoGen5524 =>
      '1. El rendimiento del SSD disminuye. Algunos SSD no tienen el mecanismo de recolección de basura TRIM. El SSD no puede limpiar ni marcar los bloques libres a tiempo después de eliminar datos, lo que puede hacer que la velocidad de escritura disminuya.';

  @override
  String get autoGen5525 =>
      '2. Se reduce la eficiencia de la gestión del espacio en disco. Después de desactivarlo, el controlador SSD requiere más tiempo y recursos para la recolección de basura, lo que puede provocar una mayor fragmentación y una reducción de la eficiencia de la gestión del espacio.';

  @override
  String get autoGen5526 =>
      '3. Acorte la vida útil del SSD. Para los SSD que admiten TRIM, después de desactivar TRIM, el SSD no puede optimizar el proceso de escritura, lo que aumentará el desgaste de los bloques de almacenamiento, acortando así la vida útil del SSD que admite TRIM.';

  @override
  String get autoGen5527 =>
      'Aunque deshabilitar TRIM puede generar algunas mejoras en la velocidad de arranque, para los SSD modernos que admiten TRIM, se recomienda mantener TRIM activado para lograr rendimiento y estabilidad a largo plazo. Este aumento de velocidad suele ser pequeño y sólo tendrá un efecto significativo en algunos SSD incompatibles.';

  @override
  String get autoGen5528 =>
      'Controlador de frecuencia variable de CPU, aquí proporciona principalmente soporte de frecuencia variable MacPro7,1 de 11.a a 14.a generación';

  @override
  String get autoGen5529 =>
      'Lector de tarjetas SD Realtek y su controlador compatible';

  @override
  String get autoGen5530 =>
      'Adecuado para plataformas antiguas de tercera generación e inferiores, dispositivos de entrada conectados según el protocolo de bus PS/2, como teclado, mouse, panel táctil, etc. Puede realizar un cierto grado de función multitáctil, pero el soporte es limitado.';

  @override
  String get autoGen5531 =>
      'Adecuado para plataformas de tercera generación y superiores, dispositivos de entrada conectados según el protocolo de bus PS/2, como teclado, mouse, panel táctil, etc. Proporciona soporte para el panel táctil PS/2 a través de un subcontrolador y puede lograr un cierto grado de función multitáctil, pero el soporte es limitado.';

  @override
  String get autoGen5532 =>
      'El teclado PS2 es adecuado para paneles táctiles, pantallas táctiles, sensores y otros dispositivos de entrada conectados según el protocolo de bus I2C. Proporciona compatibilidad con gestos multitáctiles para simular la experiencia táctil nativa de macOS.';

  @override
  String get autoGen5533 =>
      'Teclado PS2, adecuado para panel táctil Synaptics conectado según el protocolo de bus RMI4. Concéntrese en brindar un mejor soporte a los dispositivos Synaptics, brindando capacidades multitáctiles y de gestos similares al panel táctil nativo de macOS.';

  @override
  String get autoGen5534 =>
      'Teclado PS2, adecuado para dispositivos táctiles basados ​​en bus I2C y paneles táctiles Synaptics que utilizan el protocolo RMI4. RMII2C combina las ventajas de VoodooI2C y VoodooRMI.';

  @override
  String get autoGen5535 =>
      'Controlador de teclado y mouse redondo basado en conexión de protocolo de bus PS/2';

  @override
  String get autoGen5536 =>
      'Combinación de teclado dedicado, panel táctil y controlador de pantalla táctil de Microsoft Surface.';

  @override
  String get autoGen5537 => 'Serie sin controlador Broadcom BCM94360';

  @override
  String get autoGen5538 =>
      'Las tarjetas Apple AirPort y Fenvi sin controlador, Ventura e inferiores no tienen controlador, ¡y el parche es compatible con Sonoma 14 y Sequoia 15! Nota: ¡Los sistemas Sonoma 14 y superiores deben parchearse con OCLP antes de poder usarse normalmente! ! !';

  @override
  String get autoGen5539 => 'Serie Broadcom BCM943XX sin controlador';

  @override
  String get autoGen5540 =>
      'Las tarjetas distintas de Apple AirPort y Fenvi, Catalina e inferiores no tienen controladores y el parche es compatible con Sonoma 14 y Sequoia 15. Nota: ¡Los sistemas Sonoma 14 y superiores deben parchearse con OCLP antes de poder usarse normalmente! ! !';

  @override
  String get autoGen5541 => 'Viejo Broadcom BCM4331';

  @override
  String get autoGen5542 =>
      'Tenga en cuenta que los sistemas Monterey 12 o superiores necesitan usar el parche OCLP antes de poder usarlos normalmente. ! !';

  @override
  String get autoGen5543 => 'Viejo Broadcom BCM43224';

  @override
  String get autoGen5544 => 'Controlador del modelo WiFi de Qualcomm (Atheros)';

  @override
  String get autoGen5545 => 'Opción manual de WiFi de Qualcomm';

  @override
  String get autoGen5546 =>
      'Qualcomm (Atheros) WiFi Big Sur y siguientes dependencias';

  @override
  String get autoGen5547 =>
      'Los sistemas macOS Big Sur 11 y anteriores utilizan HS80211Family para coincidir con controladores de modelos específicos';

  @override
  String get autoGen5548 =>
      'Qualcomm (Atheros) WiFi Monterey y dependencias superiores';

  @override
  String get autoGen5549 =>
      'Los sistemas macOS Monterey 12 y superiores utilizan la combinación IO80211ElCap';

  @override
  String get autoGen5550 =>
      'Se solucionó el problema de reconocimiento de batería en \"Preferencias del Sistema\" para las series Surface Pro 7 y Book 3';

  @override
  String get autoGen5551 =>
      'Se solucionó el problema del error POST al iniciar el reloj en tiempo real de algunas computadoras de la marca HP.';

  @override
  String get autoGen5552 =>
      'Deshabilite el plan de despertador RTC y solucione el problema del despertar automático después de dormir';

  @override
  String get autoGen5553 => 'Plataforma Generación 0-Penryn-775';

  @override
  String get autoGen5554 => 'Plataforma de generación 1-Lynnfield-1156';

  @override
  String get autoGen5555 =>
      'Plataforma Sandy Bridge-1155 de segunda generación';

  @override
  String get autoGen5556 => 'Plataforma Ivy Bridge-1155 de tercera generación';

  @override
  String get autoGen5557 => 'Plataforma Haswell-1150 de cuarta generación';

  @override
  String get autoGen5558 => 'Plataforma Broadwell-1150 de quinta generación';

  @override
  String get autoGen5559 => 'Plataforma Skylake-1151 de sexta generación';

  @override
  String get autoGen5560 => 'Plataforma Kaby Lake-1151 de séptima generación';

  @override
  String get autoGen5561 => 'Plataforma Coffee Lake-1151 de octava generación';

  @override
  String get autoGen5562 => 'Plataforma Coffee Lake-1151 de novena generación';

  @override
  String get autoGen5563 => 'Plataforma Comet Lake-1200 de décima generación';

  @override
  String get autoGen5564 => 'Plataforma Rocket Lake-1200 de 11.ª generación';

  @override
  String get autoGen5565 => 'Plataforma Alder Lake-1700 de 12.a generación';

  @override
  String get autoGen5566 => 'Plataforma Raptor Lake-1700 de 13.a generación';

  @override
  String get autoGen5567 =>
      'Plataforma Raptor Lake Refresh-1700 de 14.a generación';

  @override
  String get autoGen5568 => 'Plataforma Arrow Lake-1851 de 15.a generación';

  @override
  String get autoGen5569 => 'Cuaderno Penryn de generación 0';

  @override
  String get autoGen5570 => 'Cuaderno Clarksfield&Arrandale de 1.ª generación';

  @override
  String get autoGen5571 => 'Cuaderno Sandy Bridge de segunda generación';

  @override
  String get autoGen5572 => 'Portátil Ivy Bridge de tercera generación';

  @override
  String get autoGen5573 => 'Computadora portátil Haswell de cuarta generación';

  @override
  String get autoGen5574 => 'Cuaderno Broadwell de quinta generación';

  @override
  String get autoGen5575 => 'Cuaderno Skylake de sexta generación';

  @override
  String get autoGen5576 => 'Cuaderno Kaby Lake de séptima generación';

  @override
  String get autoGen5577 => 'Cuaderno Coffee Lake de octava generación';

  @override
  String get autoGen5578 => 'Cuaderno Coffee Lake de novena generación';

  @override
  String get autoGen5579 =>
      'Computadora portátil Comet Lake de décima generación';

  @override
  String get autoGen5580 =>
      'Computadora portátil Ice Lake de décima generación';

  @override
  String get autoGen5581 => 'Portátil de 11.ª generación, Tiger Lake';

  @override
  String get autoGen5582 => 'Cuaderno Alder Lake de 12.ª generación';

  @override
  String get autoGen5583 => 'Portátil Raptor Lake de 13.ª generación';

  @override
  String get autoGen5584 => 'Portátil Raptor Lake Refresh de 14.ª generación';

  @override
  String get autoGen5585 => 'Mini host Penryn de generación 0';

  @override
  String get autoGen5586 =>
      'Mini anfitrión de 1.ª generación, Clarksfield&Arrandale';

  @override
  String get autoGen5587 => 'Minianfitrión Sandy Bridge de segunda generación';

  @override
  String get autoGen5588 => 'Mini host Ivy Bridge de tercera generación';

  @override
  String get autoGen5589 => 'Mini host Haswell de cuarta generación';

  @override
  String get autoGen5590 => 'Mini host Broadwell de quinta generación';

  @override
  String get autoGen5591 => 'Mini host Skylake de sexta generación';

  @override
  String get autoGen5592 => 'Mini anfitrión de Kaby Lake de séptima generación';

  @override
  String get autoGen5593 => 'Mini host de Coffee Lake de octava generación';

  @override
  String get autoGen5594 => 'Mini host de Coffee Lake de novena generación';

  @override
  String get autoGen5595 => 'Mini host Comet Lake de décima generación';

  @override
  String get autoGen5596 => 'Mini anfitrión de Ice Lake de décima generación';

  @override
  String get autoGen5597 => 'Mini anfitrión de 11.a generación: Tiger Lake';

  @override
  String get autoGen5598 => 'Mini anfitrión de 12.a generación-Alder Lake-';

  @override
  String get autoGen5599 => 'Mini anfitrión Raptor Lake de 13.a generación';

  @override
  String get autoGen5600 => 'Mini host Raptor Lake Refresh de 14.a generación';

  @override
  String get autoGen5601 => 'Plataforma Generación 1-Nehalem y Westmere-X58';

  @override
  String get autoGen5602 =>
      'Plataforma Sandy Bridge-E-X79 de segunda generación';

  @override
  String get autoGen5603 => 'Plataforma Ivy Bridge-E-X79 de tercera generación';

  @override
  String get autoGen5604 => 'Plataforma Haswell-E-X99 de cuarta generación';

  @override
  String get autoGen5605 => 'Plataforma Broadwell-E-X99 de quinta generación';

  @override
  String get autoGen5606 => 'Plataforma Skylake-X&W-X299 de sexta generación';

  @override
  String get autoGen5607 => 'Plataforma Cascade Lake-X&W de décima generación';

  @override
  String get autoGen5608 => 'Bulldozer(15h) y Jaguar(16h)-Cuaderno';

  @override
  String get autoGen5609 => 'portátil ryzen';

  @override
  String get autoGen5610 => 'Bulldozer(15h) y Jaguar(16h)-mini anfitrión';

  @override
  String get autoGen5611 => 'Minianfitrión Ryzen';

  @override
  String get autoGen5612 => 'Ryzen y Threadripper(17h y 19h)-Servidor';

  @override
  String get autoGen5613 => 'prueba';

  @override
  String get autoGen5614 => 'prueba de NVRAM';

  @override
  String get autoGen5615 => 'No se puede obtener el directorio de inicio';

  @override
  String get autoGen5616 => 'El directorio de origen no existe';

  @override
  String get autoGen5617 => 'No se puede obtener el directorio del escritorio';

  @override
  String get autoGen5618 =>
      'La verificación de ruta falla y devuelve una ruta vacía';

  @override
  String get autoGen5619 =>
      'No se pudo obtener la información del archivo plist y el resultado devuelto estaba incompleto.';

  @override
  String get autoGen5620 =>
      'NOTA: NormalizeHeaders está habilitado y el ID de la tabla contiene caracteres no imprimibles.';

  @override
  String get autoGen5621 =>
      'Nota: NormalizeHeaders no está habilitado y el ID de la tabla contiene el carácter \'\'?\'\'.';

  @override
  String get autoGen5622 =>
      '¡No se ha seleccionado ningún archivo config.plist de destino!';

  @override
  String get autoGen5623 =>
      '=> ¡No se puede determinar el tipo de config.plist!';

  @override
  String get autoGen5624 =>
      '=> ¡No se encontró la tabla SSDT! salte por encima...';

  @override
  String get autoGen5625 => '=> ¡No se encontró tabla SSDT duplicada!';

  @override
  String get autoGen5626 => '=> ¡Parche no encontrado! salte por encima...';

  @override
  String get autoGen5627 => '=> ¡Parche duplicado no encontrado!';

  @override
  String get autoGen5628 =>
      '=> ¡No se encontró el parche de caída! salte por encima...';

  @override
  String get autoGen5629 => '=> ¡No se encontró el parche de caída duplicado!';

  @override
  String get autoGen5630 =>
      '=> ¡No se encontró ninguna configuración de Quirks que deba actualizarse! salte por encima...';

  @override
  String get autoGen5631 =>
      '=> Comprobando la configuración de Quirks de destino...';

  @override
  String get autoGen5632 =>
      'Realizando una copia de seguridad del archivo de configuración actual...';

  @override
  String get autoGen5633 => 'Preparándose para copiar archivos SSDT...';

  @override
  String get autoGen5634 => '¡Configuración guardada exitosamente!';

  @override
  String get autoGen5635 => '¡La fusión está completa!';

  @override
  String get autoGen5636 => '¡Falló la fusión!';

  @override
  String get autoGen5637 =>
      'Nota: Se encuentran posibles errores durante el proceso de fusión; verifíquelos y corríjalos.';

  @override
  String get autoGen5638 =>
      'Nota: ¡La configuración actual no está configurada para anular el modo EFI de destino!';

  @override
  String get autoGen5639 => 'Debe hacer lo siguiente manualmente:';

  @override
  String get autoGen5640 => 'Elemento del diccionario raíz no encontrado';

  @override
  String get autoGen5641 =>
      'Elimine los conflictos de IRQ, que a menudo se utilizan para reparaciones de tarjetas de sonido.';

  @override
  String get autoGen5642 =>
      '• HPET (Temporizador de eventos de alta precisión) es un módulo de hardware utilizado para la sincronización del sistema.\n• En macOS, algunos dispositivos HPET de la placa base pueden causar conflictos de IRQ (solicitud de interrupción), lo que afectará el funcionamiento normal del dispositivo de audio, provocando que el sistema sea inestable o incluso no pueda iniciarse.\n• Este parche ajusta las definiciones de dispositivos ACPI relacionadas con HPET para evitar conflictos de IRQ, garantizar que macOS pueda usar correctamente los temporizadores HPET, solucionar problemas de la tarjeta de sonido y mejorar la estabilidad del sistema.';

  @override
  String get autoGen5643 =>
      'Falsificar EC e inyectar atributos de energía USB (aplicable a computadoras de escritorio Intel de sexta generación y superiores)';

  @override
  String get autoGen5644 =>
      '• Aplicable a computadoras de escritorio Intel de sexta generación y superiores\n• Este parche deshabilitará el dispositivo EC original del sistema y luego creará un dispositivo EC virtual para \"engañar\" a macOS haciéndole creer que existe un EC compatible, resolviendo así los problemas de inicio causados por la falta de dispositivos EC. \n• Se agregaron las propiedades de alimentación USB necesarias para solucionar problemas potenciales. Equivalente a fusionar: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'Solo falsifica EC, no afecta el EC existente e inyecta atributos de energía USB al mismo tiempo (aplicable a portátiles Intel de sexta generación y superiores)';

  @override
  String get autoGen5646 =>
      '• Aplicable a portátiles Intel de 6.ª generación y superiores\n• Adecuado para portátiles, no elimina ni modifica el EC existente, sino que crea un nuevo EC virtual por separado para evitar dañar el dispositivo EC original y evitar anomalías funcionales como la administración de energía del portátil y la retroiluminación del teclado.\n• Se agregaron las propiedades de alimentación USB necesarias para solucionar problemas potenciales. Equivalente a fusionar: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 =>
      'EC falsificado (aplicable a computadoras de escritorio Intel de 5.ª generación e inferiores)';

  @override
  String get autoGen5648 =>
      '• Adecuado para computadoras de escritorio Intel de 5.ª generación e inferiores\n• Este parche deshabilitará el dispositivo EC original del sistema y luego creará un dispositivo EC virtual para \"engañar\" a macOS haciéndole creer que existe un EC compatible, resolviendo así los problemas de inicio causados por la falta de dispositivos EC.';

  @override
  String get autoGen5649 =>
      'Solo EC falsificado, no afecta a los EC existentes (aplicable a portátiles Intel de 5.ª generación e inferiores)';

  @override
  String get autoGen5650 =>
      '• Aplicable a portátiles Intel de 5.ª generación e inferiores\n• No elimina ni modifica el EC existente, sino que crea un nuevo EC virtual por separado para evitar dañar el dispositivo EC original y evitar anomalías funcionales como la administración de energía de la computadora portátil y la retroiluminación del teclado.';

  @override
  String get autoGen5651 =>
      'Corrección de atributos de alimentación USB (aplicable a plataformas Intel de sexta generación y más recientes)';

  @override
  String get autoGen5652 =>
      '• Aplicable a Intel Skylake de sexta generación y superiores, servidor Haswell-E de cuarta generación y superiores, AMD Ryzen y otras plataformas\n• A partir de Intel Skylake y procesadores más nuevos, macOS requiere propiedades de alimentación USB específicas para garantizar que los dispositivos USB reciban alimentación y sean reconocidos correctamente.\n• Este parche corrige la administración de energía de los puertos USB para cumplir con los requisitos de macOS y resuelve problemas como el reconocimiento anormal de dispositivos USB, suministro de energía insuficiente e imposibilidad de conexión en caliente.\n• Para portátiles: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml La combinación de los dos equivale a SSDT-EC-USBX-LAPTOP.aml\n• Para escritorio: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml La combinación de los dos es equivalente a SSDT-EC-USBX-DESKTOP.aml';

  @override
  String get autoGen5653 =>
      'Identificación del núcleo de la CPU, lo que permite el ajuste de frecuencia y la corrección de ahorro de energía.';

  @override
  String get autoGen5654 =>
      '• SSDT-PLUG es adecuado para plataformas Intel Haswell de 4.ª generación a 11.ª generación, servidor Haswell-E de 4.ª generación y superiores (al personalizar SSDT-PLUG, la herramienta lo detecta y genera automáticamente).\n• SSDT-PLUG-ALT es adecuado para Intel Alder Lake de 12.ª generación y superior, y para la plataforma AMD Ryzen (al personalizar SSDT-PLUG, la herramienta lo detecta, lo genera automáticamente y le cambia el nombre a SSDT-PLUG-ALT).\n• macOS depende del complemento de administración de energía de la CPU (PluginType) para ajustar la frecuencia de la CPU y mejorar la eficiencia energética y la duración de la batería.\n• Este parche modificará la definición de CPU para que macOS piense que es un procesador tipo complemento = 1 requerido por los dispositivos Apple, cargando así correctamente la gestión de frecuencia de la CPU y mejorando el rendimiento y el control del consumo de energía.';

  @override
  String get autoGen5655 =>
      'Habilite la compatibilidad con NVRAM (generalmente para placas base Intel nativas de la serie 300)';

  @override
  String get autoGen5656 =>
      '• Aplicable a plataformas Intel Coffee Lake de 8.ª generación a 9.ª generación\n• Es posible que las placas base nativas de la serie 300 (como Z370, B360) no utilicen NVRAM correctamente en macOS, lo que provoca que algunas funciones (como iMessage, memoria de volumen, parámetros de arranque, etc.) no se guarden.\n• Este parche habilita el PMC (Controlador de administración de energía) de la placa base, lo que permite a macOS usar NVRAM nativa normalmente sin la necesidad de un controlador EmuVariableUEFI adicional.';

  @override
  String get autoGen5657 =>
      'Agregue un dispositivo PNLF para compatibilidad con retroiluminación (solo portátiles y dispositivos todo en uno)';

  @override
  String get autoGen5658 =>
      '• macOS requiere un dispositivo PNLF (Brillo del panel) para controlar correctamente el brillo de la pantalla del portátil.\n• Este parche creará un dispositivo PNLF en ACPI, lo que permitirá a macOS ajustar el brillo de la pantalla y mostrar opciones de control de brillo en Preferencias del Sistema.\n• Adecuado para portátiles y algunos ordenadores todo en uno para resolver el problema del ajuste de brillo no disponible.\n• UID = 14, aplicable a: Intel Arrandale de 1.ª generación, Sandy Bridge de 2.ª generación, Ivy Bridge de 3.ª generación\n  Nota: Algunas máquinas que usan UID: 14 encontrarán un brillo máximo limitado u otros problemas. Para resolver estos problemas, se debe configurar la ruta correcta del dispositivo de la iGPU (tarjeta gráfica integrada) y es posible que sea necesario complementar la información del registro de la IGPU.\n• UID = 15, aplicable a: Intel Haswell de cuarta generación, Broadwell de quinta generación\n• UID = 16, aplicable a: Intel Skylake de sexta generación, Kaby Lake de séptima generación y algunos Haswell de cuarta generación\n• UID = 17, aplicable a: Brillo personalizado, generalmente usado para algunos dispositivos no estándar o configuraciones Hackintosh con necesidades especiales\n• UID = 18, adecuado para: Brillo personalizado, generalmente usado para algunos dispositivos no estándar o configuraciones Hackintosh con necesidades especiales\n• UID = 19, aplicable a: Intel CoffeeLake de 8.ª generación y superiores, inferiores a 10.ª generación y portátiles AMD\n• UID = 99, se aplica a: Otros (requiere propiedades personalizadas del dispositivo applbkl-name/applbkl-data), es posible que no funcione en absoluto';

  @override
  String get autoGen5659 =>
      'Proporciona soporte de sensor necesario para el ajuste de la retroiluminación de la pantalla (solo aplicable a portátiles y ordenadores todo en uno)';

  @override
  String get autoGen5660 =>
      '• Se utiliza para simular y habilitar la función del sensor nativo de Apple (Sensor de luz ambiental, ALS) para ajustar automáticamente el brillo de la pantalla.\n• Si su dispositivo realmente tiene ALS (como algunas computadoras portátiles de alta gama) y hay problemas, puede intentar agregar SSDT-ALS0 para corregir la función de ajuste automático de brillo; de lo contrario, no se recomienda agregar\n• Aplicable a: PC todo en uno (AIO) y portátiles únicamente';

  @override
  String get autoGen5661 =>
      'macOS se disfraza de Windows y desbloquea dispositivos bloqueados (como los paneles táctiles I2C)';

  @override
  String get autoGen5662 =>
      '• _OSI (Interfaz del sistema operativo) es un método de ACPI que permite al sistema operativo informar qué funciones admite.\n• Algunos firmware de la placa base pueden decidir si habilitan ciertos dispositivos según el valor de retorno _OSI, que puede no ser reconocido por macOS, lo que resulta en una pérdida de funcionalidad.\n• El parche \"engaña\" al firmware haciéndole creer que macOS también es Windows, activando así funciones ocultas como: panel táctil I2C, gestión de batería, etc.';

  @override
  String get autoGen5663 => 'Restablecer y reparar el puerto USB';

  @override
  String get autoGen5664 =>
      '• Algunos fabricantes de equipos originales violan la especificación ACPI, lo que causa problemas al iniciar macOS. Para resolver este problema, es necesario apagar el dispositivo RHUB y obligar a macOS a reconstruir el puerto manualmente.\n• Este parche restablece el controlador USB (incluidos EHC1, EHC2 y otros dispositivos USB protegidos y renombrados) cuando se inicia macOS, para que todos los puertos USB puedan identificarse correctamente, y se utiliza con el mapeo USB (como: UTBMap.kext) para garantizar que los dispositivos USB funcionen correctamente.\n• Generalmente adecuado para placas base de escritorio de la serie 400 (Asus, etc.) y plataformas móviles IceLake (Dell, Lenovo, etc.).';

  @override
  String get autoGen5665 =>
      'Cree un puente para la ruta del dispositivo PCI que falta';

  @override
  String get autoGen5666 =>
      '• Es posible que las rutas de los dispositivos PCI de algunas placas base o dispositivos no se reconozcan correctamente en macOS, lo que provoca que el dispositivo no funcione correctamente, como tarjetas gráficas, tarjetas de sonido, tarjetas de red inalámbrica, etc.\n• Este parche creará los puentes PCI correctos para estos dispositivos, asegurando que macOS pueda reconocer y utilizar correctamente estos dispositivos PCI.';

  @override
  String get autoGen5667 =>
      'Corrija la tabla APIC para resolver el problema de pánico del kernel de la CPU (aplicable a la plataforma del servidor HEDT)';

  @override
  String get autoGen5668 =>
      '• Repare o reescriba el ID del procesador en la tabla APIC para garantizar que macOS pueda identificar correctamente el número y la cantidad de núcleos de CPU y evitar errores de identificación de núcleos o pánico en el kernel.\n• La tabla APIC original debe incluirse en el firmware antes de poder cargar la tabla parcheada.\n• Aplicable a X58, X79, X99, X299 y otras plataformas de servidor Intel (HEDT).';

  @override
  String get autoGen5669 =>
      'Elimine el área de memoria reservada de DMAR, solucione problemas de inicio del sistema y problemas de compatibilidad de tarjetas de red';

  @override
  String get autoGen5670 =>
      '• DMAR (tabla de reasignación DMA) es parte de la tecnología de virtualización Intel VT-d para compatibilidad con IOMMU (Unidad de administración de memoria de entrada-salida).\n• Este parche eliminará el área de memoria reservada en la tabla DMAR que está causando el problema, evitando así que macOS interprete mal el DMAR y provoque que el sistema no arranque.\n• Brindar soporte para la compatibilidad con VT-d para que VT-d funcione correctamente en macOS Big Sur y versiones posteriores, especialmente en lo que respecta al hardware controlado por DriverKit.\n• macOS admite VT-d, pero existen problemas de compatibilidad con la tabla DMAR proporcionada por algunas placas base o BIOS, lo que puede causar que macOS cause fallos del kernel, retrasos en el inicio, inestabilidad del sistema y otros problemas al analizar la tabla ACPI DMAR (atascada en las ubicaciones de registro relacionadas con AppleACPICPU, IOPCI y AppleVTD).\n• Rango de hardware compatible: tarjeta de red I225, tarjeta de red Aquantia, algunos dispositivos WiFi, etc.\n• Es necesario incluir la tabla DMAR original en el firmware antes de poder cargar la tabla parcheada.\n• CPU aplicable: cualquier procesador que admita la tecnología VT-d.';

  @override
  String get autoGen5671 => 'Agregar soporte SMBus del bus del sistema';

  @override
  String get autoGen5672 =>
      '• macOS requiere un dispositivo SMBus (System Management Bus) para ejecutar correctamente ciertos servicios, como por ejemplo:\n  Panel táctil I2C, administración de batería, ajuste automático de brillo con detección de luz, algunos dispositivos Wi-Fi/Bluetooth\n• SSDT-SBUS-MCHC hace que macOS piense que se trata de un dispositivo nativo de Apple al agregar dispositivos SBUS (System Management Bus) y MCHC (Memory Controller) a ACPI, lo que garantiza que las funciones relacionadas funcionen correctamente.\n• Si no se pueden utilizar el panel táctil I2C del dispositivo, la información de la batería y el ajuste automático de brillo, puede intentar habilitar este parche.';

  @override
  String get autoGen5673 =>
      'Solucione el problema de la falla de aceleración de gráficos centrales (generalmente aplicable a Ivy Bridge y Sandy Bridge)';

  @override
  String get autoGen5674 =>
      '• Intel Management Engine (IMEI para abreviar) es una interfaz de hardware utilizada para conectarse al motor de administración. Sólo es necesario cuando las plataformas antiguas (Sandy/Ivy) y algunas placas base carecen de dispositivos MEI/IMEI/HECI.\n• Aplicable al procesador Intel Ivy Bridge de tercera generación y a la placa base serie 6 cuando se combinan (por ejemplo: procesador i3 3225, placa base H61), problema de aceleración de gráficos centrales\n• Aplicable al procesador Intel Sandy Bridge de segunda generación y a la placa base serie 7 cuando se combinan (por ejemplo: procesador i5 2500k, placa base B75), problema de aceleración de gráficos centrales\n• Los procesadores Intel Ivy Bridge de tercera generación combinados con placas base de la serie 7 y los procesadores Intel Sandy Bridge de segunda generación combinados con placas base de la serie 6 no requieren este SSDT.\n• Intel Haswell de cuarta generación y plataformas más nuevas generalmente pueden implementar dispositivos MEI/IMEI/HECI correctamente y no necesitan este SSDT.';

  @override
  String get autoGen5675 =>
      'Solucionar el problema de apagar y reiniciar o apagar sin fuente de alimentación';

  @override
  String get autoGen5676 =>
      '• Se solucionó el problema de que algunas placas base a veces no apagan completamente la alimentación del controlador USB cuando macOS se está apagando (S5), lo que provoca que no se apague normalmente (el apagado se convierte en reinicio o se apaga sin energía).\n• Requiere parche de cambio de nombre ACPI: _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      'Verifique el estado actual del sistema, principalmente para verificar si se admite la suspensión S3 (SSDT no personalizado)';

  @override
  String get autoGen5678 =>
      '• Verifique si la máquina actual es una máquina AOAC (SSDT no personalizado)\n• Verifique el estado del sistema en la configuración actual del BIOS, principalmente para verificar si se admite la suspensión S3 (SSDT no personalizado)\n• Nota: Sólo las máquinas que no son AOAC son compatibles con la suspensión S3. ¡Las máquinas AOAC entran en conflicto con la suspensión S3 y no admiten la suspensión S3!\n• Si el resultado de la verificación muestra que el estado del sistema de una máquina que no es AOAC (la máquina AOAC no admite la suspensión S3, no lea a continuación) no admite la suspensión S3, pueden darse las siguientes situaciones:\n  1. El firmware de la placa base admite la suspensión S3, pero la suspensión S3 no está habilitada en la configuración del BIOS. Una vez habilitado, se puede admitir la suspensión S3.\n  2. El firmware de la placa base no castra físicamente el S3, pero el DSDT no define el método _S3. Completar el método _S3 tiene la probabilidad de solucionar el problema de suspensión de S3.\n  3. El firmware de la placa base castra físicamente el S3 y no admite la suspensión del S3 en absoluto. Incluso si se completa el método _S3, el problema de suspensión de S3 no se puede reparar.';

  @override
  String get autoGen5679 =>
      'Compruebe si es una máquina AOAC (SSDT no personalizada)';

  @override
  String get autoGen5680 =>
      '• Compruebe si es una máquina AOAC (SSDT no personalizada) basada en FACP.aml\n• Nota: Sólo las máquinas que no son AOAC son compatibles con la suspensión S3. ¡Las máquinas AOAC entran en conflicto con la suspensión S3 y no admiten la suspensión S3! Las máquinas AOAC son comunes en las computadoras portátiles.\n• Una vez que la máquina AOAC entra en suspensión S3, puede parecer que no se puede despertar después de dormir y aparece en un estado de bloqueo, y solo se puede forzar su apagado. Se recomienda desactivar la suspensión S3.\n• Las máquinas AOAC recomiendan considerar las siguientes soluciones:\n  1. Desbloquee el BIOS y desactive AOAC (normalmente es difícil de hacer, pero es el más estable)\n  2. Deshabilite la suspensión de S3 (deshabilite la suspensión de S3 en BIOS o SSDT-S3-DISABLE para desactivar la suspensión de S3)\n  3. Apague la fuente de alimentación de gráficos independientes.\n  4. Utilice NVMeFix.kext para habilitar APST de SSD\n  5. Habilite ASPM (las opciones avanzadas del BIOS habilitan ASPM, el parche SSDT habilita L1)';

  @override
  String get autoGen5681 =>
      'Solucione el problema de despertarse del modo de suspensión debido al controlador USB';

  @override
  String get autoGen5682 =>
      '• Cambie el nombre de GPRW a XPRW para solucionar el problema de activación instantánea (nota: puede provocar que el teclado USB no pueda activar el dispositivo; puede activarlo mediante la tecla de encendido)\n• SSDT-GPRW se usa más comúnmente porque la mayoría de las plataformas usan el método GPRW y muy pocas plataformas proporcionan y usan el método UPRW.\n• Disponible para Skylake y plataformas más nuevas';

  @override
  String get autoGen5683 =>
      '• Cambie el nombre de GPRW a XPRW para solucionar el problema de activación instantánea (nota: puede provocar que el teclado USB no pueda activar el dispositivo; puede activarlo mediante la tecla de encendido)\n• SSDT-UPRW rara vez se utiliza porque la mayoría de las plataformas utilizan el método GPRW y muy pocas plataformas proporcionan y utilizan el método UPRW.\n• Disponible para Skylake y plataformas más nuevas';

  @override
  String get autoGen5684 =>
      'Solucionar el problema de suspensión del botón de suspensión (aplicable a portátiles)';

  @override
  String get autoGen5685 =>
      '• Cuando algunas computadoras entran en suspensión a través del botón de suspensión SLPB (PNP0C0E), ACPI transmite parámetros incorrectos, lo que hace que macOS piense erróneamente que se está apagando. Esto puede provocar: reinicio directo, bloqueo después del modo de suspensión o suspensión exitosa pero con un estado del sistema dañado.\n• Finge que \"la tapa está cerrada\" al presionar el botón de reposo, lo que obliga al peligroso sueño PNP0C0E a convertirse en un sueño PNP0C0D seguro y estable.\n• Normalmente adecuado para portátiles';

  @override
  String get autoGen5686 =>
      'Se solucionó el problema por el cual era necesario presionar cualquier tecla para encender la pantalla después de despertarse.';

  @override
  String get autoGen5687 =>
      '• Se solucionó el problema por el cual algunas máquinas necesitaban presionar cualquier tecla para encender la pantalla después de despertarse.';

  @override
  String get autoGen5688 =>
      'Solucione el problema de la luz de respiración anormal del botón de encendido después de despertarse (aplicable a las computadoras portátiles Lenovo)';

  @override
  String get autoGen5689 =>
      '• Se solucionó un problema por el cual la luz de respiración en el lado A y la luz de respiración en el botón de encendido no volvían a la normalidad después de activarse en algunas computadoras portátiles Lenovo.\n• Se solucionó el problema por el cual el estado de la luz indicadora del micrófono F4 era anormal después de activarse en algunas computadoras portátiles Lenovo.\n• Aplicable principalmente a las computadoras portátiles de la serie Lenovo, otras marcas de computadoras portátiles generalmente no son aplicables';

  @override
  String get autoGen5690 =>
      'Deshabilite el estado de suspensión del sistema S3 (solucione problemas de falla, reinicio o apagado del modo de activación del modo de suspensión del S3)';

  @override
  String get autoGen5691 =>
      '• Desactive el estado de suspensión de S3 únicamente en el sistema macOS para evitar que el sistema falle, se reinicie o se apague cuando el sistema macOS se active.\n• Cuando está deshabilitado, solo macOS ya no admite la suspensión S3 (al hacer clic en el botón de suspensión o el monitor ingresa al modo de ahorro de energía, la pantalla se apaga, pero el host seguirá funcionando y el ventilador no dejará de funcionar)\n• Después de deshabilitar el estado de suspensión de S3 en macOS, ya no necesita modificar ninguna configuración del sistema de macOS y no necesita desactivar el modo de ahorro de energía (antes de esto, es posible que necesite modificar la configuración del sistema -> apagar la pantalla cuando esté inactiva -> nunca)\n• Escenarios aplicables: cuando el problema de suspensión no se soluciona, el modo de ahorro de energía se activa en la configuración del sistema macOS (\"Apagar la pantalla cuando esté inactiva -> 10 minutos\"). Después de que el sistema entra en estado de suspensión, cuando se activa el sistema macOS, el sistema puede fallar, reiniciarse o apagarse. En este momento, puede desactivar el estado de suspensión de S3 para solucionar el problema.\n• Requiere parche de cambio de nombre ACPI: _S3 -> XS3';

  @override
  String get autoGen5692 =>
      'El reinicio en caliente se cambia a reinicio en frío para solucionar el problema de que parte del hardware no esté disponible.';

  @override
  String get autoGen5693 =>
      '• El reinicio en caliente se cambia a reinicio en frío, lo que soluciona el problema de que parte del hardware deja de estar disponible después de reiniciar desde Windows a macOS en algunas plataformas. (Por ejemplo: tarjeta de sonido, WiFi, Bluetooth)\n• Nota: ¡No se genera ningún SSDT-FACP.aml! ¡Solo se genera ACPI-Patch!';

  @override
  String get autoGen5694 => 'Mapeo de ID de dispositivo gráfico';

  @override
  String get autoGen5695 =>
      '• Se utiliza para escenarios de mapeo de ID de dispositivos de tarjetas gráficas AMD, inyectando ID de dispositivos compatibles a través de ACPI para permitir que el sistema cargue el controlador de gráficos correspondiente.\n• Recomendado solo para modelos marcados explícitamente en los datos de compatibilidad de RapidEFI que requieren asignación de ID de dispositivo.';

  @override
  String get autoGen5696 => 'Blindaje de dispositivo ACPI';

  @override
  String get autoGen5697 =>
      '• Se utiliza para manejar dispositivos PCI en la capa ACPI que no son adecuados para transferirlos al controlador macOS, como tarjetas gráficas incompatibles, controladores NVMe u otros dispositivos de expansión.\n• Las computadoras portátiles prueban primero la desactivación del nivel de energía; Si el firmware no admite el método de suministro de energía, se degrada a la capa del controlador para evitarlo.\n• Las computadoras de escritorio, NUC y HEDT utilizan métodos de elusión universales de forma predeterminada para evitar depender de métodos de potencia de gráficos independientes que generalmente no existen en el firmware de la máquina.\n• Todos los escenarios requieren una ruta ACPI válida; Si el hardware informa que falta una ruta ACPI, el dispositivo se omite automáticamente.';

  @override
  String get autoGen5698 =>
      'Equipo de tarjeta de red con cable falsificado (aplicable a portátiles sin tarjetas de red con cable)';

  @override
  String get autoGen5699 =>
      '• Proporciona una tarjeta de red virtual falsa NullEthernet para sistemas Hackintosh para resolver la dependencia de iMessage, Facetime, iCloud y otros servicios de Apple en los equipos de red integrados.';

  @override
  String get autoGen5700 =>
      'Solucionar el problema del panel táctil I2C de la computadora portátil (aplicable a computadoras portátiles)';

  @override
  String get autoGen5701 =>
      '• Reparando el montaje del nodo de hardware ACPI, asegurándose de que el dispositivo esté habilitado en el sistema macOS y solucionando el problema de que algunos paneles táctiles I2C no se pueden reconocer normalmente.\n• SSDT-GPI0 resuelve el problema de los dispositivos de hardware de montaje de controladores. SSDT-XOSI se utiliza principalmente para solucionar el problema de incompatibilidad entre la lógica de inicialización BIOS/ACPI y el reconocimiento del sistema operativo (a veces puede solucionar el problema del panel táctil)';

  @override
  String get autoGen5702 =>
      'Cambio de nombre de CPU para conjuntos de chips B850, B650, B550, A520 (solo para plataformas Ryzen)';

  @override
  String get autoGen5703 =>
      '• Aplicable al cambio de nombre de CPU de los conjuntos de chips B850, B650, B550 y A520 para solucionar el problema de bloqueo causado por la plataforma AMD que no puede reconocer la CPU (recomendado solo cuando se usan parches SSDT prefabricados)\n• Al personalizar el parche SSDT, se recomienda utilizar el SSDT-PLUG personalizado. (La plataforma AMD Ryzen cambia automáticamente su nombre a SSDT-PLUG-ALT al personalizar el SSDT)';

  @override
  String get autoGen5704 =>
      'Reparar la administración de energía (aplicable a Intel de 12.ª generación y superiores, algunos AMD Ryzen y otras plataformas)';

  @override
  String get autoGen5705 =>
      '• macOS depende del complemento de administración de energía de la CPU (PluginType) para ajustar la frecuencia de la CPU y mejorar la eficiencia energética y la duración de la batería.\n• Este parche modificará la definición de CPU para que macOS piense que es un procesador tipo complemento = 1 requerido por los dispositivos Apple, cargando así correctamente la gestión de frecuencia de la CPU y mejorando el rendimiento y el control del consumo de energía.\n• Aplicable a Intel Alder Lake de 12.ª generación y superiores, y algunas plataformas AMD Ryzen';

  @override
  String get autoGen5706 =>
      'Desactive AWAC (temporizador moderno) (disponible para Intel Coffee Lake de octava generación y superior)';

  @override
  String get autoGen5707 =>
      '• Desactive AWAC (temporizador moderno) mientras habilita o falsifica el RTC heredado\n• Compatible con Intel Coffee Lake de 8.ª generación y superiores';

  @override
  String get autoGen5708 =>
      'Requerido por todas las placas base nativas X99 (C612) y la mayoría de las placas base nativas X79 (C602)';

  @override
  String get autoGen5709 =>
      '• Este SSDT es aplicable a todas las placas base X99 y a la mayoría de las placas base X79. Su función principal es deshabilitar los dispositivos no utilizados en ACPI para evitar que IOPCIFamily cause pánico en el kernel.\n• Placas base aplicables: todas las placas base nativas X99 (C612) y la mayoría de las placas base nativas X79 (C602).';

  @override
  String get autoGen5710 =>
      'Habilite o falsifique el temporizador RTC heredado y corrija el rango de RTC (se aplica a todas las placas base nativas X99 (C612) y X299)';

  @override
  String get autoGen5711 =>
      '• Habilite o falsifique temporizadores RTC heredados y corrija el rango de RTC.\n• Resolver tiempos de arranque incorrectos, errores relacionados con RTC, problemas de activación del modo de suspensión, etc.\n• Este SSDT es aplicable a todas las placas base X99 (C612), así como a las placas base X299.';

  @override
  String get autoGen5712 => 'Agregar soporte DTGP';

  @override
  String get autoGen5713 =>
      '• Inyecte atributos de dispositivos de hardware para solucionar algunos problemas de ACPI con tarjetas gráficas, tarjetas de sonido, tarjetas Thunderbolt, etc. (Cuando no hay soporte para el método DTGP, estas inyecciones de atributos pueden fallar o no funcionar).';

  @override
  String get autoGen5714 => 'Falsificación de un controlador DMA estándar';

  @override
  String get autoGen5715 =>
      '• Un controlador de dispositivo virtual (PNP0200) que imita un controlador DMA (controlador de acceso directo a memoria) estándar, completa la tabla de recursos ACPI y permite a macOS identificar correctamente los dispositivos de bus LPC y las funciones DMA.\n• Normalmente no es necesario para plataformas HEDT/servidor\n• Agregue las piezas que faltan. Esta es simplemente una solución perfecta, ¡no es necesaria!';

  @override
  String get autoGen5716 => 'Falsificación de un controlador PWRB estándar';

  @override
  String get autoGen5717 =>
      '• Falsificar un dispositivo de botón de encendido estándar (PNP0C0C) para permitir que macOS reconozca el botón de encendido del sistema normalmente y admita el modo de suspensión y activación.\n• No hay PNP0C0C en algunos árboles ACPI de BIOS/placa base, y macOS no puede manejar el botón de encendido correctamente, lo que puede provocar la imposibilidad de dormir, de reactivar y la falta de disponibilidad del botón de encendido de la barra de menú.\n• Agregue las piezas que faltan. Esta es simplemente una solución perfecta, ¡no es necesaria!';

  @override
  String get autoGen5718 => 'Falsificación de un controlador SLPB estándar';

  @override
  String get autoGen5719 =>
      '• Falsificar un dispositivo de botón de suspensión estándar (PNP0C0E) para permitir que macOS identifique correctamente el botón de suspensión del sistema e implemente funciones de suspensión y activación.\n• No hay PNP0C0E en algunos árboles ACPI de BIOS/placa base, y macOS no puede manejar el botón de suspensión correctamente, lo que puede resultar en la imposibilidad de suspender, de reactivar y la falta de disponibilidad del botón de suspensión en la barra de menú.\n• ¡Esta pieza es necesaria para el método de corrección del sueño PNP0C0E!\n• Agregue las piezas que faltan. Esta es simplemente una solución perfecta, ¡no es necesaria!';

  @override
  String get autoGen5720 => 'Se requiere dispositivo MEM2 para imitar una IGPU';

  @override
  String get autoGen5721 =>
      '• Agregue el dispositivo MEM2 ACPI requerido por IGPU y solucione problemas relacionados con IGPU\n• Complementar el mapeo de memoria de la pantalla principal para evitar fallas en la inicialización del controlador\n• Alcance aplicable: Haswell ~ Kaby Lake, sistema de gráficos central únicamente. ¡Por lo general, solo los gráficos discretos no necesitan este SSDT!';

  @override
  String get autoGen5722 => 'Ruta no válida';

  @override
  String get autoGen5723 => 'No se encontró ningún archivo .aml o .dat válido';

  @override
  String get autoGen5724 => 'Descompilando archivos SSDT.aml en lotes...';

  @override
  String get autoGen5725 =>
      'Descompilando archivos DSDT.aml y SSDT.aml en lotes...';

  @override
  String get autoGen5726 =>
      'Descompilando archivos .aml fallidos individualmente...';

  @override
  String get autoGen5727 => 'Descompilando otros archivos .aml...';

  @override
  String get autoGen5728 =>
      'Nota: Intente no incluir caracteres chinos o especiales en la ruta o el nombre del archivo; de lo contrario, puede causar problemas inesperados.';

  @override
  String get autoGen5729 => 'La herramienta de exportación ACPI no está lista';

  @override
  String get autoGen5730 => 'Exportando tablas ACPI...';

  @override
  String get autoGen5731 =>
      'La plataforma actual no admite la exportación de tablas ACPI';

  @override
  String get autoGen5732 => 'Esperando autorización de contraseña de sudo...';

  @override
  String get autoGen5733 =>
      'La autorización del administrador ha sido cancelada.';

  @override
  String get autoGen5734 => 'Contraseña de administrador no ingresada';

  @override
  String get autoGen5735 => 'La contraseña del administrador es incorrecta';

  @override
  String get autoGen5736 =>
      'Error en el proceso de exportación de la tabla ACPI';

  @override
  String get autoGen5737 =>
      'La tabla ACPI extraída por la plataforma actual está vacía o no admite la exportación de la tabla ACPI.';

  @override
  String get autoGen5738 => '=> DSDT no encontrado, exportando por firma...';

  @override
  String get autoGen5739 => 'Error al exportar la tabla DSDT';

  @override
  String get autoGen5740 => 'Actualizando el nombre de la tabla...';

  @override
  String get autoGen5741 => '¡Exporta la tabla ACPI con éxito!';

  @override
  String get autoGen5742 => '¡No se proporcionó ninguna tabla ACPI válida!';

  @override
  String get autoGen5743 =>
      '¡No se encontraron los datos hexadecimales a localizar!';

  @override
  String get autoGen5744 => '¡No se encontró el ID de relleno único!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: parámetro de tabla no válido';

  @override
  String get autoGen5746 => 'más flojo';

  @override
  String get autoGen5747 => 'longitud solamente';

  @override
  String get autoGen5748 =>
      'ID y longitud de la tabla, deshabilitar encabezados normalizados';

  @override
  String get autoGen5749 =>
      'ID y longitud de la tabla, habilitar encabezados normalizados';

  @override
  String get autoGen5750 =>
      'Intel Arrandale de primera generación, Sandy Bridge de segunda generación, Ivy Bridge de tercera generación';

  @override
  String get autoGen5751 =>
      'Intel Haswell de cuarta generación, Broadwell de quinta generación';

  @override
  String get autoGen5752 =>
      'Intel Skylake de sexta generación, Kaby Lake de séptima generación, algunos Haswell de cuarta generación';

  @override
  String get autoGen5753 =>
      'Brillo personalizado, generalmente utilizado para algunos equipos no estándar o configuraciones de necesidades especiales';

  @override
  String get autoGen5754 =>
      'Intel CoffeeLake de octava generación ~ décima generación y portátiles AMD';

  @override
  String get autoGen5755 =>
      'Es posible que otros (requiere propiedades personalizadas del dispositivo applbkl-name/applbkl-data) no sean compatibles';

  @override
  String get autoGen5756 =>
      'Actualmente, las herramientas ACPI solo son compatibles con plataformas Windows/macOS/Linux.';

  @override
  String get autoGen5757 =>
      'Nota: La versión anterior de iasl-legacy solo es compatible con macOS 10.6 y versiones anteriores. Puede haber problemas de compatibilidad con los sistemas convencionales actuales, así que úselo con precaución.';

  @override
  String get autoGen5758 =>
      'Utilice [compilador de versión antigua iasl-legacy]';

  @override
  String get autoGen5759 => '¡La compilación falló!';

  @override
  String get autoGen5760 =>
      'Se recomienda cambiar a una nueva versión de iasl o habilitar la compilación forzada e intentarlo nuevamente.';

  @override
  String get autoGen5761 => 'existir';

  @override
  String get autoGen5762 => 'no existe';

  @override
  String get autoGen5763 =>
      'Nota: Intel Arrandale de primera generación, Sandy Bridge de segunda generación y Ivy Bridge de tercera generación usan UID: 14 ​​de forma predeterminada, pero algunas máquinas que usan UID: 14 ​​encontrarán un brillo máximo limitado u otros problemas. Para resolver estos problemas, se debe configurar la ruta correcta del dispositivo de la iGPU (tarjeta gráfica integrada) y es posible que sea necesario complementar la información del registro de la IGPU.';

  @override
  String get autoGen5764 =>
      'Ingrese la ruta ACPI de la iGPU que desea utilizar. El límite de caracteres para cada elemento de ruta es de 4 caracteres alfanuméricos (comenzando con una letra o un guión bajo), separados por espacios. Por ejemplo: SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      'Nota: Se ha generado el parche NBCF (depende del controlador BrightnessKeys.kext), habilitado de forma predeterminada. Si tiene problemas durante el uso, desactive este parche.';

  @override
  String get autoGen5766 => 'El siguiente puente no se puede resolver:';

  @override
  String get autoGen5767 =>
      '=> ¡El firmware actual admite estados comunes del sistema! Si no es una máquina AOAC, después de solucionar el problema de suspensión, macOS puede admitir la suspensión S3; de lo contrario, no es compatible con la suspensión S3.';

  @override
  String get autoGen5768 => 'parche';

  @override
  String get autoGen5769 => 'Se agotó el tiempo de conexión al servidor';

  @override
  String get autoGen5770 => 'Descarga cancelada';

  @override
  String get autoGen5771 => 'Tiempo de espera de respuesta de lectura';

  @override
  String get autoGen5772 => 'Kext copiado exitosamente';

  @override
  String get autoGen5773 =>
      'La plataforma web descarga directamente de forma predeterminada y actualmente no admite la selección de la ruta predeterminada.';

  @override
  String get autoGen5774 =>
      'El nodo raíz del archivo de configuración no es un objeto JSON';

  @override
  String get autoGen5775 => 'Sigue el sistema';

  @override
  String get autoGen5776 => 'cierre';

  @override
  String get autoGen5777 => 'Microsoft Yahei';

  @override
  String get autoGen5778 => 'Actualizar cuerpo negro';

  @override
  String get autoGen5779 => 'Siyuan Songti';

  @override
  String get autoGen5780 =>
      'Esperando para actualizar la información del hardware';

  @override
  String get autoGen5781 => 'Cargando información de hardware';

  @override
  String get autoGen5782 => 'Actualización de información de hardware';

  @override
  String get autoGen5783 => 'Carga de información de hardware completada';

  @override
  String get autoGen5784 => 'Error al cargar la información del hardware';

  @override
  String get autoGen5785 => 'La información de hardware aún no es compatible';

  @override
  String get autoGen5786 => 'Importación de información de hardware completada';

  @override
  String get autoGen5787 => 'fallar';

  @override
  String get autoGen5788 => 'No compatible';

  @override
  String get autoGen5789 => 'Finalizar';

  @override
  String get autoGen5790 => 'cache';

  @override
  String get autoGen5791 =>
      'La plataforma actual no admite la consulta de información de hardware.';

  @override
  String get autoGen5792 =>
      'El informe actual es un informe de hardware externo importado. Actualice la información del hardware local antes de exportar.';

  @override
  String get autoGen5793 =>
      'Actualmente no hay información de hardware local exportable.';

  @override
  String get autoGen5794 =>
      'Error al limpiar la carpeta de informes de hardware';

  @override
  String get autoGen5795 => 'Error al crear la carpeta de informes de hardware';

  @override
  String get autoGen5796 =>
      'La exportación de la tabla ACPI falló o no es compatible';

  @override
  String get autoGen5797 =>
      'La autorización del administrador ha sido cancelada y la tabla ACPI no ha sido exportada';

  @override
  String get autoGen5798 =>
      'No se puede exportar la tabla ACPI sin ingresar la contraseña de administrador';

  @override
  String get autoGen5799 =>
      'La contraseña del administrador es incorrecta y la tabla ACPI no se puede exportar.';

  @override
  String get autoGen5800 =>
      'Error al exportar la tabla ACPI: no se encontró ninguna tabla ACPI válida';

  @override
  String get autoGen5801 =>
      'Error al exportar la tabla ACPI: error en el proceso de exportación.';

  @override
  String get autoGen5802 =>
      'El archivo de información de hardware no es un objeto JSON';

  @override
  String get autoGen5803 => 'La información del hardware ha sido importada.';

  @override
  String get autoGen5804 =>
      'El catálogo de tablas ACPI no es válido, SSDT personalizado no está disponible';

  @override
  String get autoGen5805 => 'Comience a configurar EFI...';

  @override
  String get autoGen5806 =>
      'Generando ConfigModel basado en información de hardware...';

  @override
  String get autoGen5807 =>
      'Utilice SSDT sin formato EFI, omita la personalización de SSDT.';

  @override
  String get autoGen5808 =>
      'Se importó el informe de hardware externo, pero no se proporcionó ningún catálogo de tablas ACPI, SSDT personalizado deshabilitado.';

  @override
  String get autoGen5809 => 'Exportando OpenCore EFI...';

  @override
  String get autoGen5810 =>
      'EFI escrito, comience a extraer ACPI y personalizar SSDT...';

  @override
  String get autoGen5811 => 'Finaliza el proceso de personalización de SSDT.';

  @override
  String get autoGen5812 => 'El proceso de personalización de SSDT falló.';

  @override
  String get autoGen5813 => 'Configuración de EFI completada.';

  @override
  String get autoGen5814 =>
      'Error en la configuración de EFI, verifique la ruta de salida o los registros.';

  @override
  String get autoGen5815 =>
      'El hardware genera automáticamente reglas de ConfigModel y se está reconstruyendo.';

  @override
  String get autoGen5816 =>
      'La longitud de las puntas debe ser la misma que la de las opciones.';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'activos/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'activos/ssdt/parche de tarjeta de sonido.md';

  @override
  String get autoGen5820 => 'activos/ssdt/tarjeta gráfica falsificada.md';

  @override
  String get autoGen5821 => 'activos/ssdt/dispositivo de blindaje.md';

  @override
  String get autoGen5822 => 'activos/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'Instrucciones del controlador Bluetooth:\n  1. Cuando se marca Intel WiFi, el controlador Intel Bluetooth se agregará automáticamente según la versión de macOS, ¡no es necesario verificarlo manualmente! ! !\n  2. Cuando se marca Broadcom WiFi, el controlador Broadcom Bluetooth se agregará automáticamente según la versión de macOS, ¡no es necesario verificarlo manualmente! ! !\n  3. Cuando se marca Atheros WiFi, el controlador Atheros Bluetooth se agregará automáticamente, ¡no es necesario verificarlo manualmente! ! !\n  4. Si no se marca el modelo de WiFi o no se explica el modelo de Bluetooth, ¡debe verificarlo manualmente! ! !\n  5. Dado que Bluetooth utiliza el canal USB, si aún no funciona correctamente después de agregar controladores y parches, asegúrese de que el USB esté bien personalizado. ! !';

  @override
  String get autoGen5824 =>
      'Rutas HPET comunes:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  ¡Esta opción se utiliza para solucionar algunos problemas de IRQ de la tarjeta de sonido! Nota: Si su tarjeta de sonido no tiene problemas de IRQ, ¡no utilice esta función!';

  @override
  String get autoGen5825 =>
      'Versiones de macOS compatibles:\n    • La versión V18 del adaptador USB inalámbrico Big Sur es compatible con macOS Catalina 10.15.x ~ macOS Tahoe 26.x (requiere parche USB OCLP)\n    • La versión V15 del adaptador USB inalámbrico Big Sur es compatible con OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  El WiFi USB compatible es el siguiente:\n    • El chip principal es el adaptador Wi-Fi USB Realtek 802.11n y 802.11ac. Para modelos más específicos, consulte las instrucciones del autor.';

  @override
  String get autoGen5826 =>
      'Falsificación de gráficos discretos AMD (propiedades del dispositivo):\n   1. Debe completar la ruta PCI de la tarjeta gráfica, por ejemplo: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. Debes completar el ID del dispositivo falsificado de la tarjeta gráfica (4 dígitos en hexadecimal), por ejemplo: 73BF\n   3. Después de falsificar la tarjeta gráfica, aún debe considerar los parámetros de inicio requeridos por la tarjeta gráfica AMD (puede ir a Configuración de gráficos independientes -> Gráficos independientes AMD -> Verificar según sea necesario)\n   4. La herramienta ha preparado previamente algunas ID de dispositivos de tarjetas gráficas. De lo contrario, encuéntrelo usted mismo o comuníquese con el autor para obtener información adicional.';

  @override
  String get autoGen5827 => 'Confirmar';

  @override
  String get autoGen5828 => 'Cancelar';

  @override
  String get autoGen5829 => 'Seguro';
}
