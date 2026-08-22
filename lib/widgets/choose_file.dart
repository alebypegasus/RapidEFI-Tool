import 'package:flutter/material.dart';
import 'package:rapidefi/utils/device_util.dart';
import 'package:rapidefi/utils/file_util.dart';
import 'package:rapidefi/widgets/inkwell_widget.dart';

class ChooseFileWidget extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final Function(String path)? onValid; // Validation callback
  final String buttonText;
  final String? hintText;
  final String directoryPath;
  final bool buttonOnLeft;
  final bool? openFile;
  final double? radius;
  final List<String>? allowedExtensions;
  final bool allowMultiple;
  const ChooseFileWidget({
    super.key,
    required this.onChanged,
    required this.buttonText,
    required this.directoryPath,
    this.onValid,
    this.buttonOnLeft = true,
    this.hintText = '',
    this.openFile = false,
    this.allowedExtensions,
    this.radius = 6,
    this.allowMultiple = false,
  });

  @override
  State<ChooseFileWidget> createState() => _ChooseFileWidgetState();
}

class _ChooseFileWidgetState extends State<ChooseFileWidget> {
  late String outputPath;

  @override
  void initState() {
    super.initState();
    outputPath = widget.directoryPath;
  }

  Future<void> onClick() async {
    if (Device.isWeb) return;

    String selectPath = widget.openFile == true
        ? await FileUtils.openFile(outputPath,
            allowedExtensions: widget.allowedExtensions,
            allowMultiple: widget.allowMultiple)
        : await FileUtils.openFileExplorer(outputPath);

    if (selectPath.isEmpty) return;
    bool isValid =
        widget.onValid != null ? await widget.onValid!(selectPath) : true;
    if (isValid) {
      outputPath = selectPath;
      widget.onChanged(outputPath);
      setState(() {});
    } else {
      widget.onChanged('');
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isCompact = constraints.maxWidth < 450;

        final button = InkWellWidget(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          radius: widget.radius ?? 12,
          onTap: onClick,
          child: Text(
            widget.buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        );

        final textField = TextField(
          enabled: false,
          controller: TextEditingController(
            text: outputPath,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            isDense: true,
          ),
        );

        if (isCompact) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              textField,
              const SizedBox(height: 8),
              button,
            ],
          );
        }

        return Row(
          children: [
            if (widget.buttonOnLeft) ...[
              button,
              const SizedBox(width: 15),
            ],
            Expanded(child: textField),
            if (!widget.buttonOnLeft) ...[
              const SizedBox(width: 15),
              button,
            ],
          ],
        );
      },
    );
  }
}

