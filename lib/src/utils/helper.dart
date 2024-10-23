import 'dart:developer';

import 'package:get_storage/get_storage.dart';

class PreferencesHelper{

  static const String _key = "preferences_screen_container";
  static GetStorage get instance => GetStorage(_key);
  static const List<Type> allowedTypes = [num, bool, String, List, Map];




  static void saveValue(String key, dynamic value){
    var valid = _validate(value);
    if (!valid) {
      throw "Invalid type of value";
    }
    GetStorage(_key).write(key, value);
    log("value saved");
  }

  static dynamic getValue(String key, dynamic defaultValue){
    return instance.read(key) ?? defaultValue;
  }

  static bool _validate(dynamic value){
    for(var type in allowedTypes){
      if (value.runtimeType == type) {
        return true;
      }
    }
    return false;
  }

}