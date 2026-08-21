import 'package:rapidefi/pages/shared/widgets/markdown_tab_page.dart';
import 'package:flutter/material.dart';

class OCLPTabPage extends StatelessWidget {
  const OCLPTabPage({super.key});

  static const _tabItems = [
    MarkdownTabItem(title: 'Overview', mdPath: 'assets/oclp/introduction.md'),
    MarkdownTabItem(title: 'Graphics Patches', mdPath: 'assets/oclp/gpu.md'),
    MarkdownTabItem(title: 'Wi-Fi Patches', mdPath: 'assets/oclp/wifi.md'),
  ];

  @override
  Widget build(BuildContext context) {
    return const MarkdownTabPage(items: _tabItems);
  }
}
