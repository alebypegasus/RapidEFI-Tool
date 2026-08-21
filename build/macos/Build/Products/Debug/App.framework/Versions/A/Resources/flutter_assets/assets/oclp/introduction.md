# OpenCore Legacy Patcher
![OpenCore Patcher Logo](images/OC-Patcher.png)

----------

## What is OCLP?

OpenCore Legacy Patcher (OCLP) is a Python-based project built around [Acidanthera's OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) and [Lilu](https://github.com/acidanthera/Lilu), designed to run modern macOS versions and unlock features on both supported and unsupported Macs. Originally created and maintained by Dortania, it breathes new life into older Macs no longer supported by Apple, enabling 2007 and newer machines to run macOS Big Sur, Monterey, Ventura, Sonoma, and Sequoia.

### Original Purpose (Legacy Apple Macs)

* As Apple phases out support for older hardware across macOS releases, OCLP was created to patch unsupported Macs so they can continue running the latest macOS versions.
* Primarily provides boot patches and kernel extensions (kexts) to resolve graphics drivers, Wi-Fi, and USB device compatibility on legacy Macs.

### Evolution (Hackintosh Systems)

* OCLP's patching system is also widely used by the Hackintosh community for hardware unsupported in newer macOS versions, including:
  * Legacy Intel and AMD GPU driver patches (Metal and non-Metal)
  * Legacy Wi-Fi and Bluetooth adaptations (e.g. Broadcom, Atheros, Intel)
  * USB 1.1 controller patches

Combined with OpenCore's capabilities, OCLP allows both legacy Macs and Hackintosh PCs to run modern macOS releases with stability.

----------

## OpenCore Legacy Patcher Modified Edition

Visit [OpenCore Legacy Patcher Modified by JeoJay](https://github.com/JeoJay127/OCLP-X/releases) to download OpenCore-Patcher.pkg.

----------

## Official OCLP Key Features:

* Supports macOS Big Sur, Monterey, Ventura, Sonoma, and Sequoia
* Native OTA (over-the-air) system update support
* Compatible with Penryn and newer Mac models
* Full support for WPA Wi-Fi and Personal Hotspot for BCM943224 and newer wireless chipsets
* System Integrity Protection (SIP), FileVault 2, .im4m Secure Boot, and Vaulting support
* Recovery OS, Safe Mode, and Single-user Mode booting on non-native OS versions
* Unlocks Sidecar and AirPlay to Mac on unsupported hardware
* Enhanced SATA and NVMe power management on third-party drives
* Graphics acceleration for Metal and non-Metal GPUs

----------

## Modified Edition Features:

* **Enhanced Intel Wi-Fi support on macOS Sequoia**
* **Added support for Atheros Wi-Fi and select legacy Broadcom Wi-Fi device IDs**
* **Added AppleHDA audio layout support (for AppleALC) on macOS Tahoe 26 Beta 2+**

----------

## Running from Source

To build and run from source, refer to: [Building and Running from Source](https://github.com/JeoJay127/OCLP-X/blob/main/SOURCE.md)

## Acknowledgements

* [Dortania](https://github.com/dortania) - Original creator and maintainer of OpenCore Legacy Patcher
* [Acidanthera](https://github.com/Acidanthera) - Creators of OpenCorePkg and core kernel extensions
* [zxystd](https://github.com/zxystd) - Developer of Intel Wi-Fi kexts for macOS
* Apple - macOS operating system and frameworks
