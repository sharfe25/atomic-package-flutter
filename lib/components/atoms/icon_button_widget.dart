import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';

/// A custom icon button widget that displays an icon and handles tap events.
///
/// The [IconButtonWidget] is a stylized button that displays an icon and
/// can respond to tap events with a custom callback function.
class IconButtonWidget extends StatelessWidget {
  /// The callback function to be called when the button is pressed.
  final VoidCallback onPressed;

  /// The background color of the icon.
  final Color? backgroundColor;

  /// The icon to be displayed in the button.
  final IconData icon;

  /// The size of the icon.
  final double? iconSize;

  /// Creates an [IconButtonWidget].
  ///
  /// The [onPressed] and [icon] parameters are required. The [backgroundColor]
  /// and [iconSize] parameters are optional.
  const IconButtonWidget(
      {Key? key,
      required this.onPressed,
      this.backgroundColor,
      this.iconSize,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: const EdgeInsets.all(AppSpacing.medium),
        decoration: BoxDecoration(
          color: AppColors.grayColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(
          icon,
          size: iconSize ?? 20,
          color: backgroundColor,
        ),
      ),
    );
  }
}
