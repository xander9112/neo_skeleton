import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

part 'rest_auth_data_source.g.dart';

@RestApi()
abstract class RestAuthDataSource {
  factory RestAuthDataSource(Dio dio, {String baseUrl}) = _RestAuthDataSource;

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
