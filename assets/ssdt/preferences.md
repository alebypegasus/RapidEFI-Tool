# RapidSSDT Compilation & Global Preferences Guide

## ⚙️ Overview

The RapidSSDT Preferences module controls the behavior of the integrated ACPI disassembler, compiler switches, intermediate file handling, and EFI output management.

---

## 🛠️ Configuration Options Breakdown

### 1.1 iASL Execution Mode
* **Built-in (Recommended)**: Utilizes the embedded multiplatform `iasl` compiler bundled within RapidEFI. Works completely offline without needing an active internet connection or external tool downloads.
* **Remote**: Fetches the latest upstream compiler binaries on demand.

### 1.2 iASL ACPI Specification Level
* **Modern iasl (Default)**: Compiles compliant ACPI 6.x / 5.x tables conforming to modern UEFI and macOS OpenCore specifications.
* **Legacy iasl**: Backward-compatibility mode for vintage hardware (macOS 10.6 Snow Leopard and earlier).

### 1.3 Intermediate `.dsl` Source Files
* **Delete Decompiled Files (Yes)**: Automatically cleans up temporary `.dsl` source code after successful binary `.aml` compilation, keeping output folders clean.
* **Preserve Files (No)**: Keeps human-readable `.dsl` files for manual inspection in text editors or MaciASL.

### 1.4 Compiler Error Handling (Force Compilation)
* **Yes (Tolerant)**: Passes `-f` flag to `iasl`, ignoring non-fatal vendor warnings and remarks to guarantee that `.aml` binaries are generated.
* **No (Strict)**: Strict ACPI syntax verification; halts compilation if any warning or error is detected.

### 1.5 Target EFI File Overwrite Policy
* **Yes (Direct Injection)**: Copies generated SSDTs directly to `EFI/OC/ACPI/` and creates an automatic timestamped backup of your original `config.plist` before merging.
* **No (Staging Directory)**: Outputs merged files to a dedicated `ACPIs/Results` folder for manual review.

---

## 🔗 Repository & Documentation

* [RapidEFI GitHub Repository](https://github.com/alebypegasus/RapidEFI-Tool)
* [Releases & Changelog](https://github.com/alebypegasus/RapidEFI-Tool/releases)
