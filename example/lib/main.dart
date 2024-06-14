import 'package:example/pages/atoms_page.dart';
import 'package:example/pages/molecules_page.dart';
import 'package:example/pages/organism_page.dart';
import 'package:example/pages/pages_page.dart';
import 'package:example/pages/templates_page.dart';
import 'package:example/widget/option_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

/// The main application widget.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // Theme configuration
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Atomic Design'), // Set initial route to MyHomePage
    );
  }
}

/// Represents the home page of the application.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// The state for MyHomePage widget.
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title), // Display title received from MyHomePage constructor
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'In this example you can understand atomic design using the atomic_flutter_package package:',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: GridView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20.0,
                    crossAxisSpacing: 12.0,
                    childAspectRatio: 1 / 1.0,
                  ),
                  children: <Widget>[
                    // Option cards for different atomic design levels
                    OptionCardWidget(
                      title: 'Atoms',
                      urlImage: 'assets/atom.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const AtomsPage()),
                        );
                      },
                    ),
                    OptionCardWidget(
                      title: 'Molecules',
                      urlImage: 'assets/molecule.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MoleculesPage()),
                        );
                      },
                    ),
                    OptionCardWidget(
                      title: 'Organism',
                      urlImage: 'assets/organism.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OrganismPage()),
                        );
                      },
                    ),
                    OptionCardWidget(
                      title: 'Pages',
                      urlImage: 'assets/page.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const PagesPage()),
                        );
                      },
                    ),
                    OptionCardWidget(
                      title: 'Templates',
                      urlImage: 'assets/template.png',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const TemplatesPage()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
