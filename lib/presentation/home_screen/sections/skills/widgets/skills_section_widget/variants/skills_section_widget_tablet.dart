import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_object.dart';

class SkillsSectionWidgetTablet extends StatefulWidget {

  final SkillsSectionObject data;

  const SkillsSectionWidgetTablet({super.key, required this.data});

  @override
  State<SkillsSectionWidgetTablet> createState() => _SkillsSectionWidgetTabletState();
}

class _SkillsSectionWidgetTabletState extends State<SkillsSectionWidgetTablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
