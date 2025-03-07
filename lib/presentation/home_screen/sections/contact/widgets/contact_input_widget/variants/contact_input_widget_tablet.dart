import 'package:flutter/material.dart';

class ContactInputWidgetTablet extends StatefulWidget {

  final String title;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int numRows;

  const ContactInputWidgetTablet({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    required this.numRows
  });

  @override
  State<ContactInputWidgetTablet> createState() => _ContactInputWidgetTabletState();
}

class _ContactInputWidgetTabletState extends State<ContactInputWidgetTablet> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
