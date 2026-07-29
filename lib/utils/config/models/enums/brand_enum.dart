import 'package:rapidefi/l10n/l10n_helper.dart';
import 'enum_meta.dart';
import 'enum_codec.dart';

enum Brand {
  none(
    text: const EnumText(
      fallbackTitle: '',
    ),
  ),
  asus(
    text: const EnumText(
      titleId: 5020,
      fallbackDesc: 'ASUS',
    ),
  ),
  gigabyte(
    text: const EnumText(
      titleId: 5021,
      fallbackDesc: 'GIGABYTE',
    ),
  ),
  asrock(
    text: const EnumText(
      titleId: 5022,
      fallbackDesc: 'ASRock',
    ),
  ),
  msi(
    text: const EnumText(
      titleId: 5023,
      fallbackDesc: 'MSI',
    ),
  ),
  dell(
    text: const EnumText(
      titleId: 5024,
      fallbackDesc: 'Dell',
    ),
  ),
  lenovo(
    text: const EnumText(
      titleId: 5025,
      fallbackDesc: 'Lenovo',
    ),
  ),
  vaio(
    text: const EnumText(
      titleId: 5026,
      fallbackDesc: 'VAIO',
    ),
  ),
  hp(
    text: const EnumText(
      titleId: 5027,
      fallbackDesc: 'HP',
    ),
  ),
  chrome(
    text: const EnumText(
      titleId: 5028,
      fallbackDesc: 'Chromebook',
    ),
  ),
  microsoft(
    text: const EnumText(
      titleId: 5029,
      fallbackDesc: 'Microsoft Surface',
    ),
  );

  const Brand({
    required this.text,
  });

  final EnumText text;

  String get value {
    if (text.title.isEmpty) return '';
    if (text.description.isEmpty) return text.title;
    return '${text.title}(${text.description})';
  }

  static Brand fromJson(Object? raw) {
    return EnumCodec.decode(
      raw,
      values,
      fallback: Brand.none,
      ignoreCase: true,
      aliases: {
        'nil': Brand.none,
        'Brand.nil': Brand.none,
        'none': Brand.none,
        'Brand.none': Brand.none,
        'Brand.asus': Brand.asus,
        'Brand.Gigabyte': Brand.gigabyte,
        'Gigabyte': Brand.gigabyte,
        'Brand.AsRock': Brand.asrock,
        'AsRock': Brand.asrock,
        'Brand.msi': Brand.msi,
        'Brand.dell': Brand.dell,
        'Brand.lenovo': Brand.lenovo,
        'Lenovo': Brand.lenovo,
        'Brand.vaio': Brand.vaio,
        'Brand.hp': Brand.hp,
        'Brand.chrome': Brand.chrome,
        'Brand.Microsoft': Brand.microsoft,
        'Microsoft': Brand.microsoft,
        l10nGlobal.autoGen5149: Brand.asus,
        l10nGlobal.autoGen5150: Brand.gigabyte,
        l10nGlobal.autoGen5151: Brand.asrock,
        l10nGlobal.autoGen5152: Brand.msi,
        l10nGlobal.autoGen5153: Brand.dell,
        l10nGlobal.autoGen5154: Brand.lenovo,
        l10nGlobal.autoGen5155: Brand.vaio,
        l10nGlobal.autoGen5156: Brand.hp,
        l10nGlobal.autoGen5157: Brand.chrome,
        l10nGlobal.autoGen5158: Brand.microsoft,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
