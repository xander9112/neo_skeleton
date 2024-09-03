import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.info(context.vars.toString());

  context.vars = {
    ...context.vars,
    'androidBundleId':
        '${context.vars['org']}.${_convertToCamelCase(context.vars['name'])}',
    'iosBundleId':
        '${context.vars['org']}.${_convertToCamelCase(context.vars['name'])}',
  };
}

String _convertToCamelCase(String input) {
  final List<String> words = input.split(RegExp(r'[\s_]+'));
  String result = '';
  for (int i = 0; i < words.length; i++) {
    if (i == 0) {
      result += words[i].substring(0, 1).toLowerCase() + words[i].substring(1);
    } else {
      result += words[i][0].toUpperCase() + words[i].substring(1);
    }
  }
  return result;
}
