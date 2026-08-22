import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' hide Colors;
import 'package:rapidefi/widgets/state_keep_container.dart';

import 'expander_card.dart';

class TitleCard extends StatefulWidget {
  const TitleCard(
      {super.key,
      required this.title,
      this.content,
      this.subTitle,
      this.expander,
      this.snippet,
      this.initiallyExpanded = false,
      this.keepAlive = true});
  final String title;
  final String? subTitle;
  final Widget? content;
  final Widget? expander;
  final String? snippet;
  final bool initiallyExpanded;
  final bool keepAlive;
  @override
  State<TitleCard> createState() => _TitleCardState();
}

class _TitleCardState extends State<TitleCard> {
  @override
  Widget build(BuildContext context) {
    final expanderCard = ExpanderCard(
      expander: widget.expander,
      snippet: widget.snippet,
      initiallyExpanded: widget.initiallyExpanded,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isCompact = constraints.maxWidth < 620;

          if (isCompact) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 8,
                  runSpacing: 4,
                  children: [
                    if (widget.title.isNotEmpty)
                      Text(
                        widget.title,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    if (widget.subTitle != null && widget.subTitle!.isNotEmpty)
                      Text(
                        widget.subTitle!,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                  ],
                ),
                if (widget.content != null) ...[
                  if (widget.title.isNotEmpty ||
                      (widget.subTitle != null && widget.subTitle!.isNotEmpty))
                    const SizedBox(height: 8),
                  Material(
                    color: Colors.transparent,
                    child: widget.content!,
                  ),
                ],
              ],
            );
          }

          return Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (widget.title.isNotEmpty)
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              if (widget.title.isNotEmpty &&
                  ((widget.subTitle != null && widget.subTitle!.isNotEmpty) ||
                      widget.content != null))
                const SizedBox(width: 10),
              if (widget.subTitle != null && widget.subTitle!.isNotEmpty) ...[
                Flexible(
                  child: Text(
                    widget.subTitle!,
                    style: const TextStyle(fontSize: 13),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                if (widget.content != null) const SizedBox(width: 10),
              ],
              if (widget.content != null)
                Flexible(
                  child: Material(
                    color: Colors.transparent,
                    child: widget.content!,
                  ),
                ),
            ],
          );
        },
      ),
    );
    if (widget.keepAlive) {
      return StateKeepContainer(child: expanderCard);
    }
    return expanderCard;
  }
}

