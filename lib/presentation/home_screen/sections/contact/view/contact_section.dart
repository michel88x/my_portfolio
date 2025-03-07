import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_details_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/enums/contact_action_type.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/variants/contact_section_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/variants/contact_section_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/variants/contact_section_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactSection extends StatelessWidget {

  final Function(ContactActionType, String) onActionPressed;
  final Function(ContactDetailsObject) onMessageSent;

  const ContactSection({
    super.key,
    required this.onMessageSent,
    required this.onActionPressed
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ContactSectionDesktop(onMessageSent: onMessageSent, onActionPressed: onActionPressed),
      tablet: (context) => ContactSectionTablet(onMessageSent: onMessageSent, onActionPressed: onActionPressed),
      mobile: (context) => ContactSectionMobile(onMessageSent: onMessageSent, onActionPressed: onActionPressed),
    );
  }
}
