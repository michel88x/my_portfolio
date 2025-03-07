import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';

class LatestWorkWidgetDesktop extends StatefulWidget {
  final LatestWorkObject data;
  final AppStyles appStyles;
  final Function(String) onPressed;

  const LatestWorkWidgetDesktop(
      {super.key,
      required this.data,
      required this.appStyles,
      required this.onPressed});

  @override
  State<LatestWorkWidgetDesktop> createState() =>
      _LatestWorkWidgetDesktopState();
}

class _LatestWorkWidgetDesktopState extends State<LatestWorkWidgetDesktop>
    with SingleTickerProviderStateMixin {
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
    double fifteen = width * 0.01; //15
    double twenty = width * 0.0132275132275; //20
    double twentyFive = width * 0.01653439; //25
    double thirty = width * 0.02; //30
    double fourty = width * 0.02645503; //40
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
              child: Image.asset(
                widget.data.image,
                width: double.infinity,
                //height: 500.0,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: thirty,
            ),
            Text(
              widget.data.title,
              style:
                  widget.appStyles.fourtyWhiteBold.copyWith(fontSize: thirty),
            ),
            SizedBox(
              height: thirty,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.data.subtitle,
                    style: widget.appStyles.fourteenTextGrey1
                        .copyWith(fontSize: fifteen),
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
                                          width: twentyFive,
                                          height: twentyFive,
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
