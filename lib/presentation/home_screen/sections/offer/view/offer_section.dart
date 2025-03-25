import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/variants/offer_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/variants/offer_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/variants/offer_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OfferSection extends StatelessWidget {

  final VoidCallback onSectionPressed;
  const OfferSection({
    super.key,
    required this.onSectionPressed
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => OfferSectionDesktop(
        onSectionPressed: onSectionPressed,
      ),
      tablet: (context) => OfferSectionTablet(
        onSectionPressed: onSectionPressed,
      ),
      mobile: (context) => OfferSectionMobile(
        onSectionPressed: onSectionPressed,
      ),
    );
  }
}
