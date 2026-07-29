import 'package:rapidefi/l10n/l10n_helper.dart';
import 'enum_meta.dart';
import 'enum_codec.dart';

enum PlatformType {
  desktop(
    text: const EnumText(
      titleId: 5134,
    ),
  ),
  laptop(
    text: const EnumText(
      titleId: 5031,
    ),
  ),
  nuc(
    text: const EnumText(
      titleId: 5032,
    ),
  ),
  hedt(
    text: const EnumText(
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
