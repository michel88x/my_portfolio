
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/view_all_latest_work_widget/variants/view_all_latest_work_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/view_all_latest_work_widget/variants/view_all_latest_work_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/view_all_latest_work_widget/variants/view_all_latest_work_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ViewAllLatestWorkWidget extends StatefulWidget {

  final VoidCallback onPressed;
  const ViewAllLatestWorkWidget({super.key, required this.onPressed});

  @override
  State<ViewAllLatestWorkWidget> createState() => _ViewAllLatestWorkWidgetState();
}

class _ViewAllLatestWorkWidgetState extends State<ViewAllLatestWorkWidget> {

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ViewAllLatestWorkWidgetDesktop(onPressed: widget.onPressed),
      tablet: (context) => ViewAllLatestWorkWidgetTablet(onPressed: widget.onPressed),
      mobile: (context) => ViewAllLatestWorkWidgetMobile(onPressed: widget.onPressed),
    );
  }
}
