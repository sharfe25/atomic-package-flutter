import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A widget that displays a product card with an image, title, and price.
///
/// The [ProductCard] is used to display product details in a card layout,
/// including the product image, title, and price.
class ProductCard extends StatelessWidget {
  /// The product data to be displayed.
  final ProductCardModel product;

  /// Creates a [ProductCard].
  ///
  /// The [product] parameter must not be null and is required.
  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: product.onTapProduct,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: 210,
              height: 210,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: product.image.isNotEmpty ? Image.network(
                product.image,
                fit: BoxFit.contain,
              ): const SizedBox.shrink(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              product.title,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: AppSpacing.medium,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$${product.price.toStringAsFixed(2)}',
                style: AppTextStyles.body.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              CustomButtonWidget(
                  width: 50,
                  padding: 0,
                  onPressed: product.addToCart,
                  text: 'Add')
            ],
          ),
        ],
      ),
    );
  }
}
