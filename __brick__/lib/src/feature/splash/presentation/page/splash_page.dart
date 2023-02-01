import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, this.onResult});

  final void Function(bool)? onResult;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    _verify();
  }

  Future<void> _verify() async {
    await getIt<AuthManager<AuthenticatedUser>>().verify();

    if (widget.onResult != null) {
      widget.onResult?.call(true);
    } else {
      await context.router.pushNamed(RoutePath.main);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: Text(
                  '{{name.pascalCase()}}',
                  style: context.defaultText.displaySmall,
                ),
              ),
              const UiProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
