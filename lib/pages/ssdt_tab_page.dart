import 'package:rapidefi/l10n/generated/app_localizations.dart';
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

  static const _paths = [
    'assets/ssdt/SSDT-Guide.md',
    'assets/ssdt/platform_patch.md',
    'assets/ssdt/audio_patch.md',
    'assets/ssdt/gpu_spoof.md',
    'assets/ssdt/disable_devices.md',
    'assets/ssdt/brightness_patch.md',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: _paths.length);
  }

  List<MarkdownTabItem> _getTabItems(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return [
      MarkdownTabItem(title: l10n?.overview ?? 'Overview', mdPath: 'assets/ssdt/SSDT-Guide.md'),
      MarkdownTabItem(title: l10n?.platformPatches ?? 'Platform Patches', mdPath: 'assets/ssdt/platform_patch.md'),
      MarkdownTabItem(title: l10n?.audioPatches ?? 'Audio Patches', mdPath: 'assets/ssdt/audio_patch.md'),
      MarkdownTabItem(title: l10n?.gpuSpoofing ?? 'GPU Spoofing', mdPath: 'assets/ssdt/gpu_spoof.md'),
      MarkdownTabItem(title: l10n?.disableDevices ?? 'Disable Devices', mdPath: 'assets/ssdt/disable_devices.md'),
      MarkdownTabItem(title: l10n?.brightnessPatches ?? 'Brightness Patches', mdPath: 'assets/ssdt/brightness_patch.md'),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final items = _getTabItems(context);

    return MarkdownTabPage(
      items: items,
      tabController: _tabController,
      onLinkTap: (href) {
        final decoded = Uri.decodeFull(href);
        if (!decoded.endsWith('.md')) return false;
        final idx =
            items.indexWhere((item) => item.mdPath.endsWith(decoded));
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
