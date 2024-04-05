import 'package:mason/mason.dart';

void run(HookContext context) {
  context.logger.info(context.vars.toString());

  context.vars = {
    ...context.vars,
    'androidBundleId':
        '${context.vars['org']}.${_toCamelCase(context.vars['name'])}',
    'iosBundleId':
        '${context.vars['org']}.${_toCamelCase(context.vars['name'])}',
  };
}

String _toCamelCase(String text) {
  if (text.isEmpty) {
    return '';
  }

  final words = text.split(' ');
  final firstWord = words.first.toLowerCase();
  final otherWords =
      words.skip(1).map((word) => word[0].toUpperCase() + word.substring(1));
  return firstWord + otherWords.join('');
}
