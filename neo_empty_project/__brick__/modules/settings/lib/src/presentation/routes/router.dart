import 'package:auto_route/auto_route.dart';
import 'package:settings/src/_src.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class SettingsRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute<void>(
          transitionsBuilder: TransitionsBuilders.fadeIn,
          page: SettingsRootRouter.page,
          path: SettingsRoutePath.initial,
          meta: const {'showBottomMenu': true},
          children: [
            CustomRoute<void>(
              transitionsBuilder: TransitionsBuilders.fadeIn,
              page: SettingsRoute.page,
              meta: const {'showBottomMenu': true},
              initial: true,
            ),
            AutoRoute(
              page: ChangePinCodeRoute.page,
              path:
                  '${SettingsRoutePath.initial}/${SettingsRoutePath.changePinCode}',
            ),
          ],
        ),
      ];
}
