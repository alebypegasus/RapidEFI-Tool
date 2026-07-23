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
  String get recent => 'Recentes';

  @override
  String get efiRelated => 'Relacionado a EFI';

  @override
  String get toolsAndGuides => 'Ferramentas & Guias';

  @override
  String get navHistory => 'Histórico';

  @override
  String get navConfigureEFI => 'Configurar EFI';

  @override
  String get navProcessEFI => 'Processar EFI';

  @override
  String get navCustomSSDT => 'Customizar SSDT';

  @override
  String get navOCLPPatch => 'Patch OCLP-X';

  @override
  String get navTahoeGuide => 'macOS Tahoe 26';

  @override
  String get navSettings => 'Configurações';

  @override
  String get navSponsor => 'Apoiar Desenvolvedor';

  @override
  String get searchPlaceholder => 'Pesquisar';

  @override
  String get darkMode => 'Modo Escuro';

  @override
  String get clickAgainToExit => 'Clique novamente para sair';

  @override
  String currentOpenCoreVersion(Object version) {
    return 'Versão OpenCore Atual: $version';
  }

  @override
  String get copyrightTitle => 'Declaração de Direitos Autorais';

  @override
  String get copyrightText =>
      'Copyright (C) 2024 JeoJay\n\nLicença de Uso:\nPermitido para uso individual ou por organizações sob as seguintes condições:\n\n1. Uso não comercial:\nEste software é totalmente gratuito e de código aberto, estritamente para uso não comercial. A venda deste software é proibida.\n\n2. Atribuição:\nQualquer forma de republicação, citação ou uso em sites de terceiros deve indicar explicitamente a fonte e incluir as seguintes informações:\nDesenvolvido por JeoJay. Copyright (C) 2024 JeoJay. Todos os direitos reservados.\n\n3. Não modificar avisos de direitos autorais:\nAo republicar ou usar qualquer conteúdo deste software, o aviso de direitos autorais original e as informações de atribuição não devem ser modificados ou excluídos.\n\nIsenção de Responsabilidade:\nEste software é fornecido \'como está\', sem garantias de qualquer tipo, expressas ou implícitas. O detentor dos direitos autorais não será responsável por quaisquer danos diretos ou indiretos decorrentes do uso deste software.';

  @override
  String get themeModeTitle => 'Modo Escuro:';

  @override
  String get themeModeSystem => 'Seguir Sistema';

  @override
  String get themeModeLight => 'Desligado';

  @override
  String get themeModeDark => 'Ligado';

  @override
  String get themeColorTitle => 'Cor do Tema:';

  @override
  String get appFontTitle => 'Fonte do Aplicativo:';

  @override
  String get efiSettingsTitle => 'Opções de Saída da EFI:';

  @override
  String get addOpenCoreTheme =>
      'Adicionar tema de inicialização OpenCore ao configurar EFI';

  @override
  String get generateConfigModel => 'Gerar arquivo configModel na pasta EFI';

  @override
  String get zipEFI => 'Compactar EFI em arquivo Zip';

  @override
  String get languageTitle => 'Idioma:';

  @override
  String get languageSystem => 'Seguir Sistema';

  @override
  String get languageEn => 'English';

  @override
  String get languagePtBR => 'Português (Brasil)';

  @override
  String get languagePtPT => 'Português (Portugal)';

  @override
  String get languageZhCN => '中文 (简体)';

  @override
  String get languageZhTW => '中文 (繁體)';

  @override
  String get languageJa => '日本語';

  @override
  String get versionUpdateTitle => 'Atualização de Versão:';

  @override
  String currentVersion(Object version) {
    return 'Versão Atual: $version';
  }

  @override
  String get checkUpdate => 'Verificar Atualizações';

  @override
  String get checkingUpdate => 'Verificando...';

  @override
  String get settingSnippet =>
      '1. A opção \'Adicionar tema de inicialização OpenCore ao configurar EFI\' vem ativada por padrão. Um tema de boot será incluído na pasta EFI de saída. Desmarque se não precisar de tema.\n\n2. A opção \'Gerar arquivo configModel na pasta EFI\' vem ativada por padrão. Este arquivo pode ser usado para re-editar e ajustar a EFI atual na seção \'Processar EFI\'.\n\n3. A opção \'Compactar EFI em arquivo Zip\' compacta a EFI gerada em um arquivo Zip. Note que a compactação Zip pode afetar o tempo de saída da EFI, especialmente em computadores com hardware mais lento.';

  @override
  String get fontMicrosoftYaHei => 'Microsoft YaHei';

  @override
  String get fontSarasaGothic => 'Sarasa Gothic';

  @override
  String get fontSourceHanSerif => 'Source Han Serif';

  @override
  String get cpuArchitecture => 'Arquitetura da CPU';

  @override
  String get desktop => 'Desktop';

  @override
  String get laptop => 'Notebook';

  @override
  String get hedt => 'Servidor';

  @override
  String get nuc => 'Mini PC';

  @override
  String get amd => 'Processador AMD';

  @override
  String get smbios => 'Modelo SMBIOS';

  @override
  String get generateEFI => 'Gerar EFI';

  @override
  String get clearSelection => 'Limpar Seleção';

  @override
  String get exportConfig => 'Exportar Configuração';

  @override
  String get selectTargetFolder => 'Selecionar Pasta de Destino';

  @override
  String get efiGenerateSuccess => 'EFI gerada com sucesso!';

  @override
  String efiGenerateFailed(Object error) {
    return 'Falha ao gerar EFI: $error';
  }

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get save => 'Salvar';

  @override
  String get delete => 'Excluir';

  @override
  String get openFolder => 'Abrir Pasta';

  @override
  String get date => 'Data';

  @override
  String get actions => 'Ações';

  @override
  String get historyTitle => 'Histórico';

  @override
  String get historyDescription =>
      'As EFIs geradas pelo RapidEFI são salvas automaticamente em backup após cada compilação com sucesso. Você pode re-editar e ajustar a saída com base nesses registros sempre que necessário.';

  @override
  String get clearAllHistory => 'Limpar Todo o Histórico';

  @override
  String get clearingHistory => 'Limpando histórico...';

  @override
  String get noHistory => 'Nenhum histórico encontrado';

  @override
  String get editEFI => 'Editar EFI';

  @override
  String get configuringEFI => 'Configurando EFI, por favor aguarde...';

  @override
  String get configureEFISuccess => 'EFI configurada com sucesso';

  @override
  String get configureEFIFailed =>
      'Erro ao configurar EFI!\nPor favor altere o diretório de saída.';

  @override
  String get sponsorTitle => 'Apoiar Desenvolvedor';

  @override
  String get visitBilibili => 'Bilibili do Autor';

  @override
  String get visitGithub => 'Visitar GitHub';

  @override
  String get buyCoffeeTitle => 'Pague um Café para o Desenvolvedor';

  @override
  String get buyCoffeeText =>
      'Se esta ferramenta te ajudou, fique à vontade para apoiar o desenvolvedor! Obrigado pelo suporte!\n\nContato do autor: QQ 766264141 ou WX: JeoJay127. Não existem outros meios de contato privados, cuidado com golpes!';

  @override
  String get successCasesTitle => 'Casos de Sucesso do RapidEFI';

  @override
  String get tahoeGuideTitle => 'Guia macOS Tahoe 26';

  @override
  String get oclpIntro => 'Introdução';

  @override
  String get oclpGpu => 'Patch de GPU';

  @override
  String get oclpWifi => 'Patch de WiFi';

  @override
  String get ssdtPlatform => 'Patch de Plataforma';

  @override
  String get ssdtAudio => 'Patch de Áudio';

  @override
  String get ssdtGpuSpoof => 'Falsificação de GPU';

  @override
  String get ssdtDisableDevice => 'Desativar Dispositivo';

  @override
  String get ssdtBrightness => 'Patch de Brilho';

  @override
  String get manualEFIConfig => 'Configuração Manual de EFI';

  @override
  String get autoEFIConfig => 'Configuração Automática de EFI';

  @override
  String get cpuSelection => 'Seleção de CPU:';

  @override
  String get platformSelection => 'Seleção de Plataforma:';

  @override
  String get platformInfo => 'Informações da Plataforma:';

  @override
  String get targetMacOSVersion => 'Versão do macOS Alvo:';

  @override
  String get smbiosModelSetup => 'Modelo SMBIOS:';

  @override
  String get motherboardModelConfig => 'Modelo da Placa-Mãe:';

  @override
  String get selectMotherboardModelTip =>
      '(Selecione o modelo da placa-mãe para aplicar a configuração)';

  @override
  String get platformGen => 'Geração da Plataforma';

  @override
  String get vendor => 'Marca';

  @override
  String get motherboardModel => 'Modelo da Placa-Mãe';

  @override
  String get pleaseSelect => 'Por favor selecione';

  @override
  String get selected => 'Selecionado: ';

  @override
  String get applySelectedConfig => 'Aplicar Configuração Selecionada';

  @override
  String get noMatchingConfigEntries =>
      'Nenhum item de configuração correspondente';

  @override
  String get pentiumCeleron => 'Pentium / Celeron';

  @override
  String get pentiumCeleronTip =>
      'Processadores Pentium ou Celeron requerem falsificação de CPU (Spoof)! Por favor ative.\nNota: Gráficos integrados (iGPU) de Pentium/Celeron geralmente não possuem suporte!';

  @override
  String get u62CpuTitle => 'CPU Tipo U62';

  @override
  String get u62CpuTip =>
      'CPUs U62 da 10ª Geração Comet Lake (ex: i3-10110U, i5-10210U, i7-10510U, etc.) - por favor ative!';

  @override
  String get macOSVersionSnippet =>
      'A EFI gerada possui compatibilidade retroativa com a versão do macOS selecionada até o OS X El Capitan 10.11.';

  @override
  String get amdCores => 'Contagem de Núcleos AMD:';

  @override
  String get ryzen7000to9000 => 'CPUs Séries 7000~9000';

  @override
  String get useAmdIgpuOutput => 'Usar iGPU AMD para Saída de Vídeo';

  @override
  String get igpuConfigTitle => 'Configuração de iGPU';

  @override
  String get dgpuConfigTitle => 'Configuração de dGPU';

  @override
  String get audioDriver => 'Driver de Áudio:';

  @override
  String get defaultAppleALCDriver => '(Padrão: usa driver AppleALC)';

  @override
  String get alcLayoutId => 'ID de Layout ALC:';

  @override
  String get queryLayoutId => 'Consultar Layout ID';

  @override
  String get hpetAcpiPath => 'Caminho ACPI HPET (correção IRQ):';

  @override
  String get fixIrq => 'Corrigir IRQ';

  @override
  String get selectAudioLayoutIdTitle => 'Selecionar ID de Layout de Áudio';

  @override
  String get selectAudioLayoutIdTip =>
      '(Use a roda do mouse para selecionar e clique em confirmar)';

  @override
  String get ethernetDriver => 'Driver de Rede (Ethernet):';

  @override
  String get defaultNoEthernetDriver => '(Padrão: sem driver de rede)';

  @override
  String get loadingData => 'Carregando dados...';

  @override
  String get refreshHardwareInfo => 'Atualizar Informações';

  @override
  String get importHardwareInfo => 'Importar Dados';

  @override
  String get exportHardwareReport => 'Exportar Relatório';

  @override
  String get exportAcpiTables => 'Exportar Tabelas ACPI';

  @override
  String get efiSettings => 'Configurações da EFI';

  @override
  String get outputEFI => 'Exportar EFI';

  @override
  String get summaryView => 'Resumido';

  @override
  String get detailedView => 'Detalhado';

  @override
  String get legendGreen =>
      'Verde: Suporta sistema mais recente (macOS Tahoe 26)';

  @override
  String get legendYellow => 'Amarelo: Suporta algumas versões do macOS';

  @override
  String get legendRed => 'Vermelho: Totalmente incompatível';

  @override
  String get noAcpiImported => 'Sem ACPI Importada';

  @override
  String get personalizedEfiTitle => 'Configurações Personalizadas da EFI';

  @override
  String get applySettings => 'Aplicar Configurações';

  @override
  String get configureEFIError =>
      'Erro ao configurar EFI!\nPor favor, altere o caminho de saída';

  @override
  String get selectConfigItems =>
      'Selecionar Itens de Configuração para Aplicar';

  @override
  String get newVersionFound => 'Nova Versão Disponível';

  @override
  String versionTag(Object tag) {
    return 'Versão: $tag';
  }

  @override
  String publishedAtDate(Object date) {
    return 'Data de Lançamento: $date';
  }

  @override
  String get downloadNow => 'Baixar Agora';

  @override
  String get close => 'Fechar';

  @override
  String get generatingEfiAndSsdt =>
      'Gerando EFI e SSDT customizada, aguarde...';

  @override
  String get configuringEfiTitle => 'Configurando EFI';

  @override
  String get configureEfiSuccessTitle => 'EFI Configurada com Sucesso';

  @override
  String get configureEfiErrorTitle => 'Falha na Configuração da EFI';

  @override
  String get outputDirectory => 'Diretório de Saída:';

  @override
  String get openEfiDirectory => 'Abrir Diretório EFI';

  @override
  String get select => 'Selecionar';

  @override
  String get selectFile => 'Selecionar Arquivo';

  @override
  String get selectDirectory => 'Selecionar Diretório';

  @override
  String get hardwareReport => 'Relatório de Hardware';

  @override
  String get acpiTablesDirectory => 'Diretório de Tabelas ACPI';

  @override
  String get noAcpiFolderTip =>
      'Sem o diretório de tabelas ACPI, a SSDT personalizada não poderá ser gerada a partir do relatório importado.';

  @override
  String get hasAcpiFolderTip =>
      'O diretório de tabelas ACPI selecionado será usado para a SSDT personalizada.';

  @override
  String get adminRightsRequired => 'Permissão de Administrador Necessária';

  @override
  String get enterSystemPassword => 'Por favor, digite a senha do seu sistema';

  @override
  String get import => 'Importar';

  @override
  String get optionalSelectIfMatching =>
      '(Opcional - marque se correspondente)';

  @override
  String get selectIfMatching => '(Marque se correspondente)';

  @override
  String get baseConfig => 'Configuração Básica';

  @override
  String get advanceConfig => 'Configuração Avançada';

  @override
  String get connectorCustomization => 'Personalização de Conectores';

  @override
  String get displayEdid => 'EDID do Monitor';

  @override
  String get nvidiaDgpu => 'dGPU Nvidia';

  @override
  String get amdDgpu => 'dGPU AMD';

  @override
  String get amdDgpuSpoof => 'Simulação de dGPU AMD';

  @override
  String get above4gTitle => 'Configurações de Above 4G Decoding';

  @override
  String get addNpciBootArg => 'Adicionar argumento de boot npci=0x2000';

  @override
  String get above4gTip =>
      'Recomendado se o Above 4G Decoding estiver desativado na BIOS. Desmarque se estiver ativado.';

  @override
  String get personalizedEfiIntroTip =>
      'Todos os campos são opcionais. A EFI gerada incluirá arquivos baseados nessas configurações.';

  @override
  String get ssdtType => 'Tipo de SSDT:';

  @override
  String get customSsdt => 'SSDT Personalizada';

  @override
  String get presetSsdt => 'SSDT Pré-configurada';

  @override
  String get cpuTypeLabel => 'Tipo de CPU:';

  @override
  String get platformTypeLabel => 'Tipo de Plataforma:';

  @override
  String get selectAll => 'Marcar Todos';

  @override
  String get basicOfficialRecommend => '* Básico (Recomendado Oficial)';

  @override
  String get recommendFixes => '* Recomendado (Correção de Recursos)';

  @override
  String get optionalEnhancements => '* Opcional (Melhorias)';

  @override
  String get personalizedPlatformTip =>
      'Tipo de CPU, plataforma e informações foram detectados do hardware; ajuste manualmente abaixo se necessário.';

  @override
  String get pciPathLabel => 'Caminho PCI da GPU:';

  @override
  String get pciPathHint => 'Digite o Caminho PCI';

  @override
  String get spoofGpuIdLabel => 'ID de Simulação da GPU:';

  @override
  String get selectSpoofGpuPlaceholder => 'Selecione a GPU para simular';

  @override
  String get gpuSpoofDataLoadError =>
      'Falha ao carregar dados de simulação de GPU';

  @override
  String get injectEdidTitle =>
      'Injetar EDID do Monitor (256 ou 512 caracteres hex):';

  @override
  String get injectEdidHint =>
      'Digite o EDID do Monitor (formato hex, espaços permitidos)';

  @override
  String get edidHexError => 'EDID data contains non-hexadecimal characters!';

  @override
  String get edidLengthError => 'EDID length is not a multiple of 256!';

  @override
  String get edidInvalidToast =>
      'Os dados de EDID são inválidos, verifique antes de inserir!';

  @override
  String get details => 'Detalhes';

  @override
  String get clearAllSelection => 'Limpar Seleção';

  @override
  String applySelected(Object count) {
    return 'Aplicar Seleção ($count itens)';
  }

  @override
  String get getModdedOclp => 'Obter OCLP Modificado';

  @override
  String get getIntelModdedOclp => 'Obter OCLP Modificado para Intel';

  @override
  String get soundDriverCardTitle => 'Driver de Áudio:';

  @override
  String get soundDriverDefaultTip => '(Padrão usa AppleALC)';

  @override
  String get hpetAcpiPathTitle => 'Caminho ACPI HPET (Correção IRQ de Áudio):';

  @override
  String selectAudioLayoutTitle(Object published, Object version) {
    return 'Selecionar Layout ID de Áudio (BD: $published v$version)';
  }

  @override
  String get pickerScrollConfirmTip => '(Role a roda e clique em confirmar)';

  @override
  String get nicDriverCardTitle => 'Driver de Rede:';

  @override
  String get nicDriverDefaultTip => '(Padrão sem driver de rede)';

  @override
  String get wifiBtCardTitle => 'Driver Wi-Fi e Bluetooth:';

  @override
  String get wifiBtDefaultTip =>
      '(Padrão sem driver Wi-Fi, adicione se necessário)';

  @override
  String get usbCardTitle => 'Driver USB:';

  @override
  String get usbDefaultTip => '(Padrão usa USBInjectAll)';

  @override
  String get selectUtbMap => 'Selecionar UTBMap';

  @override
  String get selectUtbMapHint =>
      'Selecione o UTBMap.kext criado pelo USBToolBox';

  @override
  String get releaseUsbOwnershipText =>
      'Ativar quirk \'UEFI->Quirks->ReleaseUsbOwnership\' para liberar controle USB do firmware...';

  @override
  String get bootArgsCardTitle => 'Parâmetros de Inicialização:';

  @override
  String get bootArgsDefaultTip =>
      '(Padrão ativa modo -v, desmarque se não necessário)';

  @override
  String get debugCategory => 'Depuração';

  @override
  String get amfiSipCategory => 'AMFI/SIP';

  @override
  String get igpuCategory => 'iGPU';

  @override
  String get dgpuCategory => 'dGPU';

  @override
  String get blackScreenFixCategory => 'Correção de Tela Preta';

  @override
  String get above4gCategory => 'Above 4G Decoding';

  @override
  String get touchpadFixCategory => 'Correção de Touchpad';

  @override
  String get othersCategory => 'Outros';

  @override
  String get optionalKextsCardTitle => 'Kexts Opcionais:';

  @override
  String get optionalKextsDefaultTip =>
      '(Drivers opcionais, adicione apenas se necessário)';

  @override
  String get graphicsCategory => 'Vídeo';

  @override
  String get powerManagementCategory => 'Gerenciamento de Energia';

  @override
  String get sleepCategory => 'Repouso/Hibernação';

  @override
  String get diskCategory => 'Disco';

  @override
  String get cpuCategory => 'CPU';

  @override
  String get amdPlatformCategory => 'Plataforma AMD';

  @override
  String get usbCategory => 'USB';

  @override
  String get sdCardCategory => 'Cartão SD';

  @override
  String get optionalSettingsCardTitle => 'Configurações Opcionais:';

  @override
  String get optionalSettingsDefaultTip => '(Geralmente mantenha o padrão)';

  @override
  String get tabBrand => 'Marca';

  @override
  String get tabSpecialMotherboard => 'Placa-Mãe Especial';

  @override
  String get tabSipSetting => 'Configuração SIP';

  @override
  String get tabCpuRename => 'Renomear CPU';

  @override
  String get tabUiScale => 'Escala de UI OpenCore';

  @override
  String get tabAcpiConfig => 'Configuração ACPI';

  @override
  String get tabBooterConfig => 'Configuração Booter';

  @override
  String get tabKernelConfig => 'Configuração Kernel';

  @override
  String get tabUefiConfig => 'Configuração UEFI';

  @override
  String get processEfiTitle => 'Processar EFI';

  @override
  String get processEfiSubTitle =>
      '(Reprocessar EFI configurada pelo RapidEFI)';

  @override
  String get processEfiExpanderText =>
      'A EFI configurada pela ferramenta RapidEFI gerará um arquivo chamado configModel na pasta de saída. Importe este arquivo aqui para editar novamente a EFI atual.\n\nEste recurso suporta apenas RapidEFI V3.0.0 e superior.';

  @override
  String get clearCurrentConfig => 'Limpar Configuração Atual';

  @override
  String get importConfigModelFile => 'Importar Arquivo configModel';

  @override
  String get importingConfigModel => 'Importando configModel...';

  @override
  String get releaseToReimport => 'Solte o mouse para reimportar o configModel';

  @override
  String get dragConfigModelArea =>
      'Arraste o arquivo configModel para cá\nou clique para selecionar o arquivo';

  @override
  String get importFailedToast =>
      'Os dados de configuração importados são inválidos. Reimporte um arquivo configModel válido.';

  @override
  String get changeEfiTitle => 'Alterar Título da EFI';

  @override
  String get modifyCurrentEfiName => 'Modificar Nome Atual da EFI';

  @override
  String originalEfiName(String name) {
    return 'Nome Original da EFI: $name';
  }

  @override
  String get enterModifiedName => 'Por favor, digite o nome modificado';

  @override
  String get deleteRecord => 'Apagar este registro';

  @override
  String get exportThisEfi => 'Exportar esta EFI';

  @override
  String get releaseToIdentifyHardware =>
      'Solte para identificar automaticamente o relatório de hardware e as tabelas ACPI';

  @override
  String get dragHardwareReportHere =>
      'Arraste a pasta do relatório de hardware exportado pela ferramenta aqui\n(identifica automaticamente sysInfo.txt e o diretório ACPI)';

  @override
  String get invalidHardwareReportToast =>
      'Arquivo de relatório de hardware válido não reconhecido';

  @override
  String optionalSuffix(String title) {
    return '$title (Opcional)';
  }

  @override
  String get notSelected => 'Não selecionado';

  @override
  String get verifyingAdminPassword => 'Verificando senha de administrador...';

  @override
  String get hardwareReportAcpiMissing =>
      'Relatório de hardware externo importado, mas diretório de tabela ACPI não fornecido, SSDT não pode ser personalizado.';

  @override
  String get hwMemory => 'Memória';

  @override
  String get hwCompatible => 'Compatível';

  @override
  String hwDeviceID(String id) {
    return 'ID do Dispositivo: $id';
  }

  @override
  String hwType(String type) {
    return 'Tipo: $type';
  }

  @override
  String hwCapacity(String cap) {
    return 'Capacidade: $cap';
  }

  @override
  String hwInterface(String bus) {
    return 'Interface: $bus';
  }

  @override
  String hwModel(String model) {
    return 'Modelo: $model';
  }

  @override
  String get hwStorage => 'Armazenamento';

  @override
  String get hwStorageController => 'Controladora\nde Armaz.';

  @override
  String get hwBluetooth => 'Bluetooth';

  @override
  String get hwAudioCard => 'Placa de Áudio';

  @override
  String get hwAudioLayoutId => 'ID de Layout:';

  @override
  String get hwNetworkCard => 'Placa de Rede';

  @override
  String get hwMonitor => 'Monitor';

  @override
  String hwResolution(String res, String hz) {
    return 'Resolução: $res @ $hz Hz';
  }

  @override
  String hwMonitorSize(String size) {
    return '($size\")';
  }

  @override
  String hwConnectedGpu(String gpu) {
    return 'GPU Conectada: $gpu';
  }

  @override
  String get hwInput => 'Entrada';

  @override
  String get hwSDCard => 'Cartão SD';

  @override
  String hwDevice(String dev) {
    return 'Dispositivo: $dev';
  }

  @override
  String hwSerialNumber(String sn) {
    return 'Número de Série: $sn';
  }

  @override
  String hwBuiltIn(String builtin) {
    return 'Integrado: $builtin';
  }

  @override
  String hwSecureBoot(String status) {
    return 'Secure Boot: $status';
  }

  @override
  String hwCSM(String status) {
    return 'CSM: $status';
  }

  @override
  String hwResizableBar(String status) {
    return 'Resizable BAR: $status';
  }

  @override
  String hwAbove4G(String status) {
    return 'Above 4G Decoding: $status';
  }

  @override
  String hwAHCI(String status) {
    return 'AHCI: $status';
  }

  @override
  String get hwAHCIUnknown => 'AHCI: Desconhecido';

  @override
  String get hwEnabled => 'Ativado';

  @override
  String get hwDisabled => 'Desativado';

  @override
  String get hwCurrentBiosSettings => 'Configurações Atuais da BIOS';

  @override
  String get hwBiosNote =>
      'Notas para Hackintosh:\n1. Para textos em vermelho, certifique-se de alterá-los na BIOS para mantê-los azuis.\n2. Textos em azul indicam as configurações recomendadas na maioria dos casos.\nSecure Boot: Deve estar desativado (caso contrário, bootloaders não assinados como o OC não iniciam).\nCSM: Recomendado desativar (iGPUs Intel 4ª/5ª gen mobile, X99, e algumas RX460 podem precisar de CSM ativado para evitar problemas visuais).\nResizable BAR: Recomendado desativar na BIOS (se não for possível, certifique-se de configurar ResizeAppleGpuBars para 0 em Booter->Quirks).\nAbove 4G Decoding: Recomendado ativar na BIOS e remover npci=0x2000. Se a opção não existir, use npci=0x2000 ou npci=0x3000. Nunca use os dois juntos!\nAHCI (Modo SATA): Deve estar ativado (caso contrário, discos não serão reconhecidos).';

  @override
  String hwBit(String arch) {
    return '$arch Bits';
  }

  @override
  String get hwVirtualizationEnabled => 'Virtualização: Ativado';

  @override
  String get hwVirtualizationDisabled => 'Virtualização: Desativado';

  @override
  String hwCoresThreads(String cores, String threads) {
    return '$cores Núcleos $threads Threads';
  }

  @override
  String hwInstructionSet(String simd) {
    return 'Conjunto de Instruções: $simd';
  }

  @override
  String hwCore(String core) {
    return 'Núcleo: $core';
  }

  @override
  String hwSpoofIDRequired(String id) {
    return 'Falsificar ID Necessário: $id';
  }

  @override
  String get hwGPU => 'Placa de Vídeo';

  @override
  String get hwIncompatible => 'Incompatível';

  @override
  String hwDeviceType(String type) {
    return '$type';
  }

  @override
  String get hwMotherboard => 'Placa Mãe';

  @override
  String hwBrand(String brand) {
    return 'Marca: $brand';
  }

  @override
  String hwChipset(String chipset) {
    return 'Chipset: $chipset';
  }

  @override
  String get hwAppleALCSnippet =>
      'AppleALC suporta múltiplos IDs de layout. Diferentes IDs podem afetar a disponibilidade da interface de áudio.';

  @override
  String get manualNvidiaInfoText =>
      'As séries de GPUs Nvidia suportadas são:\n• Série Tesla (série 8000 - 300): Suporte nativo até macOS High Sierra 10.13.x (pode precisar de correção NVCAP), versões mais recentes exigem patch OCLP (sem suporte a Metal)\nExemplos: 8600GT, 9600GT, GT210, GT220, GT240, etc. Muito antigas, não recomendado!\n• Série Kepler (série 600 - 800): Suporte nativo até macOS Big Sur 11.x, versões mais recentes exigem patch OCLP (suporta Metal, driver real)\nNúcleo Kepler: GT630, GT635, GT640, GTX650, GTX660, GTX680, GT710, GT720, GT730, GT740, GTX760, GTX Titan Z, GTX Titan Black, etc.\nPlacas profissionais Kepler: NVS 510, Quadro 410, Quadro K420, Quadro K600, Quadro K2000, etc.\n• Séries Fermi, Maxwell, Pascal: Suporte Webdriver até macOS High Sierra 10.13.x. Para macOS Big Sur 11.x ou superior, marque os argumentos de boot abaixo e aplique o patch OCLP (sem suporte a Metal, driver falso)\nSérie Fermi: GT605, GT610, GT620, GT630, GT705, GT710, GT720, GT730, GT740, etc.\nSérie Maxwell: GTX750, GTX750Ti, GTX950, GTX960, GTX970, GTX980, etc.\nSérie Pascal: GTX1050, GTX1060, GTX1070, GTX1080, etc.\nSéries Nvidia não suportadas (série 11 e superior NÃO são suportadas):\n• Séries 16 ~ 50: GTX1650, GTX1660, RTX 2050, RTX 2060, RTX 3050, RTX 3060, RTX 4050, RTX 4060, RTX 5060, RTX 5070, etc.';

  @override
  String get manualEdidInfoText =>
      '1. Usado geralmente para corrigir o problema de tela preta/sem sinal da iGPU Intel 6ª-10ª Ger (EDID de dGPU não é tratado aqui). (Sintoma: O Caps Lock funciona, mas o monitor fica sem sinal)\n2. Para placas-mãe de desktop série 500 (H510/B560/H570/Q570/Z590/W580) usando saída HDMI da iGPU, injetar o EDID real do monitor é obrigatório, caso contrário a tela preta é quase certa.\n3. Como obter o EDID do monitor:\nNo Windows, use a ferramenta RapidEFI ou hdinfo para obter o EDID (você pode usar outras ferramentas, mas precisará formatar o EDID manualmente):\n1). Abra o RapidEFI v4.x ou superior, clique em \"Configurar EFI\" -> \"Auto Configurar EFI\" -> \"Configuração Detalhada\" (ou clique em \"Configuração Detalhada\" se usar hdinfo).\n2). Aguarde a detecção automática do hardware concluir, depois clique no código EDID próximo à seção Monitor para obtê-lo (aparecerá um aviso de copiado para a área de transferência).\n3). Retorne a esta página e cole o EDID na caixa de texto.\n4. Antes de injetar o EDID, marque a interface AAPL0X desejada em \"Configurações Avançadas\"; se não tiver certeza, escolha de acordo com o plano real de correção de HDMI.\n5. Os dados EDID geralmente têm 128 bytes (256 caracteres hex) ou 256 bytes (512 caracteres hex). Se não for o caso, verifique antes de inserir!';

  @override
  String manualIgpuConnectorSupported(String fb) {
    return 'Framebuffer Atual: $fb. Gerando framebuffer-conX-alldata conforme docs do WhateverGreen.';
  }

  @override
  String get manualIgpuConnectorUnsupported =>
      'Framebuffer Atual não suporta recomendações estruturadas; exclua valores brutos e selecione uma config base de iGPU suportada.';

  @override
  String get manualAddConnectorTooltip => 'Adicionar Patch de Conector';

  @override
  String get manualConnectorLabel => 'Conector';

  @override
  String get manualIndexLabel => 'Índice';

  @override
  String get manualBusIdLabel => 'Bus ID';

  @override
  String get manualConnectorTypeLabel => 'Tipo';

  @override
  String manualOldConnector(String label) {
    return '$label (Legado)';
  }

  @override
  String manualDeleteConnectorTooltip(String index) {
    return 'Excluir patch con$index';
  }

  @override
  String get manualUnparseableValue => 'Valor bruto inanalisável';

  @override
  String get manualDeleteAndReadd =>
      'Exclua e readicione patches de conectores estruturados';

  @override
  String get manualDeleteUnparseableTooltip => 'Excluir patch inanalisável';

  @override
  String get manualBatteryDriver => 'Driver de Bateria';

  @override
  String get manualKeyboardTouchpadDriver => 'Driver de Teclado e Touchpad';

  @override
  String get manualSensorDriver =>
      'Driver de Sensor (Não recomendado, a menos que necessário)';

  @override
  String get manualKernelTrimStrategy => 'Estratégia de Trim SSD';

  @override
  String get manualKernelPowerManagement => 'Gerenciamento de Energia';

  @override
  String get manualKernelDummyPowerManagement =>
      'Desativar Gerenciamento de Energia (DummyPowerManagement), corrige reboots causados pelo gerenc. de energia do CPU. Para 4ª Ger e acima, é a alternativa preferida ao NullCpuPowerManagement.kext';

  @override
  String get manualKernelQuirksDefault =>
      'Kernel - Quirks é recomendado manter o padrão, a menos que necessário';

  @override
  String get manualUefiProvideConsoleGop =>
      'ProvideConsoleGop é ativado por padrão para corrigir a UI de boot do OpenCore não aparecendo. Se ainda não aparecer, tente desmarcar';

  @override
  String get manualUefiDriversHfs =>
      'UEFI-Drivers (Corrigir UI de boot do OpenCore devido ao driver HFS)';

  @override
  String get manualUefiOutputBootUI =>
      'UEFI - Output (Corrigir UI de boot do OpenCore não aparecendo)';

  @override
  String get manualSpecialMotherboardTip =>
      'Opcional - marque se sua placa-mãe corresponder à descrição';

  @override
  String get manualCsrSettingTip =>
      'Opcional - defina conforme necessidade, SIP desativado por padrão';

  @override
  String get manualRenameCpuNameTip => 'Opcional - personalizar nome do CPU';

  @override
  String get manualRenameCpuNameLabel =>
      'Inserir nome do CPU (deixe em branco para exibir nome do Windows):';

  @override
  String get manualRenameCpuNameHint => 'Insira o nome do CPU aqui';

  @override
  String get manualBrandTip =>
      'Opcional - marque se a marca corresponder à descrição';

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
      'Correção EB (Opcional - o padrão geralmente serve):';

  @override
  String get manualAcpiPatch => 'ACPI - Patch';

  @override
  String get manualAcpiSsdt => 'ACPI - SSDT';

  @override
  String get manualBluetoothNvram => 'Parâmetros NVRAM Bluetooth:';

  @override
  String get manualUsbWifiGithub => 'Visitar repositório de chris1111';

  @override
  String get manualUsbWifiKexts =>
      'Adicionar Kexts para WiFi USB (Nota: também instale o cliente Wireless USB Big Sur Adapter no macOS)';

  @override
  String get manualWifiCardSupport =>
      'Os drivers suportam macOS Mojave 10.14 ~ macOS Sequoia 15! Nota: Monterey 12 e acima exigem patch OCLP!!!';

  @override
  String get manualWifiAtheros => 'Qualcomm (Atheros)';

  @override
  String get manualWifiIntel => 'Intel';

  @override
  String get manualWifiBrcm => 'Broadcom (Brcm)';

  @override
  String get manualWifiBluetoothDriver => 'Driver Bluetooth';

  @override
  String get manualWifiItlwmPlan =>
      'Plano 2, usar itlwm (requer HeliPort). Conflita com o Plano 1, NÃO usar juntos!!!';

  @override
  String get manualWifiAirportItlwmPlan =>
      'Plano 1, usar AirportItlwm. Conflita com o Plano 2, NÃO usar juntos!!!';

  @override
  String get manualWifiAddAllDrivers =>
      'Adicionar todos os drivers WiFi (tamanho grande)';

  @override
  String get manualLaptopMainly => '(Principalmente para laptops)';

  @override
  String get manualLaptopRelatedDrivers => 'Drivers para laptops:';

  @override
  String get manualLaptopOtherFixes => 'Outras correções';

  @override
  String get manualLaptopOtherFixesTip =>
      'Outras correções (Não recomendado a menos que necessário)';

  @override
  String get manualMotherboardSelectAll => 'Selecionar Tudo / Nenhum';

  @override
  String get manualMotherboardDetails => 'Detalhes';

  @override
  String manualMotherboardSelectedCount(String selected, String total) {
    return '($selected/$total Selecionados)';
  }

  @override
  String manualMotherboardAppliedCount(String model, String count) {
    return 'Aplicadas $count configurações de $model';
  }

  @override
  String get manualMotherboardFromMbconfs => 'De mbconfs';

  @override
  String get manualIgpuRemark => '⚠️ Observação';

  @override
  String get manualIgpuSelectCpu => 'Selecionar CPU';

  @override
  String get manualIgpuLoadConfig => 'Carregar config iGPU do modelo do CPU';

  @override
  String get manualIgpuSelectProperties =>
      'Selecionar propriedades para aplicar';

  @override
  String get manualIgpuPresetScheme => 'Esquema Predefinido';

  @override
  String get manualIgpuSelectGen => 'Selecionar Geração';

  @override
  String manualIgpuSelectedCpu(String model, String igpu) {
    return 'Selecionado: $model  $igpu';
  }

  @override
  String get manualIgpuCpuModel => 'Modelo CPU';

  @override
  String get manualIgpuMatchOrNot => 'Marque se corresponder';

  @override
  String get manualIgpuCpuGen => 'Geração CPU';

  @override
  String get manualIgpuByCpuModel => 'Por Modelo de CPU';

  @override
  String get manualIgpuName => 'iGPU';

  @override
  String manualIgpuLoadedConfig(String model, String igpu, String count) {
    return 'Carregada config iGPU $igpu de $model, escrevendo $count propriedades';
  }

  @override
  String manualIgpuFromModel(String model, String igpu) {
    return 'De $model ($igpu)';
  }

  @override
  String get manualIgpuSelectInstruction =>
      'Selecione geração e modelo do CPU, depois marque as propriedades para aplicar';

  @override
  String get manualIgpuModel => 'Modelo';

  @override
  String get manualFakeGpuSelect => 'Selecione a GPU para falsificar (spoof)';

  @override
  String get settingsThemeColors => 'Tema de Cores';

  @override
  String get settingsThemeDefault => 'Padrão';

  @override
  String get sharedInvalidInput => 'Entrada inválida';

  @override
  String sharedRequiresHexChars(String length) {
    return 'Requer $length caracteres hexadecimais';
  }

  @override
  String get sharedExample73BF => 'Exemplo: 73BF';

  @override
  String get sharedTipsLengthMustMatch =>
      'O tamanho de tips deve coincidir com choices';

  @override
  String sharedCpuInfo(String description) {
    return '[Info do CPU]: \n$description';
  }

  @override
  String sharedMacosLastSupported(String version) {
    return 'Última Versão Nativa do macOS Suportada: $version';
  }

  @override
  String sharedBiosDisable(String description) {
    return '[Recomendado Desativar no BIOS]: \n$description';
  }

  @override
  String sharedOclpSupported(String version) {
    return 'Versão do macOS Suportada pelo Patch: $version';
  }

  @override
  String sharedBiosEnable(String description) {
    return '[Recomendado Ativar no BIOS]: \n$description';
  }

  @override
  String sharedMacosInitialSupport(String version) {
    return 'Versão Nativa Inicial do macOS Suportada: $version';
  }

  @override
  String get sharedInvalidAcpiPath => 'Caminho ACPI inválido';

  @override
  String get sharedFillAcpiPath => 'Preencha o caminho ACPI';

  @override
  String get sharedFillPciPath => 'Preencha o caminho PCI';

  @override
  String get sharedInvalidPciPath => 'Caminho PCI inválido';

  @override
  String get sharedGetModifiedOclp => 'Obter OCLP modificado';

  @override
  String hwConfigModelGenerated(String details) {
    return 'ConfigModel gerado: $details';
  }

  @override
  String hwGetInfoFailed(String e) {
    return 'Falha ao obter info de hardware: $e';
  }

  @override
  String get hwAdminPwdIncorrect =>
      'Senha de administrador incorreta, não é possível exportar tabelas ACPI';

  @override
  String get hwNoNativeInfoExportable =>
      'Sem informações de hardware nativas disponíveis para exportar';

  @override
  String get hwOutputtingOpencore => 'Gerando OpenCore EFI...';

  @override
  String hwAcpiExportFailedErr(String error) {
    return 'Falha na exportação das tabelas ACPI nativas: $error';
  }

  @override
  String get hwSsdtProcessFailed =>
      'Falha no processo de personalização do SSDT.';

  @override
  String get hwConfigRuleRefactoring =>
      'Regras de geração do ConfigModel de hardware em refatoração';

  @override
  String get hwQueryUnsupported =>
      'A plataforma atual não suporta consulta de informações de hardware';

  @override
  String hwPreparingSsdt(String items) {
    return 'Preparando para personalizar o SSDT: $items';
  }

  @override
  String get hwImportedExtReportHint =>
      'Este é um relatório de hardware externo importado, atualize as informações do hardware nativo antes de exportar';

  @override
  String get hwRefreshingInfo => 'Atualizando informações de hardware';

  @override
  String get hwSsdtProcessEnded =>
      'O processo de personalização do SSDT foi concluído.';

  @override
  String get hwInfoUnsupported =>
      'Informações de hardware atualmente não suportadas';

  @override
  String get hwEfiWrittenExtracting =>
      'EFI gravada, começando a extrair o ACPI e personalizar o SSDT...';

  @override
  String hwConfigEfiFailed(String error) {
    return 'Falha ao configurar EFI: $error';
  }

  @override
  String get hwReportFolderCleanFailed =>
      'Falha ao limpar a pasta de relatório de hardware';

  @override
  String hwReportFolderCleanFailedErr(String error) {
    return 'Falha ao limpar a pasta de relatório de hardware: $error';
  }

  @override
  String get hwExportingNativeReport =>
      'Exportando relatório de hardware nativo...';

  @override
  String get hwAdminAuthCanceled =>
      'Autorização do administrador cancelada, tabelas ACPI não exportadas';

  @override
  String get hwImportedNoAcpiDir =>
      'Relatório de hardware externo importado, mas sem o diretório das tabelas ACPI, personalização do SSDT desativada.';

  @override
  String get hwExportAcpiUnsupported =>
      'A plataforma atual não suporta a exportação de tabelas ACPI';

  @override
  String hwReportExportedTo(String reportDirectory, String msg) {
    return 'Relatório de hardware exportado para $reportDirectory, $msg';
  }

  @override
  String get hwInfoNotJson =>
      'O arquivo de informações de hardware não é um objeto JSON';

  @override
  String get hwUnsupported => 'Não suportado';

  @override
  String hwAcpiTempCleanFailed(String error) {
    return 'Falha ao limpar o diretório temporário das tabelas ACPI: $error';
  }

  @override
  String get hwEfiConfigDone => 'Configuração EFI concluída.';

  @override
  String hwEfiConfigError(String error) {
    return 'Erro ao configurar a EFI: $error';
  }

  @override
  String get hwNativeAcpiExportFailed =>
      'A exportação das tabelas ACPI nativas falhou';

  @override
  String get hwAcpiToolNotReady =>
      'A ferramenta de exportação ACPI não está pronta';

  @override
  String get hwFailed => 'Falha';

  @override
  String hwImportReportFailed(String e) {
    return 'Falha ao importar o relatório de hardware: $e';
  }

  @override
  String hwNativeAcpiExportDone(String dir) {
    return 'Exportação das tabelas ACPI nativas concluída: $dir';
  }

  @override
  String get hwAcpiExportFailedNoValid =>
      'Falha na exportação das tabelas ACPI: Nenhuma tabela ACPI válida foi encontrada';

  @override
  String get hwUsingOriginalSsdt =>
      'Usando SSDT original do EFI, ignorando a personalização do SSDT.';

  @override
  String get hwWaitingRefresh =>
      'Aguardando atualização de informações de hardware';

  @override
  String get hwInfoLoaded => 'Informações de hardware carregadas com sucesso';

  @override
  String hwAcpiExportedTo(String path) {
    return 'Tabelas ACPI exportadas para $path';
  }

  @override
  String get hwStartConfigEfi => 'Iniciando a configuração da EFI...';

  @override
  String get hwInfoLoadFailed => 'Falha ao carregar as informações do hardware';

  @override
  String get hwCache => 'Cache';

  @override
  String get hwInfoImportDone =>
      'Importação de informações de hardware concluída';

  @override
  String hwReportAndAcpiExported(String reportDirectory) {
    return 'Relatório de hardware e tabelas ACPI exportados para $reportDirectory';
  }

  @override
  String get hwAcpiDirInvalid =>
      'O diretório das tabelas ACPI é inválido, personalização do SSDT indisponível';

  @override
  String get hwExportingNativeAcpi => 'Exportando tabelas ACPI nativas...';

  @override
  String get hwGeneratingConfigModel =>
      'Gerando ConfigModel com base nas informações de hardware...';

  @override
  String get hwInfoImported => 'Informações de hardware importadas';

  @override
  String get hwAcpiExportFailedOrUnsup =>
      'Falha ou falta de suporte na exportação das tabelas ACPI';

  @override
  String get hwReportFolderCreateFailed =>
      'Falha ao criar pasta de relatório de hardware';

  @override
  String get hwNoAdminPwd =>
      'Senha de administrador não inserida, tabelas ACPI não podem ser exportadas';

  @override
  String get hwEfiConfigFailedCheck =>
      'Falha na configuração da EFI, verifique o caminho de saída ou os logs.';

  @override
  String get hwLoadingInfo => 'Carregando informações de hardware';

  @override
  String get hwDone => 'Concluído';

  @override
  String get hwAcpiExportFailedProcess =>
      'A exportação das tabelas ACPI falhou: Falha na execução do processo de exportação';

  @override
  String get hwIgpuType => 'Gráfico Integrado (iGPU)';

  @override
  String get hwGpuCompatible => 'Compatível';

  @override
  String get hwGpuIncompatibleNoDisplay => 'Incompatível, sem vídeo direto';

  @override
  String get hwGpuIncompatible => 'Incompatível';

  @override
  String get hwLaptop => 'Notebook';

  @override
  String get hwGpuLoadingCompat => 'Carregando compatibilidade';

  @override
  String get hwGpuLimitedCompat => 'Compatibilidade Limitada';

  @override
  String get hwClickToCopy => 'Clique para copiar';

  @override
  String get hwCopiedToClipboard => 'Copiado para a área de transferência';
}
