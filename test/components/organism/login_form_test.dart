import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CartCard Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
            body: CartCard(
                title: 'Product',
                image: '',
                price: 'price',
                actions: Text('actions'))),
      ));

      expect(find.text('Product'), findsOneWidget);
      expect(find.text('actions'), findsOneWidget);
    });
  });
}
