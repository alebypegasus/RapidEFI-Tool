import 'enum_meta.dart';
import 'enum_codec.dart';

enum UIScale {
  scale00(
    nvramValue: '00',
    text: EnumText(
      title: '',
      description: 'Auto (Adaptive): Automatically adjust OpenCore boot UI scale based on display resolution',
    ),
  ),
  scale01(
    nvramValue: '01',
    text: EnumText(
      title: '',
      description: 'Standard (1x): Suitable for 720p, 1080p, 1440p standard resolution displays',
    ),
  ),
  scale02(
    nvramValue: '02',
    text: EnumText(
      title: '',
      description: 'HiDPI (2x): Suitable for 4K, 5K high-resolution displays (fixes tiny OpenCore UI elements)',
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
