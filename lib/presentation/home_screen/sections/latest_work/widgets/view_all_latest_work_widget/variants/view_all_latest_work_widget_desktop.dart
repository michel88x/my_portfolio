import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_section_dataset.dart';

class ViewAllLatestWorkWidgetDesktop extends StatefulWidget {
  final VoidCallback onPressed;

  const ViewAllLatestWorkWidgetDesktop({
    super.key,
    required this.onPressed
  });

  @override
  State<ViewAllLatestWorkWidgetDesktop> createState() => _ViewAllLatestWorkWidgetDesktopState();
}

class _ViewAllLatestWorkWidgetDesktopState extends State<ViewAllLatestWorkWidgetDesktop> {
  bool expanded = false;
  late AppStyles appStyles;

  @override
  void initState() {
    super.initState();
    appStyles = AppStylesDesktop();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double sixteen = width * 0.0105820105820; //16
    double fifty = width * 0.0330687830687; //50
    double hundredFourtyNine = width * 0.0985449735449; //149
    double hundredFifty = width * 0.0992063492063; //150

    return Container(
      width: hundredFifty,
      height: hundredFifty,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
            colors: [
              AppColors.primaryColor,
              AppColors.secondaryColor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
        ),
      ),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        margin: const EdgeInsets.all(1.0),
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.secondaryColor
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: expanded? hundredFourtyNine : fifty,
              height: expanded? hundredFourtyNine : fifty,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primaryColorLight,
                      AppColors.primaryColor,
                      AppColors.primaryColor,
                      AppColors.secondaryColor
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  )
              ),
            ),
            MouseRegion(
              onEnter: (_) {
                setState(() {
                  expanded = true;
                });
              },
              onExit: (_) {
                setState(() {
                  expanded = false;
                });
              },
              child: InkWell(
                onTap: widget.onPressed,
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          LatestWorkSectionDataset.viewAll,
                          style: appStyles.sixteenWhite.copyWith(
                            fontSize: sixteen
                          ),
                        ),
                        Transform.rotate(
                          angle: -(pi /4),
                          child: Image.asset(
                            AppIcons.arrowRight,
                            color: Colors.white,
                            width: sixteen,
                            height: sixteen,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
