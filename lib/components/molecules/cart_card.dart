import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A card widget that displays product information for a shopping cart.
///
/// The [CartCard] displays an image, title, price, and additional actions.
/// It is designed to be used in a shopping cart screen.
class CartCard extends StatelessWidget {
  /// The title of the product.
  final String title;

  /// The URL of the product image.
  final String image;

  /// The price of the product.
  final String price;

  /// A widget that represents actions, such as buttons, related to the product.
  final Widget actions;

  /// Creates a [CartCard] widget.
  ///
  /// The [title], [image], [price], and [actions] parameters are required.
  const CartCard({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
    required this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 120,
          height: 120,
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.network(
            image,
            fit: BoxFit.contain,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: AppSpacing.small,
              right: AppSpacing.small,
              top: AppSpacing.small,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: AppSpacing.medium,
                  ),
                ),
                const SizedBox(
                  height: AppSpacing.small,
                ),
                Text(
                  price,
                  style: AppTextStyles.body.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: AppSpacing.large,
                  ),
                ),
                actions
              ],
            ),
          ),
        )
      ],
    );
  }
}
