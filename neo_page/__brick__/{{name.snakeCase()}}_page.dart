import 'package:flutter/material.dart';
{{#stateful}}class {{name.pascalCase()}}Page extends StatefulWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  State<{{name.pascalCase()}}Page> createState() => _{{name.pascalCase()}}PageState();
}

class _{{name.pascalCase()}}PageState extends State<{{name.pascalCase()}}Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('{{name.pascalCase()}} page')),
        body: const Center(child: Text('Stateful widget')),
    );
  }
}{{/stateful}}
{{^stateful}}
class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('{{name.pascalCase()}} page')),
        body: const Center(child: Text('Stateless widget')),
    );
  }
}
{{/stateful}}