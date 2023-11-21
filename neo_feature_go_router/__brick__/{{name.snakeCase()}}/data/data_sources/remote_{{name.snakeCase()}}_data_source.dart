import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

abstract class Remote{{name.pascalCase()}}DataSource {
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
