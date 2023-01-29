import 'package:flutter/material.dart';
import 'package:my_app/apps/cognito/pages/login_page.dart';

class CognitoApp extends StatelessWidget {
  const CognitoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cognito App",
      theme: ThemeData(
        primarySwatch: Colors.brown
      ),
      home: const LoginPage(),
    );
  }
}