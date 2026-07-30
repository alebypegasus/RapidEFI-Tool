import 'enum_meta.dart';
import 'enum_codec.dart';

enum CsrSetting {
  none(
    nvramValue: '',
    text: EnumText(
      fallbackTitle: '',
    ),
  ),
  enabled(
    nvramValue: '00000000',
    text: EnumText(
      titleId: 5136,
    ),
  ),
  partialDisabled(
    nvramValue: '03080000',
    text: EnumText(
      titleId: 5137, descId: 5138,
    ),
  ),
  fullyDisabled(
    nvramValue: 'FF0F0000',
    text: EnumText(
      titleId: 5139, descId: 5140,
    ),
  );

  const CsrSetting({
    required this.nvramValue,
    required this.text,
  });

  final String nvramValue;
  final EnumText text;

  String get value {
    if (this == CsrSetting.none) return '';

    if (text.description.isEmpty) {
      return text.title;
    }

    if (text.description.isEmpty) {
      return text.title;
    }

    return '${text.title}(${text.description})';
  }

  bool get needsAmfiBypass {
    return this == CsrSetting.partialDisabled ||
        this == CsrSetting.fullyDisabled;
  }

  static CsrSetting fromJson(Object? raw) {
    return EnumCodec.decode(
      raw,
      values,
      fallback: CsrSetting.none,
      ignoreCase: true,
      aliases: {
        'CsrSetting.none': CsrSetting.none,
        'CSRSETTING.nil': CsrSetting.none,
        'nil': CsrSetting.none,
        'CsrSetting.enabled': CsrSetting.enabled,
        'CSRSETTING.CSR00000000': CsrSetting.enabled,
        'CSR00000000': CsrSetting.enabled,
        'CsrSetting.partialDisabled': CsrSetting.partialDisabled,
        'CSRSETTING.CSR03080000': CsrSetting.partialDisabled,
        'CSR03080000': CsrSetting.partialDisabled,
        'CsrSetting.fullyDisabled': CsrSetting.fullyDisabled,
        'CSRSETTING.CSRFF0F0000': CsrSetting.fullyDisabled,
        'CSRFF0F0000': CsrSetting.fullyDisabled,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
