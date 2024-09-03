import 'package:jwt_decoder/jwt_decoder.dart';

class AppJwtDecoder {
  /// Decode a string JWT token into a `Map<String, dynamic>`
  /// containing the decoded JSON payload.
  ///
  /// Note: header and signature are not returned by this method.
  ///
  /// Throws [FormatException] if parameter is not a valid JWT token.
  static Map<String, dynamic> decode(String token) {
    return JwtDecoder.decode(token);
  }

  /// Decode a string JWT token into a `Map<String, dynamic>`
  /// containing the decoded JSON payload.
  ///
  /// Note: header and signature are not returned by this method.
  ///
  /// Returns null if the token is not valid
  static Map<String, dynamic>? tryDecode(String token) {
    return JwtDecoder.tryDecode(token);
  }

  /// Tells whether a token is expired.
  ///
  /// Returns true if the token is valid, false if it is expired.
  ///
  /// Throws [FormatException] if parameter is not a valid JWT token.
  static bool isExpired(String token) {
    return JwtDecoder.isExpired(token);
  }

  /// Returns token expiration date
  ///
  /// Throws [FormatException] if parameter is not a valid JWT token.
  static DateTime getExpirationDate(String token) {
    return JwtDecoder.getExpirationDate(token);
  }

  /// Returns token issuing date (iat)
  ///
  /// Throws [FormatException] if parameter is not a valid JWT token.
  static Duration getTokenTime(String token) {
    return JwtDecoder.getTokenTime(token);
  }

  /// Returns remaining time until expiry date.
  ///
  /// Throws [FormatException] if parameter is not a valid JWT token.
  static Duration getRemainingTime(String token) {
    return JwtDecoder.getRemainingTime(token);
  }

  static bool isFake(String token) {
    if (token.isEmpty) {
      return false;
    }

    final _decodedToken = decode(token);

    try {
      // ignore: avoid_dynamic_calls
      return _decodedToken['preferred_username'] == 'fakeuser';
    } catch (_) {
      return false;
    }
  }

  static bool isAdmin(String token) {
    if (token.isEmpty) {
      return false;
    }

    final _decodedToken = decode(token);

    try {
      // ignore: avoid_dynamic_calls
      return _decodedToken['resource_access']['mobile-app']['roles']
          .contains('jnp-admin') as bool;
    } catch (_) {
      return false;
    }
  }
}
