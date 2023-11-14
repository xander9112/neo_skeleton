import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoadingState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) {
        return AuthInjection.sl<LoginCubit>()..checkAuth(widget.onResult);
      },
      child: Scaffold(
        body: SafeArea(
          child: Scaffold(
          body: SafeArea(
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                state.when(
                  initial: (status, error) {
                    if (status.isFetchingInProgress) {
                      loadingOverlay.show(context);
                    } else {
                      loadingOverlay.hide();
                    }
                  },
                );
              },
              builder: (context, state) {
                return LoginForm(
                  form: context.read<LoginCubit>().form,
                  message: state.error,
                  onSubmitForm: () {
                    context.read<LoginCubit>().login(widget.onResult);
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
