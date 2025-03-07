import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_section_widget/view/resume_section_widget.dart';

class ResumeSectionDesktop extends StatefulWidget {

  final VoidCallback onTouchPressed;

  const ResumeSectionDesktop({super.key, required this.onTouchPressed});

  @override
  State<ResumeSectionDesktop> createState() => _ResumeSectionDesktopState();
}

class _ResumeSectionDesktopState extends State<ResumeSectionDesktop> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double seventeen = width * 0.01124338624; //17
    double eighteen = width * 0.0119047619; //18
    double twenty = width * 0.01322751323; //20
    double thirty = width * 0.0198412698412; //30
    double seventy = width * 0.0462962963; //70
    double eighty = width * 0.05291005291; //80
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(eighty),
      color: AppColors.primaryBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            ResumeSectionDataset.title1,
            style: AppStyles.boldestPrimaryColor.copyWith(
              fontSize: seventy
            ),
          ),
          SizedBox(height: twenty,),
          Row(
            children: [
              Expanded(
                child: Text(
                  ResumeSectionDataset.title2,
                  style: AppStyles.normalTextGrey2.copyWith(
                    fontSize: eighteen
                  ),
                ),
              ),
              CustomButton(
                  title: ResumeSectionDataset.getInTouch,
                  icon: AppIcons.arrowRight,
                  verticalPadding: eighteen,
                  horizontalPadding: thirty,
                  fontSize: seventeen,
                  iconSize: twenty,
                  borderRadius: twenty,
                  innerPadding: twenty,
                  rotatedIcon: true,
                  onPressed: widget.onTouchPressed
              )
            ],
          ),
          SizedBox(height: thirty,),
          Row(
            children: [
              Expanded(
                child: ResumeSectionWidget(
                  icon: AppIcons.education,
                  title: ResumeSectionDataset.education,
                  educationList: ResumeSectionDataset.educationList,
                ),
              ),
              SizedBox(width: thirty,),
              Expanded(
                child: ResumeSectionWidget(
                  icon: AppIcons.experience,
                  title: ResumeSectionDataset.experience,
                  experienceList: ResumeSectionDataset.experienceList,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
