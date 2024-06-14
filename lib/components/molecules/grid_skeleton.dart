import 'package:flutter/material.dart';

import '../atoms/skeleton_widget.dart';
import '../tokens/app_spacing.dart';

/// A widget that displays a grid of skeleton loading animations.
///
/// This widget is useful for showing placeholder content while the actual
/// grid content is being loaded.
class GridSkeleton extends StatelessWidget {
  /// Creates a [GridSkeleton].
  ///
  /// The constructor takes an optional [key] parameter.
  const GridSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // Prevents the grid from expanding infinitely.
      shrinkWrap: true,
      // Adds vertical padding to the grid.
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.small),
      // Disables scrolling for the grid.
      physics: const NeverScrollableScrollPhysics(),
      // Sets the number of items in the grid.
      itemCount: 4,
      // Defines the layout of the grid.
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,          // Number of columns in the grid.
        mainAxisSpacing: 20.0,      // Vertical spacing between grid items.
        crossAxisSpacing: 12.0,     // Horizontal spacing between grid items.
        childAspectRatio: 1 / 1.5,  // Aspect ratio of each grid item.
      ),
      // Builds each item in the grid.
      itemBuilder: (context, index) {
        return const SkeletonWidget(
          width: 200,
          height: 210,
        );
      },
    );
  }
}
