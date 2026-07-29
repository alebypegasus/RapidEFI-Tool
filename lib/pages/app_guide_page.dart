import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/markdown_page.dart';

class AppGuidePage extends StatefulWidget {
  const AppGuidePage({super.key});

  @override
  State<AppGuidePage> createState() => _AppGuidePageState();
}

class _AppGuidePageState extends State<AppGuidePage> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    // Determine which language to load based on the locale
    String lang = l10n.localeName;
    String mdPath = 'assets/guide/app_guide_en.md';
    if (lang.startsWith('zh')) {
      mdPath = 'assets/guide/app_guide_zh.md';
    } else if (lang.startsWith('pt')) {
      mdPath = 'assets/guide/app_guide_pt.md';
    } else if (lang.startsWith('ja')) {
      mdPath = 'assets/guide/app_guide_ja.md';
    }

    return MarkdownPage(
      showAppBar: true,
      title: l10n.appGuideTitle,
      loadMarkdown: rootBundle.loadString,
      mdPath: mdPath,
    );
  }
}
