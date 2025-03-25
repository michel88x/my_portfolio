import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_education_widget/view/resume_education_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_experience_widget/view/resume_experience_widget.dart';

class ResumeSectionWidgetTablet extends StatelessWidget {

  final String icon;
  final String title;
  final List<ResumeEducationObject>? educationList;
  final List<ResumeExperienceObject>? experienceList;
  final bool withBottomPadding;

  const ResumeSectionWidgetTablet({
    super.key,
    required this.icon,
    required this.title,
    this.educationList,
    this.experienceList,
    this.withBottomPadding = false
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double five = width * 0.005268703899; //5
    double ten = width * 0.0105374078; //10
    double fifteen = width * 0.01264488936; //12
    double twentyTwo = width * 0.02318229715; //22
    double fourty = width * 0.03161222339; //30
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
        padding: EdgeInsets.only(left: fourty, right: fourty, top: fourty, bottom: withBottomPadding? fourty + twentyTwo : fourty),
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
                    style: AppStyles.boldestWhite.copyWith(
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
              itemCount: ResumeSectionDataset.experienceList.length,
              itemBuilder: (context, index){
                if(educationList != null){
                  return ResumeEducationWidget(data:
                  index >= educationList!.length?
                  ResumeEducationObject(
                      dates: "",
                      title: "",
                      subtitle: "",
                      degree: 0,
                      overall: 0
                  ) :
                  educationList![index]);
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
