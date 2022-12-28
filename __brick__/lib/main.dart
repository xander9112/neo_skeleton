import 'package:flutter/material.dart';

import 'src/_src.dart';

Future<void> main() async {
  await AppInit.initCommon();

  await AppInit.initEnvironments();

  AppInit.initStorage(() async {
    await AppInit.initDependencies();

    await AppInit.initLocalizations(const {{#pascalCase}}{{name}}{{/pascalCase}}App(), runApp);
  });
}
