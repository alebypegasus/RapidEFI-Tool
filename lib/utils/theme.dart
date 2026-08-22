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
      'system': 'Follow System',
      'light': 'Off',
      'dark': 'On',
    };

Map<String, String> get appFontFamilyMap => {
      'msyh': 'Microsoft YaHei',
      'Sarasa-Gothic-Mono-Nerd-SC-Regular': 'Sarasa Gothic',
      'NotoSerifSC-Regular': 'Source Han Serif',
    };

List<String> get themeModeCHList => themeModeCHMap.values.toList();

/// Comprehensive Multi-Language support map (Locale Code -> Display Name)
const Map<String, String> appLanguagesMap = {
  'system': 'Follow System',
  'en': 'English',
  'pt': 'Português (Brasil)',
  'pt_PT': 'Português (Portugal)',
  'zh': '简体中文 (Chinese Simplified)',
  'zh_Hant': '繁體中文 (Chinese Traditional)',
  'es': 'Español (Spanish)',
  'fr': 'Français (French)',
  'hi': 'हिन्दी (Hindi)',
  'ar': 'العربية (Arabic)',
  'bn': 'বাংলা (Bengali)',
  'ru': 'Русский (Russian)',
  'id': 'Bahasa Indonesia',
  'ur': 'اردو (Urdu)',
  'de': 'Deutsch (German)',
  'ja': '日本語 (Japanese)',
  'ko': '한국어 (Korean)',
  'it': 'Italiano (Italian)',
  'tr': 'Türkçe (Turkish)',
  'vi': 'Tiếng Việt (Vietnamese)',
};

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

  String get appLocaleCode {
    return SpUtil.getString(Constant.appLocaleKey, defValue: 'system') ?? 'system';
  }

  set appLocaleCode(String code) {
    if (code == appLocaleCode) return;
    SpUtil.putString(Constant.appLocaleKey, code);
    _locale = _parseLocale(code);
    _textDirection = (code == 'ar' || code == 'ur') ? TextDirection.rtl : TextDirection.ltr;
    notifyListeners();
  }

  Locale? _locale;
  Locale? get locale {
    if (_locale != null) return _locale;
    final saved = appLocaleCode;
    _locale = _parseLocale(saved);
    _textDirection = (saved == 'ar' || saved == 'ur') ? TextDirection.rtl : TextDirection.ltr;
    return _locale;
  }

  set locale(Locale? loc) {
    _locale = loc;
    if (loc == null) {
      SpUtil.putString(Constant.appLocaleKey, 'system');
      _textDirection = TextDirection.ltr;
    } else {
      final code = loc.countryCode != null && loc.countryCode!.isNotEmpty
          ? '${loc.languageCode}_${loc.countryCode}'
          : (loc.scriptCode != null && loc.scriptCode!.isNotEmpty
              ? '${loc.languageCode}_${loc.scriptCode}'
              : loc.languageCode);
      SpUtil.putString(Constant.appLocaleKey, code);
      _textDirection = (loc.languageCode == 'ar' || loc.languageCode == 'ur')
          ? TextDirection.rtl
          : TextDirection.ltr;
    }
    notifyListeners();
  }

  static Locale? _parseLocale(String code) {
    if (code == 'system' || code.isEmpty) return null;
    if (code == 'pt_PT') return const Locale('pt', 'PT');
    if (code == 'zh_Hant') return const Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant');
    return Locale(code);
  }
}
