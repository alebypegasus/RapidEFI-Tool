import 'enum_meta.dart';
import 'enum_codec.dart';

enum ProcessorType {
  none(
    value: 0,
    text: EnumText(
      title: 'Do not modify ProcessorType',
      description: 'Keep default CPU type display',
    ),
  ),
  type1537(
    value: 1537,
    text: EnumText(
      title: 'ProcessorType: 1537',
      description: 'Intel & AMD CPU name spoof Method 1 (Usually for CPUs with <= 6 cores)',
    ),
  ),
  type3841(
    value: 3841,
    text: EnumText(
      title: 'ProcessorType: 3841',
      description: 'Intel & AMD CPU name spoof Method 2 (Usually for CPUs with >= 8 cores)',
    ),
  ),
  type3842(
    value: 3842,
    text: EnumText(
      title: 'ProcessorType: 3842',
      description: 'Intel & AMD CPU name spoof Alternative Method (Usually for >= 8-core i7/i9 CPUs)',
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
