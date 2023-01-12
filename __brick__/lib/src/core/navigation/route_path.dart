abstract class RoutePath {
  const RoutePath._();

  /// Splash
  static const String initial = '/';

  static const String splash = '/splash';

  static const String authSignIn = '/auth/signIn';

  static const String main = '/main';

  static const String settings = 'settings';

  static const String users = 'users';

  static const String user = 'users/:id';

  static const String userInfo = 'info';

  static const String userContacts = 'contacts';

  static const String cities = 'cities';

  static const String departments = 'departments';

  static const String posts = 'posts';

  static const String post = 'posts/:id';

  static const String stories = 'stories';

  static const String story = 'stories/:id';

  static const String notifications = 'notifications';

  static const String profile = 'profile';

  static const String pinNew = 'pin/new';

  static const String pinEnter = 'pin';
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
