import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ButtonSegmentWidget extends StatefulWidget {
  const ButtonSegmentWidget({
    super.key,
    required this.labels,
    this.onSelectionChanged,
    this.initialSelection,
    this.segmentHeight = 36,
    this.horizontalPadding = 12,
  });

  final List<String> labels;
  final ValueChanged<Set<String>>? onSelectionChanged;
  final Set<String>? initialSelection;
  final double segmentHeight;
  final double horizontalPadding;

  @override
  State<ButtonSegmentWidget> createState() => _ButtonSegmentWidgetState();
}

class _ButtonSegmentWidgetState extends State<ButtonSegmentWidget> {
  late Set<String> selected;

  @override
  void initState() {
    super.initState();
    selected = widget.initialSelection ?? {widget.labels.first};
  }

  @override
  void didUpdateWidget(covariant ButtonSegmentWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.initialSelection != null &&
        !setEquals(widget.initialSelection, oldWidget.initialSelection)) {
      selected = widget.initialSelection!;
    }
  }


  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDarkMode = theme.brightness == Brightness.dark;
    final themeColor = theme.colorScheme.primary;
    final borderColor = Colors.grey.withAlpha(
      (255.0 * (isDarkMode ? 0.4 : 0.35)).round(),
    );

    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 450;
        final shouldWrapGrid = isCompact && widget.labels.length > 2;

        if (shouldWrapGrid) {
          final itemWidth = (constraints.maxWidth - 8) / 2;
          return Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final label in widget.labels)
                SizedBox(
                  width: itemWidth,
                  height: widget.segmentHeight,
                  child: _buildStandaloneButton(
                    text: label,
                    themeColor: themeColor,
                    borderColor: borderColor,
                    isDarkMode: isDarkMode,
                  ),
                ),
            ],
          );
        }

        final radius = BorderRadius.circular(8.0);

        return ClipRRect(
          borderRadius: radius,
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: borderColor),
              borderRadius: radius,
            ),
            child: SizedBox(
              height: widget.segmentHeight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var index = 0; index < widget.labels.length; index++)
                    Expanded(
                      child: _buildSegment(
                        text: widget.labels[index],
                        isLast: index == widget.labels.length - 1,
                        themeColor: themeColor,
                        borderColor: borderColor,
                        isDarkMode: isDarkMode,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildStandaloneButton({
    required String text,
    required Color themeColor,
    required Color borderColor,
    required bool isDarkMode,
  }) {
    final isSelected = selected.contains(text);
    final radius = BorderRadius.circular(8.0);

    return Material(
      color: isSelected ? themeColor : (isDarkMode ? Colors.white.withAlpha(12) : Colors.black.withAlpha(8)),
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onTap: () => _handleSelect(text),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: radius,
            border: Border.all(
              color: isSelected ? themeColor : borderColor,
              width: 1.0,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          alignment: Alignment.center,
          child: Text(
            text,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: isSelected
                  ? Colors.white
                  : (isDarkMode ? Colors.grey[300] : Colors.black87),
              fontSize: 13,
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSegment({
    required String text,
    required bool isLast,
    required Color themeColor,
    required Color borderColor,
    required bool isDarkMode,
  }) {
    final isSelected = selected.contains(text);

    return Material(
      color: isSelected ? themeColor : Colors.transparent,
      child: InkWell(
        onTap: () => _handleSelect(text),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: isLast
                ? null
                : Border(
                    right: BorderSide(color: borderColor),
                  ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Center(
              child: Text(
                text,
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: isSelected
                      ? Colors.white
                      : (isDarkMode ? Colors.grey[300] : Colors.black87),
                  fontSize: 13,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleSelect(String text) {
    if (selected.length == 1 && selected.contains(text)) {
      return;
    }
    final newSelection = {text};
    setState(() => selected = newSelection);
    widget.onSelectionChanged?.call(newSelection);
  }
}

