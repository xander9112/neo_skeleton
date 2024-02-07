import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

// ignore: one_member_abstracts
abstract class MainRepository {
  Future<Either<Failure, MainModel>> getMain();
}
