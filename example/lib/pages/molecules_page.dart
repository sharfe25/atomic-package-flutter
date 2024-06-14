import 'package:atomic_flutter_package/atomic_flutter_package.dart';
import 'package:atomic_flutter_package/models/card_model.dart';
import 'package:atomic_flutter_package/models/chip_model.dart';
import 'package:flutter/material.dart';

/// Widget to showcase molecules from the Atomic Flutter Package.
class MoleculesPage extends StatelessWidget {
  MoleculesPage({super.key});

  final List<ChipModel> chips = [
    ChipModel(title: 'One Chip', onTap: () {}),
    ChipModel(title: 'Second Chip', onTap: () {}),
    ChipModel(title: 'Third Chip', onTap: () {}),
    ChipModel(title: 'Fourth Chip', onTap: () {}),
    ChipModel(title: 'Fifth Chip', onTap: () {}),
    ChipModel(title: 'Sixth Chip', onTap: () {}),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Molecules',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const Text('Detail Card:'),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 300,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 80.0),
                  child: DetailCard(
                    cardData: CardModel(
                        id: 1,
                        title: 'Title test',
                        image: 'assets/molecule.png',
                        subtitle: 'Subtitle test'),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Chips Carousel:'),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ChipsCarousel(
                  chips: chips,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Grid Skeleton:'),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(18.0),
                child: GridSkeleton(),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
