import 'package:flutter/material.dart';

import '../atoms/icon_button_widget.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';
import '../tokens/app_text_styles.dart';

/// A custom app bar widget that displays a title and optional back and bag icons.
///
/// The [CustomAppBar] widget is used to create a custom app bar with a title,
/// and optional back and bag icons. Tapping on the icons triggers the
/// corresponding callback functions if provided.
class CustomAppBar extends StatelessWidget {
  /// The title text to be displayed in the app bar.
  final String? title;

  /// The callback function to be called when the back icon is tapped.
  final VoidCallback? onTapBack;

  /// The callback function to be called when the bag icon is tapped.
  final VoidCallback? onTapBag;

  /// The color for de app bar.
  final Color color;

  /// Creates a [CustomAppBar].
  ///
  /// The [title], [onTapBack], [onTapBag], and [onTapBag] parameters are optional.
  const CustomAppBar({Key? key, this.title, this.onTapBack, this.onTapBag, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(
        right: AppSpacing.medium,
        left: AppSpacing.medium,
        top: 40,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.large,
      ),
      child: Stack(
        children: [
          // Display the menu icon if onTapBack is null
          if (onTapBack == null)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButtonWidget(
                onPressed: () {},
                icon: Icons.menu,
                iconSize: 22,
              ),
            ),
          // Display the back icon if onTapBack is provided
          if (onTapBack != null)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButtonWidget(
                onPressed: () {
                  if (onTapBack != null) {
                    onTapBack!();
                  }
                },
                icon: Icons.arrow_back_ios_new,
                iconSize: 20,
              ),
            ),
          // Display the title text in the center
          Center(
            child: Text(
              title ?? '',
              style: AppTextStyles.subtitle.copyWith(color: AppColors.blackColor),
            ),
          ),
          // Display the bag icon if onTapBag is provided
          if (onTapBag != null)
            Align(
              alignment: Alignment.centerRight,
              child: IconButtonWidget(
                onPressed: () {},
                icon: Icons.local_mall_outlined,
                iconSize: 22,
              ),
            ),
        ],
      ),
    );
  }
}
