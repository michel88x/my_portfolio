import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_education_widget/variants/resume_education_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_education_widget/variants/resume_education_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/widgets/resume_education_widget/variants/resume_education_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeEducationWidget extends StatelessWidget {

  final ResumeEducationObject data;
  const ResumeEducationWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ResumeEducationWidgetDesktop(data: data,),
      tablet: (context) => ResumeEducationWidgetTablet(data: data,),
      mobile: (context) => ResumeEducationWidgetMobile(data: data,),
    );
  }
}
