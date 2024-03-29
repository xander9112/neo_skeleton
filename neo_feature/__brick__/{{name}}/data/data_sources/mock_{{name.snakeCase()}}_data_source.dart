import '../../_{{name.snakeCase()}}.dart';

class Mock{{name.pascalCase()}}DataSource implements {{name.pascalCase()}}DataSource {
  @override
  Future<{{name.pascalCase()}}DTO> get{{name.pascalCase()}}() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    
    return const {{name.pascalCase()}}DTO(title: 'New {{name.pascalCase()}}');
  }
}
