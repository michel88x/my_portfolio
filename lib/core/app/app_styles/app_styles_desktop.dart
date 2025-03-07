import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';

class AppStylesDesktop extends AppStyles{
  AppStylesDesktop(){
    //14
    super.fourteenTextGrey1 = const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: AppColors.textGrey1
    );
    super.fourteenTextGrey2 = const TextStyle(
        fontSize: 14.0,
        fontWeight: FontWeight.normal,
        color: AppColors.textGrey2
    );
    //16
    super.sixteenTextGrey2 = const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: AppColors.textGrey2
    );
    super.sixteenWhite = const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.normal,
        color: Colors.white
    );
    //18
    super.eighteenTextGrey2 = const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.normal,
        color: AppColors.textGrey2
    );
    super.eighteenPrimaryBold = const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor
    );
    super.eighteenWhiteBold = const TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
    );
    //20
    super.twentyWhite = const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.normal,
      color: Colors.white
    );
    //22
    super.twentyTwoWhiteBold = const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.white
    );
    super.twentyTwoPrimaryBold = const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor
    );
    //40
    super.fourtyWhiteBold = TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w900,
        color: Colors.white,
        height: 0.8
    );
    //60
    super.sixtyWhiteBold = const TextStyle(
        fontSize: 60.0,
        fontWeight: FontWeight.w900,
        color: Colors.white,
        height: 0.8
    );
    //70
    super.seventyWhiteBold = const TextStyle(
        fontSize: 70.0,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      height: 0.8
    );
    super.seventyPrimaryBold = const TextStyle(
        fontSize: 70.0,
        fontWeight: FontWeight.w900,
        color: AppColors.primaryColor,
        height: 0.8
    );
  }
}