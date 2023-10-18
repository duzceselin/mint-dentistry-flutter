import 'package:flutter/material.dart';

import 'package:mint_dentistry/config/color_constants.dart';
import 'package:mint_dentistry/config/custom_style.dart';

class AvtarLabelView extends StatelessWidget {
  final ImageProvider<Object>? leftImageSource;
  final String? leftIconName;

  final Decoration? iconContainerDecoration;
  final bool iconOpacity = true;
  final double? iconSize = 24;
  final Decoration? imageContainerDecoration;
  final Color? iconColor;
  final String title;
  final String? description;
  final TextStyle? titleStyle;
  final TextStyle? descriptionStyle;

  final IconData? rightIconName;
  final double? rightIconSize = 24;
  final Decoration? rightIconStyle;
  final Color? rightIconColor;
  final VoidCallback? onPressed;

  const AvtarLabelView({
    super.key,
    this.leftImageSource,
    this.leftIconName,
    this.iconContainerDecoration,
    this.imageContainerDecoration,
    this.iconColor,
    required this.title,
    this.description,
    this.titleStyle,
    this.descriptionStyle,
    this.rightIconName,
    this.rightIconStyle,
    this.rightIconColor,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Card(
        margin: EdgeInsets.all(
          0,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(
            16.0,
          ),
          child: Row(
            children: <Widget>[
              loadLeftView(
                imageSource: leftImageSource,
                iconName: leftIconName,
                iconContainerDecoration: iconContainerDecoration,
                iconOpacity: iconOpacity,
                iconSize: iconSize,
                iconColor: iconColor,
                imageContainerDecoration: imageContainerDecoration,
              ),
              loadTextView(
                title,
                description: description,
                titleStyle: titleStyle,
                descriptionStyle: descriptionStyle,
              ),
              loadRightIcon(
                rightIconName: rightIconName,
                iconSize: rightIconSize,
                rightIconStyle: rightIconStyle,
                rightIconColor: rightIconColor,
              )
            ],
          ),
        ),
      ),
    );
  }
}

loadTextView(
  String title, {
  String? description,
  TextStyle? titleStyle,
  TextStyle? descriptionStyle,
}) {
  return Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleStyle ?? CustomStyle.h6Medium20,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (description != null)
          Text(
            description,
            style: descriptionStyle ?? CustomStyle.subTitle2Medium14,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
      ],
    ),
  );
}

loadLeftView({
  imageSource,
  iconName,
  Decoration? iconContainerDecoration,
  bool? iconOpacity,
  double? iconSize,
  Decoration? imageContainerDecoration,
  Color? iconColor,
}) {
  if (imageSource != null) {
    return loadLeftImage(
      imageSource!,
    );
  }
  if (iconName != null) {
    return loadLeftIcon(
      iconName!,
      iconContainerDecoration: iconContainerDecoration,
      iconOpacity: iconOpacity ?? false,
      iconSize: iconSize,
      iconColor: iconColor,
    );
  }
  return Container();
}

loadLeftImage(
  ImageProvider<Object> imageSource, {
  Decoration? imageContainerDecoration,
}) {
  return Container(
    height: 30,
    width: 30,
    decoration: imageContainerDecoration,
    margin: EdgeInsets.only(
      right: 12,
    ),
    child: Ink.image(
      image: imageSource,
      height: 30,
      width: 30,
      fit: BoxFit.cover,
    ),
  );
}

loadLeftIcon(
  String iconName, {
  Decoration? iconContainerDecoration,
  bool iconOpacity = true,
  double? iconSize = 24,
  Color? iconColor,
}) {
  return Container(
    padding: EdgeInsets.all(
      8,
    ),
    margin: EdgeInsets.only(
      right: 12,
    ),
    decoration: iconContainerDecoration ??
        BoxDecoration(
          shape: BoxShape.rectangle,
          color: iconOpacity ? Color(0x2426A626) : Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(
              8,
            ),
          ),
        ),
    child: Image.asset(
      iconName,
      height: iconSize ?? 20,
      width: iconSize ?? 20,
      fit: BoxFit.cover,
      color: iconColor ?? LightThemeColors.primary,
    ),
  );
}

loadRightIcon({
  IconData? rightIconName,
  iconSize,
  Decoration? rightIconStyle,
  rightIconColor,
}) {
  if (rightIconName != null) {
    return Container(
      margin: EdgeInsets.only(
        left: rightIconStyle != null ? 0 : 12,
      ),
      decoration: rightIconStyle,
      child: Icon(
        rightIconName,
        color: rightIconColor ?? LightThemeColors.primary,
        size: iconSize ?? 24,
      ),
    );
  }
  return Container();
}
