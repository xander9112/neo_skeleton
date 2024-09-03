import 'package:dio/dio.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_main_data_source.g.dart';

@RestApi()
abstract class RestMainDataSource implements MainDataSource {
  factory RestMainDataSource(Dio dio, {String baseUrl}) = _RestMainDataSource;

  @override
  @GET('/main')
  Future<MainModel> getMain();
}
