import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_analytics_pinpoint/amplify_analytics_pinpoint.dart';
import 'package:my_app/amplifyconfiguration.dart';

class IAmplifyHelper {
  const IAmplifyHelper();

  Future<void> configureAmplify() async {}

  String getText() { return "Base"; }

  Future<void> login() async {}
}

class AmplifyHelper extends IAmplifyHelper {
  const AmplifyHelper();

  @override
  Future<void> configureAmplify() async {
    try {
      final auth = AmplifyAuthCognito();
      final analyticsPlugin = AmplifyAnalyticsPinpoint();

      await Amplify.addPlugin(auth);
      print("Auth plugin added");
      await Amplify.addPlugin(analyticsPlugin);

      print("Analytics plugin added");
      Amplify.configure(amplifyconfig);

      print('Amplify configuration done');

      final userSignedIn = await isUserSignedIn();
      print('isUserSignedIn = $userSignedIn');
      if(userSignedIn) {
        await Amplify.Auth.getCurrentUser();
      }
    } on AmplifyAlreadyConfiguredException catch (e) {
      print("amplify already configured");
    } on Exception catch (e) {
      print('An error happen during configure amplify');
    }
  }

  Future<bool> isUserSignedIn() async {
    final result = await Amplify.Auth.fetchAuthSession();

    return result.isSignedIn;
  }

  @override
  Future<void> login() async {
    final result = await Amplify.Auth.signIn(
      username: "username",
      password: "password");

    print(result);
  }
}
