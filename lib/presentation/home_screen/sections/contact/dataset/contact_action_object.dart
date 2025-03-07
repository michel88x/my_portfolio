import 'package:my_new_portfolio/presentation/home_screen/sections/contact/enums/contact_action_type.dart';

class ContactActionObject {
  final String icon;
  final String title;
  final String value;
  final ContactActionType type;

  ContactActionObject({
    required this.icon,
    required this.title,
    required this.value,
    required this.type
  });
}