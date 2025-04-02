import 'package:my_new_portfolio/core/app/app_images.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/dataset/contact_action_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/contact/enums/contact_action_type.dart';

class ContactSectionDataset {
  static const String title = "Get in touch";
  static const String subTitle = "I'm always excited to take on new projects and collaborate with innovative minds. If you\nhave a project in mind or just want to chat about an app, feel free to reach out!";
  static List<ContactActionObject> actions = <ContactActionObject>[
    ContactActionObject(
      icon: "${AppImages.onlineImages}/phone.png",
      title: "Phone Number",
      value: "+963-985-395-543",
      type: ContactActionType.PHONE
    ),
    ContactActionObject(
      icon: "${AppImages.onlineImages}/whatsapp.png",
      title: "Whatsapp",
      value: "+964-751-747-3109",
        type: ContactActionType.WHATSAPP
    ),
    ContactActionObject(
      icon: "${AppImages.onlineImages}/telegram.png",
      title: "Telegram",
      value: "+963-993-112-880",
        type: ContactActionType.TELEGRAM
    ),
  ];
  static const String leaveMessage = "Leave a Message";
  static const String yourName = "Your name";
  static const String emailAddress = "Email address";
  static const String yourPhone = "Your phone";
  static const String subject = "Subject";
  static const String message = "Message";
  static const String sendMessage = "Send Message";
  static const String johnDoe = "John Doe";
  static const String johnEmail = "contact.john@example.com";
  static const String johnPhone = "+1 234 567 89";
  static const String johnSubject = "I want to contact for ...";
  static const String johnMessage = "Your message here ...";
  static const String noName = "You need to write your name";
  static const String noEmail = "You need to write your email";
  static const String noPhone = "You need to write your phone number";
  static const String noSubject = "You need to write your message's subject";
  static const String noMessage = "You need to write your message";
}