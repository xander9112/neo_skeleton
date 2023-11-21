import '../../_{{name.snakeCase()}}.dart';

abstract class Remote{{name.pascalCase()}}DataSource {
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
