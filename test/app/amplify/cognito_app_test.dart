import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_app/apps/amplify/cognito_app.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';
import 'package:provider/provider.dart';

import 'cognito_app_test.mocks.dart';

@GenerateMocks([IAmplifyHelper])

void main() {
  testWidgets('should have login button', (widgetTester) async {
    final mockedAmplifyHelper = MockIAmplifyHelper();
    when(mockedAmplifyHelper.getText())
      .thenReturn("abc");

    await widgetTester.pumpWidget(
      MultiProvider(
        providers: [
          Provider<IAmplifyHelper>.value(value: mockedAmplifyHelper)
        ],
        child: AmplifyApp(amplifyHelper: mockedAmplifyHelper),
      )
    );
    
    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}