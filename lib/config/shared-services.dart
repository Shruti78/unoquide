import 'package:shared_preferences/shared_preferences.dart';

Future<void> putTokenToGlobal({String? token}) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', token!);
}

Future<String> getTokenFromGlobal() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String? token;
  if (prefs.containsKey('token')) {
    token = prefs.getString('token')!;
  }
  return token!;
}
