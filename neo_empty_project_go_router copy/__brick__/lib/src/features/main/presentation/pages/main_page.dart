import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/main/_main.dart';
import 'package:super_banners/super_banners.dart';

class MainPage extends StatelessWidget {
  const MainPage({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetIt.I<MainCubit>()..init(),
      child: BlocBuilder<MainCubit, MainState>(
        builder: (context, state) {
          return UiEither(
            condition: state.status.isFetchingSuccess,
            onFalse: const Scaffold(body: UiProgressIndicator()),
            onTrue: Scaffold(
              body: Stack(
                children: [
                  navigationShell,
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
                currentIndex: navigationShell.currentIndex,
                onTap: (index) => navigationShell.goBranch(
                  index,
                  initialLocation: index == navigationShell.currentIndex,
                ),
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
  }
}
