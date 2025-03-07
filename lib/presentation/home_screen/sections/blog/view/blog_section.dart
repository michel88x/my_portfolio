import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/variants/blog_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/variants/blog_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/variants/blog_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BlogSection extends StatelessWidget {
  const BlogSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => const BlogSectionDesktop(),
      tablet: (context) => const BlogSectionTablet(),
      mobile: (context) => const BlogSectionMobile(),
    );
  }
}
