import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';

class AppStyles {
  static TextStyle normalTextGrey1 = const TextStyle(
    color: AppColors.textGrey1,
    fontWeight: FontWeight.normal
  );
  static TextStyle normalTextGrey2 = const TextStyle(
      color: AppColors.textGrey2,
      fontWeight: FontWeight.normal
  );
  static TextStyle normalWhite = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.normal
  );
  static TextStyle boldWhite = const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold
  );
  static TextStyle boldestWhite = const TextStyle(
      fontWeight: FontWeight.w900,
      color: Colors.white,
      height: 0.8
  );
  static TextStyle boldPrimaryColor = const TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold
  );
  static TextStyle boldestPrimaryColor = const TextStyle(
      fontWeight: FontWeight.w900,
      color: AppColors.primaryColor,
      height: 0.8
  );
}