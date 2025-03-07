import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/variants/offer_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/variants/offer_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/variants/offer_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OfferSection extends StatelessWidget {

  final VoidCallback onQuotePressed;
  final VoidCallback onSectionPressed;
  const OfferSection({
    super.key,
    required this.onQuotePressed,
    required this.onSectionPressed
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => OfferSectionDesktop(
        onQuotePressed: onQuotePressed,
        onSectionPressed: onSectionPressed,
      ),
      tablet: (context) => const OfferSectionTablet(),
      mobile: (context) => const OfferSectionMobile(),
    );
  }
}
