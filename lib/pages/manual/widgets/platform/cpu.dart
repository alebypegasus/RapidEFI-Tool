import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';

import 'package:rapidefi/widgets/button_segment_widget.dart';
import 'package:flutter/material.dart';
import 'package:rapidefi/pages/shared/widgets/tip_switch.dart';
import 'package:rapidefi/utils/config/models/enums/cpu_type_enum.dart';

class CPUWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final CpuType cpuType;
  final bool pentiumOrCeleron;
  final ValueChanged? onPentiumChanged;

  const CPUWidget({
    super.key,
    required this.onChanged,
    this.cpuType = CpuType.intel,
    this.pentiumOrCeleron = false,
    this.onPentiumChanged,
  });

  @override
  State<CPUWidget> createState() => _CPUWidgetState();
}

class _CPUWidgetState extends State<CPUWidget> {
  late CpuType cpuType = widget.cpuType;

  final choices = CpuType.values
      .where((e) => e != CpuType.unknown)
      .map((e) => e.text.title)
      .toList();

  @override
  void didUpdateWidget(covariant CPUWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.cpuType != widget.cpuType) {
      cpuType = widget.cpuType;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return TitleCard(
      title: l10n.cpuSelection,
      content: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ButtonSegmentWidget(
              labels: choices,
              initialSelection: {cpuType.text.title},
              onSelectionChanged: (value) {
                final selectedValue = value.first;

                final selectedCpuType = CpuType.values.firstWhere(
                  (type) => type.text.title == selectedValue,
                  orElse: () => CpuType.intel,
                );

                if (cpuType == selectedCpuType) {
                  return;
                }

                setState(() {
                  cpuType = selectedCpuType;
                });

                widget.onChanged.call(cpuType);
              },
            ),
            const SizedBox(width: 10),
            if (cpuType == CpuType.intel)
              TipSwitch(
                tip: l10n.pentiumCeleronTip,
                title: l10n.pentiumCeleron,
                checked: widget.pentiumOrCeleron,
                onChanged: (value) {
                  widget.onPentiumChanged?.call(value);
                },
              ),
          ],
        ),
      ),
    );
  }

}
