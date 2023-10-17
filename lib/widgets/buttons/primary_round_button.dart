import 'package:flutter/material.dart';
import 'package:mint_dentistry/config/color_constants.dart';
import 'package:mint_dentistry/config/custom_style.dart';

class PrimaryRoundButton extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final bool? disabled;
  final Icon? iconName;
  final double? iconSize;
  final Color? iconColor;
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final bool? isLoading;

  PrimaryRoundButton({
    super.key,
    required this.title,
    this.titleStyle,
    this.iconName,
    this.iconSize,
    this.iconColor,
    required this.onPressed,
    this.style,
    this.disabled = false,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width, // NE
      height: 52,
      child: ElevatedButton.icon(
        icon: isLoading!
            ? loadingIndicator(
                Colors.white,
              )
            : iconName ?? Container(),
        style: style ??
            ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (disabled!) {
                    return LightThemeColors.btnBgDisabled;
                  } else {
                    return LightThemeColors.primary;
                  }
                },
              ),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                (Set<MaterialState> states) {
                  if (disabled!) {
                    return LightThemeColors.btnTextDisabled;
                  }
                  return LightThemeColors.onPrimary;
                },
              ),
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    25,
                  ),
                ),
              ),
            ),
        onPressed: disabled! ? null : onPressed,
        label: Text(
          title,
          style: titleStyle ?? CustomStyle.btnMedium16,
        ),
      ),
    );
  }
}

loadingIndicator(Color color) {
  return Container(
    width: 24,
    height: 24,
    padding: const EdgeInsets.all(2.0),
    child: CircularProgressIndicator(
      color: color,
      strokeWidth: 3,
    ),
  );
}
