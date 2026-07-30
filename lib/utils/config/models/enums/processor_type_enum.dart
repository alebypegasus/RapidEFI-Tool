import 'enum_meta.dart';
import 'enum_codec.dart';

enum ProcessorType {
  none(
    value: 0,
    text: EnumText(
      titleId: 5144, descId: 5145,
    ),
  ),
  type1537(
    value: 1537,
    text: EnumText(
      fallbackTitle: 'ProcessorType: 1537',
      descId: 5146,
    ),
  ),
  type3841(
    value: 3841,
    text: EnumText(
      fallbackTitle: 'ProcessorType: 3841',
      descId: 5147,
    ),
  ),
  type3842(
    value: 3842,
    text: EnumText(
      fallbackTitle: 'ProcessorType: 3842',
      descId: 5148,
    ),
  );

  const ProcessorType({
    required this.value,
    required this.text,
  });

  final int value;
  final EnumText text;

  static ProcessorType fromJson(Object? raw) {
    return EnumCodec.decode(
      raw,
      values,
      fallback: ProcessorType.none,
      ignoreCase: true,
      aliases: {
        'nil': ProcessorType.none,
        'ProcessorType.nil': ProcessorType.none,
        'Type1537': ProcessorType.type1537,
        'ProcessorType.Type1537': ProcessorType.type1537,
        'Type3841': ProcessorType.type3841,
        'ProcessorType.Type3841': ProcessorType.type3841,
        'Type3842': ProcessorType.type3842,
        'ProcessorType.Type3842': ProcessorType.type3842,
      },
    );
  }

  String toJson() => EnumCodec.encode(this);
}
