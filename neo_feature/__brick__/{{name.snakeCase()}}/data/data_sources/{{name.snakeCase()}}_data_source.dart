import '../../_{{name.snakeCase()}}.dart';

// ignore: one_member_abstracts
abstract class {{name.pascalCase()}}DataSource {
  Future<{{name.pascalCase()}}DTO> get{{name.pascalCase()}}();
}
