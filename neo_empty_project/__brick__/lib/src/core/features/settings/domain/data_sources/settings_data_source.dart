import 'package:{{name.snakeCase()}}/src/core/features/settings/_settings.dart';

// ignore: one_member_abstracts
abstract class SettingsDataSource {
  Future<SettingsModel> getSettings();
}
