import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';

// ignore: one_member_abstracts
abstract class HomeRepository {
  Future<Either<Failure, HomeModel>> getHome();
}
