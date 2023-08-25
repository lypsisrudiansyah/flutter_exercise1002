import 'package:shared_preferences/shared_preferences.dart';

class DB {
  static late SharedPreferences prefs;
  static load() async {
    prefs = await SharedPreferences.getInstance();
  }

  static String get name => prefs.getString("name") ?? "";
  static set name(value) => prefs.setString("name", value);

  static String get email => prefs.getString("email") ?? "";
  static set email(value) => prefs.setString("email", value);

  static String get whatsapp => prefs.getString("whatsapp") ?? "";
  static set whatsapp(value) => prefs.setString("whatsapp", value);
}
