import 'package:config/config.dart';
import 'package:{{appName.snakeCase()}}/main.dart' as runner;

Future<void> main() async {
  Flavor.status = FlavorStatus.development;

  await runner.main();
}
