import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:super_banners/super_banners.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<MainCubit>()..init(),
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
                  body: Stack(
                    children: [
                      FadeTransition(opacity: animation, child: child),
                      Visibility(
                        visible: state.isDemo,
                        child: CornerBanner(
                          bannerColor: Colors.cyan,
                          shadowColor: Colors.black.withOpacity(0.8),
                          elevation: 5,
                          child: const Text('Demo'),
                        ),
                      ),
                    ],
                  ),
                  bottomNavigationBar: BottomNavigationBar(
                    currentIndex: tabsRouter.activeIndex,
                    onTap: tabsRouter.setActiveIndex,
                    items: [
                      BottomNavigationBarItem(
                        label: MainI18n.homeBottomMenuItem,
                        icon: const Icon(Icons.home),
                      ),
                      BottomNavigationBarItem(
                        label: MainI18n.settingsBottomMenuItem,
                        icon: const Icon(Icons.settings),
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
