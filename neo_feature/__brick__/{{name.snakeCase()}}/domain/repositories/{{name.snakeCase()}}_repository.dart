import 'package:dartz/dartz.dart';
import 'package:{{projectName.snake_case()}}/src/core/_core.dart';
import '../../_{{name.snakeCase()}}.dart';


abstract class I{{name.pascalCase()}}Repository {
  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}();
}
