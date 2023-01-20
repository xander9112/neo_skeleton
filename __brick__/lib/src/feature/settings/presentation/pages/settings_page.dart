import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text('Settings page'),
        actions: <Widget>[
          IconButton(
            onPressed: slAuth<AuthManager<AuthenticatedUser>>().signOut,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const LocaleSwitcher(),
          const LocalAuthSwitcher(),
          const BiometrySwitcher(),
          const PinCodeChanger(),
          ListTile(
            title: const Text('Theme'),
            onTap: () => context.router.pushNamed(RoutePath.settingsTheme),
            trailing: const Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
