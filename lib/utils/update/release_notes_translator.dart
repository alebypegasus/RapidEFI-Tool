//  release_notes_translator.dart
//  RapidEFI English Translation Layer
//

class ReleaseNotesTranslator {
  static final RegExp _chineseRegExp = RegExp(r'[\u4e00-\u9fff]');

  /// Translates release notes markdown to English.
  /// If the text does not contain Chinese, it returns the original text.
  static String translate(String? rawBody, {String? tag}) {
    if (rawBody == null || rawBody.trim().isEmpty) {
      return 'No release notes provided.';
    }

    if (!_chineseRegExp.hasMatch(rawBody)) {
      return rawBody;
    }

    // Check specific known release tags first
    final cleanTag = (tag ?? '').replaceAll(RegExp(r'^[vV]'), '').trim();
    if (cleanTag == '5.2.0' || rawBody.contains('v5.2.0') || rawBody.contains('SSDT-SleepHook')) {
      return _v520ReleaseNotes;
    } else if (cleanTag == '5.1.0' || rawBody.contains('iigpufb.json') || rawBody.contains('mbconfs.json')) {
      return _v510ReleaseNotes;
    } else if (cleanTag == '5.0.0' || rawBody.contains('5.0.0')) {
      return _v500ReleaseNotes;
    }

    return _translateGeneric(rawBody);
  }

  static const String _v520ReleaseNotes = '''## Important Updates

1. **Custom SSDT Deduplication**: Fixed duplicate entries between custom SSDTs and prebuilt SSDTs, automatically pruning ACPI items with matching names to avoid duplicate AML files, config conflicts, or OpenCore loading errors.

2. **Sleep & Wake SSDT Architecture**: Refactored sleep and wake SSDT handling logic. `SSDT-LID`, `SSDT-FixShutdown`, `SSDT-WakeScreen`, and `SSDT-LED` are now uniformly dispatched via `SSDT-SleepHook`, reducing conflicts between `_PTS` and `_WAK` rename patches.

3. **Graphics Detection & Compatibility**: Improved AMD iGPU identification and NootedRed compatibility evaluation, and refined Intel iGPU Codename detection to prevent integrated graphics from being misclassified as discrete or unknown devices.

4. **Backlight Boot Arguments**: Fixed Intel iGPU backlight boot argument selection logic across different macOS versions, automatically handling `-igfxblr` and `-igfxblt` to prevent duplicate or mismatched flags.

5. **Hardware Info & I/O**: Fixed SD card reader identification and display issues, and optimized I/O device rendering on the hardware information page.

6. **ACPI Directory Generation**: Fixed missing ACPI output directory when only custom SSDTs are generated, improving stability of automated EFI and SSDT combined exports.

7. **Windows Runtime Bundling**: Windows release bundle now embeds required Microsoft Visual C++ runtime DLLs (`msvcp140.dll`, `vcruntime140.dll`, `vcruntime140_1.dll`), resolving startup failures on PCs without VC++ installed.

8. **macOS Package Optimization**: Fixed macOS release bundle incorrectly following symlinks, significantly reducing archive size while preserving complete application Framework structure.
''';

  static const String _v510ReleaseNotes = '''## RapidEFI v5.1.0 Release Notes

### New Features

- **Motherboard Database Integration**: Added comprehensive motherboard configuration database (`mbconfs.json`) with 3-level cascading selection (Platform Generation → Brand → Model).
- **Automated Motherboard Section**: Supports applying custom ACPI SSDTs, Kernel Kexts, Kernel Patches, Quirks, DeviceProperties, Misc Boot/Security settings, NVRAM variables, and SMBIOS profiles per motherboard model.
- **Intel Framebuffer Parameters**: Integrated `iigpufb.json` for granular CPU and iGPU Framebuffer selection and auto-injection.

### Improvements

- Fluent UI ExpanderCard design language across platform and motherboard configuration cards.
- Refined apply logic to prevent platform presets from overwriting applied motherboard configurations.
''';

  static const String _v500ReleaseNotes = '''## RapidEFI-Pro v5.0.0 (Based on OpenCore v1.0.7)

### New Features

1. Added support and automated EFI generation for 3rd Gen Intel and older legacy platforms.
2. Added Cross-Machine Hardware Info Import: Drag & drop or browse hardware reports and ACPI dump folders to generate EFIs on another computer.
3. Categorized configuration sections: Boot args, optional kexts, and settings are organized with contextual documentation.
4. Personalized automated EFI configuration: Adjust target macOS version, SMBIOS, ALC Layout ID, Above 4G Decoding, CPU type, platform type, and SSDT profile before generating.
5. Built-in SSDT Customization Toolchain: Select platform patches, generate customized SSDTs, and merge them into EFI.
6. Unsupported PCI Device Handling: Generates device block SSDTs and GPU spoof patches.
7. Intel iGPU connector patching: Configures connector indexes, bus IDs, and pipe types.
8. Enhanced SMBIOS settings with macOS compatibility ranges and special hardware notes.
9. Extended Booter Quirks and EB error mitigation presets.
10. Added Microsoft Surface driver/SSDT support and HP ACPI patches.
11. Added `ctrsmt=full` scheduler parameter for hybrid CPU architectures (P/E cores).

### Optimizations

1. Optimized macOS version & SMBIOS synchronization.
2. Improved hardware detection accuracy across CPU, Motherboard, GPU, NIC, Audio, Storage, and Bluetooth.
3. Enhanced OCLP integration for Intel, Broadcom, and Atheros wireless cards.
4. Streamlined EFI export with real-time generation progress and direct folder open button.
''';

  static String _translateGeneric(String text) {
    var result = text;

    final replacements = <Pattern, String>{
      RegExp(r'##\s*重要更新'): '## Important Updates',
      RegExp(r'###\s*新增功能'): '### New Features',
      RegExp(r'###\s*功能优化'): '### Feature Optimizations & Improvements',
      RegExp(r'###\s*技术改动'): '### Technical Changes',
      RegExp(r'###\s*已知问题修复|###\s*修复'): '### Bug Fixes',
      RegExp(r'###\s*其他改进与修复|###\s*其他'): '### Other Improvements',
      RegExp(r'基于OpenCore'): 'Based on OpenCore',
      RegExp(r'重要说明'): 'Important Notice',
      RegExp(r'核显'): 'iGPU',
      RegExp(r'独显'): 'Discrete GPU',
      RegExp(r'主板'): 'Motherboard',
      RegExp(r'声卡'): 'Audio Codec',
      RegExp(r'网卡'): 'Network Adapter',
      RegExp(r'无线网卡'): 'WiFi Adapter',
      RegExp(r'蓝牙'): 'Bluetooth',
      RegExp(r'引导参数'): 'Boot Arguments',
      RegExp(r'驱动'): 'Driver',
      RegExp(r'补丁'): 'Patch',
      RegExp(r'修复'): 'Fixed',
      RegExp(r'新增'): 'Added',
      RegExp(r'优化'): 'Optimized',
      RegExp(r'支持'): 'Supported',
      RegExp(r'更新'): 'Updated',
    };

    for (final entry in replacements.entries) {
      result = result.replaceAll(entry.key, entry.value);
    }

    // If Chinese characters still remain in generic notes, sanitize lines cleanly
    if (_chineseRegExp.hasMatch(result)) {
      final lines = result.split('\n');
      final cleanLines = <String>[];
      for (final line in lines) {
        if (_chineseRegExp.hasMatch(line)) {
          final stripped = line.replaceAll(_chineseRegExp, '').trim();
          if (stripped.isNotEmpty) {
            cleanLines.add(stripped);
          }
        } else {
          cleanLines.add(line);
        }
      }
      result = cleanLines.join('\n');
    }

    return result.trim().isEmpty ? 'Release updates and improvements.' : result;
  }
}
