import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

@RoutePage()
class PinCodeCreatePage extends StatelessWidget {
  const PinCodeCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalAuthCubit>(
      create: (context) => AuthInjection.sl(),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              BlocBuilder<LocalAuthCubit, LocalAuthState>(
                builder: (context, state) {
                  return const SizedBox.shrink();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
