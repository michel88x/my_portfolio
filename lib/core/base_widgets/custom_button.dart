import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/base_widgets/JDirectionality.dart';

class CustomButton extends StatelessWidget {

  final String title;
  final String icon;
  final Color? backColor;
  List<Color>? gradientColors = <Color>[AppColors.primaryColorLight, AppColors.primaryColorLighter];
  final Color? borderColor;
  final double verticalPadding;
  final double horizontalPadding;
  final Color textColor;
  final double fontSize;
  final double iconSize;
  final double borderRadius;
  final double innerPadding;
  final bool rotatedIcon;
  final VoidCallback onPressed;

  CustomButton({
    super.key,
    required this.title,
    required this.icon,
    this.backColor,
    this.gradientColors,
    this.borderColor,
    required this.verticalPadding,
    required this.horizontalPadding,
    this.textColor = Colors.white,
    required this.fontSize,
    required this.iconSize,
    required this.borderRadius,
    required this.innerPadding,
    required this.onPressed,
    this.rotatedIcon = false
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding),
        decoration: BoxDecoration(
          color: backColor,
          gradient: backColor == null? LinearGradient(
            colors: gradientColors ?? <Color>[AppColors.primaryColorLight, AppColors.primaryColorLighter],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight
          ) : null,
          border: borderColor != null? Border.all(
            color: borderColor!,
            width: 1.0
          ) : null,
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: JDirectionality(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSize,
                  color: textColor,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(width: innerPadding,),
              Transform.rotate(
                angle: rotatedIcon? -(pi / 4) : 0,
                child: Image.asset(
                  icon,
                  color: textColor,
                  width: iconSize,
                  height: iconSize,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
