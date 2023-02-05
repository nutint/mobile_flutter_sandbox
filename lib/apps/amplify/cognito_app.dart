import 'package:flutter/material.dart';
import 'package:my_app/apps/amplify/pages/login_page.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';
import 'package:provider/provider.dart';

class AmplifyApp extends StatefulWidget {
  const AmplifyApp({
    super.key,
  });

  @override
  State<AmplifyApp> createState() => _AmplifyAppState();
}

class _AmplifyAppState extends State<AmplifyApp> {

  @override
  void initState() {
    super.initState();
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    await context.read<IAmplifyHelper>().configureAmplify();
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