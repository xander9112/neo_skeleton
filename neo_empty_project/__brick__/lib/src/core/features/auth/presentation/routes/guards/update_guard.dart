// import 'package:auto_route/auto_route.dart';
// import 'package:{{name.snakeCase()}}/src/core/_core.dart';

// class UpdateGuard extends AutoRouteGuard {
//   UpdateGuard(this._authManager);

//   final AuthManager<AuthenticatedUser> _authManager;

//   @override
//   Future<void> onNavigation(
//     NavigationResolver resolver,
//     StackRouter router,
//   ) async {
//     if (!_authManager.isChecked) {
//       await router.replace(
//         SplashRoute(
//           onResult: (bool isSuccess) {
//             if (isSuccess) {
//               resolver.next();

//               router.removeLast();
//             }
//           },
//         ),
//       );
//     } else {
//       resolver.next();

//       router.removeLast();
//     }
//   }
// }
