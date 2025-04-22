// ignore_for_file: lines_longer_than_80_chars, avoid_print

import 'dart:io';

import 'package:path/path.dart' as p;

void main(List<String> arguments) async {
  final resultFlutterFlavorizr = await _genFlavor();

  if (!resultFlutterFlavorizr) {
    return;
  }

  final resultFlutterLauncherIcons = await _genIcons();

  if (!resultFlutterLauncherIcons) {
    return;
  }

  await _replaceIcons();
}

Future<bool> _genIcons() async {
  final resultFlutterLauncherIcons = await Process.run(
    'dart',
    [
      'run',
      'flutter_launcher_icons',
    ], // Команда flutter pub run flutter_launcher_icons
  );

  if (resultFlutterLauncherIcons.exitCode != 0) {
    print(
      'Ошибка при выполнении flutter_launcher_icons: ${resultFlutterLauncherIcons.stderr}',
    );

    return false;
  }

  return true;
}

Future<bool> _genFlavor() async {
  final result = await Process.run(
    'dart',
    [
      'run',
      'flutter_flavorizr',
      '-f',
    ], // Команда dart run flutter_flavorizr
  );

  if (result.exitCode != 0) {
    print('Ошибка при выполнении flutter_flavorizr: ${result.stderr}');

    return false;
  }

  return true;
}

Future<bool> _replaceIcons() async {
  final Directory current = Directory(p.joinAll([Directory.current.path]));

  final appDir = Directory(
    p.joinAll([current.path]),
  );

  final flavors = await appDir
      .list(recursive: true)
      .where((event) => event.path.contains('flutter_launcher_icons-'))
      .map((event) => event.path.split('-').last.split('.').first)
      .toList();

  await Future.forEach(
    flavors,
    (flavor) async {
      final Directory assetsFrom = Directory(
        p.joinAll([
          current.path,
          'ios',
          'Runner',
          'Assets.xcassets',
          'AppIcon-$flavor.appiconset',
        ]),
      );

      final images = await assetsFrom
          .list(recursive: true)
          .where((event) => event.path.contains('AppIcon'))
          .map((event) => event.path)
          .toList();

      await Future.forEach(
        images,
        (element) async {
          final fileName = element.split('/').last;

          await _moveFile(
            element,
            'ios/Runner/Assets.xcassets/${flavor}AppIcon.appiconset/Icon-App-${fileName.split('-').last}',
          );
        },
      );
    },
  );

  return true;
}

Future<void> _moveFile(String source, String destination) async {
  try {
    // Создаем экземпляр файла по исходному пути
    final file = File(source);

    // Перемещаем и переименовываем файл
    await file.rename(destination);
  } catch (e) {
    print('Ошибка при перемещении или переименовании файла: $e');
  }
}
