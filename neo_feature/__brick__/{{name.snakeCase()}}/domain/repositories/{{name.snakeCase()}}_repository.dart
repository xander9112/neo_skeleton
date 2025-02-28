import 'package:core/core.dart';
import 'package:{{projectName.snakeCase()}}/src/core/_core.dart';
import '../../_{{name.snakeCase()}}.dart';

// ignore: one_member_abstracts
abstract class {{name.pascalCase()}}Repository {
  Future<Either<Failure, {{name.pascalCase()}}DTO>> get{{name.pascalCase()}}();
}
