import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                  slAuth<AuthManager<AuthenticatedUser>>().verify();
                },
                child: const Text('Verify'),
              ),
              ElevatedButton(
                onPressed: () {
                  slAuth<AuthManager<AuthenticatedUser>>().signOut();
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
