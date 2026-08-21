//  link_button.dart 
//  Created by JeoJay127 
//
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomLinkButton extends StatelessWidget {
  final String url;
  final String buttonText;

  /// Prioritize IconData; if null, use imagePath
  final IconData? icon;
  final String? imagePath;
  final double iconSize;

  /// Content padding, default 6
  final EdgeInsetsGeometry padding;

  /// Spacing between icon and text
  final double iconTextSpacing;

  /// If null, default launchUrl behavior is used
  final Future<void> Function(BuildContext context, String url)? onTap;

  const CustomLinkButton({
    super.key,
    required this.url,
    required this.buttonText,
    this.icon,
    this.imagePath,
    this.iconSize = 24.0,
    this.padding = const EdgeInsets.symmetric(horizontal: 10,vertical: 6),
    this.iconTextSpacing = 6.0,
    this.onTap,
  });

  Future<void> _handleTap(BuildContext context) async {
    if (onTap != null) {
      await onTap!(context, url);
      return;
    }

    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
      return;
    }

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Unable to open link')),
      );
    }
  }

  Widget? _buildIcon() {
    if (icon != null) {
      return Icon(
        icon,
        size: iconSize,
      );
    }

    if (imagePath != null && imagePath!.isNotEmpty) {
      return Image.asset(
        imagePath!,
        width: iconSize,
        height: iconSize,
        fit: BoxFit.contain,
      );
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    final leadingIcon = _buildIcon();

    return Semantics(
      link: true,
      button: true,
      label: buttonText,
      child: Material(
        color: Colors.grey.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(6),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => _handleTap(context),
          borderRadius: BorderRadius.circular(6),
          child: Padding(
            padding: padding,
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (leadingIcon != null) ...[
                    leadingIcon,
                    SizedBox(width: iconTextSpacing),
                  ],
                  Text(
                    buttonText,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}