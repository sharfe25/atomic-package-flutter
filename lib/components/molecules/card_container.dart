import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A stateless widget that displays a card container with a title and subtitle.
class CardContainer extends StatelessWidget {
  /// The title text to display in the card.
  final String title;

  /// The subtitle text to display in the card.
  final String subtitle;

  /// The background color of the card. Defaults to [AppColors.whiteColor] if not provided.
  final Color? color;

  /// Creates a [CardContainer] widget.
  const CardContainer({
    Key? key, 
    required this.title, 
    required this.subtitle, 
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.only(
        top: AppSpacing.small,
      ),
      padding: const EdgeInsets.all(AppSpacing.large),
      decoration: BoxDecoration(
        color: color ?? AppColors.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyles.title,
          ),
          Text(
            subtitle,
            style: AppTextStyles.subtitle,
          ),
        ],
      ),
    );
  }
}
