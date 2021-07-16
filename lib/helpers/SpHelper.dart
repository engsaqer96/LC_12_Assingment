import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
class SpHelper {
  SpHelper._();
  static SpHelper spHelper=SpHelper._();
  SharedPreferences sharedPreferences;
  initSharedPreferences() async {
    sharedPreferences= await SharedPreferences.getInstance();
  }
  setStringValues(String value,String key){
    sharedPreferences.setString(key, value);
  }
  String getStringValues(String key){
    return sharedPreferences.get(key);
  }
}