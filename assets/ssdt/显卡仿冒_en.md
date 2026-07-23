## GPU Spoofing

- [1. Precise GPU Spoofing](#1-precise-gpu-spoofing)
- [2. Generic GPU Spoofing](#2-generic-gpu-spoofing)

---

### 1. Precise GPU Spoofing

Device spoofing (mainly for AMD discrete GPUs) **does not strictly require DSDT/SSDT tables, but it is highly recommended.** When ACPI tables are provided, the tool checks whether the target PCI path exists and automatically injects PCI bridge devices if required, ensuring a reliable spoof patch.

#### 1.1 Extracting ACPI from Current System to Create Spoof Patch
Summary steps:
[Extract ACPI] -> [Device Patches] -> [SSDT-GPU-SPOOF] -> [Enter ACPI Path] -> [Enter Spoof ID] -> [Execute Patch] -> [Select config.plist] -> [Merge config.plist]

#### 1.2 Using Pre-extracted DSDT/SSDT Tables from Another System
Summary steps:
[Select ACPIs Folder] -> [Device Patches] -> [SSDT-GPU-SPOOF] -> [Enter ACPI Path] -> [Enter Spoof ID] -> [Execute Patch] -> [Select config.plist] -> [Merge config.plist]

---

### 2. Generic GPU Spoofing

This mode does not rely on DSDT/SSDT tables and only requires the GPU ACPI path to create a generic spoof patch.
