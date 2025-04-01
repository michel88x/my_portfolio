import 'dart:math';

import 'package:animated_switcher_plus/animated_switcher_plus.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';
import 'package:url_launcher/url_launcher.dart';

class LatestWorkWidgetDesktop extends StatefulWidget {
  final LatestWorkObject data;

  const LatestWorkWidgetDesktop(
      {super.key,
      required this.data});

  @override
  State<LatestWorkWidgetDesktop> createState() =>
      _LatestWorkWidgetDesktopState();
}

class _LatestWorkWidgetDesktopState extends State<LatestWorkWidgetDesktop>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<Color?> _arrowColorAnimation;
  late Animation<double> _rotateAnimation;
  bool showArrow = true;

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
    double fourHunderdFifty = width * 0.2976190476; //450
    return InkWell(
      onHover: (hovered) {
        if (hovered) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
      onTap: () {
        setState(() {
          showArrow = !showArrow;
        });
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
              height: thirty,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    widget.data.subtitle,
                    style: AppStyles.normalTextGrey1
                        .copyWith(fontSize: fifteen),
                  ),
                ),
                AnimatedSwitcherPlus.flipY(
                  duration: const Duration(milliseconds: 500),
                  child: showArrow ?
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
                      }) :
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if(widget.data.googlePlayUrl != null && widget.data.googlePlayUrl!.isNotEmpty)
                        InkWell(
                          onTap: (){
                            launchUrl(Uri.parse(widget.data.googlePlayUrl!));
                          },
                          child: Container(
                            width: fourty,
                            height: fourty,
                            margin: EdgeInsets.symmetric(horizontal: fifteen /2),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                            ),
                            child: Center(
                              child: Image.asset(
                                AppIcons.googlePlay,
                                width: twentyFive,
                                height: twentyFive,
                              ),
                            ),
                          ),
                        ),
                      if(widget.data.appStoreUrl != null && widget.data.appStoreUrl!.isNotEmpty)
                        InkWell(
                          onTap: (){
                            launchUrl(Uri.parse(widget.data.appStoreUrl!));
                          },
                          child: Container(
                            width: fourty,
                            height: fourty,
                            margin: EdgeInsets.symmetric(horizontal: fifteen /2),
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white
                            ),
                            child: Center(
                              child: Image.asset(
                                AppIcons.appStore,
                                width: twentyFive,
                                height: twentyFive,
                              ),
                            ),
                          ),
                        )
                    ],
                  )
                ),

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
