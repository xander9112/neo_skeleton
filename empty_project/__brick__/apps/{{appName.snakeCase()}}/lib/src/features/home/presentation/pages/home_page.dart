// ignore_for_file: lines_longer_than_80_chars

import 'package:auth/auth.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:{{appName.snakeCase()}}/src/features/home/_home.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage(name: 'HomeRootRouter')
class HomeRootPage extends AutoRouter {
  const HomeRootPage({super.key});
}

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(HomeI18n.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              spacing: Insets.s,
              runSpacing: Insets.s,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    NotifyService.showNotify(
                      notify: const UiSuccessNotify(
                        title: Text('Success'),
                        description: Text(
                          "Your message has been sent. We'll get back to you soon.",
                        ),
                      ),
                    );
                  },
                  child: const Text('Success'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    NotifyService.showNotify(
                      notify: const UiErrorNotify(
                        title: Text('Error'),
                        description: Text(
                          'Sorry, please try again later.',
                        ),
                      ),
                    );
                  },
                  child: const Text('Error'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    NotifyService.showNotify(
                      notify: const UiWarningNotify(
                        title: Text('Warning'),
                        description: Text(
                          'Your subscription is about to expire in 3 days. Renew now to avoid any service interruptions.',
                        ),
                      ),
                    );
                  },
                  child: const Text('Warning'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    NotifyService.showNotify(
                      notify: const UiInfoNotify(
                        title: Text('Info'),
                        description: Text(
                          'Your subscription is about to expire in 3 days. Renew now to avoid any service interruptions.',
                        ),
                      ),
                    );
                  },
                  child: const Text('Info'),
                ),
              ],
            ),
            const SizedBox(height: Insets.l),
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: ElevatedButton(
                onPressed: GetIt.I<AuthManager<UserEntity>>().block,
                child: const Text('Block user'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
