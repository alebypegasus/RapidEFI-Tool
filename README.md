# RapidEFI-Tool

[![Flutter](https://img.shields.io/badge/Flutter-3.x-blue.svg)](https://flutter.dev)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Platform](https://img.shields.io/badge/Platform-macOS%20%7C%20Windows-lightgrey.svg)]()

**RapidEFI-Tool** is a modern, fast, and automated OpenCore EFI generation and ACPI/SSDT patching utility for Hackintosh and macOS enthusiasts.

---

## Features

* **Hardware Auto-Detection**: Scans CPU, GPU, Audio, Network, Storage, Motherboard, and ACPI tables.
* **Config.plist Rule Engine**: Automated preset generation tailored for Intel and AMD hardware across all generations.
* **SSDT Generator & Patcher Engine**: Disassembles DSDT/SSDT tables via iASL and generates optimized SSDTs (`SSDT-PLUG`, `SSDT-EC-USBX`, `SSDT-AWAC`, `SSDT-PNLF`, `SSDT-RHUB`, `SSDT-SBUS-MCHC`, `SSDT-HPET`, `SSDT-BRG0`, etc.).
* **PCI Device Disabling**: Generates custom SSDTs (`_OFF`, `_PS3`, `IOName`) to disable unsupported GPUs and devices cleanly.
* **OCLP Patch Companion**: Integrated guides and settings for OpenCore Legacy Patcher root patching.
* **Modern Flutter UI**: Sleek, high-performance desktop interface with full dark mode and real-time hardware inspection.

---

## Supported Platforms

### Intel
* **Desktop**: LGA775 (Core 2), Nehalem (1st Gen) through Arrow Lake (15th Gen / Core Ultra 200).
* **Laptop**: Arrandale (1st Gen) through Meteor Lake / Raptor Lake.
* **NUC & Mini PC**: 4th Gen Haswell through 13th Gen Raptor Lake.
* **HEDT / Server**: X58, X79, X99, X299, and C602 / C612 / C621 platforms.

### AMD
* **Desktop**: AM3/FM2 (Bulldozer), AM4 (Ryzen 1000-5000), AM5 (Ryzen 7000-9000).
* **Laptop**: AMD Ryzen APUs (Raven Ridge, Renoir, Cezanne, Barcelo, Rembrandt).
* **HEDT / Server**: Threadripper (TRX40, X399) and EPYC platforms.

---

## Getting Started

### Prerequisites
* [Flutter SDK](https://flutter.dev/docs/get-started/install) (3.x or newer)
* [Dart SDK](https://dart.dev/get-dart) (3.x or newer)

### Build and Run
```bash
# Clone the repository
git clone https://github.com/alebypegasus/RapidEFI-Tool.git
cd RapidEFI-Tool

# Install Flutter dependencies
flutter pub get

# Run on macOS desktop
flutter run -d macos
```

---

## License

This project is licensed under the MIT License.
