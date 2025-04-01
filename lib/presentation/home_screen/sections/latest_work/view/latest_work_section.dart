import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/variants/latest_work_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/variants/latest_work_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/variants/latest_work_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LatestWorkSection extends StatelessWidget {

  const LatestWorkSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const LatestWorkDesktop(),
      tablet: (context) => const LatestWorkTablet(),
      mobile: (context) => const LatestWorkMobile(),
    );
  }
}
