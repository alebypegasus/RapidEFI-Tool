# SSDT-HPET Audio IRQ Routing & AppleALC Guide

## 🎵 Overview

In native PC motherboards, legacy interrupt routing often assigns identical IRQ lines (specifically IRQ 0, 8, 11, 14, 15) to both system timers (such as **HPET**, **RTC**, **TIMR**, **TMR**, **IPIC**) and the High Definition Audio controller (HDEF / HDAS / HDAU).

Under macOS, **AppleALC** and Apple's native `AppleHDA.kext` driver require exclusive control over IRQ 0 and IRQ 8 to enumerate audio codecs and manage audio hardware buffers. When conflicts exist, onboard audio will remain completely silent and fail to initialize despite correct `layout-id` injection.

`SSDT-HPET` dynamically remaps HPET IRQ lines and injects necessary ACPI binary patches to free up IRQ channels for AppleALC.

---

## 🔍 Diagnosing Audio IRQ Conflicts

### 1. Verification via macOS Terminal (Recommended)
Run the following diagnostic command:
```bash
sudo kextstat | grep -E "AppleHDA|AppleALC|Lilu"
```
* **Status Normal**: Both `as.vit9696.AppleALC` and `com.apple.driver.AppleHDA` are listed with active instances.
* **Conflict Detected**: `AppleALC` is loaded, but `com.apple.driver.AppleHDA` is absent. `SSDT-HPET` is required!

### 2. Verification via IORegistryExplorer
Search for `AppleHDA` in IORegistryExplorer:
* If `AppleHDACodec` or `AppleHDAEngine` is missing under your audio controller (`HDEF` or `HDAS`), an IRQ conflict is blocking audio initialization.

---

## 🛠️ How RapidSSDT Resolves Audio IRQs

RapidSSDT analyzes your native DSDT table for existing `_CRS` (Current Resource Setting) methods under:
* `_SB.PCI0.LPCB.HPET` (or `_SB.PCI0.LPC0.HPET`)
* `_SB.PCI0.LPCB.RTC` (or `_SB.PCI0.LPCB.RTC0`)
* `_SB.PCI0.LPCB.TIMR` (or `_SB.PCI0.LPCB.TMR`)
* `_SB.PCI0.LPCB.IPIC` (or `_SB.PCI0.LPCB.PIC`)

It generates:
1. Binary ACPI patches (`HPET _CRS to XCRS`, `RTC _CRS to XCRS`, `TIMR _CRS to XCRS`, `IPIC _CRS to XCRS`) that rename the native conflict methods.
2. A clean `SSDT-HPET.aml` table that provides compliant resource descriptors with reserved IRQ lines for AppleALC.

---

## 🚀 Generation & Integration Steps

1. **Dump ACPI**: Click **[Dump ACPI]** in RapidEFI.
2. **Select Patch**: Go to **Function Patches** -> **SSDT-HPET**.
3. **Execute Patch**: RapidSSDT compiles `SSDT-HPET.aml` and generates matching binary patch rules.
4. **Merge config**: Click **[Merge config]** to automatically inject the table and rename patches into your `config.plist`.
5. **Reboot**: Verify that onboard audio output/input devices appear in **System Settings -> Sound**.

---

## 🔗 Documentation & Support

* [RapidEFI GitHub Repository](https://github.com/alebypegasus/RapidEFI-Tool)
* [Releases & Changelog](https://github.com/alebypegasus/RapidEFI-Tool/releases)
