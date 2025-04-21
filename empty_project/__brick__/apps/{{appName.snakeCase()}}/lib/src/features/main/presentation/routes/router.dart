{{#authentication}}
import 'package:auth/auth.dart';
{{/authentication}}
import 'package:auto_route/auto_route.dart';
import 'package:dependencies/dependencies.dart';
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
            AuthGuard(sl<AuthManager<UserEntity>>()),
            BlockAuthGuard(sl<AuthManager<UserEntity>>()),
            LocalAuthGuard(sl<AuthManager<UserEntity>>()),
          ],
          children: [
            ...homeRoutes,
            ..._settingsRouter.routes,
          ],
        ),
      ];
}
