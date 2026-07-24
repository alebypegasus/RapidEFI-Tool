import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/utils/config/models/enums/config_enums.dart';
import 'package:rapidefi/utils/config/models/enums/brand_enum.dart';
import 'package:rapidefi/utils/config/models/enums/motherboard_enum.dart';
import 'package:rapidefi/utils/config/models/enums/processor_type_enum.dart';
import 'package:rapidefi/utils/config/models/enums/uiscale_enum.dart';
import 'package:rapidefi/utils/config/models/enums/csr_setting_enum.dart';

extension CpuTypeL10n on CpuType {
  String localizedTitle(AppLocalizations l10n) {
    switch (this) {
      case CpuType.unknown:
        return l10n.cpuUnknown;
      default:
        return text.title;
    }
  }
}

extension PlatformTypeL10n on PlatformType {
  String localizedTitle(AppLocalizations l10n) {
    switch (this) {
      case PlatformType.desktop:
        return l10n.platDesktop;
      case PlatformType.laptop:
        return l10n.platLaptop;
      case PlatformType.nuc:
        return l10n.platMini;
      case PlatformType.hedt:
        return l10n.platServer;
      default:
        return text.title;
    }
  }
}

extension CsrSettingL10n on CsrSetting {
  String localizedTitle(AppLocalizations l10n) {
    switch (this) {
      case CsrSetting.enabled:
        return l10n.csrEnabled;
      case CsrSetting.partialDisabled:
        return l10n.csrPartial;
      case CsrSetting.fullyDisabled:
        return l10n.csrFully;
      default:
        return text.title;
    }
  }

  String localizedDescription(AppLocalizations l10n) {
    switch (this) {
      case CsrSetting.partialDisabled:
        return l10n.csrPartialDesc;
      case CsrSetting.fullyDisabled:
        return l10n.csrFullyDesc;
      default:
        return text.description;
    }
  }

  String localizedValue(AppLocalizations l10n) {
    if (this == CsrSetting.none) return '';
    final desc = localizedDescription(l10n);
    final tit = localizedTitle(l10n);
    if (desc.isEmpty) return tit;
    return '$tit($desc)';
  }
}

extension UIScaleL10n on UIScale {
  String localizedDescription(AppLocalizations l10n) {
    switch (this) {
      case UIScale.scale00:
        return l10n.uiScaleAuto;
      case UIScale.scale01:
        return l10n.uiScaleStandard;
      case UIScale.scale02:
        return l10n.uiScaleHigh;
      default:
        return text.description;
    }
  }
}

extension ProcessorTypeL10n on ProcessorType {
  String localizedTitle(AppLocalizations l10n) {
    switch (this) {
      case ProcessorType.none:
        return l10n.procDefault;
      default:
        return text.title;
    }
  }
  
  String localizedDescription(AppLocalizations l10n) {
    switch (this) {
      case ProcessorType.none:
        return l10n.procKeep;
      default:
        return text.description;
    }
  }
}

extension BrandL10n on Brand {
  String localizedTitle(AppLocalizations l10n) {
    switch (this) {
      case Brand.asus: return l10n.brandAsus;
      case Brand.gigabyte: return l10n.brandGigabyte;
      case Brand.asrock: return l10n.brandAsrock;
      case Brand.msi: return l10n.brandMsi;
      case Brand.dell: return l10n.brandDell;
      case Brand.lenovo: return l10n.brandLenovo;
      case Brand.vaio: return l10n.brandSony;
      case Brand.hp: return l10n.brandHp;
      case Brand.chrome: return l10n.brandGoogle;
      case Brand.microsoft: return l10n.brandMicrosoft;
      default: return text.title;
    }
  }
}

extension SpecialMotherboardL10n on SpecialMotherboard {
  String localizedTitle(AppLocalizations l10n) {
    switch (this) {
      case SpecialMotherboard.amdNormal:
        return l10n.mbNormal;
      case SpecialMotherboard.intelOem:
        return "H110, B150, B250, Q270"; // usually no need to translate this
      default:
        return text.title;
    }
  }
  
  String localizedDescription(AppLocalizations l10n) {
    switch (this) {
      case SpecialMotherboard.intelOem:
        return l10n.mbOemUsb;
      default:
        return text.description;
    }
  }
}
