import 'package:flutter/material.dart';

class CorePage extends StatelessWidget {
  const CorePage({Key? key}) : super(key: key);

  static const String routeName = 'Core';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Core'),
      ),
      body: const Center(child: Text('Core Page')),
    );
  }
}
