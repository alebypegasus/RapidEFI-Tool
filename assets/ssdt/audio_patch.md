# SSDT-HPET Audio Patch Guide

**Note: This guide is specifically for AppleALC (relying on macOS AppleHDA). It does not apply to VoodooHDA. Please remove VoodooHDA if using AppleALC!**

- [1. Diagnosing Audio IRQ Conflict Issues](#1-diagnosing-audio-irq-conflict-issues)
  - [1.1 macOS Tahoe 26 Audio IRQ Patching](#11-macos-tahoe-26-audio-irq-patching)
  - [1.2 macOS Sequoia 15 and Earlier Audio IRQ Patching](#12-macos-sequoia-15-and-earlier-audio-irq-patching)
- [2. Generating SSDT-HPET Patch](#2-generating-ssdt-hpet-patch)

## 1. Diagnosing Audio IRQ Conflict Issues

On some platforms using AppleALC, even with the correct `layout-id`, IRQ conflict issues may prevent the onboard audio codec from functioning properly. RapidSSDT generates customized SSDT-HPET and IRQ patches to fix this.

### 1.1 macOS Tahoe 26 Audio IRQ Patching
Starting from macOS Tahoe 26 Beta 2, Apple removed the system `AppleHDA.kext`. On macOS Tahoe 26 Beta 2 and above, **you must first install audio patches via OCLP (OpenCore Legacy Patcher)**, then follow the configuration steps below.

### 1.2 macOS Sequoia 15 and Earlier Audio IRQ Patching

**Prerequisite: Ensure an appropriate audio layout ID (e.g. via `alcid=xx` boot arg) is set according to AppleALC documentation.**

##### 1.2.1 Checking with Hackintool

Ensure `AppleALC.kext` is loaded in your EFI. If Hackintool does not show any audio devices, an IRQ conflict is likely present, requiring an SSDT-HPET patch:

<img src="images/hackintool-applehda.png" style="zoom:100%;" />

If Hackintool displays your audio codec, there is no IRQ conflict:

<img src="images/hackintool-applehda-ok.png" style="zoom:100%;" />

##### 1.2.2 Checking via Terminal (Accurate & Recommended)

Run the following command in Terminal:

```bash
sudo kextstat | grep -E "AppleHDA|AppleALC|Lilu"
```

If `AppleALC` is loaded but `AppleHDA` is absent, an IRQ conflict exists and `SSDT-HPET` is required.

<img src="images/terminal-applehda.png" style="zoom:100%;" />

If both `AppleALC` and `AppleHDA` are loaded, no IRQ conflict exists.

<img src="images/terminal-applehda-ok.png" style="zoom:100%;" />

##### 1.2.3 Checking with IORegistryExplorer

Search for `AppleHDA` in IORegistryExplorer. If `AppleHDACodec` is missing, an IRQ conflict is present.

<img src="images/IORegistryExplorer-applehda.png" style="zoom:100%;" />

If `AppleHDACodec` appears, no IRQ conflict exists:

<img src="images/IORegistryExplorer-applehda-ok.png" style="zoom:100%;" />

## 2. Generating SSDT-HPET Patch

### 2.1 Direct Extraction & Patching on Current Machine

Workflow: **[Dump ACPI] -> [Core Patches - Select SSDT-HPET] -> [Execute Patch] -> [Select config] -> [Merge config]**

[Dump ACPI]:
<img src="images/dump-win-1.png" width="100%" />

[Core Patches] -> [SSDT-HPET]:
<img src="images/SSDT-HPET.png" style="zoom:100%;" />

[Select config]:
<img src="images/select-config.png" width="100%" />

[Merge config]:
<img src="images/merge-ssdt-2.png" width="100%" />

### 2.2 Patching Using Pre-dumped ACPIs

Workflow: **[Select ACPIs] -> [Core Patches - Select SSDT-HPET] -> [Execute Patch] -> [Select config] -> [Merge config]**

<img src="images/select-acpis.png" width="100%" />
