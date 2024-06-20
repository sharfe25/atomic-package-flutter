import 'package:flutter/material.dart';
import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';

/// Widget to showcase organisms from the Atomic Flutter Package.
class OrganismPage extends StatelessWidget {
  OrganismPage({Key? key}) : super(key: key);

  final List<ProductCardModel> cardsData = [
    ProductCardModel(
        title: 'Title 1',
        image: 'https://picsum.photos/400/400',
        price: 20,
        onTapProduct: () {},
        addToCart: () {}),
    ProductCardModel(
        title: 'Title 2',
        image: 'https://picsum.photos/400/400',
        price: 20,
        onTapProduct: () {},
        addToCart: () {}),
    ProductCardModel(
        title: 'Title 3',
        image: 'https://picsum.photos/400/400',
        price: 20,
        onTapProduct: () {},
        addToCart: () {}),
    ProductCardModel(
        title: 'Title 4',
        image: 'https://picsum.photos/400/400',
        price: 20,
        onTapProduct: () {},
        addToCart: () {}),
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
