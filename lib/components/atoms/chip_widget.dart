import 'package:flutter/material.dart';

import '../../models/chip_model.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A custom chip widget that displays a title and handles tap events.
///
/// The [ChipWidget] is a stylized button that displays a text label and
/// can respond to tap events with a custom callback function.
class ChipWidget extends StatelessWidget {
  /// The chip data to be displayed on the chip.
  final ChipModel chipData;

  /// Creates a [ChipWidget].
  ///
  /// The [chipData] parameters is required.
  const ChipWidget({Key? key, required this.chipData,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: chipData.onTap,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.small, horizontal: AppSpacing.medium),
        decoration: BoxDecoration(
          color: AppColors.primaryColorLight,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          chipData.title,
          style: AppTextStyles.chip,
        ),
      ),
    );
  }
}
