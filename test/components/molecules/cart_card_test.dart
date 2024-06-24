import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginForm Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: LoginForm(
          onLogin: () {},
          passwordController: TextEditingController(),
          usernameController: TextEditingController(),
        )),
      ));

      expect(find.text('Username'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);
    });
  });
}
