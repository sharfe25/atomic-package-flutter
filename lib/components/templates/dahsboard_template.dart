import 'package:flutter/material.dart';

import '../organisms/custom_app_bar.dart';
import '../tokens/app_colors.dart';
import '../tokens/app_spacing.dart';

/// A template widget for dashboard screens.
///
/// The [DashboardTemplate] widget provides a consistent layout for dashboard screens,
/// including a custom app bar and body content.
class DashboardTemplate extends StatelessWidget {
  /// The main body content of the dashboard screen.
  final Widget body;

  /// The title to be displayed in the app bar.
  final String? title;

  /// The callback function to be called when the back icon is tapped.
  final VoidCallback? onTapBack;

  /// The callback function to be called when the bag icon is tapped.
  final VoidCallback? onTapBag;

  /// Creates a [DashboardTemplate].
  ///
  /// The [body] parameter is required, while [title], [onTapBack], and [onTapBag]
  /// parameters are optional.
  const DashboardTemplate({
    Key? key,
    required this.body,
    this.title,
    this.onTapBack,
    this.onTapBag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayColor,
      body: Column(
        children: [
          CustomAppBar(
            color: Colors.blueGrey,
            title: title,
            onTapBack: onTapBack,
          ),
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
    );
  }
}
