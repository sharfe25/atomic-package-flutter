import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomAppBar Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: CustomAppBar(
        bagBadge: 0,
        title: 'CustomAppBar',
        onTapBack: () {},
        onTapBag: () {},
      )));

      expect(find.text('CustomAppBar'), findsOneWidget);
    });
  });
}
