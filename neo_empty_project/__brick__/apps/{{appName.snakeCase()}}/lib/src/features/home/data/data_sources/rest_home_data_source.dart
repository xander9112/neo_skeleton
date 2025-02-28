import 'package:dependencies/dependencies.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_home_data_source.g.dart';

@Injectable(as: HomeDataSource)
@RestApi()
abstract class RestHomeDataSource implements HomeDataSource {
  @factoryMethod
  factory RestHomeDataSource(Dio dio) = _RestHomeDataSource;

  @override
  @GET('/home')
  Future<HomeModel> getHome();
}
