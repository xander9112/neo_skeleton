// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return CustomPage<void>(
          routeData: routeData,
          child: const SplashPage(),
          transitionsBuilder: fadeTransition,
          opaque: true,
          barrierDismissible: false);
    },
    AuthRoute.name: (routeData) {
      return CustomPage<void>(
          routeData: routeData,
          child: const AuthPage(),
          transitionsBuilder: fadeTransition,
          opaque: true,
          barrierDismissible: false);
    },
    MainRoute.name: (routeData) {
      return CustomPage<void>(
          routeData: routeData,
          child: const MainPage(),
          transitionsBuilder: fadeTransition,
          opaque: true,
          barrierDismissible: false);
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<void>(routeData: routeData, child: const HomePage());
    },
    ProfileRoute.name: (routeData) {
      return AdaptivePage<void>(
          routeData: routeData, child: const ProfilePage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(AuthRoute.name, path: 'auth'),
        RouteConfig(MainRoute.name, path: 'main', children: [
          RouteConfig('#redirect',
              path: '',
              parent: MainRoute.name,
              redirectTo: 'main/home',
              fullMatch: true),
          RouteConfig(HomeRoute.name,
              path: 'main/home', parent: MainRoute.name),
          RouteConfig(ProfileRoute.name,
              path: 'main/profile', parent: MainRoute.name)
        ])
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [AuthPage]
class AuthRoute extends PageRouteInfo<void> {
  const AuthRoute() : super(AuthRoute.name, path: 'auth');

  static const String name = 'AuthRoute';
}

/// generated route for
/// [MainPage]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
      : super(MainRoute.name, path: 'main', initialChildren: children);

  static const String name = 'MainRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'main/home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'main/profile');

  static const String name = 'ProfileRoute';
}
