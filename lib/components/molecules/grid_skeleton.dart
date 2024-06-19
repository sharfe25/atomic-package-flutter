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
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: AppSpacing.small),
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,          
        mainAxisSpacing: 20.0,      
        crossAxisSpacing: 12.0,     
        childAspectRatio: 1 / 1.5, 
      ),
      itemBuilder: (context, index) {
        return const SkeletonWidget(
          width: 200,
          height: 210,
        );
      },
    );
  }
}
