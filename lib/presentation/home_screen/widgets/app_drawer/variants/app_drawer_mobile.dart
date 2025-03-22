import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';

class AppDrawerMobile extends StatefulWidget {

  final Function(int) onItemSelected;

  const AppDrawerMobile({
    super.key,
    required this.onItemSelected
  });

  @override
  State<AppDrawerMobile> createState() => _AppDrawerMobileState();
}

class _AppDrawerMobileState extends State<AppDrawerMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width; //599
    double height = MediaQuery.of(context).size.height;
    double fourteen = width * 0.02337228715; //14
    double sixteen = width * 0.02671118531; //16
    double twentyFive = width * 0.04173622705; //25
    double thirty = width * 0.05008347245; //30
    double fifty = width * 0.06677796327; //40
    return Container(
      width: width / 2,
      height: height,
      padding: EdgeInsets.all(twentyFive),
      color: AppColors.primaryBackgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Spacer(),
              IconButton(onPressed: (){
                Scaffold.of(context).closeDrawer();
              },
                icon: const Icon(
                  Icons.close,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: twentyFive,),
          Text(
            "Go to",
            style: AppStyles.boldestWhite.copyWith(
                fontSize: fifty
            ),
          ),
          SizedBox(height: twentyFive,),
          Container(
            width: double.infinity,
            height: 1.5,
            color: AppColors.primaryColor,
          ),
          SizedBox(height: twentyFive,),
          _item(
              title: "Home",
              containerHeight: thirty,
              titleFontSize: sixteen,
              hoverTextHeight: thirty,
              hoverTextFontSize: fourteen,
              isSelected: true,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(0);
              }
          ),
          _item(
              title: "Serives",
              containerHeight: thirty,
              titleFontSize: sixteen,
              hoverTextHeight: thirty,
              hoverTextFontSize: fourteen,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(1);
              }
          ),
          _item(
              title: "Work",
              containerHeight: thirty,
              titleFontSize: sixteen,
              hoverTextHeight: thirty,
              hoverTextFontSize: fourteen,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(2);
              }
          ),
          _item(
              title: "Resume",
              containerHeight: thirty,
              titleFontSize: sixteen,
              hoverTextHeight: thirty,
              hoverTextFontSize: fourteen,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(3);
              }
          ),
          _item(
              title: "Skills",
              containerHeight: thirty,
              titleFontSize: sixteen,
              hoverTextHeight: thirty,
              hoverTextFontSize: fourteen,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(4);
              }
          ),
          _item(
              title: "Contact",
              containerHeight: thirty,
              titleFontSize: sixteen,
              hoverTextHeight: thirty,
              hoverTextFontSize: fourteen,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(5);
              }
          ),
        ],
      ),
    );
  }

  Widget _item({
    required String title,
    required double containerHeight,
    required double titleFontSize,
    required double hoverTextHeight,
    required double hoverTextFontSize,
    required VoidCallback onPressed,
    required bool isSelected
  }){
    return InkWell(
      onTap: onPressed,
      child: SizedBox(
        width: double.infinity,
        height: containerHeight,
        child: Row(
          children: [
            Text(
              title,
              style: TextStyle(
                  fontSize: titleFontSize,
                  fontWeight: FontWeight.normal,
                  color: isSelected? Colors.white : AppColors.textGrey2
              ),
            ),
          ],
        ),
      ),
    );
  }

}
