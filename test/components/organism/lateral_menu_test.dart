import 'package:ecommerce_design_system_package/controller/lateral_menu_controller.dart';
import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:ecommerce_design_system_package/models/menu_option_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LateralMenu Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(
          home: Scaffold(
        body: LateralMenu(
            profileSection: const CardContainer(
                title: 'Lateral menu', subtitle: 'Card Container'),
            lateralMenuController: LateralMenuController(),
            closeMenu: () {},
            menuOptions: const [MenuOptionModel(title: 'Option')],
            signOut: () {}),
      )));

      expect(find.text('Lateral menu'), findsOneWidget);
      expect(find.text('Card Container'), findsOneWidget);
    });
  });
}
