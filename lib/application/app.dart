import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart' as material;
import 'package:rapidefi/l10n/app_localizations.dart';


import 'package:flutter/services.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:oktoast/oktoast.dart';
import 'package:provider/provider.dart';
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
        child: Builder(
          builder: (context) => DoubleClickBackExitApp(
            tips: () {
              final l10n = AppLocalizations.of(context);
              showToast(l10n?.clickAgainToExit ?? 'Click again to exit');
            },
            child: _buildFluentApp(context, appTheme),
          ),
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

  @override
  void dispose() {
    searchController.dispose();
    searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    final l10n = AppLocalizations.of(context)!;

    final originalItems = [
      PaneItemWidgetAdapter(child: _PaneHeaderText(l10n.recent)),
      PaneItemSeparator(),
      _paneItem(l10n, _mainNavDestinations[0]),
      PaneItemWidgetAdapter(child: _PaneHeaderText(l10n.efiRelated)),
      PaneItemSeparator(),
      _paneItem(l10n, _mainNavDestinations[1]),
      _paneItem(l10n, _mainNavDestinations[2]),
      PaneItemWidgetAdapter(child: _PaneHeaderText(l10n.toolsAndGuides)),
      PaneItemSeparator(),
      _paneItem(l10n, _mainNavDestinations[3]),
      _paneItem(l10n, _mainNavDestinations[4]),
      _paneItem(l10n, _mainNavDestinations[5]),
    ];

    final footerItems = [
      PaneItemSeparator(),
      _paneItem(l10n, _footerNavDestinations[0]),
      _paneItem(l10n, _footerNavDestinations[1]),
    ];

    return NavigationView(
      titleBar: _buildTitleBar(context, appTheme, l10n),
      paneBodyBuilder: _buildPaneBody,
      pane: _buildNavigationPane(context, appTheme, l10n, originalItems, footerItems),
      onOpenSearch: searchFocusNode.requestFocus,
    );
  }

  PaneItem _paneItem(AppLocalizations l10n, _NavDestination destination) {
    return PaneItem(
      key: ValueKey(destination.path),
      icon: Icon(destination.icon),
      title: Text(destination.title(l10n)),
      body: const SizedBox.shrink(),
      onTap: () {
        _goToDestination(destination);
      },
    );
  }

  void _goToDestination(_NavDestination destination) {
    widget.navigationShell.goBranch(
      destination.index,
      initialLocation: false,
    );
  }

  Widget _buildTitleBar(BuildContext context, AppTheme appTheme, AppLocalizations l10n) {
    final topPadding = MediaQuery.paddingOf(context).top;

    return DragToMoveArea(
      child: Container(
        height: 50 + topPadding,
        padding: EdgeInsetsDirectional.only(top: topPadding),
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: _buildWindowTitle(context, l10n),
            ),
            PositionedDirectional(
              start: 0,
              end: 0,
              top: 0,
              bottom: 0,
              child: Align(
                alignment: AlignmentDirectional.topEnd,
                child: _buildWindowActions(context, appTheme, l10n),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWindowTitle(BuildContext context, AppLocalizations l10n) {
    final appVersion = SpUtil.getString(Constant.appVersionKey);
    final ocVersion = SpUtil.getString(Constant.openCoreVersionKey) ?? '';

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
            '${Constant.appName}-$appVersion (${l10n.currentOpenCoreVersion(ocVersion)})',
            softWrap: false,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }

  Widget _buildWindowActions(BuildContext context, AppTheme appTheme, AppLocalizations l10n) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 8.0),
          child: ToggleSwitch(
            content: Text(l10n.darkMode),
            checked: FluentTheme.of(context).brightness == Brightness.dark,
            onChanged: (value) {
              appTheme.mode = value ? ThemeMode.dark : ThemeMode.light;
            },
          ),
        ),
        if (Device.isDesktop) const WindowButtons(),
      ],
    );
  }

  Widget _buildPaneBody(PaneItem? item, Widget? child) {
    return FocusTraversalGroup(
      child: widget.navigationShell,
    );
  }

  NavigationPane _buildNavigationPane(
    BuildContext context,
    AppTheme appTheme,
    AppLocalizations l10n,
    List<NavigationPaneItem> items,
    List<NavigationPaneItem> footerItems,
  ) {
    return NavigationPane(
      selected: widget.navigationShell.currentIndex,
      size: const NavigationPaneSize(openMaxWidth: 220),
      header: _buildPaneHeader(context, appTheme),
      displayMode: appTheme.displayMode,
      indicator: _buildNavigationIndicator(appTheme),
      items: items,
      autoSuggestBox: Builder(builder: (context) => _buildSearchBox(context, l10n)),
      autoSuggestBoxReplacement: const Icon(FluentIcons.search),
      footerItems: footerItems,
    );
  }

  Widget _buildPaneHeader(BuildContext context, AppTheme appTheme) {
    final theme = FluentTheme.of(context);

    return SizedBox(
      height: kOneLineTileHeight,
      child: ShaderMask(
        shaderCallback: (rect) {
          final color = appTheme.accentColor.defaultBrushFor(theme.brightness);
          return LinearGradient(colors: [color, color]).createShader(rect);
        },
      ),
    );
  }

  Widget _buildNavigationIndicator(AppTheme appTheme) {
    return switch (appTheme.indicator) {
      NavigationIndicators.end => const EndNavigationIndicator(),
      NavigationIndicators.sticky => const StickyNavigationIndicator(),
    };
  }

  AutoSuggestBox _buildSearchBox(BuildContext context, AppLocalizations l10n) {
    return AutoSuggestBox(
      focusNode: searchFocusNode,
      controller: searchController,
      unfocusedColor: Colors.transparent,
      items: _searchDestinations()
          .map((destination) => _suggestionItem(context, l10n, destination))
          .toList(),
      trailingIcon: IgnorePointer(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(FluentIcons.search),
        ),
      ),
      placeholder: l10n.searchPlaceholder,
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
    AppLocalizations l10n,
    _NavDestination destination,
  ) {
    final title = destination.title(l10n);
    return AutoSuggestBoxItem(
      label: title,
      value: title,
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
    required this.titleGetter,
  });

  final int index;
  final String path;
  final IconData icon;
  final String Function(AppLocalizations l10n) titleGetter;

  String title(AppLocalizations l10n) => titleGetter(l10n);
}

final List<_NavDestination> _mainNavDestinations = [
  _NavDestination(
    index: 0,
    path: '/history',
    icon: FluentIcons.history,
    titleGetter: (l10n) => l10n.navHistory,
  ),
  _NavDestination(
    index: 1,
    path: '/',
    icon: FluentIcons.repair,
    titleGetter: (l10n) => l10n.navConfigureEFI,
  ),
  _NavDestination(
    index: 2,
    path: '/efi/process',
    icon: FluentIcons.c_r_m_services,
    titleGetter: (l10n) => l10n.navProcessEFI,
  ),
  _NavDestination(
    index: 3,
    path: '/ssdt',
    icon: FluentIcons.developer_tools,
    titleGetter: (l10n) => l10n.navCustomSSDT,
  ),
  _NavDestination(
    index: 4,
    path: '/oclp',
    icon: FluentIcons.publish_course,
    titleGetter: (l10n) => l10n.navOCLPPatch,
  ),
  _NavDestination(
    index: 5,
    path: '/tahoe',
    icon: FluentIcons.system,
    titleGetter: (l10n) => l10n.navTahoeGuide,
  ),
];

final List<_NavDestination> _footerNavDestinations = [
  _NavDestination(
    index: 6,
    path: '/settings',
    icon: FluentIcons.settings,
    titleGetter: (l10n) => l10n.navSettings,
  ),
  _NavDestination(
    index: 7,
    path: '/about',
    icon: FluentIcons.coffee_script,
    titleGetter: (l10n) => l10n.navSponsor,
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
