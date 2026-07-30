import 'enum_meta.dart';
import 'enum_codec.dart';

enum PlatformType {
  desktop(
    text: EnumText(
      titleId: 5134,
    ),
  ),
  laptop(
    text: EnumText(
      titleId: 5031,
    ),
  ),
  nuc(
    text: EnumText(
      titleId: 5032,
    ),
  ),
  hedt(
    text: EnumText(
      titleId: 5135,
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
    );
  }

  String toJson() => EnumCodec.encode(this);
}
