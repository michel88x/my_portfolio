import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/variants/latest_work_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/variants/latest_work_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/variants/latest_work_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LatestWorkSection extends StatelessWidget {

  final VoidCallback onViewAllProjectsPressed;
  final Function(String) onItemPressed;
  const LatestWorkSection({
    super.key,
    required this.onViewAllProjectsPressed,
    required this.onItemPressed
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => LatestWorkDesktop(
        onViewAllProjectsPressed: onViewAllProjectsPressed,
        onItemPressed: onItemPressed,
      ),
      tablet: (context) => const LatestWorkTablet(),
      mobile: (context) => const LatestWorkMobile(),
    );
  }
}
