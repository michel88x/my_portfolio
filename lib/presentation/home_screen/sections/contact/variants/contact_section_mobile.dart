import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_details_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/enums/contact_action_type.dart';

class ContactSectionMobile extends StatefulWidget {

  final Function(ContactActionType, String) onActionPressed;
  final Function(ContactDetailsObject) onMessageSent;

  const ContactSectionMobile({
    super.key,
    required this.onMessageSent,
    required this.onActionPressed
  });

  @override
  State<ContactSectionMobile> createState() => _ContactSectionMobileState();
}

class _ContactSectionMobileState extends State<ContactSectionMobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
