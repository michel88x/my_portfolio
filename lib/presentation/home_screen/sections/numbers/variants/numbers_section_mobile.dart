import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/dataset/numbers_section_object.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/numbers/widgets/numbers_section_widget.dart';

class NumbersSectionMobile extends StatefulWidget {
  const NumbersSectionMobile({super.key});

  @override
  State<NumbersSectionMobile> createState() => _NumbersSectionMobileState();
}

class _NumbersSectionMobileState extends State<NumbersSectionMobile> {

  late List<NumbersSectionObject> list;

  @override
  void initState() {
    super.initState();
    list = NumbersSectionDataset.data;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //599
    double five = width * 0.008347245409; //5
    double ten = width * 0.01669449082; //10
    double eighteen = width * 0.02671118531; //16
    double fifty = width * 0.06677796327; //40
    double sixtyFive = width * 0.1085141903; //65
    double eighty = width * 0.1335559265; //80
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: sixtyFive),
      color: AppColors.secondaryColor,
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: list.length,
        separatorBuilder: (context, index){
          return SizedBox(height: fifty,);
        },
        padding: EdgeInsets.symmetric(horizontal: ten),
        itemBuilder: (context, index){
          return NumbersSectionWidget(
            data: list[index],
            plusFontSize: fifty,
            numberFontSize: eighty,
            titlesFontSize: eighteen,
            plusPadding: five,
            numberPadding: ten,
          );
        }
      ),
    );
  }
}
