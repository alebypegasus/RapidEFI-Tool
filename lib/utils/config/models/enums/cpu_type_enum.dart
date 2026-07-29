import 'package:rapidefi/l10n/l10n_helper.dart';
import 'enum_meta.dart';
import 'enum_codec.dart';

enum CpuType {
  intel(const EnumText(fallbackTitle: 'Intel')),
  amd(const EnumText(fallbackTitle: 'AMD')),
  unknown(const EnumText(titleId: 5005));

  const CpuType(this.text);

  final EnumText text;

  static CpuType fromJson(Object? raw) {
    return EnumCodec.decode(
      raw,
      values,
      fallback: CpuType.unknown,
      ignoreCase: true,
      aliases: {
        'unkown': CpuType.unknown,
        'CpuType.unkown': CpuType.unknown,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
