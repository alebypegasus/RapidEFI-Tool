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

  @override
  String get navManualTab => 'Configuración Manual de EFI';

  @override
  String get navAutoTab => 'Configuración Automática de EFI';

  @override
  String get cpuSelection => 'Selección de Procesador (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Los procesadores Pentium o Celeron requieren CPU spoofing; ¡actívelo!\nNota: ¡las iGPU de Pentium/Celeron generalmente no son compatibles!';

  @override
  String get platformSelection => 'Selección de Plataforma:';

  @override
  String get processorGeneration => 'Generación del Procesador:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6C/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 núcleos / 12 hilos) requiere CPU spoofing específico';

  @override
  String get amdCoresTitle => 'Núcleos de CPU AMD:';

  @override
  String get amdSpecialMb => 'Placas Base Especiales AMD:';

  @override
  String get usePrecastMmio => 'Usar MMIO Precast';

  @override
  String get useRyzenGpu => 'Habilitar Soporte iGPU Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Marca de la Placa Base:';

  @override
  String get motherboardModel => 'Modelo de la Placa Base:';

  @override
  String get customMotherboard => 'Placa Base Genérica / Personalizada';

  @override
  String get igpuConfig => 'Configuración de iGPU:';

  @override
  String get dgpuConfig => 'Configuración de dGPU:';

  @override
  String get audioConfig => 'Configuración de Audio:';

  @override
  String get audioCodecFix => 'Códec de Audio y Layout ID';

  @override
  String get fixIrq => 'Corregir Conflictos de IRQ';

  @override
  String get networkConfig => 'Configuración de Red y Wi-Fi:';

  @override
  String get laptopDrivers => 'Controladores para Portátil:';

  @override
  String get touchpadDriver => 'Controlador de Touchpad (I2C / PS2)';

  @override
  String get smbiosSelection => 'Modelo SMBIOS Objetivo:';

  @override
  String get targetMacOsVersion => 'Versión macOS Objetivo:';

  @override
  String get bootArgsTitle => 'Argumentos de Arranque (boot-args):';

  @override
  String get csrActiveConfigTitle =>
      'Protección de Integridad del Sistema (SIP):';

  @override
  String get outputEfiTitle => 'Carpeta de Salida de EFI:';

  @override
  String get selectOutputFolder => 'Seleccionar Carpeta de Salida';

  @override
  String get clearConfig => 'Limpiar Configuración';

  @override
  String get importConfigModel => 'Importar configModel';

  @override
  String get importingConfigModel => 'Importando configModel...';

  @override
  String get dragDropConfigModel =>
      'Arrastre y suelte el archivo configModel aquí\no haga clic para buscar';

  @override
  String get clearAllHistory => 'Borrar Todo el Historial';

  @override
  String get clearingHistory => 'Borrando historial...';

  @override
  String get noHistoryRecords => 'Sin registros en el historial';

  @override
  String get overview => 'Descripción General';

  @override
  String get platformPatches => 'Parches de Plataforma';

  @override
  String get audioPatches => 'Parches de Audio';

  @override
  String get gpuSpoofing => 'Spoofing de GPU';

  @override
  String get disableDevices => 'Desactivar Dispositivos';

  @override
  String get brightnessPatches => 'Parches de Brillo';

  @override
  String get graphicsPatches => 'Parches de Gráficos';

  @override
  String get wifiPatches => 'Parches de Wi-Fi';

  @override
  String get documentationGuides => 'Documentación y Guías';

  @override
  String get aboutSupport => 'Acerca de y Soporte';

  @override
  String get hardwareTabTitle => 'Configuración de Hardware';

  @override
  String get acpiFolderTitle => 'Carpeta ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Cargando datos...';

  @override
  String get configuringEfiWait => 'Configurando EFI, por favor espere...';

  @override
  String get summary => 'Resumen';

  @override
  String get recent => 'Reciente';

  @override
  String get efiConfig => 'Config EFI';

  @override
  String get toolsAndGuides => 'Herramientas y Guías';

  @override
  String get checkUpdates => 'Buscar Actualizaciones';

  @override
  String get sponsorDeveloper => 'Apoyar al Desarrollador';

  @override
  String get releaseNotes => 'Notas de Lanzamiento';

  @override
  String get searchPlaceholder => 'Buscar';

  @override
  String get initialSupportMacOs =>
      'Versión inicial de macOS compatible de forma nativa:';

  @override
  String get lastSupportMacOs =>
      'Última versión de macOS compatible de forma nativa:';

  @override
  String get oclpSupportMacOs =>
      'Versiones de macOS compatibles mediante parche OCLP:';

  @override
  String get cpuInfoTitle => '[Información de la CPU]:';

  @override
  String get biosRecommendedEnabled =>
      '[Configuración recomendada de BIOS - Habilitada]:';

  @override
  String get biosRecommendedDisabled =>
      '[Configuración recomendada de BIOS - Deshabilitada]:';

  @override
  String get historyExpanderDesc =>
      'Los EFI generados con RapidEFI se respaldan automáticamente en el historial.\nPuede recargar y ajustar cualquier EFI generado previamente en cualquier momento.\n\nEsta función es compatible con RapidEFI V3.0.0 y superior.';

  @override
  String get gpuPresets => 'Ajustes preestablecidos';

  @override
  String get gpuByCpuModel => 'Por modelo de CPU';

  @override
  String get selectCpuGeneration => 'Seleccionar generación';

  @override
  String get selectCpuModel => 'Seleccionar CPU';

  @override
  String get cpuGenerationLabel => 'Generación de CPU';

  @override
  String get cpuModelLabel => 'Modelo de CPU';

  @override
  String get matchingIgpuTip =>
      'Marque si coincide, de lo contrario déjelo sin marcar';

  @override
  String get selectPropertiesToApply => 'Seleccionar propiedades para aplicar';

  @override
  String get motherboardConfigTitle =>
      'Configuración del modelo de placa base:';

  @override
  String get motherboardConfigItems =>
      'Seleccione los elementos de configuración para aplicar';

  @override
  String get selectModelToConfigure => '(Seleccione modelo para configurar)';

  @override
  String get pleaseSelect => 'Por favor seleccione';

  @override
  String get selectAllDeselectAll => 'Seleccionar / Deseleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get stuckOnEbFix =>
      'Solución para bloqueo en [EB] (Opcional - se recomiendan valores predeterminados):';

  @override
  String get renameCurrentEfi => 'Renombrar EFI actual';

  @override
  String get enterNewName => 'Ingrese nuevo nombre';

  @override
  String get renameEfiTooltip => 'Renombrar EFI';

  @override
  String get adminPrivilegesRequired =>
      'Se requieren privilegios de administrador';

  @override
  String get enterLoginPassword =>
      'Por favor ingrese su contraseña de inicio de sesión';

  @override
  String get importHardwareMaterials => 'Importar materiales de hardware';

  @override
  String get currentBiosSettings => 'Configuración actual de BIOS';

  @override
  String get colorTheme => 'Tema de color';

  @override
  String get noValidHardwareReport =>
      'No se detectó ningún archivo de informe de hardware válido';

  @override
  String get viewOnGitHub => 'Ver en GitHub';

  @override
  String get downloadNow => 'Descargar ahora';

  @override
  String get btnConfirm => 'Confirmar';

  @override
  String get btnDeleteRecord => 'Eliminar este registro';

  @override
  String get currentEfiNamePrefix => 'Nombre actual de EFI: ';

  @override
  String get close => 'Cerrar';

  @override
  String get applySelected => 'Aplicar seleccionados';

  @override
  String get connectedGpuPrefix => 'GPU conectada: ';

  @override
  String get requiresSpoofIdPrefix => 'Requiere Spoof ID: ';

  @override
  String get selectPlatform => 'Generación de plataforma';

  @override
  String get selectVendor => 'Marca';

  @override
  String get selectModel => 'Modelo de placa base';

  @override
  String get btnImport => 'Importar';

  @override
  String get defaultLabel => 'Predeterminado';

  @override
  String get wifiBluetoothDrivers => 'Controladores de Wi-Fi y Bluetooth:';

  @override
  String get noWifiDriversByDefault =>
      '(Sin controladores de Wi-Fi configurados por defecto)';

  @override
  String get getIntelModifiedOclp => 'Obtener OCLP modificado de Intel';

  @override
  String get forLaptopSystems => '(Para sistemas portátiles)';
}
