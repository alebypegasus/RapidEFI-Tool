## Device Disabling

- [1. Precise Device Disabling](#1-precise-device-disabling)
- [2. Generic Device Disabling](#2-generic-device-disabling)

---

### 1. Precise Device Disabling

Disabling unsupported PCIe devices (discrete GPUs, NVMe drives, Wi-Fi cards) **does not strictly require DSDT/SSDT tables, but it is highly recommended.** The tool checks for required ACPI methods (`_OFF`, `_PS3`) before applying the patch.

Method priority: **OFF > PS3 > IOName**

- **SSDT-GPU-DISABLE-OFF** (Laptops): Completely powers off the discrete GPU at the ACPI layer.
- **SSDT-GPU-DISABLE-PS3** (Laptops): Powers off the discrete GPU in S3 sleep state.
- **SSDT-GPU-DISABLE-IOName** (All Platforms): Alters the device ID to prevent driver attachment.

#### 1.1 Extracting ACPI from Current System to Create Disabling Patch
Summary steps:
[Extract ACPI] -> [Device Patches] -> [SSDT-PCI-DISABLE] -> [Enter ACPI Path] -> [Select Method and Device Type] -> [Execute Patch] -> [Select config.plist] -> [Merge config.plist]

#### 1.2 Using Pre-extracted ACPI Tables from Another System
Summary steps:
[Select ACPIs Folder] -> [Device Patches] -> [SSDT-PCI-DISABLE] -> [Enter ACPI Path] -> [Select Method and Device Type] -> [Execute Patch] -> [Select config.plist] -> [Merge config.plist]

---

### 2. Generic Device Disabling

This mode does not require local DSDT/SSDT tables and only requires the ACPI path of the target device. For generic disabling, the **IOName** method is recommended.
