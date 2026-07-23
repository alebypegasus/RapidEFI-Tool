import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

import 'package:rapidefi/pages/shared/widgets/markdown_tab_page.dart';

class OCLPTabPage extends StatelessWidget {
  const OCLPTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final tabItems = [
      MarkdownTabItem(title: l10n.oclpIntro, mdPath: 'assets/oclp/introduction.md'),
      MarkdownTabItem(title: l10n.oclpGpu, mdPath: 'assets/oclp/gpu.md'),
      MarkdownTabItem(title: l10n.oclpWifi, mdPath: 'assets/oclp/wifi.md'),
    ];

    return MarkdownTabPage(items: tabItems);
  }
}
