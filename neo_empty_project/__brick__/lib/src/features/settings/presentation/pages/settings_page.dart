import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(SettingsI18n.title),
        actions: <Widget>[
          IconButton(
            onPressed:
                AuthInjection.sl<AuthManager<AuthenticatedUser>>().signOut,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LocaleSwitcher(),
          LocalAuthSwitcher(),
          BiometrySwitcher(),
          PinCodeChanger(),
          ThemeSwitcher(),
        ],
      ),
    );
  }
}
