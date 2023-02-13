// ignore_for_file: sized_box_shrink_expand

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';

class CheckPinCodeDialog extends StatelessWidget {
  const CheckPinCodeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),
      body: BlocProvider<CheckPinCodeDialogCubit>(
        create: (context) => AuthInjection.sl<CheckPinCodeDialogCubit>(),
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
      useSafeArea: false,
      builder: (BuildContext context) {
        return const CheckPinCodeDialog();
      },
    );
  }
}
