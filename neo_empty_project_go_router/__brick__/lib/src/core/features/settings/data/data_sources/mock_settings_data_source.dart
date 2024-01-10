import 'package:{{name.snakeCase()}}/src/core/features/settings/_settings.dart';

class MockSettingsDataSource implements SettingsDataSource {
  @override
  Future<SettingsModel> getSettings() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return const SettingsModel(title: 'New Settings');
  }
}
