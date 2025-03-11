import 'package:flutter/material.dart';
import 'package:my_new_portfolio/core/app/app_colors.dart';
import 'package:my_new_portfolio/core/app/app_styles.dart';
import 'package:my_new_portfolio/core/base_widgets/hover_text.dart';

class AppDrawerDesktop extends StatefulWidget {

  final Function(int) onItemSelected;

  const AppDrawerDesktop({super.key, required this.onItemSelected});

  @override
  State<AppDrawerDesktop> createState() => _AppDrawerDesktopState();
}

class _AppDrawerDesktopState extends State<AppDrawerDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 5,
      height: height,
      padding: EdgeInsets.all(30.0),
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
                icon: Icon(
                Icons.close,
                    color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          Text(
            "Go to",
            style: AppStyles.boldestWhite.copyWith(
              fontSize: 50
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: double.infinity,
            height: 1.5,
            color: AppColors.primaryColor,
          ),
          SizedBox(height: 30,),
          _item(
            title: "Home",
            containerHeight: 30.0,
            titleFontSize: 16.0,
            hoverTextHeight: 30.0,
            hoverTextFontSize: 14.0,
            isSelected: true,
            onPressed: (){
              Scaffold.of(context).closeDrawer();
              widget.onItemSelected(0);
            }
          ),
          _item(
              title: "Serives",
              containerHeight: 30.0,
              titleFontSize: 16.0,
              hoverTextHeight: 30.0,
              hoverTextFontSize: 14.0,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(1);
              }
          ),
          _item(
              title: "Work",
              containerHeight: 30.0,
              titleFontSize: 16.0,
              hoverTextHeight: 30.0,
              hoverTextFontSize: 14.0,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(2);
              }
          ),
          _item(
              title: "Resume",
              containerHeight: 30.0,
              titleFontSize: 16.0,
              hoverTextHeight: 30.0,
              hoverTextFontSize: 14.0,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(3);
              }
          ),
          _item(
              title: "Skills",
              containerHeight: 30.0,
              titleFontSize: 16.0,
              hoverTextHeight: 30.0,
              hoverTextFontSize: 14.0,
              isSelected: false,
              onPressed: (){
                Scaffold.of(context).closeDrawer();
                widget.onItemSelected(4);
              }
          ),
          _item(
              title: "Contact",
              containerHeight: 30.0,
              titleFontSize: 16.0,
              hoverTextHeight: 30.0,
              hoverTextFontSize: 14.0,
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
