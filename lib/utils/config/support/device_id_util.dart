import 'package:rapidefi/l10n/l10n_helper.dart';
class DeviceIdUtils {
  const DeviceIdUtils._();

  static String reverseDeviceId(String deviceId) {
    final normalized = deviceId.replaceAll(RegExp(r'\s+'), '');
    if (normalized.length != 4) {
      throw ArgumentError.value(deviceId, 'deviceId', l10nGlobal.autoGen5213);
    }

    return normalized.replaceFirstMapped(
      RegExp(r'(.{2})(.{2})'),
      (match) => '${match[2]}${match[1]}',
    );
  }
}
