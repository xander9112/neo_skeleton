import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({
    required this.title,
    required this.error,
    this.content,
    super.key,
    this.showHomeButton = true,
    this.homeButtonText,
  });

  final Exception error;

  final String title;

  final bool showHomeButton;
  final String? homeButtonText;

  final Widget? content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: NeoCrossAssetImage(Assets.images.neonError.path),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: Text(
                title,
                style: context.theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: Text(
                error.toString(),
                style: context.theme.textTheme.labelSmall,
                textAlign: TextAlign.center,
              ),
            ),
            content ?? const SizedBox.shrink(),
            if (showHomeButton)
              UiButton(
                text: homeButtonText ?? '',
                onPressed: () {
                  // context.go('/home');
                },
              ),
          ],
        ),
      ),
    );
  }
}
