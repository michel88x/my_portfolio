import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_images.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/JDirectionality.dart';
import 'package:my_new_portfolio/core/base_widgets/custom_button.dart';
import 'package:my_new_portfolio/core/base_widgets/infinite_rotation_widget.dart';
import 'package:my_new_portfolio/core/utils/consts.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/dataset/home_section_dataset.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/home/widgets/home_tech_widget.dart';

class HomeSectionMobile extends StatefulWidget {

  final VoidCallback onDownloadCVPressed;
  final VoidCallback onHireMePressed;

  const HomeSectionMobile({
    super.key,
    required this.onDownloadCVPressed,
    required this.onHireMePressed
  });

  @override
  State<HomeSectionMobile> createState() => _HomeSectionMobileState();
}

class _HomeSectionMobileState extends State<HomeSectionMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width; //599
    double ten = width * 0.01669449082; //10
    double sixteen = width * 0.02671118531; //16
    double seventeen = width * 0.02337228715; //14
    double twenty = width * 0.03005008347; //18
    double twentyThree = width * 0.03839732888; //23
    double twentyFive = width * 0.04173622705; //25
    double fourty = width * 0.05008347245; //30
    double fifty = width * 0.08347245409; //50
    double seventy = width * 0.1001669449; //60
    return SizedBox(
      width: double.infinity,
      height: height,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.primaryBackgroundColor,
          ),
          Image.asset(
            AppImages.grid,
            width: double.infinity,
            height: double.infinity,
            color: AppColors.gridGrey,
            fit: BoxFit.cover,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: ten),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RichText(
                    text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: SvgPicture.asset(AppIcons.waving, width: twenty, height: twenty,),
                          ),
                          TextSpan(
                            text: " ${HomeSectionDataset.title1}",
                            style: AppStyles.normalWhite.copyWith(
                                fontSize: twenty
                            ),
                          ),
                        ]
                    )
                ),
                SizedBox(height: twenty,),
                Text(
                  HomeSectionDataset.title2,
                  style: AppStyles.boldestWhite.copyWith(
                      fontSize: seventy
                  ),
                ),
                SizedBox(height: twentyFive,),
                Text(
                  HomeSectionDataset.title3,
                  style: AppStyles.boldestPrimaryColor.copyWith(
                      fontSize: seventy
                  ),
                ),
                SizedBox(height: twentyFive,),
                Text(
                  HomeSectionDataset.title4,
                  style: AppStyles.normalTextGrey2.copyWith(
                      fontSize: sixteen
                  ),
                ),
                SizedBox(height: fourty,),
                JDirectionality(
                  child: Row(
                    children: [
                      CustomButton(
                          title: HomeSectionDataset.downloadCV,
                          icon: AppIcons.download,
                          verticalPadding: sixteen,
                          horizontalPadding: twentyFive,
                          fontSize: seventeen,
                          iconSize: twenty,
                          borderRadius: twenty,
                          innerPadding: twenty,
                          onPressed: widget.onDownloadCVPressed
                      ),
                      SizedBox(width: ten,),
                      CustomButton(
                          title: HomeSectionDataset.hireMe,
                          icon: AppIcons.arrowRight,
                          verticalPadding: sixteen,
                          horizontalPadding: twentyFive,
                          fontSize: seventeen,
                          iconSize: twentyThree,
                          borderRadius: twenty,
                          innerPadding: twenty,
                          backColor: AppColors.primaryBackgroundColor,
                          borderColor: AppColors.primaryColor,
                          onPressed: widget.onHireMePressed
                      ),
                    ],
                  ),
                ),
                SizedBox(height: fourty,),
                Text(
                  HomeSectionDataset.title5,
                  style: AppStyles.normalTextGrey2.copyWith(
                      fontSize: sixteen
                  ),
                ),
                SizedBox(height: twenty,),
                JDirectionality(
                  child: Row(
                    children: [
                      HomeTechWidget(
                          size: fifty,
                          borderRadius: ten,
                          icon: AppIcons.flutter,
                          iconSize: twentyFive
                      ),
                      SizedBox(width: twenty,),
                      HomeTechWidget(
                          size: fifty,
                          borderRadius: ten,
                          icon: AppIcons.android,
                          iconSize: twentyFive
                      ),
                      SizedBox(width: twenty,),
                      HomeTechWidget(
                        size: fifty,
                        borderRadius: ten,
                        icon: AppIcons.apple,
                        iconSize: twentyFive,
                        color: Colors.white,
                      ),
                      SizedBox(width: twenty,),
                      HomeTechWidget(
                          size: fifty,
                          borderRadius: ten,
                          icon: AppIcons.springBoot,
                          iconSize: twentyFive
                      ),
                      SizedBox(width: twenty,),
                      HomeTechWidget(
                          size: fifty,
                          borderRadius: ten,
                          icon: AppIcons.figma,
                          iconSize: twentyFive
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
