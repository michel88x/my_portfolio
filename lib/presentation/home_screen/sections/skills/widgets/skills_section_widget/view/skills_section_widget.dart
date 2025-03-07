import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/variants/skills_section_tablet.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/widgets/skills_section_widget/variants/skills_section_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/widgets/skills_section_widget/variants/skills_section_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/widgets/skills_section_widget/variants/skills_section_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class SkillsSectionWidget extends StatelessWidget {

  final SkillsSectionObject data;

  const SkillsSectionWidget({
    super.key,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => SkillsSectionWidgetDesktop(data: data),
      tablet: (context) => SkillsSectionWidgetTablet(data: data),
      mobile: (context) => SkillsSectionWidgetMobile(data: data),
    );
  }
}
