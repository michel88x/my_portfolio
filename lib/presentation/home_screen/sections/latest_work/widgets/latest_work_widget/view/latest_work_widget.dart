
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/dataset/latest_work_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/latest_work_widget/variants/latest_work_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/latest_work_widget/variants/latest_work_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/latest_work/widgets/latest_work_widget/variants/latest_work_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LatestWorkWidget extends StatefulWidget {

  final LatestWorkObject data;
  final AppStyles appStyles;
  final Function(String) onPressed;

  const LatestWorkWidget({
    super.key,
    required this.data,
    required this.appStyles,
    required this.onPressed
  });

  @override
  State<LatestWorkWidget> createState() => _LatestWorkWidgetState();
}

class _LatestWorkWidgetState extends State<LatestWorkWidget> with SingleTickerProviderStateMixin{

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => LatestWorkWidgetDesktop(
          data: widget.data,
          appStyles: widget.appStyles,
          onPressed: widget.onPressed
      ),
      tablet: (context) => LatestWorkWidgetTablet(
          data: widget.data,
          appStyles: widget.appStyles,
          onPressed: widget.onPressed
      ),
      mobile: (context) => LatestWorkWidgetMobile(
          data: widget.data,
          appStyles: widget.appStyles,
          onPressed: widget.onPressed
      ),
    );
  }

}
