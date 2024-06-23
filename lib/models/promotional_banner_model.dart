import 'package:flutter/material.dart';

class PromotionalBannerModel {
  final ImageProvider<Object> image;
  final String title;
  final String promotion;

  const PromotionalBannerModel({
    required this.image,
    required this.title,
    required this.promotion,
  });
}
