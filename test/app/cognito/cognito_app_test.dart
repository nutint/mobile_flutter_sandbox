import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_app/apps/cognito/cognito_app.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';

class MockedAmplifyHelper extends IAmplifyHelper {
  const MockedAmplifyHelper();

  @override
  Future<void> configureAmplify() async {}
}

void main() {
  testWidgets('should have login button', (widgetTester) async {
    const mockedAmplifyHelper = MockedAmplifyHelper();
    await widgetTester.pumpWidget(const CognitoApp(amplifyHelper: mockedAmplifyHelper));
    
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}