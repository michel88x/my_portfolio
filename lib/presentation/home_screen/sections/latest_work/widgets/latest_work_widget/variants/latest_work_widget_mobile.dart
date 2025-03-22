import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';

class LatestWorkWidgetMobile extends StatefulWidget {
  final LatestWorkObject data;
  final Function(String) onPressed;

  const LatestWorkWidgetMobile({
    super.key,
    required this.data,
    required this.onPressed
  });

  @override
  State<LatestWorkWidgetMobile> createState() => _LatestWorkWidgetMobileState();
}

class _LatestWorkWidgetMobileState extends State<LatestWorkWidgetMobile> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<Color?> _arrowColorAnimation;
  late Animation<double> _rotateAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _colorAnimation = ColorTween(
      begin: Colors.white,
      end: AppColors.primaryColor,
    ).animate(_controller);
    _arrowColorAnimation = ColorTween(
      begin: AppColors.primaryBackgroundColor,
      end: Colors.white,
    ).animate(_controller);
    _rotateAnimation = Tween<double>(
      begin: -(pi / 4),
      end: 0,
    ).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double fifteen = width * 0.02504173623; //15
    double twenty = width * 0.02838063439; //17
    double twentyFive = width * 0.03338898164; //20
    double thirty = width * 0.05008347245; //30
    double fourty = width * 0.06677796327; //40
    double fourHunderdFifty = width * 0.6510851419; //390
    return InkWell(
      onHover: (hovered) {
        if (hovered) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      onTap: () {
        widget.onPressed(widget.data.url);
      },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
            horizontal: twenty, vertical: twenty),
        decoration: BoxDecoration(
          color: AppColors.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(fifteen),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(fifteen),
              child: CachedNetworkImage(
                imageUrl: widget.data.image,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, s){
                  return SizedBox(
                    width: double.infinity,
                    height: fourHunderdFifty,
                    child: const Center(
                      child: CupertinoActivityIndicator(color: AppColors.primaryColor,),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: thirty,
            ),
            Text(
              widget.data.title,
              style: AppStyles.boldestWhite.copyWith(fontSize: thirty),
            ),
            SizedBox(
              height: twentyFive,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.data.subtitle,
                    style: AppStyles.normalTextGrey1
                        .copyWith(fontSize: twenty),
                  ),
                ),
                AnimatedBuilder(
                    animation: _colorAnimation,
                    builder: (colorContext, colorChild) {
                      return Container(
                        width: fourty,
                        height: fourty,
                        decoration: BoxDecoration(
                            color: _colorAnimation.value,
                            shape: BoxShape.circle),
                        child: Center(
                          child: AnimatedBuilder(
                              animation: _rotateAnimation,
                              builder: (rotateContext, rotateChild) {
                                return Transform.rotate(
                                  angle: _rotateAnimation.value,
                                  child: AnimatedBuilder(
                                      animation: _arrowColorAnimation,
                                      builder:
                                          (arrowColorContext, arrowColorChild) {
                                        return Image.asset(
                                          AppIcons.arrowRight,
                                          color: _arrowColorAnimation.value,
                                          width: thirty,
                                          height: thirty,
                                        );
                                      }),
                                );
                              }),
                        ),
                      );
                    })
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
