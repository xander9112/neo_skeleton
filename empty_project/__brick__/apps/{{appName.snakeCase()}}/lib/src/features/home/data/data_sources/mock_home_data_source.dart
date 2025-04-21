import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';

class MockHomeDataSource implements HomeDataSource {
  @override
  Future<HomeModel> getHome() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return const HomeModel(title: 'New Home');
  }
}
