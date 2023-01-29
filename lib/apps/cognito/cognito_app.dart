import 'package:flutter/material.dart';
import 'package:my_app/apps/cognito/pages/login_page.dart';

class CognitoApp extends StatefulWidget {
  const CognitoApp({super.key});

  @override
  State<CognitoApp> createState() => _CognitoAppState();
}

class _CognitoAppState extends State<CognitoApp> {
  @override
  void initState() {
    super.initState();
  }

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