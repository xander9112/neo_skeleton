import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';

// ignore: one_member_abstracts
abstract class HomeRepository {
  Future<Either<Failure, HomeModel>> getHome();
}
