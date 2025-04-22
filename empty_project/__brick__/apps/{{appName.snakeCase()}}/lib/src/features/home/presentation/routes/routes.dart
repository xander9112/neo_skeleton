{{#useAuth}}
import 'package:auth/auth.dart';
{{/useAuth}}
import 'package:auto_route/auto_route.dart';
import 'package:dependencies/dependencies.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';

List<AutoRoute> homeRoutes = [
  CustomRoute<void>(
    transitionsBuilder: TransitionsBuilders.fadeIn,
    page: HomeRootRouter.page,
    initial: true,
    meta: const {'showBottomMenu': true},
    children: [
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: HomeRoute.page,
        initial: true,
        meta: const {'showBottomMenu': true},
        path: HomeRoutePath.initial,
      ),
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: SecretHomeRoute.page,
        path: HomeRoutePath.secret,
        guards: [
          {{#useAuth}}
          AuthGuard(
            sl<AuthManager<UserEntity>>(),
            replace: false,
            useAppBar: true,
          ),
          LocalAuthGuard(
            sl<AuthManager<UserEntity>>(),
            replace: false,
            useAppBar: true,
          ),
          {{/useAuth}}
        ],
      ),
    ],
  ),
];
