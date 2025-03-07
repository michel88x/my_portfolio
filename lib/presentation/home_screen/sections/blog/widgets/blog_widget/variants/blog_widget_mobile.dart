import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_object.dart';

class BlogWidgetMobile extends StatefulWidget {

  final BlogSectionObject data;

  const BlogWidgetMobile({super.key, required this.data});

  @override
  State<BlogWidgetMobile> createState() => _BlogWidgetMobileState();
}

class _BlogWidgetMobileState extends State<BlogWidgetMobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
