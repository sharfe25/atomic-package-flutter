/// A model class representing a card.
///
/// This class contains properties for the card's ID, title, image URL, and subtitle.
/// It is commonly used to hold data for card-based UI elements.
class CardModel {
  /// The unique identifier of the card.
  final num id;

  /// The title text of the card.
  final String title;

  /// The URL or asset path of the image displayed on the card.
  final String image;

  /// The subtitle text of the card.
  final String subtitle;

  /// Creates a [CardModel].
  ///
  /// All parameters are required.
  const CardModel({
    required this.id,
    required this.title,
    required this.image,
    required this.subtitle,
  });
}
