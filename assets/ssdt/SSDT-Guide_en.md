## RapidSSDT User Guide

- [1. Supported Bootloaders](#1-supported-bootloaders)
- [2. How to Extract System SSDT and DSDT](#2-how-to-extract-system-ssdt-and-dsdt)
- [3. How to Determine Required SSDTs](#3-how-to-determine-required-ssdts)
- [4. How to Generate SSDT Patches](#4-how-to-generate-ssdt-patches)

---

## 1. Supported Bootloaders

RapidSSDT is designed to output clean, optimized **ACPI / SSDT patches** for modern Hackintosh bootloaders:

- 🟢 **OpenCore** (Recommended)
  - Generated SSDTs can be placed directly into the `EFI/OC/ACPI` folder.
  - Fully follows Dortania guide standards.

- 🟢 **Clover** (Legacy)
  - Compatible with `EFI/CLOVER/ACPI/patched`.

---

## 2. Extracting SSDT and DSDT Tables

##### **Important Note:**
If you change any of the following, you must re-extract and re-patch your ACPI tables:
- BIOS update
- BIOS settings changes
- Hardware or RAM configuration changes

##### 2.1 Extracting on Windows (Recommended)
- Boot Windows directly via native BIOS boot manager (do not boot Windows through OpenCore).
- Open `rapidssdt.exe` and click the **【Dump ACPI】** button.

---

## 3. Determining Which SSDTs You Need

RapidSSDT automatically lists essential and recommended SSDT patches based on CPU type (Intel or AMD), platform type (Desktop, Laptop, AIO, Server), and CPU generation.
