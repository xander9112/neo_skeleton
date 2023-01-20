import 'package:flutter/material.dart';
import 'package:neo_bank/src/core/_core.dart';
import 'package:neo_bank/src/core/features/auth/di/auth_injection_container.dart';

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
