import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:flutter/services.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/about/about_page.dart';
import 'package:rapidefi/pages/history/history_page.dart';
import 'package:rapidefi/pages/home_tab_page.dart';
import 'package:rapidefi/pages/oclp/oclp_tab_page.dart';
import 'package:rapidefi/pages/process_page.dart';
import 'package:rapidefi/pages/settings/setting_page.dart';
import 'package:rapidefi/pages/ssdt_tab_page.dart';
import 'package:rapidefi/pages/tahoe/tahoe_guide.dart';
import 'package:rapidefi/utils/constant.dart';
import 'package:rapidefi/utils/device_util.dart';
import 'package:rapidefi/utils/image_util.dart';
import 'package:rapidefi/widgets/double_click_exit_app.dart';
import 'package:rapidefi/widgets/flutter_picker/picker_localizations_delegate.dart';
import 'package:sp_util/sp_util.dart';
import 'package:window_manager/window_manager.dart';

import '../utils/theme.dart';

final _appTheme = AppTheme();

class RapidEFIApp extends StatelessWidget {
  const RapidEFIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _appTheme,
      child: const _AppHost(),
    );
  }
}

class _AppHost extends StatelessWidget {
  const _AppHost();

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    final isDarkMode = _isDarkMode(context, appTheme);

    return material.Theme(
      data: _materialTheme(appTheme, isDarkMode),
      child: OKToast(
        backgroundColor: appTheme.theme,
        textPadding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        radius: 10,
        position: ToastPosition.center,
        child: DoubleClickBackExitApp(
          tips: () {
            showToast(AppLocalizations.of(context)?.exitAppTip ?? 'Press back again to exit');
          },
          child: _buildFluentApp(context, appTheme),
        ),
      ),
    );
  }

  Widget _buildFluentApp(BuildContext context, AppTheme appTheme) {
    return FluentApp.router(
      title: Constant.appName,
      themeMode: appTheme.themeMode,
      debugShowCheckedModeBanner: false,
      color: appTheme.theme,
      darkTheme: _fluentTheme(context, appTheme, Brightness.dark),
      theme: _fluentTheme(context, appTheme, Brightness.light),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        PickerLocalizationsDelegate.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      locale: appTheme.locale,
      builder: (context, child) => _AppChrome(
        appTheme: appTheme,
        child: child ?? const SizedBox.shrink(),
      ),
      routeInformationParser: router.routeInformationParser,
      routerDelegate: router.routerDelegate,
      routeInformationProvider: router.routeInformationProvider,
    );
  }


  static bool _isDarkMode(BuildContext context, AppTheme appTheme) {
    final platformBrightness =
        material.MediaQuery.platformBrightnessOf(context);

    return appTheme.themeMode == material.ThemeMode.dark ||
        (appTheme.themeMode == material.ThemeMode.system &&
            platformBrightness == Brightness.dark);
  }

  static material.ThemeData _materialTheme(AppTheme appTheme, bool isDarkMode) {
    return material.ThemeData(
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
      visualDensity: VisualDensity.standard,
      fontFamily: appTheme.appFontFamily,
      useMaterial3: true,
      colorScheme: isDarkMode
          ? material.ColorScheme.dark(primary: appTheme.theme)
          : material.ColorScheme.light(primary: appTheme.theme),
    );
  }

  static FluentThemeData _fluentTheme(
    BuildContext context,
    AppTheme appTheme,
    Brightness brightness,
  ) {
    return FluentThemeData(
      brightness: brightness,
      accentColor: appTheme.accentColor,
      visualDensity: VisualDensity.standard,
      fontFamily: appTheme.appFontFamily,
      focusTheme: FocusThemeData(
        glowFactor: is10footScreen(context) ? 2.0 : 0.0,
      ),
    );
  }
}

class _AppChrome extends StatelessWidget {
  const _AppChrome({
    required this.appTheme,
    required this.child,
  });

  final AppTheme appTheme;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    _syncAndroidSystemUi(context);

    return Directionality(
      textDirection: appTheme.textDirection,
      child: NavigationPaneTheme(
        data: NavigationPaneThemeData(
          backgroundColor:
              appTheme.windowEffect != flutter_acrylic.WindowEffect.disabled
                  ? material.Colors.black
                  : null,
        ),
        child: MediaQuery(
          data: MediaQuery.of(context).copyWith(
            textScaler: const TextScaler.linear(1.0),
          ),
          child: child,
        ),
      ),
    );
  }

  void _syncAndroidSystemUi(BuildContext context) {
    if (!Device.isAndroid) return;

    final isDarkMode = _AppHost._isDarkMode(context, appTheme);

    SystemChrome.setSystemUIOverlayStyle(
      isDarkMode ? _darkSystemUiStyle : _lightSystemUiStyle,
    );
  }
}

const _lightSystemUiStyle = SystemUiOverlayStyle(
  statusBarColor: material.Colors.transparent,
  statusBarBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Color(0xFFf9f9f9),
);

const _darkSystemUiStyle = SystemUiOverlayStyle(
  statusBarColor: material.Colors.transparent,
  statusBarBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.light,
  systemNavigationBarIconBrightness: Brightness.light,
  systemNavigationBarColor: Color(0xFF292929),
);

class App extends StatefulWidget {
  const App({
    super.key,
    required this.navigationShell,
  });

  final StatefulNavigationShell navigationShell;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final searchFocusNode = FocusNode();
  final searchController = TextEditingController();

  String _getDestinationTitle(BuildContext context, _NavDestination destination) {
    final l10n = AppLocalizations.of(context);
    if (l10n == null) return destination.title;
    return switch (destination.index) {
      0 => l10n.navHistory,
      1 => l10n.navManual,
      2 => l10n.navProcess,
      3 => l10n.navSsdt,
      4 => l10n.navOclp,
      5 => l10n.navTahoe,
      6 => l10n.navSettings,
      7 => l10n.navAbout,
      _ => destination.title,
    };
  }

  PaneItem _paneItem(BuildContext context, _NavDestination destination) {
    return PaneItem(
      key: ValueKey(destination.path),
      icon: Icon(destination.icon),
      title: Text(_getDestinationTitle(context, destination)),
      body: const SizedBox.shrink(),
      onTap: () {
        _goToDestination(destination);
      },
    );
  }

  List<NavigationPaneItem> _buildOriginalItems(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return [
      PaneItemWidgetAdapter(child: _PaneHeaderText(l10n?.navHistory ?? 'Recent')),
      PaneItemSeparator(),
      _paneItem(context, _mainNavDestinations[0]),
      PaneItemWidgetAdapter(child: _PaneHeaderText(l10n?.navManual ?? 'EFI Config')),
      PaneItemSeparator(),
      _paneItem(context, _mainNavDestinations[1]),
      _paneItem(context, _mainNavDestinations[2]),
      PaneItemWidgetAdapter(child: _PaneHeaderText(l10n?.navSsdt ?? 'Tools & Guides')),
      PaneItemSeparator(),
      _paneItem(context, _mainNavDestinations[3]),
      _paneItem(context, _mainNavDestinations[4]),
      _paneItem(context, _mainNavDestinations[5]),
    ];
  }

  List<NavigationPaneItem> _buildFooterItems(BuildContext context) {
    return [
      PaneItemSeparator(),
      _paneItem(context, _footerNavDestinations[0]),
      _paneItem(context, _footerNavDestinations[1]),
    ];
  }

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    final isDesktop = Device.isDesktop;

    if (!isDesktop) {
      return SafeArea(
        child: _buildMobileLayout(context, appTheme),
      );
    }

    return NavigationView(
      titleBar: _buildTitleBar(context, appTheme),
      paneBodyBuilder: _buildPaneBody,
      pane: _buildNavigationPane(context, appTheme),
      onOpenSearch: searchFocusNode.requestFocus,
    );
  }

  Widget _buildMobileLayout(BuildContext context, AppTheme appTheme) {
    final currentIndex = widget.navigationShell.currentIndex;
    final isSettings = currentIndex == 6;

    return ScaffoldPage(
      padding: EdgeInsets.zero,
      header: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: FluentTheme.of(context).resources.dividerStrokeColorDefault,
              width: 0.5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                if (isSettings) {
                  widget.navigationShell.goBranch(1, initialLocation: false);
                } else {
                  widget.navigationShell.goBranch(6, initialLocation: false);
                }
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: LoadAssetsImage(
                      'Icon-App-60x60',
                      format: ImageFormat.png,
                      width: 28,
                      height: 28,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    isSettings ? 'Settings' : Constant.appName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(
                isSettings ? FluentIcons.repair : FluentIcons.settings,
                size: 20,
              ),
              onPressed: () {
                if (isSettings) {
                  widget.navigationShell.goBranch(1, initialLocation: false);
                } else {
                  widget.navigationShell.goBranch(6, initialLocation: false);
                }
              },
            ),
          ],
        ),
      ),
      content: FocusTraversalGroup(
        child: widget.navigationShell,
      ),
    );
  }


  void _goToDestination(_NavDestination destination) {
    widget.navigationShell.goBranch(
      destination.index,
      initialLocation: false,
    );
  }

  Widget _buildTitleBar(BuildContext context, AppTheme appTheme) {
    final topPadding = MediaQuery.paddingOf(context).top;

    return DragToMoveArea(
      child: Container(
        height: 48 + topPadding,
        padding: EdgeInsetsDirectional.only(top: topPadding, start: 8, end: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: _buildWindowTitle(context)),
            _buildWindowActions(context, appTheme),
          ],
        ),
      ),
    );
  }

  Widget _buildWindowTitle(BuildContext context) {
    final appVersion = SpUtil.getString(Constant.appVersionKey);
    final ocVersion = SpUtil.getString(Constant.openCoreVersionKey);

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: NavigationPaneTheme(
            data: NavigationPaneTheme.of(context).merge(
              NavigationPaneThemeData(
                unselectedIconColor: WidgetStateProperty.resolveWith((states) {
                  if (states.isDisabled) {
                    return ButtonThemeData.buttonColor(context, states);
                  }

                  return ButtonThemeData.uncheckedInputColor(
                    FluentTheme.of(context),
                    states,
                  ).basedOnLuminance();
                }),
              ),
            ),
            child: const LoadAssetsImage(
              'Icon-App-60x60',
              format: ImageFormat.png,
              width: 20,
              height: 20,
            ),
          ),
        ),
        Flexible(
          child: Text(
            '${Constant.appName}-$appVersion (Current OpenCore Version: $ocVersion)',
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildWindowActions(BuildContext context, AppTheme appTheme) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (Device.isDesktop) const WindowButtons(),
      ],
    );
  }

  Widget _buildPaneBody(PaneItem? item, Widget? child) {
    return FocusTraversalGroup(
      child: widget.navigationShell,
    );
  }

  NavigationPane _buildNavigationPane(BuildContext context, AppTheme appTheme) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final isMobileScreen = screenWidth < 700 || !Device.isDesktop;
    final effectiveDisplayMode =
        isMobileScreen ? PaneDisplayMode.minimal : appTheme.displayMode;

    return NavigationPane(
      selected: widget.navigationShell.currentIndex,
      size: const NavigationPaneSize(openMaxWidth: 220),
      header: _buildPaneHeader(context, appTheme),
      displayMode: effectiveDisplayMode,
      indicator: _buildNavigationIndicator(appTheme),
      items: _buildOriginalItems(context),
      autoSuggestBox: Builder(builder: _buildSearchBox),
      autoSuggestBoxReplacement: const Icon(FluentIcons.search),
      footerItems: _buildFooterItems(context),
    );
  }


  Widget _buildPaneHeader(BuildContext context, AppTheme appTheme) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
      child: Row(
        children: [
          LoadAssetsImage(
            'Icon-App-60x60',
            format: ImageFormat.png,
            width: 22,
            height: 22,
          ),
          SizedBox(width: 8),
          Text(
            Constant.appName,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildNavigationIndicator(AppTheme appTheme) {
    return switch (appTheme.indicator) {
      NavigationIndicators.end => const EndNavigationIndicator(),
      NavigationIndicators.sticky => const StickyNavigationIndicator(),
    };
  }

  AutoSuggestBox _buildSearchBox(BuildContext context) {
    return AutoSuggestBox(
      focusNode: searchFocusNode,
      controller: searchController,
      unfocusedColor: Colors.transparent,
      items: _searchDestinations()
          .map((destination) => _suggestionItem(context, destination))
          .toList(),
      trailingIcon: IgnorePointer(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(FluentIcons.search),
        ),
      ),
      placeholder: 'Search',
    );
  }

  Iterable<_NavDestination> _searchDestinations() {
    return [
      ..._mainNavDestinations,
      ..._footerNavDestinations,
    ];
  }

  AutoSuggestBoxItem<String> _suggestionItem(
    BuildContext context,
    _NavDestination destination,
  ) {
    return AutoSuggestBoxItem(
      label: destination.title,
      value: destination.title,
      onSelected: () {
        searchController.clear();
        searchFocusNode.unfocus();

        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (!mounted) return;

          _closeNavigationOverlay(context);
          _goToDestination(destination);
        });
      },
    );
  }

  void _closeNavigationOverlay(BuildContext context) {
    final view = NavigationView.maybeOf(context);
    if (view == null) return;

    if (view.compactOverlayOpen) {
      view.compactOverlayOpen = false;
    }

    if (view.isMinimalPaneOpen) {
      view.isMinimalPaneOpen = false;
    }
  }
}

class _PaneHeaderText extends StatelessWidget {
  const _PaneHeaderText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = NavigationPaneTheme.of(context);

    return DefaultTextStyle.merge(
      style: theme.itemHeaderTextStyle,
      softWrap: false,
      maxLines: 1,
      overflow: TextOverflow.fade,
      child: Text(text),
    );
  }
}

class _NavDestination {
  const _NavDestination({
    required this.index,
    required this.path,
    required this.icon,
    required this.title,
  });

  final int index;
  final String path;
  final IconData icon;
  final String title;
}

const List<_NavDestination> _mainNavDestinations = [
  _NavDestination(
    index: 0,
    path: '/history',
    icon: FluentIcons.history,
    title: 'History',
  ),
  _NavDestination(
    index: 1,
    path: '/',
    icon: FluentIcons.repair,
    title: 'Configure EFI',
  ),
  _NavDestination(
    index: 2,
    path: '/efi/process',
    icon: FluentIcons.c_r_m_services,
    title: 'Process EFI',
  ),
  _NavDestination(
    index: 3,
    path: '/ssdt',
    icon: FluentIcons.developer_tools,
    title: 'Custom SSDT',
  ),
  _NavDestination(
    index: 4,
    path: '/oclp',
    icon: FluentIcons.publish_course,
    title: 'OCLP-X Patches',
  ),
  _NavDestination(
    index: 5,
    path: '/tahoe',
    icon: FluentIcons.system,
    title: 'macOS Tahoe 26',
  ),
];

const List<_NavDestination> _footerNavDestinations = [
  _NavDestination(
    index: 6,
    path: '/settings',
    icon: FluentIcons.settings,
    title: 'Settings',
  ),
  _NavDestination(
    index: 7,
    path: '/about',
    icon: FluentIcons.coffee_script,
    title: 'About & Sponsor',
  ),
];

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> _historyNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'historyBranchNavigator');

final GlobalKey<NavigatorState> _homeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'homeBranchNavigator');

final GlobalKey<NavigatorState> _processNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'processBranchNavigator');

final GlobalKey<NavigatorState> _ssdtNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'ssdtBranchNavigator');

final GlobalKey<NavigatorState> _oclpNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'oclpBranchNavigator');

final GlobalKey<NavigatorState> _tahoeNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'tahoeBranchNavigator');

final GlobalKey<NavigatorState> _settingsNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'settingsBranchNavigator');

final GlobalKey<NavigatorState> _aboutNavigatorKey =
    GlobalKey<NavigatorState>(debugLabel: 'aboutBranchNavigator');

final GoRouter router = GoRouter(
  navigatorKey: rootNavigatorKey,
  initialLocation: '/',
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return App(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _historyNavigatorKey,
          routes: [
            GoRoute(
              path: '/history',
              builder: (context, state) => const HistoryPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => const HomeTabPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _processNavigatorKey,
          routes: [
            GoRoute(
              path: '/efi/process',
              builder: (context, state) => const ProcessPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _ssdtNavigatorKey,
          routes: [
            GoRoute(
              path: '/ssdt',
              builder: (context, state) => const SSDTTabPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _oclpNavigatorKey,
          routes: [
            GoRoute(
              path: '/oclp',
              builder: (context, state) => const OCLPTabPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _tahoeNavigatorKey,
          routes: [
            GoRoute(
              path: '/tahoe',
              builder: (context, state) => const TahoeGuide(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _settingsNavigatorKey,
          routes: [
            GoRoute(
              path: '/settings',
              builder: (context, state) => const SettingPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _aboutNavigatorKey,
          routes: [
            GoRoute(
              path: '/about',
              builder: (context, state) => const AboutPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});

  @override
  Widget build(BuildContext context) {
    final FluentThemeData theme = FluentTheme.of(context);

    return SizedBox(
      width: 138,
      height: 50,
      child: WindowCaption(
        brightness: theme.brightness,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
