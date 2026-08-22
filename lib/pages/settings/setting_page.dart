import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rapidefi/extension/bool_extension.dart';
import 'package:rapidefi/extension/color_extension.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
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

const String copyRights = '''
RapidEFI - Open Source Project
Licensed under the MIT License.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files, to deal in the Software
without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the
Software, and to permit persons to whom the Software is furnished to do so.
''';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  late final appTheme = context.watch<AppTheme>();
  bool _checkingUpdate = false;

  List<OutEfiOptions> _getEfiOptions(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return [
      OutEfiOptions(
        key: Constant.configOpenCoreTheme,
        enabled: SpUtil.getBool(Constant.configOpenCoreTheme, defValue: true).nullSafe,
        name: l10n?.addThemeToEfi ?? 'Add OpenCore boot theme to EFI',
      ),
      OutEfiOptions(
        key: Constant.outConfigModel,
        enabled: SpUtil.getBool(Constant.outConfigModel, defValue: true).nullSafe,
        name: l10n?.generateConfigModel ?? 'Generate configModel file in EFI folder',
      ),
      OutEfiOptions(
        key: Constant.zipEFI,
        enabled: SpUtil.getBool(Constant.zipEFI, defValue: false).nullSafe,
        name: l10n?.compressZipEfi ?? 'Compress EFI to ZIP file',
      ),
    ];
  }

  List<Widget> _buildChildren(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final efiOptionsList = _getEfiOptions(context);

    final themeModeLabels = {
      'system': l10n?.followSystem ?? 'Follow System',
      'light': l10n?.offLabel ?? 'Off',
      'dark': l10n?.onLabel ?? 'On',
    };

    return [
      TitleCard(
        title: l10n?.copyrightNotice ?? 'Copyright & License',
        snippet: copyRights,
      ),

      // Multi-Language Selector Card
      TitleCard(
        title: l10n?.appLanguage ?? 'Language :',
        content: Row(
          children: [
            const SizedBox(width: 15),
            Text(
              appLanguagesMap[appTheme.appLocaleCode] ?? (l10n?.followSystem ?? 'Follow System'),
              style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
            ),
          ],
        ),
        expander: ChoiceList(
          isMultipleSelection: false,
          allowToggle: false,
          onChanged: (value) {
            if (value.isNotEmpty) {
              final selectedName = value.first;
              final matching = appLanguagesMap.entries
                  .where((entry) => entry.value == selectedName)
                  .map((entry) => entry.key)
                  .toList();
              if (matching.isNotEmpty) {
                appTheme.appLocaleCode = matching.first;
              }
            }
          },
          choices: appLanguagesMap.values.toList(),
          selectedChoices: [
            appLanguagesMap[appTheme.appLocaleCode] ?? (l10n?.followSystem ?? 'Follow System'),
          ],
        ),
      ),

      SettingsChoiceCard<String>(
        title: l10n?.themeMode ?? 'Theme Mode :',
        choices: themeModeLabels.values.toList(),
        selectedChoices: [themeModeLabels[appTheme.themeMode.name] ?? ''],
        onChanged: (List<String> value) {
          String? selectedValue = value.firstOrNull;
          var key = themeModeLabels.keys.firstWhere(
            (type) => themeModeLabels[type] == selectedValue,
            orElse: () => appTheme.themeMode.name,
          );
          appTheme.mode = themeModeMap[key]!;
        },
      ),

      TitleCard(
        title: l10n?.themeColor ?? 'Theme Color :',
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
        title: l10n?.appFont ?? 'App Font :',
        content: Row(
          children: [
            const SizedBox(width: 15),
            Text(appFontFamilyMap[appTheme.appFontFamily] ?? 'Microsoft YaHei'),
          ],
        ),
        expander: ChoiceList(
          isMultipleSelection: false,
          allowToggle: false,
          onChanged: (value) {
            if (value.isNotEmpty) {
              final matchingKeys = appFontFamilyMap.entries
                  .where((entry) => entry.value == value.first)
                  .map((entry) => entry.key)
                  .toList();
              if (matchingKeys.isNotEmpty) {
                appTheme.appFontFamily = matchingKeys.first;
              }
            }
          },
          choices: appFontFamilyMap.values.toList(),
          selectedChoices: [appFontFamilyMap[appTheme.appFontFamily] ?? 'Microsoft YaHei'],
        ),
      ),

      SettingsChoiceCard<String>(
        title: l10n?.efiOptions ?? 'EFI Options :',
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
      ),

      TitleCard(
        title: l10n?.checkForUpdates ?? 'Check for Updates :',
        content: _buildUpdateContent(context),
      ),
    ];
  }

  Widget _buildUpdateContent(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      spacing: 12,
      runSpacing: 8,
      children: [
        FutureBuilder<String>(
          future: AppInfo.version,
          builder: (context, snapshot) {
            final version = snapshot.data ?? '--';
            return Text(
              l10n?.currentVersion(version) ?? 'Current version: $version',
              style: const TextStyle(fontSize: 13),
            );
          },
        ),
        ElevatedButton(
          onPressed: _checkingUpdate ? null : _checkUpdate,
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
            textStyle: const TextStyle(fontSize: 13),
          ),
          child: Text(_checkingUpdate
              ? (l10n?.btnChecking ?? 'Checking...')
              : (l10n?.btnCheckUpdates ?? 'Check Updates')),
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

  @override
  Widget build(BuildContext context) {
    final items = _buildChildren(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        itemCount: items.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 10);
        },
        itemBuilder: (BuildContext context, int index) {
          return items[index];
        },
      ),
    );
  }
}
