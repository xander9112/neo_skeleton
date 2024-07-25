import 'package:{{name.snakeCase()}}_core/src/user_agent_parser/browser.dart';
import 'package:{{name.snakeCase()}}_core/src/user_agent_parser/browser_parser.dart';
import 'package:{{name.snakeCase()}}_core/src/user_agent_parser/result.dart';

export 'browser.dart';
export 'result.dart';

class UserAgentParser {
  /// Parse a [Result] from the [userAgent] string.
  ///
  // TODO(username): Add other types (engine, os, device, cpu) into [Result]
  Result parseResult(String userAgent) {
    return Result(
      browser: parseBrowser(userAgent),
    );
  }

  /// Parse a [Browser] from the [userAgent] string.
  ///
  /// Returns `null` if no match.
  Browser? parseBrowser(String userAgent) {
    for (final BrowserParser browserParser in browserParsers) {
      for (final String regex in browserParser.regexes) {
        final RegExp regExp = RegExp(regex, caseSensitive: false);

        if (regExp.hasMatch(userAgent)) {
          final Iterable<RegExpMatch> matches = regExp.allMatches(userAgent);
          final String? unformattedName =
              matches.first.namedGroup('unformattedName');
          final String? version = matches.first.namedGroup('version');

          return Browser(
            name: browserParser.name,
            unformattedName: unformattedName,
            version: version,
            parsedWithRegex: regex,
          );
        }
      }
    }

    return null;
  }
}
