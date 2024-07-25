import 'package:flutter/widgets.dart';

@immutable
class Browser {
  const Browser({
    required this.name,
    required this.parsedWithRegex,
    this.unformattedName,
    this.version,
  });

  /// The browser name, set manually for a browser
  final String name;

  /// The browser name, parsed directly from the user agent string
  /// without modification
  final String? unformattedName;

  /// The browser version
  final String? version;

  /// The regex that was used to parse this browser
  final String parsedWithRegex;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Browser &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          unformattedName == other.unformattedName &&
          version == other.version &&
          parsedWithRegex == other.parsedWithRegex;

  @override
  int get hashCode => name.hashCode ^ version.hashCode;
}
