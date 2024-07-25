import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

@RoutePage()
class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key, this.onResult});

  final void Function(bool)? onResult;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalAuthCubit>(
      create: (context) {
        return AuthInjection.sl<LocalAuthCubit>()..checkAuth(onResult);
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocBuilder<LocalAuthCubit, LocalAuthState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      success: () => const SizedBox.shrink(),
                      createPin: (message, confirm, length) =>
                          PinCodeCreateForm(
                        key: UniqueKey(),
                        isConfirm: confirm,
                        message: message,
                        pinCodeLength: length,
                        onComplete: (pinCode) {
                          context
                              .read<LocalAuthCubit>()
                              .createPin(pinCode, onResult);
                        },
                      ),
                      enterPin: (biometricSupportModel, message, length) =>
                          PinCodeEnterForm(
                        message: message,
                        pinCodeLength: length,
                        useBiometric: biometricSupportModel.status ==
                                BiometricStatus.available &&
                            (biometricSupportModel.useBiometric ?? false),
                        isFace: biometricSupportModel.isFace,
                        onBiometricPressed: () {
                          context.read<LocalAuthCubit>().biometricAuth(
                                onResult,
                              );
                        },
                        onComplete: (pinCode) {
                          context
                              .read<LocalAuthCubit>()
                              .enterPin(pinCode, onResult);
                        },
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
