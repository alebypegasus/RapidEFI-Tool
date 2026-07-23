## Falsificação de GPU (GPU Spoofing)

- [1. Falsificação Precisa de GPU](#1-falsificação-precisa-de-gpu)
- [2. Falsificação Genérica de GPU](#2-falsificação-genérica-de-gpu)

---

### 1. Falsificação Precisa de GPU

A falsificação de dispositivos (principalmente GPUs dedicadas AMD) **não exige obrigatoriamente as tabelas DSDT/SSDT, mas é altamente recomendada.** Com as tabelas ACPI fornecidas, a ferramenta analisa se o caminho do dispositivo PCI existe e injeta automaticamente pontes PCI se necessário, garantindo o sucesso da simulação.

#### 1.1 Criar Patch de Falsificação Extraindo ACPI do Sistema Atual
Passos resumidos:
【Extrair ACPI】-> 【Patches de Dispositivo】-> 【SSDT-GPU-SPOOF】-> 【Preencher Caminho ACPI】-> 【Preencher ID de Simulação】 -> 【Executar Patch】-> 【Selecionar config.plist】-> 【Mesclar config.plist】

#### 1.2 Criar Patch usando Tabelas DSDT/SSDT de Outro Computador
Passos resumidos:
【Selecionar pasta ACPIs】-> 【Patches de Dispositivo】-> 【SSDT-GPU-SPOOF】-> 【Preencher Caminho ACPI】-> 【Preencher ID de Simulação】 -> 【Executar Patch】-> 【Selecionar config.plist】-> 【Mesclar config.plist】

---

### 2. Falsificação Genérica de GPU

Este método não depende das tabelas DSDT/SSDT locais, exigindo apenas o caminho ACPI da placa de vídeo para criar um patch genérico.
