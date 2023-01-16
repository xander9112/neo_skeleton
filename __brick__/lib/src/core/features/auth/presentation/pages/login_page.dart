import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.onResult});

  final void Function(bool)? onResult;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends LoadingState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginCubit>(
      create: (context) => getIt(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                BlocConsumer<LoginCubit, LoginState>(
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
                    context.read<LoginCubit>().checkAuth(widget.onResult);
                    return LoginForm(
                      form: context.read<LoginCubit>().form,
                      message: state.error,
                      onSubmitForm: () {
                        context.read<LoginCubit>().login(widget.onResult);
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
