import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/dataset/offer_section_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/widgets/offer_section_widget/variants/offer_section_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/widgets/offer_section_widget/variants/offer_section_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/widgets/offer_section_widget/variants/offer_section_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OfferSectionWidget extends StatefulWidget {

  final OfferSectionObject data;
  final VoidCallback onPressed;

  const OfferSectionWidget({
    super.key,
    required this.data,
    required this.onPressed
  });

  @override
  State<OfferSectionWidget> createState() => _OfferSectionWidgetState();
}

class _OfferSectionWidgetState extends State<OfferSectionWidget>{

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => OfferSectionWidgetDesktop(data: widget.data, onPressed: widget.onPressed),
      tablet: (context) => OfferSectionWidgetTablet(data: widget.data, onPressed: widget.onPressed),
      mobile: (context) => OfferSectionWidgetMobile(data: widget.data, onPressed: widget.onPressed),
    );
  }
}
