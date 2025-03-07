import 'package:flutter/material.dart';

class ContactInputWidgetMobile extends StatefulWidget {

  final String title;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int numRows;

  const ContactInputWidgetMobile({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    required this.numRows
  });

  @override
  State<ContactInputWidgetMobile> createState() => _ContactInputWidgetMobileState();
}

class _ContactInputWidgetMobileState extends State<ContactInputWidgetMobile> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
