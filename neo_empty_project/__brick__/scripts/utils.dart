import 'dart:io';

import 'package:path/path.dart' as p;

List<String> getL10nFiles() {
  final Directory current = Directory.current;

  final modules = Directory(p.joinAll([current.path, 'modules']))
      .listSync()
      .map((e) => e.path)
      .toList();

  final core = Directory(p.joinAll([current.path, 'packages', 'core'])).path;

  final List<String> translationsFiles = [];

  [...modules, core].forEach(
    (element) {
      print(element);
      final src = Directory(p.joinAll([element, 'lib', 'src']));
      if (!src.existsSync()) {
        print('Path: ${src.path} doesn\'t exists\n');

        return;
      }

      src
          .listSync(recursive: true)
          .where((event) => event.path.contains('l10n.dart'))
          .map((event) => event.path)
          .forEach(
        (element) {
          translationsFiles.add(element);
        },
      );
    },
  );

  return translationsFiles;
}
