import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_section_widget/variants/resume_section_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_section_widget/variants/resume_section_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_section_widget/variants/resume_section_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeSectionWidget extends StatelessWidget {

  final String icon;
  final String title;
  final List<ResumeEducationObject>? educationList;
  final List<ResumeExperienceObject>? experienceList;
  final bool withBottomPadding;

  const ResumeSectionWidget({
    super.key,
    required this.icon,
    required this.title,
    this.educationList,
    this.experienceList,
    this.withBottomPadding = false
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ResumeSectionWidgetDesktop(
        icon: icon,
        title: title,
        educationList: educationList,
        experienceList: experienceList,
      ),
      tablet: (context) => ResumeSectionWidgetTablet(
        icon: icon,
        title: title,
        educationList: educationList,
        experienceList: experienceList,
        withBottomPadding: withBottomPadding,
      ),
      mobile: (context) => ResumeSectionWidgetMobile(
        icon: icon,
        title: title,
        educationList: educationList,
        experienceList: experienceList,
      ),
    );
  }
}
