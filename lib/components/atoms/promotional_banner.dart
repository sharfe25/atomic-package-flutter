import 'package:ecommerce_design_system_package/models/promotional_banner_model.dart';
import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A stateless widget that displays a promotional banner.
class PromotionalBanner extends StatelessWidget {
  final PromotionalBannerModel banner;

  /// Creates a [PromotionalBanner] widget.
  const PromotionalBanner(
      {Key? key,
      required this.banner,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.only(bottom: AppSpacing.large),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: banner.image, fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: 150,
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(5),
            child: Text(
              banner.title,
              style: AppTextStyles.chip.copyWith(fontSize: 15),
              textAlign: TextAlign.end,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            padding: const EdgeInsets.all(5),
            color: AppColors.primaryColorLight,
            child: Text(
              banner.promotion,
              style: AppTextStyles.chip,
            ),
          )
        ],
      ),
    );
  }
}
