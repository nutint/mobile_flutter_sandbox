import 'package:flutter/material.dart';
import 'package:my_app/apps/cognito/pages/login_page.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';

class CognitoApp extends StatefulWidget {
  final IAmplifyHelper amplifyHelper;

  const CognitoApp({
    super.key,
    required this.amplifyHelper
  });

  @override
  State<CognitoApp> createState() => _CognitoAppState();
}

class _CognitoAppState extends State<CognitoApp> {

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    widget.amplifyHelper.configureAmplify();
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