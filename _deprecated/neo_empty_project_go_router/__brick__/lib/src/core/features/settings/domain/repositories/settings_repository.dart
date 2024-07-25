import 'package:dartz/dartz.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

// ignore: one_member_abstracts
abstract class SettingsRepository {
  Future<Either<Failure, SettingsModel>> getSettings();
}
