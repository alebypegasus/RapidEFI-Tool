# SSDT-PNLF: Laptop Display Backlight & Brightness Control Guide

## ☀️ Overview

On laptop and All-in-One (AIO) computers, display backlight control is managed via the **Pulse Width Modulation (PWM)** registers of the integrated graphics controller (Intel HD / UHD / Iris Graphics or AMD Vega).

macOS relies on an ACPI dummy device named `PNLF` (`Panel Fitting and Backlight Controller`) inside the ACPI namespace (`_SB.PCI0.GFX0.PNLF` or `_SB.PCI0.IGPU.PNLF`) to attach Apple's native backlight driver (`AppleBacklight.kext` / `AppleIntelLpssI2C.kext` / `BrightnessKeys.kext`).

Without `SSDT-PNLF`, the macOS Brightness slider will not appear in Control Center, and keyboard brightness hotkeys will not respond.

---

## 🔍 UID Generation Matrix

The `_UID` property inside `SSDT-PNLF` informs `WhateverGreen.kext` which PWM register table to map:

| Target CPU Architecture | Intel / AMD iGPU Generation | Required `_UID` Value |
| :--- | :--- | :--- |
| **Sandy Bridge / Ivy Bridge** | 2nd & 3rd Gen (HD 3000 / HD 4000) | `14` (or `0x0E`) |
| **Haswell / Broadwell** | 4th & 5th Gen (HD 4400/4600/5500/6000) | `15` (or `0x0F`) |
| **Skylake / Kaby Lake / Coffee Lake** | 6th, 7th, 8th, 9th, 10th Gen (HD 520/620/UHD 620/630) | `16` (or `0x10`) |
| **Ice Lake / Tiger Lake / Comet Lake** | 10th & 11th Gen (Iris Plus / G7 / Iris Xe) | `19` (or `0x13`) |
| **AMD Vega APU** | Raven Ridge / Renoir / Cezanne (with NootedRed) | `16` (or `0x10`) |

---

## 🛠️ Step-by-Step Generation Steps

1. **Dump or Select ACPIs**: Extract native tables in RapidEFI.
2. **Select UID Type**: Choose your processor generation (Haswell, Skylake, Coffee Lake, Comet Lake, etc.).
3. **Click [Execute Patch]**: RapidSSDT compiles `SSDT-PNLF.aml` matching your iGPU ACPI scope (`GFX0` or `IGPU`).
4. **Merge config**: Click **[Merge config]** to register `SSDT-PNLF.aml` into your `config.plist`.
5. **Add Helper Kexts**: Ensure `BrightnessKeys.kext` is enabled in `Kernel -> Add` for native keyboard function key support (F1/F2 or Fn brightness keys).
6. **Reboot**: Test the brightness slider in **Control Center -> Display**.

---

## 🔗 Repository & Updates

* [RapidEFI GitHub Repository](https://github.com/alebypegasus/RapidEFI-Tool)
* [Releases & Changelog](https://github.com/alebypegasus/RapidEFI-Tool/releases)
