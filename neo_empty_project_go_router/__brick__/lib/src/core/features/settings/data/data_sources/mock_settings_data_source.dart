import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class MockSettingsDataSource implements SettingsDataSource {
  @override
  Future<SettingsModel> getSettings() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return const SettingsModel(title: 'New Settings');
  }
}
