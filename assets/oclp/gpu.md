# OCLP GPU Hardware Acceleration Guide

## 📊 Overview

As Apple deprecates older architectures across major macOS releases, native GPU display drivers and Metal frameworks are removed:
* **macOS 12 Monterey**: Removed support for NVIDIA Kepler architecture (GeForce 600/700 series).
* **macOS 13 Ventura**: Removed support for Intel 4th Gen Haswell (HD 4400/4600), Intel 5th Gen Broadwell (HD 5500/6000), Intel 6th Gen Skylake (HD 520/530), and legacy AMD GCN 1-3 graphics.
* **macOS 14 Sonoma / Sequoia 15**: Removed legacy Kaby Lake mobile framebuffer variants on certain SMBIOS definitions.

OpenCore Legacy Patcher (OCLP) re-injects these graphics bundles into the sealed system snapshot, restoring full 2D/3D hardware graphics acceleration, Metal support, and display output.

---

## 🎮 Supported GPU Architectures & Support Matrix

| GPU Family | Architectures / Models | Native Deprecation Version | macOS Range with OCLP |
| :--- | :--- | :--- | :--- |
| **Intel Sandy Bridge (iGPU)** | HD 3000 (2nd Gen Core i3/i5/i7) | macOS 10.14 Mojave | macOS 11 Big Sur ~ Sequoia 15 |
| **Intel Ivy Bridge (iGPU)** | HD 4000 / HD 2500 (3rd Gen Core) | macOS 11 Big Sur | macOS 12 Monterey ~ Sequoia 15 |
| **Intel Haswell (iGPU)** | HD 4400 / HD 4600 / Iris 5100 / Iris Pro 5200 | macOS 12 Monterey | macOS 13 Ventura ~ Sequoia 15 |
| **Intel Broadwell (iGPU)** | HD 5500 / HD 6000 / Iris 6100 / Iris Pro 6200 | macOS 12 Monterey | macOS 13 Ventura ~ Sequoia 15 |
| **Intel Skylake (iGPU)** | HD 515 / 520 / 530 / Iris 540 / Iris 550 / 580 | macOS 12 Monterey | macOS 13 Ventura ~ Sequoia 15 |
| **NVIDIA Kepler (dGPU)** | GeForce GTX 650, 660, 670, 680, 760, 770, 780, Titan | macOS 11 Big Sur | macOS 12 Monterey ~ Sequoia 15 |
| **NVIDIA Maxwell / Pascal** | GTX 750Ti, 960, 970, 980, 1060, 1070, 1080 (Web Drivers) | macOS 10.13 High Sierra | macOS 11 Big Sur ~ Sequoia 15 |
| **AMD Legacy GCN 1-3** | Radeon HD 7850, 7870, 7950, 7970, R7 240/250, R9 280/380 | macOS 12 Monterey | macOS 13 Ventura ~ Sequoia 15 |

---

## ⚙️ OpenCore Prerequisites for GPU Root Patching

To allow OCLP to patch the graphics drivers into macOS, your OpenCore `config.plist` must meet the following requirements:

### 1. NVRAM Boot Arguments (`boot-args`)
Add the following to `NVRAM` -> `Add` -> `7C436110-AB2A-4BBB-A880-FE41995C9F82` -> `boot-args`:
```text
amfi_get_out_of_my_way=0x1 ipc_control_port_options=0
```
*(Alternatively, use `AMFIPass.kext` with `-amfipassbeta` to avoid completely disabling AMFI security).*

### 2. System Integrity Protection (SIP)
Set `csr-active-config` to:
* `03080000` (disables NVRAM, Kexts, and Filesystem protections).

### 3. Security Quirks
In `Misc` -> `Security`:
* `SecureBootModel` = `Disabled`
* `Vault` = `Optional`

---

## 🛠️ Step-by-Step Patching Procedure

1. **Install macOS** using your RapidEFI EFI.
2. Complete the initial macOS Setup Assistant.
3. Download **OpenCore-Patcher.pkg** from the [RapidEFI Releases](https://github.com/alebypegasus/RapidEFI-Tool/releases).
4. Run the installer and launch **OpenCore Legacy Patcher**.
5. Click **Post-Install Root Patch**. The patcher will confirm your graphics card model (e.g. *Intel Haswell Graphics / Kepler*).
6. Click **Start Root Patching** and allow the patcher to download and install the required root framework patches.
7. Reboot the system.
8. Open **About This Mac** or run `system_profiler SPDisplaysDataType` to verify full VRAM recognition and translucent menu bar acceleration.
