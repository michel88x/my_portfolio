import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/widgets/skills_section_widget/view/skills_section_widget.dart';

class SkillsSectionMobile extends StatefulWidget {
  const SkillsSectionMobile({super.key});

  @override
  State<SkillsSectionMobile> createState() => _SkillsSectionMobileState();
}

class _SkillsSectionMobileState extends State<SkillsSectionMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double ten = width * 0.01669449082; //10
    double eighteen = width * 0.02671118531; //16
    double twenty = width * 0.03338898164; //20
    double thirty = width * 0.03338898164; //20
    double seventy = width * 0.07512520868; //45
    double eighty = width * 0.1085141903; //65
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: eighty),
      color: AppColors.secondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            SkillsSectionDataset.title1,
            style: AppStyles.boldestPrimaryColor.copyWith(
                fontSize: seventy
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: twenty,),
          Text(
            SkillsSectionDataset.title2,
            style: AppStyles.normalTextGrey2.copyWith(
                fontSize: eighteen
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: thirty,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: SkillsSectionDataset.list.sublist(0,3).map((element) =>
                SkillsSectionWidget(data: element)).toList(),
          ),
          SizedBox(height: ten,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: SkillsSectionDataset.list.sublist(3).map((element) =>
                SkillsSectionWidget(data: element)).toList(),
          ),
        ],
      ),
    );
  }
}
