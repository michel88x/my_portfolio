import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/widgets/numbers_section_widget.dart';

class NumbersSectionTablet extends StatefulWidget {
  const NumbersSectionTablet({super.key});

  @override
  State<NumbersSectionTablet> createState() => _NumbersSectionTabletState();
}

class _NumbersSectionTabletState extends State<NumbersSectionTablet> {

  late List<NumbersSectionObject> list;

  @override
  void initState() {
    super.initState();
    list = NumbersSectionDataset.data;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //949
    double five = width * 0.005268703899; //5
    double ten = width * 0.0105374078; //10
    double eighteen = width * 0.01685985248; //16
    double fifty = width * 0.04214963119; //40
    double eighty = width * 0.06322444679; //60
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: eighty),
      color: AppColors.secondaryColor,
      child: Wrap(
        direction: Axis.horizontal,
        children: list.map((element) => NumbersSectionWidget(
          data: element,
          plusFontSize: fifty,
          numberFontSize: eighty,
          titlesFontSize: eighteen,
          plusPadding: five,
          numberPadding: ten,
        ),).toList(),
      ),
    );
  }
}
