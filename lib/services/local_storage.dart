import 'package:shared_preferences/shared_preferences.dart';

//Este archivo me permite guardar los datos en el dispositivo.
class LocalStorage {
  static late SharedPreferences prefs;
  static Future<void> configurePrefs() async {
    LocalStorage.prefs = await SharedPreferences.getInstance();
  }
}
