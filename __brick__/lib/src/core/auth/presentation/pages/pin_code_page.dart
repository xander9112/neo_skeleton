import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/auth/_auth.dart';
import 'package:{{name.snakeCase()}}/src/core/auth/di/auth_injection_container.dart';

class PinCodePage extends StatelessWidget {
  const PinCodePage({super.key, this.onResult});

  final void Function(bool)? onResult;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LocalAuthCubit>(
      create: (context) {
        final bloc = slAuth<LocalAuthCubit>()..checkAuth(onResult);
        return bloc;
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
                        onCompleate: (pinCode) {
                          context
                              .read<LocalAuthCubit>()
                              .createPin(pinCode, onResult);
                        },
                      ),
                      enterPin: (message, length, biometricSupportModel) =>
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
