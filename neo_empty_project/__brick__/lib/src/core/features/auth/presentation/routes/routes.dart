import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<AutoRoute> authRoutes({String prefix = '/'}) => [
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: AuthRoute.page,
        path: '$prefix${AuthRoutePath.initial}',
        guards: [UpdateGuard(SettingsInjection.sl())],
        children: [
          ...verifyRoutes(),
        ],
      ),
    ];

List<AutoRoute> verifyRoutes({
  bool useLogin = true,
  bool loginIsInitial = true,
  String prefix = '/',
}) =>
    [
      if (useLogin)
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: LoginRoute.page,
          initial: loginIsInitial,
          path: '$prefix${AuthRoutePath.signIn}',
        ),
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: PinCodeRoute.page,
        path: '$prefix${AuthRoutePath.pinCode}',
      ),
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: BlockRoute.page,
        path: '$prefix${AuthRoutePath.blocked}',
      ),
    ];
