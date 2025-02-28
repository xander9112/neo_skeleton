import 'package:auth/src/_src.dart';
import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class BlockPage extends StatelessWidget {
  const BlockPage({super.key, this.onResult});

  final void Function(bool)? onResult;

  void _redirect(BuildContext context) {
    if (onResult == null) {
      context.router.replaceNamed('/');

      AppInitializer.updateKey();
    } else {
      onResult?.call(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<LoginCubit>()..checkAuth(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state.stateStatus.isReady) {
            if (!state.isBlocked) {
              _redirect(context);
            }
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(Insets.l),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: Insets.s),
                        child: Text(
                          'Доступ заблокирован',
                          style: context.theme.textTheme.titleLarge,
                        ),
                      ),
                      const Text(
                        'Введен неверный код. Повторите попытку позже',
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.only(bottom: Insets.l),
                        child: Icon(Icons.lock_outline, size: 256),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(Insets.l),
                        child: state.isBlocked
                            ? UiBlockTimer(
                                duration: state.blockTime,
                                onPressedRepeat: () async {
                                  await context.read<LoginCubit>().unBlock();

                                  _redirect(context);
                                },
                              )
                            : const SizedBox.shrink(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: Insets.l),
                        child: GestureDetector(
                          onTap: () {},
                          child: const Text('Обратиться в поддержку'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
