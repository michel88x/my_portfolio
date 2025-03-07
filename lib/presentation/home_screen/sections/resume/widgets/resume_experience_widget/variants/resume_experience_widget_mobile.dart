import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';

class ResumeExperienceWidgetMobile extends StatefulWidget {

  final ResumeExperienceObject data;

  const ResumeExperienceWidgetMobile({super.key, required this.data});

  @override
  State<ResumeExperienceWidgetMobile> createState() => _ResumeExperienceWidgetMobileState();
}

class _ResumeExperienceWidgetMobileState extends State<ResumeExperienceWidgetMobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
