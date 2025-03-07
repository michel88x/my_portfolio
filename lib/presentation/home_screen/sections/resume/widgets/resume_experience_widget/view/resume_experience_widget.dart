import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_experience_widget/variants/resume_experience_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_experience_widget/variants/resume_experience_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_experience_widget/variants/resume_experience_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeExperienceWidget extends StatelessWidget {

  final ResumeExperienceObject data;

  const ResumeExperienceWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ResumeExperienceWidgetDesktop(data: data),
      tablet: (context) => ResumeExperienceWidgetTablet(data: data),
      mobile: (context) => ResumeExperienceWidgetMobile(data: data),
    );
  }
}
