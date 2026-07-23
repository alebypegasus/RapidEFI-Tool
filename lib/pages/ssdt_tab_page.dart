import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

import 'package:rapidefi/pages/shared/widgets/markdown_tab_page.dart';

class SSDTTabPage extends StatefulWidget {
  const SSDTTabPage({super.key});

  @override
  State<SSDTTabPage> createState() => _SSDTTabPageState();
}

class _SSDTTabPageState extends State<SSDTTabPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  List<MarkdownTabItem> _getTabItems(AppLocalizations l10n) {
    return [
      MarkdownTabItem(title: l10n.oclpIntro, mdPath: 'assets/ssdt/SSDT-Guide.md'),
      MarkdownTabItem(title: l10n.ssdtPlatform, mdPath: 'assets/ssdt/平台补丁.md'),
      MarkdownTabItem(title: l10n.ssdtAudio, mdPath: 'assets/ssdt/声卡补丁.md'),
      MarkdownTabItem(title: l10n.ssdtGpuSpoof, mdPath: 'assets/ssdt/显卡仿冒.md'),
      MarkdownTabItem(title: l10n.ssdtDisableDevice, mdPath: 'assets/ssdt/屏蔽设备.md'),
      MarkdownTabItem(title: l10n.ssdtBrightness, mdPath: 'assets/ssdt/亮度补丁.md'),
    ];
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 6);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final tabItems = _getTabItems(l10n);

    return MarkdownTabPage(
      items: tabItems,
      tabController: _tabController,
      onLinkTap: (href) {
        final decoded = Uri.decodeFull(href);
        if (!decoded.endsWith('.md')) return false;
        final idx = tabItems.indexWhere((item) => item.mdPath.endsWith(decoded));
        if (idx == -1) return false;
        _tabController.animateTo(idx);
        return true;
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
