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
  String get languageEs => 'Español';

  @override
  String get languageFr => 'Français';

  @override
  String get languageAr => 'العربية';

  @override
  String get languageHi => 'हिन्दी';

  @override
  String get languageRu => 'Русский';

  @override
  String get languageIt => 'Italiano';

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

  @override
  String get autoGen5000 => 'compatível';

  @override
  String get autoGen5001 => 'Compatibilidade limitada';

  @override
  String get autoGen5002 => 'Não compatível';

  @override
  String get autoGen5003 => 'Habilitado';

  @override
  String get autoGen5004 => 'ligar';

  @override
  String get autoGen5005 => 'desconhecido';

  @override
  String get autoGen5006 => 'Placa de rede com fio';

  @override
  String get autoGen5007 =>
      'Compatibilidade limitada\nSuporta até macOS Tahoe 26\nAVX2 ausente';

  @override
  String get autoGen5008 =>
      'Não compatível\nSuporta até macOS El Capitan 10.11\nSSE4 ausente';

  @override
  String get autoGen5009 => 'ID do dispositivo ausente';

  @override
  String get autoGen5010 => 'Suporte NootedRed';

  @override
  String get autoGen5011 => 'Carregamento de compatibilidade';

  @override
  String get autoGen5012 =>
      'Gráficos de núcleo de CPU Intel de baixo custo não são suportados';

  @override
  String get autoGen5013 => 'A saída VGA não é suportada';

  @override
  String get autoGen5014 => 'Suporte falsificado';

  @override
  String get autoGen5015 => 'Suporte nativo';

  @override
  String get autoGen5016 => 'Conjunto de instruções AVX2 ausente';

  @override
  String get autoGen5017 => 'essencial';

  @override
  String get autoGen5018 => 'independente';

  @override
  String get autoGen5019 => 'Exibição nuclear';

  @override
  String get autoGen5020 => 'Asus';

  @override
  String get autoGen5021 => 'Gigabyte';

  @override
  String get autoGen5022 => 'ASRock';

  @override
  String get autoGen5023 => 'MSI';

  @override
  String get autoGen5024 => 'Dell';

  @override
  String get autoGen5025 => 'Lenovo';

  @override
  String get autoGen5026 => 'sony';

  @override
  String get autoGen5027 => 'HP';

  @override
  String get autoGen5028 => 'Google';

  @override
  String get autoGen5029 => 'Microsoft';

  @override
  String get autoGen5030 =>
      'Não é possível identificar o tipo de plataforma com base nas informações da CPU';

  @override
  String get autoGen5031 => 'Notebook';

  @override
  String get autoGen5032 => 'Mini-PC (NUC)';

  @override
  String get autoGen5033 => 'estação de trabalho';

  @override
  String get autoGen5034 =>
      'O código da plataforma não pode ser determinado com base na CPU, placa-mãe e exibição principal.';

  @override
  String get autoGen5035 => 'Ignorar bloqueio de dispositivo:';

  @override
  String get autoGen5036 => 'Caminho ACPI válido ausente';

  @override
  String get autoGen5037 => 'Lista SSDT a ser personalizada:';

  @override
  String get autoGen5038 => 'Falha na extração da tabela ACPI';

  @override
  String get autoGen5039 => 'Falha no carregamento da tabela ACPI';

  @override
  String get autoGen5040 =>
      'Os resultados do SSDT personalizado estão incompletos';

  @override
  String get autoGen5041 => 'Ocorreu uma exceção no SSDT personalizado';

  @override
  String get autoGen5042 =>
      'Falha na limpeza do diretório temporário do SSDT personalizado:';

  @override
  String get autoGen5043 =>
      'Falsificação de ID de dispositivo de placa gráfica SSDT';

  @override
  String get autoGen5044 => 'Falha ao gerar:';

  @override
  String get autoGen5045 => 'SSDT de proteção de dispositivo ACPI';

  @override
  String get autoGen5046 => 'Mesclagem SSDT personalizada ignorada,';

  @override
  String get autoGen5047 =>
      'Continue a usar o SSDT original no EFI atual como alternativa.';

  @override
  String get autoGen5048 =>
      'Falsificação de ID de dispositivo de placa gráfica ignorada:';

  @override
  String get autoGen5049 =>
      'O cache de informações de hardware não é um objeto JSON';

  @override
  String get autoGen5050 =>
      'As informações de hardware foram carregadas do cache';

  @override
  String get autoGen5051 =>
      'As informações de hardware foram carregadas do cache local';

  @override
  String get autoGen5052 =>
      'As informações de hardware foram carregadas do arquivo de importação';

  @override
  String get autoGen5053 => 'Inicializar informações de hardware';

  @override
  String get autoGen5054 =>
      'O sistema atual não é compatível, apenas o Windows é compatível';

  @override
  String get autoGen5055 => 'Consultando informações de hardware';

  @override
  String get autoGen5056 => 'Consulta de informações de hardware concluída';

  @override
  String get autoGen5057 => 'sysInfo.exe não retornou informações de hardware';

  @override
  String get autoGen5058 =>
      'O conteúdo retornado por sysInfo.exe não é um objeto JSON';

  @override
  String get autoGen5059 => 'Consulta sysInfo.exe concluída';

  @override
  String get autoGen5060 => 'placa gráfica principal';

  @override
  String get autoGen5061 => 'Placa gráfica discreta';

  @override
  String get autoGen5062 => 'Já ativado';

  @override
  String get autoGen5063 => 'Placa gráfica desconhecida';

  @override
  String get autoGen5064 => 'integrado';

  @override
  String get autoGen5065 => 'Broadcom';

  @override
  String get autoGen5066 => 'Qualcomm';

  @override
  String get autoGen5067 => 'Informações';

  @override
  String get autoGen5068 => 'maçã';

  @override
  String get autoGen5069 => 'Momento zero';

  @override
  String get autoGen5070 => 'Matsushita';

  @override
  String get autoGen5071 => 'Taian';

  @override
  String get autoGen5072 => 'Biostar';

  @override
  String get autoGen5073 => 'Colorido';

  @override
  String get autoGen5074 => 'Zotac';

  @override
  String get autoGen5075 => 'Gengsheng';

  @override
  String get autoGen5076 => 'Yingzhong';

  @override
  String get autoGen5077 => 'Supermicro';

  @override
  String get autoGen5078 => 'Onda';

  @override
  String get autoGen5079 => 'Espártaco';

  @override
  String get autoGen5080 => 'Panzheng';

  @override
  String get autoGen5081 => 'Sul da China';

  @override
  String get autoGen5082 => 'Jing Yue';

  @override
  String get autoGen5083 => 'Ke Nao';

  @override
  String get autoGen5084 => 'Guoshuo';

  @override
  String get autoGen5085 => 'Passarela';

  @override
  String get autoGen5086 => 'diamante';

  @override
  String get autoGen5087 => 'estrela principal';

  @override
  String get autoGen5088 => 'Mingxuan';

  @override
  String get autoGen5089 => 'Meijie';

  @override
  String get autoGen5090 => 'Elite';

  @override
  String get autoGen5091 => 'Foxconn';

  @override
  String get autoGen5092 => 'um pouco';

  @override
  String get autoGen5093 => 'Shuangmin';

  @override
  String get autoGen5094 => 'Eunjie';

  @override
  String get autoGen5095 => 'GALÁXIA';

  @override
  String get autoGen5096 => 'bandeira sagrada';

  @override
  String get autoGen5097 => 'Tubarão';

  @override
  String get autoGen5098 => 'Seewo';

  @override
  String get autoGen5099 => 'Advantech';

  @override
  String get autoGen5100 => 'ADLINK';

  @override
  String get autoGen5101 => 'Grande Mecânico';

  @override
  String get autoGen5102 => 'patriota';

  @override
  String get autoGen5103 => 'ASL';

  @override
  String get autoGen5104 => 'Erying';

  @override
  String get autoGen5105 => 'safira';

  @override
  String get autoGen5106 => 'Contech';

  @override
  String get autoGen5107 => 'Qingyun';

  @override
  String get autoGen5108 => 'Huawei';

  @override
  String get autoGen5109 => 'Painço';

  @override
  String get autoGen5110 => 'arroz vermelho';

  @override
  String get autoGen5111 => 'glória';

  @override
  String get autoGen5112 => 'Samsung';

  @override
  String get autoGen5113 => 'revolução mecânica';

  @override
  String get autoGen5114 => 'mecânico';

  @override
  String get autoGen5115 => 'Thor';

  @override
  String get autoGen5116 => 'Razer';

  @override
  String get autoGen5117 => 'Acer';

  @override
  String get autoGen5118 => 'Toshiba';

  @override
  String get autoGen5119 => 'Fujitsu';

  @override
  String get autoGen5120 => 'céu azul';

  @override
  String get autoGen5121 => 'estrangeiro';

  @override
  String get autoGen5122 => 'Shenzhou';

  @override
  String get autoGen5123 => 'Haier';

  @override
  String get autoGen5124 => 'Zhongbai';

  @override
  String get autoGen5125 => 'Xuanlong';

  @override
  String get autoGen5126 => 'futuros humanos';

  @override
  String get autoGen5127 => 'Cubo';

  @override
  String get autoGen5128 => 'Estrela Xuanpai Xuanji';

  @override
  String get autoGen5129 => 'Verificando atualizações, aguarde...';

  @override
  String get autoGen5130 =>
      'Acabei de verificar se há atualizações, tente novamente mais tarde';

  @override
  String get autoGen5131 =>
      'Falha ao verificar atualizações. Tente novamente mais tarde';

  @override
  String get autoGen5132 =>
      'Falha ao obter a lista de versões de lançamento. Tente novamente mais tarde';

  @override
  String get autoGen5133 => 'A lista de versões de lançamento está vazia';

  @override
  String get autoGen5134 => 'Desktop';

  @override
  String get autoGen5135 => 'Servidor';

  @override
  String get autoGen5136 =>
      'Ative o SIP para aumentar a segurança do sistema. Recomenda-se marcar esta caixa quando você normalmente não precisa usar OCLP para controlar placas gráficas, WiFi e outros drivers.';

  @override
  String get autoGen5137 => 'Desative a solução SIP um';

  @override
  String get autoGen5138 =>
      'A menos que o SIP esteja completamente desabilitado, geralmente é recomendado marcar a caixa quando sistemas como BigSur e superiores precisam usar OCLP para acionar placas gráficas, WiFi, etc.';

  @override
  String get autoGen5139 => 'Desative a solução SIP dois';

  @override
  String get autoGen5140 =>
      'Desative completamente o SIP. Normalmente, quando sistemas como BigSur e superiores precisam usar OCLP para acionar placas gráficas, WiFi, etc., esta opção é a preferida.';

  @override
  String get autoGen5141 =>
      'Tela adaptável, ajusta automaticamente a proporção de exibição da interface de inicialização OpenCore de acordo com a resolução da tela';

  @override
  String get autoGen5142 =>
      'Monitor de resolução padrão, adequado para 720p, 1080p, 1440p e outros monitores de resolução padrão';

  @override
  String get autoGen5143 =>
      'Tela de alta resolução, adequada para telas de alta resolução, como 4K e 5K (pode efetivamente melhorar o problema de elementos de interface do usuário muito pequenos na página de inicialização do OpenCore para telas de alta resolução)';

  @override
  String get autoGen5144 => 'Não modifique ProcessorType';

  @override
  String get autoGen5145 =>
      'Manter a exibição do tipo de CPU padrão do sistema';

  @override
  String get autoGen5146 =>
      'Opção 1 de modificação de nome de CPU de plataforma Intel e AMD (geralmente aplicável a CPUs com 6 núcleos e inferiores)';

  @override
  String get autoGen5147 =>
      'Opção 2 de modificação de nome de CPU de plataforma Intel e AMD (geralmente aplicável a CPUs de 8 núcleos e superiores)';

  @override
  String get autoGen5148 =>
      'Alternativas de modificação de nome de CPU de plataforma Intel e AMD (geralmente aplicáveis ​​a CPUs das séries i7 e i9 com 8 núcleos e superiores)';

  @override
  String get autoGen5149 => 'Asus';

  @override
  String get autoGen5150 => 'GIGABYTE';

  @override
  String get autoGen5151 => 'ASRock';

  @override
  String get autoGen5152 => 'MSI';

  @override
  String get autoGen5153 => 'Dell';

  @override
  String get autoGen5154 => 'Lenovo';

  @override
  String get autoGen5155 => 'Sony(VAIO)';

  @override
  String get autoGen5156 => 'HP';

  @override
  String get autoGen5157 => 'Google (Chromebook)';

  @override
  String get autoGen5158 => 'Superfície da Microsoft';

  @override
  String get autoGen5159 => 'Placa-mãe normal';

  @override
  String get autoGen5160 =>
      'Placas-mãe B850, B650, B550 e A520, notebooks com chipset série 550';

  @override
  String get autoGen5161 => 'Placa-mãe TRx40';

  @override
  String get autoGen5162 => 'Placa-mãe X570';

  @override
  String get autoGen5163 =>
      'Placa-mãe X470 ou B450 final de 2020 ou BIOS atualizado';

  @override
  String get autoGen5164 => 'Chipset da série 6';

  @override
  String get autoGen5165 =>
      'Verifique ao misturar CPU Intel de 3ª geração e chipset da série 6 (por exemplo: H61, HM65)';

  @override
  String get autoGen5166 => 'Chipset da série 7';

  @override
  String get autoGen5167 =>
      'Verifique ao misturar CPU Intel de 2ª geração e chipsets da série 7 (por exemplo: B75, HM76)';

  @override
  String get autoGen5168 => 'H110,B150,B250,Q270, etc.';

  @override
  String get autoGen5169 =>
      'Algumas placas-mãe OEM têm problemas de liberação de propriedade de USB: Falha na transferência de EHCI';

  @override
  String get autoGen5170 => 'Z490 e outras atualizações de BIOS em 2020';

  @override
  String get autoGen5171 =>
      'Chipset da série 6 (verifique ao misturar CPU Intel de 3ª geração e chipsets da série 6 (por exemplo: H61, HM65))';

  @override
  String get autoGen5172 =>
      'Chipset da série 7 (verifique ao misturar CPU Intel de 2ª geração e chipsets da série 7 (por exemplo: B75, HM76))';

  @override
  String get autoGen5173 =>
      'H110, B150, B250, Q270, etc. (Algumas placas-mãe OEM têm problemas de liberação de propriedade de USB: falha de transferência EHCI)';

  @override
  String get autoGen5174 => 'de mbconfs';

  @override
  String get autoGen5175 => 'Cadeia dupla DVI';

  @override
  String get autoGen5176 => 'Cadeia única DVI';

  @override
  String get autoGen5177 =>
      'Suporta OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5178 =>
      'Suporta OS X Snow Leopard 10.6 ~ macOS High Sierra 10.13, adequado para gráficos principais + modelos gráficos independentes';

  @override
  String get autoGen5179 =>
      'Suporta OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adequado para arquitetura Ivy Bridge, apenas modelos gráficos principais';

  @override
  String get autoGen5180 =>
      'Suporta OS X Mountain Lion 10.8 ~ macOS Catalina 10.15, adequado para arquitetura Ivy Bridge, decodificação de exibição principal + modelos de saída de exibição independentes';

  @override
  String get autoGen5181 =>
      'Suporta OS X Mavericks 10.9 ~ macOS Big Sur 11, adequado para arquitetura Haswell Gráficos independentes NVIDIA Maxwell e Pascal';

  @override
  String get autoGen5182 =>
      'Suporta OS X Mavericks 10.9 ~ macOS Big Sur 11, adequado apenas para modelos de exibição principal da arquitetura Haswell';

  @override
  String get autoGen5183 =>
      'Suporta OS X Mavericks 10.9 ~ macOS Big Sur 11, adequado para gráficos principais da arquitetura Haswell + modelos gráficos independentes';

  @override
  String get autoGen5184 =>
      'Suporta macOS El Capitan 10.11 ~ macOS Monterey 12, adequado para modelos com gráficos principais (ou gráficos independentes)';

  @override
  String get autoGen5185 =>
      'Suporta macOS El Capitan 10.11 ~ macOS Monterey 12, adequado para exibição central da arquitetura Broadwell (ou com exibição independente)';

  @override
  String get autoGen5186 =>
      'Suporta macOS Sierra 10.12 ~ macOS Ventura 13. Adequado para modelos de exibição principal + exibição independente. Deve-se observar que, ao usar este modelo, a maioria dos usuários de exibição principal experimentará cores de tela anormais. Este modelo não é recomendado apenas para usuários de exibição principal.';

  @override
  String get autoGen5187 =>
      'Suporta macOS Sierra 10.12 ~ macOS Ventura 13, adequado para decodificação de exibição principal + modelos de saída de exibição independentes';

  @override
  String get autoGen5188 =>
      'Suporta macOS 10.14 ~ macOS Sequoia 15, adequado para modelos com gráficos principais (ou gráficos independentes)';

  @override
  String get autoGen5189 =>
      'Suporta macOS 10.15 ~ macOS Tahoe 26, adequado para modelos i7-10700K e com tela de núcleo de processador inferior (ou com tela independente)';

  @override
  String get autoGen5190 =>
      'Suporta macOS 10.15 ~ macOS Tahoe 26, adequado para modelos com tela de núcleo de processador superior i9-10850K (ou com tela independente)';

  @override
  String get autoGen5191 =>
      'Compatível com macOS 10.5 ~ macOS El Capitan 10.11';

  @override
  String get autoGen5192 =>
      'Compatível com macOS 10.6 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5193 =>
      'Compatível com macOS 10.7 ~ macOS High Sierra 10.13';

  @override
  String get autoGen5194 => 'Compatível com macOS 10.8 ~ macOS Catalina 10.15';

  @override
  String get autoGen5195 => 'Compatível com macOS 10.9 ~ macOS Big Sur 11';

  @override
  String get autoGen5196 =>
      'Compatível com macOS High Sierra 10.13 ~ macOS Monterey 12';

  @override
  String get autoGen5197 =>
      'Compatível com macOS Mojave 10.14 ~ macOS Monterey 12';

  @override
  String get autoGen5198 =>
      'Compatível com OS X El Capitan 10.11 ~ macOS Big Sur 11';

  @override
  String get autoGen5199 =>
      'Compatível com OS X El Capitan 10.11 ~ macOS Monterey 12';

  @override
  String get autoGen5200 =>
      'Compatível com macOS Sierra 10.12 ~ macOS Monterey 12';

  @override
  String get autoGen5201 =>
      'Suporta macOS Sierra 10.12 ~ macOS Monterey 12 (o display principal HD 515 suporta oficialmente apenas macOS Monterey 12, a falsificação suporta o macOS Sequoia 15 mais recente)';

  @override
  String get autoGen5202 =>
      'Suporta macOS Sierra 10.12 ~ macOS Monterey 12 (o display principal Iris 540 suporta oficialmente apenas macOS Monterey 12, e a versão falsificada suporta o macOS Sequoia 15 mais recente)';

  @override
  String get autoGen5203 =>
      'Suporta macOS Sierra 10.12 ~ macOS Monterey 12 (o display principal Iris 550 suporta oficialmente apenas macOS Monterey 12, e a versão falsificada suporta o macOS Sequoia 15 mais recente)';

  @override
  String get autoGen5204 =>
      'Suporta macOS Sierra 10.12 ~ macOS Monterey 12 (o display principal HD530 oficialmente suporta apenas macOS Monterey 12, a falsificação suporta o macOS Sequoia 15 mais recente)';

  @override
  String get autoGen5205 =>
      'Compatível com macOS High Sierra 10.13 ~ macOS Ventura 13';

  @override
  String get autoGen5206 =>
      'Compatível com macOS Mojave 10.14 ~ macOS Sequoia 15';

  @override
  String get autoGen5207 =>
      'Compatível com macOS Catalina 10.15 ~ macOS Tahoe 26';

  @override
  String get autoGen5208 =>
      'Compatível com macOS Catalina 10.15 ~ macOS Sequoia 15';

  @override
  String get autoGen5209 =>
      'Suporta macOS 10.9 ~ macOS Monterey 12, adequado apenas para modelos gráficos independentes';

  @override
  String get autoGen5210 =>
      'Suporta macOS 10.13 ~ macOS Sequoia 15. Aplicável apenas a modelos gráficos independentes. Para Intel de 11ª geração e superiores, esse modelo geralmente é usado. A conversão de frequência da CPU e a frequência turbo são normais e nenhum patch Kext adicional é necessário (se a frequência turbo do sistema macOS não for normal, extraia e use o SSDT-PLUG nativo)';

  @override
  String get autoGen5211 =>
      'Suporta macOS 10.15 ~ macOS Tahoe 26, adequado para modelos gráficos independentes de placa A. Placas A sem driver suportadas (como RX560, RX570, RX5500, RX6600) suportarão perfeitamente a decodificação rígida VDA. Para Intel de 11ª geração e superior, este modelo é normalmente usado, a frequência turbo da CPU não é normal e um patch Kext adicional é necessário. Você pode ir para [Driver Kexts opcional]->[Relacionado à CPU]->[Driver de frequência variável da CPU, fornece principalmente suporte à conversão de frequência MacPro7,1 de 11ª geração e plataformas superiores] para marcar esta opção.';

  @override
  String get autoGen5212 => 'Faixa de compatibilidade do macOS não configurada';

  @override
  String get autoGen5213 => 'o ID do dispositivo deve ter 4 caracteres';

  @override
  String get autoGen5214 =>
      'Habilitar switch mestre de patch do buffer de quadro de exibição principal (Framebuffer)';

  @override
  String get autoGen5215 =>
      'Modifique a memória de vídeo para 1536M (memória de vídeo de 1,5G, valor padrão oficial da Apple, adequado para plataformas de exibição Intel Core de 3ª a 10ª geração)';

  @override
  String get autoGen5216 =>
      'Modifique a memória de vídeo para 2048M (memória de vídeo 2G, valor padrão da ferramenta, adequado para plataformas de exibição Intel Core de 3ª a 10ª geração)';

  @override
  String get autoGen5217 =>
      'Modifique a memória de vídeo para 3072M (memória de vídeo 3G, adequada para plataformas de exibição Intel Core de 3ª a 10ª geração)';

  @override
  String get autoGen5218 =>
      'Modifique a memória de vídeo para 4095M (memória de vídeo 4G, adequada para plataformas de exibição Intel Core de 3ª a 10ª geração)';

  @override
  String get autoGen5219 =>
      'Corrija o problema de desfoque de tela de alta resolução 1080P na plataforma Haswell de 4ª geração (por exemplo, o desfoque de tela de alta resolução pode ser porque o valor não é grande o suficiente. Este patch é um patch dedicado para exibição principal Haswell. Recomenda-se usar esta configuração para telas 1080P e inferiores)';

  @override
  String get autoGen5220 =>
      'Corrija o problema de telas de alta resolução como 2K e 4K na plataforma Haswell de 4ª geração (por exemplo, a tela de alta resolução pode ficar desfocada porque o valor não é grande o suficiente. Este patch é um patch dedicado para exibição principal Haswell. Recomenda-se usar esta configuração para telas 2K e 4k)';

  @override
  String get autoGen5221 =>
      'Patch candidato de tela de alta resolução Ivy Bridge';

  @override
  String get autoGen5222 => 'Habilitar patch de interface con0';

  @override
  String get autoGen5223 => 'Habilitar patch de interface con1';

  @override
  String get autoGen5224 => 'Habilitar patch de interface con2';

  @override
  String get autoGen5225 => 'Habilitar patch de interface con3';

  @override
  String get autoGen5226 =>
      'Patch de interface candidata de tela de alta resolução Ivy Bridge';

  @override
  String get autoGen5227 =>
      'Patch de tela de alta resolução do notebook Sandy Bridge (resolução 1600x900 e superior)';

  @override
  String get autoGen5228 =>
      'Patches opcionais para notebooks Ironlake/Arrandale';

  @override
  String get autoGen5229 =>
      'Corrigir solução de tela de alta resolução HDMI de 60 fps (em alguns casos, o monitor Intel Core pode usar o padrão HDMI 1.4 por padrão. Habilite este parâmetro para forçar o HDMI 2.0 a suportar resolução e taxa de atualização mais altas, como suporte a 4K @ 60 Hz)';

  @override
  String get autoGen5230 =>
      'Repare a saída de áudio HDMI (geralmente apenas o alcid apropriado é necessário; esse parâmetro às vezes pode resolver o problema da saída de áudio HDMI correta)';

  @override
  String get autoGen5231 =>
      'Desative o patch de conversão DP para HDMI para som digital (garante a estabilidade e confiabilidade da conexão HDMI quando a interface DisplayPort está conectada à interface HDMI por meio de um conversor)';

  @override
  String get autoGen5232 =>
      'Força o status on-line em todos os monitores, o que é útil para saída multitela da exibição principal. Em alguns casos, pode evitar problemas como uma tela preta após acordar do modo de suspensão ou a necessidade de conectar e desconectar o cabo do monitor para iluminar a tela durante a inicialização (geralmente aplicável a monitores Coffee Lake de 8ª geração e monitores principais superiores)';

  @override
  String get autoGen5233 =>
      'Melhorar o desempenho da tela principal (por exemplo: corrigir o problema de codificação hevc 4K da tela principal, resolução e fps que não atingem os valores ideais)';

  @override
  String get autoGen5234 =>
      'Habilite o carregamento completo do firmware do monitor principal, melhore a utilização do monitor principal e melhore o desempenho do monitor principal. Adicionar este parâmetro pode fazer com que o sistema não consiga entrar, portanto use com cuidado';

  @override
  String get autoGen5235 =>
      'Corrigido o problema de loop infinito causado pela tela principal Skylake de 6ª geração, pela tela principal Kaby Lake de 7ª geração e pelo driver de tela principal Coffee Lake de 8ª geração ao tentar acender uma tela HDMI externa de alta resolução (os sintomas específicos são que após conectar o cabo HDMI, a tela interna do notebook fica preta, mas tem luz de fundo, o sistema não responde e não há saída na tela externa)';

  @override
  String get autoGen5236 =>
      'Corrija o problema de travamento do kernel causado pela baixa frequência do Core Display Clock (CDCLK) na plataforma Ice Lake de 10ª geração';

  @override
  String get autoGen5237 =>
      'Corrigida uma falha de kernel na plataforma Ice Lake de 10ª geração causada pelo driver calculando incorretamente o tamanho da memória pré-alocada DVMT';

  @override
  String get autoGen5238 =>
      'Ajuste as configurações do controle deslizante de brilho (controle deslizante de brilho) para tornar as transições mais suaves e naturais para melhorar a experiência do usuário';

  @override
  String get autoGen5239 =>
      'Corrigido o problema de tela escura que durava 3 minutos após a inicialização em notebooks rodando macOS 13.4 ou superior nas plataformas Kaby Lake de 7ª geração, 8ª geração e 9ª geração Coffee Lake.';

  @override
  String get autoGen5240 =>
      'Corrigido o problema em que notebooks executando macOS 13.3 e versões anteriores nas plataformas Coffee Lake de 7ª geração, 8ª geração e 9ª geração teriam uma tela escura por 3 minutos após a inicialização.';

  @override
  String get autoGen5241 =>
      'Corrigido o problema em que a tela da plataforma Ice Lake de 10ª geração persistia de 7 a 15 segundos quando o notebook era ligado';

  @override
  String get autoGen5242 =>
      'Corrigido o problema de que o monitor HDMI de alta resolução do monitor principal Ice Lake de 10ª geração teria uma tela preta, sem sinal e a resolução não poderia ser emitida corretamente em 4K @ 60 Hz e alguns cenários de alta atualização de 2K / 4K (forçado a ativar a \"substituição do relógio de pixel máximo\" do monitor principal (IGPU))';

  @override
  String get autoGen5243 =>
      'Usado para reparar efeitos de falha de exibição nuclear ou problemas de tela tremeluzente (como exibição nuclear HD530)';

  @override
  String get autoGen5244 =>
      'Desative a tela independente (geralmente quando a tela independente de um laptop com gráficos duplos não pode ser controlada, a tela independente precisa ser desativada)';

  @override
  String get autoGen5245 =>
      'Corrigido o problema de laptops (como Dell XPS 15 9570 e outros notebooks com tela de alta resolução) em que a tela interna da tela de alta resolução retorna o valor máximo errado da taxa de link, resultando em uma falha direta quando a tela interna está acesa (é recomendado marcar esta caixa para notebooks com tela de alta resolução)';

  @override
  String get autoGen5246 =>
      'Injete o EDID do monitor na interface AAPL00 (geralmente a tela interna de um notebook) para corrigir o problema de tela preta da interface (nota: você precisa injetar o EDID do monitor na página de configuração do EDID primeiro! Você pode preencher o EDID na ferramenta \"Configuração de exibição\" -> \"Display EDID\". Para placas-mãe da série 500, como B560, ao reparar a saída HDMI, você deve injetar o EDID do monitor, caso contrário, há uma alta probabilidade de uma tela preta Às vezes, para outras plataformas Intel, o problema de tela borrada, tela roxa ou tela preta pode ser reparado)';

  @override
  String get autoGen5247 =>
      'Injete o EDID do monitor na interface AAPL01 para corrigir a tela preta e nenhum problema de exibição da interface (Nota: Você precisa injetar o EDID do monitor na página de configuração do EDID primeiro! Você pode preencher o EDID na ferramenta \"Configuração de exibição\" -> \"Display EDID\". Placas-mãe da série 500, como B560, devem injetar o EDID do monitor ao reparar a saída HDMI, caso contrário, há uma grande probabilidade de uma tela preta. Às vezes, para outros Intel plataformas, a tela principal borrada, tela roxa ou problema de tela preta podem ser reparados)';

  @override
  String get autoGen5248 =>
      'Injete o EDID do monitor na interface AAPL02 para corrigir a tela preta e nenhum problema de exibição da interface (Nota: Você precisa injetar o EDID do monitor na página de configuração do EDID primeiro! Você pode preencher o EDID na ferramenta \"Configuração de exibição\" -> \"Display EDID\". Placas-mãe da série 500, como B560, devem injetar o EDID do monitor ao reparar a saída HDMI, caso contrário, há uma grande probabilidade de uma tela preta. Às vezes, para outros Intel plataformas, a tela principal borrada, tela roxa ou problema de tela preta podem ser reparados)';

  @override
  String get autoGen5249 =>
      'Habilite o suporte LSPCON e converta DisplayPort em saída HDMI 2.0 (requer conversor de sinal LSPCON de porta 0 ~ 3, adequado para plataformas Skylake de 6ª geração ~ 10ª geração Comet Lake, Ice Lake Intel)';

  @override
  String get autoGen5250 =>
      'Conversor de sinal LSPCON da porta 0 (o suporte LSPCON precisa ser habilitado)';

  @override
  String get autoGen5251 =>
      'Conversor de sinal LSPCON da porta 1 (o suporte LSPCON precisa ser habilitado)';

  @override
  String get autoGen5252 =>
      'Conversor de sinal LSPCON da porta 2 (o suporte LSPCON precisa ser habilitado)';

  @override
  String get autoGen5253 =>
      'Conversor de sinal LSPCON da porta 3 (o suporte LSPCON precisa ser habilitado)';

  @override
  String get autoGen5254 =>
      'Modifique a memória do framebuffer para 9M (o tamanho da memória do framebuffer afetará telas de alta resolução, geralmente usado em conjunto com framebuffer-stolenmem)';

  @override
  String get autoGen5255 =>
      'Modifique a memória roubada para 19M (aplicável à tela 1080P, valor padrão da ferramenta, não há necessidade de verificar. Se houver um parâmetro DVMT no BIOS, é recomendado modificá-lo para 64M. Se o parâmetro DVMT for alterado no BIOS, este parâmetro pode ser removido)';

  @override
  String get autoGen5256 =>
      'Modifique a memória roubada para 64M (aplicável a telas de 2k ou 4k. Se houver um parâmetro DVMT no BIOS, é recomendado modificá-lo para 64M ou superior. Se o parâmetro DVMT for alterado no BIOS, este parâmetro pode ser removido)';

  @override
  String get autoGen5257 =>
      'Modifique a memória roubada para 128M (aplicável a telas de 4k. Se houver um parâmetro DVMT no BIOS, é recomendado modificá-lo para 128M ou 256M ou superior para telas de alta resolução. Se os parâmetros DVMT forem alterados no BIOS, este parâmetro pode ser removido)';

  @override
  String get autoGen5258 =>
      'Habilite a porta HDMI con0 (requer interface HDMI nº 0)';

  @override
  String get autoGen5259 =>
      'Interface HDMI nº 0, usada para corrigir o problema de tela preta do HDMI de 6ª a 10ª geração (é necessário ativar a porta HDMI con0)';

  @override
  String get autoGen5260 =>
      'Habilite a porta HDMI con1 (requer interface HDMI nº 1)';

  @override
  String get autoGen5261 =>
      'Interface HDMI nº 1, usada para corrigir o problema de tela preta do HDMI de 6ª a 10ª geração (é necessário ativar a porta HDMI con1)';

  @override
  String get autoGen5262 =>
      'Habilite a porta HDMI con2 (requer interface HDMI nº 2)';

  @override
  String get autoGen5263 =>
      'Interface HDMI nº 2, usada para corrigir o problema de tela preta do HDMI de 6ª a 10ª geração (é necessário ativar a porta HDMI con2)';

  @override
  String get autoGen5264 => 'Parâmetros de memória de vídeo/DVMT';

  @override
  String get autoGen5265 => 'Parâmetros específicos do Haswell de 4ª geração';

  @override
  String get autoGen5266 =>
      'Patch candidato de tela de alta resolução Ivy Bridge de 3ª geração';

  @override
  String get autoGen5267 =>
      'Patch candidato de tela de alta resolução Sandy Bridge de 2ª geração';

  @override
  String get autoGen5268 =>
      'Patch candidato para notebooks Arrandale de 1ª geração';

  @override
  String get autoGen5269 => 'Reparação de HDMI/interface';

  @override
  String get autoGen5270 => 'Correção do Ice Lake de 10ª geração';

  @override
  String get autoGen5271 => 'Correção universal';

  @override
  String get autoGen5272 =>
      'Patch de tela de alta resolução do notebook Ivy Bridge (resolução 1600x900 e superior)';

  @override
  String get autoGen5273 =>
      'Habilite o patch de correção do tipo HDMI da interface con0 para corrigir tela preta HDMI de 6ª a 10ª geração, tela roxa e problemas de áudio';

  @override
  String get autoGen5274 =>
      'Habilite o patch de correção do tipo HDMI da interface con1 para corrigir tela preta HDMI de 6ª a 10ª geração, tela roxa e problemas de áudio';

  @override
  String get autoGen5275 =>
      'Habilite o patch de correção do tipo HDMI da interface con2 para corrigir tela preta HDMI de 6ª a 10ª geração, tela roxa e problemas de áudio';

  @override
  String get autoGen5276 =>
      'Erro de formato alc_codec.json: o nó raiz deve ser Map<String, dinâmico>';

  @override
  String get autoGen5277 =>
      'Habilite -v para executar o código (conveniente para localizar erros quando o código está travado, adequado para depuração e estágio de inicialização)';

  @override
  String get autoGen5278 =>
      'É conveniente para o sistema Mac imprimir mais informações sobre símbolos quando ocorre uma falha do kernel, o que é útil para solucionar problemas. Este parâmetro geralmente é usado com debug=0x100 (é altamente recomendável verificá-lo ao depurar e inicializar pela primeira vez)';

  @override
  String get autoGen5279 =>
      'Impedir a reinicialização automática quando o kernel travar, facilitando a visualização dos logs de travamento do Panic (é altamente recomendável verificar isso ao depurar e inicializar pela primeira vez)';

  @override
  String get autoGen5280 =>
      'Desative a função watchdog para evitar o acionamento acidental da reinicialização do Panic crash (aplicável à inicialização de depuração)';

  @override
  String get autoGen5281 =>
      'Desative a randomização do espaço de endereço do kernel (KASLR) para garantir que o kernel e o kext (extensão do kernel) sejam carregados no mesmo mapa de memória fixa para evitar travamentos iniciais do kernel causados ​​​​por conflitos de memória causados ​​​​por valores de deslizamento aleatórios (aplicável à inicialização de depuração)';

  @override
  String get autoGen5282 =>
      'Ignore a verificação do modelo durante a primeira inicialização do macOS para evitar símbolos de proibição devido a SMBIOS muito baixos ou muito altos e garanta que o sistema possa ser inicializado normalmente (observe que este parâmetro não pode ignorar a verificação do modelo durante a instalação. Uma mensagem semelhante a \"macOS não é compatível\" aparecerá durante a instalação. Neste momento, você pode alterar o SMBIOS para um nível superior ou inferior para suportar o sistema novo ou antigo)';

  @override
  String get autoGen5283 =>
      'Este parâmetro é aplicável à desativação de AMFI, placas gráficas relativamente novas (como HD4000 e superior, GT710 e outros núcleos Kepler e superiores) ou drivers WiFi. Observe para não usá-lo com o parâmetro amfi_get_out_of_my_way=0x1 ao mesmo tempo! (Este parâmetro só terá efeito se o SIP estiver desabilitado, e este parâmetro será removido automaticamente depois que o SIP for habilitado)';

  @override
  String get autoGen5284 =>
      'Certifique-se de que AMFIPass.kext possa ser habilitado e ativado corretamente no sistema macOS Tahoe 26 mais recente para continuar ignorando as verificações de segurança AMFI (AMFI desativado). (Nota: 1. Este parâmetro não pode ser usado ao mesmo tempo que o parâmetro de desabilitação AMFI, e este parâmetro precisa ser usado com AMFIPass.kext. 2. Este parâmetro geralmente é usado apenas nos sistemas mais recentes, não adicione-o a menos que necessário)';

  @override
  String get autoGen5285 =>
      'Este parâmetro é aplicável quando AMFI está desativado, plataformas antigas, placas gráficas antigas (como GT240) ou drivers WiFi são usados. Observe para não usar o parâmetro amfi=0x80 ao mesmo tempo! (Só entra em vigor quando o SIP está desabilitado e este parâmetro é removido automaticamente depois que o SIP é habilitado)';

  @override
  String get autoGen5286 =>
      'Corrigido o problema de travamento de alguns aplicativos (por exemplo: Baidu Netdisk) após desabilitar o AMFI (só terá efeito se o SIP estiver desabilitado, e este parâmetro será removido automaticamente após o SIP ser habilitado)';

  @override
  String get autoGen5287 =>
      'Corrija problemas que podem ocorrer no sistema mais recente (principalmente na versão Beta) (exceção de driver do sistema, como: anormalidade repentina na placa de som, Bluetooth, frequência da CPU, etc. É altamente recomendável verificar isso ao tentar a versão Beta mais recente do sistema)';

  @override
  String get autoGen5288 =>
      'Habilite apenas 1 núcleo de CPU (aplicável a X58, X79, X99, X299 e outras falhas de núcleo de CPU de servidor multi-core, instalação inicial e estágios de depuração)';

  @override
  String get autoGen5289 =>
      'Desligue o VT-d (desabilite o IOMMU, você pode verificar quando o BIOS não desliga o VT-d) para resolver o problema de algumas placas-mãe travarem após iniciar ou entrar no sistema.';

  @override
  String get autoGen5290 =>
      'Desative o carregamento do firmware de gráficos da Apple para evitar travamentos devido a falha no carregamento do firmware ou loop de repetição durante a inicialização (aplicável apenas a gráficos Intel)';

  @override
  String get autoGen5291 =>
      'Desative o monitor Intel Core (recomenda-se verificar quando o monitor principal não pode ser acionado e a decodificação rígida acelerada não é suportada)';

  @override
  String get autoGen5292 =>
      'Desativar gráficos independentes (geralmente quando a placa gráfica independente de notebook com gráficos duplos Intel [comumente usada em placas N] não pode ser acionada, é recomendável verificá-la)';

  @override
  String get autoGen5293 =>
      'Desative o driver NVIDIA (aplicável apenas ao depurar placas N incompatíveis)';

  @override
  String get autoGen5294 =>
      'Desative a aceleração gráfica do núcleo Intel (por exemplo: ao usar OCLP e não conseguir iniciar normalmente após corrigir o patch gráfico principal, você pode verificá-lo, sem aceleração, apenas para depuração)';

  @override
  String get autoGen5295 =>
      'Reparar e melhorar o desempenho da tela principal da Intel (por exemplo: corrigir o problema de codificação hevc 4K da tela principal, resolução e fps que não atingem os valores ideais)';

  @override
  String get autoGen5296 =>
      'Corrigido o problema com o valor máximo da taxa de link do monitor Intel Core, que causava um travamento direto quando a tela era ligada ((especialmente em Skylake, Kaby Lake, Coffee Lake, Comet Lake, tela preta e sem sinal, não atingindo a resolução 4K esperada, etc.)';

  @override
  String get autoGen5297 =>
      'Corrija o problema de resolução da tela principal, force a ativação da \"substituição do clock máximo de pixel\" do IGPU e aumente a resolução padrão, taxa de atualização e outras restrições do macOS';

  @override
  String get autoGen5298 =>
      'Corrija o problema da tela preta 4K na saída HDMI de alguns laptops (geralmente aplicável a laptops, como ThinkPad P71/7700HQ/HD630/4K preso em `gIOScreenLockState3`)';

  @override
  String get autoGen5299 =>
      'Corrija o problema de travamento do kernel causado pela baixa frequência do Core Display Clock (CDCLK) na plataforma Ice Lake de 10ª geração';

  @override
  String get autoGen5300 =>
      'Corrigido um problema de travamento do kernel na plataforma Ice Lake de 10ª geração causado pelo driver calculando incorretamente o tamanho da memória pré-alocada DVMT.';

  @override
  String get autoGen5301 =>
      'Corrigido o problema em que a tela da plataforma Ice Lake de 10ª geração persistia de 7 a 15 segundos quando o notebook era ligado';

  @override
  String get autoGen5302 =>
      'Desative o iGPU (core graphics) para carregar o módulo de telemetria durante o processo de inicialização. Alguns notebooks (especialmente Chromebooks) podem fazer com que o sistema congele ou congele durante a fase de inicialização ao carregar este módulo (aplicável a notebooks Intel Skylake de 6ª geração e superiores)';

  @override
  String get autoGen5303 =>
      'Corrija o registro de luz de fundo no macOS Ventura 13.4 e inferior, plataformas de notebook KBL de 7ª geração, CFL de 8ª e 9ª geração e corrija o problema de tela preta ou tela escura com duração de 3 minutos (aplicável a notebooks)';

  @override
  String get autoGen5304 =>
      'Corrija o registro de luz de fundo no macOS Ventura 13.4 e superior, plataformas de notebook KBL de 7ª geração, CFL de 8ª e 9ª geração e corrija o problema de tela preta ou tela escura com duração de 3 minutos (aplicável a notebooks)';

  @override
  String get autoGen5305 =>
      'Ajuste as configurações do controle deslizante de brilho (controle deslizante de brilho) para tornar as transições mais suaves e naturais para melhorar a experiência do usuário (aplicável a notebooks)';

  @override
  String get autoGen5306 =>
      'Desenhe o logotipo da Apple na segunda fase de inicialização em vez de copiar o buffer de quadros. Ao conectar um monitor externo, faça uma transição suave da barra de progresso para a área de trabalho de login. Em alguns casos, pode resolver o problema da tela preta ao entrar no sistema. Ao mesmo tempo, é útil conectar e desconectar o cabo do monitor para ligar a tela.';

  @override
  String get autoGen5307 =>
      'Corrija o problema inicial da configuração ACPI de placas de plataforma como X58,';

  @override
  String get autoGen5308 =>
      'Corrija o problema inicial da configuração ACPI de placas de plataforma como X58,';

  @override
  String get autoGen5309 =>
      'Problema de suporte de gerenciamento de direitos digitais (DRM) de hardware corrigido em GPUs AMD (permite que conteúdo digital protegido por DRM, como vídeos de alta qualidade fornecidos por serviços de streaming, seja experimentado em GPUs AMD suportadas)';

  @override
  String get autoGen5310 =>
      'Desative a aceleração da placa gráfica ATI e AMD (por exemplo: ao usar OCLP e a placa gráfica não consegue iniciar normalmente após o patch, você pode verificar, sem aceleração, apenas para depuração)';

  @override
  String get autoGen5311 =>
      'Reparar HD7750, HD7850 (o núcleo principal é a série GCN HD77XX, HD78XX, HD79XX) e outras distorções de tela antigas de cartão A, tela amarela e outros problemas de exibição anormais';

  @override
  String get autoGen5312 =>
      'Corrija a tela preta ou problemas de exibição anormais que podem ser causados ​​por algumas placas gráficas, ignorando completamente as restrições ou configurações de AppleGraphicsDevicePolicy.kext na placa gráfica. Quando você não tiver certeza das restrições específicas, evite problemas de exibição ou fenômenos de tela preta causados ​​por configurações de hardware incompatíveis (como ID de placa específica). Preste atenção a este parâmetro, que só terá efeito quando usado com AnythingGreen.kext. Para placas A nativas sem driver, você pode remover o driver WhateverGreen.kext, portanto, esse parâmetro não precisa ser adicionado.';

  @override
  String get autoGen5313 =>
      'Corrija o problema de tela preta quando as placas gráficas AMD Navi core RX5XXX, série RX6XXX são inicializadas (por exemplo: RX5500, RX5600, RX5700, RX6600, RX6800, RX6900, etc.), substitua board-id por board-ix e ignore algumas restrições de AppleGraphicsDevicePolicy. Nota: 1. Só terá efeito quando usado com AnythingGreen.kext. 2. BIOS Desligue a porta serial/COM nas configurações do SuperIO. Para placas A nativas sem driver, você pode remover o driver WhateverGreen.kext, portanto, esse parâmetro não precisa ser adicionado.';

  @override
  String get autoGen5314 =>
      'Corrija o problema de tela preta após acordar de algumas placas gráficas, como RX470 e RX570, desative a verificação de identificação da placa em AppleGraphicsDevicePolicy e corrija a tela preta ou problemas de exibição anormais que podem ser causados ​​​​por algumas placas gráficas. Observe que este parâmetro só terá efeito quando usado com AnythingGreen.kext. Para placas A nativas sem driver, o driver WhateverGreen.kext pode ser removido, portanto, este parâmetro não precisa ser adicionado.';

  @override
  String get autoGen5315 =>
      'Reparar plataformas Intel de 3ª geração e anteriores AMD RX5XX (por exemplo: RX560, RX570, RX580) série, AMD RX5XXX, RX6XXX (por exemplo: RX5500, RX6600) placas gráficas sem driver da série têm um problema de tela preta em Ventura e sistemas superiores (Nota: Você precisa usar OCLP para corrigir a placa gráfica após entrar no sistema! Após corrigir a placa gráfica, remova o parâmetro de inicialização ou use a alternativa config-after-post no diretório EFI para renomear a configuração e reiniciar para acionar a placa gráfica!)';

  @override
  String get autoGen5316 =>
      'Corrigir placas gráficas AMD oficialmente não suportadas (por exemplo: RX550 Lexa core) para suportar codificação de vídeo de hardware VDA';

  @override
  String get autoGen5317 =>
      'Repare a placa N antiga da arquitetura Fermi, Maxwell, Pascal (por exemplo: GT610, GTX750, GTX960, GTX1050) Problema de driver da placa gráfica do sistema BigSur 11 ou superior (Nota: você precisa usar OCLP para corrigir a placa gráfica após entrar no sistema!!! Este parâmetro não é necessário para o núcleo Kepler!!!)';

  @override
  String get autoGen5318 =>
      'Corrigido o problema de velocidade lenta de algumas placas de rede sem fio Broadcom (altere o código do país Broadcom WiFi para Hong Kong, você também pode alterar o canal do roteador para melhorá-lo)';

  @override
  String get autoGen5319 =>
      'Corrigir código ramrod, problema de dano ao simulador SMC';

  @override
  String get autoGen5320 =>
      'Corrija o problema de atualização OTA do sistema macOS após desativar o SIP (System Integrity Protection) ou SecureBootModel (modelo de segurança) e corrija o problema de exibição do nome da CPU personalizado';

  @override
  String get autoGen5321 =>
      'Evite o problema de reiniciar o dispositivo após entrar no modo de suspensão, facilitando a obtenção de logs de falhas do kernel e a solução de problemas de suspensão.';

  @override
  String get autoGen5322 =>
      'Melhore a identificação e o agendamento da topologia das CPUs Intel de 12ª geração e posteriores de núcleo grande e pequeno. A melhoria do desempenho não é garantida. Recomenda-se habilitá-lo após o teste real (observe que ele precisa ser usado com CpuTopologyRebuild.kext para ter efeito)';

  @override
  String get autoGen5323 =>
      'Desative completamente o modo Darkwake e deixe o sistema entrar no modo de suspensão tradicional. É usado principalmente para reparar problemas como ativação de tela preta e ativação automática.';

  @override
  String get autoGen5324 =>
      'Desative o modo de espera de renderização iGPU RC6 e corrija o problema de pânico do kernel NVMe causado pela exibição do núcleo RC6 durante o sono';

  @override
  String get autoGen5325 =>
      'Habilite o controle de luz de fundo PWM para placas gráficas AMD Radeon RX série 5000';

  @override
  String get autoGen5326 =>
      'Repare e corrija a exibição da saída da interface DVI de placas A antigas (290X, 370, etc.)';

  @override
  String get autoGen5327 =>
      'Forçar o painel de toque tipo I2C a funcionar no modo polling em vez do modo acionado por interrupção (o modo de interrupção geralmente requer SSDT personalizado, o que é relativamente complicado. Às vezes, o problema do painel de toque I2C estar inutilizável pode ser corrigido (ele precisa ser usado com o driver VoodooI2C)';

  @override
  String get autoGen5328 =>
      'DevirtualiseMmio (Algumas placas-mãe e firmware podem ter conflitos ou problemas de incompatibilidade ao lidar com a área MMIO. Habilitar esta opção pode ajudar a resolver esses conflitos e melhorar a compatibilidade e estabilidade do sistema. Esta opção geralmente é combinada com a versão OpenCore Debug para personalizar o MMIO para resolver o EB da placa causado por problemas de memória em algumas placas-mãe (por exemplo: algumas placas-mãe de processadores X58, X79, X99 e AMD série 7000))';

  @override
  String get autoGen5329 =>
      'EnableWriteUnprotector (Recomenda-se verificá-lo em firmware que não suporta tabela de atributos de memória (MAT), especialmente firmware OEM. Após ligá-lo, a proteção contra gravação no registro CR0 será excluída durante a execução para garantir a escrita normal de NVRAM. Geralmente aplicável a plataformas anteriores à 7ª geração)';

  @override
  String get autoGen5330 =>
      'ProtectUefiServices (protege os serviços UEFI de serem substituídos pelo firmware, geralmente usado para reparar problemas de EB da placa causados ​​por DevirtualiseMmio, etc. Recomenda-se verificá-lo para placas-mãe Z390, Z490 e Ice Lake de 10ª geração)';

  @override
  String get autoGen5331 =>
      'SetupVirtualMap (estabelece memória virtual contínua para uso de OC e mapeia-a para memória física dispersa. Nota: Não é recomendado marcar esta opção para placas-mãe Comet Lake ASUS, Gigabyte e AsRock de 10ª geração.';

  @override
  String get autoGen5332 =>
      'RebuildAppleMemoryMap (Em firmware que suporta tabela de atributos de memória (MAT), é recomendado verificá-lo. Geralmente é usado em conjunto com SyncRuntimePermissions. Este item pode entrar em conflito com EnableWriteUnprotector. Recomenda-se escolher um dos dois. Geralmente é aplicável a plataformas após a 8ª geração e também é aplicável a algumas plataformas antigas)';

  @override
  String get autoGen5333 =>
      'SyncRuntimePermissions (Corrige o problema de que o hardware não pode injetar permissões ao injetar memória. Geralmente, esse problema existe em placas-mãe após 2018. Se você não consegue entrar no Windows por causa desta opção, ative-a. Este item geralmente é usado em conjunto com RebuildAppleMemoryMap)';

  @override
  String get autoGen5334 =>
      'CPU de 2ª geração - placa-mãe híbrida de 3ª geração';

  @override
  String get autoGen5335 =>
      'CPU de 3ª geração - placa-mãe híbrida de 2ª geração';

  @override
  String get autoGen5336 =>
      'Conclua a instalação sem acionar a tela principal por enquanto (isso pode evitar tela preta e problemas de travamento do kernel causados ​​​​pelo problema do quadro do buffer da tela principal)';

  @override
  String get autoGen5337 => 'ID de dispositivo falsificado';

  @override
  String get autoGen5338 =>
      'A exibição principal é usada apenas para tarefas de aceleração e cálculo, não como exibição de saída (exibição de saída da placa gráfica independente)';

  @override
  String get autoGen5339 => 'HD3000, HD P3000 e outros monitores principais';

  @override
  String get autoGen5340 => 'HD4000, HD P4000 e outros monitores principais';

  @override
  String get autoGen5341 =>
      'HD4400, HD4600, HD P4600 e outros monitores principais';

  @override
  String get autoGen5342 => 'Iris Pro 6200/6300 e outros monitores principais';

  @override
  String get autoGen5343 =>
      'Tela principal HD5600 (P6200, P6300 pode ser falsificado)';

  @override
  String get autoGen5344 => 'HD6000, Iris 6100 e outros monitores principais';

  @override
  String get autoGen5345 =>
      'HD520, HD530 e outros monitores de núcleo HD620 falsificados (aplicáveis ​​a sistemas Ventura e superiores)';

  @override
  String get autoGen5346 =>
      'HD520, HD530 e outros monitores de núcleo HD620 falsificados (aplicável a sistemas Ventura e superiores, alternativa)';

  @override
  String get autoGen5347 =>
      'HD530, HD P530 e outros monitores principais da série 500 (aplicáveis ​​a sistemas Monterey e abaixo)';

  @override
  String get autoGen5348 => 'HD 630, HD P630 e outros monitores principais';

  @override
  String get autoGen5349 =>
      'HD 630, P630 e outros monitores principais UHD630 falsificados (Opção 1)';

  @override
  String get autoGen5350 =>
      'HD 630, P630 e outros monitores principais UHD630 falsificados (Opção 2)';

  @override
  String get autoGen5351 => 'Solução um de saída de display nuclear UHD 630';

  @override
  String get autoGen5352 => 'Caixa de saída de exibição principal UHD 630 2';

  @override
  String get autoGen5353 =>
      'Intel HD Graphics (por exemplo: i3 380M, i5 480M vem com display central integrado)';

  @override
  String get autoGen5354 =>
      'Tela de saída de vídeo principal HD3000, adequada para resoluções de 1366x768 e abaixo)';

  @override
  String get autoGen5355 =>
      'Habilite o suporte para resoluções acima de 1600X900';

  @override
  String get autoGen5356 =>
      'Display de saída de display nuclear HD3000, adequado para resoluções de 1600x900 e superiores)';

  @override
  String get autoGen5357 =>
      'Solução de driver de vídeo principal HD4000, adequada para resolução 1366x768 e inferior, método de link LVDS';

  @override
  String get autoGen5358 =>
      'Solução dois de driver de vídeo principal HD4000, adequada para modo de link LVDS de resolução 1600x900 e superior, saída multitela pode exigir mais configurações de patch)';

  @override
  String get autoGen5359 =>
      'Solução três de driver de vídeo principal HD4000, adequada para monitores com conexão eDP)';

  @override
  String get autoGen5360 => 'Tela principal HD4200, HD4400, HD4600';

  @override
  String get autoGen5361 => 'Tela principal HD5000, HD5100, HD5200';

  @override
  String get autoGen5362 => 'Tela principal HD5500';

  @override
  String get autoGen5363 => 'Tela principal HD5600';

  @override
  String get autoGen5364 => 'Tela central HD6000';

  @override
  String get autoGen5365 =>
      'HD520, HD530 e outros monitores falsificados HD620 (para sistemas Ventura e superiores)';

  @override
  String get autoGen5366 =>
      'HD 515, HD 520, HD 530, HD 540, HD 550, display principal P530 (aplicável a sistemas Monterey e abaixo)';

  @override
  String get autoGen5367 => 'Alternativa de exibição nuclear HD 515';

  @override
  String get autoGen5368 => 'Tela principal HD 510';

  @override
  String get autoGen5369 =>
      'Tela principal HD 615, HD 620, HD 630, HD 640, HD 650';

  @override
  String get autoGen5370 => 'Alternativa de exibição de núcleo HD / UHD 620';

  @override
  String get autoGen5371 => 'Tela principal UHD 617, UHD 620';

  @override
  String get autoGen5372 => 'Tela principal UHD 630';

  @override
  String get autoGen5373 => 'Tela principal UHD 620';

  @override
  String get autoGen5374 => 'Tela principal Intel lris Plus 655';

  @override
  String get autoGen5375 => 'Tela principal da série G4/G7';

  @override
  String get autoGen5376 => 'Exibição de saída de exibição nuclear HD3000';

  @override
  String get autoGen5377 => 'Exibição de saída de exibição nuclear HD4000';

  @override
  String get autoGen5378 =>
      'HD4200, HD4400, HD4600, HD P4600 e outros monitores principais (recomenda-se verificar o patch dedicado do monitor principal de 4ª geração na configuração avançada do monitor principal, e pequenos problemas que podem ocorrer foram corrigidos)';

  @override
  String get autoGen5379 => 'Tela principal HD 515';

  @override
  String get autoGen5380 => 'Tela principal HD 520/530';

  @override
  String get autoGen5381 => 'Tela principal HD 540/550';

  @override
  String get autoGen5382 => 'Tela principal HD 580';

  @override
  String get autoGen5383 =>
      'Tela principal HD P530 (como e3 1245v5 vem com tela principal integrada)';

  @override
  String get autoGen5384 => 'Tela principal HD 615';

  @override
  String get autoGen5385 => 'HD 630, tela principal HD P630';

  @override
  String get autoGen5386 => 'Tela principal HD 640/650';

  @override
  String get autoGen5387 => 'Tela principal HD/UHD 620';

  @override
  String get autoGen5388 => 'Tela principal UHD 620/630';

  @override
  String get autoGen5389 => 'Tela principal UHD 655';

  @override
  String get autoGen5390 =>
      'Renomeie GPRW para XPRW para corrigir o problema de ativação instantânea (nota: isso pode fazer com que o teclado USB não consiga ativar o dispositivo, você pode ativá-lo através da tecla liga / desliga)';

  @override
  String get autoGen5391 =>
      'Renomeie UPRW para XPRW para corrigir o problema de ativação instantânea (nota: isso pode fazer com que o teclado USB não consiga ativar o dispositivo, você pode ativá-lo através da tecla liga / desliga)';

  @override
  String get autoGen5392 =>
      'Habilite dispositivos GPI0 para suportar trackpads I2C';

  @override
  String get autoGen5393 =>
      'Um driver necessário para extensões de kernel do macOS, que fornece principalmente escalabilidade e compatibilidade para macOS, o que permite que outros desenvolvedores escrevam extensões de kernel para estender o macOS.';

  @override
  String get autoGen5394 =>
      'Por exemplo, EverythingGreen, AppleALC, VirtualSMC, etc. podem implementar várias modificações e melhorias no macOS por meio do Lilu.kext, como suporte a diferentes placas gráficas, placas de som, gerenciamento de máquinas virtuais, etc.';

  @override
  String get autoGen5395 =>
      'Lilu.kext geralmente é a primeira extensão do kernel do macOS carregada, pois outros plug-ins podem precisar contar com sua funcionalidade. Isso garante que o plug-in carregue corretamente quando o macOS for iniciado';

  @override
  String get autoGen5396 => 'Drivers básicos essenciais';

  @override
  String get autoGen5397 =>
      'No hardware Apple real, o SMC é responsável por gerenciar funções de gerenciamento do sistema, como sensores de hardware, controle de ventilador, gerenciamento de energia, sensores de temperatura e status da bateria. O VirtualSMC fornece esses recursos em hardware que não é da Apple para garantir que o macOS possa funcionar corretamente nesses sistemas';

  @override
  String get autoGen5398 =>
      'Frequentemente usado em conjunto com outras extensões de kernel, como Lilu.kext, AnythingGreen, etc. para criar um ambiente Mac quase real em hardware que não seja da Apple';

  @override
  String get autoGen5399 =>
      'O driver está faltando e o macOS não funciona corretamente.';

  @override
  String get autoGen5400 =>
      'Ele fornece principalmente suporte ao driver gráfico GPU. A maioria deles é fortemente recomendada para verificação (modelos MacPro7, 1 e RX460, RX560 e superiores, usuários de gráficos independentes da AMD podem remover a verificação). Geralmente entra em conflito com os drivers NootRX e NootedRed. Não os selecione ao mesmo tempo durante a fase de instalação.';

  @override
  String get autoGen5401 =>
      'Suporta uma variedade de placas gráficas, incluindo placas gráficas NVIDIA, AMD e Intel. Esta extensão pode corrigir e configurar o Framebuffer correto para que a exibição e a resolução funcionem corretamente';

  @override
  String get autoGen5402 =>
      'Fornece suporte para conexões HDMI e DisplayPort (DP) para garantir que as saídas de áudio e vídeo funcionem corretamente';

  @override
  String get autoGen5403 =>
      'Use AppleALC para imitar a placa de som integrada (escolha preferida relativamente perfeita)';

  @override
  String get autoGen5404 =>
      'Use placa de som universal VoodooHDA (carregada durante a inicialização, compatível apenas com macOS BigSur 11.2.3 e inferior. Versões superiores do macOS precisam adicionar este driver à extensão do kernel do sistema para entrar em vigor. De acordo com o teste do autor, o suporte mais alto é a versão oficial do macOS Tahoe 26.x)';

  @override
  String get autoGen5405 =>
      'Correção de compatibilidade do controlador USB 3.0 para plataformas antigas ou plataformas AMD';

  @override
  String get autoGen5406 =>
      'Corrija o problema de reinicialização causado pelo gerenciamento de energia da CPU de plataformas antigas anteriores à Intel de 3ª geração (mostrado como log de travamento do kernel AppleIntelCPUPowerManagement ou logotipo de inicialização travado ou reinicialização logo após entrar no sistema, etc.)';

  @override
  String get autoGen5407 =>
      'Corrigir o gerenciamento de energia da CPU da série AMD Ryzen (aplicável apenas à série AMD Ryzen, se houver problemas de reinicialização causados ​​pelo gerenciamento de energia, considere remover a caixa de seleção)';

  @override
  String get autoGen5408 =>
      'Solução de unidade de bateria 1 (aplicável a notebooks de 3ª geração e plataformas mais antigas)';

  @override
  String get autoGen5409 =>
      'Solução de unidade de bateria 2 (aplicável a notebooks de 3ª geração e plataformas mais recentes)';

  @override
  String get autoGen5410 =>
      'Sensor de luz ambiente (brilho automático da tela), se você não possui sensor de luz ambiente, não use, caso contrário pode causar problemas';

  @override
  String get autoGen5411 =>
      'O controle do ventilador do notebook Asus, gerenciamento de energia e outras otimizações de sensores do sistema, etc. não são recomendados para uso por pessoas que não sejam da Asus.';

  @override
  String get autoGen5412 =>
      'O controle do ventilador do notebook Lenovo, o gerenciamento de energia e outras otimizações do sensor do sistema, etc. não são recomendados para máquinas que não sejam da Lenovo.';

  @override
  String get autoGen5413 =>
      'Sensor especial para laptops Dell para monitorar e controlar ventiladores com mais precisão. Não recomendado para máquinas que não sejam da Dell.';

  @override
  String get autoGen5414 =>
      'Permite que as informações dos sensores dos processadores AMD (como temperatura, consumo de energia, frequência, etc.) sejam expostas às ferramentas de monitoramento do macOS. Este driver oferece suporte aos processadores da série AMD Ryzen e alguns processadores da série AMD FX. Outros processadores AMD podem causar problemas inesperados. Ao mesmo tempo, algumas plataformas dos sistemas Sequoia 15 e superiores podem ter problemas de compatibilidade, portanto escolha com cuidado.';

  @override
  String get autoGen5415 =>
      'Usado para suportar RX6700, RX6750XT, RX6750GRE e outros gráficos independentes da série RX6XXX oficialmente não suportados. Há um conflito com o driver WhateverGreen. Não selecione ambos na fase de instalação.';

  @override
  String get autoGen5416 =>
      'Suporta Navi 21 (Big Sur e superior), Navi 22/23 (Monterey e superior) e também suporta RX6650, RX6950 e outras placas gráficas';

  @override
  String get autoGen5417 =>
      'Adicionar este driver ao instalar o macOS pela primeira vez pode resultar na impossibilidade de entrar no sistema. Recomenda-se adicioná-lo após concluir a instalação.';

  @override
  String get autoGen5418 =>
      'Corrija o problema de lentidão causado pelo display central da série AMD Ryzen 2000 ~ 5000 Edge e navegador Chrome não desligando a aceleração de hardware (aplicável apenas à série AMD Ryzen, reduzindo principalmente o uso de renderização OpenGL, uso normal de QQ, navegador Chrome. O uso deste driver pode fazer com que outros aplicativos não funcionem corretamente, tome sua própria decisão)';

  @override
  String get autoGen5419 =>
      'Reparo de leitura da bateria, corrija alguns problemas de exibição da bateria';

  @override
  String get autoGen5420 =>
      'Compatibilidade aprimorada com SSDs NVMe que não sejam da Apple e consumo de energia ocioso reduzido';

  @override
  String get autoGen5421 =>
      'Discos NVMe incompatíveis na lista negra da Samsung e de outros não podem resolver com eficácia o problema de falha de tempo limite';

  @override
  String get autoGen5422 =>
      'Usar este driver com um SSD NVMe com boa compatibilidade pode causar travamento do kernel, portanto, use-o com cuidado na maioria das vezes.';

  @override
  String get autoGen5423 =>
      'Melhore a capacidade de ignorar ou desativar o AMFI. Nota: Adicionar este driver pode fazer com que alguns aplicativos não abram ou travem. Neste momento, você pode tentar remover o driver e usar apenas os parâmetros de inicialização AMFI desabilitados (como amfi = 0x80)';

  @override
  String get autoGen5424 =>
      'Corrigido o problema em que as unidades de estado sólido NVMe eram reconhecidas como discos externos';

  @override
  String get autoGen5425 =>
      'Desbloqueie controles universais, navegação e outras funções em Macs não suportados';

  @override
  String get autoGen5426 =>
      'Corrija problemas comuns relacionados à hibernação e ao sono';

  @override
  String get autoGen5427 =>
      'Permitir que o macOS use o recurso de tethering de um dispositivo Android por meio de uma conexão USB';

  @override
  String get autoGen5428 =>
      'Driver de frequência variável da CPU, fornece principalmente suporte de conversão de frequência MacPro7,1 para plataformas de 11ª geração e superiores';

  @override
  String get autoGen5429 =>
      'CPUFriend está equipado com um driver de dados para fornecer dados de conversão de frequência de CPU para modelos específicos.';

  @override
  String get autoGen5430 =>
      'Otimize o tamanho da CPU e as configurações de núcleo da Intel de 12ª geração e posteriores';

  @override
  String get autoGen5431 =>
      'Pode melhorar o desempenho de núcleo único, mas pode levar a uma diminuição no desempenho de vários núcleos. É aplicável apenas a plataformas de 12ª geração e superiores.';

  @override
  String get autoGen5432 =>
      'Solução de sincronização CPU TSC um, geralmente preferida';

  @override
  String get autoGen5433 =>
      'Comumente usado em plataformas multi-core X79, X99, X299 e AMD';

  @override
  String get autoGen5434 =>
      'Usado para corrigir problemas como operação travada, logotipo de inicialização travado, sincronização anormal de áudio e vídeo, falha ao acordar, etc.';

  @override
  String get autoGen5435 =>
      'Solução de sincronização CPU TSC 2, geralmente usada em AMD Ryzen e algumas plataformas Intel';

  @override
  String get autoGen5436 =>
      'Usado para corrigir problemas como atrasos de operação, falhas ocasionais, anormalidades de sincronização de áudio e vídeo, falhas de sono e despertar, etc.';

  @override
  String get autoGen5437 =>
      'Corrija o problema de sincronização do relógio multi-core da CPU da plataforma AMD Ryzen (aplicável apenas à série AMD Ryzen, usado para corrigir problemas como atraso de operação, logotipo de inicialização travado, etc. Adicionar este driver pode causar problemas inesperados, escolha com cuidado)';

  @override
  String get autoGen5438 =>
      'Solução três de sincronização CPU TSC, geralmente usada em plataformas Intel mais antigas e sistemas macOS mais antigos';

  @override
  String get autoGen5439 =>
      'Adequado para multi-core X79, X99, X299 e outras plataformas, usado para corrigir problemas como atraso de operação e logotipo de inicialização preso';

  @override
  String get autoGen5440 =>
      'Corrigidos alguns problemas de áudio HDMI do Intel Core Display';

  @override
  String get autoGen5441 =>
      'Corrigir o problema de não conseguir fazer login no Apple ID e iCloud, geralmente usado para notebooks sem placas de rede com fio local';

  @override
  String get autoGen5442 =>
      'Corrija conflitos entre a nova plataforma macOS AppleRTC e BIOS do PC, como RTC que causa congelamentos, reinicializações repentinas ou despertares repentinos da hibernação.';

  @override
  String get autoGen5443 =>
      'Driver de teclado e mouse tipo interface PS (driver de teclado e mouse de porta redonda PS da placa-mãe de desktop)';

  @override
  String get autoGen5444 =>
      'Driver de teclado tipo interface PS (driver de teclado de porta redonda PS da placa-mãe de desktop)';

  @override
  String get autoGen5445 =>
      'Driver de mouse tipo interface PS (driver de mouse de porta redonda PS da placa-mãe de desktop)';

  @override
  String get autoGen5446 =>
      'Driver de touchpad de teclado dedicado do Microsoft Surface';

  @override
  String get autoGen5447 => 'Correção da tecla de atalho de brilho';

  @override
  String get autoGen5448 =>
      'Otimize o desempenho da placa gráfica AMD Radeon, mas certos cenários podem causar falha no sistema ou falha na inicialização, portanto, verifique com atenção';

  @override
  String get autoGen5449 =>
      'Permitir que RadeonGadget.app leia a temperatura da GPU da placa gráfica AMD e outras informações';

  @override
  String get autoGen5450 =>
      'Exporte a temperatura da GPU AMD e outras informações para o VirtualSMC para leitura das ferramentas de monitoramento';

  @override
  String get autoGen5451 =>
      'Corrigidos problemas de compatibilidade do controlador USB em plataformas mais antigas, como AMD FM1/FM2/AM3';

  @override
  String get autoGen5452 =>
      'Solução de injeção USB universal, a escolha padrão quando o USB não é personalizado';

  @override
  String get autoGen5453 =>
      'Solução USBToolBox, geralmente usada com UTBMap.kext personalizado';

  @override
  String get autoGen5454 =>
      'Corrigir o problema USB3.0 em plataformas Intel de 3ª geração e atualizações posteriores (necessário para chipsets da série 300 (H370, B360, H310, Z390 [não necessário para sistemas 10.14 e superiores], placas-mãe X79, X99, ASRock Intel [exceto B460/Z490+])';

  @override
  String get autoGen5455 =>
      'Corrija problemas de compatibilidade EHCI USB2.0 em AMD FM1, FM2, AM3 e outras plataformas antigas';

  @override
  String get autoGen5456 =>
      'Corrija problemas de compatibilidade XHCI USB3.0 em AMD FM1, FM2, AM3 e outras plataformas antigas';

  @override
  String get autoGen5457 =>
      'Corrigir o gerenciamento de energia da CPU de sistemas Intel de 3ª geração e plataformas mais antigas Ventura 13 e superiores';

  @override
  String get autoGen5458 =>
      'Driver de leitor de cartão SD da série Realtek (usado com RealtekCardReaderFriend)';

  @override
  String get autoGen5459 =>
      'Driver de suporte RealtekCardReader para melhorar a compatibilidade do leitor de cartão Realtek';

  @override
  String get autoGen5460 =>
      'Driver de dispositivo de cartão de memória SDHC, suporta cartões de memória eMMC e MMC';

  @override
  String get autoGen5461 => 'Driver de placa de rede com fio 100M';

  @override
  String get autoGen5462 =>
      'Suporta placas de rede RTL8101E, RTL8102E, RTL8103E, RTL8401E, RTL8105E, RTL8402, RTL8106E, RTL8106EUS, RTL8107E, RTL8139';

  @override
  String get autoGen5463 =>
      'Geralmente usado para plataformas antigas tradicionais';

  @override
  String get autoGen5464 => 'Driver da placa de rede Gigabit';

  @override
  String get autoGen5465 =>
      'Suporta Intel 82540 ~ 82547, 82578 ~ 82579, 82574L, 82571 ~ 82574, 82583, I217-V e outras placas de rede';

  @override
  String get autoGen5466 => 'Driver da placa de rede com fio Gigabit';

  @override
  String get autoGen5467 =>
      'Suporta BCM5722, BCM5754, BCM5754M, BCM5755, BCM5755M, BCM57788, BCM5787, BCM5787M, BCM5906, BCM5906M e outras placas de rede';

  @override
  String get autoGen5468 =>
      'Suporta AR8131, AR8132, AR8151, AR8152 e outras placas de rede';

  @override
  String get autoGen5469 =>
      'Suporta Realtek RTL8111 / 8168 B / C / D / E / F / G / H, suporta placas de rede Killer E2500 e superiores';

  @override
  String get autoGen5470 =>
      'O driver da nova versão RealtekRTL8111 pode suportar apenas sistemas 10.13.x e superiores';

  @override
  String get autoGen5471 =>
      'Suporta AR816x, AR817x, Killer E220x, Killer E2400 e outras placas de rede';

  @override
  String get autoGen5472 =>
      'Driver de placa de rede com fio Gigabit (suporte 2.5G)';

  @override
  String get autoGen5473 =>
      'Suporta todos os dispositivos compatíveis com IGC (i225, i226, i226-V e outras placas de rede com fio). O ID PCI de alguns dispositivos pode não estar na lista IOPCIMatch. Adicione você mesmo para teste.';

  @override
  String get autoGen5474 =>
      'Comparado com o driver AppleEthernetE1000, ele tem melhor desempenho e estabilidade (i226-V pode causar kernel panic ao usar AppleEthernetE1000 no sistema Monterey)';

  @override
  String get autoGen5475 =>
      'Suporta placas de rede Intel 82575, 82576, 82580, dh89xxcc, i350, i354, i210 e i211';

  @override
  String get autoGen5476 =>
      'Pode haver problemas de instabilidade, é recomendado ficar na versão Big Sur e usar SmallTree';

  @override
  String get autoGen5477 =>
      'Normalmente aplicável a sistemas macOS Monterey 12 e superiores';

  @override
  String get autoGen5478 =>
      'Suporte Intel Série 5: 82578LM, 82578LC, 82578DM, 82578DC';

  @override
  String get autoGen5479 => 'Suporta Intel Séries 6 e 7: 82579LM, 82579V';

  @override
  String get autoGen5480 =>
      'Suporte Intel Série 8 e 9: I217LM, I217V, I218LM, I218V, I218LM2, I218V2, I218LM3';

  @override
  String get autoGen5481 =>
      'Suporte Intel Série 100: I219V, I219LM, I219V2, I219LM2, I219LM3';

  @override
  String get autoGen5482 => 'Suporta Intel Série 200: I219LM, I219V';

  @override
  String get autoGen5483 => 'Suporta Intel Série 300: I219LM, I219V';

  @override
  String get autoGen5484 =>
      'O driver é mantido por acidanthera. OS X 10.6 ~ 10.8 usa IntelSnowMausi';

  @override
  String get autoGen5485 =>
      'Este driver é fornecido por Laura Müller. OS X 10.6 ~ 10.8 usa IntelSnowMausi';

  @override
  String get autoGen5486 =>
      'Driver antigo RTL8125, suporta placas Ethernet da série Realtek RTL8125';

  @override
  String get autoGen5487 =>
      'Driver de placa de rede com fio Gigabit (suporta 2,5G, 5G)';

  @override
  String get autoGen5488 =>
      'Novo driver para RTL812x, suporta placas Ethernet da série Realtek RTL8125, RTL8126';

  @override
  String get autoGen5489 =>
      'Modelos suportados: RTL8125A, RTL8125B, RTL8125BP, RTL8125CP, RTL8126A';

  @override
  String get autoGen5490 =>
      'Suporta placa de rede com fio Intel i211, este modelo é comum em placas-mãe AMD';

  @override
  String get autoGen5491 =>
      'Geralmente aplicável ao macOS Big Sur e anteriores, o macOS Monterey pode ser instável';

  @override
  String get autoGen5492 => 'Compatibilidade: SO';

  @override
  String get autoGen5493 => 'Driver de placa de rede com fio 10G (suporte 10G)';

  @override
  String get autoGen5494 => 'Suporta Intel X520,';

  @override
  String get autoGen5495 => 'Suporta apenas sistemas macOS 10.13 e superiores';

  @override
  String get autoGen5496 =>
      'Recomenda-se desligar o WoL nas configurações UEFI do BIOS';

  @override
  String get autoGen5497 =>
      'Corrigido o problema em que o utilitário de disco não reconhece discos SATA durante a instalação do Catalina 10.15 e sistemas anteriores';

  @override
  String get autoGen5498 =>
      'Corrigido o problema em que o Utilitário de Disco não reconhece discos SATA durante o processo de instalação de sistemas Big Sur 11 e superiores';

  @override
  String get autoGen5499 =>
      'Corrigir problemas de compatibilidade relacionados à plataforma AMD Adobe Family Bucket';

  @override
  String get autoGen5500 =>
      'Suporta macOS High Sierra 10.13 ~ macOS Tathoe 26.x (geralmente usado com cliente HeliPort)';

  @override
  String get autoGen5501 =>
      'macOS Sequoia 15.x (Observação: o sistema Sequoia 15 precisa ser corrigido com a versão modificada específica do OCLP Intel antes de poder ser usado normalmente!!!)';

  @override
  String get autoGen5502 => 'macOS Sonoma 14.4 e superior';

  @override
  String get autoGen5503 =>
      'Corrige principalmente alguns problemas de dispositivos Bluetooth (aplicável a alguns dispositivos Broadcom e outros dispositivos USB Bluetooth)';

  @override
  String get autoGen5504 =>
      'Qualcomm WiFi, compatível com macOS Big Sur 11.xe inferior';

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
      'Desative o Touch ID para reduzir o desperdício de recursos do sistema e melhorar a estabilidade';

  @override
  String get autoGen5512 =>
      'Geralmente adequado para notebooks com reconhecimento de impressão digital e anteriores ao macOS Big Sur 11';

  @override
  String get autoGen5513 =>
      'A política TRIM é configurada por padrão (ou seja, SetApfsTrimTimeout = -1)';

  @override
  String get autoGen5514 =>
      '1. O sistema APFS executa operações TRIM com base no tempo limite TRIM padrão do macOS, que é aplicável à maioria dos SSDs que suportam TRIM.';

  @override
  String get autoGen5515 =>
      '2. Em SSDs compatíveis com TRIM, o macOS gerencia automaticamente a execução do TRIM, o que ajuda a limpar blocos de dados excluídos, tornando a gravação do SSD mais eficiente, evitando amplificações de gravação frequentes e melhorando a velocidade de gravação.';

  @override
  String get autoGen5516 =>
      '3.TRIM limpará regularmente os blocos não utilizados para reduzir o desgaste do SSD, prolongando assim a vida útil do SSD.';

  @override
  String get autoGen5517 =>
      '4. Alguns SSDs de terceiros que não oferecem suporte total ao TRIM podem sofrer atrasos ou até mesmo travamentos ao executar o TRIM, tornando o processo de inicialização muito lento.';

  @override
  String get autoGen5518 =>
      'Desative completamente a funcionalidade TRIM (ou seja, defina SetApfsTrimTimeout = 0)';

  @override
  String get autoGen5519 => 'Benefícios de desativar o TRIM:';

  @override
  String get autoGen5520 =>
      '1. Melhore a velocidade de inicialização. Para SSDs de terceiros que não suportam ou suportam parcialmente TRIM, o macOS pode causar atrasos devido à tentativa de operações TRIM durante a inicialização. Desativar o TRIM pode eliminar esse atraso e melhorar a velocidade de inicialização.';

  @override
  String get autoGen5521 =>
      '2. Melhore a compatibilidade. Alguns SSDs com baixa compatibilidade podem reduzir o risco de travamentos anormais.';

  @override
  String get autoGen5522 =>
      '3. Prolongue a vida útil de SSDs não TRIM. Em SSDs que não suportam TRIM, a ativação forçada do TRIM pode acelerar o desgaste e afetar a vida útil. Desativar o TRIM pode prolongar a vida útil desses SSDs.';

  @override
  String get autoGen5523 => 'Desvantagens de desativar o TRIM:';

  @override
  String get autoGen5524 =>
      '1. O desempenho do SSD diminui. Alguns SSDs não possuem o mecanismo de coleta de lixo TRIM. O SSD não consegue limpar e marcar blocos livres a tempo após a exclusão dos dados, o que pode diminuir a velocidade de gravação.';

  @override
  String get autoGen5525 =>
      '2. A eficiência do gerenciamento do espaço em disco é reduzida. Depois de desativá-lo, o controlador SSD requer mais tempo e recursos para coleta de lixo, o que pode levar ao aumento da fragmentação e à redução da eficiência do gerenciamento de espaço.';

  @override
  String get autoGen5526 =>
      '3. Reduza a vida útil do SSD. Para SSDs que suportam TRIM, após desabilitar o TRIM, o SSD não consegue otimizar o processo de gravação, o que aumentará o desgaste dos blocos de armazenamento, encurtando assim a vida útil do SSD que suporta TRIM.';

  @override
  String get autoGen5527 =>
      'Embora a desativação do TRIM possa trazer algumas melhorias na velocidade de inicialização, para SSDs modernos que suportam TRIM, é recomendado manter o TRIM ativado para desempenho e estabilidade a longo prazo. Esse aumento de velocidade geralmente é pequeno e só terá um efeito significativo em alguns SSDs incompatíveis.';

  @override
  String get autoGen5528 =>
      'Driver de frequência variável da CPU, aqui fornece principalmente suporte de frequência variável MacPro7,1 de 11ª a 14ª geração';

  @override
  String get autoGen5529 =>
      'Leitor de cartão SD Realtek e seu driver de suporte';

  @override
  String get autoGen5530 =>
      'Adequado para plataformas de 3ª geração e anteriores, dispositivos de entrada conectados com base no protocolo de barramento PS/2, como teclado, mouse, touchpad, etc.';

  @override
  String get autoGen5531 =>
      'Adequado para plataformas de 3ª geração e superiores, dispositivos de entrada conectados com base no protocolo de barramento PS/2, como teclado, mouse, touchpad, etc. Fornece suporte para touchpad PS/2 por meio de subdriver e pode atingir um certo grau de função multitoque, mas o suporte é limitado.';

  @override
  String get autoGen5532 =>
      'O teclado PS2 é adequado para touchpads, telas sensíveis ao toque, sensores e outros dispositivos de entrada conectados com base no protocolo de barramento I2C. Fornece suporte a gestos multitoque para simular a experiência de toque nativa do macOS.';

  @override
  String get autoGen5533 =>
      'Teclado PS2, adequado para touchpad Synaptics conectado com base no protocolo de barramento RMI4. Concentre-se no melhor suporte aos dispositivos Synaptics, fornecendo recursos multitoque e de gestos semelhantes ao touchpad nativo do macOS.';

  @override
  String get autoGen5534 =>
      'Teclado PS2, adequado para dispositivos de toque baseados em barramento I2C e touchpads Synaptics usando protocolo RMI4. RMII2C combina as vantagens do VoodooI2C e do VoodooRMI.';

  @override
  String get autoGen5535 =>
      'Driver redondo de teclado e mouse baseado em conexão de protocolo de barramento PS/2';

  @override
  String get autoGen5536 =>
      'Combinação de teclado dedicado, touchpad e driver de tela sensível ao toque do Microsoft Surface.';

  @override
  String get autoGen5537 => 'Série sem driver Broadcom BCM94360';

  @override
  String get autoGen5538 =>
      'As placas sem driver Apple AirPort e Fenvi, Ventura e inferiores não têm driver, e o patch suporta Sonoma 14 e Sequoia 15! Nota: Os sistemas Sonoma 14 e superiores precisam ser corrigidos com OCLP antes de poderem ser usados ​​normalmente! ! !';

  @override
  String get autoGen5539 => 'Série Broadcom BCM943XX sem driver';

  @override
  String get autoGen5540 =>
      'Outras placas além de Apple AirPort e Fenvi, Catalina e inferiores não têm driver e o patch suporta Sonoma 14 e Sequoia 15! Nota: Os sistemas Sonoma 14 e superiores precisam ser corrigidos com OCLP antes de poderem ser usados ​​normalmente! ! !';

  @override
  String get autoGen5541 => 'Antigo Broadcom BCM4331';

  @override
  String get autoGen5542 =>
      'Observe que os sistemas Monterey 12 ou superior precisam usar o patch OCLP antes de poderem ser usados ​​normalmente! ! !';

  @override
  String get autoGen5543 => 'Antigo Broadcom BCM43224';

  @override
  String get autoGen5544 => 'Driver do modelo WiFi Qualcomm (Atheros)';

  @override
  String get autoGen5545 => 'Opção manual Qualcomm WiFi';

  @override
  String get autoGen5546 =>
      'Qualcomm (Atheros) WiFi Big Sur e seguintes dependências';

  @override
  String get autoGen5547 =>
      'Os sistemas macOS Big Sur 11 e anteriores usam HS80211Family para corresponder a drivers de modelos específicos';

  @override
  String get autoGen5548 =>
      'Qualcomm (Atheros) WiFi Monterey e dependências superiores';

  @override
  String get autoGen5549 =>
      'Os sistemas macOS Monterey 12 e superiores usam a combinação IO80211ElCap';

  @override
  String get autoGen5550 =>
      'Corrigido problema de reconhecimento de bateria em \"Preferências do Sistema\" para as séries Surface Pro 7 e Book 3';

  @override
  String get autoGen5551 =>
      'Corrigido o problema de erro POST ao iniciar o relógio de tempo real de alguns computadores da marca HP.';

  @override
  String get autoGen5552 =>
      'Desative o plano de despertar RTC e corrija o problema de despertar automático após dormir';

  @override
  String get autoGen5553 => 'Plataforma Geração 0-Penryn-775';

  @override
  String get autoGen5554 => 'Plataforma Geração 1-Lynnfield-1156';

  @override
  String get autoGen5555 => 'Plataforma Sandy Bridge-1155 de 2ª geração';

  @override
  String get autoGen5556 => 'Plataforma Ivy Bridge-1155 de 3ª geração';

  @override
  String get autoGen5557 => 'Plataforma Haswell-1150 de 4ª geração';

  @override
  String get autoGen5558 => 'Plataforma Broadwell-1150 de 5ª geração';

  @override
  String get autoGen5559 => 'Plataforma Skylake-1151 de 6ª geração';

  @override
  String get autoGen5560 => 'Plataforma Kaby Lake-1151 de 7ª Geração';

  @override
  String get autoGen5561 => 'Plataforma Coffee Lake-1151 de 8ª geração';

  @override
  String get autoGen5562 => 'Plataforma Coffee Lake-1151 de 9ª geração';

  @override
  String get autoGen5563 => 'Plataforma Comet Lake-1200 de 10ª Geração';

  @override
  String get autoGen5564 => 'Plataforma Rocket Lake-1200 de 11ª Geração';

  @override
  String get autoGen5565 => 'Plataforma Alder Lake-1700 de 12ª geração';

  @override
  String get autoGen5566 => 'Plataforma Raptor Lake-1700 de 13ª geração';

  @override
  String get autoGen5567 =>
      'Plataforma Raptor Lake Refresh-1700 de 14ª geração';

  @override
  String get autoGen5568 => 'Plataforma Arrow Lake-1851 de 15ª Geração';

  @override
  String get autoGen5569 => 'Geração 0-Penryn-Notebook';

  @override
  String get autoGen5570 => '1ª Geração-Clarksfield&Arrandale-Notebook';

  @override
  String get autoGen5571 => 'Notebook Sandy Bridge de 2ª geração';

  @override
  String get autoGen5572 => 'Notebook Ivy Bridge de 3ª geração';

  @override
  String get autoGen5573 => '4ª Geração-Haswell-Laptop';

  @override
  String get autoGen5574 => 'Notebook Broadwell de 5ª geração';

  @override
  String get autoGen5575 => 'Notebook Skylake de 6ª geração';

  @override
  String get autoGen5576 => 'Caderno Kaby Lake de 7ª geração';

  @override
  String get autoGen5577 => '8ª Geração-Lago Café-Caderno';

  @override
  String get autoGen5578 => '9ª Geração-Café Lago-Caderno';

  @override
  String get autoGen5579 => '10ª Geração-Comet Lake-Laptop';

  @override
  String get autoGen5580 => '10ª Geração-Ice Lake-Laptop';

  @override
  String get autoGen5581 => 'Notebook Tiger Lake de 11ª geração';

  @override
  String get autoGen5582 => 'Caderno Alder Lake de 12ª geração';

  @override
  String get autoGen5583 => 'Caderno Raptor Lake de 13ª geração';

  @override
  String get autoGen5584 => 'Caderno de atualização Raptor Lake de 14ª geração';

  @override
  String get autoGen5585 => 'Host Geração 0-Penryn-mini';

  @override
  String get autoGen5586 => 'Host Clarksfield e Arrandale de 1ª geração';

  @override
  String get autoGen5587 => 'Mini host Sandy Bridge de 2ª geração';

  @override
  String get autoGen5588 => 'Mini host Ivy Bridge de 3ª geração';

  @override
  String get autoGen5589 => 'Host Haswell-mini de 4ª geração';

  @override
  String get autoGen5590 => 'Host Broadwell-mini de 5ª geração';

  @override
  String get autoGen5591 => 'Host Skylake-mini de 6ª geração';

  @override
  String get autoGen5592 => '7ª geração-Kaby Lake-mini host';

  @override
  String get autoGen5593 => 'Mini anfitrião Coffee Lake de 8ª geração';

  @override
  String get autoGen5594 => 'Mini-anfitrião Coffee Lake de 9ª geração';

  @override
  String get autoGen5595 => 'Mini hospedeiro Comet Lake de 10ª geração';

  @override
  String get autoGen5596 => 'Mini hospedeiro Ice Lake de 10ª geração';

  @override
  String get autoGen5597 => 'Mini hospedeiro Tiger Lake de 11ª geração';

  @override
  String get autoGen5598 => 'Mini hospedeiro Alder Lake de 12ª geração';

  @override
  String get autoGen5599 => 'Anfitrião mini-Raptor Lake de 13ª geração';

  @override
  String get autoGen5600 => 'Mini host Raptor Lake Refresh de 14ª geração';

  @override
  String get autoGen5601 => 'Plataforma Geração 1-Nehalem&Westmere-X58';

  @override
  String get autoGen5602 => 'Plataforma Sandy Bridge-E-X79 de 2ª geração';

  @override
  String get autoGen5603 => 'Plataforma Ivy Bridge-E-X79 de 3ª geração';

  @override
  String get autoGen5604 => 'Plataforma Haswell-E-X99 de 4ª geração';

  @override
  String get autoGen5605 => 'Plataforma Broadwell-E-X99 de 5ª geração';

  @override
  String get autoGen5606 => 'Plataforma Skylake-X&W-X299 de 6ª geração';

  @override
  String get autoGen5607 => 'Plataforma Cascade Lake-X&W de 10ª Geração';

  @override
  String get autoGen5608 => 'Bulldozer(15h) e Jaguar(16h)-Notebook';

  @override
  String get autoGen5609 => 'Notebook Ryzen';

  @override
  String get autoGen5610 => 'Bulldozer(15h) e Jaguar(16h)-mini anfitrião';

  @override
  String get autoGen5611 => 'Host Ryzen-mini';

  @override
  String get autoGen5612 => 'Ryzen e Threadripper(17h e 19h)-Servidor';

  @override
  String get autoGen5613 => 'teste';

  @override
  String get autoGen5614 => 'teste nvram';

  @override
  String get autoGen5615 => 'Não foi possível obter o diretório inicial';

  @override
  String get autoGen5616 => 'O diretório de origem não existe';

  @override
  String get autoGen5617 =>
      'Não foi possível obter o diretório da área de trabalho';

  @override
  String get autoGen5618 =>
      'A verificação do caminho falha e retorna o caminho vazio';

  @override
  String get autoGen5619 =>
      'Falha ao obter informações do arquivo plist e o resultado retornado estava incompleto.';

  @override
  String get autoGen5620 =>
      'NOTA: NormalizeHeaders está habilitado e o ID da tabela contém caracteres não imprimíveis!';

  @override
  String get autoGen5621 =>
      'Nota: NormalizeHeaders não está habilitado e o ID da tabela contém o \'\'?\'\' personagem!';

  @override
  String get autoGen5622 =>
      'Nenhum arquivo config.plist de destino selecionado!';

  @override
  String get autoGen5623 =>
      '=> Não foi possível determinar o tipo de config.plist!';

  @override
  String get autoGen5624 => '=> Tabela SSDT não encontrada! pular sobre...';

  @override
  String get autoGen5625 => '=> Tabela SSDT duplicada não encontrada!';

  @override
  String get autoGen5626 => '=> Atualização não encontrada! pular sobre...';

  @override
  String get autoGen5627 => '=> Patch duplicado não encontrado!';

  @override
  String get autoGen5628 => '=> Soltar patch não encontrado! pular sobre...';

  @override
  String get autoGen5629 => '=> Patch Duplicado Drop não encontrado!';

  @override
  String get autoGen5630 =>
      '=> Nenhuma configuração do Quirks encontrada que precise ser atualizada! pular sobre...';

  @override
  String get autoGen5631 =>
      '=> Verificando a configuração do Quirks de destino...';

  @override
  String get autoGen5632 =>
      'Fazendo backup do arquivo de configuração atual...';

  @override
  String get autoGen5633 => 'Preparando para copiar arquivos SSDT...';

  @override
  String get autoGen5634 => 'Configuração salva com sucesso!';

  @override
  String get autoGen5635 => 'A fusão está completa!';

  @override
  String get autoGen5636 => 'A fusão falhou!';

  @override
  String get autoGen5637 =>
      'Nota: Possíveis erros são encontrados durante o processo de mesclagem, verifique e corrija-os!';

  @override
  String get autoGen5638 =>
      'Nota: A configuração atual não está definida para substituir o modo EFI de destino!';

  @override
  String get autoGen5639 => 'Você precisa fazer o seguinte manualmente:';

  @override
  String get autoGen5640 => 'Elemento raiz do dicionário não encontrado';

  @override
  String get autoGen5641 =>
      'Elimine conflitos de IRQ, frequentemente usados ​​para reparos de placas de som';

  @override
  String get autoGen5642 =>
      '• HPET (High Precision Event Timer) é um módulo de hardware usado para cronometragem do sistema.\n• No macOS, alguns dispositivos HPET da placa-mãe podem causar conflitos de IRQ (solicitação de interrupção), o que afetará a operação normal do dispositivo de áudio, fazendo com que o sistema fique instável ou até mesmo incapaz de iniciar.\n• Este patch ajusta as definições de dispositivos ACPI relacionados ao HPET para evitar conflitos de IRQ, garantir que o macOS possa usar corretamente os temporizadores HPET, corrigir problemas da placa de som e melhorar a estabilidade do sistema.';

  @override
  String get autoGen5643 =>
      'Atributos de alimentação EC falsificados e de injeção USB (aplicável a computadores desktop Intel de 6ª geração e superiores)';

  @override
  String get autoGen5644 =>
      '• Aplicável a computadores desktop Intel de 6ª geração e superiores\n• Este patch desativará o dispositivo EC original do sistema e, em seguida, criará um dispositivo EC virtual para \"enganar\" o macOS fazendo-o pensar que existe um EC compatível, resolvendo assim problemas de inicialização causados pela falta de dispositivos EC. \n• Adicionadas propriedades de alimentação USB necessárias para corrigir possíveis problemas. Equivalente à mesclagem: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5645 =>
      'Apenas falsifica o EC, não afeta o EC existente e injeta atributos de alimentação USB ao mesmo tempo (aplicável a notebooks Intel de 6ª geração e superiores)';

  @override
  String get autoGen5646 =>
      '• Aplicável a notebooks Intel de 6ª geração e superiores\n• Adequado para notebooks, ele não exclui nem modifica o EC existente, mas cria um novo EC virtual separadamente para evitar danos ao dispositivo EC original e evitar anormalidades funcionais, como gerenciamento de energia do notebook e luz de fundo do teclado.\n• Adicionadas propriedades de alimentação USB necessárias para corrigir possíveis problemas. Equivalente à mesclagem: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml';

  @override
  String get autoGen5647 =>
      'EC falsificado (aplicável a computadores desktop Intel de 5ª geração e inferiores)';

  @override
  String get autoGen5648 =>
      '• Adequado para desktops Intel de 5ª geração e anteriores\n• Este patch desativará o dispositivo EC original do sistema e, em seguida, criará um dispositivo EC virtual para \"enganar\" o macOS fazendo-o pensar que existe um EC compatível, resolvendo assim problemas de inicialização causados pela falta de dispositivos EC.';

  @override
  String get autoGen5649 =>
      'Somente EC falsificado, não afeta o EC existente (aplicável a notebooks Intel de 5ª geração e inferiores)';

  @override
  String get autoGen5650 =>
      '• Aplicável a notebooks Intel de 5ª geração e anteriores\n• Ele não exclui nem modifica o EC existente, mas cria um novo EC virtual separadamente para evitar danos ao dispositivo EC original e evitar anormalidades funcionais, como gerenciamento de energia do notebook e luz de fundo do teclado.';

  @override
  String get autoGen5651 =>
      'Correção do atributo de alimentação USB (aplicável à Intel de 6ª geração e plataformas mais recentes)';

  @override
  String get autoGen5652 =>
      '• Aplicável ao Intel Skylake de 6ª geração e superior, servidor Haswell-E de 4ª geração e superior, AMD Ryzen e outras plataformas\n• A partir do Intel Skylake e dos processadores mais recentes, o macOS requer propriedades específicas de alimentação USB para garantir que os dispositivos USB sejam devidamente alimentados e reconhecidos.\n• Este patch corrige o gerenciamento de energia das portas USB para atender aos requisitos do macOS e resolve problemas como reconhecimento anormal de dispositivos USB, fonte de alimentação insuficiente e incapacidade de hot-plug.\n• Para notebooks: SSDT-EC-LAPTOP.aml + SSDT-USBX.aml A combinação dos dois é equivalente a SSDT-EC-USBX-LAPTOP.aml\n• Para desktop: SSDT-EC-DESKTOP.aml + SSDT-USBX.aml A combinação dos dois é equivalente a SSDT-EC-USBX-DESKTOP.aml';

  @override
  String get autoGen5653 =>
      'Identificação do núcleo da CPU, permitindo ajuste de frequência e correção de economia de energia';

  @override
  String get autoGen5654 =>
      '• O SSDT-PLUG é adequado para plataformas Intel Haswell de 4ª geração a 11ª geração, servidor Haswell-E de 4ª geração e superiores (ao personalizar o SSDT-PLUG, a ferramenta o detecta e gera automaticamente!)\n• SSDT-PLUG-ALT é adequado para Intel Alder Lake 12ª geração e superior e plataforma AMD Ryzen (ao personalizar SSDT-PLUG, a ferramenta detecta e gera automaticamente e renomeia-o para SSDT-PLUG-ALT!)\n• O macOS depende do plug-in de gerenciamento de energia da CPU (PluginType) para ajustar a frequência da CPU e melhorar a eficiência energética e a vida útil da bateria.\n• Este patch modificará a definição da CPU para que o macOS pense que é um processador do tipo plugin = 1 exigido pelos dispositivos Apple, carregando corretamente o gerenciamento de frequência da CPU e melhorando o desempenho e o controle do consumo de energia.';

  @override
  String get autoGen5655 =>
      'Habilite o suporte NVRAM (geralmente para placas-mãe Intel nativas da série 300)';

  @override
  String get autoGen5656 =>
      '• Aplicável às plataformas Intel Coffee Lake de 8ª a 9ª geração\n• Placas-mãe nativas da série 300 (como Z370, B360) podem não usar NVRAM corretamente no macOS, fazendo com que algumas funções (como iMessage, volume de memória, parâmetros de inicialização, etc.) não sejam salvas.\n• Este patch ativa o PMC (Power Management Controller) da placa-mãe, permitindo que o macOS use NVRAM nativa normalmente sem a necessidade de um driver EmuVariableUEFI adicional.';

  @override
  String get autoGen5657 =>
      'Adicionar dispositivo PNLF para suporte de luz de fundo (somente notebooks e multifuncionais)';

  @override
  String get autoGen5658 =>
      '• O macOS requer um dispositivo PNLF (Panel Brightness) para controlar corretamente o brilho da tela do notebook.\n• Este patch criará um dispositivo PNLF na ACPI, permitindo que o macOS ajuste o brilho da tela e exiba opções de controle de brilho nas Preferências do Sistema.\n• Adequado para notebooks e alguns computadores multifuncionais para resolver o problema de ajuste de brilho indisponível.\n• UID = 14, aplicável a: Intel Arrandale de 1ª geração, Sandy Bridge de 2ª geração, Ivy Bridge de 3ª geração\n  Nota: Algumas máquinas que usam UID: 14 encontrarão brilho máximo limitado ou outros problemas. Para resolver esses problemas, o caminho correto do dispositivo da iGPU (placa gráfica integrada) deve ser definido e as informações do registro da IGPU podem precisar ser complementadas.\n• UID = 15, aplicável a: Intel Haswell de 4ª geração, Broadwell de 5ª geração\n• UID = 16, aplicável a: Intel Skylake de 6ª geração, Kaby Lake de 7ª geração, alguns Haswell de 4ª geração\n• UID = 17, aplicável a: Brilho personalizado, geralmente usado para alguns dispositivos não padrão ou configurações de Hackintosh com necessidades especiais\n• UID = 18, adequado para: Brilho personalizado, geralmente usado para alguns dispositivos não padrão ou configurações de Hackintosh com necessidades especiais\n• UID = 19, aplicável a: Intel CoffeeLake de 8ª geração e superior, abaixo de 10ª geração e notebooks AMD\n• UID = 99, aplica-se a: Outros (requer propriedades personalizadas do dispositivo applbkl-name/applbkl-data), podem não funcionar de todo';

  @override
  String get autoGen5659 =>
      'Fornece suporte de sensor necessário para ajuste de luz de fundo da tela (aplicável apenas a notebooks e computadores multifuncionais)';

  @override
  String get autoGen5660 =>
      '• Usado para simular e ativar a função de sensor nativo da Apple (Sensor de Luz Ambiente, ALS) para ajustar automaticamente o brilho da tela\n• Se o seu dispositivo realmente tiver ALS (como alguns notebooks topo de linha) e houver problemas, você pode tentar adicionar SSDT-ALS0 para corrigir a função de ajuste automático de brilho, caso contrário não é recomendado adicionar\n• Aplicável apenas a: PCs multifuncionais (AIOs) e laptops';

  @override
  String get autoGen5661 =>
      'macOS se disfarça de Windows e desbloqueia dispositivos bloqueados (como touchpads I2C)';

  @override
  String get autoGen5662 =>
      '• _OSI (Operating System Interface) é um método de ACPI que permite ao sistema operacional relatar quais recursos ele suporta.\n• Alguns firmwares de placas-mãe podem decidir se determinados dispositivos devem ser ativados com base no valor de retorno _OSI, que pode não ser reconhecido pelo macOS, resultando em perda de funcionalidade.\n• O patch “engana” o firmware fazendo-o pensar que o macOS também é Windows, ativando assim recursos ocultos como: touchpad I2C, gerenciamento de bateria, etc.';

  @override
  String get autoGen5663 => 'Redefinição e correção da porta USB';

  @override
  String get autoGen5664 =>
      '• Alguns OEMs violam a especificação ACPI, o que causa problemas durante a inicialização do macOS. Para resolver esse problema, o dispositivo RHUB precisa ser desligado e forçar o macOS a reconstruir a porta manualmente.\n• Este patch redefine o controlador USB (incluindo EHC1, EHC2 e outras blindagens e renomeações de dispositivos USB) quando o macOS é iniciado, para que todas as portas USB possam ser identificadas corretamente e é usado com mapeamento USB (como: UTBMap.kext) para garantir que os dispositivos USB funcionem corretamente.\n• Geralmente adequado para placas-mãe desktop da série 400 (Asus, etc.) e plataformas móveis IceLake (Dell, Lenovo, etc.).';

  @override
  String get autoGen5665 =>
      'Crie uma ponte para o caminho do dispositivo PCI ausente';

  @override
  String get autoGen5666 =>
      '• Os caminhos dos dispositivos PCI de algumas placas-mãe ou dispositivos podem não ser reconhecidos corretamente no macOS, fazendo com que o dispositivo não funcione corretamente, como placas gráficas, placas de som, placas de rede sem fio, etc.\n• Este patch criará as pontes PCI corretas para esses dispositivos, garantindo que o macOS possa reconhecer e usar corretamente esses dispositivos PCI.';

  @override
  String get autoGen5667 =>
      'Corrija a tabela APIC para resolver o problema de pânico do kernel da CPU (aplicável à plataforma de servidor HEDT)';

  @override
  String get autoGen5668 =>
      '• Repare ou reescreva o ID do processador na tabela APIC para garantir que o macOS possa identificar corretamente o número e o número de núcleos da CPU e evitar kernel panic ou erros de identificação de núcleo.\n• A tabela APIC original precisa ser descartada no firmware antes que a tabela corrigida possa ser carregada.\n• Aplicável a X58, X79, X99, X299 e outras plataformas de servidor Intel (HEDT).';

  @override
  String get autoGen5669 =>
      'Remova a área de memória reservada do DMAR, corrija problemas de inicialização do sistema e problemas de compatibilidade da placa de rede';

  @override
  String get autoGen5670 =>
      '• DMAR (DMA Remapping Table) faz parte da tecnologia de virtualização Intel VT-d para suporte a IOMMU (Input-Output Memory Management Unit).\n• Este patch removerá a área de memória reservada na tabela DMAR que está causando o problema, evitando assim que o macOS interprete mal o DMAR e cause falha na inicialização do sistema.\n• Fornecer suporte para compatibilidade com VT-d para que o VT-d funcione corretamente no macOS Big Sur e versões mais recentes, especialmente envolvendo hardware controlado pelo DriverKit.\n• O macOS suporta VT-d, mas existem problemas de compatibilidade com a tabela DMAR fornecida por algumas placas-mãe ou BIOS, o que pode fazer com que o macOS cause falhas no kernel, atrasos na inicialização, instabilidade do sistema e outros problemas ao analisar a tabela ACPI DMAR (presa em locais de log relacionados a AppleACPICPU, IOPCI, AppleVTD).\n• Gama de hardware suportada: placa de rede I225, placa de rede Aquantia, alguns dispositivos WiFi, etc.\n• A tabela DMAR original precisa ser descartada no firmware antes que a tabela corrigida possa ser carregada.\n• CPU aplicável: Qualquer processador que suporte a tecnologia VT-d.';

  @override
  String get autoGen5671 => 'Adicionar suporte ao barramento do sistema SMBus';

  @override
  String get autoGen5672 =>
      '• O macOS requer um dispositivo SMBus (System Management Bus) para executar corretamente determinados serviços, como:\n  Touchpad I2C, gerenciamento de bateria, ajuste automático de brilho com detecção de luz, alguns dispositivos Wi-Fi/Bluetooth\n• SSDT-SBUS-MCHC faz o macOS pensar que este é um dispositivo nativo da Apple, adicionando dispositivos SBUS (System Management Bus) e MCHC (Memory Controller) à ACPI, garantindo que as funções relacionadas funcionem corretamente.\n• Se o touchpad I2C do dispositivo, as informações da bateria e o ajuste automático de brilho não puderem ser usados, você pode tentar ativar este patch.';

  @override
  String get autoGen5673 =>
      'Corrija o problema de falha na aceleração gráfica principal (geralmente aplicável a Ivy Bridge e Sandy Bridge)';

  @override
  String get autoGen5674 =>
      '• Intel Management Engine (abreviadamente IMEI) é uma interface de hardware usada para conectar-se ao mecanismo de gerenciamento. Só é necessário quando plataformas antigas (Sandy/Ivy) e algumas placas-mãe não possuem dispositivos MEI/IMEI/HECI.\n• Aplicável ao processador Intel Ivy Bridge de 3ª geração e à placa-mãe da série 6 quando combinados (por exemplo: processador i3 3225, placa-mãe H61), problema de aceleração gráfica central\n• Aplicável ao processador Intel Sandy Bridge de 2ª geração e à placa-mãe da série 7 quando combinados (por exemplo: processador i5 2500k, placa-mãe B75), problema de aceleração gráfica central\n• Os processadores Intel Ivy Bridge de 3ª geração emparelhados com placas-mãe da série 7 e os processadores Intel Sandy Bridge de 2ª geração emparelhados com placas-mãe da série 6 não requerem este SSDT!\n• Intel Haswell de 4ª geração e plataformas mais recentes geralmente podem implementar dispositivos MEI/IMEI/HECI corretamente e não precisam deste SSDT!';

  @override
  String get autoGen5675 =>
      'Resolva o problema de desligar e reiniciar ou desligar sem fonte de alimentação';

  @override
  String get autoGen5676 =>
      '• Corrigido o problema de algumas placas-mãe às vezes não desligarem completamente a energia do controlador USB quando o macOS está desligando (S5), resultando em falha no desligamento normal (o desligamento se transforma em reinicialização ou desligamento sem energia)\n• Requer patch de renomeação ACPI: _PTS -> ZPTS';

  @override
  String get autoGen5677 =>
      'Verifique o status atual do sistema, principalmente para verificar se o sono S3 é compatível (SSDT não personalizado)';

  @override
  String get autoGen5678 =>
      '• Verifique se a máquina atual é uma máquina AOAC (SSDT não personalizado)\n• Verifique o status do sistema nas configurações atuais do BIOS, principalmente para verificar se a suspensão S3 é suportada (SSDT não personalizado)\n• Observação: somente máquinas não AOAC são compatíveis com suspensão S3. As máquinas AOAC entram em conflito com o sono S3 e não suportam o sono S3!\n• Se o resultado da verificação mostrar que o status do sistema de uma máquina não AOAC (a máquina AOAC não suporta suspensão S3, não leia abaixo) não suporta suspensão S3, podem ocorrer as seguintes situações:\n  1. O firmware da placa-mãe suporta suspensão S3, mas a suspensão S3 não está habilitada nas configurações do BIOS. Depois de habilitado, o sono S3 pode ser suportado.\n  2. O firmware da placa-mãe não castra fisicamente o S3, mas o DSDT não define o método _S3. A conclusão do método _S3 tem probabilidade de corrigir o problema de sono S3.\n  3. O firmware da placa-mãe castra fisicamente o S3 e não oferece suporte ao sono S3. Mesmo que o método _S3 seja concluído, o problema de suspensão do S3 não pode ser reparado.';

  @override
  String get autoGen5679 =>
      'Verifique se é uma máquina AOAC (SSDT não customizado)';

  @override
  String get autoGen5680 =>
      '• Verifique se é uma máquina AOAC (SSDT não customizada) baseada em FACP.aml\n• Observação: somente máquinas não AOAC são compatíveis com suspensão S3. As máquinas AOAC entram em conflito com o sono S3 e não suportam o sono S3! Máquinas AOAC são comuns em notebooks.\n• Uma vez que a máquina AOAC entra no modo de suspensão S3, pode parecer que ela não pode ser despertada depois de dormir e aparece em um estado de travamento, e só pode ser forçada a desligar. Recomenda-se desabilitar a suspensão S3.\n• As máquinas AOAC recomendam considerar as seguintes soluções:\n  1. Desbloqueie o BIOS e desative o AOAC (geralmente difícil de fazer, mas o mais estável)\n  2. Desative a suspensão S3 (desative a suspensão S3 no BIOS ou SSDT-S3-DISABLE para desativar a suspensão S3)\n  3. Desligue a fonte de alimentação gráfica independente\n  4. Use NVMeFix.kext para habilitar APST de SSD\n  5. Habilite ASPM (as opções avançadas do BIOS habilitam ASPM, o patch SSDT habilita L1)';

  @override
  String get autoGen5681 =>
      'Resolva o problema de acordar devido ao controlador USB';

  @override
  String get autoGen5682 =>
      '• Renomeie GPRW para XPRW para corrigir o problema de ativação instantânea (nota: isso pode fazer com que o teclado USB não consiga ativar o dispositivo, você pode ativá-lo através da tecla liga/desliga)\n• SSDT-GPRW é mais comumente usado porque a maioria das plataformas usa o método GPRW e muito poucas plataformas fornecem e usam o método UPRW.\n• Disponível para Skylake e plataformas mais recentes';

  @override
  String get autoGen5683 =>
      '• Renomeie GPRW para XPRW para corrigir o problema de ativação instantânea (nota: isso pode fazer com que o teclado USB não consiga ativar o dispositivo, você pode ativá-lo através da tecla liga/desliga)\n• SSDT-UPRW raramente é usado porque a maioria das plataformas usa o método GPRW e muito poucas plataformas fornecem e usam o método UPRW.\n• Disponível para Skylake e plataformas mais recentes';

  @override
  String get autoGen5684 =>
      'Corrigir problema de suspensão do botão de suspensão (aplicável a notebooks)';

  @override
  String get autoGen5685 =>
      '• Quando alguns computadores entram em suspensão por meio do botão de suspensão SLPB (PNP0C0E), a ACPI transmite parâmetros incorretos, fazendo com que o macOS pense erroneamente que se trata de um desligamento. Isso pode levar a: reinicialização direta, travamento após suspensão ou suspensão bem-sucedida, mas com status do sistema danificado.\n• Finja que \"a tampa está fechada\" ao pressionar o botão de suspensão, forçando a suspensão perigosa do PNP0C0E a uma suspensão PNP0C0D segura e estável\n• Normalmente adequado para laptops';

  @override
  String get autoGen5686 =>
      'Corrigido o problema onde você precisa pressionar qualquer tecla para ligar a tela depois de acordar';

  @override
  String get autoGen5687 =>
      '• Corrigido o problema em que algumas máquinas precisavam pressionar qualquer tecla para ligar a tela após acordar';

  @override
  String get autoGen5688 =>
      'Corrigir o problema de luz respiratória anormal do botão liga / desliga após acordar (aplicável a notebooks Lenovo)';

  @override
  String get autoGen5689 =>
      '• Corrigido um problema em que a luz de respiração no lado A e a luz de respiração no botão liga/desliga não voltavam ao normal após acordar em alguns notebooks Lenovo\n• Corrigido o problema em que o status da luz indicadora do microfone F4 ficava anormal após a ativação em alguns laptops Lenovo\n• Aplicável principalmente a notebooks da série Lenovo, outras marcas de notebooks geralmente não são aplicáveis';

  @override
  String get autoGen5690 =>
      'Desativar o estado de suspensão do sistema S3 (corrigir problemas de travamento, reinicialização ou desligamento do sono S3)';

  @override
  String get autoGen5691 =>
      '• Desative apenas o estado de suspensão do S3 no sistema macOS para evitar falha, reinicialização ou desligamento do sistema quando o sistema macOS for ativado\n• Quando desativado, apenas o macOS não suporta mais a suspensão S3 (clicar no botão de suspensão ou o monitor entra no modo de economia de energia, a tela desliga, mas o host ainda funcionará e o ventilador não parará de funcionar)\n• Depois de desativar o estado de suspensão S3 no macOS, você não precisa mais modificar nenhuma configuração do sistema do macOS e não precisa desligar o modo de economia de energia (antes disso, pode ser necessário modificar as configurações do sistema -> desligar a tela quando inativo -> nunca)\n• Cenários aplicáveis: Quando o problema de sono não é reparado, o modo de economia de energia é ativado nas configurações do sistema macOS (\"Desligar a tela quando inativo -> 10 minutos\"). Depois que o sistema entra no estado de suspensão, quando o sistema macOS é despertado, o sistema pode travar, reiniciar ou desligar. Neste momento, você pode desativar o estado de suspensão S3 para corrigir o problema.\n• Requer patch de renomeação ACPI: _S3 -> XS3';

  @override
  String get autoGen5692 =>
      'A reinicialização a quente foi alterada para reinicialização a frio para corrigir o problema de indisponibilidade de algum hardware.';

  @override
  String get autoGen5693 =>
      '• A reinicialização a quente foi alterada para reinicialização a frio, o que corrige o problema de alguns hardwares ficarem indisponíveis após a reinicialização do Windows para o macOS em algumas plataformas. (Por exemplo: placa de som, WiFi, Bluetooth)\n• Nota: Nenhum SSDT-FACP.aml é gerado! Somente ACPI-Patch é gerado!';

  @override
  String get autoGen5694 => 'Mapeamento de ID de dispositivo gráfico';

  @override
  String get autoGen5695 =>
      '• Usado para cenários de mapeamento de ID de dispositivo de placa gráfica AMD, injetando IDs de dispositivos compatíveis por meio de ACPI para permitir que o sistema carregue o driver gráfico correspondente.\n• Recomendado apenas para modelos explicitamente marcados nos dados de compatibilidade RapidEFI como exigindo mapeamento de ID de dispositivo.';

  @override
  String get autoGen5696 => 'Blindagem de dispositivo ACPI';

  @override
  String get autoGen5697 =>
      '• Usado para lidar com dispositivos PCI na camada ACPI que não são adequados para transferência para o driver macOS, como placas gráficas incompatíveis, controladores NVMe ou outros dispositivos de expansão.\n• Os laptops tentam primeiro a desativação do nível de energia; se o firmware não suportar o método de fonte de alimentação, ele fará o downgrade para a camada do driver para evitar.\n• Desktops, NUCs e HEDTs usam métodos de evasão universais por padrão para evitar depender de métodos de potência gráfica independentes que normalmente não existem no firmware da máquina.\n• Todos os cenários exigem um caminho ACPI válido; se o hardware relatar um caminho ACPI ausente, o dispositivo será automaticamente ignorado.';

  @override
  String get autoGen5698 =>
      'Equipamento falsificado de placa de rede com fio (aplicável a notebooks sem placas de rede com fio)';

  @override
  String get autoGen5699 =>
      '• Fornece placa de rede virtual falsa NullEthernet para sistemas Hackintosh para resolver a dependência do iMessage, Facetime, iCloud e outros serviços da Apple em equipamentos de rede integrados';

  @override
  String get autoGen5700 =>
      'Corrigir problema de touchpad I2C de laptop (aplicável a laptops)';

  @override
  String get autoGen5701 =>
      '• Reparando a montagem do nó de hardware ACPI, garantindo que o dispositivo esteja habilitado no sistema macOS e corrigindo o problema de que alguns touchpads I2C não podem ser reconhecidos normalmente.\n• SSDT-GPI0 resolve o problema de montagem de drivers em dispositivos de hardware. SSDT-XOSI é usado principalmente para corrigir o problema de incompatibilidade entre a lógica de inicialização do BIOS/ACPI e o reconhecimento do sistema operacional (às vezes pode resolver o problema do touchpad)';

  @override
  String get autoGen5702 =>
      'Renomeação de CPU para chipsets B850, B650, B550, A520 (apenas para plataformas Ryzen)';

  @override
  String get autoGen5703 =>
      '• Aplicável à renomeação de CPU dos chipsets B850, B650, B550 e A520 para corrigir o problema de travamento causado pela plataforma AMD não ser capaz de reconhecer a CPU (recomendado apenas ao usar patches SSDT pré-fabricados)\n• Ao personalizar o patch SSDT, é recomendado usar o SSDT-PLUG personalizado! (A plataforma AMD Ryzen muda automaticamente seu nome para SSDT-PLUG-ALT ao personalizar o SSDT)';

  @override
  String get autoGen5704 =>
      'Correção do gerenciamento de energia (aplicável a Intel de 12ª geração e superior, alguns AMD Ryzen e outras plataformas)';

  @override
  String get autoGen5705 =>
      '• O macOS depende do plug-in de gerenciamento de energia da CPU (PluginType) para ajustar a frequência da CPU e melhorar a eficiência energética e a vida útil da bateria.\n• Este patch modificará a definição da CPU para que o macOS pense que é um processador do tipo plugin = 1 exigido pelos dispositivos Apple, carregando corretamente o gerenciamento de frequência da CPU e melhorando o desempenho e o controle do consumo de energia.\n• Aplicável ao Intel Alder Lake de 12ª geração e superior e a algumas plataformas AMD Ryzen';

  @override
  String get autoGen5706 =>
      'Desativar AWAC (Modern Timer) (disponível para Intel Coffee Lake 8ª geração e superior)';

  @override
  String get autoGen5707 =>
      '• Desative o AWAC (Modern Timer) ao ativar ou falsificar o RTC legado\n• Compatível com Intel Coffee Lake 8ª geração e superior';

  @override
  String get autoGen5708 =>
      'Exigido por todas as placas-mãe X99 (C612) nativas e pela maioria das placas-mãe X79 (C602) nativas';

  @override
  String get autoGen5709 =>
      '• Este SSDT é aplicável a todas as placas-mãe X99 e à maioria das placas-mãe X79. Sua principal função é desabilitar dispositivos não utilizados na ACPI para evitar que o IOPCIFamily cause kernel panic.\n• Placas-mãe aplicáveis: Todas as placas-mãe X99 (C612) nativas e a maioria das placas-mãe X79 (C602) nativas.';

  @override
  String get autoGen5710 =>
      'Habilite ou falsifique o temporizador RTC legado e corrija o intervalo RTC (aplica-se a todas as placas-mãe X99 (C612) e X299 nativas)';

  @override
  String get autoGen5711 =>
      '• Ativar ou falsificar temporizadores RTC herdados e corrigir o alcance do RTC.\n• Resolver tempo de inicialização incorreto, erros relacionados ao RTC, problemas de sono e despertar, etc.\n• Este SSDT é aplicável a todas as placas-mãe X99(C612), bem como às placas-mãe X299';

  @override
  String get autoGen5712 => 'Adicionar suporte DTGP';

  @override
  String get autoGen5713 =>
      '• Injetar atributos de dispositivos de hardware para corrigir alguns problemas de ACPI com placas gráficas, placas de som, placas Thunderbolt, etc. (Quando não há suporte ao método DTGP, essas injeções de atributos podem falhar ou não funcionar!)';

  @override
  String get autoGen5714 => 'Falsificação de um controlador DMA padrão';

  @override
  String get autoGen5715 =>
      '• Um controlador de dispositivo virtual (PNP0200) que imita um controlador DMA (Direct Memory Access Controller) padrão, completa a tabela de recursos ACPI e permite que o macOS identifique adequadamente dispositivos de barramento LPC e funções DMA.\n• Normalmente não é necessário para plataformas HEDT/servidor\n• Adicione as peças que faltam, esta é apenas uma solução perfeita, não é necessária!';

  @override
  String get autoGen5716 => 'Falsificando um controlador PWRB padrão';

  @override
  String get autoGen5717 =>
      '• Falsificar um dispositivo de botão liga/desliga padrão (PNP0C0C) para permitir que o macOS reconheça o botão liga/desliga do sistema normalmente e suporte a suspensão e a ativação\n• Não há PNP0C0C em algumas árvores ACPI do BIOS/placa-mãe, e o macOS não consegue manipular o botão liga/desliga corretamente, o que pode resultar na incapacidade de dormir, na incapacidade de acordar e na indisponibilidade do botão liga/desliga da barra de menus.\n• Adicione as peças que faltam, esta é apenas uma solução perfeita, não é necessária!';

  @override
  String get autoGen5718 => 'Falsificação de um controlador SLPB padrão';

  @override
  String get autoGen5719 =>
      '• Falsificar um dispositivo padrão de botão de suspensão (PNP0C0E) para permitir que o macOS identifique corretamente o botão de suspensão do sistema e implemente funções de suspensão e ativação\n• Não há PNP0C0E em algumas árvores ACPI do BIOS/placa-mãe, e o macOS não consegue manipular o botão de suspensão corretamente, o que pode resultar na incapacidade de dormir, na incapacidade de acordar e na indisponibilidade do botão de suspensão na barra de menu.\n• Esta parte é necessária para o método de correção do sono PNP0C0E!\n• Adicione as peças que faltam, esta é apenas uma solução perfeita, não é necessária!';

  @override
  String get autoGen5720 => 'Dispositivo MEM2 necessário para imitar um IGPU';

  @override
  String get autoGen5721 =>
      '• Adicionar dispositivo MEM2 ACPI exigido pela IGPU e corrigir problemas relacionados à IGPU\n• Complementar o mapeamento de memória de exibição principal para evitar falha na inicialização do driver\n• Escopo aplicável: Haswell ~ Kaby Lake, somente sistema gráfico central. Normalmente apenas gráficos discretos não precisam deste SSDT!';

  @override
  String get autoGen5722 => 'Caminho inválido';

  @override
  String get autoGen5723 => 'Nenhum arquivo .aml ou .dat válido encontrado';

  @override
  String get autoGen5724 => 'Descompilando arquivos SSDT.aml em lotes...';

  @override
  String get autoGen5725 =>
      'Descompilando arquivos DSDT.aml e SSDT.aml em lotes...';

  @override
  String get autoGen5726 =>
      'Descompilando arquivos .aml com falha individualmente...';

  @override
  String get autoGen5727 => 'Descompilando outros arquivos .aml...';

  @override
  String get autoGen5728 =>
      'Nota: Tente não incluir caracteres chineses ou especiais no caminho ou nome do arquivo, caso contrário, poderá causar problemas inesperados!';

  @override
  String get autoGen5729 => 'A ferramenta de exportação ACPI não está pronta';

  @override
  String get autoGen5730 => 'Exportando tabelas ACPI...';

  @override
  String get autoGen5731 =>
      'A plataforma atual não oferece suporte à exportação de tabelas ACPI';

  @override
  String get autoGen5732 => 'Aguardando autorização de senha do sudo...';

  @override
  String get autoGen5733 => 'A autorização do administrador foi cancelada';

  @override
  String get autoGen5734 => 'Senha do administrador não digitada';

  @override
  String get autoGen5735 => 'A senha do administrador está incorreta';

  @override
  String get autoGen5736 => 'Falha no processo de exportação da tabela ACPI';

  @override
  String get autoGen5737 =>
      'A tabela ACPI extraída pela plataforma atual está vazia ou não suporta a exportação da tabela ACPI.';

  @override
  String get autoGen5738 =>
      '=> DSDT não encontrado, exportando por assinatura...';

  @override
  String get autoGen5739 => 'Falha na exportação da tabela DSDT';

  @override
  String get autoGen5740 => 'Atualizando nome da tabela...';

  @override
  String get autoGen5741 => 'Exporte a tabela ACPI com sucesso!';

  @override
  String get autoGen5742 => 'Nenhuma tabela ACPI válida fornecida!';

  @override
  String get autoGen5743 =>
      'Os dados hexadecimais a serem localizados não foram encontrados!';

  @override
  String get autoGen5744 => 'ID de preenchimento exclusivo não encontrado!';

  @override
  String get autoGen5745 => '=> getScopeOfDevice: parâmetro de tabela inválido';

  @override
  String get autoGen5746 => 'mais solto';

  @override
  String get autoGen5747 => 'comprimento apenas';

  @override
  String get autoGen5748 =>
      'ID e comprimento da tabela, desabilitar cabeçalhos normalizados';

  @override
  String get autoGen5749 =>
      'ID e comprimento da tabela, habilite cabeçalhos normalizados';

  @override
  String get autoGen5750 =>
      'Intel Arrandale de 1ª geração, Sandy Bridge de 2ª geração, Ivy Bridge de 3ª geração';

  @override
  String get autoGen5751 =>
      'Intel Haswell de 4ª geração, Broadwell de 5ª geração';

  @override
  String get autoGen5752 =>
      'Intel Skylake de 6ª geração, Kaby Lake de 7ª geração, alguns Haswell de 4ª geração';

  @override
  String get autoGen5753 =>
      'Brilho personalizado, geralmente usado para alguns equipamentos não padrão ou configurações de necessidades especiais';

  @override
  String get autoGen5754 =>
      'Intel CoffeeLake de 8ª geração ~ 10ª geração e notebooks AMD';

  @override
  String get autoGen5755 =>
      'Outros (requer propriedades personalizadas do dispositivo applbkl-name / applbkl-data), podem não ser suportados';

  @override
  String get autoGen5756 =>
      'Atualmente, as ferramentas ACPI suportam apenas plataformas Windows/macOS/Linux';

  @override
  String get autoGen5757 =>
      'Observação: a versão antiga do iasl-legacy oferece suporte apenas ao macOS 10.6 e versões anteriores. Pode haver problemas de compatibilidade com os sistemas convencionais atuais, portanto use com cuidado!!!';

  @override
  String get autoGen5758 => 'Use [compilador de versão antiga legado do iasl]';

  @override
  String get autoGen5759 => 'Falha na compilação!';

  @override
  String get autoGen5760 =>
      'Recomenda-se mudar para uma nova versão do iasl ou habilitar a compilação forçada e tentar novamente!';

  @override
  String get autoGen5761 => 'existir';

  @override
  String get autoGen5762 => 'não existe';

  @override
  String get autoGen5763 =>
      'Nota: Intel Arrandale de 1ª geração, Sandy Bridge de 2ª geração e Ivy Bridge de 3ª geração usam UID: 14 ​​por padrão, mas algumas máquinas que usam UID: 14 ​​encontrarão brilho máximo limitado ou outros problemas. Para resolver esses problemas, o caminho correto do dispositivo da iGPU (placa gráfica integrada) deve ser definido e as informações do registro da IGPU podem precisar ser complementadas.';

  @override
  String get autoGen5764 =>
      'Insira o caminho iGPU ACPI a ser usado. O limite de caracteres para cada elemento do caminho é de 4 caracteres alfanuméricos (começando com uma letra ou sublinhado), separados por espaços. Por exemplo: SB.PCI0.GFX0';

  @override
  String get autoGen5765 =>
      'Nota: O patch NBCF foi gerado (depende do driver BrightnessKeys.kext), habilitado por padrão! Se você encontrar problemas durante o uso, desative este patch!';

  @override
  String get autoGen5766 => 'A seguinte ponte não pode ser resolvida:';

  @override
  String get autoGen5767 =>
      '=> O firmware atual suporta estados comuns do sistema! Se não for uma máquina AOAC, depois de corrigir o problema de suspensão, o macOS poderá oferecer suporte à suspensão S3, caso contrário, não oferecerá suporte à suspensão S3!';

  @override
  String get autoGen5768 => 'correção';

  @override
  String get autoGen5769 => 'A conexão com o servidor expirou';

  @override
  String get autoGen5770 => 'Download cancelado';

  @override
  String get autoGen5771 => 'Tempo limite de resposta de leitura';

  @override
  String get autoGen5772 => 'Kext copiado com sucesso';

  @override
  String get autoGen5773 =>
      'A plataforma web faz download diretamente por padrão e atualmente não oferece suporte à seleção do caminho padrão.';

  @override
  String get autoGen5774 =>
      'O nó raiz do arquivo de configuração não é um objeto JSON';

  @override
  String get autoGen5775 => 'Siga o sistema';

  @override
  String get autoGen5776 => 'encerramento';

  @override
  String get autoGen5777 => 'Microsoft Yahei';

  @override
  String get autoGen5778 => 'Atualizar corpo negro';

  @override
  String get autoGen5779 => 'Siyuan Songti';

  @override
  String get autoGen5780 =>
      'Aguardando atualização das informações de hardware';

  @override
  String get autoGen5781 => 'Carregando informações de hardware';

  @override
  String get autoGen5782 => 'Atualizando informações de hardware';

  @override
  String get autoGen5783 => 'Carregamento de informações de hardware concluído';

  @override
  String get autoGen5784 => 'Falha ao carregar informações de hardware';

  @override
  String get autoGen5785 =>
      'As informações de hardware ainda não são suportadas';

  @override
  String get autoGen5786 => 'Importação de informações de hardware concluída';

  @override
  String get autoGen5787 => 'falhar';

  @override
  String get autoGen5788 => 'Não compatível';

  @override
  String get autoGen5789 => 'Terminar';

  @override
  String get autoGen5790 => 'esconderijo';

  @override
  String get autoGen5791 =>
      'A plataforma atual não suporta consulta de informações de hardware';

  @override
  String get autoGen5792 =>
      'O relatório atual é um relatório de hardware externo importado. Atualize as informações do hardware local antes de exportar.';

  @override
  String get autoGen5793 =>
      'Atualmente não há informações de hardware local exportáveis.';

  @override
  String get autoGen5794 =>
      'Falha na limpeza da pasta de relatórios de hardware';

  @override
  String get autoGen5795 =>
      'Falha na criação da pasta de relatórios de hardware';

  @override
  String get autoGen5796 =>
      'A exportação da tabela ACPI falhou ou não é suportada';

  @override
  String get autoGen5797 =>
      'A autorização do administrador foi cancelada e a tabela ACPI não foi exportada';

  @override
  String get autoGen5798 =>
      'Não é possível exportar a tabela ACPI sem inserir a senha do administrador';

  @override
  String get autoGen5799 =>
      'A senha do administrador está incorreta e a tabela ACPI não pode ser exportada.';

  @override
  String get autoGen5800 =>
      'Falha na exportação da tabela ACPI: nenhuma tabela ACPI válida encontrada';

  @override
  String get autoGen5801 =>
      'Falha na exportação da tabela ACPI: falha no processo de exportação.';

  @override
  String get autoGen5802 =>
      'O arquivo de informações de hardware não é um objeto JSON';

  @override
  String get autoGen5803 => 'As informações de hardware foram importadas';

  @override
  String get autoGen5804 =>
      'O catálogo de tabelas ACPI é inválido, o SSDT personalizado não está disponível';

  @override
  String get autoGen5805 => 'Comece a configurar o EFI...';

  @override
  String get autoGen5806 =>
      'Gerando ConfigModel com base em informações de hardware...';

  @override
  String get autoGen5807 =>
      'Use SSDT bruto EFI, ignore a personalização do SSDT.';

  @override
  String get autoGen5808 =>
      'Relatório de hardware externo importado, mas nenhum catálogo de tabela ACPI fornecido, SSDT personalizado desativado.';

  @override
  String get autoGen5809 => 'Exportando OpenCore EFI...';

  @override
  String get autoGen5810 =>
      'EFI escrito, comece a extrair ACPI e personalizar SSDT...';

  @override
  String get autoGen5811 => 'O processo de personalização do SSDT termina.';

  @override
  String get autoGen5812 => 'O processo de personalização do SSDT falhou.';

  @override
  String get autoGen5813 => 'Configuração EFI concluída.';

  @override
  String get autoGen5814 =>
      'A configuração EFI falhou. Verifique o caminho de saída ou os logs.';

  @override
  String get autoGen5815 =>
      'O hardware gera automaticamente regras ConfigModel e está sendo reconstruído.';

  @override
  String get autoGen5816 =>
      'O comprimento das dicas deve ser o mesmo das escolhas';

  @override
  String get autoGen5817 =>
      'https://github.com/alebypegasus/RapidEFI-Tool/blob/main/Success Stories.md';

  @override
  String get autoGen5818 => 'ativos/ssdt/platformpatch.md';

  @override
  String get autoGen5819 => 'ativos/ssdt/placa de som patch.md';

  @override
  String get autoGen5820 => 'ativos/ssdt/placa gráfica counterfeit.md';

  @override
  String get autoGen5821 => 'ativos/ssdt/dispositivo de blindagem.md';

  @override
  String get autoGen5822 => 'ativos/ssdt/brightnesspatch.md';

  @override
  String get autoGen5823 =>
      'Instruções do driver Bluetooth:\n  1. Quando o Intel WiFi estiver marcado, o driver Intel Bluetooth será adicionado automaticamente de acordo com a versão do macOS, não há necessidade de verificá-lo manualmente! ! !\n  2. Quando o Broadcom WiFi estiver marcado, o driver Broadcom Bluetooth será adicionado automaticamente de acordo com a versão do macOS, sem necessidade de verificá-lo manualmente! ! !\n  3. Quando o Atheros WiFi estiver marcado, o driver Atheros Bluetooth será adicionado automaticamente, não há necessidade de verificá-lo manualmente! ! !\n  4. Se o modelo WiFi não estiver verificado ou o modelo Bluetooth não for explicado, será necessário verificá-lo manualmente! ! !\n  5. Como o Bluetooth usa o canal USB, se ainda não funcionar corretamente após adicionar drivers e patches, certifique-se de que o USB esteja bem personalizado! ! !';

  @override
  String get autoGen5824 =>
      'Caminhos HPET comuns:\n  \\_SB.PCI0.LPCB.HPET\n  \\_SB.PCI0.LPC.HPET\n  \\_SB.PCI0.HPET\n  Esta opção é usada para corrigir alguns problemas de IRQ da placa de som! Nota: Se sua placa de som não apresentar problemas de IRQ, não use esta função!!!';

  @override
  String get autoGen5825 =>
      'Versões do macOS suportadas:\n    • A versão Wireless USB Big Sur Adapter-V18 suporta macOS Catalina 10.15.x ~ macOS Tahoe 26.x (requer patch USB OCLP)\n    • A versão do Adaptador Big Sur USB sem fio-V15 suporta OS X Mavericks 10.9 ~ macOS Catalina 10.15.x\n  O WiFi USB compatível é o seguinte:\n    • O chip principal é o adaptador Wi-Fi USB Realtek 802.11n e 802.11ac. Para modelos mais específicos, consulte as instruções do autor.';

  @override
  String get autoGen5826 =>
      'Falsificação de gráficos discretos AMD (propriedades do dispositivo):\n   1. Você precisa preencher o caminho PCI da placa gráfica, por exemplo: PciRoot(0x0)/Pci(0x1,0x0)/Pci(0x0,0x0)\n   2. Você precisa preencher o ID do dispositivo falsificado da placa gráfica (4 dígitos em hexadecimal), por exemplo: 73BF\n   3. Depois que a placa gráfica for falsificada, você ainda precisará considerar os parâmetros de inicialização exigidos pela placa gráfica AMD (você pode ir para Configuração de gráficos independentes -> Gráficos independentes da AMD -> Verifique conforme necessário)\n   4. A ferramenta preparou previamente alguns IDs de dispositivos de placa gráfica. Caso contrário, encontre você mesmo ou entre em contato com o autor para obter informações complementares.';

  @override
  String get autoGen5827 => 'Confirmar';

  @override
  String get autoGen5828 => 'Cancelar';

  @override
  String get autoGen5829 => 'Claro';
}
