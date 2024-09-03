import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

List<AutoRoute> mainRoutes({String prefix = '/'}) => [
      CustomRoute<void>(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: MainRoute.page,
        path: '$prefix${MainRoutePath.initial}',
        guards: [
          UpdateGuard(SettingsInjection.sl()),
          AuthGuard(AuthInjection.sl<AuthManager<UserEntity>>()),
          BlockAuthGuard(AuthInjection.sl<AuthManager<UserEntity>>()),
          LocalAuthGuard(AuthInjection.sl<AuthManager<UserEntity>>()),
        ],
        children: [
          ...homeRoutes,
          ...settingsRoutes(),
        ],
      ),
    ];
