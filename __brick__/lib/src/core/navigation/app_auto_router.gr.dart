// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_auto_router.dart';

class _$AppAutoRouter extends RootStackRouter {
  _$AppAutoRouter({
    GlobalKey<NavigatorState>? navigatorKey,
    required this.updateGuard,
    required this.authGuard,
    required this.localAuthGuard,
  }) : super(navigatorKey);

  final UpdateGuard updateGuard;

  final AuthGuard authGuard;

  final LocalAuthGuard localAuthGuard;

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: SplashPage(
          key: args.key,
          onResult: args.onResult,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginRoute.name: (routeData) {
      final args = routeData.argsAs<LoginRouteArgs>(
          orElse: () => const LoginRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: LoginPage(
          key: args.key,
          onResult: args.onResult,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    PinCodeRoute.name: (routeData) {
      final args = routeData.argsAs<PinCodeRouteArgs>(
          orElse: () => const PinCodeRouteArgs());
      return CustomPage<void>(
        routeData: routeData,
        child: PinCodePage(
          key: args.key,
          onResult: args.onResult,
        ),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
    MainRoute.name: (routeData) {
      return CustomPage<void>(
        routeData: routeData,
        child: const MainPage(),
        transitionsBuilder: TransitionsBuilders.fadeIn,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/auth/signIn',
          guards: [updateGuard],
        ),
        RouteConfig(
          PinCodeRoute.name,
          path: 'pin',
          guards: [updateGuard],
        ),
        RouteConfig(
          MainRoute.name,
          path: '/main',
          guards: [
            updateGuard,
            authGuard,
            localAuthGuard,
          ],
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    Key? key,
    void Function(bool)? onResult,
  }) : super(
          SplashRoute.name,
          path: '/',
          args: SplashRouteArgs(
            key: key,
            onResult: onResult,
          ),
        );

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({
    this.key,
    this.onResult,
  });

  final Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<LoginRouteArgs> {
  LoginRoute({
    Key? key,
    void Function(bool)? onResult,
  }) : super(
          LoginRoute.name,
          path: '/auth/signIn',
          args: LoginRouteArgs(
            key: key,
            onResult: onResult,
          ),
        );

  static const String name = 'LoginRoute';
}

class LoginRouteArgs {
  const LoginRouteArgs({
    this.key,
    this.onResult,
  });

  final Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'LoginRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [PinCodePage]
class PinCodeRoute extends PageRouteInfo<PinCodeRouteArgs> {
  PinCodeRoute({
    Key? key,
    void Function(bool)? onResult,
  }) : super(
          PinCodeRoute.name,
          path: 'pin',
          args: PinCodeRouteArgs(
            key: key,
            onResult: onResult,
          ),
        );

  static const String name = 'PinCodeRoute';
}

class PinCodeRouteArgs {
  const PinCodeRouteArgs({
    this.key,
    this.onResult,
  });

  final Key? key;

  final void Function(bool)? onResult;

  @override
  String toString() {
    return 'PinCodeRouteArgs{key: $key, onResult: $onResult}';
  }
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute()
      : super(
          MainRoute.name,
          path: '/main',
        );

  static const String name = 'MainRoute';
}
