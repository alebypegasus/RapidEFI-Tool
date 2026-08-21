import '../../models/enums/enum_meta.dart';
import '../../models/enums/enum_codec.dart';

enum MotherboardVendor {
  intel,
  amd,
}

enum SpecialMotherboard {
  // Common
  none(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: '',
    ),
  ),

  amdNormal(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      title: 'Standard Motherboard',
    ),
  ),
  amdB550A520(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      title: 'B850, B650, B550 and A520 motherboards, 550 series laptops',
    ),
  ),
  amdTrx40(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      title: 'TRx40 Motherboard',
    ),
  ),
  amdX570(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      title: 'X570 Motherboard',
    ),
  ),
  amdX470B450(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      title: 'X470 or B450 motherboards with late 2020+ BIOS',
    ),
  ),

  intelS6(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: '6-series Chipset',
      description: 'Check when pairing Intel 3rd Gen CPU with 6-series chipset (e.g., H61, HM65)',
    ),
  ),
  intelS7(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: '7-series Chipset',
      description: 'Check when pairing Intel 2nd Gen CPU with 7-series chipset (e.g., B75, HM76)',
    ),
  ),
  intelOem(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: 'H110, B150, B250, Q270 etc.',
      description: 'Some OEM boards have USB ownership issues: EHCI Hand-off failure',
    ),
  ),
  intelZ390(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: 'Z390',
    ),
  ),
  intelB460(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: 'B460',
    ),
  ),
  intelZ490(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: 'Z490 (2020+ BIOS update)',
    ),
  ),
  intelZ590(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      title: 'Z590',
    ),
  );

  const SpecialMotherboard({
    required this.vendor,
    required this.text,
  });

  final MotherboardVendor vendor;
  final EnumText text;

  String get value {
    if (text.description.isEmpty) {
      return text.title;
    }
    return '${text.title}(${text.description})';
  }

  static List<SpecialMotherboard> byVendor(MotherboardVendor vendor) {
    return values.where((item) => item.vendor == vendor).toList();
  }

  static List<SpecialMotherboard> get intelValues {
    return byVendor(MotherboardVendor.intel);
  }

  static List<SpecialMotherboard> get amdValues {
    return byVendor(MotherboardVendor.amd);
  }

  static SpecialMotherboard fromJson(Object? raw) {
    return EnumCodec.decode(
      raw,
      values,
      fallback: SpecialMotherboard.none,
      ignoreCase: true,
      aliases: {
        'AMDMLB.nomal': SpecialMotherboard.amdNormal,
        'AMDMLB.normal': SpecialMotherboard.amdNormal,
        'nomal': SpecialMotherboard.amdNormal,
        'normal': SpecialMotherboard.amdNormal,
        'Standard Motherboard': SpecialMotherboard.amdNormal,
        'AMDMLB.b550AndA520': SpecialMotherboard.amdB550A520,
        'b550AndA520': SpecialMotherboard.amdB550A520,
        'B850, B650, B550 and A520 motherboards, 550 series laptops':
            SpecialMotherboard.amdB550A520,
        'AMDMLB.trx40': SpecialMotherboard.amdTrx40,
        'trx40': SpecialMotherboard.amdTrx40,
        'TRx40 Motherboard': SpecialMotherboard.amdTrx40,
        'AMDMLB.x570': SpecialMotherboard.amdX570,
        'x570': SpecialMotherboard.amdX570,
        'X570 Motherboard': SpecialMotherboard.amdX570,
        'AMDMLB.x470': SpecialMotherboard.amdX470B450,
        'x470': SpecialMotherboard.amdX470B450,
        'X470 or B450 motherboards with late 2020+ BIOS':
            SpecialMotherboard.amdX470B450,
        'SpecialMainBoard.nil': SpecialMotherboard.none,
        'nil': SpecialMotherboard.none,
        '': SpecialMotherboard.none,
        'SpecialMainBoard.S6': SpecialMotherboard.intelS6,
        'S6': SpecialMotherboard.intelS6,
        '6-series Chipset': SpecialMotherboard.intelS6,
        'SpecialMainBoard.S7': SpecialMotherboard.intelS7,
        'S7': SpecialMotherboard.intelS7,
        '7-series Chipset': SpecialMotherboard.intelS7,
        'SpecialMainBoard.OEM': SpecialMotherboard.intelOem,
        'OEM': SpecialMotherboard.intelOem,
        'H110, B150, B250, Q270 etc.': SpecialMotherboard.intelOem,
        'SpecialMainBoard.Z390': SpecialMotherboard.intelZ390,
        'Z390': SpecialMotherboard.intelZ390,
        'SpecialMainBoard.B460': SpecialMotherboard.intelB460,
        'B460': SpecialMotherboard.intelB460,
        'SpecialMainBoard.Z490': SpecialMotherboard.intelZ490,
        'Z490': SpecialMotherboard.intelZ490,
        'Z490 (2020+ BIOS update)': SpecialMotherboard.intelZ490,
        'SpecialMainBoard.Z590': SpecialMotherboard.intelZ590,
        'Z590': SpecialMotherboard.intelZ590,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
