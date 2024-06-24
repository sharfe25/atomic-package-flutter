import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CardsGrid Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
         MaterialApp(
           home: Scaffold(
             body: SingleChildScrollView(
               child: Column(
                 children: [
                   CardsGrid(
                    cards: [
                      ProductCardModel(
                        addToCart: () {},
                        title: '',
                        image: '',
                        price: 0,
                        onTapProduct: () {},
                      )
                    ],
                    title: 'CardsGrid',
                         ),
                 ],
               ),
             ),
           ),
         )
      );

      expect(find.text('CardsGrid'), findsOneWidget);
    });
  });
}
