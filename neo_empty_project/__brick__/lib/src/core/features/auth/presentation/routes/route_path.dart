abstract class AuthRoutePath {
  static const String blocked = 'blocked';

  static const String initial = '/auth';
  static const String signIn = 'sign-in';
  static const String pinCode = 'pin-code';

  static const String signInFullPath = '$initial/$signIn';
  static const String pinCodeFullPath = '$initial/$pinCode';
}
