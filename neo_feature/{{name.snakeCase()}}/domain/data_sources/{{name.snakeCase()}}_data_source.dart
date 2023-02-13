import '../../_{{name.snakeCase()}}.dart';

abstract class {{name.pascalCase()}}DataSource {
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
