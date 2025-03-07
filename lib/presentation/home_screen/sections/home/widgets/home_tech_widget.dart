import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';

class HomeTechWidget extends StatelessWidget {

  final double size;
  final double borderRadius;
  final String icon;
  final double iconSize;
  final Color? color;

  const HomeTechWidget({
    super.key,
    required this.size,
    required this.borderRadius,
    required this.icon,
    required this.iconSize,
    this.color
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: AppColors.secondaryColorLight,
        borderRadius: BorderRadius.circular(borderRadius)
      ),
      child: Center(
        child: Image.asset(
          icon,
          width: iconSize,
          height: iconSize,
          color: color,
        ),
      ),
    );
  }
}
