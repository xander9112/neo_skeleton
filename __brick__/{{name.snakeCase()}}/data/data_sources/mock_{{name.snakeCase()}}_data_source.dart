import '../../_profile.dart';

class Mock{{name.pascalCase()}}DataSource implements {{name.pascalCase()}}DataSource {
  @override
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}() async {
    await Future<void>.delayed(const Duration(seconds: 2));
    
    return const {{name.pascalCase()}}Model(title: 'New {{name.pascalCase()}}');
  }
}
