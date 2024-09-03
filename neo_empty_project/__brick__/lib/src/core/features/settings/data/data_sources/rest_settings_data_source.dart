import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{name.snakeCase()}}/src/core/features/settings/_settings.dart';

part 'rest_settings_data_source.g.dart';

@RestApi()
abstract class RestSettingsDataSource implements SettingsDataSource {
  factory RestSettingsDataSource(Dio dio, {String baseUrl}) =
      _RestSettingsDataSource;

  @override
  @GET('/settings')
  Future<SettingsModel> getSettings();
}
