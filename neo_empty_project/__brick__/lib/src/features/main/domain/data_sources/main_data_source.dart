import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

// ignore: one_member_abstracts
abstract class MainDataSource {
  Future<MainModel> getMain();
}
