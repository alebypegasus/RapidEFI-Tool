import 'package:flutter/material.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/widgets/inkwell_widget.dart';

class OutputWidget extends StatefulWidget {
  final ValueChanged onChanged;
  final String directoryPath;
  final Future<String> Function(String currentDirectory)? onPickDirectory;

  const OutputWidget(
      {super.key,
      required this.onChanged,
      required this.directoryPath,
      this.onPickDirectory});

  @override
  State<OutputWidget> createState() => _OutputWidgetState();
}

class _OutputWidgetState extends State<OutputWidget> {
  late String outputDirectory = widget.directoryPath;
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return TitleCard(
      title: l10n.outputDirectory,
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  child: SelectableText(outputDirectory),
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
            InkWellWidget(
              height: 34,
              width: 80,
              radius: 17,
              child: Text(
                l10n.select,
                style: const TextStyle(color: Colors.white),
              ),
              onTap: () async {
                final picker = widget.onPickDirectory;
                if (picker == null) return;
                String selectDirectory = await picker(outputDirectory);
                if (selectDirectory.isNotEmpty) {
                  outputDirectory = selectDirectory;
                  widget.onChanged.call(outputDirectory);
                }
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}

