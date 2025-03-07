import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_object.dart';

class BlogWidgetTablet extends StatefulWidget {

  final BlogSectionObject data;

  const BlogWidgetTablet({super.key, required this.data});

  @override
  State<BlogWidgetTablet> createState() => _BlogWidgetTabletState();
}

class _BlogWidgetTabletState extends State<BlogWidgetTablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
