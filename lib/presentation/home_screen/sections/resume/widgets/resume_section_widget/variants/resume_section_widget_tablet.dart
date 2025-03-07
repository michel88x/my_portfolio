import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';

class ResumeSectionWidgetTablet extends StatelessWidget {

  final String icon;
  final String title;
  final List<ResumeEducationObject>? educationList;
  final List<ResumeExperienceObject>? experienceList;

  const ResumeSectionWidgetTablet({
    super.key,
    required this.icon,
    required this.title,
    this.educationList,
    this.experienceList
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
