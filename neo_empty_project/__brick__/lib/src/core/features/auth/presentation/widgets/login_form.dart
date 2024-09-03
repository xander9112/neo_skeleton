import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:skeleton_ui_kit/skeleton_ui_kit.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    required this.form,
    this.onSubmitForm,
    this.message,
    super.key,
  });

  final FormGroup form;
  final String? message;

  final VoidCallback? onSubmitForm;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ReactiveForm(
      formGroup: form,
      child: Center(
        child: SizedBox(
          width: width > 480 ? 480 : double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: Insets.xxxl),
                child: Text(
                  AuthI18n.signIn,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(Insets.l),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.l),
                      child: ReactiveTextField<String>(
                        formControlName: 'login',
                        decoration: InputDecoration(
                          label: Text(AuthI18n.login),
                          border: const OutlineInputBorder(),
                        ),
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              AuthI18n.loginRequired,
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: Insets.l),
                      child: ReactiveTextField<String>(
                        formControlName: 'password',
                        obscureText: true,
                        decoration: InputDecoration(
                          label: Text(AuthI18n.password),
                          border: const OutlineInputBorder(),
                        ),
                        validationMessages: {
                          ValidationMessage.required: (_) =>
                              AuthI18n.passwordRequired,
                        },
                      ),
                    ),
                    UiButton(
                      onPressed: () {
                        form.markAllAsTouched();

                        if (form.valid) {
                          onSubmitForm?.call();
                        }
                      },
                      text: AuthI18n.signIn,
                    ),
                    Visibility(
                      visible: message != null,
                      child: Text(
                        message ?? '',
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
