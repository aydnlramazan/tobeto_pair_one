import 'package:shared_preferences/shared_preferences.dart';

Future<bool> checkFirstLogin() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirstLogin = prefs.getBool('first_login') ?? true;

  if (isFirstLogin) {
    await prefs.setBool('first_login', false);
  }
  return isFirstLogin;
}
