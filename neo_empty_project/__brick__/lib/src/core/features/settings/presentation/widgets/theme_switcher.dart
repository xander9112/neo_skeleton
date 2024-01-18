import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class ThemeSwitcher extends StatelessWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DevicePreferencesBloc, DevicePreferencesState>(
      builder: (context, state) {
        return ListTile(
          title: Text(SettingsI18n.selectTheme),
          trailing: DropdownButton<ThemeMode?>(
            value: state.themeMode,
            items: ThemeMode.values
                .map(
                  (e) => DropdownMenuItem<ThemeMode>(
                    value: e,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(e.name),
                    ),
                  ),
                )
                .toList(),
            onChanged: (value) {
              context.read<DevicePreferencesBloc>().add(
                    DevicePreferencesEvent.setThemeMode(
                      value,
                    ),
                  );
            },
          ),
        );
      },
    );
  }
}
