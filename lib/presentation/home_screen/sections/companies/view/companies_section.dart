import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/companies/variants/companies_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/companies/variants/companies_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/companies/variants/companies_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CompaniesSection extends StatelessWidget {
  const CompaniesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const CompaniesSectionDesktop(),
      tablet: (context) => const CompaniesSectionTablet(),
      mobile: (context) => const CompaniesSectionMobile(),
    );
  }
}
