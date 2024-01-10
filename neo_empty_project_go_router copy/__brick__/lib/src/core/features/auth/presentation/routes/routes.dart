import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<RouteBase> authRoutes = [
  GoRoute(
    path: AuthRoutePath.initial,
    redirect: (context, state) async {
      final AuthManager<AuthenticatedUser> _authManager = AuthInjection.sl();
      final bool isAuth = await _authManager.isAuth;
      final bool isVerify = !_authManager.locked;

      if (!isAuth) {
        return AuthRoutePath.signInFullPath;
      }

      if (!isVerify) {
        return AuthRoutePath.pinCodeFullPath;
      }

      return null;
    },
    routes: [
      GoRoute(
        path: AuthRoutePath.signIn,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const LoginPage(),
        ),
      ),
      GoRoute(
        path: AuthRoutePath.pinCode,
        pageBuilder: (context, state) => RouterHelper.noTransitionPage(
          context: context,
          state: state,
          child: const PinCodePage(),
        ),
      ),
    ],
  ),
];
