import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_icons.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/zoom_on_hover_widget.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/blog/dataset/blog_section_object.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogWidgetTablet extends StatefulWidget {

  final BlogSectionObject data;

  const BlogWidgetTablet({super.key, required this.data});

  @override
  State<BlogWidgetTablet> createState() => _BlogWidgetTabletState();
}

class _BlogWidgetTabletState extends State<BlogWidgetTablet> {

  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double two = width * 0.00210748156; //2
    double three = width * 0.003161222339; //3
    double fourteen = width * 0.01475237092; //14
    double fifteen = width * 0.0158061117; //15
    double eighteen = width * 0.01896733404; //18
    double twenty = width * 0.0210748156; //20
    double twentyTwo = width * 0.01896733404; //18
    double twentyFive = width * 0.02634351949; // 25
    double fourtyFive = width * 0.04741833509; //45
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
                                    style: AppStyles.boldWhite.copyWith(
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
                    style: AppStyles.normalTextGrey2.copyWith(
                        fontSize: fourteen
                    ),
                  ),
                  SizedBox(height: two,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: fifteen),
                    child: Text(
                      widget.data.title,
                      textAlign: TextAlign.center,
                      style: AppStyles.boldWhite.copyWith(
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
                      style: AppStyles.normalTextGrey2.copyWith(
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
