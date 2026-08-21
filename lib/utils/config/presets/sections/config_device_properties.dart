// ignore_for_file: constant_identifier_names

import '../../models/device_properties/device_property_item.dart';
import '../../models/device_properties/igpu_model.dart';

class ConfigDp {
  static const pciPath = "PciRoot(0x0)/Pci(0x2,0x0)";

  static const imei_pciPath = "PciRoot(0x0)/Pci(0x16,0x0)";

  static DevicePropertyItem sandyBridge_imei = DevicePropertyItem(
    key: 'device-id',
    dataType: 'data',
    value: '3A1C0000',
    comment: '2nd Gen CPU - 3rd Gen Motherboard Hybrid',
  );

  static DevicePropertyItem ivyBridge_imei = DevicePropertyItem(
    key: 'device-id',
    dataType: 'data',
    value: '3A1E0000',
    comment: '3rd Gen CPU - 2nd Gen Motherboard Hybrid',
  );

  /// 2nd Gen, do not drive iGPU
  static DevicePropertyItem display_none_2th = DevicePropertyItem(
    key: 'AAPL,snb-platform-id',
    dataType: 'data',
    value: '11223344',
    comment: 'Do not drive iGPU during installation (prevents framebuffer black screen and kernel panic)',
    display: false,
  );

  /// 3rd Gen+, do not drive iGPU
  static DevicePropertyItem display_none_3th = display_none_2th.copyWith(
    key: 'AAPL,ig-platform-id',
  );

  static DevicePropertyItem device_id = DevicePropertyItem(
    key: 'device-id',
    dataType: 'data',
    value: 'Spoofed Device ID',
  );

  /// 2nd Gen, compute-only
  static DevicePropertyItem comuting_id_2th = DevicePropertyItem(
      key: 'AAPL,snb-platform-id',
      dataType: 'data',
      value: '',
      comment: 'iGPU used for hardware acceleration/compute only, display output via dGPU',
      display: false);

  /// 3rd Gen+, compute-only
  static DevicePropertyItem comuting_id_3th =
      comuting_id_2th.copyWith(key: 'AAPL,ig-platform-id', display: false);

  static DevicePropertyItem intel_desktop_display_2th =
      display_none_2th.copyWith(
          value: '10000300', comment: 'HD 3000, HD P3000 and similar iGPUs', display: true);

  static DevicePropertyItem intel_desktop_display_fakeid_2th =
      device_id.copyWith(
    value: '26010000',
  );

  static DevicePropertyItem intel_desktop_computing_fakeid_2th =
      device_id.copyWith(
    value: '02010000',
  );

  static DevicePropertyItem intel_desktop_computing_id_2th =
      comuting_id_2th.copyWith(
    value: '00000500',
  );

  static IgpuPropertyModel intel_desktop =
      IgpuPropertyModel(pciPath: pciPath, propertyItems: []);
  static IgpuPropertyModel intel_desktop_imei_2th = IgpuPropertyModel(
      pciPath: imei_pciPath, propertyItems: [sandyBridge_imei]);

  /// 2nd Gen iGPU, display output
  static List<IgpuPropertyModel> intel_desktop_2th = [
    intel_desktop.copyWith(
      pciPath: pciPath,
      propertyItems: [
        intel_desktop_display_2th,
        intel_desktop_display_fakeid_2th
      ],
    )
  ];

  /// 2nd Gen iGPU, disabled display output
  static List<IgpuPropertyModel> intel_desktop_display_none_2th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_2th],
    )
  ];

  /// 2nd Gen iGPU, compute-only
  ///
  static List<IgpuPropertyModel> intel_desktop_computing_2th = [
    intel_desktop.copyWith(propertyItems: [intel_desktop_computing_id_2th])
  ];

  /// 3rd Gen, iGPU display output
  static DevicePropertyItem intel_desktop_display_3th =
      display_none_3th.copyWith(
          value: '0A006601', comment: 'HD 4000, HD P4000 and similar iGPUs', display: true);

  static DevicePropertyItem intel_desktop_display_fakeid_3th =
      device_id.copyWith(
    value: '66010000',
  );

  static DevicePropertyItem intel_desktop_computing_id_3th =
      comuting_id_3th.copyWith(
    value: '07006201',
  );

  static DevicePropertyItem intel_desktop_computing_fakeid_3th =
      device_id.copyWith(
    value: '02010000',
  );

  static IgpuPropertyModel intel_desktop_imei_3th =
      IgpuPropertyModel(pciPath: imei_pciPath, propertyItems: [ivyBridge_imei]);

  /// 3rd Gen iGPU, display output
  static List<IgpuPropertyModel> intel_desktop_3th = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_3th,
        intel_desktop_display_fakeid_3th
      ],
    )
  ];

  /// 3rd Gen iGPU, disabled display output
  static List<IgpuPropertyModel> intel_desktop_display_none_3th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];

  /// 3rd Gen iGPU compute properties
  static List<IgpuPropertyModel> intel_desktop_computing_3th = [
    intel_desktop.copyWith(propertyItems: [intel_desktop_computing_id_3th])
  ];

  /// 4th Gen, iGPU display output
  static DevicePropertyItem intel_desktop_display_4th =
      intel_desktop_display_3th.copyWith(
          value: '0300220D', comment: 'HD 4400, HD 4600, HD P4600 and similar iGPUs');

  static DevicePropertyItem intel_desktop_display_fakeid_4th =
      device_id.copyWith(
    value: '12040000',
  );

  static DevicePropertyItem intel_desktop_computing_id_4th =
      comuting_id_3th.copyWith(
    value: '04001204',
  );

  /// 4th Gen, display output
  static List<IgpuPropertyModel> intel_desktop_4th = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_4th,
        intel_desktop_display_fakeid_4th
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_display_none_4th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];

  /// 4th Gen, compute-only
  static List<IgpuPropertyModel> intel_desktop_computing_4th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_4th],
    )
  ];

  /// 5th Gen, iGPU display output
  static DevicePropertyItem intel_desktop_display_5th_1 =
      intel_desktop_display_3th.copyWith(
          value: '07002216', comment: 'Iris Pro 6200/6300 and similar iGPUs');

  static DevicePropertyItem intel_desktop_display_fakeid_5th_1 =
      device_id.copyWith(
    value: '26160000',
  );

  static DevicePropertyItem intel_desktop_display_5th_2 =
      intel_desktop_display_3th.copyWith(
          value: '03001216', comment: 'HD 5600 iGPU (P6200, P6300 can spoof this device)');

  static DevicePropertyItem intel_desktop_display_fakeid_5th_2 =
      device_id.copyWith(
    value: '12160000',
  );

  static DevicePropertyItem intel_desktop_display_5th_3 =
      intel_desktop_display_3th.copyWith(
          value: '00002B16', comment: 'HD 6000, Iris 6100 and similar iGPUs');

  static DevicePropertyItem intel_desktop_display_fakeid_5th_3 =
      device_id.copyWith(
    value: '26160000',
  );

  static DevicePropertyItem intel_desktop_computing_id_5th =
      comuting_id_3th.copyWith(
    value: '04001204',
  );

  /// 5th Gen, display output
  static List<IgpuPropertyModel> intel_desktop_5th_1 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_5th_1,
        intel_desktop_display_fakeid_5th_1
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_5th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_5th_2,
        intel_desktop_display_fakeid_5th_2
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_5th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_5th_3,
        intel_desktop_display_fakeid_5th_3
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_display_none_5th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];

  /// 5th Gen, compute-only
  static List<IgpuPropertyModel> intel_desktop_computing_5th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_5th],
    )
  ];

  /// 6th Gen, iGPU display output
  static DevicePropertyItem intel_desktop_display_6th_1 =
      intel_desktop_display_3th.copyWith(
          value: '00001659', comment: 'HD 520, HD 530 spoofed as HD 620 (for macOS Ventura+)');

  static DevicePropertyItem intel_desktop_display_fakeid_6th_1 =
      device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_desktop_display_6th_2 =
      intel_desktop_display_3th.copyWith(
          value: '00001B59',
          comment: 'HD 520, HD 530 spoofed as HD 620 (for macOS Ventura+, alternative)');

  static DevicePropertyItem intel_desktop_display_fakeid_6th_2 =
      device_id.copyWith(
    value: '1B590000',
  );

  static DevicePropertyItem intel_desktop_display_6th_3 =
      intel_desktop_display_3th.copyWith(
          value: '00001219',
          comment: 'HD 530, HD P530 500-series iGPUs (for macOS Monterey and older)');

  static DevicePropertyItem intel_desktop_display_fakeid_6th_3 =
      device_id.copyWith(
    value: '1B190000',
  );

  static DevicePropertyItem intel_desktop_computing_id_6th =
      comuting_id_3th.copyWith(
    value: '01001219',
  );

  /// 6th Gen, display output
  static List<IgpuPropertyModel> intel_desktop_6th_1 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_6th_1,
        intel_desktop_display_fakeid_6th_1
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_6th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_6th_2,
        intel_desktop_display_fakeid_6th_2
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_6th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_6th_3,
        intel_desktop_display_fakeid_6th_3
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_display_none_6th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];

  /// 6th Gen, compute-only
  static List<IgpuPropertyModel> intel_desktop_computing_6th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_6th],
    )
  ];

  /// 7th Gen, iGPU display output
  static DevicePropertyItem intel_desktop_display_7th_1 =
      intel_desktop_display_3th.copyWith(
          value: '00001259', comment: 'HD 630, HD P630 and similar iGPUs');

  static DevicePropertyItem intel_desktop_display_fakeid_7th_1 =
      device_id.copyWith(
    value: '12590000',
  );

  static DevicePropertyItem intel_desktop_display_7th_2 =
      intel_desktop_display_3th.copyWith(
          value: '07009B3E', comment: 'HD 630, P630 spoofed as UHD 630 (Method 1)');

  static DevicePropertyItem intel_desktop_display_fakeid_7th_2 =
      device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_desktop_display_7th_3 =
      intel_desktop_display_3th.copyWith(
          value: '00009B3E', comment: 'HD 630, P630 spoofed as UHD 630 (Method 2)');

  static DevicePropertyItem intel_desktop_display_fakeid_7th_3 =
      device_id.copyWith(
    value: '9B3E0000',
  );
  static DevicePropertyItem intel_desktop_computing_id_7th =
      comuting_id_3th.copyWith(
    value: '03001259',
  );

  /// 7th Gen, display output
  static List<IgpuPropertyModel> intel_desktop_7th_1 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_7th_1,
        intel_desktop_display_fakeid_7th_1,
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_7th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_7th_2,
        intel_desktop_display_fakeid_7th_2,
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_7th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_7th_3,
        intel_desktop_display_fakeid_7th_3,
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_display_none_7th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];

  /// 7th Gen, compute-only
  static List<IgpuPropertyModel> intel_desktop_computing_7th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_7th],
    )
  ];

  /// 8th Gen, iGPU display output
  static DevicePropertyItem intel_desktop_display_8th_1 =
      intel_desktop_display_3th.copyWith(
          value: '07009B3E', comment: 'UHD 630 iGPU display output (Method 1)');

  static DevicePropertyItem intel_desktop_display_fakeid_8th_1 =
      device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_desktop_display_8th_2 =
      intel_desktop_display_3th.copyWith(
          value: '00009B3E', comment: 'UHD 630 iGPU display output (Method 2)');

  static DevicePropertyItem intel_desktop_display_fakeid_8th_2 =
      intel_desktop_display_fakeid_8th_1.copyWith();

  static DevicePropertyItem intel_desktop_computing_id_8th =
      comuting_id_3th.copyWith(
    value: '0300913E',
  );

  /// 8th Gen, display output
  static List<IgpuPropertyModel> intel_desktop_8th_1 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_8th_1,
        intel_desktop_display_fakeid_8th_1
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_8th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_8th_2,
        intel_desktop_display_fakeid_8th_2
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_desktop_display_none_8th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];
  static List<IgpuPropertyModel> intel_desktop_computing_8th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_8th],
    )
  ];

  static DevicePropertyItem intel_desktop_computing_id_10th =
      comuting_id_3th.copyWith(
    value: '0300C89B',
  );

  /// 10th Gen, iGPU compute-only
  static List<IgpuPropertyModel> intel_desktop_computing_10th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_10th],
    )
  ];

  static DevicePropertyItem intel_laptop_display_1th = DevicePropertyItem(
    key: 'framebuffer-patch-enable',
    dataType: 'data',
    value: '01000000',
    comment: 'Intel HD Graphics (e.g. i3 380M, i5 480M built-in iGPU)',
  );

  static DevicePropertyItem framebuffe_singlelink = DevicePropertyItem(
    key: 'framebuffer-singlelink',
    dataType: 'data',
    value: '01000000',
    comment: '',
  );

  static List<IgpuPropertyModel> intel_laptop_1th = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_1th, framebuffe_singlelink],
    )
  ];

  static DevicePropertyItem intel_laptop_display_2th = DevicePropertyItem(
    key: 'AAPL,snb-platform-id',
    dataType: 'data',
    value: '00000100',
    comment: 'HD 3000 iGPU display output, for <= 1366x768 resolution)',
  );

  static DevicePropertyItem AAPL00_DualLink = DevicePropertyItem(
    key: 'AAPL00,DualLink',
    dataType: 'data',
    value: '01000000',
    comment: 'Enable support for >= 1600x900 resolution',
  );

  static DevicePropertyItem intel_laptop_device_id = DevicePropertyItem(
    key: 'device-id',
    dataType: 'data',
    value: '16010000',
    comment: 'Spoofed Device ID',
  );

  static DevicePropertyItem intel_laptop_imei_2th = sandyBridge_imei.copyWith();

  static IgpuPropertyModel intel_laptop_imei_model_2th = IgpuPropertyModel(
      pciPath: imei_pciPath, propertyItems: [intel_laptop_imei_2th]);

  static List<IgpuPropertyModel> intel_laptop_2th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_2th],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_2th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_laptop_display_2th.copyWith(
            comment: 'HD 3000 iGPU display output, for >= 1600x900 resolution)'),
        AAPL00_DualLink
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_2th_3 = [
    intel_desktop.copyWith(
      propertyItems: [display_none_2th],
    )
  ];

  static DevicePropertyItem intel_laptop_display_3th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '03006601',
    comment: 'HD 4000 iGPU (Method 1), for <= 1366x768 resolution, LVDS link',
  );

  static DevicePropertyItem intel_laptop_display_3th_2 =
      intel_laptop_display_3th_1.copyWith(
    value: '04006601',
    comment: 'HD 4000 iGPU (Method 2), for >= 1600x900 resolution, LVDS link',
  );

  static DevicePropertyItem intel_laptop_display_3th_3 =
      intel_laptop_display_3th_1.copyWith(
    value: '09006601',
    comment: 'HD 4000 iGPU (Method 3), for eDP display connection)',
  );

  static DevicePropertyItem intel_laptop_device_id_3th =
      intel_laptop_device_id.copyWith(
    value: '66010000',
  );

  static DevicePropertyItem intel_laptop_imei_3th = ivyBridge_imei.copyWith();

  static IgpuPropertyModel intel_laptop_imei_model_3th = IgpuPropertyModel(
      pciPath: imei_pciPath, propertyItems: [intel_laptop_imei_3th]);

  static List<IgpuPropertyModel> intel_laptop_3th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_3th_1, intel_laptop_device_id_3th],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_3th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_laptop_display_3th_2.copyWith(),
        intel_laptop_device_id_3th
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_3th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_laptop_display_3th_3.copyWith(),
        intel_laptop_device_id_3th
      ],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_3th_4 = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];

  static DevicePropertyItem intel_laptop_display_4th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '0600260A',
    comment: 'HD 4200, HD 4400, HD 4600 iGPUs',
  );

  static DevicePropertyItem intel_laptop_display_4th_2 =
      intel_laptop_display_3th_1.copyWith(
    value: '0500260A',
    comment: 'HD 5000, HD 5100, HD 5200 iGPUs',
  );

  static DevicePropertyItem intel_laptop_display_4th_3 = display_none_3th;

  static DevicePropertyItem intel_laptop_device_id_4th =
      intel_laptop_device_id.copyWith(
    value: '12040000',
  );

  static List<IgpuPropertyModel> intel_laptop_4th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_4th_1, intel_laptop_device_id_4th],
    )
  ];
  static List<IgpuPropertyModel> intel_laptop_4th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_4th_2, intel_laptop_device_id_4th],
    ),
    intel_laptop_imei_model_3th
  ];
  static List<IgpuPropertyModel> intel_laptop_4th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_4th_3],
    )
  ];

  static DevicePropertyItem intel_laptop_display_5th = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '06002616',
    comment: 'HD 5500 iGPU',
  );

  static DevicePropertyItem intel_laptop_display_5th_4 = display_none_3th;

  static DevicePropertyItem intel_laptop_device_id_5th_1 =
      intel_laptop_device_id.copyWith(
    value: '16160000',
  );

  static DevicePropertyItem intel_laptop_device_id_5th_2 =
      intel_laptop_device_id.copyWith(
    value: '26160000',
  );

  static DevicePropertyItem intel_laptop_device_id_5th_3 =
      intel_laptop_device_id.copyWith(
    value: '26160000',
  );

  static List<IgpuPropertyModel> intel_laptop_5th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_5th, intel_laptop_device_id_5th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_laptop_5th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_laptop_display_5th.copyWith(comment: 'HD 5600 iGPU'),
        intel_laptop_device_id_5th_2
      ],
    ),
  ];
  static List<IgpuPropertyModel> intel_laptop_5th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_laptop_display_5th.copyWith(
            value: '00002B16', comment: 'HD 6000 iGPU'),
        intel_laptop_device_id_5th_3
      ],
    ),
  ];
  static List<IgpuPropertyModel> intel_laptop_5th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_5th_4],
    )
  ];

  static DevicePropertyItem intel_laptop_display_6th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '00001659',
    comment: 'HD 520, HD 530 spoofed as HD 620 (for macOS Ventura+)',
  );
  static DevicePropertyItem intel_laptop_device_id_6th_1 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );
  static DevicePropertyItem intel_laptop_display_6th_2 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001619',
    comment: 'HD 515, HD 520, HD 530, HD 540, HD 550, P530 iGPUs (for macOS Monterey and older)',
  );
  static DevicePropertyItem intel_laptop_device_id_6th_2 =
      intel_laptop_device_id.copyWith(
    value: '16190000',
  );

  static DevicePropertyItem intel_laptop_display_6th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001E19',
    comment: 'HD 515 iGPU alternative',
  );

  static DevicePropertyItem intel_laptop_display_6th_4 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001B19',
    comment: 'HD 510 iGPU',
  );
  static DevicePropertyItem intel_laptop_device_id_6th_4 =
      intel_laptop_device_id.copyWith(
    value: '02190000',
  );

  static DevicePropertyItem intel_laptop_display_6th_5 = display_none_3th;

  static List<IgpuPropertyModel> intel_laptop_6th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_6th_1, intel_laptop_device_id_6th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_laptop_6th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_6th_2, intel_laptop_device_id_6th_2],
    ),
  ];
  static List<IgpuPropertyModel> intel_laptop_6th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_6th_3],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_6th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_6th_4, intel_laptop_device_id_6th_4],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_6th_5 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_6th_5],
    )
  ];

  static DevicePropertyItem intel_laptop_display_7th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '00001B59',
    comment: 'HD 615, HD 620, HD 630, HD 640, HD 650 iGPUs',
  );
  static DevicePropertyItem intel_laptop_device_id_7th_1 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_laptop_display_7th_2 =
      intel_nuc_display_7th_1.copyWith(
    value: '00001659',
    comment: 'HD/UHD 620 iGPU alternative',
  );
  static DevicePropertyItem intel_laptop_device_id_7th_2 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_laptop_display_7th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '0000C087',
    comment: 'UHD 617, UHD 620 iGPUs',
  );
  static DevicePropertyItem intel_laptop_device_id_7th_3 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_laptop_display_7th_4 = display_none_3th;

  static List<IgpuPropertyModel> intel_laptop_7th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_7th_1, intel_laptop_device_id_7th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_laptop_7th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_7th_2, intel_laptop_device_id_7th_2],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_7th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_7th_3, intel_laptop_device_id_7th_3],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_7th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_7th_4],
    )
  ];

  static DevicePropertyItem intel_laptop_display_8th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '0900A53E',
    comment: 'UHD 630 iGPU',
  );
  static DevicePropertyItem intel_laptop_device_id_8th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_laptop_display_8th_2 =
      intel_laptop_display_8th_1.copyWith(
    value: '00009B3E',
    comment: 'UHD 620 iGPU',
  );
  static DevicePropertyItem intel_laptop_device_id_8th_2 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_laptop_display_8th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '0400A53E',
    comment: 'Intel Iris Plus 655 iGPU',
  );
  static DevicePropertyItem intel_laptop_device_id_8th_3 =
      intel_laptop_device_id.copyWith(
    value: 'A53E0000',
  );

  static DevicePropertyItem intel_laptop_display_8th_4 = display_none_3th;

  static List<IgpuPropertyModel> intel_laptop_8th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_8th_1, intel_laptop_device_id_8th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_laptop_8th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_8th_2, intel_laptop_device_id_8th_2],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_8th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_8th_3, intel_laptop_device_id_8th_3],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_8th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_8th_4],
    )
  ];

  static DevicePropertyItem intel_laptop_display_9th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '0900A53E',
    comment: 'UHD 630 iGPU',
  );
  static DevicePropertyItem intel_laptop_device_id_9th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_laptop_display_9th_2 =
      intel_laptop_display_9th_1.copyWith(
    value: '00009B3E',
    comment: 'UHD 620 iGPU',
  );
  static DevicePropertyItem intel_laptop_device_id_9th_2 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_laptop_display_9th_3 = display_none_3th;

  static List<IgpuPropertyModel> intel_laptop_9th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_9th_1, intel_laptop_device_id_9th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_laptop_9th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_9th_2, intel_laptop_device_id_9th_2],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_9th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_9th_3],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_10th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_9th_1, intel_laptop_device_id_9th_1],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_10th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_9th_2, intel_laptop_device_id_9th_2],
    )
  ];

  static List<IgpuPropertyModel> intel_laptop_10th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_9th_3],
    )
  ];

  static DevicePropertyItem intel_laptop_display_iceLake = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '0000528A',
    comment: 'G4/G7 Series iGPUs',
  );
  static DevicePropertyItem intel_laptop_device_id_iceLake =
      intel_laptop_device_id.copyWith(
    value: '528A0000',
  );

  static DevicePropertyItem intel_laptop_display_none_iceLake =
      display_none_3th;

  static List<IgpuPropertyModel> intel_laptop_iceLake_1 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_laptop_display_iceLake,
        intel_laptop_device_id_iceLake
      ],
    )
  ];
  static List<IgpuPropertyModel> intel_laptop_iceLake_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_none_iceLake],
    )
  ];

  static DevicePropertyItem intel_nuc_display_1th =
      intel_laptop_display_1th.copyWith();

  static List<IgpuPropertyModel> intel_nuc_1th = [
    intel_desktop.copyWith(
      propertyItems: [intel_laptop_display_1th, framebuffe_singlelink],
    )
  ];

  static DevicePropertyItem intel_nuc_display_2th =
      intel_laptop_display_2th.copyWith(
    value: '10000300',
    comment: 'HD 3000 iGPU display output',
  );

  static DevicePropertyItem intel_nuc_device_id =
      intel_laptop_device_id.copyWith();

  static List<IgpuPropertyModel> intel_nuc_2th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_2th],
    )
  ];

  static List<IgpuPropertyModel> intel_nuc_2th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        display_none_2th,
      ],
    ),
  ];

  static DevicePropertyItem intel_nuc_display_3th = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '0B006601',
    comment: 'HD 4000 iGPU display output',
  );
  static DevicePropertyItem intel_nuc_device_id_3th =
      intel_laptop_device_id.copyWith(
    value: '66010000',
  );

  static List<IgpuPropertyModel> intel_nuc_3th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_3th, intel_nuc_device_id_3th],
    ),
  ];

  static List<IgpuPropertyModel> intel_nuc_3th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        display_none_3th,
      ],
    ),
  ];

  static DevicePropertyItem intel_nuc_display_4th = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '0300220D',
    comment:
        'HD 4200, HD 4400, HD 4600, HD P4600 iGPUs (Recommended to enable 4th Gen iGPU patches in advanced settings)',
  );
  static DevicePropertyItem intel_nuc_device_id_4th =
      intel_laptop_device_id.copyWith(
    value: '12040000',
  );

  static List<IgpuPropertyModel> intel_nuc_4th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_4th, intel_nuc_device_id_4th],
    ),
  ];

  static List<IgpuPropertyModel> intel_nuc_4th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        display_none_3th,
      ],
    ),
  ];

  static DevicePropertyItem intel_nuc_display_5th = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '02002616',
    comment: 'HD 5500 iGPU',
  );

  static DevicePropertyItem intel_nuc_display_5th_4 = display_none_3th;

  static DevicePropertyItem intel_nuc_device_id_5th_1 =
      intel_laptop_device_id.copyWith(
    value: '16160000',
  );

  static DevicePropertyItem intel_nuc_device_id_5th_2 =
      intel_laptop_device_id.copyWith(
    value: '26160000',
  );

  static DevicePropertyItem intel_nuc_device_id_5th_3 =
      intel_laptop_device_id.copyWith(
    value: '26160000',
  );

  static List<IgpuPropertyModel> intel_nuc_5th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_5th, intel_nuc_device_id_5th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_5th_2 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_nuc_display_5th.copyWith(comment: 'HD 5600 iGPU'),
        intel_nuc_device_id_5th_2
      ],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_5th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_nuc_display_5th.copyWith(value: '00002B16', comment: 'HD 6000 iGPU'),
        intel_nuc_device_id_5th_3
      ],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_5th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_5th_4],
    )
  ];

  static DevicePropertyItem intel_nuc_display_6th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '00001B59',
    comment: 'HD 520, HD 530 spoofed as HD 620 (for macOS Ventura+)',
  );
  static DevicePropertyItem intel_nuc_device_id_6th_1 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );
  static DevicePropertyItem intel_nuc_display_6th_2 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001E19',
    comment: 'HD 515 iGPU',
  );

  static DevicePropertyItem intel_nuc_display_6th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '02001619',
    comment: 'HD 520/530 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_6th_3 =
      intel_laptop_device_id.copyWith(
    value: '16190000',
  );

  static DevicePropertyItem intel_nuc_display_6th_4 =
      intel_laptop_display_6th_1.copyWith(
    value: '02002619',
    comment: 'HD 540/550 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_6th_4 =
      intel_laptop_device_id.copyWith(
    value: '16190000',
  );
  static DevicePropertyItem intel_nuc_display_6th_5 =
      intel_laptop_display_6th_1.copyWith(
    value: '05003B19',
    comment: 'HD 580 iGPU',
  );

  static DevicePropertyItem intel_nuc_display_6th_6 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001619',
    comment: 'HD P530 iGPU (e.g. Xeon E3-1245 v5 built-in iGPU)',
  );
  static DevicePropertyItem intel_nuc_device_id_6th_6 =
      intel_laptop_device_id.copyWith(
    value: '16190000',
  );

  static DevicePropertyItem intel_nuc_display_6th_7 = display_none_3th;

  static List<IgpuPropertyModel> intel_nuc_6th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_6th_1, intel_nuc_device_id_6th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_6th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_6th_2],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_6th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_6th_3, intel_nuc_device_id_6th_3],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_6th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_6th_4, intel_nuc_device_id_6th_4],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_6th_5 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_6th_5],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_6th_6 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_6th_6, intel_nuc_device_id_6th_6],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_6th_7 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_6th_7],
    )
  ];

  static DevicePropertyItem intel_nuc_display_7th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '00001E59',
    comment: 'HD 615 iGPU',
  );

  static DevicePropertyItem intel_nuc_display_7th_2 =
      intel_nuc_display_7th_1.copyWith(
    value: '00001B59',
    comment: 'HD 630, HD P630 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_7th_2 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_nuc_display_7th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '02002659',
    comment: 'HD 640/650 iGPU',
  );

  static DevicePropertyItem intel_nuc_display_7th_4 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001659',
    comment: 'HD/UHD 620 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_7th_4 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_nuc_display_7th_5 = display_none_3th;

  static List<IgpuPropertyModel> intel_nuc_7th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_7th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_7th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_7th_2, intel_nuc_device_id_7th_2],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_7th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_7th_3],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_7th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_7th_4, intel_nuc_device_id_7th_4],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_7th_5 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_7th_5],
    )
  ];

  static DevicePropertyItem intel_nuc_display_8th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '00009B3E',
    comment: 'UHD 620/630 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_8th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_nuc_display_8th_2 =
      intel_nuc_display_7th_1.copyWith(
    value: '0000A53E',
    comment: 'UHD 655 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_8th_2 =
      intel_laptop_device_id.copyWith(
    value: 'A53E0000',
  );

  static DevicePropertyItem intel_nuc_display_8th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '0400A53E',
    comment: 'Intel Iris Plus 655 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_8th_3 =
      intel_laptop_device_id.copyWith(
    value: 'A53E0000',
  );

  static DevicePropertyItem intel_nuc_display_8th_4 = display_none_3th;

  static List<IgpuPropertyModel> intel_nuc_8th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_8th_1, intel_nuc_device_id_8th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_8th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_8th_2, intel_nuc_device_id_8th_2],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_8th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_8th_3, intel_nuc_device_id_8th_3],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_8th_4 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_8th_4],
    )
  ];

  static DevicePropertyItem intel_nuc_display_9th_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '00009B3E',
    comment: 'UHD 620/630 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_9th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_nuc_display_9th_2 =
      intel_nuc_display_9th_1.copyWith(
    value: '0000A53E',
    comment: 'UHD 655 iGPU',
  );
  static DevicePropertyItem intel_nuc_device_id_9th_2 =
      intel_laptop_device_id.copyWith(
    value: 'A53E0000',
  );

  static DevicePropertyItem intel_nuc_display_9th_3 = display_none_3th;

  static List<IgpuPropertyModel> intel_nuc_9th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_9th_1, intel_nuc_device_id_9th_1],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_9th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_9th_2, intel_nuc_device_id_9th_2],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_9th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_9th_3],
    )
  ];

  static List<IgpuPropertyModel> intel_nuc_10th_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_9th_1, intel_nuc_device_id_9th_1],
    )
  ];

  static List<IgpuPropertyModel> intel_nuc_10th_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_9th_2, intel_nuc_device_id_9th_2],
    )
  ];

  static List<IgpuPropertyModel> intel_nuc_10th_3 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_9th_3],
    )
  ];

  static DevicePropertyItem intel_nuc_display_iceLake_1 = DevicePropertyItem(
    key: 'AAPL,ig-platform-id',
    dataType: 'data',
    value: '0000528A',
    comment: 'G4/G7 Series iGPUs',
  );
  static DevicePropertyItem intel_nuc_device_id_iceLake =
      intel_laptop_device_id.copyWith(
    value: '528A0000',
  );

  static DevicePropertyItem intel_nuc_display_iceLake_2 = display_none_3th;

  static List<IgpuPropertyModel> intel_nuc_iceLake_1 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_iceLake_1, intel_nuc_device_id_iceLake],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_iceLake_2 = [
    intel_desktop.copyWith(
      propertyItems: [intel_nuc_display_iceLake_2],
    )
  ];
}
