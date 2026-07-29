# RapidEFI

[English](#english) | [Português](#português) | [简体中文](#简体中文)

<div align="center">

![Release](https://img.shields.io/github/v/release/alebypegasus/RapidEFI-Tool?label=Release)
![Downloads](https://img.shields.io/github/downloads/alebypegasus/RapidEFI-Tool/total?label=Downloads)

</div>

---

<a name="english"></a>
# 🇺🇸 RapidEFI (English)

**An OpenCore EFI configuration, automatic generation, and maintenance tool for general users.**

RapidEFI helps you manually configure an EFI, automatically generate an EFI based on your hardware information, check macOS compatibility, customize SSDTs, and maintain existing EFIs.

The configuration logic follows the official OpenCore documentation and Dortania's OpenCore Install Guide, aiming to turn the recommended configuration process into visual, checkable, and maintainable operations.

> **Credits:** Original project developed by [JeoJay127](https://github.com/JeoJay127). The comprehensive multi-language support (English & Portuguese), optimizations, and UI adjustments were carefully translated and implemented by **alebypegasus**.

> RapidEFI cannot guarantee that every hardware configuration will boot macOS perfectly on the first try. Its goal is to organize the complex OpenCore configuration process into clearer, checkable, and adjustable steps.

## Quick Download

| Windows | macOS | Linux |
| :---: | :---: | :---: |
| [Download](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-Windows.zip) | [Download](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-macOS.dmg) | [Download](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-Linux.tar.gz) |

## Key Features

- **Graphical EFI Configuration**: Simplifies the pressure of directly editing `config.plist`.
- **Hardware Info & Compatibility**: Helps judge the general support of your CPU, GPU, Audio, Network, WiFi, and Bluetooth under macOS.
- **Auto EFI Generation**: Automatically selects platform, kexts, boot args, device properties, and fixes based on hardware information.
- **SSDT Customization**: Generates common SSDT patches based on your ACPI tables.
- **WiFi/OCLP Integration**: Automatically handles necessary patches and parameters for Intel, Broadcom, and Atheros/Qualcomm WiFi.
- **Continuous Maintenance**: Exports a `configModel` so you can adjust your EFI later without manually editing the plist.

---

<a name="português"></a>
# 🇧🇷 RapidEFI (Português)

**Uma ferramenta de configuração, geração automática e manutenção de EFI do OpenCore para usuários comuns.**

O RapidEFI ajuda a configurar uma EFI manualmente, gerar uma EFI automaticamente com base nas informações do seu hardware, verificar a compatibilidade com o macOS, personalizar SSDTs e manter EFIs existentes.

A lógica de configuração segue a documentação oficial do OpenCore e o Guia de Instalação do OpenCore do Dortania, com o objetivo de transformar o processo de configuração em operações visuais, verificáveis e mantíveis.

> **Créditos:** Projeto original desenvolvido por [JeoJay127](https://github.com/JeoJay127). O suporte completo a múltiplos idiomas (Inglês e Português), otimizações de código e ajustes de interface foram idealizados, traduzidos e implementados por **alebypegasus**.

> O RapidEFI não garante que todo hardware iniciará o macOS de primeira. Seu objetivo é organizar o complexo processo de configuração do OpenCore em passos mais claros, verificáveis e que podem continuar sendo ajustados.

## Download Rápido

| Windows | macOS | Linux |
| :---: | :---: | :---: |
| [Baixar](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-Windows.zip) | [Baixar](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-macOS.dmg) | [Baixar](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-Linux.tar.gz) |

## Principais Recursos

- **Configuração Gráfica de EFI**: Reduz a pressão de editar diretamente o `config.plist`.
- **Informações de Hardware e Compatibilidade**: Ajuda a julgar o suporte geral da sua CPU, GPU, Áudio, Rede, WiFi e Bluetooth no macOS.
- **Geração Automática de EFI**: Seleciona automaticamente a plataforma, kexts, argumentos de boot, propriedades de dispositivos e correções com base no hardware.
- **Personalização de SSDT**: Gera patches SSDT comuns com base nas tabelas ACPI originais do seu computador.
- **Integração WiFi/OCLP**: Lida automaticamente com patches e parâmetros necessários para WiFi Intel, Broadcom e Atheros/Qualcomm em sistemas mais novos.
- **Manutenção Contínua**: A ferramenta salva o histórico, permitindo que você reajuste sua EFI futuramente sem a necessidade de editar o plist manualmente.

---

<a name="简体中文"></a>
# 🇨🇳 RapidEFI (简体中文)

**一个面向普通用户的 OpenCore EFI 配置、自动生成与后期维护工具**

RapidEFI 可以帮助你手动配置 EFI、根据硬件信息自动生成 EFI、查看 macOS 兼容性、定制 SSDT，并在后续继续加工和维护已经生成的 EFI。

RapidEFI 的配置逻辑遵循 OpenCore 官方文档与 Dortania OpenCore 安装指南，尽量把官方推荐的配置流程整理成可视化、可检查、可继续维护的操作。

> **鸣谢与说明:** 本项目原版由 [JeoJay127](https://github.com/JeoJay127) 开发。多语言的全面支持（英语和葡萄牙语）、多语言逻辑重构以及 UI 适配和国际化优化均由 **alebypegasus** 翻译和实现。

> RapidEFI 不能保证所有硬件都能一次成功启动 macOS。它的目标是把复杂的 OpenCore 配置流程整理成更清晰、可检查、可继续调整的操作。

## 快捷下载

| Windows | macOS | Linux |
| :---: | :---: | :---: |
| [下载](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-Windows.zip) | [下载](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-macOS.dmg) | [下载](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest/download/RapidEFI-Linux.tar.gz) |

## 主要优势与特点

- **图形化配置 EFI**：把常用 OpenCore 配置项整理为界面选项，降低直接编辑 `config.plist` 的压力。
- **硬件信息与兼容性提示**：帮助判断 CPU、显卡、声卡、网卡、WiFi、蓝牙、磁盘等硬件在 macOS 下的大致支持情况。
- **自动配置 EFI**：根据硬件信息自动选择平台、驱动、启动参数、设备属性和部分修复项。
- **SSDT 自动定制**：在支持的环境下，可根据 ACPI 表生成定制 SSDT，并处理部分不支持设备的屏蔽和显卡仿冒。
- **WiFi/OCLP 联动**：针对部分 Intel、Broadcom、Atheros/Qualcomm WiFi，在对应系统版本下自动处理必要补丁和参数。
- **EFI 可持续维护**：输出 EFI 时保存 `configModel`，后续可以通过加工 EFI 再次调整。
