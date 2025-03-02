import 'package:dependencies/dependencies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:settings/src/_src.dart';

part 'rest_settings_data_source.g.dart';

@Injectable()
@RestApi()
abstract class RestSettingsDataSource implements SettingsDataSource {
  @factoryMethod
  factory RestSettingsDataSource(Dio dio) =
      _RestSettingsDataSource;

  // @override
  // @GET('/{{name.snakeCase()}}')
  // Future<UserSettingsDTO> fetch();
}
