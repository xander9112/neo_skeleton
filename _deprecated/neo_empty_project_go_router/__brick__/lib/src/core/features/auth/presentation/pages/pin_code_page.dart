import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/features/home/presentation/_presentation.dart';

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
                child: BlocConsumer<LocalAuthCubit, LocalAuthState>(
                  listener: (context, state) {
                    state.mapOrNull(
                      success: (value) {
                        context.go(HomeRoutePath.initial);
                      },
                    );
                  },
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
                      enterPin: (
                        biometricSupportModel,
                        message,
                        length,
                        errorCount,
                      ) =>
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
                        onPressedReset:
                            context.read<LocalAuthCubit>().resetPinCode,
                        onComplete: (pinCode) async {
                          await context
                              .read<LocalAuthCubit>()
                              .enterPin(pinCode, onResult);
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
