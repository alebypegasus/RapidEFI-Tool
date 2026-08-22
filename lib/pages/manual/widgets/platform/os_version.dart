import 'package:fluent_ui/fluent_ui.dart';
import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/utils/translation/hackintosh_details_translator.dart';


class OSVersionWidget extends StatefulWidget {
  final List<String> verions;
  final String macOSVersion;
  final Function(String)? onChanged;

  const OSVersionWidget({
    super.key,
    required this.verions,
    this.onChanged,
    this.macOSVersion = '',
  });

  @override
  State<OSVersionWidget> createState() => _OSVersionWidgetState();
}

class _OSVersionWidgetState extends State<OSVersionWidget> {
  late String macOSVersion = _resolveMacOSVersion();

  String _resolveMacOSVersion() {
    if (widget.verions.isEmpty) {
      return '';
    }

    if (widget.macOSVersion.isNotEmpty &&
        widget.verions.contains(widget.macOSVersion)) {
      return widget.macOSVersion;
    }

    return widget.verions.first;
  }

  @override
  void didUpdateWidget(covariant OSVersionWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    final versionsChanged = oldWidget.verions.length != widget.verions.length ||
        oldWidget.verions.join('|') != widget.verions.join('|');

    final macOSVersionChanged = oldWidget.macOSVersion != widget.macOSVersion;

    if (versionsChanged || macOSVersionChanged) {
      macOSVersion = _resolveMacOSVersion();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return TitleCard(
      title: l10n?.targetMacOsVersion ?? "Target macOS Version:",
      subTitle: "",
      content: LayoutBuilder(
        builder: (context, constraints) {
          final isCompact = constraints.maxWidth < 620;

          final comboBox = ComboBox<String>(
            isExpanded: isCompact,
            value: macOSVersion.isEmpty ? null : macOSVersion,
            items: widget.verions.map((e) {
              return ComboBoxItem(
                value: e,
                child: Text(
                  e,
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
            onChanged: (info) {
              if (info == null) {
                return;
              }

              if (macOSVersion == info) {
                return;
              }

              setState(() {
                macOSVersion = info;
              });

              widget.onChanged?.call(info);
            },
          );

          if (isCompact) {
            return SizedBox(
              width: constraints.maxWidth,
              child: comboBox,
            );
          }

          return comboBox;
        },
      ),
      snippet: HackintoshDetailsTranslator.translateOsVersionSnippet(
        Localizations.localeOf(context).languageCode,
      ),
    );
  }
}

