## Platform Patches

To quickly determine required SSDTs, RapidSSDT provides platform profiles that automatically list all necessary SSDTs (Core and Recommended) for the chosen hardware.

Platform patches are determined by CPU vendor (Intel or AMD), form factor (Desktop, Laptop, Mini PC, Server), and generation based on Dortania's official guide: [https://dortania.github.io/Getting-Started-With-ACPI/ssdt-platform.html#desktop](https://dortania.github.io/Getting-Started-With-ACPI/ssdt-platform.html#desktop)

### 1. Using Local Native ACPIs

[Dump ACPI]:
<img src="images/dump-win-1.png" width="100%" />

### 2. Using Pre-dumped ACPIs

[Select ACPIs]:
<img src="images/select-acpis.png" width="100%" />

**RapidSSDT Platform Patch Description:**
- **[Core (Official Recommended)]**: Mandatory selection, cannot be deselected.
- **[Recommended (Fixes)]**: Recommended fixes; selectable based on configuration.
- **[Optional (Enhancements)]**: Optional enhancements; selectable based on configuration.
- **[Select All]**: Selects all SSDTs. Unchecking restores Core selection only.
- **[Custom SSDT]**: Automatically compiles custom SSDTs based on dumped DSDT/SSDT tables.
- **[Prebuilt SSDT]**: Generates generic SSDTs without analyzing native ACPI tables.

Batch selection example:
<img src="images/platform-ssdt.png" width="100%" />

Click [Custom SSDT] to output compiled SSDTs to `ACPIs/Results` folder:
<img src="images/platform-ssdt-1.png" width="100%" />
<img src="images/platform-ssdt-2.png" width="100%" />

### 3. Merging SSDTs and Patches into EFI

Target EFI before merge:
<img src="images/merge-ssdt-1.png" width="100%" />

[Select config] (Select target `config.plist`):
<img src="images/select-config.png" width="100%" />

[Merge config]:
<img src="images/merge-ssdt-2.png" width="100%" />

Merged EFI ACPI entries:
<img src="images/merge-ssdt-3.png" width="100%" />

Merged EFI ACPI patches:
<img src="images/merge-ssdt-4.png" width="100%" />
