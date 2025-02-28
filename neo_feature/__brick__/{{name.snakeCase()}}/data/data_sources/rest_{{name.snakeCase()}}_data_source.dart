import 'package:dependencies/dependencies.dart';
import 'package:retrofit/retrofit.dart';
import '../../_{{name.snakeCase()}}.dart';

part 'rest_{{name.snakeCase()}}_data_source.g.dart';

@Injectable()
@RestApi()
abstract class Rest{{name.pascalCase()}}DataSource implements {{name.pascalCase()}}DataSource {
  @factoryMethod
  factory Rest{{name.pascalCase()}}DataSource(Dio dio, {String baseUrl}) = _Rest{{name.pascalCase()}}DataSource;

  @override
  @GET('/{{name.snakeCase()}}')
  Future<{{name.pascalCase()}}DTO> get{{name.pascalCase()}}();
}
