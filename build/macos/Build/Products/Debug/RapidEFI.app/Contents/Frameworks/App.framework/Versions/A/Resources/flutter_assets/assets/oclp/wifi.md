# OCLP Wi-Fi & Bluetooth Patching Guide

## Overview

In macOS 14 Sonoma and macOS 15 Sequoia, Apple removed native support for legacy Broadcom and Atheros Wi-Fi chipsets (`IO80211FamilyLegacy.kext`). OCLP restores native Wi-Fi functionality by re-injecting the legacy wireless networking stack into the system root volume.

---

## Supported Wireless Cards

### Broadcom Native Series (AirPort / Fenvi)
* **BCM94360CD / BCM94360CS2 / BCM943602CS / BCM94360Z**
* **Fenvi T919 / FV-HB1200 / FV-T919**
* *Native in Ventura and older; requires OCLP root patches on Sonoma 14 & Sequoia 15.*

### Broadcom Non-Native Series
* **BCM94352Z (DW1560) / BCM94350ZAE (DW1820A)**
* *Requires AirportBrcmFixup + OCLP root patches on Sonoma 14 & Sequoia 15.*

### Intel Wi-Fi
* **Intel Wireless-AC 7265, 8265, 9260, 9560 / Wi-Fi 6 AX200, AX201, AX210**
* *Supported via AirportItlwm.kext or itlwm.kext + HeliPort client.*

### Qualcomm Atheros
* **AR9285, AR9287, AR9380, AR9485, AR9565**
* *Supported via modified OCLP root patches.*

---

## OpenCore Configuration Requirements

1. **Block Modern IO80211 Stack**:
   * Under `Kernel` -> `Block`: Block `com.apple.iokit.IOSkywalkFamily`.
2. **Inject Compatibility Kexts**:
   * `IOSkywalkFamily.kext` (MinimumKernel: 23.0.0)
   * `IO80211FamilyLegacy.kext` (MinimumKernel: 23.0.0)
   * `AirPortBrcmNIC.kext` (inside Plugins)
3. **NVRAM Settings**:
   * `csr-active-config`: `03080000` (SIP disabled)
   * `boot-args`: `amfi=0x80` or `amfi_get_out_of_my_way=0x1`

---

## Post-Install Patching

1. Boot into Sonoma 14 or Sequoia 15.
2. Open **OpenCore-Patcher.app**.
3. Select **Post-Install Root Patch** -> **Start Root Patching**.
4. Enter administrator credentials and reboot upon completion.
