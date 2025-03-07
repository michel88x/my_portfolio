import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles.dart';
import 'package:my_new_portfolio/core/app/app_styles/app_styles_desktop.dart';
import 'package:my_new_portfolio/core/base_widgets/zoom_on_hover_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_object.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogWidgetDesktop extends StatefulWidget {

  final BlogSectionObject data;

  const BlogWidgetDesktop({
    super.key,
    required this.data
  });

  @override
  State<BlogWidgetDesktop> createState() => _BlogWidgetDesktopState();
}

class _BlogWidgetDesktopState extends State<BlogWidgetDesktop> {

  bool hovered = false;
  late AppStyles styles;

  @override
  void initState() {
    super.initState();
    styles = AppStylesDesktop();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double two = width * 0.001322751323; //2
    double three = width * 0.001984126984; //3
    double fourteen = width * 0.009259259259; //14
    double fifteen = width * 0.009920634921; //15
    double eighteen = width * 0.0119047619; //18
    double twenty = width * 0.01322751323; //20
    double twentyTwo = width * 0.01455026455; //22
    double twentyFive = width * 0.01653439153; // 25
    double fourtyFive = width * 0.02483443709; //45
    return MouseRegion(
      onEnter: (v){
        setState(() {
          hovered = true;
        });
      },
      onExit: (v){
        setState(() {
          hovered = false;
        });
      },
      child: InkWell(
        onTap: (){
          launchUrl(Uri.parse(widget.data.link));
        },
        child: AspectRatio(
          aspectRatio: 0.8,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(fifteen),
              gradient: LinearGradient(
                colors: hovered? [
                  AppColors.primaryColor,
                  AppColors.primaryColor
                ] : [
                  AppColors.textGrey2,
                  AppColors.primaryBackgroundColor
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              margin: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(fifteen),
                color: AppColors.secondaryColor
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: fifteen, left: fifteen, right: fifteen),
                    child: AspectRatio(
                      aspectRatio: 1.35,
                      child: SizedBox(
                        width: double.infinity,
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(fifteen),
                              child: ZoomOnHover(
                                  hovered: hovered,
                                  child: CachedNetworkImage(
                                    imageUrl: widget.data.image,
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,
                                    placeholder: (context, s){
                                      return Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        color: AppColors.primaryBackgroundColor,
                                        child: const Center(
                                          child: CupertinoActivityIndicator(
                                            color: AppColors.primaryColor,
                                          ),
                                        ),
                                      );
                                    },
                                  )),
                            ),
                            Center(
                              child: Visibility(
                                visible: hovered,
                                child: Container(
                                  width: fourtyFive,
                                  height: fourtyFive,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    gradient: LinearGradient(
                                      colors: [
                                        AppColors.primaryColorLight,
                                        AppColors.primaryColorLighter
                                      ]
                                    )
                                  ),
                                  child: Center(
                                    child: Transform.rotate(
                                      angle: -(pi / 4),
                                      child: Image.asset(
                                        AppIcons.arrowRight,
                                        color: Colors.white,
                                        width: twentyFive,
                                        height: twentyFive,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(fifteen),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: eighteen, vertical: three),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                      gradient: const LinearGradient(
                                          colors: [
                                            AppColors.primaryColorLight,
                                            AppColors.primaryColorLighter
                                          ]
                                      )
                                  ),
                                  child: Text(
                                    widget.data.type,
                                    style: styles.eighteenWhiteBold.copyWith(
                                      fontSize: eighteen
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: twenty,),
                  Text(
                    widget.data.date,
                    textAlign: TextAlign.center,
                    style: styles.fourteenTextGrey2.copyWith(
                      fontSize: fourteen
                    ),
                  ),
                  SizedBox(height: two,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: fifteen),
                    child: Text(
                      widget.data.title,
                      textAlign: TextAlign.center,
                      style: styles.twentyTwoWhiteBold.copyWith(
                        fontSize: twentyTwo,
                        color: hovered? AppColors.primaryColor : Colors.white
                      ),
                    ),
                  ),
                  SizedBox(height: twenty,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: fifteen),
                    child: Text(
                      widget.data.description,
                      textAlign: TextAlign.center,
                      style: styles.fourteenTextGrey2.copyWith(
                          fontSize: fourteen
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
