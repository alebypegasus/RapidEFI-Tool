import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

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
    final l10n = AppLocalizations.of(context)!;

    return ScaffoldPage.scrollable(
      header: PageHeader(
        title: Text(l10n.sponsorTitle),
        commandBar: LinkButtonRow(
          mainAxisAlignment: MainAxisAlignment.end,
          items: [
            LinkButtonItem(
              url: 'https://www.bilibili.com/video/BV1Li421h7FZ',
              buttonText: l10n.visitBilibili,
              icon: FluentIcons.my_movies_t_v,
            ),
            LinkButtonItem(
              url: 'https://github.com/JeoJay127/RapidEFI-Tool',
              buttonText: l10n.visitGithub,
              icon: FluentIcons.open_source,
            ),
          ],
        ),
      ),
      children: [
        TitleCard(
          title: l10n.buyCoffeeTitle,
          initiallyExpanded: true,
          expander: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15),
              Text(l10n.buyCoffeeText),
              const SizedBox(height: 15),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    LoadAssetsImage(
                      'donate_alipay',
                      format: ImageFormat.png,
                      width: 213 * 0.8,
                      height: 284 * 0.8,
                    ),
                    LoadAssetsImage(
                      'donate_wechat',
                      format: ImageFormat.png,
                      width: 213 * 0.8,
                      height: 284 * 0.8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        TitleCard(
          title: l10n.successCasesTitle,
          content: LinkButtonRow(
            mainAxisAlignment: MainAxisAlignment.end,
            items: [
              LinkButtonItem(
                url: 'https://github.com/JeoJay127/RapidEFI-Tool/blob/main/成功案例.md',
                buttonText: l10n.successCasesTitle,
                icon: FluentIcons.open_source,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
