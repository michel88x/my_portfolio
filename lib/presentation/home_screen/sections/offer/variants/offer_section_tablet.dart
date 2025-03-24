import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/dataset/offer_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/offer/widgets/offer_section_widget/view/offer_section_widget.dart';

class OfferSectionTablet extends StatefulWidget {

  final VoidCallback onQuotePressed;
  final VoidCallback onSectionPressed;

  const OfferSectionTablet({
    super.key,
    required this.onQuotePressed,
    required this.onSectionPressed
  });

  @override
  State<OfferSectionTablet> createState() => _OfferSectionTabletState();
}

class _OfferSectionTabletState extends State<OfferSectionTablet> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double eighteen = width * 0.01685985248; //16
    double seventeen = width * 0.0158061117; //15
    double thirty = width * 0.02634351949; //25
    double seventy = width * 0.05268703899; //50
    double eighty = width * 0.06322444679; //60
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
          SizedBox(height: seventeen,),
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
              CustomButton(
                  title: OfferSectionDataset.getQuote,
                  icon: AppIcons.arrowRight,
                  verticalPadding: eighteen,
                  horizontalPadding: thirty,
                  fontSize: seventeen,
                  iconSize: seventeen,
                  borderRadius: seventeen,
                  innerPadding: seventeen,
                  rotatedIcon: true,
                  onPressed: widget.onQuotePressed
              )
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
