import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/widgets/blog_widget/variants/blog_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/widgets/blog_widget/variants/blog_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/widgets/blog_widget/variants/blog_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogWidget extends StatelessWidget {

  final BlogSectionObject data;

  const BlogWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => BlogWidgetDesktop(data: data),
      tablet: (context) => BlogWidgetTablet(data: data),
      mobile: (context) => BlogWidgetMobile(data: data),
    );
  }
}
