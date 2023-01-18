import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

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
            padding: const EdgeInsets.all(Insets.xl),
            decoration: const BoxDecoration(
              // color: context.theme.cardColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(BorderRadiusInsets.xl),
                topRight: Radius.circular(BorderRadiusInsets.xl),
              ),
            ),
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
