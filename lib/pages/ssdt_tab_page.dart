import 'package:rapidefi/l10n/l10n_helper.dart';
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
      MarkdownTabItem(title: l10n.ssdtPlatform, mdPath: l10nGlobal.autoGen5818),
      MarkdownTabItem(title: l10n.ssdtAudio, mdPath: l10nGlobal.autoGen5819),
      MarkdownTabItem(title: l10n.ssdtGpuSpoof, mdPath: l10nGlobal.autoGen5820),
      MarkdownTabItem(title: l10n.ssdtDisableDevice, mdPath: l10nGlobal.autoGen5821),
      MarkdownTabItem(title: l10n.ssdtBrightness, mdPath: l10nGlobal.autoGen5822),
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
