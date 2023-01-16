import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_auth_data_source.g.dart';

@RestApi()
abstract class RestAuthDataSource implements AuthDataSource {
  factory RestAuthDataSource(Dio dio, {String baseUrl}) = _RestAuthDataSource;

  @override
  @POST(ApiMethods.authLogin)
  Future<AuthModel> signIn({
    @Body() required Map<String, dynamic> request,
  });

  @override
  @POST(ApiMethods.authLogout)
  Future<void> signOut();

  @override
  @GET(ApiMethods.authVerify)
  Future<AuthenticatedUser> verify();

  @POST(ApiMethods.authUpdateDeviceVersion)
  Future<void> updateDeviceInfo({
    @Body() required Map<String, dynamic> request,
  });
}
