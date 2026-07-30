import 'enum_meta.dart';
import 'enum_codec.dart';

enum CpuType {
  intel(EnumText(fallbackTitle: 'Intel')),
  amd(EnumText(fallbackTitle: 'AMD')),
  unknown(EnumText(titleId: 5005));

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
