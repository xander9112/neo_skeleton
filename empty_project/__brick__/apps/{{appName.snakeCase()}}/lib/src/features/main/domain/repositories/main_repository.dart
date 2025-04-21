import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';

// ignore: one_member_abstracts
abstract class MainRepository {
  Future<Either<Failure, MainModel>> getMain();
}
