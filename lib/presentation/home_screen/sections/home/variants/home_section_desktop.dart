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

class HomeSectionDesktop extends StatefulWidget {

  final VoidCallback onDownloadCVPressed;
  final VoidCallback onHireMePressed;

  const HomeSectionDesktop({
    super.key,
    required this.onDownloadCVPressed,
    required this.onHireMePressed
  });

  @override
  State<HomeSectionDesktop> createState() => _HomeSectionDesktopState();
}

class _HomeSectionDesktopState extends State<HomeSectionDesktop> {

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double ten = width * 0.006613756614; //10
    double sixteen = width * 0.01058201058; //16
    double seventeen = width * 0.01124338624; //17
    double eighteen = width * 0.0119047619; //18
    double twenty = width * 0.01322751323; //20
    double twentyThree = width * 0.01521164021; //23
    double twentyFive = width * 0.01653439153; //25
    double thirty = width * 0.01984126984; //30
    double fourty = width * 0.02645502646; //40
    double fifty = width * 0.03306878307; //50
    double seventy = width * 0.0462962963; //70
    double eighty = width * 0.05291005291; //80
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
                            SizedBox(height: thirty,),
                            Text(
                              HomeSectionDataset.title3,
                              style: AppStyles.boldestPrimaryColor.copyWith(
                                fontSize: seventy
                              ),
                            ),
                            SizedBox(height: thirty,),
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
                                      verticalPadding: eighteen,
                                      horizontalPadding: thirty,
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
                                      verticalPadding: eighteen,
                                      horizontalPadding: thirty,
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
                                  size: width / 5,
                                  color: AppColors.primaryColor,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: fourty),
                                child: SizedBox(
                                  height: height - fifty,
                                  width: width * 0.4,
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
