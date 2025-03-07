import 'package:my_new_portfolio/presentation/home_screen/sections/offer/dataset/offer_section_object.dart';

class OfferSectionDataset{
  static const String title1 = "What do I offer?";
  static const String title2 = "My journey started with a fascination for development and technology,\nleading me to specialize in Mobile Development";
  static const String getQuote = "Get a Quote";
  static List<OfferSectionObject> list = <OfferSectionObject>[
    OfferSectionObject(
      number: "01",
      title:"Mobile Apps Development",
      text: "Designing and developing high-quality mobile applications tailored to your business needs. From intuitive UI/UX design to seamless functionality."
    ),
    OfferSectionObject(
        number: "02",
        title:"Web Front-End Development",
        text: "Building modern, responsive, and user-friendly web interfaces that enhance user experience and engagement. Using the latest versions of Flutter For Web."
    ),
    OfferSectionObject(
        number: "03",
        title:"Web Back-End Development",
        text: "Building high-performance server-side applications that power modern web and mobile solutions. With a focusing on efficiency, security, and maintainability using Java Spring Boot framework."
    ),
  ];
}