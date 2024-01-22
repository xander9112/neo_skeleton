import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<AutoRoute> settingsRoutes({String prefix = ''}) => [
      CustomRoute(
        transitionsBuilder: TransitionsBuilders.fadeIn,
        page: SettingsRootRouter.page,
        path: '$prefix${SettingsRoutePath.initial}',
        meta: const {'showBottomMenu': true},
        children: [
          CustomRoute(
            transitionsBuilder: TransitionsBuilders.fadeIn,
            page: SettingsRoute.page,
            meta: const {'showBottomMenu': true},
            initial: true,
          ),
          AutoRoute(
            page: ChangePinCodeRoute.page,
            path:
                '$prefix${SettingsRoutePath.initial}/${SettingsRoutePath.changePinCode}',
          ),
        ],
      ),      
    ];
