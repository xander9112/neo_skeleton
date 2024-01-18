// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:{{name.snakeCase()}}/src/core/_core.dart';
// import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
// import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

// class AppRouter {
//   AppRouter({this.routerHelper})
//       : config = GoRouter(
//           navigatorKey: AppGlobalKeys.rootNavigatorKey,
//           // initialLocation: routerHelper?.initialLocation,
//           // debugLogDiagnostics: true,
//           routerNeglect: true,
//           redirect: routerHelper != null
//               ? (context, state) => routerHelper.redirect(context, state.uri)
//               : null,
//           refreshListenable: routerHelper?.refreshListenable,
//           routes: [
//             GoRoute(
//               path: '/',
//               redirect: (context, state) {
//                 if (Uri.base.path == '/') {
//                   return routerHelper?.homeLocation;
//                 }

//                 return Uri.base.path;
//               },
//             ),
//             ...authRoutes,
//             ...mainRoutes,
//           ],
//           errorBuilder: (context, state) {
//             return NotFoundPage(
//               error: state.error!,
//               title: CoreI18n.notFoundPage,
//               homeButtonText: CoreI18n.goHome,
//             );
//           },
//         );

//   late final RouterConfig<Object> config;

//   final RouterHelper? routerHelper;

//   BuildContext get context =>
//       AppGlobalKeys.rootNavigatorKey.currentState!.context;
// }
