# OCLP Wi-Fi & Bluetooth Networking Guide

## 📡 Overview

Starting with **macOS 14 Sonoma** and continuing into **macOS 15 Sequoia** and **macOS Tahoe 26**, Apple completely removed the legacy wireless subsystem (`IO80211FamilyLegacy.kext`), affecting all non-native Broadcom and Atheros Wi-Fi cards that previously functioned out-of-the-box in macOS Ventura.

OpenCore Legacy Patcher (OCLP) restores full Wi-Fi and Bluetooth connectivity (including AirDrop, AirPlay, Continuity, and Hotspot) by re-injecting the legacy 802.11 network subsystem into the APFS root volume.

---

## 📶 Supported Wi-Fi Chipsets & Status

| Manufacturer & Model | Chipset | macOS Sonoma 14+ Status | Required Driver / Method |
| :--- | :--- | :--- | :--- |
| **Broadcom Native (AirPort)** | BCM94360CD, BCM943602CS, BCM94360CS2, BCM94360Z, Fenvi T919, FV-HB1200 | Requires OCLP Root Patch | `IOSkywalkFamily` block + `IO80211FamilyLegacy` injection + OCLP Root Patch |
| **Broadcom Non-Native** | BCM94352Z (DW1560), BCM94350ZAE (DW1820A), BCM943224 | Requires OCLP Root Patch | `AirportBrcmFixup` + `IOSkywalkFamily` block + OCLP Root Patch |
| **Intel Wi-Fi** | AC 7265, 8265, 9260, 9560, Wi-Fi 6 AX200, AX201, AX210, AX211 | Supported via Kext | `AirportItlwm.kext` (native UI) OR `itlwm.kext` + HeliPort client |
| **Qualcomm Atheros** | AR9285, AR9287, AR9380, AR9485, AR9565 | Requires OCLP Root Patch | `AirPortAtheros40` injection + modified OCLP Root Patch |

---

## 🛠️ OpenCore Configuration Guide for Broadcom Wi-Fi

When configuring OpenCore for Broadcom Wi-Fi on macOS Sonoma 14 or Sequoia 15, RapidEFI automatically applies the required entries:

### 1. Kernel -> Block
Block Apple's modern Skywalk family to allow the legacy framework to take priority:
* **Identifier**: `com.apple.iokit.IOSkywalkFamily`
* **Comment**: `Allow legacy Broadcom Wi-Fi`
* **Enabled**: `True`
* **Strategy**: `Exclude`
* **MinKernel**: `23.0.0` (Sonoma+)

### 2. Kernel -> Add
Inject the compatibility kernel extensions in order:
1. `IOSkywalkFamily.kext` (MinKernel: `23.0.0`)
2. `IO80211FamilyLegacy.kext` (MinKernel: `23.0.0`)
3. `IO80211FamilyLegacy.kext/Contents/PlugIns/AirPortBrcmNIC.kext` (MinKernel: `23.0.0`)

### 3. NVRAM Configuration
In `7C436110-AB2A-4BBB-A880-FE41995C9F82`:
* `csr-active-config`: `03080000`
* `boot-args`: `amfi=0x80 ipc_control_port_options=0`

---

## 🚀 Post-Install Root Patching Steps

1. Boot into macOS Sonoma or Sequoia.
2. Launch **OpenCore Legacy Patcher**.
3. Select **Post-Install Root Patch**.
4. The patcher will display **Networking: Modern Wireless** under available patches.
5. Click **Start Root Patching** and authenticate.
6. Once complete, reboot your computer.
7. Wi-Fi status will now appear in the macOS menu bar with active scanning and connection capabilities.
