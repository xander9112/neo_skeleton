import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:{{appName.snakeCase()}}/src/core/ui/_ui.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{appName.snakeCase()}}/src/features/main/_main.dart';
import 'package:flutter/widgets.dart';
import 'package:settings/settings.dart';

part 'router.gr.dart';

final _settingsRouter = SettingsRouter();

@AutoRouterConfig()
class MainRoutes extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: MainRoute.page,
          path: MainRoutePath.initial,
          guards: [
            AuthGuard(AuthDI.sl<AuthManager<UserEntity>>()),
            BlockAuthGuard(AuthDI.sl<AuthManager<UserEntity>>()),
            LocalAuthGuard(AuthDI.sl<AuthManager<UserEntity>>()),
          ],
          children: [
            ...homeRoutes,
            ..._settingsRouter.routes,
          ],
        ),
      ];
}
