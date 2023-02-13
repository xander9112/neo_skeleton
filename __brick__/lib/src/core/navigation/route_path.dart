abstract class RoutePath {
  const RoutePath._();

  /// Splash
  static const String initial = '/';

  static const String splash = '/splash';

  static const String authSignIn = '/auth/signIn';

  static const String main = '/main';

  static const String settings = 'settings';

  static const String settingsTheme = 'theme';

  static const String users = 'users';

  static const String user = 'users/:id';

  static const String home = 'home';
  
  static const String pin = 'pin';
}

extension RouteWithParams on String {
  String pathParams(Map<String, dynamic> params) {
    return params.keys.fold<String>(this, (String value, String element) {
      return value.replaceFirst(
        '{$element}',
        (params[element] ?? '').toString(),
      );
    }).replaceAll(RegExp('/:[a-zA-Z]*/*'), '');
  }

  String params(Map<String, dynamic> params) {
    return params.keys.fold<String>(this, (String value, String element) {
      return value.replaceFirst(
        ':$element',
        (params[element] ?? '').toString(),
      );
    }).replaceAll(RegExp('/:[a-zA-Z]*/*'), '');
  }

  String query(Map<String, dynamic> params) {
    return this +
        Uri(
          queryParameters: params.map<String, dynamic>(
            (String key, dynamic value) => MapEntry<String, dynamic>(
              key,
              value.toString(),
            ),
          ),
        ).toString();
  }
}
