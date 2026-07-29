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
      child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          spacing: 10,
          runSpacing: 10,
          children: [
            if (widget.title.isNotEmpty)
              Text(
                widget.title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            if (widget.subTitle != null && widget.subTitle!.isNotEmpty)
              Text(
                widget.subTitle!,
                style: const TextStyle(fontSize: 13),
              ),
            if (widget.content != null)
              Material(
                color: Colors.transparent,
                child: widget.content!,
              ),
          ]),
    );
    if (widget.keepAlive) {
      return StateKeepContainer(child: expanderCard);
    }
    return expanderCard;
  }
}
