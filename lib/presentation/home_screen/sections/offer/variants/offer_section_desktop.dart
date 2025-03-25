import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/dataset/offer_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/widgets/offer_section_widget/view/offer_section_widget.dart';

class OfferSectionDesktop extends StatefulWidget {

  final VoidCallback onSectionPressed;

  const OfferSectionDesktop({
    super.key,
    required this.onSectionPressed
  });

  @override
  State<OfferSectionDesktop> createState() => _OfferSectionDesktopState();
}

class _OfferSectionDesktopState extends State<OfferSectionDesktop> {

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double seventeen = width * 0.01124338624; //17
    double eighteen = width * 0.0119047619; //18
    double twenty = width * 0.01322751323; //20
    double thirty = width * 0.01984126984; //30
    double seventy = width * 0.0462962963; //70
    double eighty = width * 0.05291005291; //80
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(eighty),
      color: AppColors.primaryBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            OfferSectionDataset.title1,
            style: AppStyles.boldestPrimaryColor.copyWith(
              fontSize: seventy
            ),
          ),
          SizedBox(height: twenty,),
          Row(
            children: [
              Expanded(
                child: Text(
                  OfferSectionDataset.title2,
                  style: AppStyles.normalTextGrey2.copyWith(
                    fontSize: eighteen
                  ),
                ),
              ),
            ],
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
