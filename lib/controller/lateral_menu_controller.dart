import 'package:flutter/material.dart';

/// A provider class for managing lateral menu animations and state.
class LateralMenuController {
  late AnimationController _animationController;
  late Animation<Offset> _offsetAnimation;


  /// Retrieves the animation controller used for lateral menu animations.
  AnimationController get animationController => _animationController;

  /// Retrieves the offset animation controlling lateral menu slide-in/out.
  Animation<Offset> get offsetAnimation => _offsetAnimation;


  /// Initializes the animation controller and offset animation for lateral menu.
  ///
  /// [ticker] is required for vsync, providing the TickerProvider for animations.
  void initAnimation({TickerProvider? ticker}) {
    if (ticker == null) {
      return;
    }
    _animationController = AnimationController(
      vsync: ticker,
      duration: const Duration(seconds: 1),
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.forward();
  }

  /// Disposes of the animation controller when it is no longer needed.
  void disposeAnimation() {
    _animationController.dispose();
  }
}
