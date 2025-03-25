import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/variants/home_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/variants/home_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/variants/home_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeSection extends StatelessWidget {

  final VoidCallback onDownloadCVPressed;
  final VoidCallback onHireMePressed;

  const HomeSection({
    super.key,
    required this.onDownloadCVPressed,
    required this.onHireMePressed
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => HomeSectionDesktop(
        onDownloadCVPressed: onDownloadCVPressed,
        onHireMePressed: onHireMePressed,
      ),
      tablet: (context) => HomeSectionTablet(
        onDownloadCVPressed: onDownloadCVPressed,
        onHireMePressed: onHireMePressed,
      ),
      mobile: (context) => HomeSectionMobile(
        onDownloadCVPressed: onDownloadCVPressed,
        onHireMePressed: onHireMePressed,
      ),
    );
  }
}
