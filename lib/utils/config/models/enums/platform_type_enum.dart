import 'enum_meta.dart';
import 'enum_codec.dart';

enum PlatformType {
  desktop(
    text: EnumText(
      title: 'Desktop',
    ),
  ),
  laptop(
    text: EnumText(
      title: 'Laptop',
    ),
  ),
  nuc(
    text: EnumText(
      title: 'NUC / Mini PC',
    ),
  ),
  hedt(
    text: EnumText(
      title: 'HEDT / Server',
    ),
  );

  const PlatformType({
    required this.text,
  });

  final EnumText text;

  String get value => text.title;

  static PlatformType fromJson(Object? raw) {
    return EnumCodec.decode(
      raw,
      values,
      fallback: PlatformType.desktop,
      ignoreCase: true,
      aliases: {
        'Desktop': PlatformType.desktop,
        'Laptop': PlatformType.laptop,
        'NUC / Mini PC': PlatformType.nuc,
        'Mini PC': PlatformType.nuc,
        'NUC': PlatformType.nuc,
        'HEDT / Server': PlatformType.hedt,
        'HEDT': PlatformType.hedt,
        'Server': PlatformType.hedt,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
