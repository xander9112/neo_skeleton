import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:settings/src/_src.dart';

part 'rest_settings_data_source.g.dart';

@RestApi()
abstract class RestSettingsDataSource implements SettingsDataSource {
  factory RestSettingsDataSource(Dio dio, {String baseUrl}) =
      _RestSettingsDataSource;

  // @override
  // @GET('/{{name.snakeCase()}}')
  // Future<UserSettingsDTO> fetch();
}
