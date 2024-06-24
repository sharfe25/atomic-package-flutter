import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginPage Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
            home: LoginPage(
          handleLogin: () {},
          usernameController: TextEditingController(),
          passwordController: TextEditingController(),
        )),
      );

      expect(find.text('Login'), findsOneWidget);
    });
  });
}
