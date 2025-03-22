import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_section_widget/view/resume_section_widget.dart';

class ResumeSectionMobile extends StatefulWidget {

  final VoidCallback onTouchPressed;

  const ResumeSectionMobile({super.key, required this.onTouchPressed});

  @override
  State<ResumeSectionMobile> createState() => _ResumeSectionMobileState();
}

class _ResumeSectionMobileState extends State<ResumeSectionMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //599
    double ten = width * 0.01669449082; //10
    double seventeen = width * 0.02337228715; //14
    double sixteen = width * 0.02671118531; //16
    double eighteen = width * 0.03005008347; // 18
    double twenty = width * 0.03338898164; //20
    double thirty = width * 0.04173622705; //25
    double seventy = width * 0.07512520868; //45
    double eighty = width * 0.1085141903; //65
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: eighty, horizontal: ten),
      color: AppColors.primaryBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ResumeSectionDataset.title1,
            style: AppStyles.boldestPrimaryColor.copyWith(
                fontSize: seventy
            ),
          ),
          SizedBox(height: twenty,),
          Text(
            ResumeSectionDataset.title2,
            style: AppStyles.normalTextGrey2.copyWith(
                fontSize: sixteen
            ),
          ),
          SizedBox(height: twenty,),
          CustomButton(
              title: ResumeSectionDataset.getInTouch,
              icon: AppIcons.arrowRight,
              verticalPadding: sixteen,
              horizontalPadding: thirty,
              fontSize: seventeen,
              iconSize: eighteen,
              borderRadius: eighteen,
              innerPadding: eighteen,
              rotatedIcon: true,
              onPressed: widget.onTouchPressed
          ),
          SizedBox(height: thirty,),
          ResumeSectionWidget(
            icon: AppIcons.education,
            title: ResumeSectionDataset.education,
            educationList: ResumeSectionDataset.educationList,
          ),
          SizedBox(height: thirty,),
          ResumeSectionWidget(
            icon: AppIcons.experience,
            title: ResumeSectionDataset.experience,
            experienceList: ResumeSectionDataset.experienceList,
          )
        ],
      ),
    );
  }
}
