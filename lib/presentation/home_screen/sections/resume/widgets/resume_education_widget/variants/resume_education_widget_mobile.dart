import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';

class ResumeEducationWidgetMobile extends StatefulWidget {
  final ResumeEducationObject data;
  const ResumeEducationWidgetMobile({super.key, required this.data});

  @override
  State<ResumeEducationWidgetMobile> createState() => _ResumeEducationWidgetMobileState();
}

class _ResumeEducationWidgetMobileState extends State<ResumeEducationWidgetMobile> {

  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double six = width * 0.01001669449; //6
    double ten = width * 0.01335559265; //8
    double fifteen = width * 0.02003338898; //12
    double sixteen = width * 0.02504173623; //15
    double twenty = width * 0.02671118531; //16
    double twentyTwo = width * 0.0367278798; //22
    double thirty = width * 0.04173622705; //25

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: thirty,),
        MouseRegion(
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
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: hovered? [Colors.white, Colors.white] : [
                      AppColors.primaryColor,
                      AppColors.secondaryColor
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                ),
                borderRadius: BorderRadius.circular(fifteen)
            ),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(twenty),
              margin: const EdgeInsets.all(1.0),
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(fifteen),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    widget.data.dates,
                    style: AppStyles.boldPrimaryColor.copyWith(
                        fontSize: sixteen
                    ),
                  ),
                  SizedBox(height: ten,),
                  Text(
                    widget.data.title,
                    style: AppStyles.boldWhite.copyWith(
                        fontSize: twentyTwo
                    ),
                  ),
                  SizedBox(height: six,),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.data.subtitle,
                          style: AppStyles.normalTextGrey2.copyWith(
                              fontSize: sixteen
                          ),
                        ),
                      ),
                      Text(
                        "${widget.data.degree}/${widget.data.overall}",
                        style: AppStyles.boldPrimaryColor.copyWith(
                            fontSize: twentyTwo
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
