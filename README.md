# RapidEFI-Tool

<p align="center">
  <img src="assets/images/logo.png" alt="RapidEFI Logo" width="128" height="128" />
</p>

<h3 align="center">Next-Generation OpenCore EFI Generator, ACPI Engine & Hardware Configuration Suite</h3>

<p align="center">
  <strong>Automate, validate, and customize your OpenCore Hackintosh EFI in seconds across Desktop & Mobile.</strong>
</p>

<p align="center">
  <a href="https://github.com/alebypegasus/RapidEFI-Tool/releases"><img src="https://img.shields.io/github/v/release/alebypegasus/RapidEFI-Tool?color=blue&label=Release" alt="GitHub Release"></a>
  <a href="https://flutter.dev"><img src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter" alt="Flutter"></a>
  <a href="https://dart.dev"><img src="https://img.shields.io/badge/Dart-3.x-0175C2?logo=dart" alt="Dart"></a>
  <img src="https://img.shields.io/badge/Platforms-macOS%20%7C%20Windows%20%7C%20Linux%20%7C%20Android%20%7C%20iOS-4CAF50" alt="Supported Platforms">
  <img src="https://img.shields.io/badge/OpenCore-1.0.x%20%2F%200.9.x-informational" alt="OpenCore">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-yellow.svg" alt="License"></a>
  <img src="https://img.shields.io/badge/Tests-100%25%20Passing-success" alt="Tests">
</p>

---

## 🌟 Overview

**RapidEFI-Tool** is an all-in-one, modern open-source tool designed to streamline and automate the entire Hackintosh configuration lifecycle. Whether building an EFI from scratch, inspecting hardware, compiling precision ACPI tables, generating custom SSDTs, or patching legacy components with OpenCore Legacy Patcher (OCLP), RapidEFI provides an intuitive, foolproof, and responsive experience on desktop computers and mobile devices alike.

---

## 🚀 Key Features

### 1. 🔍 Comprehensive Hardware Auto-Detection
* **Multi-component probing**: Inspects CPU architecture, integrated/discrete GPUs, Audio codecs (Realtek/Conexant/IDT/VIA), Ethernet & Wi-Fi controllers, NVMe/SATA storage, motherboard chipsets, and ACPI tables.
* **PCI ID Database Integration**: Recognizes thousands of PCI/USB devices with real-time vendor and device name resolution.
* **Hardware Report Export/Import**: Export detailed JSON/Text hardware manifests on Windows, Linux, or macOS, and reprocess them on any device (including smartphones and tablets).

### 2. ⚡ Automated OpenCore EFI Generator
* **Full OpenCore Spec Compliance**: Targets modern OpenCore releases (0.9.x & 1.0.x) with verified boot quirks, driver chains (`OpenRuntime.efi`, `OpenCanopy.efi`, `HfsPlus.efi`), and schema-validated `config.plist` structures.
* **Cascading Motherboard Database**: 3-tier selection (Platform Generation → Brand → Model) applying platform-tailored quirks, kernel patches, and ACPI rules in one click.
* **Intelligent Kext Management**: Automatically injects and arranges essential kexts (`Lilu`, `VirtualSMC`, `WhateverGreen`, `AppleALC`, `NVMeFix`, `RestrictEvents`, `CpuTopologyRebuild`) in correct dependency sequence.

### 3. 🧩 Precision SSDT Generator & ACPI Patcher
* **Custom SSDT Engine**: Disassembles raw ACPI DSDT/SSDTs using integrated `iasl` compilers and creates tailored AML patches:
  * `SSDT-PLUG`: CPU power management injection (Intel Nehalem to Comet Lake).
  * `SSDT-EC-USBX`: Embedded Controller fake device and USB power limits.
  * `SSDT-AWAC`: Real-Time Clock / AWAC timer fixes for 300-series to 700-series motherboards.
  * `SSDT-HPET`: Fixes audio IRQ routing conflicts (HPET, RTC, TIMR, TMR, IPIC) for AppleALC.
  * `SSDT-PNLF`: Backlight PWM brightness control for laptop displays.
  * `SSDT-BRG0`: ACPI PCI bridge generator for discrete GPUs and NVMe drives on unpopulated bridges.
  * `SSDT-RHUB`: USB reset and power table reinitialization.
  * `SSDT-PCI-DISABLE`: Clean hardware power cutoff (`_OFF`, `_PS3`, `IOName`) for unsupported dGPUs and wireless cards.

### 4. 🛡️ Real-Time EFI Sanity Validator
* **Integrity Audit**: Validates `config.plist` structure against missing required keys, missing mandatory drivers, mutual exclusivity errors (e.g. `WhateverGreen` vs `NootedRed`), and boot-argument conflicts.
* **Instant Diagnostic Feedback**: Warns about improper SIP values, disabled AppleRTC, or missing MMIO whitelist configurations before you reboot.

### 5. 📱 Fully Adaptive Multiplatform Architecture
* **Desktop & Mobile**: Native desktop experience on macOS, Windows, and Linux with window manager controls; specialized mobile interface on Android and iOS with fluid touch navigation, scalable typography, and zero layout overflows.

---

## 💻 Supported Hardware Matrix

| Hardware Category | Supported Architectures & Generations |
| :--- | :--- |
| **Intel Desktop** | LGA775 (Core 2 Duo/Quad), 1st Gen Nehalem, 2nd Gen Sandy Bridge, 3rd Gen Ivy Bridge, 4th Gen Haswell, 5th Gen Broadwell, 6th Gen Skylake, 7th Gen Kaby Lake, 8th/9th Gen Coffee Lake, 10th Gen Comet Lake, 11th Gen Rocket Lake, 12th Gen Alder Lake, 13th/14th Gen Raptor Lake, 15th Gen Arrow Lake (Core Ultra 200). |
| **Intel Laptop & NUC** | 1st Gen Arrandale through 13th Gen Raptor Lake / 14th Gen Meteor Lake. |
| **Intel HEDT & Server** | X58 (LGA1366), X79 (LGA2011), X99 (LGA2011-v3), X299 (LGA2066), C602, C612, C621. |
| **AMD Desktop** | AM3/FM2 (Bulldozer / FX), AM4 (Ryzen 1000, 2000, 3000, 4000, 5000), AM5 (Ryzen 7000, 8000, 9000). |
| **AMD Laptop & APUs** | Raven Ridge, Picasso, Renoir, Lucienne, Cezanne, Barcelo, Rembrandt (via NootedRed). |
| **AMD HEDT & Server** | Threadripper 1000/2000 (X399), Threadripper 3000/5000/7000 (TRX40, WRX80, sTR5), EPYC. |
| **Graphics (iGPU)** | Intel HD 2000/3000/4000/4400/4600/5000/5500/6000, Intel UHD 620/630/730/770, Iris Plus, Iris Pro, AMD Vega iGPU. |
| **Graphics (dGPU)** | AMD Radeon Polaris (RX 400/500), Vega (56/64/VII), Navi 10/14 (RX 5000), Navi 21/22/23 (RX 6000), RDNA3 (RX 7000), NVIDIA Kepler (GTX 600/700 via OCLP). |
| **Wireless & Networking** | Intel Wireless-AC / Wi-Fi 6 (AirportItlwm/itlwm), Broadcom BCM94360 / BCM94352Z (Fenvi/Apple), Realtek PCIe/USB, Intel I210/I211/I219/I225/I226, Aquantia AQC107/113. |

---

## 🍏 Supported macOS Versions

* **macOS Tahoe 26** *(Beta / Upcoming)*
* **macOS Sequoia 15**
* **macOS Sonoma 14**
* **macOS Ventura 13**
* **macOS Monterey 12**
* **macOS Big Sur 11**
* **macOS Catalina 10.15**
* **macOS Mojave 10.14**
* **macOS High Sierra 10.13**
* **macOS Sierra 10.12**
* **OS X El Capitan 10.11**

---

## 📦 Downloads & Releases

Pre-compiled production binaries for all operating systems are automatically generated and published with every release:

| Platform | Download Asset | Description |
| :--- | :--- | :--- |
| 🍏 **macOS** | [`RapidEFI-macOS-Universal.zip`](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest) | Universal Application Bundle (Apple Silicon ARM64 + Intel x86_64) |
| 🪟 **Windows** | [`RapidEFI-Windows-x64.zip`](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest) | 64-bit Windows Bundle (with integrated Visual C++ Runtime libraries) |
| 🐧 **Linux** | [`RapidEFI-Linux-x64.tar.gz`](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest) | Portable Linux x64 Release Bundle |
| 🤖 **Android** | [`RapidEFI-Android.apk`](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest) | Standalone APK for Android Smartphones and Tablets |
| 📱 **iOS** | [`RapidEFI-iOS.ipa`](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest) | iOS Application Package (IPA) for Sideloading / AltStore / TrollStore |
| 🔐 **Checksums** | [`SHA256SUMS.txt`](https://github.com/alebypegasus/RapidEFI-Tool/releases/latest) | SHA-256 verification sums for all release assets |

---

## 🛠️ Building From Source

### Prerequisites
* [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.24.0 or newer)
* [Dart SDK](https://dart.dev/get-dart) (3.5.0 or newer)
* Platform build toolchain:
  * **macOS / iOS**: Xcode 15+ and Command Line Tools
  * **Windows**: Visual Studio 2022 with "Desktop development with C++"
  * **Linux**: `clang`, `cmake`, `ninja-build`, `pkg-config`, `libgtk-3-dev`, `liblzma-dev`
  * **Android**: Android SDK (API 34+) and OpenJDK 17

### 1. Clone the Repository
```bash
git clone https://github.com/alebypegasus/RapidEFI-Tool.git
cd RapidEFI-Tool
```

### 2. Fetch Dependencies & Run Tests
```bash
flutter pub get
dart analyze
flutter test
```

### 3. Run Locally on Your Device
```bash
# macOS Desktop
flutter run -d macos

# Windows Desktop
flutter run -d windows

# Linux Desktop
flutter run -d linux

# Android Device / Emulator
flutter run -d android

# iOS Simulator / Connected Device
flutter run -d ios
```

### 4. Build Release Packages
```bash
# macOS Universal Release
flutter build macos --release

# Windows x64 Release
flutter build windows --release

# Linux x64 Release
flutter build linux --release

# Android APK
flutter build apk --release

# iOS (No Codesign IPA)
flutter build ios --release --no-codesign
```

---

## 🔄 CI/CD & Automated Releases

RapidEFI features a fully automated GitHub Actions workflow (`.github/workflows/build_and_release.yml`):
* Compiles release binaries simultaneously across macOS, Windows, Linux, Android, and iOS runners.
* Computes cryptographic `SHA256` checksums for every artifact.
* Automatically drafts and publishes GitHub releases when tags (e.g. `v5.2.0`) are pushed or triggered manually via `workflow_dispatch`.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!
1. Fork the repository on GitHub: [`alebypegasus/RapidEFI-Tool`](https://github.com/alebypegasus/RapidEFI-Tool).
2. Create your feature branch (`git checkout -b feature/awesome-feature`).
3. Commit your changes (`git commit -m 'Add awesome feature'`).
4. Push to the branch (`git push origin feature/awesome-feature`).
5. Open a Pull Request.

---

## 📜 License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for full details.

---

## 🙏 Acknowledgements

* [Acidanthera](https://github.com/acidanthera) - Creators of OpenCorePkg, Lilu, VirtualSMC, AppleALC, WhateverGreen, and core Hackintosh kexts.
* [Dortania](https://github.com/dortania) - OpenCore Install Guide and OpenCore Legacy Patcher (OCLP).
* [CorpNewt](https://github.com/CorpNewt) - ACPI tools and SSDT creation guides.
* [RehabMan](https://github.com/RehabMan) - Foundational ACPI patching techniques and iASL tools.
* [zxystd](https://github.com/zxystd) - OpenIntelWireless project (AirportItlwm / itlwm / IntelBluetoothFirmware).
* [ChefKissInc](https://github.com/ChefKissInc) - NootedRed and NootRX graphics drivers.
