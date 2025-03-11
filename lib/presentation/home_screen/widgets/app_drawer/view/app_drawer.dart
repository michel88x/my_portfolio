import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/app_drawer/variants/app_drawer_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/app_drawer/variants/app_drawer_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/widgets/app_drawer/variants/app_drawer_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AppDrawer extends StatelessWidget {

  final Function(int) onItemSelected;

  const AppDrawer({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => AppDrawerDesktop(onItemSelected: onItemSelected,),
      tablet: (context) => AppDrawerTablet(),
      mobile: (context) => AppDrawerMobile(),
    );
  }
}
