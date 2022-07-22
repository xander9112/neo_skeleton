import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/core.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  BuildContext get _context =>
      GetIt.I<AppRouter>().navigatorKey.currentState!.context;

  ThemeCubit get _themeCubit => GetIt.I<ThemeCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('profile')),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(context.locale.toString()),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
            child: Row(
              children: context.supportedLocales
                  .where((Locale element) => element != context.locale)
                  .map(
                (Locale e) {
                  return Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        _context.setLocale(e);
                      },
                      child: Text(e.languageCode),
                    ),
                  );
                },
              ).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: BlocBuilder<ThemeCubit, ThemeState>(
              bloc: _themeCubit,
              builder: (BuildContext context, ThemeState state) {
                return Column(
                  children: <Widget>[
                    Text(state.themeMode.toString()),
                    Row(
                      children: ThemeMode.values.map((ThemeMode e) {
                        final bool isCurrent = state.themeMode == e;

                        return Expanded(
                          child: ElevatedButton(
                            onPressed: isCurrent
                                ? null
                                : () {
                                    _themeCubit.setThemeMode(e);
                                  },
                            child: Text(e.name),
                          ),
                        );
                      }).toList(),
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
