import 'package:ecommerce_design_system_package/components/molecules/product_card.dart';
import 'package:flutter/material.dart';
import '../../models/product_card_model.dart';
import '../molecules/grid_skeleton.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A widget that displays a grid of products with a title.
///
/// The [CardsGrid] widget arranges the given list of products in a grid layout,
/// with each product displayed as a card. It also includes a title above the grid.
class CardsGrid extends StatelessWidget {
  /// The title to be displayed above the grid.
  final String title;

  /// The list of cards to be displayed in the grid.
  final List<ProductCardModel> cards;

  /// The load indicator.
  final bool isLoading;

  /// Creates a [CardsGrid].
  ///
  /// The [title] and [cards] parameters are required.
  const CardsGrid(
      {Key? key,
      required this.title,
      required this.cards,
      this.isLoading = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: AppSpacing.medium,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: AppTextStyles.subtitle,
            ),
          ),
          if (isLoading) const GridSkeleton(),
          if (!isLoading)
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.small),
              physics: const NeverScrollableScrollPhysics(),
              itemCount: cards.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 12.0,
                childAspectRatio: 1 / 1.5,
              ),
              itemBuilder: (context, index) {
                return ProductCard(product: cards[index]);
              },
            ),
        ],
      ),
    );
  }
}
