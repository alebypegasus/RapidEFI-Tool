import 'package:rapidefi/l10n/l10n_helper.dart';
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
    comment: () => l10nGlobal.autoGen5334,
  );

  static DevicePropertyItem ivyBridge_imei = DevicePropertyItem(
    key: 'device-id',
    dataType: 'data',
    value: '3A1E0000',
    comment: () => l10nGlobal.autoGen5335,
  );

  ///2代，不驱动核显
  static DevicePropertyItem display_none_2th = DevicePropertyItem(
    key: 'AAPL,snb-platform-id',
    dataType: 'data',
    value: '11223344',
    comment: () => l10nGlobal.autoGen5336,
    display: false,
  );

  ///3代及以上,不驱动核显
  static DevicePropertyItem display_none_3th = display_none_2th.copyWith(
    key: 'AAPL,ig-platform-id',
  );

  static DevicePropertyItem device_id = DevicePropertyItem(
    key: 'device-id',
    dataType: 'data',
    value: l10nGlobal.autoGen5337,
  );

  ///2代,计算
  static DevicePropertyItem comuting_id_2th = DevicePropertyItem(
      key: 'AAPL,snb-platform-id',
      dataType: 'data',
      value: '',
      comment: () => l10nGlobal.autoGen5338,
      display: false);

  ///3代及以上,计算
  static DevicePropertyItem comuting_id_3th =
      comuting_id_2th.copyWith(key: 'AAPL,ig-platform-id', display: false);

  static DevicePropertyItem intel_desktop_display_2th =
      display_none_2th.copyWith(
          value: '10000300', comment: () => l10nGlobal.autoGen5339, display: true);

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

  ///2代核显，输出显示
  static List<IgpuPropertyModel> intel_desktop_2th = [
    intel_desktop.copyWith(
      pciPath: pciPath,
      propertyItems: [
        intel_desktop_display_2th,
        intel_desktop_display_fakeid_2th
      ],
    )
  ];

  ///2代核显,不驱动输出显示
  static List<IgpuPropertyModel> intel_desktop_display_none_2th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_2th],
    )
  ];

  ///2代核显,计算
  ///
  static List<IgpuPropertyModel> intel_desktop_computing_2th = [
    intel_desktop.copyWith(propertyItems: [intel_desktop_computing_id_2th])
  ];

  ///3代,核显输出
  static DevicePropertyItem intel_desktop_display_3th =
      display_none_3th.copyWith(
          value: '0A006601', comment: () => l10nGlobal.autoGen5340, display: true);

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

  ///3代核显,输出显示
  static List<IgpuPropertyModel> intel_desktop_3th = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_desktop_display_3th,
        intel_desktop_display_fakeid_3th
      ],
    )
  ];

  ///3代核显,不驱动输出显示
  static List<IgpuPropertyModel> intel_desktop_display_none_3th = [
    intel_desktop.copyWith(
      propertyItems: [display_none_3th],
    )
  ];

  ///3代核显计算属性
  static List<IgpuPropertyModel> intel_desktop_computing_3th = [
    intel_desktop.copyWith(propertyItems: [intel_desktop_computing_id_3th])
  ];

  ///4代,核显输出
  static DevicePropertyItem intel_desktop_display_4th =
      intel_desktop_display_3th.copyWith(
          value: '0300220D', comment: () => l10nGlobal.autoGen5341);

  static DevicePropertyItem intel_desktop_display_fakeid_4th =
      device_id.copyWith(
    value: '12040000',
  );

  static DevicePropertyItem intel_desktop_computing_id_4th =
      comuting_id_3th.copyWith(
    value: '04001204',
  );

  ///4代,输出显示
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

  ///4代,计算
  static List<IgpuPropertyModel> intel_desktop_computing_4th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_4th],
    )
  ];

  ///5代,核显输出
  static DevicePropertyItem intel_desktop_display_5th_1 =
      intel_desktop_display_3th.copyWith(
          value: '07002216', comment: () => l10nGlobal.autoGen5342);

  static DevicePropertyItem intel_desktop_display_fakeid_5th_1 =
      device_id.copyWith(
    value: '26160000',
  );

  static DevicePropertyItem intel_desktop_display_5th_2 =
      intel_desktop_display_3th.copyWith(
          value: '03001216', comment: () => l10nGlobal.autoGen5343);

  static DevicePropertyItem intel_desktop_display_fakeid_5th_2 =
      device_id.copyWith(
    value: '12160000',
  );

  static DevicePropertyItem intel_desktop_display_5th_3 =
      intel_desktop_display_3th.copyWith(
          value: '00002B16', comment: () => l10nGlobal.autoGen5344);

  static DevicePropertyItem intel_desktop_display_fakeid_5th_3 =
      device_id.copyWith(
    value: '26160000',
  );

  static DevicePropertyItem intel_desktop_computing_id_5th =
      comuting_id_3th.copyWith(
    value: '04001204',
  );

  ///5代,输出显示
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

  ///5代,计算
  static List<IgpuPropertyModel> intel_desktop_computing_5th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_5th],
    )
  ];

  ///6代,核显输出
  static DevicePropertyItem intel_desktop_display_6th_1 =
      intel_desktop_display_3th.copyWith(
          value: '00001659', comment: () => l10nGlobal.autoGen5345);

  static DevicePropertyItem intel_desktop_display_fakeid_6th_1 =
      device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_desktop_display_6th_2 =
      intel_desktop_display_3th.copyWith(
          value: '00001B59',
          comment: () => l10nGlobal.autoGen5346);

  static DevicePropertyItem intel_desktop_display_fakeid_6th_2 =
      device_id.copyWith(
    value: '1B590000',
  );

  static DevicePropertyItem intel_desktop_display_6th_3 =
      intel_desktop_display_3th.copyWith(
          value: '00001219',
          comment: () => l10nGlobal.autoGen5347);

  static DevicePropertyItem intel_desktop_display_fakeid_6th_3 =
      device_id.copyWith(
    value: '1B190000',
  );

  static DevicePropertyItem intel_desktop_computing_id_6th =
      comuting_id_3th.copyWith(
    value: '01001219',
  );

  ///6代,输出显示
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

  ///6代,计算
  static List<IgpuPropertyModel> intel_desktop_computing_6th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_6th],
    )
  ];

  ///7代,核显输出
  static DevicePropertyItem intel_desktop_display_7th_1 =
      intel_desktop_display_3th.copyWith(
          value: '00001259', comment: () => l10nGlobal.autoGen5348);

  static DevicePropertyItem intel_desktop_display_fakeid_7th_1 =
      device_id.copyWith(
    value: '12590000',
  );

  static DevicePropertyItem intel_desktop_display_7th_2 =
      intel_desktop_display_3th.copyWith(
          value: '07009B3E', comment: () => l10nGlobal.autoGen5349);

  static DevicePropertyItem intel_desktop_display_fakeid_7th_2 =
      device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_desktop_display_7th_3 =
      intel_desktop_display_3th.copyWith(
          value: '00009B3E', comment: () => l10nGlobal.autoGen5350);

  static DevicePropertyItem intel_desktop_display_fakeid_7th_3 =
      device_id.copyWith(
    value: '9B3E0000',
  );
  static DevicePropertyItem intel_desktop_computing_id_7th =
      comuting_id_3th.copyWith(
    value: '03001259',
  );

  ///7代,输出显示
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

  ///7代,计算
  static List<IgpuPropertyModel> intel_desktop_computing_7th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_7th],
    )
  ];

  ///8代,核显输出
  static DevicePropertyItem intel_desktop_display_8th_1 =
      intel_desktop_display_3th.copyWith(
          value: '07009B3E', comment: () => l10nGlobal.autoGen5351);

  static DevicePropertyItem intel_desktop_display_fakeid_8th_1 =
      device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_desktop_display_8th_2 =
      intel_desktop_display_3th.copyWith(
          value: '00009B3E', comment: () => l10nGlobal.autoGen5352);

  static DevicePropertyItem intel_desktop_display_fakeid_8th_2 =
      intel_desktop_display_fakeid_8th_1.copyWith();

  static DevicePropertyItem intel_desktop_computing_id_8th =
      comuting_id_3th.copyWith(
    value: '0300913E',
  );

  ///8代,输出显示
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

  ///10代,核显计算
  static List<IgpuPropertyModel> intel_desktop_computing_10th = [
    intel_desktop.copyWith(
      propertyItems: [intel_desktop_computing_id_10th],
    )
  ];

  static DevicePropertyItem intel_laptop_display_1th = DevicePropertyItem(
    key: 'framebuffer-patch-enable',
    dataType: 'data',
    value: '01000000',
    comment: () => l10nGlobal.autoGen5353,
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
    comment: () => l10nGlobal.autoGen5354,
  );

  static DevicePropertyItem AAPL00_DualLink = DevicePropertyItem(
    key: 'AAPL00,DualLink',
    dataType: 'data',
    value: '01000000',
    comment: () => l10nGlobal.autoGen5355,
  );

  static DevicePropertyItem intel_laptop_device_id = DevicePropertyItem(
    key: 'device-id',
    dataType: 'data',
    value: '16010000',
    comment: () => l10nGlobal.autoGen5337,
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
            comment: () => l10nGlobal.autoGen5356),
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
    comment: () => l10nGlobal.autoGen5357,
  );

  static DevicePropertyItem intel_laptop_display_3th_2 =
      intel_laptop_display_3th_1.copyWith(
    value: '04006601',
    comment: () => l10nGlobal.autoGen5358,
  );

  static DevicePropertyItem intel_laptop_display_3th_3 =
      intel_laptop_display_3th_1.copyWith(
    value: '09006601',
    comment: () => l10nGlobal.autoGen5359,
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
    comment: () => l10nGlobal.autoGen5360,
  );

  static DevicePropertyItem intel_laptop_display_4th_2 =
      intel_laptop_display_3th_1.copyWith(
    value: '0500260A',
    comment: () => l10nGlobal.autoGen5361,
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
    comment: () => l10nGlobal.autoGen5362,
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
        intel_laptop_display_5th.copyWith(comment: () => l10nGlobal.autoGen5363),
        intel_laptop_device_id_5th_2
      ],
    ),
  ];
  static List<IgpuPropertyModel> intel_laptop_5th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_laptop_display_5th.copyWith(
            value: '00002B16', comment: () => l10nGlobal.autoGen5364),
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
    comment: () => l10nGlobal.autoGen5365,
  );
  static DevicePropertyItem intel_laptop_device_id_6th_1 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );
  static DevicePropertyItem intel_laptop_display_6th_2 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001619',
    comment: () => l10nGlobal.autoGen5366,
  );
  static DevicePropertyItem intel_laptop_device_id_6th_2 =
      intel_laptop_device_id.copyWith(
    value: '16190000',
  );

  static DevicePropertyItem intel_laptop_display_6th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001E19',
    comment: () => l10nGlobal.autoGen5367,
  );

  static DevicePropertyItem intel_laptop_display_6th_4 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001B19',
    comment: () => l10nGlobal.autoGen5368,
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
    comment: () => l10nGlobal.autoGen5369,
  );
  static DevicePropertyItem intel_laptop_device_id_7th_1 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_laptop_display_7th_2 =
      intel_nuc_display_7th_1.copyWith(
    value: '00001659',
    comment: () => l10nGlobal.autoGen5370,
  );
  static DevicePropertyItem intel_laptop_device_id_7th_2 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_laptop_display_7th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '0000C087',
    comment: () => l10nGlobal.autoGen5371,
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
    comment: () => l10nGlobal.autoGen5372,
  );
  static DevicePropertyItem intel_laptop_device_id_8th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_laptop_display_8th_2 =
      intel_laptop_display_8th_1.copyWith(
    value: '00009B3E',
    comment: () => l10nGlobal.autoGen5373,
  );
  static DevicePropertyItem intel_laptop_device_id_8th_2 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_laptop_display_8th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '0400A53E',
    comment: () => l10nGlobal.autoGen5374,
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
    comment: () => l10nGlobal.autoGen5372,
  );
  static DevicePropertyItem intel_laptop_device_id_9th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_laptop_display_9th_2 =
      intel_laptop_display_9th_1.copyWith(
    value: '00009B3E',
    comment: () => l10nGlobal.autoGen5373,
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
    comment: () => l10nGlobal.autoGen5375,
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
    comment: () => l10nGlobal.autoGen5376,
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
    comment: () => l10nGlobal.autoGen5377,
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
    comment: () => l10nGlobal.autoGen5378,
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
    comment: () => l10nGlobal.autoGen5362,
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
        intel_nuc_display_5th.copyWith(comment: () => l10nGlobal.autoGen5363),
        intel_nuc_device_id_5th_2
      ],
    )
  ];
  static List<IgpuPropertyModel> intel_nuc_5th_3 = [
    intel_desktop.copyWith(
      propertyItems: [
        intel_nuc_display_5th.copyWith(value: '00002B16', comment: () => l10nGlobal.autoGen5364),
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
    comment: () => l10nGlobal.autoGen5365,
  );
  static DevicePropertyItem intel_nuc_device_id_6th_1 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );
  static DevicePropertyItem intel_nuc_display_6th_2 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001E19',
    comment: () => l10nGlobal.autoGen5379,
  );

  static DevicePropertyItem intel_nuc_display_6th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '02001619',
    comment: () => l10nGlobal.autoGen5380,
  );
  static DevicePropertyItem intel_nuc_device_id_6th_3 =
      intel_laptop_device_id.copyWith(
    value: '16190000',
  );

  static DevicePropertyItem intel_nuc_display_6th_4 =
      intel_laptop_display_6th_1.copyWith(
    value: '02002619',
    comment: () => l10nGlobal.autoGen5381,
  );
  static DevicePropertyItem intel_nuc_device_id_6th_4 =
      intel_laptop_device_id.copyWith(
    value: '16190000',
  );
  static DevicePropertyItem intel_nuc_display_6th_5 =
      intel_laptop_display_6th_1.copyWith(
    value: '05003B19',
    comment: () => l10nGlobal.autoGen5382,
  );

  static DevicePropertyItem intel_nuc_display_6th_6 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001619',
    comment: () => l10nGlobal.autoGen5383,
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
    comment: () => l10nGlobal.autoGen5384,
  );

  static DevicePropertyItem intel_nuc_display_7th_2 =
      intel_nuc_display_7th_1.copyWith(
    value: '00001B59',
    comment: () => l10nGlobal.autoGen5385,
  );
  static DevicePropertyItem intel_nuc_device_id_7th_2 =
      intel_laptop_device_id.copyWith(
    value: '16590000',
  );

  static DevicePropertyItem intel_nuc_display_7th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '02002659',
    comment: () => l10nGlobal.autoGen5386,
  );

  static DevicePropertyItem intel_nuc_display_7th_4 =
      intel_laptop_display_6th_1.copyWith(
    value: '00001659',
    comment: () => l10nGlobal.autoGen5387,
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
    comment: () => l10nGlobal.autoGen5388,
  );
  static DevicePropertyItem intel_nuc_device_id_8th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_nuc_display_8th_2 =
      intel_nuc_display_7th_1.copyWith(
    value: '0000A53E',
    comment: () => l10nGlobal.autoGen5389,
  );
  static DevicePropertyItem intel_nuc_device_id_8th_2 =
      intel_laptop_device_id.copyWith(
    value: 'A53E0000',
  );

  static DevicePropertyItem intel_nuc_display_8th_3 =
      intel_laptop_display_6th_1.copyWith(
    value: '0400A53E',
    comment: () => l10nGlobal.autoGen5374,
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
    comment: () => l10nGlobal.autoGen5388,
  );
  static DevicePropertyItem intel_nuc_device_id_9th_1 =
      intel_laptop_device_id.copyWith(
    value: '9B3E0000',
  );

  static DevicePropertyItem intel_nuc_display_9th_2 =
      intel_nuc_display_9th_1.copyWith(
    value: '0000A53E',
    comment: () => l10nGlobal.autoGen5389,
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
    comment: () => l10nGlobal.autoGen5375,
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
