import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

List<RouteBase> settingsRoutes = [
  GoRoute(
    builder: (context, state) => const SettingsPage(),
    path: SettingsRoutePath.initial,
    routes: [
      GoRoute(
        parentNavigatorKey: AppGlobalKeys.rootNavigatorKey,
        path: SettingsRoutePath.changePinCode,
        pageBuilder: (context, state) => RouterHelper.adaptivePage(
          context: context,
          state: state,
          fullscreenDialog: true,
          child: const ChangePinCodePage(),
        ),
      ),
    ],
  ),
];
