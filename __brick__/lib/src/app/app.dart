import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';

import '../core/_core.dart';

class {{#pascalCase}}{{name}}{{/pascalCase}}App extends StatelessWidget {
  const {{#pascalCase}}{{name}}{{/pascalCase}}App({Key? key}) : super(key: key);

  AppRouter get _appRouter => GetIt.I<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      bloc: GetIt.I<ThemeCubit>(),
      builder: (BuildContext context, ThemeState state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: AppConstants.projectName,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: state.themeMode,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
          routeInformationProvider: _appRouter.routeInfoProvider(),
          builder: (BuildContext context, Widget? child) {
            // Intl.defaultLocale = context.locale.toString();

            // ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
            //   return CustomErrorScreen(errorDetails: errorDetails);
            // };

            return _App(child);
          },
          // home: const _{{#pascalCase}}{{name}}{{/pascalCase}}Main(),
        );
      },
    );
  }
}

class _App extends StatelessWidget {
  const _App(this.child, {Key? key}) : super(key: key);

  final Widget? child;

  AppRouter get _appRouter => GetIt.I<AppRouter>();
  CoreCubit get _coreCubit => GetIt.I<CoreCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CoreCubit, CoreState>(
      bloc: _coreCubit,
      listener: (BuildContext context, CoreState state) {
        state.when(
          initial: () {
            _appRouter.replaceNamed(RouterPath.initial);
          },
          auth: () {
            _appRouter.replaceNamed(RouterPath.auth);
          },
          main: () {
            _appRouter.replaceNamed(RouterPath.main);
          },
        );
      },
      child: child,
    );
  }
}
