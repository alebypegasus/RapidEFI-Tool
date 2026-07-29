import 'package:rapidefi/l10n/l10n_helper.dart';
enum CompatibilityLevel { supported, limited, unsupported }

class CompatibilityNote {
  CompatibilityNote(this.level, this.text);

  factory CompatibilityNote.supported(String text) =>
      CompatibilityNote(CompatibilityLevel.supported, text);

  factory CompatibilityNote.limited(String text) =>
      CompatibilityNote(CompatibilityLevel.limited, text);

  factory CompatibilityNote.unsupported(String text) =>
      CompatibilityNote(CompatibilityLevel.unsupported, text);

  final CompatibilityLevel level;
  final String text;

  String get detailText {
    final lines = text.split('\n');
    if (lines.isNotEmpty &&
        (lines.first == l10nGlobal.autoGen5000 ||
            lines.first == l10nGlobal.autoGen5001 ||
            lines.first == l10nGlobal.autoGen5002)) {
      return lines.skip(1).join('\n').trim();
    }
    return text.trim();
  }
}

class HardwareSupportSnapshot {
  HardwareSupportSnapshot({
    required this.cpu,
    required this.gpu,
    required this.audio,
    required this.network,
    required this.storage,
    required this.disk,
    required this.sd,
  });

  final CompatibilityNote? cpu;
  final CompatibilityNote? gpu;
  final CompatibilityNote? audio;
  final CompatibilityNote? network;
  final CompatibilityNote? storage;
  final CompatibilityNote? disk;
  final CompatibilityNote? sd;
}

class AudioEntry {
  AudioEntry({
    required this.name,
    required this.deviceId,
    required this.codecDeviceId,
    required this.model,
    required this.busType,
    required this.acpiPath,
    required this.pciPath,
    required this.codecKnown,
    required this.codecSupported,
  });

  final String name;
  final String deviceId;
  final String codecDeviceId;
  final String model;
  final String busType;
  final String acpiPath;
  final String pciPath;
  final bool codecKnown;
  final bool codecSupported;
}

class AudioCodecLookup {
  AudioCodecLookup({
    this.model = '',
    this.known = false,
    this.supported = false,
  });

  final String model;
  final bool known;
  final bool supported;
}

class AudioLayoutAnalysis {
  AudioLayoutAnalysis({
    required this.model,
    required this.layouts,
    required this.selectedLayout,
  });

  final String model;
  final List<int> layouts;
  final int selectedLayout;
}

class NetworkEntryAnalysis {
  NetworkEntryAnalysis({
    required this.name,
    required this.deviceId,
    required this.displayType,
    required this.isWireless,
    required this.requiresForceAquantiaEthernet,
    required this.kext,
    required this.rawDevice,
    required this.compatibility,
  });

  final String name;
  final String deviceId;
  final String displayType;
  final bool isWireless;
  final bool requiresForceAquantiaEthernet;
  final String kext;
  final Map<String, dynamic> rawDevice;
  final CompatibilityNote compatibility;
}

class BluetoothEntryAnalysis {
  BluetoothEntryAnalysis({
    required this.name,
    required this.deviceId,
    required this.busType,
    required this.supportedType,
    required this.rawDevice,
    required this.compatibility,
  });

  final String name;
  final String deviceId;
  final String busType;
  final String supportedType;
  final Map<String, dynamic> rawDevice;
  final CompatibilityNote compatibility;
}

class StorageControllerEntryAnalysis {
  StorageControllerEntryAnalysis({
    required this.name,
    required this.deviceId,
    required this.isNvme,
    required this.rawDevice,
    required this.compatibility,
  });

  final String name;
  final String deviceId;
  final bool isNvme;
  final Map<String, dynamic> rawDevice;
  final CompatibilityNote compatibility;
}

class SdCardEntryAnalysis {
  SdCardEntryAnalysis({
    required this.name,
    required this.deviceId,
    required this.device,
    required this.manufacturer,
    required this.readerName,
    required this.builtIn,
    required this.serialNumber,
    required this.rawDevice,
    required this.compatibility,
  });

  final String name;
  final String deviceId;
  final String device;
  final String manufacturer;
  final String readerName;
  final String builtIn;
  final String serialNumber;
  final Map<String, dynamic> rawDevice;
  final CompatibilityNote compatibility;
}
