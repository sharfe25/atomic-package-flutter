import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_spacing.dart';

/// A class that defines custom text styles for the application.
class AppTextStyles {

  /// A text style for titles.
  static const TextStyle title = TextStyle(
    fontSize: AppSpacing.xLarge,
    fontWeight: FontWeight.bold,
  );

  /// A text style for subtitles.
  static const TextStyle subtitle = TextStyle(
    fontSize: AppSpacing.large,
    fontWeight: FontWeight.w500,
    color: AppColors.subtitleColor,
  );

  /// A text style for body text.
  static const TextStyle body = TextStyle(
    fontSize: AppSpacing.medium,
  );

  /// A text style for chip labels.
  static const TextStyle chip = TextStyle(
    fontSize: AppSpacing.medium,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
  );
}
