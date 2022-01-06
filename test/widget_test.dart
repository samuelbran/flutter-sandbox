// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:test_app/main.dart';

void main() {
  group('Test the floating button: ', () {
    testWidgets('Counter increments smoke test', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MyApp());

      // Verify that our counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // Tap the '+' icon and trigger a frame.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // Verify that our counter has incremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('Block increment if counter is >= 5',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MyApp());

      await tester.tap(find.byIcon(Icons.add)); // 1
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add)); // 2
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add)); // 3
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add)); // 4
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add)); // 5
      await tester.pump();
      await tester.tap(find.byIcon(Icons.add)); // 6
      await tester.pump();

      expect(find.text('6'), findsNothing);
      expect(find.text('5'), findsOneWidget);
    });
  });
}
