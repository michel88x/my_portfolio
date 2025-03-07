import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_object.dart';

class SkillsSectionDataset {
  static const String title1 = "My Skills";
  static const String title2 = "I thrive on turning complex problems into simple, beautiful\nsolutions that enhance user satisfaction.";
  static List<SkillsSectionObject> list = <SkillsSectionObject>[
    SkillsSectionObject(
      icon: AppIcons.flutter,
      percentage: 98,
      title: "Flutter"
    ),
    SkillsSectionObject(
        icon: AppIcons.android,
        percentage: 80,
        title: "Android"
    ),
    SkillsSectionObject(
        icon: AppIcons.apple,
        percentage: 60,
        title: "Apple"
    ),
    SkillsSectionObject(
        icon: AppIcons.springBoot,
        percentage: 40,
        title: "Spring Boot"
    ),
    SkillsSectionObject(
        icon: AppIcons.figma,
        percentage: 20,
        title: "Figma"
    ),
  ];
}