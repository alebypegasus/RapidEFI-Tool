import 'package:flutter/material.dart';
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

const String snippet = '''
1. OpenCore Boot Theme is added by default. RapidEFI will include a boot theme in the generated EFI. Uncheck if you do not want a theme.

2. Generate configModel file is enabled by default. RapidEFI outputs a configModel file inside the EFI folder, which can be reloaded for subsequent modifications. See the "Process EFI" section.

3. Compress EFI to Zip will archive the generated EFI into a .zip file. Note that zip compression may slightly increase generation time on lower-end hardware.
''';

const String copyRights = '''
Copyright (C) 2024 JeoJay

License

Permission is granted to individuals and organizations under the following conditions:

1. Non-Commercial Use:
This software is completely free and open source, intended solely for non-commercial use. Selling this software is strictly prohibited.

2. Attribution:
Any reproduction, quotation, or third-party distribution of this software's content must clearly credit the source and include:
Developed by JeoJay. Copyright © 2024 com.jeojay. All rights reserved.

3. Copyright Notices:
Do not modify or remove original copyright notices and author attributions when reproducing or redistributing this software.

Disclaimer:
This software is provided "AS IS", without warranty of any kind, express or implied. The copyright holders are not liable for any damages resulting from the use of this software.
''';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  late final appTheme = context.watch<AppTheme>();
  bool _checkingUpdate = false;
  List<OutEfiOptions> EFIOptionsList = [
    OutEfiOptions(
        key: Constant.configOpenCoreTheme,
        enabled: SpUtil.getBool(Constant.configOpenCoreTheme, defValue: true)
            .nullSafe,
        name: 'Add OpenCore boot theme to EFI'),
    OutEfiOptions(
        key: Constant.outConfigModel,
        enabled:
            SpUtil.getBool(Constant.outConfigModel, defValue: true).nullSafe,
        name: 'Generate configModel file in EFI folder'),
    OutEfiOptions(
        key: Constant.zipEFI,
        enabled: SpUtil.getBool(Constant.zipEFI, defValue: false).nullSafe,
        name: 'Compress EFI to ZIP file'),
  ];

  List<Widget> get children {
    return [
      const TitleCard(
        title: 'Copyright & License',
        snippet: copyRights,
      ),
      SettingsChoiceCard<String>(
          title: 'Theme Mode :',
          choices: themeModeCHMap.values.toList(),
          selectedChoices: [themeModeCHMap[appTheme.themeMode.name] ?? ''],
          onChanged: (List<String> value) {
            String? selectedValue = value.firstOrNull;
            var key = themeModeCHMap.keys.firstWhere(
              (type) => themeModeCHMap[type] == selectedValue,
              orElse: () => appTheme.themeMode.name,
            );
            appTheme.mode = themeModeMap[key]!;
          }),
      TitleCard(
          title: 'Theme Color :',
          content: Row(
            children: [
              const SizedBox(
                width: 15,
              ),
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
              defaultCustomPrimary:
                  Theme.of(context).colorScheme.primary.toMaterialColor())),
      TitleCard(
        title: 'App Font :',
        content: Row(
          children: [
            const SizedBox(
              width: 15,
            ),
            Text(appFontFamilyMap[appTheme.appFontFamily]!),
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
          selectedChoices: [appFontFamilyMap[appTheme.appFontFamily]!],
        ),
      ),
      SettingsChoiceCard<String>(
        title: 'EFI Options :',
        choices: EFIOptionsList.map((e) => e.name).toList(),
        selectedChoices:
            EFIOptionsList.where((e) => e.enabled).map((e) => e.name).toList(),
        isMultipleSelection: true,
        allowToggle: false,
        onChanged: (List<String> value) {
          final valueSet = value.toSet();

          for (var op in EFIOptionsList) {
            op.enabled = valueSet.contains(op.name);
            SpUtil.putBool(op.key, op.enabled);
          }
        },
        snippet: snippet,
      ),
      TitleCard(
        title: 'Check for Updates :',
        content: _buildUpdateContent(),
      ),
    ];
  }

  Widget _buildUpdateContent() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        FutureBuilder<String>(
          future: AppInfo.version,
          builder: (context, snapshot) {
            final version = snapshot.data ?? '--';
            return Text(
              'Current version: $version',
              style: const TextStyle(fontSize: 13),
            );
          },
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: 92,
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
            child: Text(_checkingUpdate ? 'Checking...' : 'Check Updates'),
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

  @override
  Widget build(BuildContext context) {
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
}
