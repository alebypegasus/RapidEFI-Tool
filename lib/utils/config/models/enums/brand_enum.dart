import 'enum_meta.dart';
import 'enum_codec.dart';

enum Brand {
  none(
    text: EnumText(
      title: '',
    ),
  ),
  asus(
    text: EnumText(
      title: 'ASUS',
    ),
  ),
  gigabyte(
    text: EnumText(
      title: 'GIGABYTE',
    ),
  ),
  asrock(
    text: EnumText(
      title: 'ASRock',
    ),
  ),
  msi(
    text: EnumText(
      title: 'MSI',
    ),
  ),
  dell(
    text: EnumText(
      title: 'Dell',
    ),
  ),
  lenovo(
    text: EnumText(
      title: 'Lenovo',
    ),
  ),
  vaio(
    text: EnumText(
      title: 'VAIO',
    ),
  ),
  hp(
    text: EnumText(
      title: 'HP',
    ),
  ),
  chrome(
    text: EnumText(
      title: 'Chromebook',
    ),
  ),
  microsoft(
    text: EnumText(
      title: 'Microsoft Surface',
    ),
  );

  const Brand({
    required this.text,
  });

  final EnumText text;

  String get value => text.title;

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
        'Brand.vaio': Brand.vaio,
        'Brand.hp': Brand.hp,
        'Brand.chrome': Brand.chrome,
        'Brand.Microsoft': Brand.microsoft,
        'ASUS': Brand.asus,
        'GIGABYTE': Brand.gigabyte,
        'ASRock': Brand.asrock,
        'MSI': Brand.msi,
        'Dell': Brand.dell,
        'Lenovo': Brand.lenovo,
        'VAIO': Brand.vaio,
        'HP': Brand.hp,
        'Chromebook': Brand.chrome,
        'Microsoft Surface': Brand.microsoft,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
