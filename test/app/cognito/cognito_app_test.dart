import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:my_app/apps/cognito/cognito_app.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';

import 'cognito_app_test.mocks.dart';

@GenerateMocks([IAmplifyHelper])

void main() {
  testWidgets('should have login button', (widgetTester) async {
    var mockedAmplifyHelper = MockIAmplifyHelper();
    await widgetTester.pumpWidget(CognitoApp(amplifyHelper: mockedAmplifyHelper));
    
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}