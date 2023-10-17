import 'package:flutter/material.dart';
import 'package:mint_dentistry/config/color_constants.dart';

class TransparentButton extends StatelessWidget {
  final String title;
  final TextStyle? titleStyle;
  final bool? disabled;
  final Icon? iconName;
  final double? iconSize;
  final Color? iconColor;
  final VoidCallback onPressed;
  final ButtonStyle? style;
  final bool? isLoading;

  TransparentButton({
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
        style: ElevatedButton.styleFrom(
          backgroundColor: LightThemeColors.transparent,
          shadowColor: LightThemeColors.transparent,
          foregroundColor: LightThemeColors.primary,
          shape: StadiumBorder(),
        ),
        onPressed: disabled! ? null : onPressed,
        label: Text(
          title,
          style: titleStyle ??
              TextStyle(
                fontFamily: 'HelveticaNeue',
                fontSize: 16,
                color: LightThemeColors.primary,
                fontWeight: FontWeight.w500,
              ),
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
