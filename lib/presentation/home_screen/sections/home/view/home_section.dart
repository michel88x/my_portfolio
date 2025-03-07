import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/variants/home_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/variants/home_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/variants/home_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const HomeSectionDesktop(),
      tablet: (context) => const HomeSectionTablet(),
      mobile: (context) => const HomeSectionMobile(),
    );
  }
}
