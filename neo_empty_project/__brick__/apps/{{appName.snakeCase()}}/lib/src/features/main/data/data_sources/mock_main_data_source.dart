import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';

class MockMainDataSource implements MainDataSource {
  @override
  Future<MainModel> getMain() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return const MainModel(title: 'New Main');
  }
}
