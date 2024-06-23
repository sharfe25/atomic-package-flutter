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

  /// The callback function to be called when the menu icon is tapped.
  final VoidCallback? onTapMenu;

  /// The number to be displayed as a badge on the bag icon.
  final num bagBadge;

  /// The color for the app bar.
  final Color? color;

  /// Creates a [CustomAppBar].
  ///
  /// The [title], [onTapBack], [onTapBag], [onTapMenu], [bagBadge], and [color] parameters are optional.
  const CustomAppBar({
    Key? key,
    this.title,
    this.onTapBack,
    this.onTapBag,
    this.color,
    this.onTapMenu,
    this.bagBadge = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: color ?? AppColors.whiteColor,
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
          if (onTapBack == null)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButtonWidget(
                key: const Key('menu_btn'),
                onTap: () {
                  if (onTapMenu != null) {
                    onTapMenu!();
                  }
                },
                icon: Icons.menu,
                iconSize: 22,
              ),
            ),
          if (onTapBack != null)
            Align(
              alignment: Alignment.centerLeft,
              child: IconButtonWidget(
                key: const Key('back_btn'),
                onTap: () {
                  if (onTapBack != null) {
                    onTapBack!();
                  }
                },
                icon: Icons.arrow_back_ios_new,
                iconSize: 20,
              ),
            ),
          Center(
            child: Text(
              title ?? '',
              style:
                  AppTextStyles.subtitle.copyWith(color: AppColors.blackColor),
            ),
          ),
          if (onTapBag != null)
            Align(
              alignment: Alignment.centerRight,
              child: Badge(
                isLabelVisible: bagBadge != 0,
                backgroundColor: AppColors.primaryColorLight,
                label: Text(bagBadge.toString()),
                child: IconButtonWidget(
                  key: const Key('bag_btn'),
                  onTap: () {
                    if (onTapBag != null) {
                      onTapBag!();
                    }
                  },
                  icon: Icons.local_mall_outlined,
                  iconSize: 22,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
