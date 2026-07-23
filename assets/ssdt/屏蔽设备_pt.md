## Desativar Dispositivo (Device Disabling)

- [1. Desativação Precisa de Dispositivo](#1-desativação-precisa-de-dispositivo)
- [2. Desativação Genérica de Dispositivo](#2-desativação-genérica-de-dispositivo)

---

### 1. Desativação Precisa de Dispositivo

A desativação de dispositivos PCIe não suportados (placas de vídeo, SSDs NVMe, placas Wi-Fi) **não exige obrigatoriamente as tabelas DSDT/SSDT, mas é altamente recomendada.** A ferramenta verifica a existência dos métodos necessários (como `_OFF` ou `_PS3`) antes de aplicar a desativação.

Ordem de prioridade dos métodos: **OFF > PS3 > IOName**

- **SSDT-GPU-DISABLE-OFF** (Notebooks): Desativa a dGPU no nível ACPI, desligando o consumo e reduzindo aquecimento.
- **SSDT-GPU-DISABLE-PS3** (Notebooks): Desativa a dGPU durante o estado de suspensão S3.
- **SSDT-GPU-DISABLE-IOName** (Todas as plataformas): Altera o ID do dispositivo para impedir o carregamento do kext.

#### 1.1 Criar Patch de Desativação Extraindo ACPI do Sistema Atual
Passos resumidos:
【Extrair ACPI】-> 【Patches de Dispositivo】-> 【SSDT-PCI-DISABLE】-> 【Preencher Caminho ACPI】-> 【Selecionar Método e Tipo de Dispositivo】 -> 【Executar Patch】-> 【Selecionar config.plist】-> 【Mesclar config.plist】

#### 1.2 Criar Patch Usando Tabelas ACPI de Outro Computador
Passos resumidos:
【Selecionar pasta ACPIs】-> 【Patches de Dispositivo】-> 【SSDT-PCI-DISABLE】-> 【Preencher Caminho ACPI】-> 【Selecionar Método e Tipo de Dispositivo】 -> 【Executar Patch】-> 【Selecionar config.plist】-> 【Mesclar config.plist】

---

### 2. Desativação Genérica de Dispositivo

Este método não exige tabelas DSDT/SSDT locais, apenas o caminho ACPI do dispositivo. Para a desativação genérica, o método **IOName** é o mais recomendado.
