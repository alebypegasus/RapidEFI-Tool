import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

import 'package:rapidefi/pages/hardware/hardware_page.dart';
import 'package:rapidefi/pages/manual/manual_page.dart';
import 'package:rapidefi/utils/config/services/config_service.dart';
import 'package:rapidefi/utils/device_util.dart';
import 'package:rapidefi/utils/hardware/hardware_info.dart';
import 'package:rapidefi/pages/shared/widgets/categorized_tab_view.dart';
import 'package:rapidefi/widgets/state_keep_container.dart';

import 'update_check.dart';

class HomeTabPage extends StatefulWidget {
  const HomeTabPage({super.key});

  @override
  State<HomeTabPage> createState() => _HomeTabPageState();
}

class _HomeTabPageState extends State<HomeTabPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  late final List<Widget> pages;
  final PageStorageBucket _bucket = PageStorageBucket();
  bool _hardwarePrewarmStarted = false;

  @override
  void initState() {
    super.initState();
    final showAutoEFI = Device.isDesktop;
    pages = _getPages(showAutoEFI);
    _tabController = TabController(vsync: this, length: pages.length);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      UpdateDialog.checkLatestRelease(context);
    });
  }

  List<String> _getTabNames(BuildContext context, bool showAutoEFI) {
    final l10n = AppLocalizations.of(context)!;
    return showAutoEFI
        ? [l10n.manualEFIConfig, l10n.autoEFIConfig]
        : [l10n.manualEFIConfig];
  }

  List<Widget> _getPages(bool showAutoEFI) {
    final basePages = [
      StateKeepContainer(
        child: ManualPage(
          onReady: _prewarmHardwareCache,
        ),
      ),
    ];
    if (showAutoEFI) {
      basePages.add(
        const StateKeepContainer(
          child: HardwarePage(),
        ),
      );
    }
    return basePages;
  }

  void _prewarmHardwareCache() {
    if (_hardwarePrewarmStarted || !Device.isWindows) return;
    _hardwarePrewarmStarted = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      unawaited(HardwareInfo.prefetch());
      unawaited(HardwareInfo.loadCachedInfo('all'));
    });
  }

  @override
  Widget build(BuildContext context) {
    final showAutoEFI = Device.isDesktop;
    final tabName = _getTabNames(context, showAutoEFI);

    return PageStorage(
      bucket: _bucket,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: CategorizedTabView(
          controller: _tabController,
          tabs: tabName.map((name) => Tab(text: name)).toList(),
          onTap: (index) {
            ConfigService().updateConfigModel(index == 1);
          },
          crossAxisAlignment: CrossAxisAlignment.center,
          children: pages,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
