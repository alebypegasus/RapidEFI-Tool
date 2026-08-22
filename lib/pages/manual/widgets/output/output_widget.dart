import 'package:rapidefi/l10n/generated/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/title_card.dart';
import 'package:rapidefi/widgets/inkwell_widget.dart';
import 'package:flutter/material.dart';

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
  Future<void> _browseDirectory() async {
    final picker = widget.onPickDirectory;
    if (picker == null) return;
    String selectDirectory = await picker(outputDirectory);
    if (selectDirectory.isNotEmpty) {
      outputDirectory = selectDirectory;
      widget.onChanged.call(outputDirectory);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return TitleCard(
      title: l10n?.outputEfiTitle ?? "Output Directory:",
      content: Container(
        padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isCompact = constraints.maxWidth < 500;
            final browseText = l10n?.btnBrowse ?? "Browse";

            if (isCompact) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(
                    outputDirectory,
                    style: const TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 8),
                  InkWellWidget(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    radius: 14,
                    onTap: _browseDirectory,
                    child: Text(
                      browseText,
                      style: const TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ],
              );
            }

            return Row(
              children: [
                Expanded(
                  child: SelectableText(
                    outputDirectory,
                    style: const TextStyle(fontSize: 13),
                  ),
                ),
                const SizedBox(width: 15),
                InkWellWidget(
                  padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                  radius: 14,
                  onTap: _browseDirectory,
                  child: Text(
                    browseText,
                    style: const TextStyle(color: Colors.white, fontSize: 13),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
