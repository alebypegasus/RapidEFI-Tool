## 1. macOS Tahoe 26 Installation: Required OpenCore Adjustments

#### Please carefully review the following steps:

1. **Update OpenCore**: It is recommended to update the OpenCore bootloader to version 1.0.7 or newer, while keeping basic kexts (such as Lilu, VirtualSMC, WhateverGreen) updated.

2. **USB Controller Adjustments**: Because macOS Tahoe 26 modified internal USB port definitions, updated USB drivers must be used:
   - **USBInjectAll.kext v1.0**: RapidEFI includes the updated version compatible with macOS Tahoe 26.
   - **USBToolBox.kext v1.2.0**: Compatible with macOS Tahoe 26 alongside your custom `UTBMap.kext`.

3. **AMD Ryzen APU Users**: Disable `NootedRed.kext` and `NootRX.kext` during initial installation. Re-enable them after the system setup is complete.

---

## 2. Platform Compatibility for macOS Tahoe 26

1. **Intel Platforms**:
   - 4th Gen Haswell through 10th Gen Comet Lake.
   - *Note*: Haswell CPUs require a supported AMD dedicated GPU (e.g. RX 460 / RX 550 or higher).

2. **AMD Platforms**:
   - AMD Ryzen 1000 through 9000 series.
   - Ryzen APUs (via `NootedRed.kext`) and supported AMD dedicated GPUs.

---

## 3. Graphics Card Support in macOS Tahoe 26

1. **Intel iGPU**: 6th Gen Skylake (HD630 spoof) through 10th Gen Comet Lake.
2. **AMD dGPU**: RX 460, RX 550, RX 470/480/570/580/590, RX 5500/5600/5700, RX 6600/6800/6900 XT.
3. **NVIDIA GPUs**: Currently unsupported in macOS Tahoe 26.

---

## 4. Wi-Fi and Bluetooth Support in macOS Tahoe 26

1. **Intel Wi-Fi**:
   - **Option 1**: `itlwm.kext` + HeliPort client app.
   - **Option 2**: Apply Wi-Fi root patch via OpenCore Legacy Patcher (OCLP).
2. **Broadcom Wi-Fi**: Requires OCLP root patch.
3. **USB Wi-Fi**: Supported via dedicated USB drivers.

---

## 5. Audio in macOS Tahoe 26

1. **AppleALC.kext**: macOS Tahoe removed native `AppleHDA.kext`. Use OCLP-X to restore `AppleHDA.kext` for native AppleALC audio support.
2. **VoodooHDA.kext**: Universal fallback audio driver for codecs unsupported by AppleALC.
3. **USB Audio**: Works out-of-the-box without extra kexts.
