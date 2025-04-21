// ignore_for_file: sized_box_shrink_expand

import 'package:auto_route/auto_route.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:settings/src/_src.dart';

@RoutePage()
class ChangePinCodePage extends StatelessWidget {
  const ChangePinCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: BlocProvider<ChangePinCodeCubit>(
        create: (context) => sl<ChangePinCodeCubit>(),
        child: Column(
          children: [
            Expanded(
              child: BlocConsumer<ChangePinCodeCubit, ChangePinCodeState>(
                listener: (context, state) {
                  state.when(
                    initial: () {},
                    success: () {
                      Navigator.of(context).pop(true);
                    },
                    enterPin: (value, length) {},
                    createPin: (error, confirm, length) {},
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
                            onComplete: (value) async {
                              await context
                                  .read<ChangePinCodeCubit>()
                                  .enterPin(value, null);
                            },
                          ),
                        ],
                      );
                    },
                    createPin: (message, confirm, length) => PinCodeCreateForm(
                      key: UniqueKey(),
                      isConfirm: confirm,
                      message: message,
                      pinCodeLength: length,
                      onComplete: (pinCode) {
                        context.read<ChangePinCodeCubit>().createPin(pinCode);
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
