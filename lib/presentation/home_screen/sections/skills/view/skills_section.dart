import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/variants/skills_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/variants/skills_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/variants/skills_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const SkillsSectionDesktop(),
      tablet: (context) => const SkillsSectionTablet(),
      mobile: (context) => const SkillsSectionMobile(),
    );
  }
}
