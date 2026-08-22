# RapidEFI Changelog

## RapidEFI v5.2.0 (Based on OpenCore v1.0.7)

### Important Updates & Bug Fixes

1. **Custom SSDT Deduplication**: Fixed duplicate entries between custom SSDTs and prebuilt SSDTs, automatically pruning ACPI items with matching names to avoid duplicate AML files, config conflicts, or OpenCore loading errors.
2. **Sleep & Wake SSDT Architecture**: Refactored sleep and wake SSDT handling logic. `SSDT-LID`, `SSDT-FixShutdown`, `SSDT-WakeScreen`, and `SSDT-LED` are now uniformly dispatched via `SSDT-SleepHook`, reducing conflicts between `_PTS` and `_WAK` rename patches.
3. **Graphics Detection & Compatibility**: Improved AMD iGPU identification and NootedRed compatibility evaluation, and refined Intel iGPU Codename detection to prevent integrated graphics from being misclassified as discrete or unknown devices.
4. **Backlight Boot Arguments**: Fixed Intel iGPU backlight boot argument selection logic across different macOS versions, automatically handling `-igfxblr` and `-igfxblt` to prevent duplicate or mismatched flags.
5. **Hardware Info & I/O**: Fixed SD card reader identification and display issues, and optimized I/O device rendering on the hardware information page.
6. **ACPI Directory Generation**: Fixed missing ACPI output directory when only custom SSDTs are generated, improving stability of automated EFI and SSDT combined exports.
7. **Windows Runtime Bundling**: Windows release bundle embeds required Microsoft Visual C++ runtime DLLs (`msvcp140.dll`, `vcruntime140.dll`, `vcruntime140_1.dll`), resolving startup failures on PCs without VC++ installed.
8. **macOS Package Optimization**: Fixed macOS release bundle incorrectly following symlinks, significantly reducing archive size while preserving complete application Framework structure.

---

## RapidEFI v5.1.0 (Based on OpenCore v1.0.7)

### New Features

- **Motherboard Database Integration**: Added comprehensive motherboard configuration database (`mbconfs.json`) with 3-level cascading selection (Platform Generation → Brand → Model).
- **Automated Motherboard Section**: Supports applying custom ACPI SSDTs, Kernel Kexts, Kernel Patches, Quirks, DeviceProperties, Misc Boot/Security settings, NVRAM variables, and SMBIOS profiles per motherboard model.
- **Intel Framebuffer Parameters**: Integrated `iigpufb.json` for granular CPU and iGPU Framebuffer selection and auto-injection.
- **Fluent UI Architecture**: Upgraded section cards to Fluent UI ExpanderCard style with clean group selection.

---

## RapidEFI-Pro v5.0.0 (Based on OpenCore v1.0.7)

### New Features

1. **Legacy Platform Support**: Added automated EFI generation for 3rd Gen Intel Core (Ivy Bridge) and older legacy architectures.
2. **Cross-Machine Hardware Import**: Import hardware reports and ACPI dump folders via drag-and-drop to generate customized EFIs on another machine.
3. **Categorized Configuration Sections**: Organized boot arguments, optional kexts, and system quirks with detailed contextual documentation.
4. **Personalized Automated EFI Config**: Fine-tune target macOS version, SMBIOS, ALC Layout ID, Above 4G Decoding, CPU type, platform type, and SSDT profiles before export.
5. **SSDT Toolchain**: Built-in AST analysis engine that selects platform patches, compiles custom SSDTs with `iasl`, and merges them into the EFI.
6. **Incompatible PCI Device Blocking**: Automatic device block SSDT generation and GPU spoof patches.
7. **Intel iGPU Connector Customization**: Customized connector indices, Bus IDs, and pipe types per Framebuffer.
8. **Comprehensive SMBIOS Matrix**: In-depth model compatibility guide covering supported macOS releases and GPU pairings.
9. **Booter Quirks Presets**: Multiple pre-configured presets for resolving Early Boot (EB) halt issues.
10. **Special Hardware Presets**: Added presets for Microsoft Surface devices, HP ACPI patches, and HEDT/Server `SSDT-APIC`.
11. **Hybrid Architecture Scheduler**: Integrated `ctrsmt=full` scheduler parameter for Intel 12th+ Gen Alder Lake / Raptor Lake hybrid cores.

---

## RapidEFI v4.1.0 (Based on OpenCore v1.0.6)

1. Updated to OpenCore v1.0.6 release with synced kexts.
2. Added Discrete GPU configuration section with boot args and driver selections.
3. Added AMD dGPU Spoofing with preset device IDs and custom PCI path input.
4. Added Bluetooth configuration section supporting Broadcom, Intel, and Qualcomm modules.
5. Added UEFI Configuration section to resolve OpenCore boot UI display issues.
6. Added Kernel Power Management disable option for problematic platforms.
7. Added USB WiFi driver options.
8. Updated Intel WiFi drivers with `itlwm.kext` option for macOS Tahoe 26.
9. Updated Broadcom WiFi driver classification supporting legacy BCM4331 and BCM43224.
10. Updated Qualcomm Atheros WiFi drivers supporting macOS Mojave 10.14 through macOS Sequoia 15.
11. Added `apfs_aligned.efi` driver for macOS Tahoe 26.
12. Added display EDID auto-injection for Intel iGPU configurations.
13. Added B150 and B250 OEM special motherboard options.
14. Added macOS Tahoe 26 quick guide.
