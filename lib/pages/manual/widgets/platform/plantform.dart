import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/utils/config/models/enums/platform_type_enum.dart';
import 'package:rapidefi/widgets/button_segment_widget.dart';
import 'package:flutter/material.dart';

class PlantformWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final PlatformType platformType;

  const PlantformWidget({
    super.key,
    required this.onChanged,
    this.platformType = PlatformType.desktop,
  });

  @override
  State<PlantformWidget> createState() => _PlantformWidgetState();
}

class _PlantformWidgetState extends State<PlantformWidget> {
  late PlatformType platformType = widget.platformType;

  @override
  void didUpdateWidget(covariant PlantformWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.platformType != widget.platformType) {
      platformType = widget.platformType;
    }
  }

  String _getPlatformLabel(BuildContext context, PlatformType type) {
    final l10n = AppLocalizations.of(context);
    return switch (type) {
      PlatformType.desktop => l10n?.desktop ?? 'Desktop',
      PlatformType.laptop => l10n?.laptop ?? 'Laptop',
      PlatformType.nuc => l10n?.nucMiniPc ?? 'NUC / Mini PC',
      PlatformType.hedt => l10n?.hedtServer ?? 'HEDT / Server',
    };
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final currentLabel = _getPlatformLabel(context, platformType);
    final allLabels = PlatformType.values.map((t) => _getPlatformLabel(context, t)).toList();

    return TitleCard(
      title: l10n?.platformSelection ?? "Platform Selection:",
      content: ButtonSegmentWidget(
        initialSelection: {currentLabel},
        labels: allLabels,
        onSelectionChanged: (value) {
          final selectedLabel = value.first;

          final selectedType = PlatformType.values.firstWhere(
            (type) => _getPlatformLabel(context, type) == selectedLabel,
            orElse: () => PlatformType.desktop,
          );

          if (platformType == selectedType) {
            return;
          }

          setState(() {
            platformType = selectedType;
          });

          widget.onChanged.call(platformType);
        },
      ),
    );
  }
}
