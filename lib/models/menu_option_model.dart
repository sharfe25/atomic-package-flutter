import 'package:flutter/material.dart';

/// A model class representing a chip.
///
/// This class contains properties for the chip's title and a callback
/// function that is executed when the chip is tapped.
class MenuOptionModel {
  /// The title text of the chip.
  final String title;

  /// The callback function to be executed when the chip is tapped.
  final VoidCallback? onTap;

  /// Creates a [MenuOptionModel].
  ///
  /// Both [title] and [onTap] parameters are required.
  const MenuOptionModel({
    required this.title,
    this.onTap,
  });
}
