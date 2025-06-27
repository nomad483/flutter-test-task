// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_task/app.dart';
import 'package:flutter_test_task/viewmodel/home_viewmodel.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
    final homeViewModel = HomeViewModel();

    final initialColor = homeViewModel.currentColor;
    expect(initialColor, equals(Colors.white));

    homeViewModel.generateColor();
    await tester.pump();

    final updatedColor = homeViewModel.currentColor;
    expect(updatedColor, isNot(equals(initialColor)));
  });
}
