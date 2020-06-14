import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:royalgroup/models/local-storage-data.dart';

class StoredData {
  Future<dynamic> readData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    var accountAdded;
    if (key == 'number') {
      accountAdded = prefs.getInt(key) ?? 0000000;
    } else {
      accountAdded = prefs.getBool(key) ?? false;
    }
    return accountAdded;
  }

  saveData(Data data) async {
    final prefs = await SharedPreferences.getInstance();
    if (data.name == 'number') {
      prefs.setInt(data.name, data.value);
    } else {
      prefs.setBool(data.name, data.value);
    }
  }

  removeData(Data key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key.name);
  }
}
