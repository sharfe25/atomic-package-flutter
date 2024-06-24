import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ChipsCarousel Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(body: ChipsCarousel(chips: [ChipModel(title: 'title')])),
      ));

      expect(find.text('title'), findsOneWidget);
    });
  });
}
