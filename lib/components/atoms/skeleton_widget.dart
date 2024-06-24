import 'package:flutter/material.dart';

/// A widget that displays a skeleton loading animation.
/// 
/// This widget can be used to indicate that content is being loaded.
/// It fades in and out to create a pulsing effect, simulating the loading process.
class SkeletonWidget extends StatefulWidget {
  /// The height of the skeleton widget.
  final double height;

  /// The width of the skeleton widget.
  final double width;

  /// Creates a [SkeletonWidget].
  /// 
  /// The [height] and [width] parameters are required.
  const SkeletonWidget({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  State<SkeletonWidget> createState() => _SkeletonWidgetState();
}

class _SkeletonWidgetState extends State<SkeletonWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
