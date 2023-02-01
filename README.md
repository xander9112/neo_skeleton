## add from git url
```bash
mason add neo_empty_project --git-url https://github.com/xander9112/neo_skeleton
mason make neo_empty_project  
```

## run init file
```bash
dart init_project.dart
```

## add localizations
```bash
dart pub global activate intl_translation
```


Запустить генерацию arb файла
```bash
fvm flutter pub global run intl_translation:extract_to_arb --output-dir=assets/l10n lib/**/l10n.dart
```
Из файла assets/l10n/intl_messages.arb скопировать сгенерированные значения в файлы переводов и запустить генерацию кода
```bash
fvm flutter pub global run intl_translation:generate_from_arb lib/**/l10n.dart assets/l10n/*.arb --output-dir=lib/src/core/l10n/generated

```