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

class HomeSectionTablet extends StatefulWidget {
  const HomeSectionTablet({super.key});

  @override
  State<HomeSectionTablet> createState() => _HomeSectionTabletState();
}

class _HomeSectionTabletState extends State<HomeSectionTablet> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double ten = width * 0.0105374078; //10
    double sixteen = width * 0.0158061117; //15
    double seventeen = width * 0.01475237092; //14
    double twenty = width * 0.0158061117; //15
    double twentyThree = width * 0.02423603793; //23
    double twentyFive = width * 0.03161222339; //30
    double fourty = width * 0.03161222339; //30
    double fifty = width * 0.05268703899; //50
    double seventy = width * 0.05268703899; //50
    double eighty = width * 0.06322444679; //60
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
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: JDirectionality(
                child: Row(
                  children: [
                    SizedBox(width: eighty,),
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.center,
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
                                      onPressed: (){}
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
                                      onPressed: (){}
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
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: InfiniteRotationWidget(
                                child: Icon(
                                  Icons.apps,
                                  size: width / 4.1,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: fourty),
                                child: SizedBox(
                                  height: height - eighty,
                                  width: width * 0.3,
                                  child: ColorFiltered(
                                    colorFilter: Consts.greyscale,
                                    child: CachedNetworkImage(
                                      imageUrl: "${AppImages.onlineImages}/profile_image.png",
                                      width: double.infinity,
                                      height: double.infinity,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
