import 'dart:async';

import 'package:flutter/material.dart';
import 'package:{{name.snakeCase()}}/src/core/_core.dart';
import 'package:{{name.snakeCase()}}/src/core/app.dart';
import 'package:rxdart/rxdart.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer? _timer;

  int _start = 1;

  StreamSubscription<int>? listener;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      startTimer();

      // App.onFinishSplash();

      // Future.delayed(const Duration(seconds: 1), App.onFinishSplash);
    });

    listener =
        App.progress.debounceTime(const Duration(seconds: 1)).listen((value) {
      if (value == 100 && !(_timer?.isActive ?? true)) {
        App.onFinishSplash();
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    listener?.cancel();
    super.dispose();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);

    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 1) {
          setState(() {
            timer.cancel();

            if (App.progress.value == 100) {
              App.onFinishSplash();
            }
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<int>(
        stream: App.progress,
        builder: (context, snapshot) {
          return SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.l),
                    child: Text(
                      'Timer: $_start',
                      style: context.defaultText.displaySmall,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: Insets.l),
                    child: Text(
                      'Progress: ${snapshot.data}',
                      style: context.defaultText.displaySmall,
                    ),
                  ),
                  const UiProgressIndicator(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
