# RapidEFI Feature Overview

## 1. Hardware Detection & Diagnostics
* Deep inspection of CPU topologies, P/E hybrid core configurations, and instruction sets (SSE4.1, AVX2).
* GPU device and vendor ID resolution with integrated framebuffer patching.
* Audio codec identification and AppleALC layout-id resolver.
* Ethernet and Wi-Fi chipset classification with kext recommendations.

## 2. OpenCore Configuration Engine
* Automated generation of OpenCore `config.plist` files.
* Architecture-specific Quirk presets for Booter, Kernel, ACPI, and UEFI.
* NVRAM boot-args customization and SIP configuration.
* DeviceProperties injection for audio, graphics, and network controllers.

## 3. ACPI / SSDT Generator
* Disassembles DSDT and SSDT tables with built-in iASL compiler.
* Generates tailored ACPI hotpatches:
  * `SSDT-PLUG` / `SSDT-PLUG-ALT`: Processor power management.
  * `SSDT-EC-USBX`: Embedded controller spoofing and USB power properties.
  * `SSDT-AWAC` / `SSDT-RTC0`: Real-time clock and AWAC disabling.
  * `SSDT-HPET`: IRQ 0/8 conflict resolutions.
  * `SSDT-PNLF`: Backlight control for laptops.
  * `SSDT-SBUS-MCHC`: System Management Bus and memory controller fixes.
  * `SSDT-BRG0`: PCI bridge creation for discrete GPUs.
