import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oktoast/oktoast.dart';
import 'package:rapidefi/l10n/app_localizations.dart';

class UnderlineCopyText extends StatelessWidget {
  final String text;
  final String copyText;
  final TextStyle style;
  final double underlineGap;
  final double underlineHeight;
  final double underlineExtraWidth;
  final VoidCallback? onCopied;

  const UnderlineCopyText({
    super.key,
    required this.text,
    required this.copyText,
    required this.style,
    this.underlineGap = 2,
    this.underlineHeight = 1,
    this.underlineExtraWidth = 2,
    this.onCopied,
  });

  @override
  Widget build(BuildContext context) {
    final underlineColor =
        style.color ?? DefaultTextStyle.of(context).style.color ?? Colors.black;

    return Tooltip(
      message: AppLocalizations.of(context)!.clickToCopy,
      child: InkWell(
        onTap: () {
          Clipboard.setData(ClipboardData(text: copyText));
          showToast(AppLocalizations.of(context)!.copiedToClipboard);
          onCopied?.call();
        },
        child: IntrinsicWidth(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                text,
                maxLines: 1,
                softWrap: false,
                style: style,
              ),
              SizedBox(height: underlineGap),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(height: underlineHeight),
                  Positioned(
                    left: 0,
                    right: -underlineExtraWidth,
                    top: 0,
                    bottom: 0,
                    child: ColoredBox(color: underlineColor),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
