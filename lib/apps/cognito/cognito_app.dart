import 'package:flutter/material.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:my_app/amplifyconfiguration.dart';
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
    _configureAmplify();
  }

  Future<void> _configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      await Amplify.addPlugin(auth);
      Amplify.configure(amplifyconfig);
      print('Amplify configuration done');

      final userSignedIn = await isUserSignedIn();
      print('isUserSignedIn = $userSignedIn');
      if(userSignedIn) {
        await Amplify.Auth.getCurrentUser();
      }
    } on Exception catch (e) {
      print('An error happen during configure amplify');
    }
  }

  Future<bool> isUserSignedIn() async {
    final result = await Amplify.Auth.fetchAuthSession();

    return result.isSignedIn;
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