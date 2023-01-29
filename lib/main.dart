import 'package:flutter/material.dart';
import 'package:my_app/apps/cognito/cognito_app.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';

void main() {
  const amplifyHelper = AmplifyHelper();
  runApp(const CognitoApp(amplifyHelper: amplifyHelper));
}
