## GPU Spoofing Guide

- [1. Precision GPU Spoofing](#1-precision-gpu-spoofing)
- [2. Generic GPU Spoofing](#2-generic-gpu-spoofing)

### 1. Precision GPU Spoofing

Spoofing devices (primarily AMD discrete GPUs) does not strictly require dumped DSDT/SSDT tables, but doing so is strongly recommended. With native ACPI tables provided, **RapidSSDT analyzes the ACPI device tree to detect whether bridge devices are needed and injects them automatically to ensure spoofing succeeds.**

#### 1.1 Direct Extraction & Spoofing on Current Machine

Workflow: **[Dump ACPI] -> [Device Patches] -> [SSDT-GPU-SPOOF] -> [Enter ACPI Path] -> [Enter Spoof ID] -> [Execute Patch] -> [Select config] -> [Merge config]**

[Dump ACPI]:
<img src="images/dump-win-1.png" width="100%" />

Retrieve ACPI path (can be copied directly from RapidEFI hardware section):
<img src="images/GPU-Spoof-2.png" style="zoom:100%;" />

RapidSSDT includes a database of common spoofable GPU Device IDs. If your target ID is not listed, you can input it manually:

<img src="images/GPU-Spoof-1.png" style="zoom:100%;" />
<img src="images/GPU-Spoof-3.png" style="zoom:100%;" />

[Select config]:
<img src="images/select-config.png" width="100%" />

[Merge config]:
<img src="images/merge-ssdt-2.png" width="100%" />

#### 1.2 Spoofing with Pre-dumped ACPIs

Workflow: **[Select ACPIs] -> [Device Patches] -> [SSDT-GPU-SPOOF] -> [Enter ACPI Path] -> [Enter Spoof ID] -> [Execute Patch] -> [Select config] -> [Merge config]**

[Select ACPIs]:
<img src="images/select-acpis.png" width="100%" />

### 2. Generic GPU Spoofing

Generic GPU spoofing creates a standard spoof patch without analyzing native ACPI tables, relying solely on the user-provided ACPI device path.

Workflow: **[Device Patches] -> [SSDT-GPU-SPOOF] -> [Enter ACPI Path] -> [Enter Spoof ID] -> [Execute Patch] -> [Select config] -> [Merge config]**

<img src="images/GPU-Spoof-4.png" style="zoom:100%;" />

[Select config]:
<img src="images/select-config.png" width="100%" />

[Merge config]:
<img src="images/merge-ssdt-2.png" width="100%" />
