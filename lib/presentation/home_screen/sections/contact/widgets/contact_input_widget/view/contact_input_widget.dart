import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_input_widget/variants/contact_input_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_input_widget/variants/contact_input_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_input_widget/variants/contact_input_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactInputWidget extends StatelessWidget {

  final String title;
  final String hint;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final int numRows;
  final bool isError;

  const ContactInputWidget({
    super.key,
    required this.title,
    required this.hint,
    required this.controller,
    required this.keyboardType,
    required this.numRows,
    required this.isError
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ContactInputWidgetDesktop(title: title, hint: hint, controller: controller, keyboardType: keyboardType, numRows: numRows, isError: isError,),
      tablet: (context) => ContactInputWidgetTablet(title: title, hint: hint, controller: controller, keyboardType: keyboardType, numRows: numRows, isError: isError,),
      mobile: (context) => ContactInputWidgetMobile(title: title, hint: hint, controller: controller, keyboardType: keyboardType, numRows: numRows, isError: isError,),
    );
  }
}
