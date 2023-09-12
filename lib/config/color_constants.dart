import 'package:flutter/material.dart';

Color hexToColor(String hex) {
  assert(RegExp(r'^#([0-9a-fA-F]{6})|([0-9a-fA-F]{8})$').hasMatch(hex),
      'hex color must be #rrggbb or #rrggbbaa');

  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}

class ColorConstants {
  static Color backgroundColor = hexToColor('#f9f9f9');
  static Color onBackgroundColor = Colors.black;
  static Color primaryColor = hexToColor('#26a626');
  static Color onPrimaryColor = Colors.white;
  static Color errorColor = hexToColor('#CC0d00');
  static Color onErrorColor = Colors.white;
}

class LightThemeColors {
  static Color background = ColorConstants.backgroundColor;
  static Color onBackground = ColorConstants.onBackgroundColor;
  static Color primary = ColorConstants.primaryColor;
  static Color onPrimary = ColorConstants.onPrimaryColor;
  static Color error = ColorConstants.errorColor;
  static Color onError = ColorConstants.onErrorColor;
}

class DarkThemeColors {
  static Color background = ColorConstants.onBackgroundColor;
  static Color onBackground = ColorConstants.backgroundColor;
  static Color primary = ColorConstants.primaryColor;
  static Color onPrimary = ColorConstants.onPrimaryColor;
  static Color error = ColorConstants.errorColor;
  static Color onError = ColorConstants.onErrorColor;
}
