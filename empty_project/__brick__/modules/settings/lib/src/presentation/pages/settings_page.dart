import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/src/_src.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder: (context, state) {
        return Title(
          color: Colors.black,
          title: 'Settings',
          child: Scaffold(
            appBar: AppBar(
              title: Text(SettingsI18n.title),
              actions: <Widget>[
                {{#features.contains("authentication")}}
                IconButton(
                  onPressed: context.read<SettingsCubit>().signOut,
                  icon: const Icon(Icons.logout),
                ),
                {{/features.contains("authentication")}}
              ],
            ),
            body: BlocBuilder<SettingsCubit, SettingsState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          LocaleSwitcher(),
                          LocalAuthSwitcher(),
                          BiometrySwitcher(),
                          PinCodeChanger(),
                          ThemeSwitcher(),
                        ],
                      ),
                    ),
                    Center(child: Text(state.appInfo.fullVersion)),
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
