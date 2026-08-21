import 'package:rapidefi/pages/shared/widgets/markdown_tab_page.dart';
import 'package:flutter/material.dart';

class SSDTTabPage extends StatefulWidget {
  const SSDTTabPage({super.key});

  @override
  State<SSDTTabPage> createState() => _SSDTTabPageState();
}

class _SSDTTabPageState extends State<SSDTTabPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  static const _tabItems = [
    MarkdownTabItem(title: 'Overview', mdPath: 'assets/ssdt/SSDT-Guide.md'),
    MarkdownTabItem(title: 'Platform Patches', mdPath: 'assets/ssdt/platform_patch.md'),
    MarkdownTabItem(title: 'Audio Patches', mdPath: 'assets/ssdt/audio_patch.md'),
    MarkdownTabItem(title: 'GPU Spoofing', mdPath: 'assets/ssdt/gpu_spoof.md'),
    MarkdownTabItem(title: 'Disable Devices', mdPath: 'assets/ssdt/disable_devices.md'),
    MarkdownTabItem(title: 'Brightness Patches', mdPath: 'assets/ssdt/brightness_patch.md'),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _tabItems.length);
  }

  @override
  Widget build(BuildContext context) {
    return MarkdownTabPage(
      items: _tabItems,
      tabController: _tabController,
      onLinkTap: (href) {
        final decoded = Uri.decodeFull(href);
        if (!decoded.endsWith('.md')) return false;
        final idx =
            _tabItems.indexWhere((item) => item.mdPath.endsWith(decoded));
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
