import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_details_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/enums/contact_action_type.dart';

class ContactSectionTablet extends StatefulWidget {

  final Function(ContactActionType, String) onActionPressed;
  final Function(ContactDetailsObject) onMessageSent;

  const ContactSectionTablet({
    super.key,
    required this.onMessageSent,
    required this.onActionPressed
  });

  @override
  State<ContactSectionTablet> createState() => _ContactSectionTabletState();
}

class _ContactSectionTabletState extends State<ContactSectionTablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
