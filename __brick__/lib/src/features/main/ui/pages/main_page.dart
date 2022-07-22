import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/config.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  static const String routeName = 'Main';

  @override
  Widget build(BuildContext context) {
    /// Для того чтобы работал перевод для BottomBar
    context.locale;

    return AutoTabsRouter(
      routes: const <PageRouteInfo<dynamic>>[
        HomeRoute(),
        ProfileRoute(),
      ],
      builder: (
        BuildContext context,
        Widget child,
        Animation<double> animation,
      ) {
        final TabsRouter tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: BottomNavigationBar(
            onTap: tabsRouter.setActiveIndex,
            currentIndex: tabsRouter.activeIndex,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                label: tr('bottomNavigationBar.home'),
                icon: const Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: tr('bottomNavigationBar.profile'),
                icon: const Icon(Icons.person),
              ),
            ],
          ),
        );
      },
    );
  }
}
