import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class BlockPage extends StatelessWidget {
  const BlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthInjection.sl<LoginCubit>()..checkAuth(),
      child: BlocBuilder<LoginCubit, LoginState>(
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
                                onPressedRepeat:
                                    context.read<LoginCubit>().unBlock,
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
