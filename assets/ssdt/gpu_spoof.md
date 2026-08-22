# SSDT-GPU-SPOOF: Graphics Card Device ID Spoofing Guide

## 🎮 Overview

Certain AMD discrete GPUs (such as the AMD Radeon RX 5500 XT OEM, RX 6600 OEM, RX 6700 XT, or mobile AMD Radeon graphics) share the exact same silicon core architecture as natively supported Apple GPUs, but use unsupported PCI Device IDs (for example, `0x73FF` vs `0x73DF`).

By injecting an ACPI spoofing table (`SSDT-GPU-SPOOF`), RapidSSDT overrides the hardware `device-id` reported to macOS with a compatible Apple device ID, enabling the native macOS graphics driver (`AMDRadeonX6000.kext`, `AMDRadeonX5000.kext`, or `AMDRadeonX4000.kext`) to bind and initialize full Metal acceleration.

---

## ⚡ Precision vs Generic GPU Spoofing

### 1. Precision Spoofing (Recommended)
When native DSDT/SSDT tables are dumped:
* RapidSSDT inspects the complete ACPI device tree leading to your GPU (e.g. `_SB.PCI0.PEG0.PEGP` or `_SB.PCI0.GPP0.SWUS.SWDS.GFX0`).
* **Automated Bridge Injection**: If unpopulated intermediary ACPI bridges are detected, RapidSSDT automatically creates `SSDT-BRG0` alongside the spoof table so the GPU path is fully visible to macOS.

### 2. Generic Spoofing
* Allows inputting any custom ACPI path and target Device ID without requiring a native ACPI dump.

---

## 📋 Common AMD GPU Spoofing Pairs

| Physical GPU Model | Native Silicon Core | Hardware Device ID | Spoofed Target Device ID | Target Driver Stack |
| :--- | :--- | :--- | :--- | :--- |
| **AMD Radeon RX 5500 (OEM)** | Navi 14 | `0x7340` | `0x7340` -> `0x7340` | `AMDRadeonX6000` |
| **AMD Radeon RX 550 (Lexa)** | Polaris 12 (Lexa Core) | `0x699F` | `0x67FF` (Baffin Core) | `AMDRadeonX4000` |
| **AMD Radeon RX 6600 (OEM)** | Navi 23 | `0x73FF` | `0x73FF` -> `0x73FF` | `AMDRadeonX6000` |
| **AMD Radeon RX 6700 XT** | Navi 22 | `0x73DF` (via NootRX) | `0x73DF` | `NootRX.kext` |

---

## 🛠️ Step-by-Step Spoofing Workflow

1. **Locate GPU ACPI Path**: Open RapidEFI's Hardware Inspector and copy your GPU's ACPI device path (e.g., `_SB.PCI0.PEG0.PEGP`).
2. **Select Target ID**: Choose a matching supported Device ID from the dropdown or type a custom 4-digit hex code.
3. **Execute Patch**: RapidSSDT generates and compiles `SSDT-GPU-SPOOF.aml`.
4. **Merge config**: Click **[Merge config]** to inject into `config.plist`.
5. **Reboot**: Check **About This Mac -> System Report -> Graphics/Displays** to confirm the GPU is recognized with full Metal acceleration.

---

## 🔗 Repository & Documentation

* [RapidEFI GitHub Repository](https://github.com/alebypegasus/RapidEFI-Tool)
* [Releases & Changelog](https://github.com/alebypegasus/RapidEFI-Tool/releases)
