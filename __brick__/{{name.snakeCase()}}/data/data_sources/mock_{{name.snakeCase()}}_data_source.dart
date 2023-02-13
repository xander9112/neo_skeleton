import '../../_profile.dart';

class Mock{{name.pascalCase()}}DataSource implements {{name.pascalCase()}}DataSource {
  @override
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}() async {
    return const {{name.pascalCase()}}Model(title: 'New {{name.pascalCase()}}');
  }
}
