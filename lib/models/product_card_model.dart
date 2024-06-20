import 'package:flutter/material.dart';

/// A model class representing a product card.
///
/// This class contains properties for the product card's title, image URL, price,
/// and callbacks for tapping on the product and adding it to the cart.
/// It is commonly used to hold data for card-based UI elements.
class ProductCardModel {
  /// The title text of the product card.
  final String title;

  /// The URL or asset path of the image displayed on the product card.
  final String image;

  /// The price of the product displayed on the card.
  final num price;

  /// The callback function to be called when the product card is tapped.
  final VoidCallback onTapProduct;

  /// The callback function to be called when the add to cart button is tapped.
  final VoidCallback addToCart;

  /// Creates a [ProductCardModel].
  ///
  /// All parameters are required.
  const ProductCardModel({
    required this.title,
    required this.image,
    required this.price,
    required this.onTapProduct,
    required this.addToCart,
  });
}
