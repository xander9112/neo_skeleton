import 'package:flutter/material.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('{{name.pascalCase()}} page')),
      body: const Center(child: Text('Body of {{name.pascalCase()}} page')),
    );
  }
}
