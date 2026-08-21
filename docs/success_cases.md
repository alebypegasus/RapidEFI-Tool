# RapidEFI Verified Configurations & Success Cases

## Verified Hardware Platforms

### Intel Platforms
* **Intel 14th Gen Core i9-14900K + ASUS Z790 + AMD Radeon RX 6900 XT**
  * macOS Sonoma 14.5 / Sequoia 15.0
  * Full hardware acceleration, CPU power management via `CpuTopologyRebuild.kext`.
* **Intel 10th Gen Core i7-10700 + Gigabyte B460M + UHD 630**
  * macOS Sonoma 14.5
  * Native UHD 630 graphics output via HDMI/DP framebuffer patch.
* **Intel 8th Gen Core i5-8250U + ThinkPad T480 + UHD 620**
  * macOS Sonoma 14.5
  * Battery polling, I2C trackpad gestures, native sleep/wake.

### AMD Platforms
* **AMD Ryzen 7 5700X + MSI B550 + AMD Radeon RX 6800 XT**
  * macOS Sequoia 15.0
  * AMD Vanilla Kernel Patches, audio layout 1 via AppleALC.
* **AMD Ryzen 5 5600G APU + ASUS B450**
  * macOS Monterey 12.7 / Sonoma 14.0
  * NootedRed graphics acceleration with Metal support.
