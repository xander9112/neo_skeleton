dart pub global activate melos

melos bootstrap

Полный перезапуск

```bash
rm -r **/.dart_tool && rm -r **/pubspec.lock && rm -r **/*.g.dart && rm -r **/*.freezed.dart && rm -r **/*.gr.dart && melos bootstrap
```
