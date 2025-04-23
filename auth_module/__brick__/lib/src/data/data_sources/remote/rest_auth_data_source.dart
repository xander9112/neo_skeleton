import 'package:auth/src/_src.dart';
import 'package:dependencies/dependencies.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_auth_data_source.g.dart';

@Injectable()
@RestApi()
abstract class RestAuthDataSource {
  @factoryMethod
  factory RestAuthDataSource(Dio dio) = _RestAuthDataSource;

  @POST(AuthApiMethods.signIn)
  Future<AuthModel> signIn({
    @Body() required Map<String, dynamic> request,
  });

  @POST(AuthApiMethods.signOut)
  Future<void> signOut();

  @GET(AuthApiMethods.verify)
  Future<AuthenticatedUser> verify();

  @POST(AuthApiMethods.updateDeviceVersion)
  Future<void> updateDeviceInfo({
    @Body() required Map<String, dynamic> request,
  });
}
