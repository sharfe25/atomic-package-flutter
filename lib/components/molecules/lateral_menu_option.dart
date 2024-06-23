import 'package:ecommerce_design_system_package/models/menu_option_model.dart';
import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A stateless widget that displays an option in the lateral menu.
class LateralMenuOption extends StatelessWidget {
  /// The text to display for the menu option.
  final MenuOptionModel option;

  /// Creates a [LateralMenuOption] widget.
  const LateralMenuOption({
    Key? key,
    required this.option
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (option.onTap != null) {
          option.onTap!();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0, vertical: AppSpacing.xSmall),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              option.title,
              style:
                  AppTextStyles.subtitle.copyWith(color: AppColors.blackColor),
            ),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
