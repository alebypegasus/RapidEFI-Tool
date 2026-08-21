# macOS Tahoe 26 Compatibility & Adaptation Guide

## Overview

macOS Tahoe 26 introduces updated kernel architecture, stricter security mitigations, and refined hardware support requirements. RapidEFI provides presets and custom SSDTs optimized for macOS Tahoe 26 installations.

---

## Key Changes & Requirements

### 1. Kernel Extension Loading & AMFI
* macOS Tahoe reinforces AMFI (Apple Mobile File Integrity) policy enforcement.
* Use `AMFIPass.kext` (v1.4.1+) alongside boot-arg `-amfipassbeta` to maintain system security while enabling necessary driver injections.

### 2. AppleALC Audio Adaptation
* Audio layouts in macOS Tahoe 26 require updated AppleALC patches.
* If onboard audio fails to initialize, ensure `AppleALC.kext` is updated to the latest build with Tahoe layout tables.

### 3. OpenCore Booter Settings
* `RebuildAppleMemoryMap`: Recommended for MAT-compliant modern firmware.
* `SyncRuntimePermissions`: Recommended for 2018+ Intel and AMD motherboards.
* `ProvideCurrentCpuInfo`: Required for Intel 12th Gen+ Alder Lake / Raptor Lake hybrid CPUs.

---

## Recommended SMBIOS Models for Tahoe 26

* **Intel Desktop (8th-14th Gen)**: `iMac20,1` or `MacPro7,1`
* **Intel Laptop (8th-10th Gen)**: `MacBookPro16,1` or `MacBookPro16,4`
* **AMD Desktop (Ryzen 1000-9000)**: `MacPro7,1` or `iMacPro1,1`
