import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MainInjection.sl<MainCubit>()..init(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return UiEither(
            condition: state.status.isFetchingSuccess,
            onFalse: const Scaffold(body: UiProgressIndicator()),
            onTrue: AutoTabsRouter(
              routes: const [
                HomeRoute(),
                SettingsRootRouter(),
              ],
              builder: (context, child, animation) {
                final tabsRouter = AutoTabsRouter.of(context);

                return Scaffold(
                  body: FadeTransition(opacity: animation, child: child),
                  bottomNavigationBar: BottomNavigationBar(
                    currentIndex: tabsRouter.activeIndex,
                    onTap: tabsRouter.setActiveIndex,
                    items: const [
                      BottomNavigationBarItem(
                        label: 'Home',
                        icon: Icon(Icons.home),
                      ),
                      BottomNavigationBarItem(
                        label: 'Settings',
                        icon: Icon(Icons.settings),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

