import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SecretHomePage extends StatefulWidget {
  const SecretHomePage({super.key});

  @override
  State<SecretHomePage> createState() => _SecretHomePageState();
}

class _SecretHomePageState extends State<SecretHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Secret home page')),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('SUPER SECRET PAGE')],
        ),
      ),
    );
  }
}
