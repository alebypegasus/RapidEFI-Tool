import 'package:intl/intl.dart';

extension IntExtension on int {
  String get toHexString {
    String hexString = toRadixString(16).toUpperCase();
    // Pad leading zeros until reaching 2 characters
    return hexString.padLeft(2, '0');
  }

  String yyyy_MM_dd_HHmmss() {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(this);
    String formattedTime = DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
    return formattedTime;
  }

  String yyyy_MM_dd_HH_mm_ss() {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(this);
    String formattedTime = DateFormat('yyyy-MM-dd-HH-mm-ss').format(date);
    return formattedTime;
  }
}

