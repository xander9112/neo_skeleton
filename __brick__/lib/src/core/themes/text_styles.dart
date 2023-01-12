import 'package:flutter/widgets.dart';
import 'package:google_language_fonts/google_language_fonts.dart' as basic;

abstract class TextStyles {
  static TextStyle headline1 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w300,
    height: 106 / 96,
    fontSize: 96,
  );

  static TextStyle headline2 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w300,
    height: 64 / 60,
    fontSize: 60,
  );

  static TextStyle headline3 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 54 / 48,
    fontSize: 48,
  );

  static TextStyle headline4 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 38 / 34,
    fontSize: 34,
  );

  static TextStyle headline5 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 28 / 24,
    fontSize: 24,
  );

  static TextStyle headline6 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w500,
    height: 24 / 20,
    fontSize: 20,
  );

  static TextStyle subtitle1 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 20 / 16,
    fontSize: 16,
  );

  static TextStyle subtitle2 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w600,
    height: 20 / 14,
    fontSize: 14,
  );

  static TextStyle bodyText1 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 20 / 16,
    fontSize: 16,
  );

  static TextStyle bodyText2 = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 18 / 14,
    fontSize: 14,
  );

  static TextStyle button = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w500,
    height: 20 / 16,
    fontSize: 16,
  );

  static TextStyle caption = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 16 / 12,
    fontSize: 12,
  );

  static TextStyle overline = basic.CyrillicFonts.roboto(
    fontWeight: FontWeight.w400,
    height: 16 / 10,
    fontSize: 10,
  );
}
