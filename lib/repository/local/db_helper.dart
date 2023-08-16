import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

class DbHelper {
  Future<Box> createHiveBox(String boxName) {
    return Hive.openBox(boxName);
  }

  addToDB(String boxName, String key, dynamic value) async {
    var box = await Hive.openBox(boxName);
    box.put(key, value);
    return box;
  }

  openDbBox(String boxName) async {
    return await Hive.openBox(boxName);
  }
}
