import 'package:ecommerce_design_system_package/components/templates/dahsboard_template.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DashboardTemplate Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
         const MaterialApp(
            home: DashboardTemplate(body: Text('Test')),
          ),
        
      );

      expect(find.text('Test'), findsOneWidget);
    });
  });
}
