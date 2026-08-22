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

  static bool isSupported(Locale locale) => true;

  /// Built-in supported languages
  static List<String> get languages => List.unmodifiable(_localizedValues.keys);

  static final Map<String, Map<String, String>> _localizedValues =
      <String, Map<String, String>>{
    'en': <String, String>{'cancelText': 'Cancel', 'confirmText': 'Confirm'},
    'pt': <String, String>{'cancelText': 'Cancelar', 'confirmText': 'Confirmar'},
    'zh': <String, String>{'cancelText': '取消', 'confirmText': '确定'},
    'es': <String, String>{'cancelText': 'Cancelar', 'confirmText': 'Confirmar'},
    'fr': <String, String>{'cancelText': 'Annuler', 'confirmText': 'Confirmer'},
    'hi': <String, String>{'cancelText': 'रद्द करें', 'confirmText': 'पुष्टि करें'},
    'ar': <String, String>{'cancelText': 'إلغاء', 'confirmText': 'تأكيد'},
    'bn': <String, String>{'cancelText': 'বাতিল', 'confirmText': 'নিশ্চিত করুন'},
    'ru': <String, String>{'cancelText': 'Отмена', 'confirmText': 'Подтвердить'},
    'id': <String, String>{'cancelText': 'Batal', 'confirmText': 'Konfirmasi'},
    'ur': <String, String>{'cancelText': 'منسوخ کریں', 'confirmText': 'تصدیق کریں'},
    'de': <String, String>{'cancelText': 'Abbrechen', 'confirmText': 'Bestätigen'},
    'ja': <String, String>{'cancelText': 'キャンセル', 'confirmText': '確認'},
    'ko': <String, String>{'cancelText': '취소', 'confirmText': '확인'},
    'it': <String, String>{'cancelText': 'Annulla', 'confirmText': 'Conferma'},
    'tr': <String, String>{'cancelText': 'İptal', 'confirmText': 'Onayla'},
    'vi': <String, String>{'cancelText': 'Hủy', 'confirmText': 'Xác nhận'},
  };

  /// Register custom language
  static void registerCustomLanguage(
    String languageCode, {
    String? cancelText,
    String? confirmText,
    Map<String, String>? extra,
  }) {
    final language = languageCode.toLowerCase();
    _localizedValues[language] = <String, String>{
      if (cancelText != null) 'cancelText': cancelText,
      if (confirmText != null) 'confirmText': confirmText,
      if (extra != null) ...extra,
    };
  }
}
