import 'package:flutter_test/flutter_test.dart';
import 'package:rapidefi/utils/hardware/data/gpu_codename_data.dart';
import 'package:rapidefi/utils/hardware/pci_ids_parser.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('IdsParser', () {
    late IdsParser pciParser;
    late IdsParser usbParser;

    setUpAll(() async {
      pciParser = await IdsParser.load('assets/data/pci.ids');
      usbParser = await IdsParser.load('assets/data/usb.ids');
    });

    test('pci.ids is not empty after parsing', () {
      expect(pciParser.vendors, isNotEmpty);
    });

    test('usb.ids is not empty after parsing', () {
      expect(usbParser.vendors, isNotEmpty);
    });

    group('vendor lookup', () {
      test('Intel vendor name', () {
        expect(pciParser.vendorName('8086'), 'Intel Corporation');
      });

      test('AMD vendor name', () {
        expect(pciParser.vendorName('1002'), contains('AMD'));
      });

      test('NVIDIA vendor name', () {
        expect(pciParser.vendorName('10de'), 'NVIDIA Corporation');
      });

      test('Case-insensitive ID lookup', () {
        expect(pciParser.vendorName('10DE'), 'NVIDIA Corporation');
        expect(pciParser.deviceName('1002', '67DF'), contains('Ellesmere'));
        expect(pciParser.deviceName('1002', '67df'), contains('Ellesmere'));
      });

      test('Non-existent vendor returns null', () {
        expect(pciParser.vendorName('0000'), isNull);
      });

      test('USB Intel vendor name', () {
        expect(usbParser.vendorName('8086'), 'Intel Corp.');
      });
    });

    group('device lookup', () {
      test('Intel device name', () {
        expect(pciParser.deviceName('8086', '0007'), '82379AB');
      });

      test('AMD device name', () {
        expect(pciParser.deviceName('1002', '1304'), 'Kaveri');
      });

      test('Non-existent device returns null', () {
        expect(pciParser.deviceName('8086', '0000'), isNull);
      });

      test('Full device ID lookup', () {
        expect(
          pciParser.deviceNameByFullId('PCI\\VEN_10DE&DEV_1B80'),
          contains('GP104'),
        );
      });
    });

    group('GPU Codename extraction', () {
      test('Extract codename from AMD pci.ids', () {
        final name = pciParser.deviceNameByFullId('1002-67DF');
        expect(name, isNotNull);
        expect(IdsParser.extractCodenameFromDeviceName(name!), 'Ellesmere');
      });

      test('Extract codename from pure codename string', () {
        final name = pciParser.deviceNameByFullId('1002-1304');
        expect(name, 'Kaveri');
        expect(IdsParser.extractCodenameFromDeviceName(name!), 'Kaveri');
      });

      test('Extract codename from NVIDIA pci.ids', () {
        final name = pciParser.deviceNameByFullId('10DE-1B80');
        expect(name, isNotNull);
        expect(IdsParser.extractCodenameFromDeviceName(name!), 'GP104');
      });

      test('Extract codename from explicit codename field', () {
        expect(
          IdsParser.extractCodenameFromDeviceName(
            'Volari 8300 (chip: XP10, codename: XG47)',
          ),
          'XG47',
        );
      });

      test('GpuCodenameData uses pci.ids, Intel iGPU handled specially', () async {
        await GpuCodenameData.ensureLoaded();

        expect(GpuCodenameData.lookupCodename('1002-67DF'), 'Ellesmere');
        expect(GpuCodenameData.lookupCodename('1002-1304'), 'Kaveri');
        expect(GpuCodenameData.lookupCodename('10DE-1B80'), 'GP104');
        expect(GpuCodenameData.lookupCodename('8086-9BC5'), 'CometLake-S GT2');
      });
    });

    group('USB device lookup', () {
      test('Intel USB device', () {
        final dev = usbParser.device('8086', '0044');
        expect(dev, isNotNull);
        expect(dev!.name, contains('DRAM'));
      });
    });

    group('Data integrity', () {
      test('pci.ids contains common vendors', () {
        final ids = ['8086', '1002', '10de', '14e4', '1022'];
        for (final id in ids) {
          expect(pciParser.vendorName(id), isNotNull, reason: 'vendor $id');
        }
      });

      test('Intel has multiple device records', () {
        final intel = pciParser.vendors['8086'];
        expect(intel, isNotNull);
        expect(intel!.devices.length, greaterThan(100));
      });
    });
  });
}
