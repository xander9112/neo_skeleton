// ignore_for_file: sized_box_shrink_expand

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/features/auth/di/auth_injection_container.dart';

class CheckPinCodeDialog extends StatelessWidget {
  const CheckPinCodeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<CheckPinCodeDialogCubit>(
        create: (context) => slAuth<CheckPinCodeDialogCubit>(),
        child: Column(
          children: [
            Expanded(
              child: BlocConsumer<CheckPinCodeDialogCubit,
                  CheckPinCodeDialogState>(
                listener: (context, state) {
                  state.when(
                    initial: () {},
                    success: () {
                      Navigator.of(context).pop(true);
                    },
                    enterPin: (value, length) {},
                  );
                },
                builder: (context, state) {
                  return state.when(
                    initial: SizedBox.shrink,
                    success: SizedBox.shrink,
                    enterPin: (error, length) {
                      return Stack(
                        children: [
                          PinCodeEnterForm(
                            message: error,
                            pinCodeLength: length,
                            onComplete: (value) {
                              context
                                  .read<CheckPinCodeDialogCubit>()
                                  .enterPin(value, null);
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.of(context).pop(false);
                                },
                                icon: const Icon(Icons.close),
                              )
                            ],
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Future<bool?> showCurrentDialog(
    BuildContext context, {
    String? title,
    String? body,
    dynamic params,
  }) {
    return showDialog<bool?>(
      context: context,
      builder: (BuildContext context) {
        return const CheckPinCodeDialog();
      },
    );
  }
}
