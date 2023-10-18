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
  static Color background = hexToColor('#f9f9f9');
  static Color onBackground = Colors.black;
  static Color primary = hexToColor('#26a626');
  static Color onPrimary = Colors.white;
  static Color error = hexToColor('#CC0d00');
  static Color onError = Colors.white;
  static Color surface = hexToColor('#FFFFFF');
  static Color onSurface = hexToColor('#181B18');
  static Color miscellaneous = hexToColor('#359DD9');
  static Color miscellaneousSecondary = hexToColor('#FFEBA5');
  static Color miscellaneousTertiary = hexToColor('#F2A93C');
  static Color primary50 = Color.fromRGBO(38, 166, 38, 0.5);
  static Color primary10 = Color.fromRGBO(38, 166, 38, 0.1);
  static Color error50 = Color.fromRGBO(204, 13, 0, 0.5);
  static Color error10 = Color.fromRGBO(204, 13, 0, 0.1);
  static Color neutral0 = hexToColor('#000000');
  static Color neutral10 = hexToColor('#181B18');
  static Color neutral20 = hexToColor('#303630');
  static Color neutral30 = hexToColor('#495049');
  static Color neutral40 = hexToColor('#616B61');
  static Color neutral50 = hexToColor('#798679');
  static Color neutral60 = hexToColor('#949E94');
  static Color neutral70 = hexToColor('#AFB7AF');
  static Color neutral80 = hexToColor('#C9CFC9');
  static Color neutral90 = hexToColor('#E5E7E5');
  static Color neutral95 = hexToColor('#F2F3F2');
  static Color neutral97 = hexToColor('#F9F9F9');
  static Color neutral99 = hexToColor('#FCFDFC');
  static Color neutral100 = hexToColor('#FFFFFF');
  static Color warning = hexToColor('#ef9952');
}

class LightThemeColors {
  static Color background = ColorConstants.background;
  static Color onBackground = ColorConstants.onBackground;
  static Color primary = ColorConstants.primary;
  static Color onPrimary = ColorConstants.onPrimary;
  static Color error = ColorConstants.error;
  static Color onError = ColorConstants.onError;
  static Color dot = ColorConstants.neutral90;
  static Color bodyLight = ColorConstants.neutral70;
  static Color bodySecondaryLight = ColorConstants.neutral60;
  static Color bodyMedium = ColorConstants.neutral50;
  static Color bodySecondaryMedium = ColorConstants.neutral20;
  static Color bodyDark = ColorConstants.neutral0;
  static Color bodyAltDark = ColorConstants.neutral100;
  static Color bodyAltMedium = ColorConstants.neutral99;
  static Color bodyAltLight = ColorConstants.neutral95;
  static Color input = ColorConstants.neutral0;
  static Color inputBorder = ColorConstants.neutral50;
  static Color inputLabel = ColorConstants.primary;
  static Color placeholder = ColorConstants.neutral50;
  static Color border = ColorConstants.neutral80;
  static Color borderAlt = ColorConstants.neutral100;
  static Color btnTextDisabled = ColorConstants.neutral40;
  static Color btnBgDisabled = ColorConstants.neutral80;
  static Color transparent = Colors.transparent;
  static Color shadow = ColorConstants.onBackground;
  static Color shimmerDark = ColorConstants.neutral60;
  static Color shimmerLight = ColorConstants.neutral80;
  static Color success = ColorConstants.primary;
  static Color warning = ColorConstants.warning;
  static Color pagination = ColorConstants.neutral90;
  static Color miscellaneous = ColorConstants.miscellaneous;
  static Color miscellaneousSecondary = ColorConstants.miscellaneousSecondary;
  static Color miscellaneousTertiary = ColorConstants.miscellaneousTertiary;
  static Color statusBar = ColorConstants.onPrimary;
}

class DarkThemeColors {
  static Color background = ColorConstants.onBackground;
  static Color onBackground = ColorConstants.background;
  static Color primary = ColorConstants.primary;
  static Color onPrimary = ColorConstants.onPrimary;
  static Color error = ColorConstants.error;
  static Color onError = ColorConstants.onError;
  static Color dot = ColorConstants.neutral90;
  static Color textColor = ColorConstants.onPrimary;
  static Color bodyLight = ColorConstants.neutral30;
  static Color bodySecondaryLight = ColorConstants.neutral40;
  static Color bodyMedium = ColorConstants.neutral50;
  static Color bodySecondaryMedium = ColorConstants.neutral20;
  static Color bodyDark = ColorConstants.neutral100;
  static Color bodyAltDark = ColorConstants.neutral0;
  static Color bodyAltMedium = ColorConstants.neutral10;
  static Color bodyAltLight = ColorConstants.neutral20;
  static Color input = ColorConstants.neutral100;
  static Color inputBorder = ColorConstants.neutral50;
  static Color inputLabel = ColorConstants.primary;
  static Color placeholder = ColorConstants.neutral50;
  static Color border = ColorConstants.neutral80;
  static Color borderAlt = ColorConstants.neutral0;
  static Color btnTextDisabled = ColorConstants.neutral40;
  static Color btnBgDisabled = ColorConstants.neutral80;
  static Color transparent = Colors.transparent;
  static Color shadow = ColorConstants.onBackground;
  static Color shimmerDark = ColorConstants.neutral60;
  static Color shimmerLight = ColorConstants.neutral80;
  static Color success = ColorConstants.primary;
  static Color warning = ColorConstants.warning;
  static Color pagination = ColorConstants.neutral60;
  static Color miscellaneous = ColorConstants.miscellaneous;
  static Color miscellaneousSecondary = ColorConstants.miscellaneousSecondary;
  static Color miscellaneousTertiary = ColorConstants.miscellaneousTertiary;
  static Color statusBar = ColorConstants.onPrimary;
}
