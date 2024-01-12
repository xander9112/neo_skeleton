import '../../_{{name.snakeCase()}}.dart';

class Mock{{name.pascalCase()}}DataSource implements Remote{{name.pascalCase()}}DataSource {
  @override
  Future<{{name.pascalCase()}}DTO> get{{name.pascalCase()}}() {
    return Future<{{name.pascalCase()}}DTO>.delayed(const Duration(seconds: 2), () {
      return const {{name.pascalCase()}}DTO(title: 'New {{name.pascalCase()}}');
    });    
  }
}
