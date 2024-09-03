class ApiMethods {
  static const String auth = '/auth';
  static const String authLogin = '$auth/login';
  static const String authLogout = '$auth/logout';

  static const String authVerify = '$auth/verify';

  static const String authTokenRefresh = '$auth/tokenRefresh';

  static const String authUpdateDeviceVersion = '/V1/update_device_version';

  static const String users = '/users';
  static const String userById = '$users/{id}';
}
