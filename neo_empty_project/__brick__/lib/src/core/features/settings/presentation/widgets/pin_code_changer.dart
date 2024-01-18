import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class PinCodeChanger extends StatelessWidget {
  const PinCodeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        if (!state.useLocalAuth) {
          return const SizedBox();
        }

        return ListTile(
          title: Text(SettingsI18n.changePinCode),
          onTap: () => context.goRelative(SettingsRoutePath.changePinCode),
          // onTap: context.read<SettingsCubit>().setPinCode,
          trailing: const Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }
}
