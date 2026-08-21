//  path_textfield.dart 
//  Created by JeoJay127 
//
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rapidefi/utils/ssdttool/util.dart';
import 'custom_textfield.dart';

enum PathType {
  acpi,
  pci,
}

class PathTextField<T> extends StatefulWidget {
  const PathTextField({
    super.key,
    required this.pathType,
    this.onChanged,
    this.initialPath, 
    this.hintText, 
    this.errorText, 
  });

  final PathType pathType;
  final void Function(String value, T? extra)? onChanged;
  final String? initialPath;
  final String? hintText;
  final String? errorText;

  @override
  State<PathTextField> createState() => _PathTextFieldState();
}

class _PathTextFieldState extends State<PathTextField> {
  late final TextEditingController _controller;
  final FocusNode _focusNode = FocusNode();

  String get _defaultHintText {
    switch (widget.pathType) {
      case PathType.acpi:
        return 'Enter ACPI Path';
      case PathType.pci:
        return 'Enter PCI Path';
    }
  }

  // Get default error text based on path type
  String get _defaultErrorText {
    switch (widget.pathType) {
      case PathType.acpi:
        return 'Invalid ACPI Path';
      case PathType.pci:
        return 'Invalid PCI Path';
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialPath);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.onChanged?.call(_controller.text, null);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: _controller,
      focusNode: _focusNode,
      hintText: widget.hintText ?? _defaultHintText,
      errorText: widget.errorText ?? _defaultErrorText,
      // Input filter (disallow Chinese / non-ASCII characters)
      inputFormatters: [
        FilteringTextInputFormatter.deny(
          RegExp(r'[\u4e00-\u9fa5]'),
        ),
      ],
      validator: (value) =>
          value.isEmpty || _validatePath(value, widget.pathType),
      onChanged: (value, extra) {
        widget.onChanged?.call(value, extra);
      },
    );
  }

  bool _validatePath(String value, PathType type) {
    switch (type) {
      case PathType.acpi:
        return Util().checkACPIPath(acpiPath: value);
      case PathType.pci:
        return Util().checkPCIPath(pciPath: value);
    }
  }
}