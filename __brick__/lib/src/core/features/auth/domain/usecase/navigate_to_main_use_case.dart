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
      await getIt<AppAutoRouter>().replaceNamed(RoutePath.main);
      getIt<AppAutoRouter>().removeLast();
    }
  }
}
