import 'enum_meta.dart';
import 'enum_codec.dart';

enum CsrSetting {
  none(
    nvramValue: '',
    text: EnumText(
      title: '',
    ),
  ),
  enabled(
    nvramValue: '00000000',
    text: EnumText(
      title: 'Enable SIP: Enhances system security; recommended when OCLP root patching is not required',
    ),
  ),
  partialDisabled(
    nvramValue: '03080000',
    text: EnumText(
      title: 'Disable SIP (Method 1)',
      description: 'Partial SIP disable (03080000), suitable when OCLP root patching for GPU or Wi-Fi is needed on Big Sur+',
    ),
  ),
  fullyDisabled(
    nvramValue: 'FF0F0000',
    text: EnumText(
      title: 'Disable SIP (Method 2)',
      description: 'Full SIP disable (FF0F0000), preferred when OCLP root patching for GPU or Wi-Fi is needed on Big Sur+',
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
