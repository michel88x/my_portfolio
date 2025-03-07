import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';

class LatestWorkWidgetTablet extends StatefulWidget {
  final LatestWorkObject data;
  final AppStyles appStyles;
  final Function(String) onPressed;
  const LatestWorkWidgetTablet({
    super.key,
    required this.data,
    required this.appStyles,
    required this.onPressed
  });

  @override
  State<LatestWorkWidgetTablet> createState() => _LatestWorkWidgetTabletState();
}

class _LatestWorkWidgetTabletState extends State<LatestWorkWidgetTablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
