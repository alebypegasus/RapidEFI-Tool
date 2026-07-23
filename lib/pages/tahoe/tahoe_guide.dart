import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

import 'package:rapidefi/pages/shared/widgets/markdown_page.dart';

class TahoeGuide extends StatefulWidget {
  const TahoeGuide({super.key});

  @override
  State<TahoeGuide> createState() => _TahoeGuideState();
}

class _TahoeGuideState extends State<TahoeGuide> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return MarkdownPage(
      showAppBar: true,
      title: l10n.tahoeGuideTitle,
      loadMarkdown: rootBundle.loadString,
      mdPath: 'assets/tahoe/tahoe.md',
    );
  }
}
