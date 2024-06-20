import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';

import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';

/// A template widget for dashboard screens.
///
/// The [DashboardTemplate] widget provides a consistent layout for dashboard screens,
/// including a custom app bar and body content.
class DashboardTemplate extends StatelessWidget {
  /// The main body content of the dashboard screen.
  final Widget body;

  /// The optional lateral menu widget.
  final Widget? lateralMenu;

  /// The title to be displayed in the app bar.
  final String? title;

  /// The callback function to be called when the back icon is tapped.
  final VoidCallback? onTapBack;

  /// The callback function to be called when the bag icon is tapped.
  final VoidCallback? onTapBag;

  /// The callback function to be called when the menu icon is tapped.
  final VoidCallback? onTapMenu;

  /// The number to be displayed as a badge on the bag icon.
  final num bagBadge;

  /// Creates a [DashboardTemplate].
  ///
  /// The [body] parameter is required. The other parameters are optional and provide
  /// various customization options.
  const DashboardTemplate({
    Key? key,
    required this.body,
    this.title,
    this.onTapBack,
    this.onTapBag,
    this.onTapMenu,
    this.lateralMenu,
    this.bagBadge = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayColor,
      body: Stack(
        children: [
          Column(
            children: [
              // Custom app bar with provided title and callbacks
              CustomAppBar(
                bagBadge: bagBadge,
                title: title,
                onTapBack: onTapBack,
                onTapBag: onTapBag,
                onTapMenu: onTapMenu,
              ),
              // Expanded body content to occupy remaining space
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: AppSpacing.large,
                    right: AppSpacing.large,
                    bottom: AppSpacing.large,
                  ),
                  child: body,
                ),
              ),
            ],
          ),
          if (lateralMenu != null) lateralMenu!,
        ],
      ),
    );
  }
}
