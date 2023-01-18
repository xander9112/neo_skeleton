import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class NavigateToMainUseCase implements UseCase<void, void Function(bool)?> {
  @override
  Future<void> call(
    void Function(bool success)? params,
  ) async {
    if (params != null) {
      params.call(true);
    } else {
      //TODO: NavigationManager
      await getIt<AppRouter>().replaceNamed(RoutePath.main);
      getIt<AppRouter>().removeLast();
    }
  }
}
