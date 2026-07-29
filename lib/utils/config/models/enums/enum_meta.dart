import 'package:rapidefi/l10n/l10n_helper.dart';

class EnumText {
  final int titleId;
  final int descId;
  final String fallbackTitle;
  final String fallbackDesc;
  const EnumText({
    this.titleId = 0,
    this.descId = 0,
    this.fallbackTitle = '',
    this.fallbackDesc = '',
    @Deprecated('Use titleId instead') String? title,
    @Deprecated('Use descId instead') String? description,
  });

  String get title => titleId == 0 ? fallbackTitle : getL10nById(titleId);
  String get description => descId == 0 ? fallbackDesc : getL10nById(descId);
}
