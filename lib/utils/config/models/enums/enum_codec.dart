class EnumCodec {
  const EnumCodec._();

  /// Supports decoding enums from string or object values
  static T decode<T extends Enum>(
    Object? raw,
    List<T> values, {
    required T fallback,
    Map<String, T> aliases = const {},
    bool ignoreCase = false,
  }) {
    if (raw == null) return fallback;

    final key = raw.toString().trim();
    if (key.isEmpty) return fallback;

    final normalizedKey = _normalize(key, ignoreCase);

    // 1. Process backward compatibility aliases first
    for (final entry in aliases.entries) {
      if (_normalize(entry.key, ignoreCase) == normalizedKey) {
        return entry.value;
      }
    }

    final valueName = key.contains('.') ? key.split('.').last : key;
    final normalizedValueName = _normalize(valueName, ignoreCase);

    for (final item in values) {
      if (_normalize(item.name, ignoreCase) == normalizedValueName) {
        return item;
      }
    }

    return fallback;
  }

  static String encode(Enum value) {
    return value.toString();
  }


  static String _normalize(String value, bool ignoreCase) {
    final text = value.trim();
    return ignoreCase ? text.toLowerCase() : text;
  }
}
