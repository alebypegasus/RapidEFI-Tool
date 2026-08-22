import 'package:flutter_test/flutter_test.dart';
import 'package:rapidefi/utils/opencore/efi_validator.dart';

void main() {
  group('EfiValidator Tests', () {
    Map<String, dynamic> createBaseValidConfig() {
      return {
        'ACPI': {
          'Add': [
            {'Path': 'SSDT-PLUG.aml', 'Enabled': true},
            {'Path': 'SSDT-EC-USBX.aml', 'Enabled': true},
          ]
        },
        'Booter': {
          'Quirks': {
            'RebuildAppleMemoryMap': true,
            'EnableWriteUnprotector': false,
          }
        },
        'Kernel': {
          'Add': [
            {'BundlePath': 'Lilu.kext', 'Enabled': true},
            {'BundlePath': 'VirtualSMC.kext', 'Enabled': true},
            {'BundlePath': 'WhateverGreen.kext', 'Enabled': true},
          ],
          'Quirks': {
            'ProvideCurrentCpuInfo': true,
          }
        },
        'NVRAM': {
          'Add': {
            '7C436110-AB2A-4BBB-A880-FE41995C9F82': {
              'boot-args': '-v keepsyms=1 debug=0x100 alcid=11',
            }
          }
        },
        'UEFI': {
          'Drivers': [
            {'Path': 'OpenRuntime.efi', 'Enabled': true},
            {'Path': 'OpenCanopy.efi', 'Enabled': true},
          ]
        }
      };
    }

    test('valid config passes all validation rules', () {
      final config = createBaseValidConfig();
      final report = EfiValidator.validateConfig(config, cpuType: 'Alder Lake');

      expect(report.isValid, isTrue);
      expect(report.errors, isEmpty);
      expect(report.warnings, isEmpty);
    });

    test('detects missing Lilu.kext', () {
      final config = createBaseValidConfig();
      final kernelList = config['Kernel']['Add'] as List<dynamic>;
      kernelList.removeWhere((item) => item['BundlePath'] == 'Lilu.kext');

      final report = EfiValidator.validateConfig(config);
      expect(report.isValid, isFalse);
      expect(report.errors.any((e) => e.title == 'Missing Lilu.kext'), isTrue);
    });

    test('detects missing VirtualSMC.kext', () {
      final config = createBaseValidConfig();
      final kernelList = config['Kernel']['Add'] as List<dynamic>;
      kernelList.removeWhere((item) => item['BundlePath'] == 'VirtualSMC.kext');

      final report = EfiValidator.validateConfig(config);
      expect(report.isValid, isFalse);
      expect(report.errors.any((e) => e.title == 'Missing VirtualSMC.kext'), isTrue);
    });

    test('detects conflict between WhateverGreen and NootedRed', () {
      final config = createBaseValidConfig();
      final kernelList = config['Kernel']['Add'] as List<dynamic>;
      kernelList.add({'BundlePath': 'NootedRed.kext', 'Enabled': true});

      final report = EfiValidator.validateConfig(config);
      expect(report.isValid, isFalse);
      expect(report.errors.any((e) => e.title.contains('WhateverGreen & NootedRed')), isTrue);
    });

    test('detects missing OpenRuntime.efi', () {
      final config = createBaseValidConfig();
      config['UEFI']['Drivers'] = [
        {'Path': 'OpenCanopy.efi', 'Enabled': true},
      ];

      final report = EfiValidator.validateConfig(config);
      expect(report.isValid, isFalse);
      expect(report.errors.any((e) => e.title == 'Missing OpenRuntime.efi'), isTrue);
    });

    test('detects conflicting backlight boot-args', () {
      final config = createBaseValidConfig();
      config['NVRAM']['Add']['7C436110-AB2A-4BBB-A880-FE41995C9F82']['boot-args'] =
          '-v -igfxblr -igfxblt alcid=1';

      final report = EfiValidator.validateConfig(config);
      expect(report.isValid, isFalse);
      expect(report.errors.any((e) => e.title.contains('Conflicting Backlight')), isTrue);
    });

    test('warns when ProvideCurrentCpuInfo is missing on hybrid CPU', () {
      final config = createBaseValidConfig();
      config['Kernel']['Quirks']['ProvideCurrentCpuInfo'] = false;

      final report = EfiValidator.validateConfig(config, cpuType: 'Raptor Lake 13th Gen');
      expect(report.hasWarnings, isTrue);
      expect(report.warnings.any((w) => w.title == 'ProvideCurrentCpuInfo Recommended'), isTrue);
    });

    test('detects duplicate enabled ACPI SSDT entries', () {
      final config = createBaseValidConfig();
      final acpiList = config['ACPI']['Add'] as List<dynamic>;
      acpiList.add({'Path': 'SSDT-PLUG.aml', 'Enabled': true});

      final report = EfiValidator.validateConfig(config);
      expect(report.isValid, isFalse);
      expect(report.errors.any((e) => e.title == 'Duplicate ACPI Entry'), isTrue);
    });
  });
}
