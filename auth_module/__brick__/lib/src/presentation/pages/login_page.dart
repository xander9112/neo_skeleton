import 'package:auth/src/_src.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui_kit/ui_kit.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key, this.onResult, this.useAppBar = false});

  final void Function(bool)? onResult;

  final bool useAppBar;

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
        return sl<LoginCubit>()..checkAuth();
      },
      child: Scaffold(
        appBar: widget.useAppBar ? AppBar() : null,
        body: SafeArea(
          child: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state.status.isFetchingInProgress) {
                loadingOverlay.show(context);
              } else {
                loadingOverlay.hide();
              }

              if (state.stateStatus.isFinish) {
                onFinish(context);
              }
            },
            builder: (context, state) {
              return LoginForm(
                form: context.read<LoginCubit>().form,
                message: state.error,
                onSubmitForm: context.read<LoginCubit>().login,
              );
            },
          ),
        ),
      ),
    );
  }
}
