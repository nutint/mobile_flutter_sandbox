import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/apps/cognito/cognito_app.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';

void main() {
  testWidgets('should have login button', (widgetTester) async {
    const amplifyHelper = AmplifyHelper();
    await widgetTester.pumpWidget(const CognitoApp(amplifyHelper: amplifyHelper));
    
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}