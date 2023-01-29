import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/apps/example/my_app.dart';

void main() {
  testWidgets('should have increment button', (widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());

    expect(find.byIcon(Icons.add), findsOneWidget);
  });

  testWidgets('should have counter initially start at 0', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });

  testWidgets('should increment by 1 when tap add button', (WidgetTester widgetTester) async {
    await widgetTester.pumpWidget(const MyApp());

    await widgetTester.tap(find.byIcon(Icons.add));
    await widgetTester.pump();

    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });
}