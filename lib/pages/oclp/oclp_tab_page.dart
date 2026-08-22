import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/markdown_tab_page.dart';
import 'package:flutter/material.dart';

class OCLPTabPage extends StatelessWidget {
  const OCLPTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final items = [
      MarkdownTabItem(title: l10n?.overview ?? 'Overview', mdPath: 'assets/oclp/introduction.md'),
      MarkdownTabItem(title: l10n?.graphicsPatches ?? 'Graphics Patches', mdPath: 'assets/oclp/gpu.md'),
      MarkdownTabItem(title: l10n?.wifiPatches ?? 'Wi-Fi Patches', mdPath: 'assets/oclp/wifi.md'),
    ];

    return MarkdownTabPage(items: items);
  }
}
