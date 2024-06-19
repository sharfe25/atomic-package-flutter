import 'package:ecommerce_design_system_package/models/card_model.dart';
import 'package:flutter/material.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A widget that displays a detail card with an image, title, and subtitle.
///
/// The [DetailCard] is used to display details in a card layout,
/// including an image, title, and subtitle.
class DetailCard extends StatelessWidget {
  /// The data card to be displayed.
  final CardModel cardData;

  /// Creates a [DetailCard].
  ///
  /// The [cardData] parameter must not be null and is required.
  const DetailCard({
    super.key,
    required this.cardData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 180,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(cardData.image),
            ),
            color: AppColors.cardColor,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Text(
            cardData.title,
            style: AppTextStyles.body.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: AppSpacing.medium,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Expanded(
          child: Text(
            cardData.subtitle,
            style: AppTextStyles.body.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
