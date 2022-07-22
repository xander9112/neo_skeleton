import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:{{#snakeCase}}{{name}}{{/snakeCase}}/src/core/core/core.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String routeName = 'Splash';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final CoreCubit _coreCubit = GetIt.I<CoreCubit>();

  @override
  void initState() {
    _coreCubit.init();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
