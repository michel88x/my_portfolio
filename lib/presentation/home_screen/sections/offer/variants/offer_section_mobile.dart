import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/dataset/offer_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/widgets/offer_section_widget/view/offer_section_widget.dart';

class OfferSectionMobile extends StatefulWidget {

  final VoidCallback onSectionPressed;

  const OfferSectionMobile({
    super.key,
    required this.onSectionPressed
  });

  @override
  State<OfferSectionMobile> createState() => _OfferSectionMobileState();
}

class _OfferSectionMobileState extends State<OfferSectionMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //599
    double ten = width * 0.01669449082; //10
    double fourteen = width * 0.02337228715; //14
    double sixteen = width * 0.02671118531; //16
    double eighteen = width * 0.03005008347; //18
    double seventeen = width * 0.03338898164; //20
    double thirty = width * 0.04173622705; //2
    double seventy = width * 0.07512520868; //45
    double eighty = width * 0.1085141903; //65
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: eighty, horizontal: ten),
      color: AppColors.primaryBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            OfferSectionDataset.title1,
            style: AppStyles.boldestPrimaryColor.copyWith(
                fontSize: seventy
            ),
          ),
          SizedBox(height: seventeen,),
          Text(
            OfferSectionDataset.title2,
            style: AppStyles.normalTextGrey2.copyWith(
                fontSize: sixteen
            ),
          ),
          SizedBox(height: thirty,),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: OfferSectionDataset.list.length,
            itemBuilder: (context, index){
              return OfferSectionWidget(
                  data: OfferSectionDataset.list[index],
                  onPressed: widget.onSectionPressed
              );
            },
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: AppColors.borderGreyColor,
          )
        ],
      ),
    );
  }
}
