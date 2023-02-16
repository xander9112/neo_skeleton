import '../../_{{name.snakeCase()}}.dart';

abstract class I{{name.pascalCase()}}DataSource {
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
