import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/config/fetch_status.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/auth/auth.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  AuthCubit get _authCubit => GetIt.I<AuthCubit>();

  void _onLogin() {
    _authCubit.login();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth'),
      ),
      body: BlocBuilder<AuthCubit, AuthState>(
        bloc: _authCubit,
        builder: (BuildContext context, AuthState state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                state.maybeWhen(
                  orElse: () => const SizedBox(),
                  unAuth: (FetchStatus status, String? error) {
                    if (status.isFetchingInProgress) {
                      return const CircularProgressIndicator.adaptive();
                    }

                    return const SizedBox();
                  },
                ),
                ElevatedButton(onPressed: _onLogin, child: const Text('Login'))
              ],
            ),
          );
        },
      ),
    );
  }
}
