import 'package:{{name.snakeCase()}}/src/app.dart';
import 'package:{{name.snakeCase()}}_core/{{name.snakeCase()}}_core.dart';

void main() async {
  await App.init({{#useFlavor}}await Env.getCurrentEnv(){{/useFlavor}});
}
