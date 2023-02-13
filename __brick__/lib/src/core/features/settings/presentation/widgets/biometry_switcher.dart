import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class BiometrySwitcher extends StatelessWidget {
  const BiometrySwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
          if (!state.useLocalAuth) {
          return const SizedBox();
        }
        
         return ListTile(
          title: Text(SettingsI18n.useBiometrics),
          trailing: Switch(
            value: state.useBiometric ?? false,
            onChanged: state.useBiometric == null
                ? null
                : (value) {
                    context.read<SettingsCubit>().setBiometry(value: value);
                  },
          ),
        );
      },
    );
  }
}
