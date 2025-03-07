import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_object.dart';
import 'package:visibility_detector/visibility_detector.dart';

class SkillsSectionWidgetDesktop extends StatefulWidget {

  final SkillsSectionObject data;
  const SkillsSectionWidgetDesktop({super.key, required this.data});

  @override
  State<SkillsSectionWidgetDesktop> createState() => _SkillsSectionWidgetDesktopState();
}

class _SkillsSectionWidgetDesktopState extends State<SkillsSectionWidgetDesktop> {

  bool hovered = false;
  int value = 0;
  late AppStyles styles;

  @override
  void initState() {
    super.initState();
    styles = AppStylesDesktop();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double ten = width * 0.006613756614; //10
    double eighteen = width * 0.0119047619; //18
    double thirty = width * 0.01984126984; //30
    double fourty = width * 0.02645502646; //40
    double seventy = width * 0.0462962963; //70
    double hundredSeventy = width * 0.1124338624; //170
    double twoHundredsEighty = width * 0.1851851852; //280
    return MouseRegion(
      onEnter: (v){
        setState(() {
          hovered = true;
        });
      },
      onExit: (v){
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        width: hundredSeventy,
        height: twoHundredsEighty,
        duration: const Duration(milliseconds: 500),
        margin: EdgeInsets.symmetric(horizontal: ten),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(eighteen),
          gradient: LinearGradient(
            colors: hovered == true? [
              AppColors.primaryColor,
              AppColors.secondaryColor
            ] : [
              AppColors.textGrey2,
              AppColors.secondaryColor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: VisibilityDetector(
          key: Key("SkillsSectionWidget_${widget.data.title}"),
          onVisibilityChanged: (v){
            if(v.visibleFraction == 1.0){
              setState(() {
                value = widget.data.percentage;
              });
            }else{
              // setState(() {
              //   value = 0;
              // });
            }
          },
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            margin: const EdgeInsets.all(1.0),
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(vertical: fourty),
            decoration: BoxDecoration(
              color: hovered? AppColors.primaryBackgroundColor : AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(eighteen),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset(
                    widget.data.icon,
                    width: seventy,
                    height: seventy,
                  ),
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedFlipCounter(
                      duration: const Duration(milliseconds: 1500),
                      value: value,
                      textStyle: TextStyle(
                          fontSize: thirty,
                          color: hovered? AppColors.primaryColor : Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 0.9
                      ),
                    ),
                    Text(
                      "%",
                      style: TextStyle(
                          fontSize: thirty,
                          color: hovered? AppColors.primaryColor : Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 0.9
                      ),
                    )
                  ],
                ),
                SizedBox(height: ten,),
                Text(
                  widget.data.title,
                  style: styles.eighteenTextGrey2.copyWith(
                    fontSize: eighteen
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
