import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';

class CustomTextField extends StatelessWidget {

  final double width;
  final double? height;
  final TextEditingController controller;
  final String hint;
  final double verticalPadding;
  final double horizontalPadding;
  final TextInputType keyboardType;
  final double textSize;
  final int? numRows;

  const CustomTextField({
    super.key,
    required this.width,
    this.height,
    required this.controller,
    required this.hint,
    required this.verticalPadding,
    required this.horizontalPadding,
    this.keyboardType = TextInputType.text,
    required this.textSize,
    this.numRows
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        keyboardType: keyboardType,
        maxLines: numRows,
        style: AppStyles.normalTextGrey2.copyWith(
          color: Colors.white,
          fontSize: textSize
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: AppStyles.normalTextGrey2.copyWith(
            fontSize: textSize
          ),
          filled: true,
          fillColor: AppColors.primaryBackgroundColor,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: AppColors.textGrey1, width: 1.0)
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: AppColors.textGrey1, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.0),
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: const BorderSide(color: AppColors.textGrey1, width: 1.0)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(6.0),
              borderSide: const BorderSide(color: AppColors.textGrey1, width: 1.0)
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: verticalPadding)
        ),
      ),
    );
  }
}
