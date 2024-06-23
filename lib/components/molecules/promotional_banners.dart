import 'package:ecommerce_design_system_package/models/promotional_banner_model.dart';
import 'package:flutter/material.dart';
import '../atoms/promotional_banner.dart';
import '../tokens/app_spacing.dart';

/// A stateless widget that displays a list of promotional banners.
class PromotionalBanners extends StatelessWidget {
  final List<PromotionalBannerModel> banners;

  /// Creates a [PromotionalBanners] widget.
  const PromotionalBanners({Key? key, required this.banners}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.small),
      height: 150,
      child: ListView.separated(
        itemCount: banners.length,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: AppSpacing.medium,
          );
        },
        itemBuilder: (context, index) {
          return PromotionalBanner(
            banner: banners[index],
          );
        },
      ),
    );
  }
}
