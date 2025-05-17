import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageLoader {
  static Future<SharedPreferences> load() => SharedPreferences.getInstance();
}
