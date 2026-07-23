## Guia de Uso do RapidSSDT

- [1. Bootloaders Suportados pelos Patches SSDT do RapidSSDT](#1bootloaders-suportados-pelos-patches-ssdt-do-rapidssdt)
- [2. Como extrair as tabelas SSDT e DSDT com o RapidSSDT](#2como-extrair-as-tabelas-ssdt-e-dsdt-com-o-rapidssdt)
- [3. Como determinar quais SSDTs são necessários](#3como-determinar-quais-ssdts-são-necessários)
- [4. Como criar patches SSDT com o RapidSSDT](#4como-criar-patches-ssdt-com-o-rapidssdt)

---

## 1. Bootloaders Suportados pelo RapidSSDT

O RapidSSDT foi projetado para gerar patches **ACPI / SSDT limpos e otimizados** para os principais bootloaders Hackintosh:

- 🟢 **OpenCore** (Recomendado / Atual)
  - Patches gerados diretamente para a pasta `EFI/OC/ACPI`.
  - Estrutura e nomes 100% alinhados com o guia Dortania.

- 🟢 **Clover** (Legado)
  - Compatível com a pasta `EFI/CLOVER/ACPI/patched`.

---

## 2. Como extrair SSDT e DSDT do Sistema

##### **Atenção:**
Se você alterar qualquer uma das opções abaixo no computador, será necessário extrair e refazer os patches ACPI:
- Atualização de BIOS
- Alteração de configurações da BIOS
- Alteração de hardware ou memória RAM

##### 2.1 Extração no Windows (Recomendado)
- Inicie o Windows diretamente pelo Gerenciador de Boot nativo da placa-mãe (sem passar pelo OpenCore).
- Abra o `rapidssdt.exe` e clique no botão **【Extrair ACPI】**.

---

## 3. Como determinar quais SSDTs você precisa

O RapidSSDT lista automaticamente os patches essenciais e recomendados com base no tipo de CPU (Intel ou AMD), tipo de plataforma (Desktop, Notebook, All-in-One ou Servidor) e a geração do processador.
