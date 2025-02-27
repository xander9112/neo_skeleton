import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_home_data_source.g.dart';

@RestApi()
abstract class RestHomeDataSource implements HomeDataSource {
  factory RestHomeDataSource(Dio dio, {String baseUrl}) = _RestHomeDataSource;

  @override
  @GET('/home')
  Future<HomeModel> getHome();
}
