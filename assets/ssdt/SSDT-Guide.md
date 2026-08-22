# RapidSSDT ACPI & SSDT Patching Architecture Guide

## 📚 Table of Contents
- [1. Introduction & Core Concepts](#1-introduction--core-concepts)
- [2. Supported Bootloaders](#2-supported-bootloaders)
- [3. How to Extract Native ACPI Tables (DSDT/SSDT)](#3-how-to-extract-native-acpi-tables-dsdtsdt)
- [4. Determining Required SSDTs by Platform](#4-determining-required-ssdts-by-platform)
- [5. Step-by-Step Custom SSDT Generation](#5-step-by-step-custom-ssdt-generation)
- [6. Batch Compilation & EFI Merging](#6-batch-compilation--efi-merging)
- [7. Detailed Patch Modules](#7-detailed-patch-modules)
- [8. Documentation & Releases](#8-documentation--releases)

---

## 🌟 1. Introduction & Core Concepts

In PC architectures, the **ACPI (Advanced Configuration and Power Interface)** table set, particularly the **DSDT (Differentiated System Description Table)**, defines system devices, interrupt controllers, power trees, and PCI routing for Windows. Because macOS expects Apple-specific ACPI structures (such as `EC0` vs `EC`, `AWAC` vs `RTC`, and distinct CPU power objects), Hackintosh systems require **SSDT (Secondary System Description Table)** patches to bridge hardware behavior without modifying the native firmware.

**RapidSSDT** disassembles, parses, compiles, and injects customized SSDTs dynamically tailored to your exact hardware without relying on bloated or generic prebuilts.

---

## 🟢 2. Supported Bootloaders

* **OpenCore Bootloader** *(Recommended & Mainstream)*:
  - Generates binary `.aml` tables structured specifically for `EFI/OC/ACPI`.
  - Automatically matches and injects required ACPI patches (e.g. `_OSI to XOSI`, `HPET _CRS to XCRS`) directly into `config.plist`.
* **Clover Bootloader** *(Legacy Support)*:
  - Generates `.aml` binaries compatible with `EFI/CLOVER/ACPI/patched`.

---

## 📥 3. How to Extract Native ACPI Tables (DSDT/SSDT)

> [!IMPORTANT]
> Always dump ACPI tables after updating your BIOS, changing major BIOS configuration settings, or upgrading RAM/CPU, as SystemMemory address offsets shift during hardware reconfiguration.

### 3.1 Extraction on Windows (Recommended)
1. Boot into Windows natively via your motherboard's UEFI boot menu (do not chainload through an existing Hackintosh EFI).
2. Launch RapidEFI / RapidSSDT and click **[Dump ACPI]**.
3. All native tables (`DSDT.aml`, `SSDT-*.aml`) are extracted to your Desktop (`ACPIs` folder).

### 3.2 Extraction on Linux
1. Boot into Linux.
2. In RapidEFI, click **[Dump ACPI]** (or read `/sys/firmware/acpi/tables/`).
3. Tables are saved and ready for offline compilation.

### 3.3 Extraction on macOS (Clean Mode)
1. If running macOS, ensure no third-party SSDTs or ACPI patches are active before extracting to prevent duplicate table pollution.

---

## 🎯 4. Determining Required SSDTs by Platform

RapidEFI provides platform categorization based on CPU family, socket, and form factor:

| Platform Architecture | Form Factor | Core Required SSDTs | Recommended / Fix SSDTs |
| :--- | :--- | :--- | :--- |
| **Intel Desktop (1st - 3rd Gen)** | LGA1156 / LGA1155 | `SSDT-EC`, `SSDT-HPET` | `SSDT-PM` / `SSDT-PLUG`, `SSDT-IMEI` |
| **Intel Desktop (4th - 5th Gen)** | LGA1150 | `SSDT-PLUG`, `SSDT-EC` | `SSDT-HPET`, `SSDT-EHCx_OFF`, `SSDT-SBUS-MCHC` |
| **Intel Desktop (6th - 7th Gen)** | LGA1151 (100/200) | `SSDT-PLUG`, `SSDT-EC-USBX` | `SSDT-HPET`, `SSDT-SBUS-MCHC`, `SSDT-DMAC` |
| **Intel Desktop (8th - 10th Gen)** | LGA1151 (300) / LGA1200 | `SSDT-PLUG`, `SSDT-EC-USBX`, `SSDT-AWAC` | `SSDT-RHUB`, `SSDT-PMC`, `SSDT-HPET` |
| **Intel Desktop (11th - 14th Gen)** | LGA1200 / LGA1700 | `SSDT-PLUG-ALT`, `SSDT-EC-USBX`, `SSDT-AWAC` | `SSDT-RHUB`, `SSDT-SBUS-MCHC`, `SSDT-BRG0` |
| **Intel Laptop (4th - 10th Gen)** | BGA / Mobile | `SSDT-PLUG`, `SSDT-EC`, `SSDT-PNLF`, `SSDT-GPI0` | `SSDT-HPET`, `SSDT-XOSI`, `SSDT-PCI-DISABLE` |
| **AMD Desktop (AM4 / AM5)** | Ryzen 1000 - 9000 | `SSDT-EC-USBX`, `SSDT-CPUR` (B550/A520/AM5) | `SSDT-SBUS-MCHC`, `SSDT-HPET`, `SSDT-BRG0` |

---

## ⚙️ 5. Step-by-Step Custom SSDT Generation

1. **Extract or Select ACPIs**: Choose your native `ACPIs` folder containing dumped DSDT/SSDT files.
2. **Select Target Platform**: Choose your CPU vendor, generation, and form factor.
3. **Customize Options**: Toggle specific patches (e.g. Audio HPET IRQ fix, GPU Spoofing, PCI Disabling).
4. **Click [Custom SSDT]**: RapidSSDT decompiles native tables with `iasl`, extracts device scopes, resolves missing symbols, and compiles optimized `.aml` binaries into `ACPIs/Results`.

---

## 🔄 6. Batch Compilation & EFI Merging

1. Click **[Select config]** and choose your target OpenCore `config.plist`.
2. Click **[Merge config]**.
3. RapidEFI automatically:
   - Copies generated `.aml` files to `EFI/OC/ACPI/`.
   - Inserts ordered `ACPI -> Add` entries with `Enabled: true`.
   - Injects required `ACPI -> Patch` entries (such as `RTC _CRS to XCRS` or `HPET _CRS to XCRS`).
   - Backs up your previous `config.plist` safely.

---

## 📖 7. Detailed Patch Modules

* [7.1 SSDT-HPET Audio IRQ Routing Guide](audio_patch.md)
* [7.2 SSDT-PNLF Laptop Display Brightness Control](brightness_patch.md)
* [7.3 SSDT-GPU-SPOOF Graphics Card Spoofing Guide](gpu_spoof.md)
* [7.4 SSDT-PCI-DISABLE Power Disabling Guide](disable_devices.md)
* [7.5 Platform Patches & Quick Selector](platform_patch.md)
* [7.6 Preferences & iASL Compilation Settings](preferences.md)

---

## 🔗 8. Documentation & Releases

* **Project Repository**: [https://github.com/alebypegasus/RapidEFI-Tool](https://github.com/alebypegasus/RapidEFI-Tool)
* **Releases & Downloads**: [https://github.com/alebypegasus/RapidEFI-Tool/releases](https://github.com/alebypegasus/RapidEFI-Tool/releases)
