import 'package:rapidefi/l10n/l10n_helper.dart';
import 'enum_meta.dart';
import 'enum_codec.dart';

enum UIScale {
  scale00(
    nvramValue: '00',
    text: const EnumText(
      fallbackTitle: '',
      descId: 5141,
    ),
  ),
  scale01(
    nvramValue: '01',
    text: const EnumText(
      fallbackTitle: '',
      descId: 5142,
    ),
  ),
  scale02(
    nvramValue: '02',
    text: const EnumText(
      fallbackTitle: '',
      descId: 5143,
    ),
  );

  const UIScale({
    required this.nvramValue,
    required this.text,
  });

  final String nvramValue;
  final EnumText text;

  static UIScale fromJson(Object? raw) {
    return EnumCodec.decode(
      raw,
      values,
      fallback: UIScale.scale00,
      ignoreCase: true,
      aliases: {
        '0': UIScale.scale00,
        '00': UIScale.scale00,
        'UIScale00': UIScale.scale00,
        '1': UIScale.scale01,
        '01': UIScale.scale01,
        'UIScale01': UIScale.scale01,
        'UIScale.scale01': UIScale.scale01,
        '2': UIScale.scale02,
        '02': UIScale.scale02,
        'UIScale02': UIScale.scale02,
        'UIScale.scale02': UIScale.scale02,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
