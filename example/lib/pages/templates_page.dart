import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';

/// Widget to showcase templates from the Atomic Flutter Package.
class TemplatesPage extends StatelessWidget {
  const TemplatesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Templates',
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 40,
              ),
              const Text('Dashboard Template:'),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 500,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: DashboardTemplate(
                      body: const Padding(
                        padding: EdgeInsets.all(20),
                        child: Center(
                          child: Text('Here is the content of the template'),
                        ),
                      ),
                      title: 'App Bar Title',
                      onTapBack: () {},
                      onTapBag: () {},
                    )),
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
