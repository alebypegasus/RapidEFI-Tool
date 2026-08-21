# OCLP GPU Acceleration Patching Guide

## Overview

macOS has dropped native graphics drivers across several major updates:
* **macOS 12 Monterey**: Dropped support for Kepler (NVIDIA GeForce 600/700 series).
* **macOS 13 Ventura**: Dropped support for Intel 4th Gen Haswell (HD 4400/4600) and 5th Gen Broadwell (HD 5500/6000), as well as legacy AMD GCN 1-3 GPUs.
* **macOS 14 Sonoma**: Dropped support for Intel 7th Gen Kaby Lake (HD 620/630) and 8th Gen Coffee Lake (UHD 620/630) mobile/desktop variants in certain SMBIOS profiles.

OCLP brings back acceleration for these GPUs via root volume patching.

---

## Supported GPU Architectures

| GPU Architecture | Models / Examples | macOS Support with OCLP |
|---|---|---|
| **Intel HD 3000** | Sandy Bridge (2nd Gen) | macOS 11 Big Sur ~ Sequoia 15 |
| **Intel HD 4000** | Ivy Bridge (3rd Gen) | macOS 12 Monterey ~ Sequoia 15 |
| **Intel HD 4400 / 4600** | Haswell (4th Gen) | macOS 13 Ventura ~ Sequoia 15 |
| **Intel HD 5500 / 6000** | Broadwell (5th Gen) | macOS 13 Ventura ~ Sequoia 15 |
| **Intel HD 520 / 530** | Skylake (6th Gen) | macOS 13 Ventura ~ Sequoia 15 |
| **NVIDIA Kepler** | GTX 650, 660, 760, 770, 780 | macOS 12 Monterey ~ Sequoia 15 |
| **NVIDIA Maxwell / Pascal** | GTX 750Ti, 960, 970, 980, 1060, 1070, 1080 | macOS 11 Big Sur ~ Sequoia 15 (Web Drivers via OCLP) |
| **AMD Legacy GCN 1-3** | HD 7000, R7, R9 200/300 series | macOS 13 Ventura ~ Sequoia 15 |

---

## Pre-requisites Before Patching

1. **Disable SIP (System Integrity Protection)**:
   * In `config.plist` -> `NVRAM` -> `7C436110-AB2A-4BBB-A880-FE41995C9F82` -> `csr-active-config`: set to `03080000` (or `FF0F0000`).
2. **Disable AMFI**:
   * Add `amfi_get_out_of_my_way=0x1` or `amfi=0x80` to `boot-args` (or use `AMFIPass.kext`).
3. **SecureBootModel**:
   * Set `Misc` -> `Security` -> `SecureBootModel` to `Disabled`.

---

## Patching Steps

1. Install and boot into macOS.
2. Download and launch **OpenCore-Patcher.app**.
3. Click **Post-Install Root Patch**.
4. Click **Start Root Patching** and enter your administrator password.
5. Once complete, reboot your computer.
6. Check **About This Mac** to verify graphics acceleration and correct VRAM reporting.
