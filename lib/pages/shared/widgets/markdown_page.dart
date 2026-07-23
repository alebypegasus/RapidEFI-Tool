import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapidefi/pages/shared/widgets/markdown_viewer.dart';

class MarkdownPage extends StatelessWidget {
  final String mdPath;
  final Future<String> Function(String path) loadMarkdown;
  final String? title;
  final EdgeInsets padding;
  final bool showAppBar;
  final bool Function(String href)? onLinkTap;

  const MarkdownPage({
    super.key,
    required this.mdPath,
    required this.loadMarkdown,
    this.title,
    this.padding = const EdgeInsets.all(16),
    this.showAppBar = false,
    this.onLinkTap,
  });

  Future<String> _loadLocalizedMarkdown(BuildContext context, String path) async {
    final locale = Localizations.localeOf(context);
    final langCode = locale.languageCode.toLowerCase();

    if (path.endsWith('.md')) {
      final baseWithoutExt = path.substring(0, path.length - 3);
      final localizedPath = '${baseWithoutExt}_$langCode.md';
      try {
        return await rootBundle.loadString(localizedPath);
      } catch (_) {
        if (langCode != 'en') {
          final enPath = '${baseWithoutExt}_en.md';
          try {
            return await rootBundle.loadString(enPath);
          } catch (_) {}
        }
      }
    }
    return await loadMarkdown(path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: showAppBar
          ? AppBar(centerTitle: true, title: Text(title ?? ''))
          : null,
      body: FutureBuilder<String>(
        future: _loadLocalizedMarkdown(context, mdPath),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Failed to load: ${snapshot.error}',
                  style: const TextStyle(color: Colors.red)),
            );
          } else {
            final basePath = mdPath.substring(0, mdPath.lastIndexOf('/') + 1);
            return MarkdownViewer(
              data: snapshot.data!,
              basePath: basePath,
              onLinkTap: onLinkTap,
            );
          }
        },
      ),
    );
  }
}

