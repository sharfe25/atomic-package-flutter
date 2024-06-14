import 'package:atomic_flutter_package/atomic_flutter_package.dart';
import 'package:flutter/material.dart';

/// Widget to showcase pages from the Atomic Flutter Package.
class PagesPage extends StatelessWidget {
  const PagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Pages',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const Text('Login Page:'),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 300,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: LoginPage(
                        handleLogin: () {},
                        usernameController: TextEditingController(text: ''),
                        passwordController: TextEditingController(text: ''))),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
