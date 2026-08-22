# macOS Tahoe 26 Architecture & Adaptation Guide

## 🏔️ Overview

**macOS Tahoe 26** introduces substantial architectural updates to the Darwin kernel (v26.x), refined hardware security boundaries, strict instruction set requirements (requiring AVX2 and modern vector extensions), and changes to the core audio and networking subsystems.

RapidEFI provides built-in presets, custom ACPI table generators, and kernel patch profiles optimized for macOS Tahoe 26 installations.

---

## ⚡ Key Architectural Changes & Mitigations

### 1. Instruction Set Requirements (AVX2 & AMX)
* macOS Tahoe kernel binaries require AVX2 instructions.
* **Intel CPUs**: 4th Gen Haswell and newer natively support AVX2.
* **AMD CPUs**: AMD Ryzen (Zen 1 through Zen 5) natively support AVX2. Ensure `ProvideCurrentCpuInfo` quirk is active for proper topology recognition.

### 2. AppleALC Onboard Audio Adaptation
* Starting with macOS Tahoe 26 Beta releases, Apple restructured the native `AppleHDA.kext` driver stack.
* For systems using `AppleALC.kext`:
  * Ensure `AppleALC.kext` (v1.9.0+) is used.
  * Utilize OCLP root audio layout restoration if AppleHDA fails to enumerate onboard codecs.
  * Verify HPET / IRQ conflict resolution via RapidEFI's `SSDT-HPET` generator.

### 3. AMFI & Driver Verification Policy
* Apple Mobile File Integrity (AMFI) policies in Tahoe are strictly enforced.
* Add `AMFIPass.kext` (v1.4.1+) to your `Kernel -> Add` section and include the boot-arg `-amfipassbeta` in your `NVRAM -> boot-args`.

---

## 🛠️ Recommended OpenCore Quirks for Tahoe 26

### Booter Quirks (`Booter -> Quirks`)
| Quirk | Setting | Rationale |
| :--- | :--- | :--- |
| `RebuildAppleMemoryMap` | `True` | Rebuilds memory map conforming to Apple MAT requirements |
| `SyncRuntimePermissions` | `True` | Synchronizes runtime permissions across modern UEFI implementations |
| `ProvideCustomSlide` | `True` | Protects slide allocation from firmware collisions |
| `EnableWriteUnprotector` | `False` | *(Must be False when RebuildAppleMemoryMap is True)* |

### Kernel Quirks (`Kernel -> Quirks`)
| Quirk | Setting | Rationale |
| :--- | :--- | :--- |
| `ProvideCurrentCpuInfo` | `True` | Crucial for Alder Lake / Raptor Lake / Arrow Lake hybrid core topology and AMD Ryzen |
| `LapicKernelPanic` | `True` (for HP/Dell) | Prevents local APIC panics on certain OEM motherboards |
| `PanicNoKextDump` | `True` | Keeps kernel panic text on screen for easy debugging |

---

## 🖥️ Recommended SMBIOS Models for macOS Tahoe 26

* **Intel Desktop (8th - 14th Gen)**: `iMac20,1` (i7/i9) or `MacPro7,1` (Xeon / High Core Count).
* **Intel Laptop (8th - 10th Gen)**: `MacBookPro16,1` or `MacBookPro16,4`.
* **AMD Desktop (Ryzen 1000 - 9000)**: `MacPro7,1` or `iMacPro1,1`.
* **Intel HEDT (X299 / C621)**: `MacPro7,1`.

---

## 🔗 Documentation & Updates

* [RapidEFI GitHub Repository](https://github.com/alebypegasus/RapidEFI-Tool)
* [RapidEFI Releases & Changelog](https://github.com/alebypegasus/RapidEFI-Tool/releases)
