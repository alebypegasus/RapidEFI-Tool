import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart';
import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:rapidefi/pages/shared/widgets/custom_textfield.dart';

class EDIDPage extends StatefulWidget {
  final String? edid;
  final ValueChanged<String>? onChanged;

  const EDIDPage({super.key, this.edid, this.onChanged});

  @override
  State<EDIDPage> createState() => _EDIDPageState();
}

class _EDIDPageState extends State<EDIDPage> {
  late final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  String? _edidError;

  @override
  void initState() {
    super.initState();
    _initializeEDID();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void didUpdateWidget(covariant EDIDPage oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.edid != widget.edid && !_focusNode.hasFocus) {
      _initializeEDID();
    }
  }

  void _initializeEDID() {
    final edidText = _cleanEdid(widget.edid ?? '');
    _controller.text = edidText;
  }

  void _handleFocusChange() {
    if (!_focusNode.hasFocus) {
      _validateAndFormatEdid();
    }
  }

  String _cleanEdid(String edid) {
    return edid.replaceAll(RegExp(r'\s+'), '');
  }

  void _validateAndFormatEdid() {
    final l10n = AppLocalizations.of(context)!;
    final originalText = _controller.text;
    final edidText = _cleanEdid(originalText);

    String? error;
    if (edidText.isNotEmpty) {
      final isHex = RegExp(r'^[0-9A-Fa-f]+$').hasMatch(edidText);
      if (!isHex) {
        error = l10n.edidHexError;
      } else if (edidText.length % 256 != 0) {
        error = l10n.edidLengthError;
      }
    }

    setState(() {
      _edidError = error;
      if (error == null && edidText != originalText) {
        _controller.text = edidText.toUpperCase();
      }
    });

    if (error != null) {
      showToast(l10n.edidInvalidToast);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.manualEdidInfoText,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            l10n.injectEdidTitle,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 10),
          CustomTextField(
            controller: _controller,
            focusNode: _focusNode,
            maxLines: 3,
            expandWidth: true,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[A-Fa-f0-9]')),
            ],
            keyboardType: TextInputType.text,
            hintText: l10n.injectEdidHint,
            hintStyle: TextStyle(
              fontSize: 12,
              color: isDarkMode ? Colors.grey.shade500 : Colors.grey.shade400,
            ),

            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: isDarkMode ? Colors.grey.shade700 : Colors.grey.shade400,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: isDarkMode ? Colors.blue.shade300 : Colors.blue,
                width: 2,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.red.shade600),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.red.shade600, width: 2),
            ),
            forceErrorText: _edidError,
            errorStyle: TextStyle(color: Colors.red.shade600),
            onChanged: (value, _) {
              final cleanValue = _cleanEdid(value);
              if (cleanValue.isEmpty) {
                widget.onChanged?.call('');
              } else if (cleanValue.length == 256 || cleanValue.length == 512) {
                widget.onChanged?.call(cleanValue);
              }
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }
}
