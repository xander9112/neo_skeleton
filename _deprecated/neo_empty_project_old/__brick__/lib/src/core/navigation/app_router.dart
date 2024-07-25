import 'package:auto_route/auto_route.dart';

import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class AppRouter {
  AppRouter(this._router);

  final AppAutoRouter _router;

  Future<T?> push<T extends Object?>(PageRouteInfo route) async {
    return _router.push(route);
  }

  Future<T?> pushNamed<T extends Object?>(
    String path, {
    bool includePrefixMatches = false,
  }) {
    return _router.pushNamed(path, includePrefixMatches: includePrefixMatches);
  }

  Future<T?> replaceNamed<T extends Object?>(
    String path, {
    bool includePrefixMatches = false,
  }) {
    return _router.replaceNamed(
      path,
      includePrefixMatches: includePrefixMatches,
    );
  }

  Future<T?> replace<T extends Object?>(
    PageRouteInfo route, {
    OnNavigationFailure? onFailure,
  }) {
    return _router.replace(route);
  }

  void popUntilRoot() {
    _router.popUntilRoot();
  }

  Future<dynamic> navigate(PageRouteInfo route) async {
    return _router.navigate(route);
  }

  Future<void> navigateNamed(
    String path, {
    bool includePrefixMatches = false,
  }) {
    return _router.navigateNamed(
      path,
      includePrefixMatches: includePrefixMatches,
    );
  }

  bool removeLast() => _router.removeLast();
}
