import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

import 'package:provider/provider.dart';
import 'package:rapidefi/extension/bool_extension.dart';
import 'package:rapidefi/extension/color_extension.dart';
import 'package:rapidefi/pages/update_check.dart';
import 'package:rapidefi/pages/settings/out_efi_options.dart';
import 'package:rapidefi/pages/shared/widgets/choice_list.dart';
import 'package:rapidefi/pages/shared/widgets/settings_choice_card.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/utils/app_info.dart';
import 'package:rapidefi/utils/constant.dart';
import 'package:rapidefi/utils/theme.dart';
import 'package:rapidefi/pages/settings/theme_widget.dart';
import 'package:rapidefi/widgets/inkwell_widget.dart';
import 'package:sp_util/sp_util.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _checkingUpdate = false;

  Map<String, String> _getLanguageMap(AppLocalizations l10n) {
    return {
      'system': l10n.languageSystem,
      'en': l10n.languageEn,
      'pt_BR': l10n.languagePtBR,
      'pt_PT': l10n.languagePtPT,
      'zh_CN': l10n.languageZhCN,
      'zh_TW': l10n.languageZhTW,
      'ja': l10n.languageJa,
    };
  }

  Map<String, String> _getThemeModeMap(AppLocalizations l10n) {
    return {
      'system': l10n.themeModeSystem,
      'light': l10n.themeModeLight,
      'dark': l10n.themeModeDark,
    };
  }

  Map<String, String> _getFontFamilyMap(AppLocalizations l10n) {
    return {
      'msyh': l10n.fontMicrosoftYaHei,
      'Sarasa-Gothic-Mono-Nerd-SC-Regular': l10n.fontSarasaGothic,
      'NotoSerifSC-Regular': l10n.fontSourceHanSerif,
    };
  }

  List<OutEfiOptions> _getEfiOptions(AppLocalizations l10n) {
    return [
      OutEfiOptions(
        key: Constant.configOpenCoreTheme,
        enabled: SpUtil.getBool(Constant.configOpenCoreTheme, defValue: true).nullSafe,
        name: l10n.addOpenCoreTheme,
      ),
      OutEfiOptions(
        key: Constant.outConfigModel,
        enabled: SpUtil.getBool(Constant.outConfigModel, defValue: true).nullSafe,
        name: l10n.generateConfigModel,
      ),
      OutEfiOptions(
        key: Constant.zipEFI,
        enabled: SpUtil.getBool(Constant.zipEFI, defValue: false).nullSafe,
        name: l10n.zipEFI,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = context.watch<AppTheme>();
    final l10n = AppLocalizations.of(context)!;
    final languageMap = _getLanguageMap(l10n);
    final themeModeMapLocal = _getThemeModeMap(l10n);
    final fontMap = _getFontFamilyMap(l10n);
    final efiOptionsList = _getEfiOptions(l10n);

    final children = <Widget>[
      TitleCard(
        title: l10n.copyrightTitle,
        snippet: l10n.copyrightText,
      ),
      SettingsChoiceCard<String>(
        title: l10n.languageTitle,
        choices: languageMap.values.toList(),
        selectedChoices: [languageMap[appTheme.languageTag] ?? l10n.languageSystem],
        onChanged: (List<String> value) {
          final selectedValue = value.firstOrNull;
          final key = languageMap.keys.firstWhere(
            (k) => languageMap[k] == selectedValue,
            orElse: () => 'system',
          );
          appTheme.setLanguageTag(key);
        },
      ),
      SettingsChoiceCard<String>(
        title: l10n.themeModeTitle,
        choices: themeModeMapLocal.values.toList(),
        selectedChoices: [themeModeMapLocal[appTheme.themeMode.name] ?? ''],
        onChanged: (List<String> value) {
          final selectedValue = value.firstOrNull;
          final key = themeModeMapLocal.keys.firstWhere(
            (type) => themeModeMapLocal[type] == selectedValue,
            orElse: () => appTheme.themeMode.name,
          );
          appTheme.mode = themeModeMap[key]!;
        },
      ),
      TitleCard(
        title: l10n.themeColorTitle,
        content: Row(
          children: [
            const SizedBox(width: 15),
            InkWellWidget(
              height: 30,
              width: 30,
              radius: 6,
              backgroundColor: appTheme.theme,
            ),
          ],
        ),
        expander: ThemeWidget(
          onTap: (primaryColor) {
            appTheme.primaryColor = primaryColor;
          },
          hasExpaner: false,
          primary: appTheme.theme,
          defaultPrimary: Colors.blue,
          defaultCustomPrimary: Theme.of(context).colorScheme.primary.toMaterialColor(),
        ),
      ),
      TitleCard(
        title: l10n.appFontTitle,
        content: Row(
          children: [
            const SizedBox(width: 15),
            Text(fontMap[appTheme.appFontFamily] ?? appTheme.appFontFamily ?? ''),
          ],
        ),
        expander: ChoiceList(
          isMultipleSelection: false,
          allowToggle: false,
          onChanged: (value) {
            if (value.isNotEmpty) {
              final matchingKeys = fontMap.entries
                  .where((entry) => entry.value == value.first)
                  .map((entry) => entry.key)
                  .toList();
              if (matchingKeys.isNotEmpty) {
                appTheme.appFontFamily = matchingKeys.first;
              }
            }
          },
          choices: fontMap.values.toList(),
          selectedChoices: [fontMap[appTheme.appFontFamily] ?? ''],
        ),
      ),
      SettingsChoiceCard<String>(
        title: l10n.efiSettingsTitle,
        choices: efiOptionsList.map((e) => e.name).toList(),
        selectedChoices: efiOptionsList.where((e) => e.enabled).map((e) => e.name).toList(),
        isMultipleSelection: true,
        allowToggle: false,
        onChanged: (List<String> value) {
          final valueSet = value.toSet();
          for (var op in efiOptionsList) {
            op.enabled = valueSet.contains(op.name);
            SpUtil.putBool(op.key, op.enabled);
          }
        },
        snippet: l10n.settingSnippet,
      ),
      TitleCard(
        title: l10n.versionUpdateTitle,
        content: _buildUpdateContent(l10n),
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: children.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          return children[index];
        },
      ),
    );
  }

  Widget _buildUpdateContent(AppLocalizations l10n) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FutureBuilder<String>(
          future: AppInfo.version,
          builder: (context, snapshot) {
            final version = snapshot.data ?? '--';
            return Text(
              l10n.currentVersion(version),
              style: const TextStyle(fontSize: 13),
            );
          },
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 120,
          height: 30,
          child: ElevatedButton(
            onPressed: _checkingUpdate ? null : _checkUpdate,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              textStyle: const TextStyle(fontSize: 13),
            ),
            child: Text(_checkingUpdate ? l10n.checkingUpdate : l10n.checkUpdate),
          ),
        ),
      ],
    );
  }

  Future<void> _checkUpdate() async {
    setState(() => _checkingUpdate = true);
    try {
      await UpdateDialog.checkLatestRelease(context, silent: false);
    } finally {
      if (mounted) setState(() => _checkingUpdate = false);
    }
  }
}
