# Changelog

All notable changes to **RapidEFI-Tool** are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

---

## [5.3.0] - 2026-08-22

### 🚀 Added & Enhanced
* **Multiplatform Automation & Releases**:
  - Full CI/CD GitHub Actions workflow building and packaging releases for **macOS Universal**, **Windows x64**, **Linux x64**, **Android APK**, and **iOS IPA**.
  - Automated SHA-256 cryptographic checksum generation for all release assets.
  - Option to prune older releases during automated publish runs.
* **Responsive Multi-Device Layouts**:
  - Replaced all hardcoded element sizes, rigid widths/heights, and fixed font dimensions across the entire application with dynamic, scalable typography and adaptive layouts.
  - `ButtonSegmentWidget`: Automatically wraps multi-item controls (e.g. `Desktop | Laptop | NUC | HEDT`) into a clean `2x2` grid on screens `< 450px`, preventing text clipping.
  - `PersonalizedEfiDialog`: Automatically transforms from a fixed dual-column 900px dialog into a fluid single-column scrollable layout on mobile devices.
  - `EfiBuildProgressDialog`: Proportional `BoxConstraints` scaling smoothly to fit any screen size.
  - `HistoryPage`: Dynamic column calculation adapting history cards evenly across screen widths.
  - `HardwareToolbar` & `HardwareStatusBar`: Responsive `Wrap` layouts eliminating horizontal render overflows.
  - `ChooseFileWidget` & `OutputWidget`: Stacked vertical layout on compact screens and inline layout on desktop.
* **Mobile Navigation Experience**:
  - Clean native mobile navigation shell on Android and iOS.
  - Tappable App Icon in top-left corner on mobile navigating directly to Settings and back.
  - Removed duplicate tabs, top bar title collision, and redundant top dark-mode toggle.
* **macOS Tahoe 26 Compatibility**:
  - Comprehensive kernel quirk configurations, AMFIPass integration, and AppleALC audio layout support for macOS Tahoe 26.
* **Documentation Overhaul**:
  - Enriched, comprehensive documentation across all `.md` files (`README.md`, `CHANGELOG.md`, `SSDT-Guide.md`, `platform_patch.md`, `audio_patch.md`, `gpu_spoof.md`, `disable_devices.md`, `brightness_patch.md`, `tahoe.md`, `introduction.md`, `gpu.md`, `wifi.md`).
  - Updated all repository and update URLs to `https://github.com/alebypegasus/RapidEFI-Tool`.

---

## [5.1.0] - 2026-08-20

### 🚀 Added
* Automated PCI ID database parser with real-time hardware name resolution.
* SSDT-BRG0 bridge generator for unpopulated ACPI bridges on modern motherboards.
* macOS Sequoia 15.x Wi-Fi compatibility layer (AirportItlwm + IOSkywalkFamily blocking).
* Cascading motherboard quirk injection engine.

### 🛠️ Fixed
* Fixed kext dependency ordering issues between `Lilu`, `VirtualSMC`, and `WhateverGreen`.
* Fixed audio layout ID dropdown resetting upon SMBIOS change.

---

## [5.0.0] - 2026-08-15

### 🌟 Major Release
* Rebuilt user interface in modern Flutter with FluentUI design system.
* Cross-platform desktop support for Windows, Linux, and macOS.
* Integrated iASL compiler for offline SSDT compilation and disassembly.
* OpenCore 1.0.x schema verification and validation engine.
