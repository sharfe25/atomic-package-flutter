import 'package:ecommerce_design_system_package/models/chip_model.dart';
import 'package:flutter/material.dart';

import '../atoms/chip_widget.dart';
import '../tokens/app_spacing.dart';

/// A widget that displays a horizontal carousel of category chips.
///
/// The [ChipsCarousel] widget fetches category data from a [CategoryProvider]
/// and displays each category as a chip. Tapping on a chip triggers the retrieval
/// of products belonging to that category using a [ProductProvider].
class ChipsCarousel extends StatelessWidget {
  final List<ChipModel> chips;

  /// Creates a [ChipsCarousel].
  ///
  /// The [chips] parameters is required.
  const ChipsCarousel({
    super.key,
    required this.chips,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.small),
      height: 50,
      child: ListView.separated(
        itemCount: chips.length,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: AppSpacing.medium,
          );
        },
        itemBuilder: (context, index) {
          return ChipWidget(
            chipData: chips[index],
          );
        },
      ),
    );
  }
}
