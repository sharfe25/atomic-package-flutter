import 'package:flutter/material.dart';
import 'package:ecommerce_design_system_package/models/chip_model.dart';
import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';

/// Widget to showcase atoms from the Atomic Flutter Package.
class AtomsPage extends StatelessWidget {
  const AtomsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Atoms',
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),
            const Text('Chip Widget:'),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80.0),
              child: ChipWidget(
                chipData: ChipModel(title: 'Title', onTap: () {}),
              ),
            ),
            const SizedBox(height: 20),
            const Text('Icon Button Widget:'),
            const SizedBox(height: 10),
            IconButtonWidget(
              onPressed: () {},
              icon: Icons.rocket,
            ),
            const SizedBox(height: 20),
            const Text('Skeleton Widget:'),
            const SizedBox(height: 10),
            const SkeletonWidget(height: 150, width: 150),
          ],
        ),
      ),
    );
  }
}
