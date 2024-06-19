import 'package:flutter/material.dart';
import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:ecommerce_design_system_package/models/card_model.dart';

/// Widget to showcase organisms from the Atomic Flutter Package.
class OrganismPage extends StatelessWidget {
  OrganismPage({Key? key}) : super(key: key);

  final List<CardModel> cardsData = [
    const CardModel(
      id: 1,
      title: 'Title 1',
      image: 'assets/molecule.png',
      subtitle: 'Subtitle',
    ),
    const CardModel(
      id: 2,
      title: 'Title 2',
      image: 'assets/molecule.png',
      subtitle: 'Subtitle',
    ),
    const CardModel(
      id: 3,
      title: 'Title 3',
      image: 'assets/molecule.png',
      subtitle: 'Subtitle',
    ),
    const CardModel(
      id: 4,
      title: 'Title 4',
      image: 'assets/molecule.png',
      subtitle: 'Subtitle',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Organism',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 40),
              const Text('Cards Grid:'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CardsGrid(
                  title: 'Test',
                  cards: cardsData,
                  isLoading: false,
                ),
              ),
              const SizedBox(height: 20),
              const Text('Custom App Bar:'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CustomAppBar(
                  onTapBack: () {},
                  color: Colors.cyan,
                  title: 'App bar title',
                ),
              ),
              const SizedBox(height: 20),
              const Text('Login Form:'),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(28.0),
                child: LoginForm(
                  usernameController: TextEditingController(text: ''),
                  passwordController: TextEditingController(text: ''),
                  onLogin: () {},
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
