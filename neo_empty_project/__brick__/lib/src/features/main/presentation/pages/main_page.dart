import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:{{name.snakeCase()}}_ui_kit/{{name.snakeCase()}}_ui_kit.dart';
import 'package:super_banners/super_banners.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  Future<void> onPressedPopTop(BuildContext context, int index) async {
    final router = AutoTabsRouter.of(context);

    if (router.activeIndex == index) {
      if (router.canPop()) {
        await router.popTop();

        await onPressedPopTop(context, index);
      } else {
        context
            .read<MainCubit>()
            .onPressedMenu(BottomMenuEnum.values.elementAt(index));
      }
    }
  }

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
              lazyLoad: false,
              routes: const [
                HomeRootRouter(),
                SettingsRoute(),
              ],
              builder: (context, child) {
                final tabsRouter = AutoTabsRouter.of(context);

                return NeoScaffold(
                  body: Stack(
                    children: [
                      child,
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
                    onTap: (index) {
                      onPressedPopTop(context, index);

                      tabsRouter.setActiveIndex(index);
                    },
                    items: [
                      BottomNavigationBarItem(
                        label: MainI18n.homeBottomMenuItem,
                        icon: const Icon(
                          Icons.home,
                        ),
                      ),
                      BottomNavigationBarItem(
                        label: MainI18n.settingsBottomMenuItem,
                        icon: const Icon(
                          Icons.settings,
                        ),
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
