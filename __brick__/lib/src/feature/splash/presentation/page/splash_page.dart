import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key, this.onResult});

  final void Function(bool)? onResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('{{name.pascalCase()}} page'),
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
