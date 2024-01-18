import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.onResult});

  final void Function(bool)? onResult;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoadingState<LoginPage> {
  void onFinish(BuildContext context) {
    if (widget.onResult == null) {
      context.router.pushNamed('/');
    } else {
      widget.onResult?.call(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) {
        return AuthInjection.sl<LoginCubit>()..checkAuth();
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              state.when(
                initial: (status, stateStatus, error, blockTime) {
                  if (status.isFetchingInProgress) {
                    loadingOverlay.show(context);
                  } else {
                    loadingOverlay.hide();
                  }

                  if (stateStatus.isFinish) {
                    onFinish(context);
                  }
                },
              );
            },
            builder: (context, state) {
              return LoginForm(
                form: context.read<LoginCubit>().form,
                message: state.error,
                onSubmitForm: () {
                  context.read<LoginCubit>().login();
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
