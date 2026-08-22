// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - Ferramenta de EFI OpenCore';

  @override
  String get navHardware => 'Hardware';

  @override
  String get navManual => 'Config Manual da EFI';

  @override
  String get navProcess => 'Processar EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Histórico';

  @override
  String get navSettings => 'Configurações';

  @override
  String get navAbout => 'Sobre';

  @override
  String get navSponsor => 'Apoiar Desenvolvedor';

  @override
  String get btnRefresh => 'Atualizar';

  @override
  String get btnImportReport => 'Importar Relatório';

  @override
  String get btnExportReport => 'Exportar Relatório';

  @override
  String get btnExportAcpi => 'Exportar ACPI';

  @override
  String get btnEfiSettings => 'Configurações EFI';

  @override
  String get btnExportEfi => 'Exportar EFI';

  @override
  String get btnGenerateEfi => 'Gerar EFI';

  @override
  String get btnBrowse => 'Procurar';

  @override
  String get btnChooseFile => 'Escolher Arquivo';

  @override
  String get btnCancel => 'Cancelar';

  @override
  String get btnApply => 'Aplicar';

  @override
  String get btnSave => 'Salvar';

  @override
  String get btnClose => 'Fechar';

  @override
  String get btnCheckUpdates => 'Verificar Atualizações';

  @override
  String get btnChecking => 'Verificando...';

  @override
  String get btnSelectAll => 'Selecionar Todos';

  @override
  String get btnDeselectAll => 'Desmarcar Todos';

  @override
  String get btnCustomSsdt => 'SSDT Customizado';

  @override
  String get btnPrebuiltSsdt => 'SSDT Pré-compilado';

  @override
  String get btnDumpAcpi => 'Extrair ACPI';

  @override
  String get btnSelectAcpis => 'Selecionar ACPIs';

  @override
  String get btnSelectConfig => 'Selecionar config';

  @override
  String get btnMergeConfig => 'Mesclar config';

  @override
  String get btnExecutePatch => 'Executar Patch';

  @override
  String get btnOpenFolder => 'Abrir Pasta';

  @override
  String get hardwareReport => 'Relatório de Hardware';

  @override
  String get cpuArchitecture => 'Processador (CPU)';

  @override
  String get motherboardChipset => 'Placa-mãe & Chipset';

  @override
  String get graphicsDevice => 'Gráficos (GPU)';

  @override
  String get audioCodec => 'Controlador de Áudio';

  @override
  String get networkController => 'Rede & Wi-Fi';

  @override
  String get storageDevice => 'Dispositivos de Armazenamento';

  @override
  String get acpiTables => 'Tabelas ACPI';

  @override
  String get compatibilityStatus => 'Compatibilidade';

  @override
  String get compatible => 'Suportado';

  @override
  String get unsupported => 'Não Suportado';

  @override
  String get requiresPatch => 'Patch Necessário';

  @override
  String get details => 'Detalhes';

  @override
  String get showDetailedReport => 'Visualização Detalhada';

  @override
  String get platformConfig => 'Configuração da Plataforma';

  @override
  String get cpuVendor => 'Fabricante da CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Fator de Forma';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Notebook';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Servidor';

  @override
  String get processorGen => 'Geração do Processador';

  @override
  String get targetMacOs => 'Versão Alvo do macOS';

  @override
  String get smbiosModel => 'Modelo SMBIOS Alvo';

  @override
  String get motherboardSelector => 'Seleção da Placa-Mãe';

  @override
  String get brand => 'Marca';

  @override
  String get model => 'Modelo';

  @override
  String get outputDirectory => 'Diretório de Saída';

  @override
  String get kextConfiguration => 'Configuração de Kexts';

  @override
  String get bootArguments => 'Argumentos de Inicialização (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Ativado (00000000)';

  @override
  String get sipDisabled => 'SIP Desativado (03080000)';

  @override
  String get processEfiTitle => 'Processar & Recompilar EFI';

  @override
  String get chooseEfiPrompt =>
      'Selecione uma pasta EFI ou arquivo configModel para carregar a configuração';

  @override
  String get configModelFound =>
      'ConfigModel encontrado e carregado com sucesso';

  @override
  String get rebuildEfi => 'Reconstruir EFI';

  @override
  String get ssdtGeneratorTitle => 'Gerador de SSDT & Modificador ACPI';

  @override
  String get corePatches => 'Patches Principais';

  @override
  String get recommendedPatches => 'Patches Recomendados';

  @override
  String get optionalPatches => 'Patches Opcionais';

  @override
  String get compilationComplete => 'Compilação Concluída';

  @override
  String get mergeSuccess => 'Mesclado na EFI com sucesso';

  @override
  String get oclpTitle => 'Integração OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Root Patching';

  @override
  String get graphicsAcceleration => 'Aceleração Gráfica';

  @override
  String get wirelessFix => 'Correção de Wi-Fi e Bluetooth';

  @override
  String get postInstall => 'Passos Pós-Instalação';

  @override
  String get tahoeGuideTitle => 'Guia de Compatibilidade macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Adaptação de Kernel e Áudio Tahoe 26';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get appLanguage => 'Idioma :';

  @override
  String get followSystem => 'Seguir o Sistema';

  @override
  String get themeMode => 'Modo do Tema :';

  @override
  String get themeColor => 'Cor do Tema :';

  @override
  String get appFont => 'Fonte do App :';

  @override
  String get efiOptions => 'Opções da EFI :';

  @override
  String get addThemeToEfi => 'Adicionar tema de boot OpenCore à EFI';

  @override
  String get generateConfigModel => 'Gerar arquivo configModel na pasta EFI';

  @override
  String get compressZipEfi => 'Comprimir EFI em arquivo ZIP';

  @override
  String get checkForUpdates => 'Verificar Atualizações :';

  @override
  String currentVersion(String version) {
    return 'Versão atual: $version';
  }

  @override
  String get copyrightNotice => 'Direitos Autorais & Licença';

  @override
  String get exitAppTip => 'Pressione voltar novamente para sair';

  @override
  String get updateAvailable => 'Nova versão disponível';

  @override
  String versionTag(String version) {
    return 'Versão: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Data de Lançamento: $date';
  }

  @override
  String get noUpdateFound => 'Você está usando a versão mais recente';

  @override
  String get efiBuildSuccess => 'EFI gerada com sucesso!';

  @override
  String get efiBuildFailed => 'Falha ao gerar EFI';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get soundLayoutId => 'ID de Layout de Áudio (alcid)';

  @override
  String get nvramBootArgs => 'boot-args personalizados';

  @override
  String get generateSerial => 'Gerar Serial';

  @override
  String get navManualTab => 'Configuração Manual da EFI';

  @override
  String get navAutoTab => 'Configuração Automática da EFI';

  @override
  String get cpuSelection => 'Seleção do Processador (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Processadores Pentium ou Celeron requerem CPU spoofing; por favor ative isto!\nNota: iGPUs de Pentium/Celeron geralmente não são suportadas!';

  @override
  String get platformSelection => 'Seleção da Plataforma:';

  @override
  String get processorGeneration => 'Geração do Processador:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6N/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 núcleos / 12 threads) requer CPU spoofing específico';

  @override
  String get amdCoresTitle => 'Núcleos da CPU AMD:';

  @override
  String get amdSpecialMb => 'Placas-mãe Especiais AMD:';

  @override
  String get usePrecastMmio => 'Usar MMIO Precast';

  @override
  String get useRyzenGpu => 'Ativar Suporte a iGPU Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Marca da Placa-Mãe:';

  @override
  String get motherboardModel => 'Modelo da Placa-Mãe:';

  @override
  String get customMotherboard => 'Placa-Mãe Genérica / Personalizada';

  @override
  String get igpuConfig => 'Configuração da iGPU:';

  @override
  String get dgpuConfig => 'Configuração da dGPU:';

  @override
  String get audioConfig => 'Configuração de Áudio:';

  @override
  String get audioCodecFix => 'Codec de Áudio & Layout ID';

  @override
  String get fixIrq => 'Corrigir Conflitos de IRQ';

  @override
  String get networkConfig => 'Configuração de Rede e Wi-Fi:';

  @override
  String get laptopDrivers => 'Drivers para Notebook / Laptop:';

  @override
  String get touchpadDriver => 'Driver do Touchpad (I2C / PS2)';

  @override
  String get smbiosSelection => 'Modelo SMBIOS Alvo:';

  @override
  String get targetMacOsVersion => 'Versão macOS Alvo:';

  @override
  String get bootArgsTitle => 'Argumentos de Inicialização (boot-args):';

  @override
  String get csrActiveConfigTitle =>
      'Proteção de Integridade do Sistema (SIP):';

  @override
  String get outputEfiTitle => 'Pasta de Saída da EFI:';

  @override
  String get selectOutputFolder => 'Selecionar Pasta de Saída';

  @override
  String get clearConfig => 'Limpar Configuração';

  @override
  String get importConfigModel => 'Importar configModel';

  @override
  String get importingConfigModel => 'Importando configModel...';

  @override
  String get dragDropConfigModel =>
      'Arraste e solte o arquivo configModel aqui\nou clique para navegar';

  @override
  String get clearAllHistory => 'Limpar Todo o Histórico';

  @override
  String get clearingHistory => 'Limpando histórico...';

  @override
  String get noHistoryRecords => 'Nenhum registro no histórico ainda';

  @override
  String get overview => 'Visão Geral';

  @override
  String get platformPatches => 'Patches de Plataforma';

  @override
  String get audioPatches => 'Patches de Áudio';

  @override
  String get gpuSpoofing => 'GPU Spoofing';

  @override
  String get disableDevices => 'Desativar Dispositivos';

  @override
  String get brightnessPatches => 'Patches de Brilho';

  @override
  String get graphicsPatches => 'Patches de Vídeo / GPU';

  @override
  String get wifiPatches => 'Patches de Wi-Fi';

  @override
  String get documentationGuides => 'Documentação & Guias';

  @override
  String get aboutSupport => 'Sobre & Suporte';

  @override
  String get hardwareTabTitle => 'Configuração de Hardware';

  @override
  String get acpiFolderTitle => 'Pasta ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'Carregando dados...';

  @override
  String get configuringEfiWait => 'Configurando EFI, por favor aguarde...';

  @override
  String get summary => 'Resumo';

  @override
  String get recent => 'Recente';

  @override
  String get efiConfig => 'Config EFI';

  @override
  String get toolsAndGuides => 'Ferramentas & Guias';

  @override
  String get checkUpdates => 'Verificar Atualizações';

  @override
  String get sponsorDeveloper => 'Apoiar Desenvolvedor';

  @override
  String get releaseNotes => 'Notas de Lançamento';

  @override
  String get searchPlaceholder => 'Pesquisar';

  @override
  String get initialSupportMacOs =>
      'Versão inicial do macOS com suporte nativo:';

  @override
  String get lastSupportMacOs => 'Última versão do macOS com suporte nativo:';

  @override
  String get oclpSupportMacOs => 'Versões do macOS suportadas via patch OCLP:';

  @override
  String get cpuInfoTitle => '[Informações da CPU]:';

  @override
  String get biosRecommendedEnabled =>
      '[Configurações recomendadas da BIOS - Ativadas]:';

  @override
  String get biosRecommendedDisabled =>
      '[Configurações recomendadas da BIOS - Desativadas]:';

  @override
  String get historyExpanderDesc =>
      'As EFIs geradas com o RapidEFI são salvas automaticamente no histórico.\nVocê pode recarregar e ajustar qualquer EFI gerada anteriormente a qualquer momento.\n\nEste recurso é compatível a partir do RapidEFI V3.0.0.';

  @override
  String get gpuPresets => 'Predefinições';

  @override
  String get gpuByCpuModel => 'Por modelo de CPU';

  @override
  String get selectCpuGeneration => 'Selecionar geração';

  @override
  String get selectCpuModel => 'Selecionar CPU';

  @override
  String get cpuGenerationLabel => 'Geração da CPU';

  @override
  String get cpuModelLabel => 'Modelo da CPU';

  @override
  String get matchingIgpuTip =>
      'Marque se corresponder, caso contrário deixe desmarcado';

  @override
  String get selectPropertiesToApply => 'Selecionar propriedades para aplicar';

  @override
  String get motherboardConfigTitle => 'Configuração do modelo da placa-mãe:';

  @override
  String get motherboardConfigItems =>
      'Selecione os itens de configuração para aplicar';

  @override
  String get selectModelToConfigure => '(Selecione o modelo para configurar)';

  @override
  String get pleaseSelect => 'Por favor selecione';

  @override
  String get selectAllDeselectAll => 'Selecionar / Desmarcar todos';

  @override
  String get deselectAll => 'Desmarcar todos';

  @override
  String get stuckOnEbFix =>
      'Correção de travamento no [EB] (Opcional - padrões recomendados):';

  @override
  String get renameCurrentEfi => 'Renomear EFI atual';

  @override
  String get enterNewName => 'Digite o novo nome';

  @override
  String get renameEfiTooltip => 'Renomear EFI';

  @override
  String get adminPrivilegesRequired =>
      'Privilégios de Administrador Necessários';

  @override
  String get enterLoginPassword =>
      'Por favor, digite a senha de login do computador';

  @override
  String get importHardwareMaterials => 'Importar Materiais de Hardware';

  @override
  String get currentBiosSettings => 'Configurações Atuais da BIOS';

  @override
  String get colorTheme => 'Tema de Cores';

  @override
  String get noValidHardwareReport =>
      'Nenhum arquivo de relatório de hardware válido detectado';

  @override
  String get viewOnGitHub => 'Ver no GitHub';

  @override
  String get downloadNow => 'Baixar Agora';

  @override
  String get btnConfirm => 'Confirmar';

  @override
  String get btnDeleteRecord => 'Excluir este registro';

  @override
  String get currentEfiNamePrefix => 'Nome atual da EFI: ';

  @override
  String get close => 'Fechar';

  @override
  String get applySelected => 'Aplicar selecionados';

  @override
  String get connectedGpuPrefix => 'GPU conectada: ';

  @override
  String get requiresSpoofIdPrefix => 'Requer Spoof ID: ';

  @override
  String get selectPlatform => 'Geração da Plataforma';

  @override
  String get selectVendor => 'Marca';

  @override
  String get selectModel => 'Modelo da Placa-mãe';

  @override
  String get btnImport => 'Importar';

  @override
  String get defaultLabel => 'Padrão';
}

/// The translations for Portuguese, as used in Portugal (`pt_PT`).
class AppLocalizationsPtPt extends AppLocalizationsPt {
  AppLocalizationsPtPt() : super('pt_PT');

  @override
  String get appName => 'RapidEFI';

  @override
  String get appTitle => 'RapidEFI - Ferramenta de EFI OpenCore';

  @override
  String get navHardware => 'Hardware';

  @override
  String get navManual => 'Configuração Manual da EFI';

  @override
  String get navProcess => 'Processar EFI';

  @override
  String get navSsdt => 'SSDT';

  @override
  String get navOclp => 'OCLP';

  @override
  String get navTahoe => 'Tahoe 26';

  @override
  String get navHistory => 'Histórico';

  @override
  String get navSettings => 'Definições';

  @override
  String get navAbout => 'Acerca de';

  @override
  String get navSponsor => 'Apoiar o Programador';

  @override
  String get btnRefresh => 'Atualizar';

  @override
  String get btnImportReport => 'Importar Relatório';

  @override
  String get btnExportReport => 'Exportar Relatório';

  @override
  String get btnExportAcpi => 'Exportar ACPI';

  @override
  String get btnEfiSettings => 'Definições EFI';

  @override
  String get btnExportEfi => 'Exportar EFI';

  @override
  String get btnGenerateEfi => 'Gerar EFI';

  @override
  String get btnBrowse => 'Procurar';

  @override
  String get btnChooseFile => 'Escolher Ficheiro';

  @override
  String get btnCancel => 'Cancelar';

  @override
  String get btnApply => 'Aplicar';

  @override
  String get btnSave => 'Guardar';

  @override
  String get btnClose => 'Fechar';

  @override
  String get btnCheckUpdates => 'Procurar Atualizações';

  @override
  String get btnChecking => 'A procurar...';

  @override
  String get btnSelectAll => 'Selecionar Todos';

  @override
  String get btnDeselectAll => 'Desmarcar Todos';

  @override
  String get btnCustomSsdt => 'SSDT Personalizado';

  @override
  String get btnPrebuiltSsdt => 'SSDT Pré-compilado';

  @override
  String get btnDumpAcpi => 'Extrair ACPI';

  @override
  String get btnSelectAcpis => 'Selecionar ACPIs';

  @override
  String get btnSelectConfig => 'Selecionar config';

  @override
  String get btnMergeConfig => 'Intercalar config';

  @override
  String get btnExecutePatch => 'Executar Correção';

  @override
  String get btnOpenFolder => 'Abrir Pasta';

  @override
  String get hardwareReport => 'Relatório de Hardware';

  @override
  String get cpuArchitecture => 'Processador (CPU)';

  @override
  String get motherboardChipset => 'Placa Principal & Chipset';

  @override
  String get graphicsDevice => 'Gráficos (GPU)';

  @override
  String get audioCodec => 'Controlador de Áudio';

  @override
  String get networkController => 'Rede & Wi-Fi';

  @override
  String get storageDevice => 'Dispositivos de Armazenamento';

  @override
  String get acpiTables => 'Tabelas ACPI';

  @override
  String get compatibilityStatus => 'Compatibilidade';

  @override
  String get compatible => 'Suportado';

  @override
  String get unsupported => 'Não Suportado';

  @override
  String get requiresPatch => 'Correção Necessária';

  @override
  String get details => 'Detalhes';

  @override
  String get showDetailedReport => 'Vista Detalhada';

  @override
  String get platformConfig => 'Configuração da Plataforma';

  @override
  String get cpuVendor => 'Fabricante da CPU';

  @override
  String get intel => 'Intel';

  @override
  String get amd => 'AMD';

  @override
  String get formFactor => 'Fator de Forma';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Portátil';

  @override
  String get nucMiniPc => 'NUC / Mini PC';

  @override
  String get hedtServer => 'HEDT / Servidor';

  @override
  String get processorGen => 'Geração do Processador';

  @override
  String get targetMacOs => 'Versão Alvo do macOS';

  @override
  String get smbiosModel => 'Modelo SMBIOS Alvo';

  @override
  String get motherboardSelector => 'Seleção da Placa Principal';

  @override
  String get brand => 'Marca';

  @override
  String get model => 'Modelo';

  @override
  String get outputDirectory => 'Diretório de Saída';

  @override
  String get kextConfiguration => 'Configuração de Kexts';

  @override
  String get bootArguments => 'Argumentos de Inicialização (boot-args)';

  @override
  String get csrActiveConfig => 'SIP (csr-active-config)';

  @override
  String get sipEnabled => 'SIP Ativado (00000000)';

  @override
  String get sipDisabled => 'SIP Desativado (03080000)';

  @override
  String get processEfiTitle => 'Processar & Reconstruir EFI';

  @override
  String get chooseEfiPrompt =>
      'Selecione uma pasta EFI ou ficheiro configModel para carregar a configuração';

  @override
  String get configModelFound => 'ConfigModel detetado e carregado com sucesso';

  @override
  String get rebuildEfi => 'Reconstruir EFI';

  @override
  String get ssdtGeneratorTitle => 'Gerador de SSDT & Modificador ACPI';

  @override
  String get corePatches => 'Correções Principais';

  @override
  String get recommendedPatches => 'Correções Recomendadas';

  @override
  String get optionalPatches => 'Correções Opcionais';

  @override
  String get compilationComplete => 'Compilação Concluída';

  @override
  String get mergeSuccess => 'Integrado na EFI com sucesso';

  @override
  String get oclpTitle => 'Integração OpenCore Legacy Patcher';

  @override
  String get rootPatching => 'Root Patching';

  @override
  String get graphicsAcceleration => 'Aceleração Gráfica';

  @override
  String get wirelessFix => 'Correção de Wi-Fi e Bluetooth';

  @override
  String get postInstall => 'Passos Pós-Instalação';

  @override
  String get tahoeGuideTitle => 'Guia de Compatibilidade macOS Tahoe 26';

  @override
  String get tahoeCompatibility => 'Adaptação de Kernel e Áudio Tahoe 26';

  @override
  String get settingsTitle => 'Definições';

  @override
  String get appLanguage => 'Idioma :';

  @override
  String get followSystem => 'Seguir o Sistema';

  @override
  String get themeMode => 'Modo do Tema :';

  @override
  String get themeColor => 'Cor do Tema :';

  @override
  String get appFont => 'Tipo de Letra :';

  @override
  String get efiOptions => 'Opções da EFI :';

  @override
  String get addThemeToEfi => 'Adicionar tema de arranque OpenCore à EFI';

  @override
  String get generateConfigModel => 'Gerar ficheiro configModel na pasta EFI';

  @override
  String get compressZipEfi => 'Comprimir EFI em ficheiro ZIP';

  @override
  String get checkForUpdates => 'Procurar Atualizações :';

  @override
  String currentVersion(String version) {
    return 'Versão atual: $version';
  }

  @override
  String get copyrightNotice => 'Direitos de Autor & Licença';

  @override
  String get exitAppTip => 'Pressione retroceder novamente para sair';

  @override
  String get updateAvailable => 'Nova versão disponível';

  @override
  String versionTag(String version) {
    return 'Versão: $version';
  }

  @override
  String releaseDate(String date) {
    return 'Data de Lançamento: $date';
  }

  @override
  String get noUpdateFound => 'Está a utilizar a versão mais recente';

  @override
  String get efiBuildSuccess => 'EFI compilada com sucesso!';

  @override
  String get efiBuildFailed => 'Falha ao compilar EFI';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get soundLayoutId => 'ID de Esquema de Áudio (alcid)';

  @override
  String get nvramBootArgs => 'boot-args personalizados';

  @override
  String get generateSerial => 'Gerar Número de Série';

  @override
  String get navManualTab => 'Configuração Manual da EFI';

  @override
  String get navAutoTab => 'Configuração Automática da EFI';

  @override
  String get cpuSelection => 'Seleção do Processador (CPU):';

  @override
  String get pentiumCeleron => 'Pentium/Celeron';

  @override
  String get pentiumCeleronTip =>
      'Processadores Pentium ou Celeron requerem CPU spoofing; por favor ative isto!\nNota: iGPUs de Pentium/Celeron geralmente não são suportadas!';

  @override
  String get platformSelection => 'Seleção da Plataforma:';

  @override
  String get processorGeneration => 'Geração do Processador:';

  @override
  String get cometLakeU62 => 'Comet Lake U62 (6N/12T)';

  @override
  String get cometLakeU62Tip =>
      'Comet Lake U62 (6 núcleos / 12 threads) requer CPU spoofing específico';

  @override
  String get amdCoresTitle => 'Núcleos do Processador AMD:';

  @override
  String get amdSpecialMb => 'Motherboards Especiais AMD:';

  @override
  String get usePrecastMmio => 'Utilizar MMIO Precast';

  @override
  String get useRyzenGpu => 'Ativar Suporte a iGPU Ryzen (NootedRed)';

  @override
  String get motherboardBrand => 'Marca da Motherboard:';

  @override
  String get motherboardModel => 'Modelo da Motherboard:';

  @override
  String get customMotherboard => 'Motherboard Genérica / Personalizada';

  @override
  String get igpuConfig => 'Configuração da iGPU:';

  @override
  String get dgpuConfig => 'Configuração da dGPU:';

  @override
  String get audioConfig => 'Configuração de Áudio:';

  @override
  String get audioCodecFix => 'Codec de Áudio & Layout ID';

  @override
  String get fixIrq => 'Corrigir Conflitos de IRQ';

  @override
  String get networkConfig => 'Configuração de Rede e Wi-Fi:';

  @override
  String get laptopDrivers => 'Controladores para Portátil:';

  @override
  String get touchpadDriver => 'Controlador do Touchpad (I2C / PS2)';

  @override
  String get smbiosSelection => 'Modelo SMBIOS Alvo:';

  @override
  String get targetMacOsVersion => 'Versão macOS Alvo:';

  @override
  String get bootArgsTitle => 'Argumentos de Arranque (boot-args):';

  @override
  String get csrActiveConfigTitle =>
      'Proteção de Integridade do Sistema (SIP):';

  @override
  String get outputEfiTitle => 'Pasta de Destino da EFI:';

  @override
  String get selectOutputFolder => 'Selecionar Pasta de Destino';

  @override
  String get clearConfig => 'Limpar Configuração';

  @override
  String get importConfigModel => 'Importar configModel';

  @override
  String get importingConfigModel => 'A importar configModel...';

  @override
  String get dragDropConfigModel =>
      'Arraste e solte o ficheiro configModel aqui\nou clique para procurar';

  @override
  String get clearAllHistory => 'Limpar Todo o Histórico';

  @override
  String get clearingHistory => 'A limpar histórico...';

  @override
  String get noHistoryRecords => 'Nenhum registo no histórico';

  @override
  String get overview => 'Visão Geral';

  @override
  String get platformPatches => 'Patches de Plataforma';

  @override
  String get audioPatches => 'Patches de Áudio';

  @override
  String get gpuSpoofing => 'GPU Spoofing';

  @override
  String get disableDevices => 'Desativar Dispositivos';

  @override
  String get brightnessPatches => 'Patches de Brilho';

  @override
  String get graphicsPatches => 'Patches de Placa Gráfica';

  @override
  String get wifiPatches => 'Patches de Wi-Fi';

  @override
  String get documentationGuides => 'Documentação & Guias';

  @override
  String get aboutSupport => 'Sobre & Suporte';

  @override
  String get hardwareTabTitle => 'Configuração de Hardware';

  @override
  String get acpiFolderTitle => 'Pasta ACPI';

  @override
  String get above4gDecoding => 'Above 4G Decoding';

  @override
  String get loadingData => 'A carregar dados...';

  @override
  String get configuringEfiWait => 'A configurar EFI, por favor aguarde...';

  @override
  String get summary => 'Resumo';

  @override
  String get recent => 'Recente';

  @override
  String get efiConfig => 'Config EFI';

  @override
  String get toolsAndGuides => 'Ferramentas & Guias';

  @override
  String get checkUpdates => 'Procurar Atualizações';

  @override
  String get sponsorDeveloper => 'Apoiar Desenvolvedor';

  @override
  String get releaseNotes => 'Notas de Lançamento';

  @override
  String get searchPlaceholder => 'Pesquisar';

  @override
  String get initialSupportMacOs =>
      'Versão inicial do macOS com suporte nativo:';

  @override
  String get lastSupportMacOs => 'Última versão do macOS com suporte nativo:';

  @override
  String get oclpSupportMacOs => 'Versões do macOS suportadas via patch OCLP:';

  @override
  String get cpuInfoTitle => '[Informações da CPU]:';

  @override
  String get biosRecommendedEnabled =>
      '[Configurações recomendadas da BIOS - Ativadas]:';

  @override
  String get biosRecommendedDisabled =>
      '[Configurações recomendadas da BIOS - Desativadas]:';

  @override
  String get historyExpanderDesc =>
      'As EFIs geradas com o RapidEFI são guardadas automaticamente no histórico.\nPode recarregar e ajustar qualquer EFI gerada anteriormente a qualquer momento.\n\nEsta funcionalidade é suportada a partir do RapidEFI V3.0.0.';

  @override
  String get gpuPresets => 'Predefinições';

  @override
  String get gpuByCpuModel => 'Por modelo de CPU';

  @override
  String get selectCpuGeneration => 'Selecionar geração';

  @override
  String get selectCpuModel => 'Selecionar CPU';

  @override
  String get cpuGenerationLabel => 'Geração da CPU';

  @override
  String get cpuModelLabel => 'Modelo da CPU';

  @override
  String get matchingIgpuTip =>
      'Marque se corresponder, caso contrário deixe desmarcado';

  @override
  String get selectPropertiesToApply => 'Selecionar propriedades a aplicar';

  @override
  String get motherboardConfigTitle =>
      'Configuração do modelo da placa principal:';

  @override
  String get motherboardConfigItems =>
      'Selecione os itens de configuração a aplicar';

  @override
  String get selectModelToConfigure => '(Selecione o modelo para configurar)';

  @override
  String get pleaseSelect => 'Por favor selecione';

  @override
  String get selectAllDeselectAll => 'Selecionar / Desmarcar todos';

  @override
  String get deselectAll => 'Desmarcar todos';

  @override
  String get stuckOnEbFix =>
      'Correção de paragem no [EB] (Opcional - predefinições recomendadas):';

  @override
  String get renameCurrentEfi => 'Mudar o nome da EFI atual';

  @override
  String get enterNewName => 'Introduza o novo nome';

  @override
  String get renameEfiTooltip => 'Mudar nome da EFI';

  @override
  String get adminPrivilegesRequired =>
      'Privilégios de Administrador Necessários';

  @override
  String get enterLoginPassword =>
      'Por favor, introduza a palavra-passe de início de sessão';

  @override
  String get importHardwareMaterials => 'Importar Materiais de Hardware';

  @override
  String get currentBiosSettings => 'Configurações Atuais da BIOS';

  @override
  String get colorTheme => 'Tema de Cores';

  @override
  String get noValidHardwareReport =>
      'Nenhum ficheiro de relatório de hardware válido detetado';

  @override
  String get viewOnGitHub => 'Ver no GitHub';

  @override
  String get downloadNow => 'Transferir Agora';

  @override
  String get btnConfirm => 'Confirmar';

  @override
  String get btnDeleteRecord => 'Eliminar este registo';

  @override
  String get currentEfiNamePrefix => 'Nome atual da EFI: ';

  @override
  String get close => 'Fechar';

  @override
  String get applySelected => 'Aplicar selecionados';

  @override
  String get connectedGpuPrefix => 'GPU ligada: ';

  @override
  String get requiresSpoofIdPrefix => 'Requer Spoof ID: ';

  @override
  String get selectPlatform => 'Geração da Plataforma';

  @override
  String get selectVendor => 'Marca';

  @override
  String get selectModel => 'Modelo da Placa Principal';

  @override
  String get btnImport => 'Importar';

  @override
  String get defaultLabel => 'Predefinição';
}
