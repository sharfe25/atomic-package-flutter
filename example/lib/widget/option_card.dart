import 'package:flutter/material.dart';

/// Represents a card widget with customizable title, image, and tap callback.
class OptionCardWidget extends StatelessWidget {
  /// The title displayed below the image.
  final String title;

  /// The path to the image asset to display.
  final String urlImage;

  /// Callback function triggered when the card is tapped.
  final VoidCallback onTap;

  /// Creates a new instance of OptionCardWidget.
  ///
  /// The [title] and [urlImage] parameters are required.
  /// The [onTap] parameter is required to handle tap events.
  const OptionCardWidget({
    Key? key,
    required this.title,
    required this.urlImage,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 8),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              color: Color.fromARGB(255, 208, 208, 208),
              blurRadius: 8,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
