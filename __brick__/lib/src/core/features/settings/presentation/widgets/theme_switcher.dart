import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(SettingsI18n.selectTheme),
            const SizedBox(
              width: Insets.s,
            ),
            DropdownButton<AppThemeMode?>(
              value: state.appThemeMode,
              items: [null, ...AppThemeMode.values]
                  .map(
                    (e) => DropdownMenuItem<AppThemeMode?>(
                      value: e,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          e?.getLocalizedString() ?? SettingsI18n.systemTheme,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                context.read<SettingsCubit>().setTheme(value);
              },
            )
          ],
        );
      },
    );
  }
}
