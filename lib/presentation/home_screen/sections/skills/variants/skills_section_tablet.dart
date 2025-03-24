import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/widgets/skills_section_widget/view/skills_section_widget.dart';

import '../../../../../core/app/app_colors.dart';

class SkillsSectionTablet extends StatefulWidget {
  const SkillsSectionTablet({super.key});

  @override
  State<SkillsSectionTablet> createState() => _SkillsSectionTabletState();
}

class _SkillsSectionTabletState extends State<SkillsSectionTablet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double eighteen = width * 0.01685985248; //13
    double twenty = width * 0.0158061117; //15
    double thirty = width * 0.0210748156; //20
    double seventy = width * 0.05268703899; //50
    double eighty = width * 0.06322444679; //60
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
            children: SkillsSectionDataset.list.map((element) =>
                SkillsSectionWidget(data: element)).toList(),
          )
        ],
      ),
    );
  }
}
