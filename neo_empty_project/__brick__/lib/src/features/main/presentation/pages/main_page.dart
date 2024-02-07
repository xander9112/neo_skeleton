import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:neo_auth_ui_kit/neo_auth_ui_kit.dart';
import 'package:super_banners/super_banners.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      // Костыль чтобы получить showBottomMenu из meta информации
      setState(() {});
    });
  }

  Future<void> onPressedPopTop(BuildContext context, int index) async {
    final router = AutoTabsRouter.of(context);

    if (router.activeIndex == index) {
      if (router.canPop()) {
        await router.popTop();

        if (router.canPop()) {
          await onPressedPopTop(context, index);
        }
      } else {
        context
            .read<MainCubit>()
            .onPressedMenu(BottomMenuEnum.values.elementAt(index));
      }
    }
  }

  bool showBottomMenu(Map<String, dynamic>? data) {
    return data?['showBottomMenu'] == true;
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
                final meta = tabsRouter.current.router.topPage?.routeData.meta;

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
                  bottomNavigationBar: Visibility(
                    visible: showBottomMenu(meta),
                    child: BottomNavigationBar(
                      currentIndex: tabsRouter.activeIndex,
                      onTap: (index) {
                        onPressedPopTop(context, index);

                        tabsRouter.setActiveIndex(index);
                      },
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
