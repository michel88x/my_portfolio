import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/variants/numbers_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/variants/numbers_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/variants/numbers_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NumbersSection extends StatelessWidget {
  const NumbersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const NumbersSectionDesktop(),
      tablet: (context) => const NumbersSectionTablet(),
      mobile: (context) => const NumbersSectionMobile(),
    );
  }
}
