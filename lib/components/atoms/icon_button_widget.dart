import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';

/// A custom icon button widget that displays an icon and handles tap events.
///
/// The [IconButtonWidget] is a stylized button that displays an icon and
/// can respond to tap events with a custom callback function.
class IconButtonWidget extends StatelessWidget {
  /// The callback function to be called when the button is pressed.
  final VoidCallback onTap;

  /// The background color of the icon.
  final Color? iconColor;

  /// The icon to be displayed in the button.
  final IconData icon;

  /// The size of the icon.
  final double? iconSize;

  /// The background color of the button.
  final Color? backgroundColor;

  /// The padding inside the button. Defaults to [AppSpacing.medium].
  final double padding;

  /// Creates an [IconButtonWidget].
  ///
  /// The [onTap] and [icon] parameters are required. The [iconColor],
  /// [iconSize], and [backgroundColor] parameters are optional.
  const IconButtonWidget({
    Key? key,
    required this.onTap,
    this.iconColor,
    this.iconSize,
    required this.icon,
    this.backgroundColor,
    this.padding = AppSpacing.medium,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: key,
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.grayColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          size: iconSize ?? 20,
          color: iconColor,
        ),
      ),
    );
  }
}
