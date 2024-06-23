import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A customizable input field widget with various styling options.
///
/// The [CustomInput] widget provides a text input field with optional label,
/// hint text, and validation. It supports customization for colors, border radius,
/// and input behavior such as obscuring text for passwords.
class CustomInput extends StatelessWidget {
  /// The label text displayed above the input field.
  final String? label;

  /// The hint text displayed inside the input field.
  final String? hintText;

  /// Whether the text should be obscured (e.g., for passwords).
  final bool isObscure;

  /// The color of the input text.
  final Color? inputColor;

  /// The color of the hint text.
  final Color? hintColor;

  /// The border radius of the input field.
  final double borderRadius;

  /// Whether the input field is enabled.
  final bool enabled;

  /// Whether the input field should autofocus on being displayed.
  final bool autofocus;

  /// The controller for the input field.
  final TextEditingController controller;

  /// Callback function to be called when the input field is tapped.
  final VoidCallback? onTap;

  /// Callback function to be called when the input value changes.
  final VoidCallback? onChanged;

  /// The validator function for the input field.
  final String? Function(String?)? validator;

  /// Creates a [CustomInput] widget.
  ///
  /// The [controller] parameter is required. The other parameters are optional
  /// and provide various customization options.
  const CustomInput({
    Key? key,
    required this.controller,
    this.label,
    this.isObscure = false,
    this.enabled = true,
    this.hintText,
    this.inputColor,
    this.hintColor,
    this.borderRadius = 20,
    this.onTap,
    this.onChanged,
    this.validator,
    this.autofocus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label != null)
          Column(
            children: [
              Text(
                label!,
                style: AppTextStyles.subtitle,
              ),
              const SizedBox(
                height: AppSpacing.medium,
              ),
            ],
          ),
        GestureDetector(
          onTap: onTap,
          child: TextFormField(
            key: key,
            autofocus: autofocus,
            enabled: enabled,
            onChanged: (String value) {
              if (onChanged != null) {
                onChanged!();
              }
            },
            validator: validator,
            obscureText: isObscure,
            controller: controller,
            style: const TextStyle(
              fontSize: 14,
              color: AppColors.grayColor,
            ),
            cursorColor: AppColors.whiteColor,
            cursorWidth: 1,
            cursorHeight: 17,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14,
                color: hintColor ?? AppColors.whiteColor,
              ),
              errorStyle: const TextStyle(height: 0),
              filled: true,
              fillColor: inputColor ?? AppColors.shadowColor,
              contentPadding: const EdgeInsets.symmetric(
                vertical: AppSpacing.small,
                horizontal: 14,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: inputColor ?? AppColors.shadowColor,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: inputColor ?? AppColors.shadowColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: inputColor ?? AppColors.shadowColor,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(borderRadius),
                borderSide: BorderSide(
                  color: inputColor ?? AppColors.shadowColor,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
