import 'package:auto_route/auto_route.dart';
import 'package:settings/settings.dart';

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
