import 'package:rapidefi/l10n/l10n_helper.dart';
import '../../models/enums/enum_meta.dart';
import '../../models/enums/enum_codec.dart';

enum MotherboardVendor {
  intel,
  amd,
}

enum SpecialMotherboard {
  // 通用
  none(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      fallbackTitle: '',
    ),
  ),

  amdNormal(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      titleId: 5159,
    ),
  ),
  amdB550A520(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      titleId: 5160,
    ),
  ),
  amdTrx40(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      titleId: 5161,
    ),
  ),
  amdX570(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      titleId: 5162,
    ),
  ),
  amdX470B450(
    vendor: MotherboardVendor.amd,
    text: EnumText(
      titleId: 5163,
    ),
  ),

  intelS6(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      titleId: 5164, descId: 5165,
    ),
  ),
  intelS7(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      titleId: 5166, descId: 5167,
    ),
  ),
  intelOem(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      titleId: 5168, descId: 5169,
    ),
  ),
  intelZ390(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      fallbackTitle: 'Z390',
    ),
  ),
  intelB460(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      fallbackTitle: 'B460',
    ),
  ),
  intelZ490(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      titleId: 5170,
    ),
  ),
  intelZ590(
    vendor: MotherboardVendor.intel,
    text: EnumText(
      fallbackTitle: 'Z590',
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
        l10nGlobal.autoGen5159: SpecialMotherboard.amdNormal,
        'AMDMLB.b550AndA520': SpecialMotherboard.amdB550A520,
        'b550AndA520': SpecialMotherboard.amdB550A520,
        l10nGlobal.autoGen5160: SpecialMotherboard.amdB550A520,
        'AMDMLB.trx40': SpecialMotherboard.amdTrx40,
        'trx40': SpecialMotherboard.amdTrx40,
        l10nGlobal.autoGen5161: SpecialMotherboard.amdTrx40,
        'AMDMLB.x570': SpecialMotherboard.amdX570,
        'x570': SpecialMotherboard.amdX570,
        l10nGlobal.autoGen5162: SpecialMotherboard.amdX570,
        'AMDMLB.x470': SpecialMotherboard.amdX470B450,
        'x470': SpecialMotherboard.amdX470B450,
        l10nGlobal.autoGen5163: SpecialMotherboard.amdX470B450,
        'SpecialMainBoard.nil': SpecialMotherboard.none,
        'nil': SpecialMotherboard.none,
        '': SpecialMotherboard.none,
        'SpecialMainBoard.S6': SpecialMotherboard.intelS6,
        'S6': SpecialMotherboard.intelS6,
        l10nGlobal.autoGen5171:
            SpecialMotherboard.intelS6,
        'SpecialMainBoard.S7': SpecialMotherboard.intelS7,
        'S7': SpecialMotherboard.intelS7,
        l10nGlobal.autoGen5172:
            SpecialMotherboard.intelS7,
        'SpecialMainBoard.OEM': SpecialMotherboard.intelOem,
        'OEM': SpecialMotherboard.intelOem,
        l10nGlobal.autoGen5173:
            SpecialMotherboard.intelOem,
        'SpecialMainBoard.Z390': SpecialMotherboard.intelZ390,
        'Z390': SpecialMotherboard.intelZ390,
        'SpecialMainBoard.B460': SpecialMotherboard.intelB460,
        'B460': SpecialMotherboard.intelB460,
        'SpecialMainBoard.Z490': SpecialMotherboard.intelZ490,
        'Z490': SpecialMotherboard.intelZ490,
        l10nGlobal.autoGen5170: SpecialMotherboard.intelZ490,
        'SpecialMainBoard.Z590': SpecialMotherboard.intelZ590,
        'Z590': SpecialMotherboard.intelZ590,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
