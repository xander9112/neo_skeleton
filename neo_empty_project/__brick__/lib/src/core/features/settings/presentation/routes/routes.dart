import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<AutoRoute> settingsRoutes({String prefix = ''}) => [
      AutoRoute(
        page: SettingsRoute.page,
        path: '$prefix${SettingsRoutePath.initial}',
      ),
      AutoRoute(
        page: ChangePinCodeRoute.page,
        path:
            '$prefix${SettingsRoutePath.initial}/${SettingsRoutePath.changePinCode}',
      ),
    ];
