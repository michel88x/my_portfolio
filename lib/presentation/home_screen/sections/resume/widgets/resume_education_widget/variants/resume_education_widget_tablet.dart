import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/presentation/home_screen/sections/resume/dataset/resume_education_object.dart';

class ResumeEducationWidgetTablet extends StatefulWidget {
  final ResumeEducationObject data;
  const ResumeEducationWidgetTablet({super.key, required this.data});

  @override
  State<ResumeEducationWidgetTablet> createState() => _ResumeEducationWidgetTabletState();
}

class _ResumeEducationWidgetTabletState extends State<ResumeEducationWidgetTablet> {

  bool hovered = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double six = width * 0.006322444679; //6
    double ten = width * 0.008429926238; //8
    double fifteen = width * 0.01264488936; //12
    double sixteen = width * 0.01369863014; //13
    double twenty = width * 0.01685985248; //16
    double twentyTwo = width * 0.01896733404; //18
    double thirty = width * 0.02634351949; //25

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
