import 'package:get_storage/get_storage.dart';

class PrefValue {
  static bool _initialized = false;
  static const String _key = "preferences_screen_container";
  static GetStorage get _instance => GetStorage(_key);

  static dynamic getValue(String key, dynamic defaultValue) {
    return _instance.read(key) ?? defaultValue;
  }

  static Future<void> init() async {
    if (_initialized) {
      return;
    }
    await GetStorage.init(_key).then((value) {
      _initialized = value;
    });
  }
}
