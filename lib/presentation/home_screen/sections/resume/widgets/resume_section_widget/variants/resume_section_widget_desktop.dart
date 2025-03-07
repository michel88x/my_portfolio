import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_education_widget/view/resume_education_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_experience_widget/view/resume_experience_widget.dart';

class ResumeSectionWidgetDesktop extends StatelessWidget {

  final String icon;
  final String title;
  final AppStyles styles;
  final List<ResumeEducationObject>? educationList;
  final List<ResumeExperienceObject>? experienceList;

  const ResumeSectionWidgetDesktop({
    super.key,
    required this.icon,
    required this.title,
    required this.styles,
    this.educationList,
    this.experienceList
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double five = width * 0.0033068783068; //5
    double ten = width * 0.0066137566137; //10
    double fifteen = width * 0.009920634921; //15
    double fourty = width * 0.0264550264550; //40
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.textGrey2,
            AppColors.secondaryColor
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter
        ),
        borderRadius: BorderRadius.circular(fifteen)
      ),
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.all(1.0),
        padding: EdgeInsets.all(fourty),
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(fifteen),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: fourty,
                  height: fourty,
                ),
                SizedBox(width: five,),
                Expanded(
                  child: Text(
                    title,
                    style: styles.fourtyWhiteBold.copyWith(
                      fontSize: fourty
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: ten,),
            SizedBox(
              width: double.infinity,
              height: 3.0,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 3.0,
                    decoration: BoxDecoration(
                      color: AppColors.textGrey1,
                      borderRadius: BorderRadius.circular(1.5)
                    ),
                  ),
                  Container(
                    width: fourty,
                    height: 3.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.5),
                        gradient: const LinearGradient(
                            colors: [
                              AppColors.primaryColorLight,
                              AppColors.primaryColor
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight
                        )
                    ),
                  )
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: educationList != null? educationList!.length : experienceList!.length,
              itemBuilder: (context, index){
                if(educationList != null){
                  return ResumeEducationWidget(data: educationList![index]);
                }
                return ResumeExperienceWidget(data: experienceList![index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
