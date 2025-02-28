import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import 'package:{{projectName.snakeCase()}}/src/features/{{name.snakeCase()}}/_{{name.snakeCase()}}.dart';

// ignore: one_member_abstracts
abstract class {{name.pascalCase()}}Repository {
  Future<Either<Failure, {{name.pascalCase()}}DTO>> get{{name.pascalCase()}}();
}
