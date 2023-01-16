import 'package:{{name.snakeCase()}}/src/core/features/auth/_auth.dart';
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PinCodeCreatePage extends StatelessWidget {
  const PinCodeCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalAuthCubit>(
      create: (context) => slAuth(),
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
