import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:fluent_ui/fluent_ui.dart' show FluentIcons;
import 'package:flutter/material.dart';
import 'package:rapidefi/widgets/link_button.dart';

class OclpLinkButton extends StatelessWidget {
  const OclpLinkButton({
    super.key,
    this.buttonText,
  });

  static const url = 'https://github.com/JeoJay127/OCLP-X/releases';

  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(width: 15),
          CustomLinkButton(
            url: url,
            buttonText: buttonText ?? AppLocalizations.of(context)!.sharedGetModifiedOclp,
            icon: FluentIcons.open_source,
          ),
        ],
      ),
    );
  }
}
