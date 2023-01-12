import 'package:dio/dio.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/_core.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_auth_datasource.g.dart';

@RestApi()
abstract class RestAuthDatasource {
  factory RestAuthDatasource(Dio dio, {String baseUrl}) = _RestAuthDatasource;

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
