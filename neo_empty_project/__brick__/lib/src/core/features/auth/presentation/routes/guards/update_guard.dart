import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class UpdateGuard extends AutoRouteGuard {
  UpdateGuard(this._settingsCubit);

  final SettingsCubit _settingsCubit;

  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    if (!_settingsCubit.state.requireUpdate) {
      return resolver.next();
    }

    await router.replace(const UpdateRoute());
  }
}
