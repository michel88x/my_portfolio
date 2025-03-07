import 'package:flutter/material.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_action_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_action_widget/variants/contact_action_widget_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_action_widget/variants/contact_action_widget_mobile.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/widgets/contact_action_widget/variants/contact_action_widget_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactActionWidget extends StatelessWidget {

  final ContactActionObject data;
  final VoidCallback onPressed;

  const ContactActionWidget({
    super.key,
    required this.onPressed,
    required this.data
  });

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (context) => ContactActionWidgetDesktop(onPressed: onPressed, data: data),
      tablet: (context) => ContactActionWidgetTablet(onPressed: onPressed, data: data),
      mobile: (context) => ContactActionWidgetMobile(onPressed: onPressed, data: data),
    );
  }
}
