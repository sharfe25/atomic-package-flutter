import 'package:flutter/material.dart';

/// A model class representing a chip.
///
/// This class contains properties for the chip's title and a callback
/// function that is executed when the chip is tapped.
class ChipModel {
  /// The title text of the chip.
  final String title;

  /// The callback function to be executed when the chip is tapped.
  final VoidCallback onTap;

  /// Creates a [ChipModel].
  ///
  /// Both [title] and [onTap] parameters are required.
  const ChipModel({
    required this.title,
    required this.onTap,
  });
}
