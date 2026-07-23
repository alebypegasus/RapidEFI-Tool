import 'package:flutter/material.dart' as material;
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/extension/color_extension.dart';
import 'package:sp_util/sp_util.dart';

import 'constant.dart';

enum NavigationIndicators { sticky, end }

Map<String, ThemeMode> get themeModeMap => {
      'system': ThemeMode.system,
      'light': ThemeMode.light,
      'dark': ThemeMode.dark,
    };
Map<String, String> get themeModeCHMap => {
      'system': '跟随系统',
      'light': '关闭',
      'dark': '开启',
    };

Map<String, String> get appFontFamilyMap => {
      'msyh': '微软雅黑',
      'Sarasa-Gothic-Mono-Nerd-SC-Regular': '更纱黑体',
      'NotoSerifSC-Regular': '思源宋体',
    };

List<String> get themeModeCHList => themeModeCHMap.values.toList();

class AppTheme extends ChangeNotifier {
  AccentColor? _accentColor;
  AccentColor get accentColor => _accentColor ?? _theme!.toAccentColor();
  set color(AccentColor accentColor) {
    _accentColor = accentColor;
    notifyListeners();
  }

  material.MaterialColor? _theme;
  material.MaterialColor get theme {
    final themeValue = SpUtil.getInt(Constant.theme,
        defValue: material.Colors.blue.toARGB32());
    _theme = material.Color(themeValue!).toMaterialColor();
    return _theme!;
  }

  String? _appFontFamily;
  final String _appDefaultFontFamily = 'msyh';
  String? get appFontFamily => _appFontFamily ??=
      SpUtil.getString(Constant.appFontFamily, defValue: _appDefaultFontFamily);

  set appFontFamily(String? newFontFamily) {
    if (newFontFamily != null && newFontFamily != _appFontFamily) {
      _appFontFamily = newFontFamily;
      notifyListeners();
      SpUtil.putString(Constant.appFontFamily, newFontFamily);
    }
  }

  set primaryColor(material.MaterialColor newTheme) {
    if (newTheme == _theme) return;
    _theme = newTheme;
    notifyListeners();

    SpUtil.putInt(Constant.theme, newTheme.toARGB32());
  }

  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode {
    final themeModeName =
        SpUtil.getString(Constant.themeMode, defValue: ThemeMode.system.name);
    _themeMode = themeModeMap[themeModeName] ?? ThemeMode.system;

    return _themeMode;
  }

  set mode(ThemeMode newThemeMode) {
    if (newThemeMode == _themeMode) return;
    _themeMode = themeMode;
    notifyListeners();

    SpUtil.putString(Constant.themeMode, newThemeMode.name);
  }

  PaneDisplayMode _displayMode = PaneDisplayMode.auto;
  PaneDisplayMode get displayMode => _displayMode;
  set displayMode(PaneDisplayMode displayMode) {
    _displayMode = displayMode;
    notifyListeners();
  }

  NavigationIndicators _indicator = NavigationIndicators.sticky;
  NavigationIndicators get indicator => _indicator;
  set indicator(NavigationIndicators indicator) {
    _indicator = indicator;
    notifyListeners();
  }

  WindowEffect _windowEffect = WindowEffect.disabled;
  WindowEffect get windowEffect => _windowEffect;
  set windowEffect(WindowEffect windowEffect) {
    _windowEffect = windowEffect;
    notifyListeners();
  }

  void setEffect(WindowEffect effect, BuildContext context) {
    Window.setEffect(
      effect: effect,
      color: [
        WindowEffect.solid,
        WindowEffect.acrylic,
      ].contains(effect)
          ? FluentTheme.of(context).micaBackgroundColor.withValues(alpha: 0.05)
          : Colors.transparent,
      dark: FluentTheme.of(context).brightness == Brightness.dark,
    );
  }

  TextDirection _textDirection = TextDirection.ltr;
  TextDirection get textDirection => _textDirection;
  set textDirection(TextDirection direction) {
    _textDirection = direction;
    notifyListeners();
  }

  Locale? get locale {
    final languageTag = SpUtil.getString(Constant.languageKey, defValue: 'system');
    if (languageTag == null || languageTag == 'system' || languageTag.isEmpty) {
      return null;
    }
    final parts = languageTag.split('_');
    if (parts.length > 1) {
      return Locale(parts[0], parts[1]);
    }
    return Locale(parts[0]);
  }

  String get languageTag => SpUtil.getString(Constant.languageKey, defValue: 'system') ?? 'system';

  set locale(Locale? locale) {
    final tag = locale == null
        ? 'system'
        : locale.countryCode != null && locale.countryCode!.isNotEmpty
            ? '${locale.languageCode}_${locale.countryCode}'
            : locale.languageCode;
    SpUtil.putString(Constant.languageKey, tag);
    notifyListeners();
  }


  void setLanguageTag(String tag) {
    if (tag == 'system') {
      locale = null;
    } else {
      final parts = tag.split('_');
      if (parts.length > 1) {
        locale = Locale(parts[0], parts[1]);
      } else {
        locale = Locale(parts[0]);
      }
    }
  }
}

