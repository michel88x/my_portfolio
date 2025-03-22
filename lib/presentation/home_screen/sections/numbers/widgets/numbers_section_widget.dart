import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_object.dart';
import 'package:visibility_detector/visibility_detector.dart';

class NumbersSectionWidget extends StatefulWidget {

  final NumbersSectionObject data;
  final double plusFontSize;
  final double numberFontSize;
  final double titlesFontSize;
  final double plusPadding;
  final double numberPadding;

  const NumbersSectionWidget({
    super.key,
    required this.data,
    required this.plusFontSize,
    required this.numberFontSize,
    required this.titlesFontSize,
    required this.plusPadding,
    required this.numberPadding
  });

  @override
  State<NumbersSectionWidget> createState() => _NumbersSectionWidgetState();
}

class _NumbersSectionWidgetState extends State<NumbersSectionWidget> {

  double width = 0;
  int value = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    return VisibilityDetector(
      key: Key("NumbersSectionWidget_${widget.data.firstTitle}"),
      onVisibilityChanged: (v){
        if(v.visibleFraction == 1.0){
          setState(() {
            value = widget.data.number;
          });
        }
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "+",
            style: TextStyle(
              fontSize: widget.plusFontSize,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(width: widget.plusPadding,),
          AnimatedFlipCounter(
            duration: const Duration(milliseconds: 1500),
            value: value,
            textStyle: TextStyle(
                fontSize: widget.numberFontSize,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                height: 0.9
            ),
          ),
          SizedBox(width: widget.numberPadding,),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.firstTitle,
                style: TextStyle(
                  fontSize: widget.titlesFontSize,
                  fontWeight: FontWeight.normal,
                  color: AppColors.textGrey2
                ),
              ),
              Text(
                widget.data.secondTitle,
                style: TextStyle(
                    fontSize: widget.titlesFontSize,
                    fontWeight: FontWeight.normal,
                    color: AppColors.textGrey1
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
