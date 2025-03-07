import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';

class LatestWorkWidgetMobile extends StatefulWidget {
  final LatestWorkObject data;
  final Function(String) onPressed;

  const LatestWorkWidgetMobile({
    super.key,
    required this.data,
    required this.onPressed
  });

  @override
  State<LatestWorkWidgetMobile> createState() => _LatestWorkWidgetMobileState();
}

class _LatestWorkWidgetMobileState extends State<LatestWorkWidgetMobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
