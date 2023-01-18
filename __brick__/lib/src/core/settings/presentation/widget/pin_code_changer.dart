import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class PinCodeChanger extends StatelessWidget {
  const PinCodeChanger({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: state.useLocalAuth
                  ? () {
                      context.read<SettingsCubit>().setPinCode();
                    }
                  : null,
              child: Text(SettingsI18n.changePinCode),
            )
          ],
        );
      },
    );
  }
}
