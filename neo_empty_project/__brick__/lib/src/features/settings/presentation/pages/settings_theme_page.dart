import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SettingsThemePage extends StatelessWidget {
  const SettingsThemePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Settings page'),
              ElevatedButton(
                onPressed: () {
                  AuthInjection.sl<AuthManager<AuthenticatedUser>>().verify();
                },
                child: const Text('Verify'),
              ),
              ElevatedButton(
                onPressed: () {
                  AuthInjection.sl<AuthManager<AuthenticatedUser>>().signOut();
                },
                child: const Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
