import 'package:flutter/widgets.dart';

/// Localizations for Picker component.
class PickerLocalizations {
  static final PickerLocalizations _fallback =
      PickerLocalizations(const Locale('en'));

  final Locale locale;

  const PickerLocalizations(this.locale);

  String get cancelText => _value('cancelText');
  String get confirmText => _value('confirmText');

  /// Localization text lookup
  String text(String key) => _value(key);

  String _value(String key) {
    final languageCode = locale.languageCode.toLowerCase();
    return _localizedValues[languageCode]?[key] ??
        _localizedValues['en']?[key] ??
        key;
  }

  static PickerLocalizations of(BuildContext context) {
    return Localizations.of<PickerLocalizations>(
            context, PickerLocalizations) ??
        _fallback;
  }

  static bool isSupported(Locale locale) {
    return languages.contains(locale.languageCode.toLowerCase());
  }

  /// Built-in supported languages
  static List<String> get languages => List.unmodifiable(_localizedValues.keys);

  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh'),
  ];

  static final Map<String, Map<String, String>> _localizedValues =
      <String, Map<String, String>>{
    'en': <String, String>{
      'cancelText': 'Cancel',
      'confirmText': 'Confirm',
    },
    'zh': <String, String>{
      'cancelText': 'Cancel',
      'confirmText': 'Confirm',
    },
  };

  /// Register custom language
  static void registerCustomLanguage(
    String languageCode, {
    String? cancelText,
    String? confirmText,
    Map<String, String>? extra,
  }) {
    final code = languageCode.trim().toLowerCase();
    if (code.isEmpty) return;

    final fallback = _localizedValues['en']!;
    _localizedValues[code] = <String, String>{
      'cancelText': cancelText ?? fallback['cancelText']!,
      'confirmText': confirmText ?? fallback['confirmText']!,
      if (extra != null) ...extra,
    };
  }
}
