import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class HiveProvider<T> {
  HiveProvider({
    required this.boxName,
    required this.sharedPreferences,
  });

  final SharedPreferences sharedPreferences;

  late final String boxName;

  late final Box<String> box;

  String get _lastUpdateKey => '${boxName}_last_update';

  DateTime get lastUpdate {
    return DateTime.tryParse(
          sharedPreferences.getString(_lastUpdateKey) ?? '',
        ) ??
        DateTime.now();
  }

  bool get shouldUpdate {
    return DateTime.now().difference(lastUpdate).inHours > 12;
  }

  void updateLastUpdate([DateTime? value]) {
    sharedPreferences.setString(
      _lastUpdateKey,
      (value ?? DateTime.now()).toString(),
    );
  }

  @mustCallSuper
  Future<void> init() async {
    box = await Hive.openBox<String>(boxName);
  }

  Future<void> clear() async {
    await box.clear();
  }
}
