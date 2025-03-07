import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_object.dart';

class SkillsSectionWidgetMobile extends StatefulWidget {

  final SkillsSectionObject data;

  const SkillsSectionWidgetMobile({super.key, required this.data});

  @override
  State<SkillsSectionWidgetMobile> createState() => _SkillsSectionWidgetMobileState();
}

class _SkillsSectionWidgetMobileState extends State<SkillsSectionWidgetMobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
