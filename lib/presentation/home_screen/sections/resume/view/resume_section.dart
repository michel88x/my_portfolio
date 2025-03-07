import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/variants/resume_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/variants/resume_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/variants/resume_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ResumeSection extends StatelessWidget {

  final VoidCallback onTouchPressed;

  const ResumeSection({super.key, required this.onTouchPressed});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ResumeSectionDesktop(onTouchPressed: onTouchPressed),
      tablet: (context) => ResumeSectionTablet(onTouchPressed: onTouchPressed),
      mobile: (context) => ResumeSectionMobile(onTouchPressed: onTouchPressed),
    );
  }
}
