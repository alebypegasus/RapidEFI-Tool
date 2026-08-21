import 'package:fluent_ui/fluent_ui.dart';
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
    return ScaffoldPage.scrollable(
        header: const PageHeader(
          title: Text('Sponsor Developer'),
          commandBar: LinkButtonRow(
            mainAxisAlignment: MainAxisAlignment.end,
            items: [
              LinkButtonItem(
                url: 'https://www.bilibili.com/video/BV1Li421h7FZ',
                buttonText: "Author's Bilibili",
                icon: FluentIcons.my_movies_t_v,
              ),
              LinkButtonItem(
                url: 'https://github.com/JeoJay127/RapidEFI-Tool',
                buttonText: "Author's GitHub",
                icon: FluentIcons.open_source,
              ),
            ],
          ),
        ),
        children: const [
          TitleCard(
            title: 'Buy the Developer a Coffee',
            initiallyExpanded: true,
            expander: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                    'If this tool has been helpful to you, feel free to sponsor the developer! Thank you for your support!\n\nContact: QQ 766264141 or WeChat: JeoJay127. Beware of imposters!'),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
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
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TitleCard(
            title: 'RapidEFI Success Stories',
            content: LinkButtonRow(
              mainAxisAlignment: MainAxisAlignment.end,
              items: [
                LinkButtonItem(
                  url:
                      'https://github.com/JeoJay127/RapidEFI-Tool/blob/main/%E6%88%90%E5%8A%9F%E6%A1%88%E4%BE%8B.md',
                  buttonText: 'RapidEFI Success Stories',
                  icon: FluentIcons.open_source,
                )
              ],
            ),
          )
        ]);
  }
}
