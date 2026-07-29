import 'package:rapidefi/l10n/l10n_helper.dart';
//  table.dart
//  Created by JeoJay127
//
extension MapExtension on Map<String, dynamic> {
  String get name => this['name'] ?? '';
}

class ACPITable {
  static final ssdtHPET = {
    'name': 'SSDT-HPET',
    'remark': () => l10nGlobal.autoGen5641,
    'note': () => l10nGlobal.autoGen5642,
  };

  static final ssdtECUSBXDesktop = {
    'name': 'SSDT-EC-USBX-DESKTOP',
    'remark': () => l10nGlobal.autoGen5643,
    'note': () => l10nGlobal.autoGen5644,
  };

  static final ssdtECUSBXLaptop = {
    'name': 'SSDT-EC-USBX-LAPTOP',
    'remark': () => l10nGlobal.autoGen5645,
    'note': () => l10nGlobal.autoGen5646,
  };

  static final ssdtECDesktop = {
    'name': 'SSDT-EC-DESKTOP',
    'remark': () => l10nGlobal.autoGen5647,
    'note': () => l10nGlobal.autoGen5648,
  };

  static final ssdtECLaptop = {
    'name': 'SSDT-EC-LAPTOP',
    'remark': () => l10nGlobal.autoGen5649,
    'note': () => l10nGlobal.autoGen5650,
  };

  static final ssdtUSBX = {
    'name': 'SSDT-USBX',
    'remark': () => l10nGlobal.autoGen5651,
    'note': () => l10nGlobal.autoGen5652,
  };

  static final ssdtPLUG = {
    'name': 'SSDT-PLUG',
    'remark': () => l10nGlobal.autoGen5653,
    'note': () => l10nGlobal.autoGen5654,
  };

  static final ssdtPMC = {
    'name': 'SSDT-PMC',
    'remark': () => l10nGlobal.autoGen5655,
    'note': () => l10nGlobal.autoGen5656,
  };

  static final ssdtPNLF = {
    'name': 'SSDT-PNLF',
    'remark': () => l10nGlobal.autoGen5657,
    'note': () => l10nGlobal.autoGen5658,
  };

  static final ssdtALS0 = {
    'name': 'SSDT-ALS0',
    'remark': () => l10nGlobal.autoGen5659,
    'note': () => l10nGlobal.autoGen5660,
  };

  static final ssdtXOSI = {
    'name': 'SSDT-XOSI',
    'remark': () => l10nGlobal.autoGen5661,
    'note': () => l10nGlobal.autoGen5662,
  };

  static final ssdtRHUB = {
    'name': 'SSDT-RHUB',
    'remark': () => l10nGlobal.autoGen5663,
    'note': () => l10nGlobal.autoGen5664,
  };

  static final ssdtBridge = {
    'name': 'SSDT-Bridge',
    'remark': () => l10nGlobal.autoGen5665,
    'note': () => l10nGlobal.autoGen5666,
  };

  static final ssdtAPIC = {
    'name': 'SSDT-APIC',
    'remark': () => l10nGlobal.autoGen5667,
    'note': () => l10nGlobal.autoGen5668,
  };

  static final ssdtDMAR = {
    'name': 'SSDT-DMAR',
    'remark': () => l10nGlobal.autoGen5669,
    'note': () => l10nGlobal.autoGen5670,
  };

  static final ssdtSBUSMCHC = {
    'name': 'SSDT-SBUS-MCHC',
    'remark': () => l10nGlobal.autoGen5671,
    'note': () => l10nGlobal.autoGen5672,
  };

  static final ssdtIMEI = {
    'name': 'SSDT-IMEI',
    'remark': () => l10nGlobal.autoGen5673,
    'note': () => l10nGlobal.autoGen5674,
  };

  static final ssdtFixShutdown = {
    'name': 'SSDT-FixShutdown',
    'remark': () => l10nGlobal.autoGen5675,
    'note': () => l10nGlobal.autoGen5676,
  };

  static final checkSystemState = {
    'name': 'Check-System-State',
    'remark': () => l10nGlobal.autoGen5677,
    'note': () => l10nGlobal.autoGen5678,
  };

  static final checkAOAC = {
    'name': 'Check-AOAC',
    'remark': () => l10nGlobal.autoGen5679,
    'note': () => l10nGlobal.autoGen5680,
  };

  static final ssdtGPRW = {
    'name': 'SSDT-GPRW',
    'remark': () => l10nGlobal.autoGen5681,
    'note': () => l10nGlobal.autoGen5682,
  };

  static final ssdtUPRW = {
    'name': 'SSDT-UPRW',
    'remark': () => l10nGlobal.autoGen5681,
    'note': () => l10nGlobal.autoGen5683,
  };
  static final ssdtLID = {
    'name': 'SSDT-LID',
    'remark': () => l10nGlobal.autoGen5684,
    'note': () => l10nGlobal.autoGen5685,
  };

  static final ssdtWakeScreen = {
    'name': 'SSDT-WakeScreen',
    'remark': () => l10nGlobal.autoGen5686,
    'note': () => l10nGlobal.autoGen5687,
  };

  static final ssdtLED = {
    'name': 'SSDT-LED',
    'remark': () => l10nGlobal.autoGen5688,
    'note': () => l10nGlobal.autoGen5689,
  };

  static final ssdtS3Disable = {
    'name': 'SSDT-S3-DISABLE',
    'remark': () => l10nGlobal.autoGen5690,
    'note': () => l10nGlobal.autoGen5691,
  };

  static final ssdtFACP = {
    'name': 'SSDT-FACP',
    'remark': () => l10nGlobal.autoGen5692,
    'note': () => l10nGlobal.autoGen5693,
  };

  static final ssdtGPUSPOOF = {
    'name': 'SSDT-GPU-SPOOF',
    'remark': () => l10nGlobal.autoGen5694,
    'note': () => l10nGlobal.autoGen5695,
  };

  static final ssdtPCIDISABLE = {
    'name': 'SSDT-PCI-DISABLE',
    'remark': () => l10nGlobal.autoGen5696,
    'note': () => l10nGlobal.autoGen5697,
  };
  static final ssdtRMNE = {
    'name': 'SSDT-RMNE',
    'remark': () => l10nGlobal.autoGen5698,
    'note': () => l10nGlobal.autoGen5699,
  };

  static final ssdtGPI0 = {
    'name': 'SSDT-GPI0',
    'remark': () => l10nGlobal.autoGen5700,
    'note': () => l10nGlobal.autoGen5701,
  };

  static final ssdtCPUR = {
    'name': 'SSDT-CPUR',
    'remark': () => l10nGlobal.autoGen5702,
    'note': () => l10nGlobal.autoGen5703,
  };

  static final ssdtPLUGALT = {
    'name': 'SSDT-PLUG-ALT',
    'remark': () => l10nGlobal.autoGen5704,
    'note': () => l10nGlobal.autoGen5705,
  };

  static final ssdtAWAC = {
    'name': 'SSDT-AWAC',
    'remark': () => l10nGlobal.autoGen5706,
    'note': () => l10nGlobal.autoGen5707,
  };

  static final ssdtUNC = {
    'name': 'SSDT-UNC',
    'remark': () => l10nGlobal.autoGen5708,
    'note': () => l10nGlobal.autoGen5709,
  };

  static final ssdtRTC0RANGE = {
    'name': 'SSDT-RTC0-RANGE',
    'remark': () => l10nGlobal.autoGen5710,
    'note': () => l10nGlobal.autoGen5711,
  };

  static final ssdtDTGP = {
    'name': 'SSDT-DTGP',
    'remark': () => l10nGlobal.autoGen5712,
    'note': () => l10nGlobal.autoGen5713,
  };

  static final ssdtDMAC = {
    'name': 'SSDT-DMAC',
    'remark': () => l10nGlobal.autoGen5714,
    'note': () => l10nGlobal.autoGen5715,
  };

  static final ssdtPWRB = {
    'name': 'SSDT-PWRB',
    'remark': () => l10nGlobal.autoGen5716,
    'note': () => l10nGlobal.autoGen5717,
  };

  static final ssdtSLPB = {
    'name': 'SSDT-SLPB',
    'remark': () => l10nGlobal.autoGen5718,
    'note': () => l10nGlobal.autoGen5719,
  };

  static final ssdtMEM2 = {
    'name': 'SSDT-MEM2',
    'remark': () => l10nGlobal.autoGen5720,
    'note': () => l10nGlobal.autoGen5721,
  };
}
