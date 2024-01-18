import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'rest_auth_data_source.g.dart';

@RestApi()
abstract class RestAuthDataSource {
  factory RestAuthDataSource(Dio dio, {String baseUrl}) = _RestAuthDataSource;

  @POST(ApiMethods.authLogin)
  Future<AuthModel> signIn({
    @Body() required Map<String, dynamic> request,
  });

  @POST(ApiMethods.authLogout)
  Future<void> signOut();

  @GET(ApiMethods.authVerify)
  Future<AuthenticatedUser> verify();

  @POST(ApiMethods.authUpdateDeviceVersion)
  Future<void> updateDeviceInfo({
    @Body() required Map<String, dynamic> request,
  });
}
