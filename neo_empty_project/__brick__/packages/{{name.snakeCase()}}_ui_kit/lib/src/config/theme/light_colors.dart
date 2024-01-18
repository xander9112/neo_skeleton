import 'package:flutter/widgets.dart';

class LightThemeColors {
  static const Color primary = Color(0xffFA6521);
  static const Color inputActive = Color(0xffFF7E45);

  static const Color headlineColor = Color(0xff4A3455);
  static const Color violetAccent2 = Color(0xff5F238E);

  static const LinearGradient checkboxGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: <double>[0.6, 1],
    colors: <Color>[
      Color(0xff7818C4),
      Color(0xff2C0A46),
    ],
  );

  static const LinearGradient cardBorder = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: <double>[0.6, 1],
    colors: <Color>[
      Color(0xffF0EBF8),
      Color(0x0ff6f4fa),
    ],
  );

  static const LinearGradient headerGradient = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    stops: <double>[0.6, 1],
    colors: <Color>[Color(0xff3C1D77), Color(0xff6642A1)],
  );

  static const Color violetLight = Color(0xff866EB0);
  static const Color cardSelected = Color(0xffFBF5FF);

  static const Color black_1 = Color(0xff14142A);
  static const Color black_2 = Color(0xff333333);

  static const Color darkGray = Color(0xff595C7E);
  static const Color grey = Color(0xff9098B1);

  static const Color blueGray_1 = Color(0xff6E7191);
  static const Color blueGray_2 = Color(0xff9098B1);
  static const Color blueGray_3 = Color(0xffA0A3BD);
  static const Color blueGray_4 = Color(0xffF7F7FA);

  static const Color tegBorder = Color(0xffD0D1DE);

  static const Color background = Color(0xffF2F4F6);

  static const Color light_2 = Color(0xffFCFCFC);
  static const Color light_1 = Color(0xffFFFFFF);

  static const Color error_1 = Color(0xffF5323E);
  static const Color error_2 = Color(0xffFCF0F1);

  static const Color success_1 = Color(0xff23A90D);
  static const Color success_3 = Color(0xffF7FFFA);

  static const Color unSelected = Color(0xFFE0E0E0);

  static const Color atWork = Color(0xffF2F4F6);
  static const Color maternityLeave = Color(0xffB4D1E0);
  static const Color onSickLeave = Color(0xffF9D2C4);
  static const Color onSickLeaveWithoutProof = Color(0xffF9EFDC);
  static const Color onPaidVacation = Color(0xffCDE8CB);
  static const Color onVacationWithoutPay = Color(0xffA2D89B);
  static const Color onDonorDays = Color(0xffFF5A0F);
  static const Color timeOff = Color(0xff9098B1);

  static const Color outlook = Color(0xff0072C6);
  static const Color teams = Color(0xff5059C9);
  static const Color phone = Color(0xffFA6521);
  static const Color tg = Color(0xff1E96C8);
  static const Color whatsapp = Color(0xff25D366);
  static const Color skype = Color(0xff00aff0);
  static const Color trueConf = Color(0xFF00AABC);

  static Color getContactColor(String type) {
    switch (type) {
      case 'email':
        return outlook;
      case 'teams':
        return teams;
      case 'selfPhone':
      case 'workPhone':
        return phone;
      case 'telegram':
        return tg;
      case 'whatsapp':
        return whatsapp;
      case 'skype':
        return skype;
      case 'trueConf':
        return trueConf;
      default:
        return darkGray;
    }
  }
}
