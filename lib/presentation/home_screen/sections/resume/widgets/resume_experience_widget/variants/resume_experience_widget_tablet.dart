import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_experience_object.dart';

class ResumeExperienceWidgetTablet extends StatefulWidget {

  final ResumeExperienceObject data;

  const ResumeExperienceWidgetTablet({super.key, required this.data});

  @override
  State<ResumeExperienceWidgetTablet> createState() => _ResumeExperienceWidgetTabletState();
}

class _ResumeExperienceWidgetTabletState extends State<ResumeExperienceWidgetTablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
