# Guia do usuário RapidEFI

Bem-vindo ao **RapidEFI**, uma ferramenta abrangente projetada para agilizar o processo de criação e gerenciamento de configurações EFI para sistemas macOS. Este guia orientará você pelos principais recursos do aplicativo.

## 1. Informações de hardware e extração de ACPI
A página inicial permite visualizar a configuração de hardware do seu sistema.
- **Dump ACPI:** Extraia automaticamente os arquivos DSDT e SSDT nativos do seu sistema para aplicação de patches adicionais.
- **Relatório de exportação:** Salve um relatório de hardware detalhado junto com suas tabelas ACPI.

## 2. Configurar EFI
RapidEFI fornece uma maneira simplificada de configurar seu EFI:
- **Seleção de plataforma:** Escolha sua arquitetura alvo (Intel ou AMD) e geração.
- **Kexts e Drivers:** Selecione os drivers de rede, áudio, Bluetooth e UEFI necessários.
- **Build EFI:** Uma vez configurado, o RapidEFI compila a pasta EFI para você colocar em seu ESP (EFI System Partition).

## 3. Ferramentas SSDT
Navegue até **Ferramentas e guias > SSDT personalizado** para gerenciar patches ACPI:
- Determine automaticamente os SSDTs necessários com base no seu hardware.
- Crie facilmente patches personalizados como `SSDT-HPET`, `SSDT-PNLF` e GPU Spoofing.
- Mesclar os arquivos SSDT gerados e a configuração diretamente em seu `config.plist` existente.

## 4. Patches OCLP
Para suporte de hardware legado em versões mais recentes do macOS:
- Aplique patches de Wi-Fi e GPU usando a lógica OCLP integrada.
- Certifique-se de que seu sistema atenda aos requisitos listados na respectiva seção OCLP antes de aplicar patches.

## 5. Histórico e configurações
- **Histórico:** Acompanhe seus EFIs e logs gerados anteriormente.
- **Configurações:** Personalize a aparência do aplicativo (Modo Escuro/Claro), altere a fonte de exibição e configure limites de registro.

---
*Dica: Sempre mantenha um backup de sua pasta EFI de trabalho antes de aplicar novas alterações geradas pelo RapidEFI.*