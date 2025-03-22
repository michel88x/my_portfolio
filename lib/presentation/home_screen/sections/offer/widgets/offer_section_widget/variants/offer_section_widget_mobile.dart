import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/dataset/offer_section_object.dart';

class OfferSectionWidgetMobile extends StatefulWidget {

  final OfferSectionObject data;
  final VoidCallback onPressed;

  const OfferSectionWidgetMobile({
    super.key,
    required this.data,
    required this.onPressed
  });

  @override
  State<OfferSectionWidgetMobile> createState() => _OfferSectionWidgetMobileState();
}

class _OfferSectionWidgetMobileState extends State<OfferSectionWidgetMobile> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Color?> _containerColorAnimation;
  late Animation<Color?> _circleBorderColorAnimation;
  late Animation<Color?> _textColorAnimation;
  late Animation<double> _circleRotationAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _containerColorAnimation = ColorTween(
      begin: AppColors.primaryBackgroundColor,
      end: AppColors.primaryColor,
    ).animate(_controller);
    _circleBorderColorAnimation = ColorTween(
      begin: AppColors.borderGreyColor,
      end: Colors.white,
    ).animate(_controller);
    _textColorAnimation = ColorTween(
      begin: AppColors.textGrey1,
      end: Colors.white,
    ).animate(_controller);
    _circleRotationAnimation = Tween<double>(
      begin: 0,
      end: - (pi / 4),
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //599
    double twenty = width * 0.01669449082; //10
    double fourteen = width * 0.02671118531; //16
    double twentyFive = width * 0.03338898164; //20
    double fourty = width * 0.05008347245; //30
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: AppColors.borderGreyColor,
        ),
        InkWell(
          onHover: (hover){
            if(hover){
              _controller.forward();
            }else{
              _controller.reverse();
            }
          },
          onTap: widget.onPressed,
          child: AnimatedBuilder(
              animation: _containerColorAnimation,
              builder: (containerContext, containerChild){
                return Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: twentyFive, horizontal: twenty),
                  color: _containerColorAnimation.value,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "${widget.data.number}.${widget.data.title}",
                        style: AppStyles.boldestWhite.copyWith(fontSize: twentyFive),
                      ),
                      SizedBox(height: twentyFive,),
                      AnimatedBuilder(
                          animation: _textColorAnimation,
                          builder: (textContext, textChild) {
                            return Text(
                              widget.data.text,
                              style: AppStyles.normalTextGrey1.copyWith(
                                  color: _textColorAnimation.value,
                                  fontSize: fourteen
                              ),
                            );
                          }
                      ),
                      SizedBox(height: twentyFive,),
                      AnimatedBuilder(
                          animation: _circleBorderColorAnimation,
                          builder: (circleBorderContext, circleBorderChild){
                            return Container(
                              width: fourty,
                              height: fourty,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: _circleBorderColorAnimation.value ?? AppColors.borderGreyColor,
                                      width: 1.0
                                  )
                              ),
                              child: Center(
                                child: AnimatedBuilder(
                                  animation: _circleRotationAnimation,
                                  builder: (circleRotationContext, circleRotationChild){
                                    return Transform.rotate(
                                      angle: _circleRotationAnimation.value,
                                      child: Image.asset(
                                        AppIcons.arrowRight,
                                        color: Colors.white,
                                        width: twentyFive,
                                        height: twentyFive,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            );
                          }
                      )
                    ],
                  ),
                );
              }),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
