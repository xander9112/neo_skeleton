import 'package:flutter/material.dart';

import 'src/src.dart';

Future<void> main() async {
  await AppInit.initCommon();

  await AppInit.initEnvironments();

  AppInit.initStorage(() async {
    await AppInit.initDependencies();

    await AppInit.initLocalizations(const {{#pascalCase}}{{name}}{{/pascalCase}}App(), runApp);
  });
}
