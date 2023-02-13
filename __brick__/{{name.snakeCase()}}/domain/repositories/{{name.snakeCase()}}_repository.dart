import '../../_{{name.snakeCase()}}.dart';

abstract class I{{name.pascalCase()}}Repository {
  Future<Either<Failure, {{name.pascalCase()}}Model>> get{{name.pascalCase()}}();
}
