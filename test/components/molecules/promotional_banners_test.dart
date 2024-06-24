import 'package:ecommerce_design_system_package/ecommerce_design_system_package.dart';
import 'package:ecommerce_design_system_package/models/promotional_banner_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PromotionalBanner Widget Tests', () {
    testWidgets('UI work correctly', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: Scaffold(
            body: PromotionalBanners(banners: [
          PromotionalBannerModel(
              image: null, title: 'banner title', promotion: 'promotion')
        ])),
      ));

      expect(find.text('banner title'), findsWidgets);
      expect(find.text('promotion'), findsWidgets);
    });
  });
}
