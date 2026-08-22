# SSDT-PCI-DISABLE: Hardware Power Cutoff & Device Disabling Guide

## 🚫 Overview

Many laptops and desktops feature unsupported hardware components that cause severe battery drain, high temperatures, sleep/wake crashes, or kernel panics under macOS:
* **Unsupported NVIDIA Optimus dGPUs** on laptops (GeForce GTX 1050/1060/1650/RTX 2000/3000/4000 series).
* **Unsupported AMD Radeon dGPUs** on laptops.
* **Incompatible NVMe SSDs** (e.g. Samsung PM981 / PM991 / Micron 2200).
* **Unsupported Wi-Fi / Bluetooth or Card Readers**.

RapidSSDT compiles tailored ACPI disabling tables that completely power down or unbind these devices in macOS without affecting Windows or Linux.

---

## ⚡ Disabling Strategies & Methods

| Method | Priority | How It Works | Best Used For |
| :--- | :--- | :--- | :--- |
| **`_OFF` Method** (`SSDT-GPU-DISABLE-OFF`) | **Priority 1 (Highest)** | Calls the native ACPI power-off method (`_OFF()`) in `_INI`, completely cutting power rail to the device. | Optimus laptops with dedicated dGPU power switches. |
| **`_PS3` Method** (`SSDT-GPU-DISABLE-PS3`) | **Priority 2** | Forces the device into ACPI D3cold / S3 power state (`_PS3()`), shutting down clock generators. | Laptops lacking `_OFF` methods in native DSDT. |
| **`IOName` Method** (`SSDT-PCI-DISABLE-IOName`) | **Priority 3** | Overrides `class-code` (`0xFFFFFFFF`) or `IOName` (`#display`), preventing macOS driver matching. | Desktops, NVMe SSDs, unsupported Wi-Fi cards. |

---

## 🛠️ Step-by-Step Disabling Procedure

1. **Identify Target Device ACPI Path**:
   - In RapidEFI, open the Hardware tab and copy the ACPI path of the device to disable (e.g., `_SB.PCI0.PEG0.PEGP`).
2. **Select Disabling Method**:
   - For Laptops: Try **_OFF Method** first. RapidSSDT will verify if `_OFF` exists in your dumped DSDT.
   - If not found, select **IOName Method**.
3. **Click [Execute Patch]**: RapidSSDT compiles the customized `.aml` table.
4. **Click [Merge config]**: Automatically copies the table to `EFI/OC/ACPI` and registers it in `config.plist`.
5. **Verify**:
   - Boot into macOS.
   - Run `pmset -g` or check battery draw and system thermals. The disabled GPU will no longer generate heat or consume power.

---

## 🔗 Documentation & Releases

* [RapidEFI GitHub Repository](https://github.com/alebypegasus/RapidEFI-Tool)
* [Releases & Changelog](https://github.com/alebypegasus/RapidEFI-Tool/releases)
