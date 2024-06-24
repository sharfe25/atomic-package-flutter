import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomInput Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: CustomInput(
          controller: TextEditingController(),
          hintText: 'hint',
        )),
      ));

      expect(find.text('hint'), findsOneWidget);
    });
  });
}
