import 'package:rapidefi/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'custom_textfield.dart';

class DeviceIdTextField<T> extends StatelessWidget {
  const DeviceIdTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.hintText,
    this.length = 4,
    this.minWidth = 120,
    this.maxWidth = double.infinity,
    this.onChanged,
    this.extra,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String? hintText;
  final int length;
  final double minWidth;
  final double maxWidth;
  final void Function(String value, T? extra)? onChanged;
  final T? extra;

  @override
  Widget build(BuildContext context) {
    final effectiveHintText = hintText ?? AppLocalizations.of(context)!.sharedExample73BF;
    return CustomTextField<T>(
      controller: controller,
      focusNode: focusNode,
      hintText: effectiveHintText,
      minWidth: minWidth,
      maxWidth: maxWidth,
      textAlign: TextAlign.center,
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[0-9a-fA-F]')),
        LengthLimitingTextInputFormatter(length),
      ],
      validator: (value) => value.isEmpty || value.length == length,
      errorText: AppLocalizations.of(context)!.sharedRequiresHexChars(length.toString()),
      emitInvalidValue: true,
      onChanged: onChanged,
      extra: extra,
    );
  }
}
