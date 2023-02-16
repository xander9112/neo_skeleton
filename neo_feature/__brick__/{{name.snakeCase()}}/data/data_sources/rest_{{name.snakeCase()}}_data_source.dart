import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../_{{name.snakeCase()}}.dart';

part 'rest_{{name.snakeCase()}}_data_source.g.dart';

@RestApi()
abstract class Rest{{name.pascalCase()}}DataSource implements I{{name.pascalCase()}}DataSource {
  factory Rest{{name.pascalCase()}}DataSource(Dio dio, {String baseUrl}) = _Rest{{name.pascalCase()}}DataSource;

  @override
  @GET('/{{name.snakeCase()}}')
  Future<{{name.pascalCase()}}Model> get{{name.pascalCase()}}();
}
