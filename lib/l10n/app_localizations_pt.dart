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

  @override
  String get linkCantOpen => 'Não foi possível abrir o link';

  @override
  String get clickToCopy => 'Clique para copiar';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get gpuCard => 'GPU';

  @override
  String gpuDeviceId(String id) {
    return 'ID do Dispositivo: $id';
  }

  @override
  String gpuCoreCodename(String codename) {
    return 'Núcleo: $codename';
  }

  @override
  String get gpuCompatible => 'Compatível';

  @override
  String get gpuIncompatible => 'Incompatível';

  @override
  String get gpuIncompatibleNoDisplay => 'Incompatível, sem vídeo direto';

  @override
  String get gpuLimitedCompat => 'Compatibilidade Limitada';

  @override
  String get gpuLoadingCompat => 'Carregando compatibilidade';

  @override
  String gpuSpoofId(String id) {
    return 'ID de Spoof necessário: $id';
  }

  @override
  String get bootArgVerbose =>
      'Ativar modo detalhado -v (exibe saída de depuração durante a inicialização)';

  @override
  String get bootArgKeepsyms =>
      'Imprime símbolos do kernel durante travamentos para ajudar no diagnóstico. Normalmente usado com debug=0x100.';

  @override
  String get bootArgDebug0x100 =>
      'Impede reinicialização automática em caso de kernel panic, permitindo ver logs de travamento.';

  @override
  String get bootArgWatchdog0 =>
      'Desabilitar o watchdog para evitar reinicializações acidentais durante o debug de boot.';

  @override
  String get bootArgSlide0 =>
      'Desabilitar KASLR para corrigir conflitos de memória que causam kernel panics no boot inicial.';

  @override
  String get bootArgNoCompatCheck =>
      'Ignorar verificação de compatibilidade de modelo durante o boot para evitar o símbolo de proibido.';

  @override
  String get bootArgCpus1 =>
      'Habilitar apenas 1 núcleo de CPU (para CPUs de servidor X58/X79/X99/X299 com problemas de kernel panic).';

  @override
  String get bootArgBetaFix =>
      'Corrigir problemas que podem aparecer no macOS mais recente (principalmente Beta), como anomalias de áudio, Bluetooth e frequência de CPU.';

  @override
  String get bootArgAmfi0x80 =>
      'Desabilitar AMFI para GPUs mais recentes (HD4000+, GT710+ Kepler) ou ao aplicar patches de Wi-Fi. Não use com amfi_get_out_of_my_way=0x1. Requer SIP desabilitado.';

  @override
  String get bootArgAmfiGetOut =>
      'Desabilitar AMFI para GPUs antigas (ex: GT240) ou ao aplicar patches de Wi-Fi. Não use com amfi=0x80. Requer SIP desabilitado.';

  @override
  String get bootArgIpcControl =>
      'Corrigir travamentos de aplicativos (ex: Baidu Netdisk) após desabilitar AMFI. Requer SIP desabilitado.';

  @override
  String get bootArgAmfiPassBeta =>
      'Garantir que AMFIPass.kext funcione no macOS Tahoe 26 mais recente para continuar ignorando verificações de segurança AMFI.';

  @override
  String get bootArgRevpatch =>
      'Corrigir problemas de atualização OTA do macOS após desabilitar SIP ou SecureBootModel, e corrigir exibição de nome de CPU personalizado.';

  @override
  String get bootArgDisableGfxFirmware =>
      'Desabilitar o carregamento do Apple Graphics Firmware para evitar travamentos durante a inicialização (apenas iGPU Intel).';

  @override
  String get bootArgWegNoIgpu =>
      'Desabilitar iGPU Intel (recomendado quando o iGPU não pode ser ativado ou não suporta aceleração de hardware).';

  @override
  String get bootArgIgfxVesa =>
      'Desabilitar aceleração do iGPU Intel (use quando o sistema não iniciar após aplicar patch OCLP, apenas para debug).';

  @override
  String get bootArgIgfxRpsc =>
      'Corrigir e melhorar o desempenho do iGPU Intel (ex: codificação 4K HEVC, resolução e FPS).';

  @override
  String get bootArgIgfxMpc =>
      'Corrigir problemas de resolução do iGPU forçando a substituição máxima do clock de pixel, removendo os limites padrão do macOS.';

  @override
  String get bootArgGfxfw2 =>
      'Habilitar carregamento completo do firmware do iGPU para melhorar utilização e desempenho. Pode causar falha de boot — use com cautela.';

  @override
  String get bootArgCdclk =>
      'Corrigir kernel panic no Ice Lake de 10ª geração devido à frequência do Core Display Clock (CDCLK) muito baixa.';

  @override
  String get bootArgIgfxdbeo =>
      'Corrigir kernel panic no Ice Lake de 10ª geração onde o driver calcula incorretamente o tamanho da memória DVMT pré-alocada.';

  @override
  String get bootArgIceLakeDisplay =>
      'Corrigir corrupção de exibição de 7 a 15 segundos em laptops Ice Lake de 10ª geração no boot.';

  @override
  String get bootArgIgfxNoTelemetry =>
      'Desabilitar o carregamento do módulo de telemetria do iGPU durante o boot. Alguns laptops (especialmente Chromebooks) podem travar.';

  @override
  String get bootArgWegNoEgpu =>
      'Desabilitar GPU dedicada (recomendado quando o dGPU em laptops Intel dual-GPU — normalmente NVIDIA — não pode ser ativado).';

  @override
  String get bootArgNvDisable =>
      'Desabilitar driver NVIDIA (somente para depurar GPUs NVIDIA incompatíveis).';

  @override
  String get bootArgUnfairGva =>
      'Corrigir suporte DRM de hardware em GPUs AMD (habilita conteúdo protegido por DRM como streaming em GPUs AMD suportadas).';

  @override
  String get bootArgRadpg15 =>
      'Corrigir corrupção de exibição (tela embaralhada/amarela) em GPUs AMD antigas (HD7750, HD7850 com núcleos GCN).';

  @override
  String get bootArgAmdNoAccel =>
      'Desabilitar aceleração GPU ATI/AMD (use quando o sistema não iniciar após o patch OCLP, apenas para debug).';

  @override
  String get bootArgRaddvi =>
      'Corrigir saída DVI em GPUs AMD antigas (290X, 370, etc.).';

  @override
  String get bootArgRadcodec =>
      'Corrigir suporte a codificação de vídeo de hardware VDA para GPUs AMD não suportadas oficialmente (ex: RX550 Lexa).';

  @override
  String get bootArgNgfxFermi =>
      'Corrigir problemas de driver GPU para placas NVIDIA antigas Fermi/Maxwell/Pascal (GT610, GTX750, GTX960, GTX1050) no macOS Big Sur 11+. Deve aplicar patch OCLP após entrar no sistema! Kepler NÃO precisa disto.';

  @override
  String get bootArgApplbkl3 =>
      'Habilitar controle de retroiluminação PWM para GPUs AMD Radeon RX 5000.';

  @override
  String get bootArgAgdpmodIgnore =>
      'Corrigir tela preta ou problemas de exibição em algumas GPUs ignorando completamente as restrições do AppleGraphicsDevicePolicy.kext. Use com WhateverGreen.kext.';

  @override
  String get bootArgAgdpmodPikera =>
      'Corrigir tela preta no boot para GPUs AMD Navi RX5XXX/RX6XXX (RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.). Use com WhateverGreen.kext.';

  @override
  String get bootArgAgdpmodVit9696 =>
      'Corrigir tela preta após suspensão/retomada em GPUs RX470/RX570 desabilitando a verificação board-id. Use com WhateverGreen.kext.';

  @override
  String get bootArgAmdNoDgpuAccel =>
      'Corrigir tela preta no Ventura+ para GPUs AMD RX5XX/RX5XXX/RX6XXX em Intel 3ª geração ou mais antigo. Aplicar patch OCLP após iniciar, depois remover este argumento.';

  @override
  String get bootArgBrcmfx =>
      'Corrigir velocidade lenta em alguns cartões Wi-Fi Broadcom alterando o código de país para HK. Também é possível melhorar alterando o canal do roteador.';

  @override
  String get bootArgVsmcgen =>
      'Corrigir travamento de código ramrod e problemas de corrupção do emulador SMC.';

  @override
  String get bootArgSwdPanic =>
      'Evitar reinicialização do dispositivo após o sono para ajudar a coletar logs de kernel panic e depurar problemas de suspensão.';

  @override
  String get bootArgCtrsmt =>
      'Melhorar a detecção de topologia e agendamento para CPUs híbridos Intel 12ª geração+ (P+E). O ganho de desempenho não é garantido — teste antes de ativar. Requer CpuTopologyRebuild.kext.';

  @override
  String get bootArgDarkwake0 =>
      'Desabilitar completamente o modo Darkwake e usar o modo de sono tradicional. Corrige principalmente tela preta ao acordar e despertar automático.';

  @override
  String get bootArgForceRenderStandby =>
      'Desabilitar o modo de espera de renderização RC6 do iGPU para corrigir kernel panic NVMe causado pelo RC6 do iGPU durante o sono.';

  @override
  String get bootArgI2cForcePolling =>
      'Forçar o touchpad I2C a usar o modo de polling em vez do modo de interrupção (o modo de interrupção geralmente requer personalização SSDT).';

  @override
  String get kextLiluDesc =>
      'Driver base obrigatório que fornece extensibilidade e compatibilidade para o macOS. Todos os kexts de plugin dependem dele.';

  @override
  String get kextVirtualSMCDesc =>
      'Emulador SMC obrigatório. Simula o SMC da Apple em hardware não-Apple, fornecendo sensores, controle de ventilador e gerenciamento de energia. O macOS não pode funcionar sem isso.';

  @override
  String get kextWhateverGreenDesc =>
      'Suporte ao driver de GPU. Fortemente recomendado para a maioria dos usuários. MacPro7,1 com dGPUs AMD (RX460, RX560+) pode desmarcar. Normalmente conflita com NootRX/NootedRed — não selecionar juntos na instalação.';

  @override
  String get kextAppleALCDesc =>
      'Usar AppleALC para falsificar o codec de áudio integrado (solução mais completa, escolha preferida).';

  @override
  String get kextVoodooHDADesc =>
      'Driver de áudio universal VoodooHDA (carregado no boot, apenas suporta macOS Big Sur 11.2.3 e abaixo; versões superiores requerem injeção no diretório de extensões do kernel do sistema).';

  @override
  String get kextUSBInjectAllDesc =>
      'Solução de injeção USB genérica, a escolha padrão quando a personalização USB não foi feita.';

  @override
  String get kextUSBToolBoxDesc =>
      'Solução USBToolBox, normalmente usada juntamente com um UTBMap.kext personalizado.';

  @override
  String get kextBatteryV1Desc =>
      'Solução de driver de bateria 1 (para laptops com Intel 3ª geração ou plataformas mais antigas).';

  @override
  String get kextBatteryV2Desc =>
      'Solução de driver de bateria 2 (para laptops com Intel 3ª geração ou plataformas mais recentes).';

  @override
  String get kextAmbientLightDesc =>
      'Sensor de luz ambiente (brilho automático da tela). Não use se não tiver sensor de luz ambiente, pois pode causar problemas.';

  @override
  String get kextAsusNBFnKeysDesc =>
      'Controle de ventilador, gerenciamento de energia e outras otimizações de sensor do sistema para laptops ASUS. Não recomendado para máquinas não-ASUS.';

  @override
  String get kextLenovoDesc =>
      'Controle de ventilador, gerenciamento de energia e outras otimizações de sensor para laptops Lenovo. Não recomendado para máquinas não-Lenovo.';

  @override
  String get kextDellDesc =>
      'Sensor dedicado para laptops Dell para monitoramento e controle mais preciso do ventilador. Não recomendado para máquinas não-Dell.';

  @override
  String get kextNootRXDesc =>
      'Suporte a dGPUs RX6XXX não suportadas oficialmente (RX6700, RX6750XT, RX6750GRE, etc.). Conflita com WhateverGreen — não selecionar juntos na instalação.';

  @override
  String get kextBatteryFixDesc =>
      'Correção de leitura de bateria, repara certos problemas de exibição de bateria.';

  @override
  String get kextNVMeFixDesc =>
      'Melhorar compatibilidade para SSDs NVMe não-Apple e reduzir consumo de energia em repouso. Discos NVMe incompatíveis podem ainda travar. SSDs compatíveis podem sofrer kernel panic com este driver — use com cautela.';

  @override
  String get kextFeatureUnlockDesc =>
      'Desbloquear Controle Universal, Sidecar e outros recursos em modelos de Mac não suportados.';

  @override
  String get kextHibernationFixDesc =>
      'Corrigir problemas comuns relacionados à hibernação e suspensão.';

  @override
  String get kextHoRNDIS =>
      'Permitir que o macOS use o compartilhamento de rede de dispositivos Android via USB.';

  @override
  String get kextCPUFriendDesc =>
      'Driver de escalonamento de frequência de CPU, fornecendo principalmente suporte de escalonamento para MacPro7,1 em plataformas de 11ª geração e mais recentes.';

  @override
  String get kextCPUFriendDataProviderDesc =>
      'Driver de dados complementar do CPUFriend, fornecendo dados de escalonamento de frequência de CPU para modelos de máquinas específicos.';

  @override
  String get kextAppleIGHDA =>
      'Corrigir problemas de áudio HDMI do iGPU Intel em alguns sistemas.';

  @override
  String get kextNoTouchID =>
      'Corrigir incapacidade de fazer login no Apple ID e iCloud, geralmente para laptops sem placa de rede cabeada.';

  @override
  String get kextAppleRTCDesc =>
      'Corrigir conflitos entre AppleRTC do macOS e BIOS do PC em plataformas mais recentes, como travamentos, reinicializações repentinas ou despertar imediato do sono.';

  @override
  String get kextPS2KBMouseDesc =>
      'Driver de teclado e mouse PS/2 (para placas-mãe de desktop com portas PS/2 redondas).';

  @override
  String get kextPS2KeyboardDesc =>
      'Driver de teclado PS/2 (para placas-mãe de desktop com portas PS/2 redondas de teclado).';

  @override
  String get kextPS2MouseDesc =>
      'Driver de mouse PS/2 (para placas-mãe de desktop com portas PS/2 redondas de mouse).';

  @override
  String get kextMicrosoftSurfaceDesc =>
      'Driver dedicado de teclado e trackpad para Microsoft Surface.';

  @override
  String get kextBrightnessKeysDesc => 'Correção de tecla de atalho de brilho.';

  @override
  String get kextGenericUSBXHCIDesc =>
      'Correção de compatibilidade do controlador USB 3.0 para plataformas antigas ou AMD.';

  @override
  String get kextXLNCUSBFixDesc =>
      'Corrigir problemas de compatibilidade do controlador USB em plataformas AMD antigas (FM1/FM2/AM3).';

  @override
  String get kextRealtekCardReaderDesc =>
      'Driver de leitor de cartão SD Realtek (use com RealtekCardReaderFriend).';

  @override
  String get kextRadeonSensorDesc =>
      'Otimizar o desempenho da GPU AMD Radeon, mas pode causar travamentos ou falha de inicialização em alguns cenários — use com cautela.';

  @override
  String get hwStatusIdle =>
      'Aguardando atualização das informações de hardware';

  @override
  String get hwStatusLoading => 'Carregando informações de hardware';

  @override
  String get hwStatusRefreshing => 'Atualizando informações de hardware';

  @override
  String get hwStatusComplete => 'Informações de hardware carregadas';

  @override
  String get hwStatusFailed => 'Falha ao carregar informações de hardware';

  @override
  String get hwStatusUnsupported => 'Informações de hardware não suportadas';

  @override
  String get hwStatusImported => 'Informações de hardware importadas';

  @override
  String get hwPlatformUnsupported =>
      'A plataforma atual não suporta consulta de informações de hardware';

  @override
  String hwFetchFailed(String error) {
    return 'Falha ao obter informações de hardware: $error';
  }

  @override
  String get hwExportWarning =>
      'Este é um relatório importado. Atualize as informações de hardware local antes de exportar.';

  @override
  String get hwNoLocalInfo =>
      'Nenhuma informação de hardware local disponível para exportar';

  @override
  String get hwFolderCleanFailed =>
      'Falha ao limpar pasta de relatório de hardware';

  @override
  String hwFolderCleanFailedWithErr(String error) {
    return 'Falha ao limpar pasta de relatório de hardware: $error';
  }

  @override
  String get hwFolderCreateFailed =>
      'Falha ao criar pasta de relatório de hardware';

  @override
  String get hwExporting => 'Exportando relatório de hardware local...';

  @override
  String hwExportSuccess(String path) {
    return 'Relatório de hardware e tabelas ACPI exportados para $path';
  }

  @override
  String hwExportSuccessWithErr(String path, String error) {
    return 'Relatório de hardware exportado para $path, $error';
  }

  @override
  String get hwAcpiExporting => 'Exportando tabelas ACPI locais...';

  @override
  String get hwAcpiExportFailed => 'Falha ao exportar tabelas ACPI locais';

  @override
  String hwAcpiExportSuccess(String path) {
    return 'Tabelas ACPI locais exportadas: $path';
  }

  @override
  String hwAcpiExportFailedWithErr(String error) {
    return 'Falha ao exportar tabelas ACPI locais: $error';
  }

  @override
  String get hwAcpiPlatformUnsupported =>
      'A plataforma atual não suporta exportação de tabelas ACPI';

  @override
  String get hwAcpiAuthCancelled =>
      'Autorização de administrador cancelada. Tabelas ACPI não exportadas.';

  @override
  String get hwAcpiNoPassword =>
      'Nenhuma senha de administrador fornecida. Não é possível exportar as tabelas ACPI.';

  @override
  String get hwAcpiWrongPassword =>
      'Senha de administrador incorreta. Não é possível exportar as tabelas ACPI.';

  @override
  String get hwImportNotJson =>
      'O arquivo de informações de hardware não é um objeto JSON';

  @override
  String get hwImportSuccess => 'Informações de hardware importadas';

  @override
  String get hwImportAcpiInvalid =>
      'Diretório de tabelas ACPI inválido. SSDT personalizado indisponível.';

  @override
  String hwImportFailed(String error) {
    return 'Falha ao importar relatório de hardware: $error';
  }

  @override
  String get hwConfigStart => 'Iniciando configuração do EFI...';

  @override
  String get hwConfigGenerating =>
      'Gerando ConfigModel a partir das informações de hardware...';

  @override
  String hwConfigSsdtPrep(String items) {
    return 'Preparando SSDT personalizado: $items';
  }

  @override
  String get hwConfigSsdtSkip =>
      'Usando SSDT original do EFI. Pulando SSDT personalizado.';

  @override
  String get hwConfigSsdtDisabled =>
      'Relatório de hardware externo importado sem diretório de tabelas ACPI. SSDT personalizado desativado.';

  @override
  String get hwConfigExporting => 'Exportando OpenCore EFI...';

  @override
  String hwConfigFailedMsg(String error) {
    return 'Falha na configuração do EFI: $error';
  }

  @override
  String get hwConfigRebuilding =>
      'Regras de geração automática do ConfigModel de hardware estão sendo refatoradas';

  @override
  String get cpuUnknown => 'Desconhecido';

  @override
  String get platDesktop => 'Desktop';

  @override
  String get platLaptop => 'Notebook';

  @override
  String get platMini => 'Mini PC';

  @override
  String get platServer => 'Servidor';

  @override
  String get csrEnabled =>
      'Ativar SIP para aumentar a segurança. Recomendado se não usar OCLP para patches de GPU/WiFi.';

  @override
  String get csrPartial => 'Desativar SIP (Opção 1)';

  @override
  String get csrPartialDesc =>
      'Desativar parcialmente o SIP. Recomendado para Big Sur ou superior ao usar OCLP para patches de GPU/WiFi.';

  @override
  String get csrFully => 'Desativar SIP (Opção 2)';

  @override
  String get csrFullyDesc =>
      'Desativar totalmente o SIP. Preferencial para Big Sur ou superior ao usar OCLP para patches de GPU/WiFi.';

  @override
  String get uiScaleAuto =>
      'Auto-adaptar: Ajusta automaticamente a escala da interface do OpenCore com base na resolução do monitor.';

  @override
  String get uiScaleStandard =>
      'Resolução padrão: Adequado para monitores 720p, 1080p, 1440p.';

  @override
  String get uiScaleHigh =>
      'Alta resolução: Adequado para monitores 4K/5K (corrige elementos de interface pequenos no OpenCore).';

  @override
  String get procDefault => 'Não modificar ProcessorType';

  @override
  String get procKeep => 'Manter a exibição padrão do tipo de CPU do sistema';

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
  String get brandLenovo => 'Lenovo';

  @override
  String get brandSony => 'VAIO';

  @override
  String get brandHp => 'HP';

  @override
  String get brandGoogle => 'Chromebook';

  @override
  String get brandMicrosoft => 'Microsoft Surface';

  @override
  String get mbNormal => 'Placa-mãe Padrão';

  @override
  String get mbOemUsb =>
      'Algumas placas-mãe OEM têm problemas de liberação de propriedade USB: falha no EHCI Hand-off';

  @override
  String get navAppGuide => 'Guia do App';

  @override
  String get appGuideTitle => 'Guia do Usuário RapidEFI';

  @override
  String get logMsg001 => '=> Falha ao encontrar LPC(B)! Operação encerrada!';

  @override
  String get logMsg002 =>
      'Nenhum DSDT válido encontrado! Selecione primeiro um arquivo DSDT ou um diretório de arquivos contendo DSDT!';

  @override
  String get logMsg003 =>
      'A preparação da ferramenta iasl falhou! Atualize ou use a ferramenta iasl integrada primeiro!';

  @override
  String get logMsg004 => 'Nenhum arquivo .aml válido encontrado!\\n';

  @override
  String get logMsg005 =>
      'Nenhum DSDT válido encontrado! Selecione primeiro um arquivo DSDT ou um diretório de arquivos contendo DSDT!';

  @override
  String get logMsg006 =>
      'Vários arquivos DSDT são detectados atualmente e apenas um pode ser processado por vez. Mantenha um arquivo DSDT, remova os outros e tente novamente.\\n';

  @override
  String get logMsg007 =>
      'Arquivo DSDT inválido! Selecione novamente um arquivo DSDT válido!';

  @override
  String logMsg008(String arg0) {
    return '$arg0 Falha na descompilação!\\n';
  }

  @override
  String logMsg009(String arg0) {
    return 'Resultado da compilação: $arg0';
  }

  @override
  String logMsg010(String arg0) {
    return 'Ocorreu um erro ao processar o tipo IntObj: $arg0';
  }

  @override
  String logMsg011(String arg0) {
    return 'Erro ao processar o tipo MethodObj: $arg0';
  }

  @override
  String get logMsg012 => 'Nenhuma informação de IRQ encontrada!';

  @override
  String get logMsg013 =>
      'As opções atuais ou IRQs personalizados estão vazios! Não foi possível gerar o patch IRQ!';

  @override
  String get logMsg014 => '=> Nenhuma informação de IRQ encontrada!';

  @override
  String get logMsg015 =>
      'Formato de lista de IRQ personalizado errado! ! ! Separe os dispositivos com espaços e os IRQs com vírgulas! ! !';

  @override
  String logMsg016(String arg0) {
    return '=> _Erro de análise HID: $arg0';
  }

  @override
  String get logMsg017 =>
      'Nenhum dispositivo válido encontrado, ignorando a operação HPET!';

  @override
  String get logMsg018 =>
      'Nenhum IRQ válido foi fornecido ou os IRQs estão vazios! Operação abortada!';

  @override
  String logMsg019(String arg0) {
    return '=> Não foi possível localizar $arg0._CRS! Operação encerrada!';
  }

  @override
  String logMsg020(String arg0) {
    return '=> Não foi possível localizar $arg0._CRS!';
  }

  @override
  String get logMsg021 => '=> _CRS parece ter sido nomeado XCRS!';

  @override
  String get logMsg022 =>
      '=> Desative a renomeação do dispositivo de _CRS para XCRS no DSDT e tente novamente após reiniciar!\\n';

  @override
  String get logMsg023 =>
      '=> Não foi possível determinar o tipo de acesso à memória!';

  @override
  String get logMsg024 =>
      '=> Não é possível converter Base ou Comprimento em número inteiro!';

  @override
  String get logMsg025 => '=> Não encontrado!';

  @override
  String logMsg026(String arg0, String arg1) {
    return '=> Usar valor padrão $arg0 => $arg1';
  }

  @override
  String get logMsg027 => '=> Não encontrado!';

  @override
  String get logMsg028 => '=> Nada para corrigir!';

  @override
  String logMsg029(String arg0, String arg1) {
    return 'Faltando o final do patch IRQ ($arg1) para $arg0! Ignorado…';
  }

  @override
  String get logMsg030 =>
      'Os itens a seguir podem não ser exclusivos e estão desabilitados por padrão! \\n';

  @override
  String get logMsg031 => 'Nenhum UID válido fornecido, aborte a operação!';

  @override
  String logMsg032(String arg0) {
    return '$arg0 é um UID personalizado que pode exigir personalização manual ou pode não ser compatível!';
  }

  @override
  String get logMsg033 =>
      'Nenhum caminho iGPU válido encontrado na tabela ACPI passada!\\n';

  @override
  String logMsg034(String arg0) {
    return 'Nota: o caminho do iGPU é estimado como $arg0\\n Verifique antes de usar!';
  }

  @override
  String logMsg035(String arg0) {
    return 'Nota: O caminho iGPU foi definido manualmente como $arg0. Certifique-se de confirmar se o caminho está correto antes de usar!';
  }

  @override
  String get logMsg036 =>
      '=> Dispositivo EC nomeado encontrado, não há necessidade de falsificação!\\n';

  @override
  String get logMsg037 =>
      'O patch de atributo USBX não pode estar vazio! Operação encerrada!';

  @override
  String get logMsg038 => 'Nenhum dispositivo processador válido encontrado!';

  @override
  String get logMsg039 =>
      '=> Um dispositivo PNP0B00 (RTC) válido foi encontrado e verificado, sem necessidade de patch ou SSDT! Operação encerrada!';

  @override
  String get logMsg040 =>
      '=> Dispositivo ACPI000E (AWAC) não encontrado, nenhum patch ou SSDT necessário! Operação encerrada!';

  @override
  String get logMsg041 =>
      '=> Nenhum dispositivo encontrado! Operação encerrada!';

  @override
  String get logMsg042 =>
      'Nenhuma correspondência encontrada para o seguinte caminho:';

  @override
  String get logMsg043 => 'Nenhuma correspondência encontrada!';

  @override
  String get logMsg044 =>
      'Observe que o caminho do dispositivo deve começar com o seguinte PciRoot() para corresponder à tabela ACPI atual:';

  @override
  String logMsg045(String arg0) {
    return '=> Não encontrado, não parece ser uma tabela $arg0 válida!\\n';
  }

  @override
  String logMsg046(String arg0) {
    return 'Valor $arg0 não encontrado! Operação abortada!';
  }

  @override
  String get logMsg047 =>
      'Redefinir valor do endereço de registro não encontrado! Operação abortada!';

  @override
  String logMsg048(String arg0) {
    return 'Não foi possível resolver o ID do processador em $arg0, cancelando o patch';
  }

  @override
  String logMsg049(String arg0) {
    return 'A primeira CPU em $arg0 já corresponde, não há necessidade de corrigir a tabela APIC!';
  }

  @override
  String get logMsg050 =>
      '=> Nenhuma correspondência para Processador encontrada! Operação abortada!';

  @override
  String get logMsg051 => 'Selecione o patch IMEI!';

  @override
  String logMsg052(String arg0) {
    return '=> Dispositivo IMEI encontrado em $arg0, não há necessidade de ponte para falsificação! Operação abortada!';
  }

  @override
  String get logMsg053 =>
      '=> Dispositivo raiz PCI não encontrado! Operação abortada!';

  @override
  String get logMsg054 =>
      '=> Falsificação de SSDT IMEI não está habilitado, o ID do dispositivo deve ser definido via DeviceProperties!';

  @override
  String get logMsg055 =>
      'Dispositivo UNC (PNP0A03) não encontrado! Nenhum patch SSDT-UNC é necessário! Operação abortada! \\n';

  @override
  String logMsg056(String arg0) {
    return '=> $arg0: O método _STA não existe!';
  }

  @override
  String get logMsg057 =>
      '=> Dispositivo DMA (PNP0200) não encontrado em nenhuma das tabelas ACPI acima! Operação abortada! \\n';

  @override
  String get logMsg058 =>
      '=> O método _PTS não foi encontrado, a entrada de agendamento _PTS e o patch de renomeação não serão gerados!';

  @override
  String get logMsg059 =>
      '=> O método _WAK não foi encontrado, a entrada de agendamento _WAK e o patch de renomeação não serão gerados!';

  @override
  String get logMsg060 =>
      '=> Método _PTS/_WAK programável não encontrado, SSDT-SleepHook ignorado!\\n';

  @override
  String get logMsg061 =>
      '=> Método _SST não encontrado em nenhuma das tabelas ACPI acima! Operação abortada! \\n';

  @override
  String get logMsg062 =>
      '=> O dispositivo PNP0C0D não foi encontrado em nenhuma das tabelas ACPI acima! Operação abortada! \\n';

  @override
  String get logMsg063 =>
      '=> O status do sistema não é suportado: [systemStatesNotSupported]';

  @override
  String get logMsg064 =>
      '=> Nota: O firmware atual não suporta o estado _S3. Se a configuração do BIOS não desabilitar a função S3, a máquina não suporta suspensão S3!';

  @override
  String get logMsg065 =>
      '=> Nota: Esta é uma máquina AOAC e o macOS não suporta suspensão S3!';

  @override
  String get logMsg066 =>
      '=> No momento não foi detectado se é uma máquina AOAC, confirme você mesmo!';

  @override
  String get logMsg067 =>
      'Valor de baixa potência S0 inativo (V5) não encontrado!';

  @override
  String get logMsg068 =>
      'Atualmente uma máquina AOAC, o macOS não suporta suspensão S3!';

  @override
  String get logMsg069 =>
      '=> Nome ou Método _S3 não encontrado, a configuração atual não suporta suspensão S3! A operação foi encerrada!';

  @override
  String logMsg070(String arg0) {
    return '=> Método $arg0 encontrado!';
  }

  @override
  String get logMsg071 =>
      '=> O método atual foi renomeado e pode não ser a tabela ACPI original! Obtenha novamente a tabela ACPI original e tente novamente!\\n';

  @override
  String get logMsg072 =>
      '=> O dispositivo LID (PNP0C0D) não foi encontrado em nenhuma das tabelas ACPI acima! Operação encerrada!\\n';

  @override
  String get logMsg073 =>
      '=> O método _LID não foi encontrado em nenhuma das tabelas ACPI acima! Operação encerrada!\\n';

  @override
  String get logMsg074 =>
      '=> O dispositivo PWRB (PNP0C0C) não foi encontrado na tabela ACPI acima! Apenas falso! \\n';

  @override
  String logMsg075(String arg0) {
    return '=> Não há necessidade de falsificar o dispositivo SLPB, o dispositivo PNP0C0E foi encontrado em $arg0!';
  }

  @override
  String logMsg076(String arg0) {
    return '=> Dispositivo PNP0C0E $arg0 possui método _STA!';
  }

  @override
  String logMsg077(String arg0) {
    return '=> Dispositivo PNP0C0E $arg0 não existe método _STA!';
  }

  @override
  String get logMsg078 =>
      '=> Nenhum dispositivo XHC/XHCI/XDCI/CNVW correspondente encontrado! Operação encerrada! \\n';

  @override
  String get logMsg079 => '=> Método GPRW não encontrado!';

  @override
  String get logMsg080 =>
      '=> Método XPRW encontrado! O método atual foi renomeado e pode não ser a tabela ACPI original! Obtenha novamente a tabela ACPI original e tente novamente!\\n';

  @override
  String get logMsg081 => '=> Método XPRW não encontrado! Operação encerrada!';

  @override
  String get logMsg082 => '=> Método UPRW não encontrado!';

  @override
  String get logMsg083 =>
      '=> Método XPRW encontrado! O método atual foi renomeado e pode não ser a tabela ACPI original! Obtenha novamente a tabela ACPI original e tente novamente!\\n';

  @override
  String get logMsg084 => '=> Método XPRW não encontrado! Operação encerrada!';

  @override
  String get logMsg085 =>
      '=> Dispositivo GPI0 não encontrado! Operação encerrada! \\n';

  @override
  String get logMsg086 =>
      '=> Método _STA não encontrado! Operação encerrada! \\n';

  @override
  String get logMsg087 =>
      '=> O esquema atual de nomenclatura do processador está em conformidade com a especificação de nomenclatura da CPU! Não há necessidade deste SSDT! A operação foi encerrada!';

  @override
  String get logMsg088 =>
      '=> Não há dispositivo PLTF, a plataforma Intel atual não requer este SSDT! A operação foi encerrada...';

  @override
  String get logMsg089 =>
      '=> Nenhum dispositivo de CPU que atenda aos requisitos foi encontrado, nenhum patch SSDT-CPUR foi necessário! Operação encerrada!';

  @override
  String get logMsg090 =>
      '=> Falsificação de SSDT IMEI não está habilitado, o ID do dispositivo deve ser definido via DeviceProperties!';

  @override
  String get logMsg091 =>
      'Nenhum caminho de dispositivo ACPI válido fornecido! Operação abortada!';

  @override
  String logMsg092(String arg0) {
    return 'O método _ON ou _OFF correspondente para $arg0 não foi encontrado em DSDT ou SSDT! Operação abortada!';
  }

  @override
  String logMsg093(String arg0) {
    return 'O método _PS3 ou _DSM correspondente a $arg0 não foi encontrado no DSDT ou SSDT! Operação abortada!';
  }

  @override
  String logMsg094(String arg0) {
    return '=> Existe um método _PRT para o dispositivo $arg0, que pode ter ocultado o dispositivo real e injetará um dispositivo ponte BRG0!';
  }

  @override
  String logMsg095(String arg0) {
    return '=> O dispositivo $arg0 não existe!';
  }

  @override
  String logMsg096(String arg0) {
    return 'O caminho atual do dispositivo $arg0 pode ocultar o dispositivo real!';
  }

  @override
  String logMsg097(String arg0) {
    return '=> Há um estouro no endereço _ADR do dispositivo da placa gráfica $arg0!';
  }

  @override
  String logMsg098(String arg0) {
    return '=> Volte para o caminho do dispositivo pai: $arg0 e injete um dispositivo ponte BRG0!';
  }

  @override
  String logMsg099(String arg0) {
    return 'Método de mascaramento desconhecido: $arg0, operação abortada.';
  }

  @override
  String logMsg100(String arg0) {
    return 'Alguns métodos não encontrados: $arg0';
  }

  @override
  String get logMsg101 =>
      '=> Não foi possível encontrar um dispositivo de barramento válido, a operação foi encerrada!';

  @override
  String get logMsg102 =>
      'Nenhum caminho ACPI válido da placa gráfica foi fornecido! Operação encerrada!';

  @override
  String get logMsg103 =>
      'Nenhum ID válido de placa gráfica falsificada foi fornecido! Operação encerrada!';

  @override
  String get logMsg104 =>
      'Nenhum nome válido de placa gráfica falsificada foi fornecido! Nenhum nome falso será injetado!';

  @override
  String logMsg105(String arg0) {
    return 'O caminho atual da placa gráfica $arg0 pode ocultar o dispositivo real!';
  }

  @override
  String logMsg106(String arg0) {
    return '=> O dispositivo $arg0 possui um método _PRT, que pode ter ocultado o dispositivo real e injetará um dispositivo GFX0!';
  }

  @override
  String logMsg107(String arg0) {
    return '=> Dispositivo $arg0 não encontrado em DSDT ou SSDT! Operação abortada!';
  }

  @override
  String logMsg108(String arg0) {
    return '=> Há um estouro no endereço _ADR do dispositivo da placa gráfica $arg0!';
  }

  @override
  String logMsg109(String arg0) {
    return '=> Volte para o caminho do dispositivo pai: $arg0 e injete um dispositivo GFX0!';
  }

  @override
  String get logMsg110 =>
      'Há um estouro de endereço _ADR no caminho do dispositivo!';

  @override
  String get logMsg111 =>
      'Os seguintes dispositivos podem afetar a injeção de propriedade:';

  @override
  String get logMsg112 => 'Localizando LPC(B)/SBRG…';

  @override
  String logMsg113(String arg0, String arg1) {
    return '=> $arg1 encontrado em $arg0';
  }

  @override
  String logMsg114(String arg0, String arg1) {
    return '=> $arg1 encontrado em $arg0';
  }

  @override
  String logMsg115(String arg0, String arg1) {
    return '=> $arg1 encontrado em $arg0';
  }

  @override
  String logMsg116(String arg0) {
    return 'Caminho DSDT fornecido: $arg0';
  }

  @override
  String logMsg117(String arg0) {
    return 'O caminho DSDT fornecido é inválido: $arg0';
  }

  @override
  String logMsg118(String arg0) {
    return 'Coletando tabelas ACPI válidas do diretório $arg0...';
  }

  @override
  String logMsg119(String arg0, String arg1) {
    return 'Foram encontradas um total de $arg0 tabelas ACPI, das quais $arg1 são válidas:';
  }

  @override
  String get logMsg120 =>
      'Vários arquivos com assinaturas DSDT foram verificados:';

  @override
  String logMsg121(String arg0) {
    return 'Prestes a descompilar $arg0 para verificar se patches pré-fabricados precisam ser aplicados...';
  }

  @override
  String get logMsg122 =>
      '=> Não há necessidade de aplicar patches pré-fabricados!\\n';

  @override
  String logMsg123(String arg0) {
    return 'Carregando $arg0...';
  }

  @override
  String get logMsg124 => 'Processamento concluído!\\n';

  @override
  String get logMsg125 => 'O arquivo ou pasta passado não existe!\\n';

  @override
  String get logMsg126 => 'Lidando com arquivos DSDT problemáticos...';

  @override
  String get logMsg127 => 'Verifique os patches pré-fabricados disponíveis…';

  @override
  String logMsg128(String arg0) {
    return 'Carregando arquivo $arg0 na memória...';
  }

  @override
  String get logMsg129 => 'Processando patches um por um...\\n';

  @override
  String get logMsg130 => '=> Posicionado, aplicando…';

  @override
  String get logMsg131 =>
      '=> O arquivo DSDT da pergunta anterior foi descompilado com sucesso!';

  @override
  String logMsg132(String arg0) {
    return '=> O patch foi aplicado ao arquivo modificado e o arquivo é salvo na pasta Resultados:\\n $arg0';
  }

  @override
  String logMsg133(String arg0) {
    return 'Carregando tabelas ACPI válidas em $arg0...';
  }

  @override
  String get logMsg134 =>
      'Descompilação de todas as tabelas ACPI válidas concluída!';

  @override
  String logMsg135(String arg0) {
    return 'Tempo total gasto: $arg0 segundos\\n';
  }

  @override
  String logMsg136(String arg0) {
    return 'Compilando $arg0.aml com sucesso!';
  }

  @override
  String logMsg137(String arg0) {
    return 'Exclua o arquivo de origem $arg0.dsl';
  }

  @override
  String logMsg138(String arg0) {
    return '=> Escopo não encontrado para o dispositivo $arg0';
  }

  @override
  String logMsg139(String arg0) {
    return '=> Não foi possível localizar $arg0';
  }

  @override
  String logMsg140(String arg0, String arg1) {
    return 'Localizando dispositivo $arg0 ($arg1)...';
  }

  @override
  String logMsg141(String arg0) {
    return '=> Não é possível segmentar nenhum dispositivo $arg0';
  }

  @override
  String logMsg142(String arg0) {
    return '=> encontrado $arg0';
  }

  @override
  String get logMsg143 => '=> Procurando verificação _STA…';

  @override
  String get logMsg144 =>
      '=> _STA foi renomeado para XSTA! Ignore outras verificações…';

  @override
  String get logMsg145 =>
      '=> Desative a renomeação do dispositivo de _STA para XSTA no DSDT e tente novamente após reiniciar!\\n';

  @override
  String logMsg146(String arg0, String arg1) {
    return '=> $arg0 variável $arg1';
  }

  @override
  String get logMsg147 => '=> _STA método/nome não encontrado';

  @override
  String logMsg148(String arg0) {
    return '=> Método _STA encontrado no índice $arg0!';
  }

  @override
  String get logMsg149 => '=> Gerando _STA para renomear XSTA';

  @override
  String get logMsg150 =>
      '=> Existem várias instruções de retorno ou o valor de retorno não é Return (0x0F)';

  @override
  String get logMsg151 => 'Coletando informações do dispositivo ACPI...';

  @override
  String get logMsg152 => 'Reunindo caminhos de dispositivos ACPI...';

  @override
  String get logMsg153 => 'Verificando novamente dispositivos órfãos...';

  @override
  String logMsg154(String arg0) {
    return 'IRQs personalizados atuais: $arg0';
  }

  @override
  String get logMsg155 => '=> Exemplo: RTC:0 IPIC:2 TMR:8,11 \\n';

  @override
  String logMsg156(String arg0) {
    return '=> _HID encontrado: $arg0';
  }

  @override
  String get logMsg157 => 'Localizando dispositivo PNP0103 (HPET)…';

  @override
  String logMsg158(String arg0) {
    return '=> posicionado em $arg0';
  }

  @override
  String get logMsg159 => 'Localizando método/nome _CRS para HPET...';

  @override
  String logMsg160(String arg0) {
    return '=> Localizado em $arg0._CRS';
  }

  @override
  String logMsg161(String arg0) {
    return '=> Encontrado no índice: $arg0';
  }

  @override
  String logMsg162(String arg0) {
    return '=> Tipo: $arg0';
  }

  @override
  String get logMsg163 => '=> Verificando memória32 fixa…';

  @override
  String logMsg164(String arg0, String arg1, String arg2) {
    return '=> Obtenha $arg0 $arg1 => $arg2';
  }

  @override
  String get logMsg165 => 'Criando patch IRQ...';

  @override
  String get logMsg166 => 'Verificando IRQ…';

  @override
  String get logMsg167 => 'IRQ está vazio! Pular...\\n';

  @override
  String get logMsg168 => 'Nenhuma correspondência encontrada.';

  @override
  String logMsg169(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg170 => 'Criando um dispositivo HPET falso...';

  @override
  String logMsg171(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg172(String arg0) {
    return '=> UID usado: $arg0';
  }

  @override
  String logMsg173(String arg0) {
    return '=> Plataformas aplicáveis: $arg0';
  }

  @override
  String get logMsg174 =>
      'Nenhum caminho iGPU válido fornecido, tentando encontrar automaticamente...';

  @override
  String get logMsg175 => 'Procurando dispositivo iGPU em 0x00020000…';

  @override
  String logMsg176(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String logMsg177(String arg0) {
    return '=> dispositivo iGPU encontrado em $arg0!';
  }

  @override
  String get logMsg178 => 'Dispositivo iGPU não encontrado por endereço!';

  @override
  String get logMsg179 => 'Procurando por nomes comuns de iGPU…';

  @override
  String logMsg180(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String logMsg181(String arg0) {
    return '=> Possível dispositivo iGPU encontrado em $arg0';
  }

  @override
  String logMsg182(String arg0) {
    return 'Possível dispositivo iGPU encontrado em $arg0\\n';
  }

  @override
  String logMsg183(String arg0) {
    return 'Foi definido manualmente como $arg0 de acordo com o caminho iGPU fornecido \\n';
  }

  @override
  String logMsg184(String arg0) {
    return 'Caminho iGPU inválido: $arg0';
  }

  @override
  String get logMsg185 =>
      'Verificando a tabela ACPI para dispositivo PNLF nativo...';

  @override
  String logMsg186(String arg0, String arg1) {
    return '=> Dispositivo PNLF nativo encontrado em $arg0: $arg1';
  }

  @override
  String get logMsg187 =>
      '=> O PNLF nativo precisa ser renomeado para XNLF, o patch de renomeação está sendo gerado...';

  @override
  String get logMsg188 => '=> Dispositivo PNLF nativo não encontrado!';

  @override
  String get logMsg189 =>
      '=> Não há necessidade de gerar patch de renomeação de PNLF para XNLF!';

  @override
  String logMsg190(String arg0) {
    return 'Nome (NBCF, 0x00) detectado em $arg0, gerando patch...';
  }

  @override
  String logMsg191(String arg0) {
    return 'Nome (NBCF, Zero) detectado em $arg0, gerando patch...';
  }

  @override
  String get logMsg192 => 'Localizando dispositivo PNP0C09(EC)...';

  @override
  String logMsg193(String arg0, String arg1) {
    return '=> $arg1 Dispositivos PNP0C09 (EC) encontrados em $arg0';
  }

  @override
  String get logMsg194 => '=> Verificando...';

  @override
  String logMsg195(String arg0) {
    return '=> encontrado $arg0';
  }

  @override
  String get logMsg196 =>
      '=> Dispositivo PNP0C09 (EC) denominado EC, renomeação em andamento';

  @override
  String get logMsg197 => '=> Dispositivo PNP0C09 (EC) válido';

  @override
  String get logMsg198 =>
      '=> _STA está habilitado corretamente, ignorando a renomeação';

  @override
  String get logMsg199 => '=> Dispositivo PNP0C09 (EC) inválido';

  @override
  String get logMsg200 =>
      '=> Nenhum dispositivo PNP0C09 (EC) válido encontrado, apenas falsifique um dispositivo EC';

  @override
  String logMsg201(String arg0) {
    return 'Criando $arg0.dsl…';
  }

  @override
  String logMsg202(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg203 => 'Determinando esquema de nomenclatura da CPU...';

  @override
  String logMsg204(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String logMsg205(String arg0) {
    return '=> Processador encontrado: $arg0';
  }

  @override
  String logMsg206(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String get logMsg207 => '=> Nenhum objeto Processador encontrado...';

  @override
  String get logMsg208 => '=> Dispositivo ACPI0007 não encontrado…';

  @override
  String logMsg209(String arg0) {
    return '=> $arg0 dispositivos ACPI0007 encontrados';
  }

  @override
  String logMsg210(String arg0) {
    return '=> Dispositivo pai encontrado em $arg0, processando...';
  }

  @override
  String logMsg211(String arg0) {
    return '=> Verificando $arg0…';
  }

  @override
  String get logMsg212 => '=> Não encontrado! pular sobre…';

  @override
  String get logMsg213 => '=> Não encontrado! pular sobre…';

  @override
  String logMsg214(String arg0) {
    return 'Processando $arg0 dispositivos de processador válidos...';
  }

  @override
  String get logMsg215 => 'Falha ao obter o nome LPC...';

  @override
  String logMsg216(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg217 => '=> Precisa falsificar o RTC!';

  @override
  String get logMsg218 => '=> Verificando _CRS…';

  @override
  String get logMsg219 => '=> _CRS é um buffer, verificando o intervalo RTC...';

  @override
  String get logMsg220 =>
      '=> Incapaz de ajustar o valor, incapaz de verificar a faixa RTC.';

  @override
  String get logMsg221 => '=> 收集值失败, 无法验证 RTC 范围.';

  @override
  String get logMsg222 =>
      '=> _CRS é um método e não pode verificar o intervalo RTC!';

  @override
  String get logMsg223 => '=> Gerando renomeação de _CRS para XCRS…';

  @override
  String logMsg224(String arg0) {
    return '=> Encontrado no índice $arg0';
  }

  @override
  String get logMsg225 => '=> não encontrado';

  @override
  String logMsg226(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String logMsg227(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String get logMsg228 => 'Coletando dispositivos RHUB/HUBN/URTH...';

  @override
  String logMsg229(String arg0) {
    return '=> $arg0 dispositivos encontrados';
  }

  @override
  String get logMsg230 => '=> Precisa ser renomeado!';

  @override
  String logMsg231(String arg0) {
    return '=> Verifique $arg0: se o método _STA existe';
  }

  @override
  String logMsg232(String arg0) {
    return '=> Método _STA encontrado no índice $arg0!';
  }

  @override
  String get logMsg233 => '=> Gerar patch de _STA para XSTA';

  @override
  String get logMsg234 => '=> Método _STA não encontrado!';

  @override
  String logMsg235(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String get logMsg236 =>
      '=> Há um estouro de endereço _ADR no caminho do dispositivo!';

  @override
  String get logMsg237 =>
      '=> Os seguintes dispositivos podem exigir ajustes de ponte para funcionar corretamente:';

  @override
  String get logMsg238 => 'Coletando dispositivos de ponte PCI...';

  @override
  String get logMsg239 =>
      'O dispositivo de ponte PCI está vazio! A operação foi encerrada!';

  @override
  String get logMsg240 => 'Construindo dispositivo de ponte...';

  @override
  String get logMsg241 => 'O dispositivo de ponte PCI está vazio! pular sobre…';

  @override
  String get logMsg242 => 'Caminhos de dispositivos correspondentes…';

  @override
  String get logMsg243 => 'Nenhuma correspondência encontrada!';

  @override
  String logMsg244(String arg0) {
    return '=> corresponde a $arg0, sem necessidade de ponte';
  }

  @override
  String get logMsg245 => 'Nenhuma correspondência encontrada!\\n';

  @override
  String get logMsg246 => 'Não é necessária ponte!\\n';

  @override
  String get logMsg247 => 'Resolvendo dispositivo de ponte...';

  @override
  String get logMsg248 => '=> Incapaz de analisar!';

  @override
  String get logMsg249 => 'Erro ao analisar o dispositivo bridge!\\n';

  @override
  String logMsg250(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String get logMsg251 => 'Localizando dispositivo ACPI0008 (ALS)...';

  @override
  String logMsg252(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String logMsg253(String arg0, String arg1) {
    return '=> Dispositivo ALS encontrado na tabela $arg0: $arg1!';
  }

  @override
  String get logMsg254 => '=> Não há necessidade de falsificar!\\n';

  @override
  String logMsg255(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String get logMsg256 =>
      '_STA está habilitado corretamente, nenhum patch é necessário! \\n';

  @override
  String get logMsg257 => 'Não encontrado, nenhum patch é necessário!\\n';

  @override
  String get logMsg258 =>
      'Dispositivo ACPI0008 (ALS) não encontrado, dispositivo falsificado é necessário…';

  @override
  String logMsg259(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String get logMsg260 => 'Detectando esquema XOSI...';

  @override
  String logMsg261(String arg0, String arg1) {
    return '=> Detectado automaticamente: $arg0 ($arg1)';
  }

  @override
  String get logMsg262 => 'Verificando o método OSID...';

  @override
  String logMsg263(String arg0, String arg1) {
    return '=> Método encontrado $arg1 no deslocamento $arg0';
  }

  @override
  String get logMsg264 =>
      '=> Não encontrado, não há necessidade de renomear OSID para XSID';

  @override
  String get logMsg265 => 'Criando _OSI para renomear XOSI…';

  @override
  String logMsg266(String arg0) {
    return 'Procurando pela tabela $arg0…';
  }

  @override
  String logMsg267(String arg0) {
    return 'Tabela $arg0 encontrada, verificando assinatura...';
  }

  @override
  String logMsg268(String arg0) {
    return '=> $arg0 verificação de assinatura da tabela aprovada!';
  }

  @override
  String logMsg269(String arg0) {
    return 'Verificando valor $arg0...';
  }

  @override
  String logMsg270(String arg0, String arg1) {
    return 'Valor $arg0 obtido: $arg1';
  }

  @override
  String logMsg271(String arg0) {
    return 'Valor obtido do endereço de redefinição do registro: $arg0';
  }

  @override
  String get logMsg272 =>
      'Os patches ACPI que precisam ser corrigidos são os seguintes:';

  @override
  String get logMsg273 => 'Corrigindo tabela APIC...';

  @override
  String logMsg274(String arg0, String arg1) {
    return '=> ID do processador APIC corrigido: $arg0 → $arg1';
  }

  @override
  String get logMsg275 => '=> Correção da tabela APIC concluída!';

  @override
  String logMsg276(String arg0) {
    return 'Criando $arg0.dsl…';
  }

  @override
  String get logMsg277 =>
      'Verificando a área de memória reservada da tabela DMAR...';

  @override
  String get logMsg278 =>
      '=> Nenhuma área de memória reservada encontrada, não há necessidade de corrigir o DMAR!\\n';

  @override
  String logMsg279(String arg0) {
    return 'Encontradas áreas de memória reservadas $arg0, gerando nova tabela...';
  }

  @override
  String get logMsg280 =>
      'Procurando dispositivo IMEI no endereço 0x00160000...';

  @override
  String get logMsg281 =>
      'Dispositivo IMEI não encontrado, é necessário falsificar o dispositivo…';

  @override
  String get logMsg282 => 'Verificando o dispositivo pai...';

  @override
  String get logMsg283 => 'Procurando dispositivo iGPU em 0x00020000…';

  @override
  String get logMsg284 => '=> dispositivo iGPU não encontrado!';

  @override
  String get logMsg285 => 'Tentando localizar o dispositivo raiz PCI...';

  @override
  String logMsg286(String arg0) {
    return '=> Dispositivo raiz PCI encontrado: $arg0';
  }

  @override
  String logMsg287(String arg0) {
    return '=> Dispositivo iGPU encontrado: $arg0';
  }

  @override
  String logMsg288(String arg0) {
    return '=> Usar dispositivo pai: $arg0';
  }

  @override
  String get logMsg289 =>
      'Coletando esquemas de identificação de dispositivos falsos...';

  @override
  String logMsg290(String arg0) {
    return '=> Falsificado como IMEI da placa-mãe da série 7 (id do dispositivo: $arg0) para corresponder ao processador Ivy Bridge de 3ª geração';
  }

  @override
  String logMsg291(String arg0) {
    return '=> Falsificado como IMEI da placa-mãe da série 6 (id do dispositivo: $arg0) para corresponder ao processador Sandy Bridge de 2ª geração';
  }

  @override
  String logMsg292(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String get logMsg293 => 'Procurando dispositivo UNC (PNP0A03)...';

  @override
  String logMsg294(String arg0) {
    return '=> $arg0 dispositivos UNC encontrados';
  }

  @override
  String logMsg295(String arg0, String arg1) {
    return '=> Dispositivo UNC $arg0: $arg1';
  }

  @override
  String logMsg296(String arg0) {
    return '=> Verifique se $arg0: o método _STA existe';
  }

  @override
  String logMsg297(String arg0, String arg1) {
    return '=> Encontrado $arg1: método _STA no índice $arg0!';
  }

  @override
  String logMsg298(String arg0) {
    return '=> Gerar $arg0: _STA para patch XSTA';
  }

  @override
  String logMsg299(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg300(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg301 => 'Verificando se o método DTGP existe...';

  @override
  String get logMsg302 => '=> Método DTGP não encontrado!';

  @override
  String get logMsg303 =>
      '=> Método DTGP não encontrado em nenhuma das tabelas ACPI acima! \\n';

  @override
  String logMsg304(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg305(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg306 => 'Procurando dispositivo DMA (PNP0200)...';

  @override
  String get logMsg307 => '=> Dispositivo DMA (PNP0200) não encontrado!';

  @override
  String logMsg308(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg309(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg310 => 'Verificando a existência do método _PTS...';

  @override
  String logMsg311(String arg0) {
    return '=> Método $arg0 encontrado!';
  }

  @override
  String get logMsg312 => '=> Método _PTS não encontrado!';

  @override
  String get logMsg313 => 'Verificando a existência do método _WAK...';

  @override
  String logMsg314(String arg0) {
    return '=> Método $arg0 encontrado!';
  }

  @override
  String get logMsg315 => '=> Método _WAK não encontrado!';

  @override
  String logMsg316(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String logMsg317(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg318 => 'Verificando a existência do método _SST...';

  @override
  String logMsg319(String arg0) {
    return '=> Método _SST encontrado em $arg0!';
  }

  @override
  String get logMsg320 => '=> Método _SST não encontrado!';

  @override
  String logMsg321(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String logMsg322(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg323 => 'Verificando a presença do dispositivo PNP0C0D...';

  @override
  String logMsg324(String arg0) {
    return '=> Dispositivo PNP0C0D encontrado em $arg0!';
  }

  @override
  String get logMsg325 => '=> Dispositivo PNP0C0D não encontrado!';

  @override
  String logMsg326(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String logMsg327(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String logMsg328(String arg0) {
    return 'Verificando a existência de $arg0...';
  }

  @override
  String logMsg329(String arg0, String arg1) {
    return '=> Encontrado $arg1 em $arg0';
  }

  @override
  String logMsg330(String arg0, String arg1) {
    return '=> Encontrado $arg1 em $arg0';
  }

  @override
  String logMsg331(String arg0) {
    return '=> $arg0 não encontrado';
  }

  @override
  String get logMsg332 => 'Todas as tabelas ACPI verificadas!';

  @override
  String get logMsg333 =>
      '=> Estado do sistema de suporte: [systemStatesFound]';

  @override
  String get logMsg334 =>
      '=> O firmware atual suporta estados comuns do sistema! Depois de corrigir o problema de suspensão, o macOS pode oferecer suporte à suspensão S3!';

  @override
  String get logMsg335 =>
      'Verificando o valor de baixa potência S0 ocioso (V5)...';

  @override
  String logMsg336(String arg0) {
    return 'Obtenha baixo consumo de energia S0 ocioso (V5): $arg0';
  }

  @override
  String get logMsg337 =>
      'Atualmente não é uma máquina AOAC e não afeta a suspensão do sistema macOS S3!';

  @override
  String get logMsg338 => 'Verificando a existência de _S3...';

  @override
  String logMsg339(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String logMsg340(String arg0) {
    return '=> Nome _S3 encontrado em $arg0!';
  }

  @override
  String logMsg341(String arg0) {
    return '=> Método _S3 encontrado em $arg0!';
  }

  @override
  String get logMsg342 => '=> Nome ou Método _S3 não encontrado';

  @override
  String logMsg343(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg344(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg345(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg346 => 'Procurando dispositivo LID (PNP0C0D)...';

  @override
  String logMsg347(String arg0) {
    return '=> Dispositivo PNP0C0D encontrado em $arg0!';
  }

  @override
  String get logMsg348 => '=> Dispositivo LID (PNP0C0D) não encontrado!';

  @override
  String logMsg349(String arg0) {
    return '=> Método _LID encontrado em $arg0!';
  }

  @override
  String get logMsg350 => '=> Método _LID não encontrado!';

  @override
  String get logMsg351 => 'Verificando a existência do método _TTS...';

  @override
  String logMsg352(String arg0) {
    return '=> Método $arg0 encontrado!';
  }

  @override
  String get logMsg353 => '=> Método _TTS não encontrado!';

  @override
  String get logMsg354 => 'Verificando a existência do método ZTTS...';

  @override
  String get logMsg355 => '=> Método ZTTS não encontrado!';

  @override
  String logMsg356(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String logMsg357(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg358 => 'Procurando dispositivo PWRB (PNP0C0C)...';

  @override
  String get logMsg359 => '=> Dispositivo PWRB (PNP0C0C) não encontrado!';

  @override
  String logMsg360(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg361(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg362 => 'Procurando dispositivo SLPB (PNP0C0E)...';

  @override
  String get logMsg363 => '=> Dispositivo SLPB (PNP0C0E) não encontrado!';

  @override
  String get logMsg364 =>
      '=> O dispositivo SLPB (PNP0C0E) não foi encontrado na tabela ACPI acima! Apenas falso! \\n';

  @override
  String logMsg365(String arg0) {
    return 'Criando $arg0.sdl...';
  }

  @override
  String logMsg366(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg367(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg368(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String get logMsg369 => 'Procurando dispositivo PNP0C01...';

  @override
  String get logMsg370 => '=> Dispositivo PNP0C01 não encontrado!';

  @override
  String get logMsg371 =>
      '=> O dispositivo PNP0C01 não foi encontrado em nenhuma das tabelas ACPI acima!\\n';

  @override
  String logMsg372(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg373 => 'Coletando dispositivos XHC/XHCI/XDCI/CNVW...';

  @override
  String logMsg374(String arg0) {
    return '=> Verificando se o dispositivo $arg0 suporta PMEE...';
  }

  @override
  String logMsg375(String arg0) {
    return '=> $arg0 não suporta PMEE, ignorado';
  }

  @override
  String logMsg376(String arg0) {
    return '=> $arg0 suporta PMEE';
  }

  @override
  String logMsg377(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg378 => 'Verificando a existência do método GPRW...';

  @override
  String get logMsg379 => 'Verificando a existência do método XPRW...';

  @override
  String logMsg380(String arg0) {
    return '=> Método GPRW encontrado em $arg0!';
  }

  @override
  String logMsg381(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg382 => 'Verificando a existência do método UPRW...';

  @override
  String get logMsg383 => 'Verificando a existência do método XPRW...';

  @override
  String logMsg384(String arg0) {
    return '=> Método UPRW encontrado em $arg0!';
  }

  @override
  String logMsg385(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg386 => 'Verificando a presença do dispositivo GPI0...';

  @override
  String logMsg387(String arg0) {
    return '=> Dispositivo GPI0 encontrado em $arg0!';
  }

  @override
  String get logMsg388 => 'Verificando a existência do método _STA...';

  @override
  String logMsg389(String arg0, String arg1) {
    return '=> Encontrado $arg1: método _STA no índice $arg0!';
  }

  @override
  String logMsg390(String arg0) {
    return '=> Gerar $arg0: _STA para patch XSTA';
  }

  @override
  String logMsg391(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg392 => 'Determinando esquema de nomenclatura da CPU...';

  @override
  String logMsg393(String arg0) {
    return 'Verificando $arg0…';
  }

  @override
  String logMsg394(String arg0) {
    return '=> Processador encontrado: $arg0';
  }

  @override
  String get logMsg395 => '=> Nenhum objeto Processador encontrado...';

  @override
  String get logMsg396 => '=> Dispositivo ACPI0007 não encontrado…';

  @override
  String logMsg397(String arg0) {
    return '=> $arg0 dispositivos ACPI0007 encontrados';
  }

  @override
  String logMsg398(String arg0) {
    return '=> Dispositivo pai encontrado em $arg0, processando...';
  }

  @override
  String logMsg399(String arg0) {
    return '=> Verificando $arg0…';
  }

  @override
  String get logMsg400 => '=> Não encontrado! pular sobre…';

  @override
  String get logMsg401 => '=> Não encontrado! pular sobre…';

  @override
  String logMsg402(String arg0) {
    return 'Processando $arg0 dispositivos de processador válidos...';
  }

  @override
  String logMsg403(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg404(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg405(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg406(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg407(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg408(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg409(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg410(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg411 =>
      'Coletando esquemas de identificação de dispositivos falsos...';

  @override
  String logMsg412(String arg0) {
    return '=> Falsificado como IMEI da placa-mãe da série 7 (id do dispositivo: $arg0) para corresponder ao processador Ivy Bridge de 3ª geração';
  }

  @override
  String logMsg413(String arg0) {
    return '=> Falsificado como IMEI da placa-mãe da série 6 (id do dispositivo: $arg0) para corresponder ao processador Sandy Bridge de 2ª geração';
  }

  @override
  String logMsg414(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg415(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg416(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg417(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg418(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg419(String arg0) {
    return 'Verificando o dispositivo $arg0 para um método _ON ou _OFF...';
  }

  @override
  String logMsg420(String arg0) {
    return 'Verificando dispositivo $arg0 para métodos _PS3 ou _DSM...';
  }

  @override
  String logMsg421(String arg0) {
    return 'Verificando dispositivo $arg0...';
  }

  @override
  String logMsg422(String arg0) {
    return '=> O método _PRT correspondente a $arg0 não foi encontrado em DSDT ou SSDT!';
  }

  @override
  String logMsg423(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String logMsg424(String arg0, String arg1) {
    return '=> $arg0 caminho do dispositivo que precisa ser bloqueado: $arg1';
  }

  @override
  String logMsg425(String arg0) {
    return '=> Método de blindagem: método $arg0';
  }

  @override
  String logMsg426(String arg0) {
    return '=> O caminho relativo do dispositivo foi convertido em caminho absoluto: $arg0';
  }

  @override
  String logMsg427(String arg0, String arg1, String arg2) {
    return '=> Encontre o método $arg1.$arg2 em $arg0';
  }

  @override
  String logMsg428(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String get logMsg429 => 'Coletando possíveis dispositivos de barramento...';

  @override
  String logMsg430(String arg0) {
    return 'Criando $arg0.dsl pré-compilado...';
  }

  @override
  String logMsg431(String arg0) {
    return 'Verificando dispositivo gráfico $arg0...';
  }

  @override
  String logMsg432(String arg0) {
    return '=> O método _PRT correspondente a $arg0 não foi encontrado em DSDT ou SSDT!';
  }

  @override
  String logMsg433(String arg0) {
    return 'Criando $arg0.dsl...';
  }

  @override
  String logMsg434(String arg0) {
    return '=> Caminho do dispositivo da placa gráfica: $arg0';
  }

  @override
  String logMsg435(String arg0) {
    return '=> ID da placa gráfica falsificada: $arg0';
  }

  @override
  String logMsg436(String arg0) {
    return '=> Nome da placa gráfica falsificada: $arg0';
  }

  @override
  String get logMsg437 => '=> Não encontrado!';

  @override
  String logMsg438(String arg0) {
    return '=> Caminho PCI correspondente: $arg0';
  }

  @override
  String logMsg439(String arg0, String arg1, String arg2) {
    return '=> Atualize $arg0 \"$arg1\" para $arg2';
  }

  @override
  String logMsg440(String arg0, String arg1, String arg2) {
    return '=> $arg0 \"$arg1\" já existe em $arg2, pule...';
  }

  @override
  String logMsg441(String arg0, String arg1, String arg2) {
    return '=> Adicione $arg0 \"$arg1\" a $arg2';
  }

  @override
  String logMsg442(String arg0, String arg1, String arg2) {
    return '=> Atualize o valor da chave \"$arg0\" para \"$arg1\" em $arg2';
  }

  @override
  String logMsg443(String arg0, String arg1) {
    return '=> O valor da chave \"$arg0\" já está atualizado, pulando $arg1';
  }

  @override
  String logMsg444(String arg0, String arg1, String arg2) {
    return '=> Adicionar chave \"$arg0\" valor \"$arg1\" a $arg2';
  }

  @override
  String logMsg445(String arg0) {
    return 'Falha na limpeza da pasta de relatórios de hardware: $arg0';
  }

  @override
  String get logMsg446 => 'Falha na exportação da tabela ACPI nativa';

  @override
  String logMsg447(String arg0) {
    return 'Falha na exportação da tabela ACPI nativa: $arg0';
  }

  @override
  String logMsg448(String arg0) {
    return 'Falha na exportação da tabela ACPI nativa: $arg0';
  }

  @override
  String logMsg449(String arg0) {
    return 'Falha na limpeza do diretório temporário da tabela ACPI: $arg0';
  }

  @override
  String get logMsg450 => 'Exportando relatório de hardware nativo...';

  @override
  String get logMsg451 => 'Exportando tabelas ACPI nativas...';

  @override
  String logMsg452(String arg0) {
    return 'Exportação de tabela ACPI nativa concluída: $arg0';
  }

  @override
  String logMsg453(String arg0) {
    return 'O arquivo de origem não existe: $arg0';
  }

  @override
  String logMsg454(String arg0) {
    return 'Erro ao salvar arquivo: $arg0';
  }

  @override
  String logMsg455(String arg0) {
    return 'Versão atual do OC: $arg0';
  }

  @override
  String logMsg456(String arg0) {
    return 'O arquivo ZIP não existe: $arg0';
  }

  @override
  String logMsg457(String arg0) {
    return '$arg0 arquivo descompactado com sucesso';
  }

  @override
  String logMsg458(String arg0, String arg1) {
    return 'Erro ao descompactar arquivo $arg0: $arg1';
  }

  @override
  String logMsg459(String arg0) {
    return 'Arquivo ou diretório não existe: $arg0';
  }

  @override
  String logMsg460(String arg0) {
    return 'Compactação concluída: $arg0';
  }

  @override
  String logMsg461(String arg0) {
    return 'Erro de compactação: $arg0';
  }

  @override
  String logMsg462(String arg0) {
    return 'Excluir diretório: $arg0';
  }

  @override
  String logMsg463(String arg0) {
    return 'Excluir arquivo: $arg0';
  }

  @override
  String logMsg464(String arg0, String arg1) {
    return 'Falha na exclusão: $arg0, $arg1';
  }

  @override
  String logMsg465(String arg0) {
    return 'Arquivo salvo com sucesso em: $arg0';
  }

  @override
  String logMsg466(String arg0) {
    return 'O diretório de origem não existe: $arg0';
  }

  @override
  String logMsg467(String arg0) {
    return 'Pasta preparada: $arg0';
  }

  @override
  String logMsg468(String arg0) {
    return 'Erro ao criar pasta: $arg0';
  }

  @override
  String logMsg469(String arg0) {
    return 'Falha ao abrir o diretório, o caminho não existe: $arg0';
  }

  @override
  String logMsg470(String arg0, String arg1) {
    return 'Falha ao abrir o diretório: $arg0, $arg1';
  }
}
