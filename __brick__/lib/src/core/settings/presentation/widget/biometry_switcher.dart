import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class BiometrySwitcher extends StatelessWidget {
  const BiometrySwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(SettingsI18n.useBiometrics),
            const SizedBox(
              width: Insets.s,
            ),
            Switch(
              value: state.useBiometric ?? false,
              onChanged: state.useBiometric == null
                  ? null
                  : (value) {
                      context.read<SettingsCubit>().setBiometry(value: value);
                    },
            )
          ],
        );
      },
    );
  }
}
