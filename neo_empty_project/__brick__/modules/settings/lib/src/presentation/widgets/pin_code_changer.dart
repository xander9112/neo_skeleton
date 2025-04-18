import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/src/_src.dart';

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
          onTap: () {
            context.router.push(const ChangePinCodeRoute());
          },
          trailing: const Icon(Icons.keyboard_arrow_right),
        );
      },
    );
  }
}
