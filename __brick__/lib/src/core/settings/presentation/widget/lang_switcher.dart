import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/l10n/app_localizations.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LocaleSwitcher extends StatelessWidget {
  const LocaleSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(SettingsI18n.selectLanguage),
            const SizedBox(
              width: Insets.s,
            ),
            DropdownButton<Locale?>(
              value: state.locale,
              items: [null, ...AppLocalizations.supportedLocales]
                  .map(
                    (e) => DropdownMenuItem<Locale?>(
                      value: e,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          e?.toString() ?? SettingsI18n.systemLanguage,
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (value) {
                context.read<SettingsCubit>().setLocale(value);
              },
            )
          ],
        );
      },
    );
  }
}
