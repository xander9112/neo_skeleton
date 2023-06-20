import 'package:{{name.snakeCase()}}/src/app.dart';
{{#useFlavor}}import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';{{/useFlavor}}

void main() async {
  await App.init({{#useFlavor}}await Env.getCurrentEnv(){{/useFlavor}});
}
