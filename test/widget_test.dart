// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';

void main() {
  testWidgets('Onboarding screen shows correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the main logo is present.
    expect(find.byType(Image), findsOneWidget);

    // Verify that the three buttons are present.
    expect(find.text('Client'), findsOneWidget);
    expect(find.text('Rider'), findsOneWidget);
    expect(find.text('MORE'), findsOneWidget);
  });
}
