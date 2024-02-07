import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

// ignore: one_member_abstracts
abstract class HomeDataSource {
  Future<HomeModel> getHome();
}
