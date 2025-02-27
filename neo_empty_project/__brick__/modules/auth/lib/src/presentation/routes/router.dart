import 'package:auth/src/_src.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AuthRoutes extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        ...verifyRoutes(prefix: AuthRoutePath.initial),
        // CustomRoute<void>(
        //   transitionsBuilder: TransitionsBuilders.fadeIn,
        //   page: AuthRoute.page,
        //   path: AuthRoutePath.initial,
        //   children: [
        //     ...verifyRoutes(),
        //   ],
        // ),
      ];
}

List<AutoRoute> verifyRoutes({
  bool useLogin = true,
  bool loginIsInitial = true,
  String prefix = '',
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
