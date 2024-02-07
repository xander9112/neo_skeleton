import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/_home.dart';
import 'package:neo_auth_ui_kit/neo_auth_ui_kit.dart';

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
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: Text(
                HomeI18n.title,
                style: context.defaultText.displaySmall,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: ElevatedButton(
                onPressed: () {
                  NotifyService.success(
                    title: 'Message sent',
                    text:
                        // ignore: lines_longer_than_80_chars
                        "Your message has been sent. We'll get back to you soon.",
                  );
                },
                child: const Text('Success'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: ElevatedButton(
                onPressed: () {
                  GetIt.I<AuthManager<AuthenticatedUser>>().block();
                  // NotifyService.error(
                  //   title: 'Error occurred',
                  //   text: 'Sorry, please try again later.',
                  // );
                },
                child: const Text('Error'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: Insets.l),
              child: ElevatedButton(
                onPressed: () {
                  NotifyService.warning(
                    title: 'Error occurred',
                    text:
                        // ignore: lines_longer_than_80_chars
                        'Your subscription is about to expire in 3 days. Renew now to avoid any service interruptions.',
                  );
                },
                child: const Text('Warning'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
