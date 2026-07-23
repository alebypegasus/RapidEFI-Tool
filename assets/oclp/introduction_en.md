# OpenCore Legacy Patcher (OCLP-X)
![OpenCore Patcher Logo](images/OC-Patcher.png)

---

## What is OCLP?

**OpenCore Legacy Patcher (OCLP)** is a Python project built around [Acidanthera's OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) and [Lilu](https://github.com/acidanthera/Lilu), designed to run and unlock features of modern macOS releases on unsupported Mac models and Hackintosh hardware.

### Original Purpose
- Provide root patches for older Macs dropped by Apple, allowing installation of macOS Big Sur, Monterey, Ventura, Sonoma, Sequoia, and Tahoe 26.
- Provide kexts and patches for graphics acceleration (Metal & non-Metal), Wi-Fi, Bluetooth, and power management.

### Hackintosh Support
- Drivers and root patches for legacy GPUs.
- Broadcom, Intel, and Atheros Wi-Fi & Bluetooth patching.
- Restoration of `AppleHDA.kext` audio driver for macOS Tahoe 26.

---

## Features of OCLP-X Modified Version (by JeoJay)

- **Enhanced Intel Wi-Fi Support** on macOS Sequoia & Tahoe 26.
- **Extended Atheros and Legacy Broadcom Wi-Fi Support**.
- **AppleHDA Audio Restoration** for macOS Tahoe 26.
- **Native OTA System Updates**.
- **Full SIP (System Integrity Protection) & FileVault 2 Compatibility**.
