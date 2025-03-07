import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_object.dart';

class NumbersSectionDataset{
  static List<NumbersSectionObject> data = <NumbersSectionObject>[
    NumbersSectionObject(
      number: 7,
      firstTitle: "Years of",
      secondTitle: "Experience"
    ),
    NumbersSectionObject(
        number: 35,
        firstTitle: "Projects",
        secondTitle: "Completed"
    ),
    NumbersSectionObject(
        number: 20,
        firstTitle: "Satisfied",
        secondTitle: "Happy Clients"
    ),
    NumbersSectionObject(
        number: 4,
        firstTitle: "Certificates",
        secondTitle: "Received"
    ),
  ];
}