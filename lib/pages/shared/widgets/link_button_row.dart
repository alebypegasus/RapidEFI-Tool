import 'package:flutter/material.dart';
import 'package:rapidefi/widgets/link_button.dart';

class LinkButtonItem {
  const LinkButtonItem({
    required this.url,
    required this.buttonText,
    this.icon,
  });

  final String url;
  final String buttonText;
  final IconData? icon;
}

class LinkButtonRow extends StatelessWidget {
  const LinkButtonRow({
    super.key,
    required this.items,
    this.spacing = 10,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final List<LinkButtonItem> items;
  final double spacing;
  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: spacing,
      runSpacing: spacing,
      alignment: _wrapAlignment(mainAxisAlignment),
      children: [
        for (final item in items)
          CustomLinkButton(
            url: item.url,
            buttonText: item.buttonText,
            icon: item.icon,
          ),
      ],
    );
  }

  static WrapAlignment _wrapAlignment(MainAxisAlignment alignment) {
    return switch (alignment) {
      MainAxisAlignment.start => WrapAlignment.start,
      MainAxisAlignment.end => WrapAlignment.end,
      MainAxisAlignment.center => WrapAlignment.center,
      MainAxisAlignment.spaceBetween => WrapAlignment.spaceBetween,
      MainAxisAlignment.spaceAround => WrapAlignment.spaceAround,
      MainAxisAlignment.spaceEvenly => WrapAlignment.spaceEvenly,
    };
  }
}

