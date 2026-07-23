## OCLP GPU Patching Guide

1. Starting from **macOS Sequoia 15.x**, all 3802-architecture GPUs require [MetallibSupportPkg](https://github.com/dortania/MetallibSupportPkg/releases). Connected to the internet, OCLP handles this automatically.
2. **GPUs requiring Root Volume Patching via OpenCore Legacy Patcher (OCLP)**:
   - **NVIDIA**: Kepler (GTX 600 - 700 series), Tesla (8000 - 300 series).
   - **Intel**: Ivy Bridge (HD 4000), Haswell (HD 4400 / 4600 / Iris 5000), Broadwell (HD 6000), Skylake (HD 500).
   - **AMD**: TeraScale (HD 2000 - 6000), GCN 1-3 (HD 7000 - R9).

---

## OCLP Patching Steps:
1. **Disable SIP & AMFI**:
   - Set `csr-active-config` to `03080000` or `FF0F0000` in `NVRAM -> Add -> 7C436110-AB2A-4BBB-A880-FE41995C9F82`.
   - Add `amfi=0x80` to `boot-args` or use `AMFIPass.kext`.
   - Set `SecureBootModel` to `Disabled` in `Misc -> Security`.
2. Download and install [OpenCore-Patcher](https://github.com/JeoJay127/OCLP-X/releases).
3. Run **Post-Install Root Patch -> Start Root Patching** and reboot.
