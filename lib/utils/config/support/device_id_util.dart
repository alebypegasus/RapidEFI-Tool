class DeviceIdUtils {
  const DeviceIdUtils._();

  static String reverseDeviceId(String deviceId) {
    final normalized = deviceId.replaceAll(RegExp(r'\s+'), '');
    if (normalized.length != 4) {
      throw ArgumentError.value(deviceId, 'deviceId', 'device-id must be 4 characters');
    }

    return normalized.replaceFirstMapped(
      RegExp(r'(.{2})(.{2})'),
      (match) => '${match[2]}${match[1]}',
    );
  }
}
