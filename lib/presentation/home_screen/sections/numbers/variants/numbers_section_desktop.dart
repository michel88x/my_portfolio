import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles_desktop.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/widgets/numbers_section_widget.dart';

class NumbersSectionDesktop extends StatefulWidget {
  const NumbersSectionDesktop({super.key});

  @override
  State<NumbersSectionDesktop> createState() => _NumbersSectionDesktopState();
}

class _NumbersSectionDesktopState extends State<NumbersSectionDesktop> {

  late AppStyles styles;
  late List<NumbersSectionObject> list;

  @override
  void initState() {
    super.initState();
    styles = AppStylesDesktop();
    list = NumbersSectionDataset.data;
  }
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double five = width * 0.003306878307; //5
    double ten = width * 0.006613756614; //10
    double eighteen = width * 0.0119047619; //18
    double fifty = width * 0.03306878307; //50
    double eighty = width * 0.05291005291; //80
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
