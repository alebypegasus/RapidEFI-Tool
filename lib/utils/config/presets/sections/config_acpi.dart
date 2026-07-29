import 'package:rapidefi/l10n/l10n_helper.dart';
import 'package:rapidefi/utils/config/models/acpi/acpi_delete_item.dart';
import 'package:rapidefi/utils/config/presets/patches/acpi_patch.dart';

import '../../models/acpi/acpi_add_item.dart';

class ConfigAcpi {
  ///2,3代混合问题
  static AcpiAddItem SSDT_IMEI =
      AcpiAddItem(enabled: true, path: 'SSDT-IMEI.aml');

  static AcpiAddItem SSDT_RMNE =
      AcpiAddItem(enabled: true, path: 'SSDT-RMNE.aml');

  ///光线传感器
  static AcpiAddItem SSDT_ALS0 =
      AcpiAddItem(enabled: true, path: 'SSDT-ALS0.aml');

  static AcpiAddItem SSDT_SURFACE =
      AcpiAddItem(enabled: true, path: 'SSDT-SURFACE.aml');

  static AcpiAddItem SSDT_CPUR =
      AcpiAddItem(enabled: true, path: 'SSDT-CPUR.aml');

  static AcpiAddItem SSDT_RHUB =
      AcpiAddItem(enabled: true, path: 'SSDT-RHUB.aml');

  static AcpiAddItem SSDT_GPRW = AcpiAddItem(
      enabled: true,
      path: 'SSDT-GPRW.aml',
      note: l10nGlobal.autoGen5390);

  static AcpiAddItem SSDT_UPRW = AcpiAddItem(
      enabled: true,
      path: 'SSDT-UPRW.aml',
      note: l10nGlobal.autoGen5391);

  static AcpiAddItem SSDT_GPI0 = AcpiAddItem(
    enabled: true,
    path: 'SSDT-GPI0.aml',
    note: l10nGlobal.autoGen5392,
  );

  static List<AcpiDeleteItem> sandyBridgeAndIvyBridgeDeletePatches = [
    AcpiPatch.deleteCpuPm.copyWith(enabled: false),
    AcpiPatch.deleteCpu0Ist.copyWith(enabled: false)
  ];

  static List<AcpiAddItem> fixSSDTs = [SSDT_GPRW, SSDT_UPRW];
}
