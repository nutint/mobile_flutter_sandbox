import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/apps/cognito/cognito_app.dart';

void main() {
  testWidgets('should have login button', (widgetTester) async {
    await widgetTester.pumpWidget(const CognitoApp());
    
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}