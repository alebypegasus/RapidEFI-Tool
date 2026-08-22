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
  String get appTitle => 'RapidEFI - Herramienta EFI OpenCore';

  @override
  String get navHardware => 'Hardware';

  @override
  String get navManual => 'Config Manual EFI';

  @override
  String get navProcess => 'Procesar EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Historial';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get navAbout => 'Acerca de';

  @override
  String get navSponsor => 'Patrocinar Desarrollador';

  @override
  String get btnRefresh => 'Actualizar';

  @override
  String get btnImportReport => 'Importar Informe';

  @override
  String get btnExportReport => 'Exportar Informe';

  @override
  String get btnExportAcpi => 'Exportar ACPI';

  @override
  String get btnEfiSettings => 'Ajustes EFI';

  @override
  String get btnExportEfi => 'Exportar EFI';

  @override
  String get btnGenerateEfi => 'Generar EFI';

  @override
  String get btnBrowse => 'Examinar';

  @override
  String get btnChooseFile => 'Elegir Archivo';

  @override
  String get btnCancel => 'Cancelar';

  @override
  String get btnApply => 'Aplicar';

  @override
  String get btnSave => 'Guardar';

  @override
  String get btnClose => 'Cerrar';

  @override
  String get btnCheckUpdates => 'Buscar Actualizaciones';

  @override
  String get btnChecking => 'Buscando...';

  @override
  String get btnSelectAll => 'Seleccionar Todo';

  @override
  String get btnDeselectAll => 'Deseleccionar Todo';

  @override
  String get btnCustomSsdt => 'SSDT Personalizado';

  @override
  String get btnPrebuiltSsdt => 'SSDT Precompilado';

  @override
  String get btnDumpAcpi => 'Extraer ACPI';

  @override
  String get btnSelectAcpis => 'Seleccionar ACPIs';

  @override
  String get btnSelectConfig => 'Seleccionar config';

  @override
  String get btnMergeConfig => 'Combinar config';

  @override
  String get btnExecutePatch => 'Ejecutar Parche';

  @override
  String get btnOpenFolder => 'Abrir Carpeta';

  @override
  String get hardwareReport => 'Informe de Hardware';

  @override
  String get cpuArchitecture => 'Procesador (CPU)';

  @override
  String get motherboardChipset => 'Placa Base & Chipset';

  @override
  String get graphicsDevice => 'Gráficos (GPU)';

  @override
  String get audioCodec => 'Controlador de Audio';

  @override
  String get networkController => 'Red & Wi-Fi';

  @override
  String get storageDevice => 'Dispositivos de Almacenamiento';

  @override
  String get acpiTables => 'Tablas ACPI';

  @override
  String get compatibilityStatus => 'Compatibilidad';

  @override
  String get compatible => 'Compatible';

  @override
  String get unsupported => 'No Compatible';

  @override
  String get requiresPatch => 'Requiere Parche';

  @override
  String get details => 'Detalles';

  @override
  String get showDetailedReport => 'Vista Detallada';

  @override
  String get platformConfig => 'Configuración de Plataforma';

  @override
  String get cpuVendor => 'Fabricante de CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Factor de Forma';

  @override
  String get desktop => 'Sobremesa';

  @override
  String get laptop => 'Portátil';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Servidor';

  @override
  String get processorGen => 'Generación del Procesador';

  @override
  String get targetMacOs => 'Versión macOS Objetivo';

  @override
  String get smbiosModel => 'Modelo SMBIOS Objetivo';

  @override
  String get motherboardSelector => 'Selección de Placa Base';

  @override
  String get brand => 'Marca';

  @override
  String get model => 'Modelo';

  @override
  String get outputDirectory => 'Directorio de Salida';

  @override
  String get kextConfiguration => 'Configuración de Kexts';

  @override
  String get bootArguments => 'Argumentos de Arranque (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Activado (00000000)';

  @override
  String get sipDisabled => 'SIP Desactivado (03080000)';

  @override
  String get processEfiTitle => 'Procesar & Reconstruir EFI';

  @override
  String get chooseEfiPrompt =>
      'Seleccione una carpeta EFI o archivo configModel para cargar la configuración';

  @override
  String get configModelFound =>
      'ConfigModel detectado y cargado correctamente';

  @override
  String get rebuildEfi => 'Reconstruir EFI';

  @override
  String get ssdtGeneratorTitle => 'Generador de SSDT & Parcheador ACPI';

  @override
  String get corePatches => 'Parches Principales';

  @override
  String get recommendedPatches => 'Parches Recomendados';

  @override
  String get optionalPatches => 'Parches Opcionales';

  @override
  String get compilationComplete => 'Compilación Completada';

  @override
  String get mergeSuccess => 'Integrado en la EFI con éxito';

  @override
  String get oclpTitle => 'Integración OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Parcheo Root';

  @override
  String get graphicsAcceleration => 'Aceleración Gráfica';

  @override
  String get wirelessFix => 'Corrección de Wi-Fi y Bluetooth';

  @override
  String get postInstall => 'Pasos Post-Instalación';

  @override
  String get tahoeGuideTitle => 'Guía de Compatibilidad macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Adaptación de Kernel y Audio Tahoe 26';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get appLanguage => 'Idioma :';

  @override
  String get followSystem => 'Seguir el Sistema';

  @override
  String get themeMode => 'Modo del Tema :';

  @override
  String get themeColor => 'Color del Tema :';

  @override
  String get appFont => 'Fuente de la App :';

  @override
  String get efiOptions => 'Opciones EFI :';

  @override
  String get addThemeToEfi => 'Añadir tema de arranque OpenCore a la EFI';

  @override
  String get generateConfigModel =>
      'Generar archivo configModel en la carpeta EFI';

  @override
  String get compressZipEfi => 'Comprimir EFI en archivo ZIP';

  @override
  String get checkForUpdates => 'Buscar Actualizaciones :';

  @override
  String currentVersion(String version) {
    return 'Versión actual: $version';
  }

  @override
  String get copyrightNotice => 'Derechos de Autor & Licencia';

  @override
  String get exitAppTip => 'Presione atrás de nuevo para salir';

  @override
  String get updateAvailable => 'Nueva versión disponible';

  @override
  String versionTag(String version) {
    return 'Versión: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Fecha de Lanzamiento: $date';
  }

  @override
  String get noUpdateFound => 'Tiene la versión más reciente';

  @override
  String get efiBuildSuccess => '¡EFI generada con éxito!';

  @override
  String get efiBuildFailed => 'Error al generar la EFI';

  @override
  String get copiedToClipboard => 'Copiado al portapapeles';

  @override
  String get soundLayoutId => 'ID de Diseño de Audio (alcid)';

  @override
  String get nvramBootArgs => 'boot-args personalizados';

  @override
  String get generateSerial => 'Generar Número de Serie';
}
