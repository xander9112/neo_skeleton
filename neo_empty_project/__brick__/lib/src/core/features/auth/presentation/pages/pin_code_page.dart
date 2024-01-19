import 'package:app_runner/app_runner.dart';
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
                child: BlocConsumer<LocalAuthCubit, LocalAuthState>(
                  listener: (context, state) {
                    state.mapOrNull(
                      success: (value) {
                        onResult?.call(true);
                      },
                      resetPinCode: (value) async {
                        onResult?.call(false);

                        context.reloadWidget();
                      },
                    );
                  },
                  builder: (context, state) {
                    return state.when(
                      initial: UiProgressIndicator.new,
                      success: () => const UiProgressIndicator(),
                      resetPinCode: () => GestureDetector(
                        onTap: () {
                          onResult?.call(false);
                          context.router.pushNamed('/');
                        },
                        child: const UiProgressIndicator(),
                      ),
                      createPin: (message, confirm, length, status) =>
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
                        status,
                      ) =>
                          PinCodeEnterForm(
                        isLoading: status.isFetchingInProgress,
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
