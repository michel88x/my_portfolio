import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_action_object.dart';

class ContactActionWidgetMobile extends StatelessWidget {

  final ContactActionObject data;
  final VoidCallback onPressed;

  const ContactActionWidgetMobile({
    super.key,
    required this.onPressed,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
