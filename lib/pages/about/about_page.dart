import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/link_button_row.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/utils/image_util.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasFluentTheme(context));
    final l10n = AppLocalizations.of(context);

    return ScaffoldPage.scrollable(
        header: PageHeader(
          title: Text(l10n?.navAbout ?? 'About RapidEFI'),
          commandBar: LinkButtonRow(
            mainAxisAlignment: MainAxisAlignment.end,
            items: [
              LinkButtonItem(
                url: 'https://github.com/alebypegasus/RapidEFI-Tool',
                buttonText: l10n?.githubRepository ?? "GitHub Repository",
                icon: FluentIcons.open_source,
              ),
              LinkButtonItem(
                url: 'https://github.com/alebypegasus/RapidEFI-Tool/releases',
                buttonText: l10n?.releasesAndUpdates ?? "Releases & Updates",
                icon: FluentIcons.download,
              ),
            ],
          ),
        ),
        children: [
          TitleCard(
            title: l10n?.aboutSupport ?? 'About & Support',
            initiallyExpanded: true,
            expander: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Text(
                  l10n?.aboutSupportDetails ??
                  'RapidEFI is an open-source, automated OpenCore EFI generator, ACPI/SSDT patcher, and hardware analysis tool built for Hackintosh and macOS enthusiasts.\n\nCreated and maintained with love. Star and fork the project on GitHub to support ongoing development!',
                ),
                const SizedBox(
                  height: 15,
                ),
                const Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    LoadAssetsImage(
                      'donate_alipay',
                      format: ImageFormat.png,
                      width: 213 * 0.75,
                      height: 284 * 0.75,
                    ),
                    LoadAssetsImage(
                      'donate_wechat',
                      format: ImageFormat.png,
                      width: 213 * 0.75,
                      height: 284 * 0.75,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TitleCard(
            title: l10n?.documentationGuides ?? 'Documentation & Guides',
            content: LinkButtonRow(
              mainAxisAlignment: MainAxisAlignment.end,
              items: [
                LinkButtonItem(
                  url: 'https://github.com/alebypegasus/RapidEFI-Tool',
                  buttonText: l10n?.projectDocumentation ?? 'Project Documentation',
                  icon: FluentIcons.open_source,
                )
              ],
            ),
          )
        ]);
  }
}
