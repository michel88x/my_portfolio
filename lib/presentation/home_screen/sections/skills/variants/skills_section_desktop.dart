import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/dataset/skills_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/skills/widgets/skills_section_widget/view/skills_section_widget.dart';

class SkillsSectionDesktop extends StatefulWidget {
  const SkillsSectionDesktop({super.key});

  @override
  State<SkillsSectionDesktop> createState() => _SkillsSectionDesktopState();
}

class _SkillsSectionDesktopState extends State<SkillsSectionDesktop> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double eighteen = width * 0.0119047619; //18
    double twenty = width * 0.0132275132275; //20
    double thirty = width * 0.01984126984; //30
    double seventy = width * 0.0462962962962; //70
    double eighty = width * 0.05291005291; //80
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 1.5 * eighty),
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
