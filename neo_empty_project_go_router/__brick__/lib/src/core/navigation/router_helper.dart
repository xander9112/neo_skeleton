import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

extension RouterHelperExt on BuildContext {
  void goRelative(String location, {Object? extra}) => GoRouter.of(this).go(
        '${GoRouter.of(this).routeInformationProvider.value.uri}/$location',
        extra: extra,
      );
}

class RouterHelper {
  RouterHelper({
    required AuthManager<AuthenticatedUser> authManager,
    String? authPath,
    String? initialLocation,
    String? homeLocation,
    this.publicPaths = const [],
  })  : _authManager = authManager,
        _authPath = authPath ?? '/auth',
        _initialLocation = initialLocation ?? '/',
        _homeLocation = homeLocation ?? '/home';

  final AuthManager<AuthenticatedUser> _authManager;

  final List<String> publicPaths;

  final String _authPath;

  final String _initialLocation;

  final String _homeLocation;

  static String? redirectPath;

  String get initialLocation => _initialLocation;

  Listenable? get refreshListenable => _authManager;

  FutureOr<String?> redirect(
    BuildContext context,
    Uri uri,
  ) async {
    if (uri.path == _initialLocation) {
      return null;
    }

    final _isAuth = await _authManager.isAuth;
    final _isVerify = !_authManager.locked;

    if (_isAuthPath(uri)) {
      if (_isAuth && _isVerify) {
        if (RouterHelper.redirectPath != null) {
          final String? path = RouterHelper.redirectPath;

          RouterHelper.redirectPath = null;

          return path;
        }

        return _homeLocation;
      }

      return null;
    }

    if ((!_isAuth || !_isVerify) && !publicPaths.contains(uri.path)) {
      RouterHelper.redirectPath ??= uri.path;

      return _authPath;
    }

    return null;
  }

  bool _isAuthPath(Uri uri) => uri.path.startsWith(_authPath);

  static Page<T> adaptivePage<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
    bool fullscreenDialog = false,
  }) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return CupertinoPage<T>(
          child: child,
          fullscreenDialog: fullscreenDialog,
        );

      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return MaterialPage<T>(
          child: child,
          fullscreenDialog: fullscreenDialog,
        );
    }
  }

  static Page<T> noTransitionPage<T>({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    return NoTransitionPage<T>(child: child);
  }
}
