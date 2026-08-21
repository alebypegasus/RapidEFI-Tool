//  custom_textfield.dart 
//  Created by JeoJay127 
//
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Custom hex input component supporting dark mode, validation, format restrictions, etc.
class CustomTextField<T> extends StatefulWidget {
  /// Minimum width
  final double minWidth;

  /// Maximum width
  final double maxWidth;

  /// Input controller
  final TextEditingController controller;

  /// Focus node
  final FocusNode focusNode;

  /// Keyboard type (default: text)
  final TextInputType keyboardType;

  /// Text alignment (default: left)
  final TextAlign textAlign;

  /// Input formatters (e.g. hex filtering, length limits)
  final List<TextInputFormatter> inputFormatters;

  /// Text style
  final TextStyle? style;

  /// Hint text
  final String? hintText;

  /// Hint style
  final TextStyle? hintStyle;

  /// Error style
  final TextStyle? errorStyle;

  /// Error text (shown on validation failure)
  final String? errorText;

  /// Force error text (overrides validation result)
  final String? forceErrorText;

  /// Default border (unfocused/unselected)
  final InputBorder? border;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final InputBorder? errorBorder;
  final InputBorder? focusedErrorBorder;

  /// Enabled border color & width
  final Color? enabledBorderColor;
  final double? enabledBorderWidth;

  /// Focused border color & width
  final Color? focusedBorderColor;
  final double? focusedBorderWidth;

  /// Error border color & width
  final Color? errorBorderColor;
  final double? errorBorderWidth;

  /// Focused error border color & width
  final Color? focusedErrorBorderColor;
  final double? focusedErrorBorderWidth;

  /// Validator triggered on change
  final bool Function(String value)? validator;

  /// Change callback
  final void Function(String value, T? extra)? onChanged;

  /// Whether to emit invalid value to callback
  final bool emitInvalidValue;

  /// Extra payload
  final T? extra;

  final bool enabled;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  final bool expandWidth;
  final bool adaptiveWidth;
  final double adaptiveCharacterWidth;
  final double adaptiveHorizontalPadding;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.focusNode,
    this.minWidth = 40,
    this.maxWidth = double.infinity,
    this.keyboardType = TextInputType.text,
    this.textAlign = TextAlign.left,
    this.inputFormatters = const [],
    this.style,
    this.hintText,
    this.hintStyle,
    this.errorStyle,
    this.errorText,
    this.forceErrorText,
    this.border,
    this.enabledBorder,
    this.focusedBorder,
    this.errorBorder,
    this.focusedErrorBorder,
    this.enabledBorderColor,
    this.enabledBorderWidth,
    this.focusedBorderColor,
    this.focusedBorderWidth,
    this.errorBorderColor,
    this.errorBorderWidth,
    this.focusedErrorBorderColor,
    this.focusedErrorBorderWidth,
    this.validator,
    this.onChanged,
    this.emitInvalidValue = false,
    this.extra,
    this.enabled = true,
    this.maxLines = 1,
    this.contentPadding,
    this.expandWidth = false,
    this.adaptiveWidth = false,
    this.adaptiveCharacterWidth = 9,
    this.adaptiveHorizontalPadding = 28,
  });

  @override
  State<CustomTextField<T>> createState() => _CustomTextFieldState<T>();
}

class _CustomTextFieldState<T> extends State<CustomTextField<T>> {
  String? _effectiveErrorText;
  final String defaultErrorText = 'Invalid input';
  late final VoidCallback _listener;

  @override
  void initState() {
    super.initState();
    _listener = () => _validate(widget.controller.text);
    widget.controller.addListener(_listener);
    _validate(widget.controller.text);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listener);
    super.dispose();
  }

  bool _validate(String value) {
    final isValid = widget.validator?.call(value) ?? true;
    setState(() {
      _effectiveErrorText = isValid
          ? null
          : (widget.errorText ?? defaultErrorText);
    });
    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    UnderlineInputBorder buildBorder({
      required Color? color,
      required double? width,
      required Color fallbackColor,
      required double fallbackWidth,
    }) {
      return UnderlineInputBorder(
        borderSide: BorderSide(
          color: color ?? fallbackColor,
          width: width ?? fallbackWidth,
        ),
      );
    }

    final input = TextField(
      controller: widget.controller,
      focusNode: widget.focusNode,
      keyboardType: widget.keyboardType,
      textAlign: widget.textAlign,
      inputFormatters: widget.inputFormatters,
      enabled: widget.enabled,
      maxLines: widget.maxLines,
      style: widget.style ?? TextStyle(fontSize: 11),
      decoration: InputDecoration(
        isDense: true,
        contentPadding:
            widget.contentPadding ?? EdgeInsets.symmetric(vertical: 12),
        hintText: widget.hintText,
        hintStyle:
            widget.hintStyle ??
            TextStyle(
              fontSize: 11,
              color: isDarkMode ? Colors.grey.shade500 : Colors.grey.shade400,
            ),
        border: widget.border ?? const UnderlineInputBorder(),
        enabledBorder:
            widget.enabledBorder ??
            buildBorder(
              color: widget.enabledBorderColor,
              width: widget.enabledBorderWidth,
              fallbackColor: isDarkMode
                  ? Colors.grey.shade700
                  : Colors.grey.shade400,
              fallbackWidth: 1.0,
            ),
        focusedBorder:
            widget.focusedBorder ??
            buildBorder(
              color: widget.focusedBorderColor,
              width: widget.focusedBorderWidth,
              fallbackColor: isDarkMode ? Colors.blue.shade300 : Colors.blue,
              fallbackWidth: 2.0,
            ),
        errorBorder:
            widget.errorBorder ??
            buildBorder(
              color: widget.errorBorderColor,
              width: widget.errorBorderWidth,
              fallbackColor: Colors.red.shade600,
              fallbackWidth: 1.0,
            ),
        focusedErrorBorder:
            widget.focusedErrorBorder ??
            buildBorder(
              color: widget.focusedErrorBorderColor,
              width: widget.focusedErrorBorderWidth,
              fallbackColor: Colors.red.shade600,
              fallbackWidth: 2.0,
            ),
        errorText: widget.forceErrorText ?? _effectiveErrorText,
        errorStyle: widget.errorStyle ?? TextStyle(color: Colors.red.shade600),
      ),
      onChanged: (value) {
        bool isValid = _validate(value);
        widget.onChanged?.call(
          isValid || widget.emitInvalidValue ? value : '',
          widget.extra,
        );
      },
    );

    if (widget.expandWidth) {
      if (widget.adaptiveWidth) {
        return SizedBox(
          width: _adaptiveWidth(context),
          child: input,
        );
      }

      return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: widget.minWidth,
          maxWidth: widget.maxWidth,
        ),
        child: input,
      );
    }

    return IntrinsicWidth(
      stepWidth: 10,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: widget.minWidth,
          maxWidth: widget.maxWidth,
        ),
        child: input,
      ),
    );
  }

  double _adaptiveWidth(BuildContext context) {
    final text = widget.controller.text.isNotEmpty
        ? widget.controller.text
        : widget.hintText ?? '';
    final style = widget.style ?? const TextStyle(fontSize: 11);
    final painter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: Directionality.of(context),
    )..layout();
    final measuredWidth = painter.width + widget.adaptiveHorizontalPadding;
    final fallbackWidth = widget.controller.text.length *
        widget.adaptiveCharacterWidth +
        widget.adaptiveHorizontalPadding;
    final targetWidth = measuredWidth > widget.minWidth
        ? measuredWidth
        : fallbackWidth;
    return targetWidth.clamp(widget.minWidth, widget.maxWidth);
  }
}
