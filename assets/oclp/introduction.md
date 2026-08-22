# OpenCore Legacy Patcher (OCLP-X Integration)

![OpenCore Patcher Logo](images/OC-Patcher.png)

---

## 🌟 What is OpenCore Legacy Patcher (OCLP)?

**OpenCore Legacy Patcher (OCLP)** is an advanced, Python-based utility built around [Acidanthera's OpenCorePkg](https://github.com/acidanthera/OpenCorePkg) and [Lilu](https://github.com/acidanthera/Lilu). It is engineered to enable modern macOS releases (such as macOS Big Sur, Monterey, Ventura, Sonoma, Sequoia, and Tahoe 26) on unsupported Apple Mac hardware as well as non-Apple PC Hackintosh configurations.

---

## 🛠️ Core Capabilities & Mechanisms

### 1. Root Volume Patching (Post-Install)
In modern macOS releases (macOS 11+), Apple transitioned to a cryptographically sealed System Volume (SSV / APFS snapshot). When Apple drops legacy drivers (such as Intel HD Graphics, Kepler GPU, or Broadcom Wi-Fi stacks), OCLP mounts the APFS system snapshot, disables root validation, injects legacy frameworks/kexts/OpenGL/Metal bundles, and re-seals the snapshot with a custom cryptographic hash.

### 2. Dual Use Cases:
* **Legacy Apple Macs**: Extends the lifecycle of Mac models from 2007 through 2017 that were officially discontinued by Apple.
* **Hackintosh Systems**: Provides missing hardware drivers for PCs running newer macOS versions where Apple removed native kexts:
  * **Legacy Intel iGPUs**: Sandy Bridge (HD 3000), Ivy Bridge (HD 4000), Haswell (HD 4400/4600), Broadwell (HD 5500/6000), Skylake (HD 520/530), Kaby Lake (HD 620/630).
  * **Legacy NVIDIA GPUs**: Kepler architecture (GeForce GTX 650, 660, 760, 770, 780, Titan).
  * **Legacy AMD GPUs**: GCN 1-3 (HD 7000, R7, R9 series).
  * **Legacy Wireless**: Broadcom BCM94360 / BCM94352Z / BCM943224 and Qualcomm Atheros AR9285/AR9287.
  * **Legacy Audio**: AppleHDA restoration for AppleALC on macOS Tahoe 26.

---

## 🔗 Downloads & Source Code

* **Latest Release & Downloads**: [RapidEFI & OCLP Releases](https://github.com/alebypegasus/RapidEFI-Tool/releases)
* **GitHub Repository**: [https://github.com/alebypegasus/RapidEFI-Tool](https://github.com/alebypegasus/RapidEFI-Tool)

---

## 📋 OpenCore Configuration Prerequisites

Before running OCLP Root Patching, ensure your `config.plist` is properly configured:

| Configuration Setting | Required Value | Rationale |
| :--- | :--- | :--- |
| **`NVRAM` -> `csr-active-config`** | `03080000` (or `FF0F0000`) | Disables System Integrity Protection (SIP) to permit filesystem modifications |
| **`NVRAM` -> `boot-args`** | `amfi=0x80` or `amfi_get_out_of_my_way=0x1` | Disables Apple Mobile File Integrity (or use `AMFIPass.kext`) |
| **`Misc` -> `Security` -> `SecureBootModel`** | `Disabled` | Allows unsigned kernel extension caching and snapshot loading |
| **`Kernel` -> `Block`** | Block `com.apple.iokit.IOSkywalkFamily` | *(Required on macOS Sonoma / Sequoia for Broadcom Wi-Fi restoration)* |

---

## 🚀 Step-by-Step Root Patching Workflow

1. **Boot into macOS** using your RapidEFI-generated OpenCore configuration.
2. **Download & Launch OpenCore-Patcher.app** from the [Releases page](https://github.com/alebypegasus/RapidEFI-Tool/releases).
3. Click on **Post-Install Root Patch**.
4. The patcher will inspect your system and list available patches (e.g., *Intel Haswell Graphics*, *Legacy Wireless Stack*).
5. Click **Start Root Patching** and enter your administrator password when prompted.
6. Once the patcher finishes rebuilding the kernel cache and APFS snapshot, click **Reboot**.
7. After rebooting, verify that hardware acceleration (Metal, Wi-Fi, Audio) is active in **System Information**.

---

## 🙏 Acknowledgements

* [Dortania](https://github.com/dortania) - Original creators and maintainers of OpenCore Legacy Patcher.
* [Acidanthera](https://github.com/acidanthera) - OpenCorePkg, Lilu, and core driver extensions.
* [zxystd](https://github.com/zxystd) - OpenIntelWireless drivers.
* Apple Inc. - macOS operating system.
