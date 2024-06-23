import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A custom button widget that can be used throughout the app.
/// 
/// The [CustomButtonWidget] is a stateless widget that takes several
/// parameters to customize its appearance and behavior.
class CustomButtonWidget extends StatelessWidget {
  /// Callback function that is triggered when the button is pressed.
  final VoidCallback onPressed;

  /// The text to display on the button.
  final String text;

  /// The width of the button. Defaults to 100.
  final double width;

  /// The padding inside the button. Defaults to [AppSpacing.medium].
  final double padding;

  /// Determines whether the button is enabled or not. Defaults to true.
  final bool enabled;

  /// Creates a [CustomButtonWidget].
  const CustomButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.text,
      this.width = 100,
      this.enabled = true,
      this.padding = AppSpacing.medium})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      key: key,
      onTap: onPressed,
      child: Container(
        width: width,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
          color: enabled ? AppColors.primaryColorLight : AppColors.disabledColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.chip.copyWith(fontSize: 14),
          ),
        ),
      ),
    );
  }
}
