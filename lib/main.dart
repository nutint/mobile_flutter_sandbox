import 'package:flutter/material.dart';
import 'package:my_app/apps/amplify/cognito_app.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';
import 'package:provider/provider.dart';

void main() {
  const amplifyHelper = AmplifyHelper();
  runApp(
    MultiProvider(
      providers: [
        Provider<IAmplifyHelper>.value(value: amplifyHelper)
      ],
      child: const AmplifyApp(amplifyHelper: amplifyHelper),
    )
  );
}
