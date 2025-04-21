import 'package:dependencies/dependencies.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_main_data_source.g.dart';

@Injectable(as: MainDataSource)
@RestApi()
abstract class RestMainDataSource implements MainDataSource {
  @factoryMethod
  factory RestMainDataSource(Dio dio) = _RestMainDataSource;

  @override
  @GET('/main')
  Future<MainModel> getMain();
}
