import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_app/apps/amplify/pages/login_page.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';
import 'package:provider/provider.dart';

import '../../../create_widget.dart';
import 'login_page_test.mocks.dart';

@GenerateMocks([IAmplifyHelper])

class Counter with ChangeNotifier, DiagnosticableTreeMixin {}

void main() {
  testWidgets('should call login with hit login button', (widgetTester) async {
    final mockAmplifyHelper = MockIAmplifyHelper();
    when(mockAmplifyHelper.getText())
      .thenReturn("This is get text");

    await widgetTester.pumpWidget(
      createMaterialWidget(
      providers: [Provider<IAmplifyHelper>.value(value: mockAmplifyHelper)],
      widget: const LoginPage()
    ));

    expect(find.text("This is get text"), findsOneWidget);
  });
}