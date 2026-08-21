## Device Disabling Guide

- [1. Precision Device Disabling](#1-precision-device-disabling)
- [2. Generic Device Disabling](#2-generic-device-disabling)

### 1. Precision Device Disabling

Providing native DSDT and SSDTs allows RapidSSDT to verify if specific ACPI power methods (`_OFF`, `_PS3`) exist on the target path, ensuring the disabling patch works reliably.

- **Three Disabling Methods** (in order of priority: `_OFF` > `_PS3` > `IOName`):
  - **SSDT-GPU-DISABLE-OFF** (Laptops; Desktops typically lack `_OFF`): Disables discrete GPU at ACPI level, cutting power completely to save battery and lower temperatures.
  - **SSDT-GPU-DISABLE-PS3** (Laptops; Desktops typically lack `_PS3`): Cuts dGPU power in S3 sleep state.
  - **SSDT-GPU-DISABLE-IOName** (All Platforms): Modifies PCIe device ID so macOS fails to load drivers for unsupported GPUs, NVMe drives, or Wi-Fi cards.
  - If a laptop's native ACPI lacks `_OFF` and `_PS3` methods, fall back to the `IOName` method.

#### 1.1 Direct Extraction & Disabling on Current Machine

Workflow: **[Dump ACPI] -> [Device Patches] -> [SSDT-PCI-DISABLE] -> [Enter ACPI Path] -> [Select Method & Device Type] -> [Execute Patch] -> [Select config] -> [Merge config]**

[Dump ACPI]:
<img src="images/dump-win-1.png" width="100%" />

Retrieve ACPI path and select disable method:
<img src="images/GPU-Spoof-2.png" style="zoom:100%;" />
<img src="images/GPU-Disable-1.png" style="zoom:100%;" />

[Select config]:
<img src="images/select-config.png" width="100%" />

[Merge config]:
<img src="images/merge-ssdt-2.png" width="100%" />

#### 1.2 Disabling with Pre-dumped ACPIs

Workflow: **[Select ACPIs] -> [Device Patches] -> [SSDT-PCI-DISABLE] -> [Enter ACPI Path] -> [Select Method & Device Type] -> [Execute Patch] -> [Select config] -> [Merge config]**

<img src="images/select-acpis.png" width="100%" />

### 2. Generic Device Disabling

Creates generic disable patches using only the ACPI path. For generic disabling, `IOName` is strongly recommended.

Workflow: **[Device Patches] -> [SSDT-PCI-DISABLE] -> [Enter ACPI Path] -> [Select Method & Device Type] -> [Execute Patch] -> [Select config] -> [Merge config]**

<img src="images/GPU-Disable-2.png" style="zoom:100%;" />

[Select config]:
<img src="images/select-config.png" width="100%" />

[Merge config]:
<img src="images/merge-ssdt-2.png" width="100%" />
