import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/drivers/amplify/amplify_helper.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<IAmplifyHelper>(buildContext).getText()),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _login,
        tooltip: 'Login',
        child: const Icon(Icons.person),
      ),
    );
  }

  void _login() {
    print('Login');
  }
}
