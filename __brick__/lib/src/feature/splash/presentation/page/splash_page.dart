import 'package:auto_route/auto_route.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key, this.onResult});

  final void Function(bool)? onResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Text('Splash page'),
              ElevatedButton(
                onPressed: () {
                  getIt<AuthManager<AuthenticatedUser>>().isChecked = true;
                  if (onResult != null) {
                    onResult?.call(true);
                  } else {
                    context.router.pushNamed(RoutePath.main);
                  }
                },
                child: const Text('Continue'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
