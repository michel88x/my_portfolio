import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';

class ResumeExperienceWidgetMobile extends StatefulWidget {

  final ResumeExperienceObject data;

  const ResumeExperienceWidgetMobile({super.key, required this.data});

  @override
  State<ResumeExperienceWidgetMobile> createState() => _ResumeExperienceWidgetMobileState();
}

class _ResumeExperienceWidgetMobileState extends State<ResumeExperienceWidgetMobile> {

  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double six = width * 0.01001669449; //6
    double ten = width * 0.01335559265; //8
    double fifteen = width * 0.02003338898; //12
    double sixteen = width * 0.02504173623; //15
    double twenty = width * 0.02671118531; //16
    double twentyTwo = width * 0.0367278798; //22
    double thirty = width * 0.04173622705; //25
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: thirty,),
        MouseRegion(
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
            duration: const Duration(milliseconds: 400),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: hovered? [Colors.white, Colors.white] : [
                      AppColors.primaryColor,
                      AppColors.secondaryColor
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                ),
                borderRadius: BorderRadius.circular(fifteen)
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(twenty),
              margin: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(fifteen),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.data.dates,
                    style: AppStyles.boldPrimaryColor.copyWith(
                        fontSize: sixteen
                    ),
                  ),
                  SizedBox(height: ten,),
                  Text(
                    widget.data.title,
                    style: AppStyles.boldWhite.copyWith(
                        fontSize: twentyTwo
                    ),
                  ),
                  SizedBox(height: six,),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.data.subTitle,
                          style: AppStyles.normalTextGrey2.copyWith(
                              fontSize: sixteen
                          ),
                        ),
                      ),
                      Text(
                        " ",
                        style: AppStyles.boldPrimaryColor.copyWith(
                            fontSize: twentyTwo
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
